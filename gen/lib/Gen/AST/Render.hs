module Gen.AST.Render
  ( render,
  )
where

import qualified Control.Monad.Except as Except
import qualified Data.ByteString.Builder as Builder
import qualified Data.ByteString.Char8 as ByteString.Char8
import qualified Data.ByteString.Lazy as ByteString.Lazy
import qualified Data.Char as Char
import qualified Data.Map.Strict as Map
import qualified Data.Set as Set
import qualified Data.Text as Text
import qualified Data.Text.Lazy as Text.Lazy
import qualified Data.Text.Lazy.Encoding as Text.Lazy.Encoding
import Gen.AST.Solve (getSolved)
import Gen.Formatting
import Gen.Prelude
import qualified Gen.Syntax as Syntax
-- import Gen.Syntax.Build
import Gen.Types
import qualified Language.Haskell.Exts.Build as Build

render :: Service Solved -> AST (API, Set Data)
render service@Service {_sDescription} = do
  api <- renderAPI service

  let actions = Set.map actionUnique (apiResources api <> apiMethods api)
      getValid = Map.keys . Map.filter (\v -> _unique v `Set.notMember` actions)

  schemas <- traverse getSolved $ getValid (_dSchemas _sDescription)
  datatypes <- traverse renderSchema schemas <&> catMaybes

  pure (api, Set.fromList datatypes)

renderAPI :: Service Solved -> AST API
renderAPI service@Service {_sDescription} = do
  resources <- traverse (renderResource service) (Map.elems (_dResources _sDescription))
  methods <- traverse (renderMethod service) (_dMethods _sDescription)

  pure
    API
      { apiResources = Set.fromList (concat resources),
        apiMethods = Set.fromList methods,
        apiConfig = renderServiceConfig service,
        apiParams = renderServiceParams service,
        apiScopes = renderScopes (fromMaybe mempty (_dAuth _sDescription))
      }

renderServiceConfig :: Service Solved -> Fun
renderServiceConfig service =
  Fun
    { funName = name,
      funHelp = Just (rawHelpText help),
      funSig = Syntax.serviceSig name,
      funDecl = Syntax.serviceDecl (_sDescription service) name
    }
  where
    name = Build.name (getServiceName service)
    help =
      sformat
        ( "Default configuration referring to version @" % stext
            % "@ of the "
            % stext
            % ". This sets the host and port used as a starting point for constructing service requests."
        )
        (service ^. dVersion)
        (service ^. dTitle)

renderServiceParams :: Service Solved -> Data
renderServiceParams service =
  Prod
    { prodName = dname name,
      prodHelp = Nothing,
      prodDecl = decl,
      prodFields = Syntax.recordFields fields,
      prodDeriving = Syntax.recordDerive [DEq, DOrd, DShow, DGeneric],
      prodCtor = constructor,
      prodInstances = []
    }
  where
    name = getServiceParamsName service

    (decl, fields) =
      Syntax.paramsDecl (_sDescription service) name

    constructor =
      Fun
        { funName = cname name,
          funHelp = Nothing,
          funSig = Syntax.smartCtorSig name fields,
          funDecl = Syntax.smartCtorDecl name fields
        }

renderScopes :: OAuth2 -> Set Scope
renderScopes (OAuth2 xs) =
  Set.fromList . flip map (Map.toList xs) $ \(value, help) ->
    let key = Build.name (getScopeName value)
     in Scope
          { scopeName = key,
            scopeDecl = Syntax.scopeDecl key value,
            scopeHelp = help
          }

renderResource :: Service Solved -> Resource Solved -> AST [Action]
renderResource service Resource {..} =
  mappend
    <$> (traverse (renderResource service) (Map.elems _rResources) <&> concat)
    <*> (traverse (renderMethod service) _rMethods)

renderMethod :: Service Solved -> Method Solved -> AST Action
renderMethod service method = do
  let (typeName, namespace) = mname (_sCanonicalName service) (_mId method)

  type' <- reserveType typeName

  solved@Solved {_unique} <- getSolved type'

  datatype <-
    renderSchema solved >>= \case
      Nothing -> error "failed to render the schema"
      Just ok -> pure ok

  let instances = Syntax.requestInstances service method solved

  pure
    Action
      { actionId = commasep (_mId method),
        actionUnique = _unique,
        actionNs = collapseNS (tocNS service <> UnsafeNS namespace),
        actionHelp = _mDescription method,
        actionData = setDataInstances instances datatype
      }

renderSchema :: Solved -> AST (Maybe Data)
renderSchema solved =
  go (_schema solved)
  where
    unique = _unique solved
    prefix = _prefix solved

    go = \case
      SEnm info enm -> pure (Just (renderEnum info enm))
      SObj info obj -> Just <$> renderObject info obj
      _unknown -> pure Nothing

    renderEnum info (Enm branches) =
      Sum
        { sumName = dname unique,
          sumHelp = info ^. iDescription,
          sumBranches = map (\(v, h) -> Branch (bname prefix v) h v) branches
        }

    renderObject info (Obj aps ps) = do
      additional <- traverse getSolved (aps :: Maybe Global)
      properties <- traverse getSolved (ps :: Map Local Global)

      let merged =
            maybe properties (flip (Map.insert "additional") properties) $
              setAdditional <$> additional

          constructor =
            Fun
              { funName = cname unique,
                funHelp =
                  Just . rawHelpText $
                    sformat
                      ( "Creates a value of '" % gid
                          % "' using only the required fields."
                          % " Everything else is set to a default value or 'Nothing'.\n"
                      )
                      unique,
                -- funSig = hackComments merged (Syntax.smartCtorSig unique merged),
                funSig = Syntax.smartCtorSig unique merged,
                funDecl = Syntax.smartCtorDecl unique merged
              }

      pure
        Prod
          { prodName = dname unique,
            prodHelp = info ^. iDescription,
            prodDecl = Syntax.recordDecl unique merged,
            prodFields = Syntax.recordFields merged,
            prodCtor = constructor,
            prodDeriving = Syntax.recordDerive (_deriving solved),
            prodInstances = Syntax.jsonInstances unique merged
          }

-- -- FIXME: dirty hack to render smart ctor parameter comments.
-- hackComments :: Map Local Solved -> TextLazy -> TextLazy
-- hackComments (Map.toList -> rs) =
--   Text.Lazy.replace "::" "\n    :: "
--     . Text.Lazy.intercalate "\n    -> "
--     . zipWith rel ps
--     . map Text.Lazy.strip
--     . Text.Lazy.splitOn "->"
--   where
--     ks = filter (parameter . _schema . snd) rs
--     ps = map Just ks ++ repeat Nothing

--     rel Nothing t = t
--     rel (Just (l, s)) t =
--       t <> "\n       -- ^ "
--         <> maybe mempty (Text.Lazy.drop 11 . renderHelp 7) (s ^. iDescription)
--         <> " See '"
--         <> fromString (PP.prettyPrint (fname l))
--         <> "'."
