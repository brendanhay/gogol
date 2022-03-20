module Gen.Syntax.Request where

import Control.Lens (view, (^.))
import qualified Data.Foldable as Foldable
import qualified Data.List as List
import qualified Data.Map.Strict as Map
import qualified Data.Text as Text
import Gen.Prelude
import Gen.Syntax.Build
import Gen.Types
import Language.Haskell.Exts.Build
import Language.Haskell.Exts.Syntax

requestInstances :: Service Solved -> Method Solved -> Solved -> [Decl ()]
requestInstances service method@Method {..} request =
  catMaybes
    [ Just (requestInstance service method request),
      mediaInstance service method request,
      multipartInstance service method request,
      resumableInstance service method request
    ]

requestInstance :: Service Solved -> Method Solved -> Solved -> Decl ()
requestInstance service@Service {_sDescription} method request@Solved {_unique, _schema} =
  instDecl requestHead (Just requestDecls)
  where
    requestHead = iRule (iCon "Core.GoogleRequest" `iApp` instanceType)
    instanceType = tyCon requestName
    requestName = dname _unique

    paramsEmpty = Map.null (_dParameters _sDescription)

    requestDecls =
      [ iScopes method instanceType,
        iResponse instanceType (tyResponse method),
        iDecl requestBind,
        iDecl responseBind
      ]

    requestBind =
      funBind (name "toRequest") requestPats $
        unguardedRhs requestUpdate

    responseBind =
      funBind (name "parseResponse") [] $
        unguardedRhs (var "Core.parseJSONResponse")

    requestPats =
      [ pRecord requestName (hasProperties _schema)
      ]

    requestUpdate =
      recordUpdateE (var "Core.newRequest") $
        [ fieldUpdate "requestMethod" (textE (_mHttpMethod method)),
          fieldUpdate "requestPath" (requestPathE _sDescription method),
          fieldUpdate "requestQuery" (queryE _sDescription method),
          fieldUpdate "requestAlt" (altE _sDescription),
          fieldUpdate "requestBody" requestBody
        ]

    requestBody =
      case _mRequest method of
        Nothing -> var "Core.mempty"
        Just {} -> var "Core.toRequestBodyJSON" `app` var (fname "payload")

mediaInstance :: Service Solved -> Method Solved -> Solved -> Maybe (Decl ())
mediaInstance service@Service {_sDescription} method request@Solved {_unique, _schema} = do
  guard (_mSupportsMediaDownload method && not (_mSupportsMediaUpload method))

  pure $! instDecl instanceHead (Just instanceDecls)
  where
    instanceHead = iRule (iCon "Core.GoogleRequest" `iApp` tyParen instanceType)
    instanceType = tyCon "Core.MediaRequest" `tyApp` wrappedType
    wrappedType = tyCon (dname _unique)

    instanceDecls =
      [ iResponse instanceType (tyCon "Core.BodyReader"),
        iScopesDefer instanceType wrappedType,
        iDecl requestBind,
        iDecl responseBind
      ]

    requestBind =
      funBind (name "toRequest") [] $
        unguardedRhs (var "toMediaRequest")

    responseBind =
      funBind (name "parseRequest") [] $
        unguardedRhs (var "parseMediaResponse")

multipartInstance :: Service Solved -> Method Solved -> Solved -> Maybe (Decl ())
multipartInstance service@Service {_sDescription} method request@Solved {_unique, _schema} = do
  guard (_mSupportsMediaUpload method)

  path <- simplePathE <$> _mMediaUpload method

  pure $! instDecl instanceHead (Just (instanceDecls path))
  where
    instanceHead = iRule (iCon "Core.GoogleRequest" `iApp` tyParen instanceType)
    instanceType = tyCon "Core.SimpleRequest" `tyApp` wrappedType
    wrappedType = tyCon (dname _unique)

    instanceDecls path =
      [ iResponse instanceType (tyResponse method),
        iScopesDefer instanceType wrappedType,
        iDecl (requestBind path),
        iDecl responseBind
      ]

    requestBind path =
      funBind (name "toRequest") [] $
        unguardedRhs (var "Core.toMultipartRequest" `app` paren path)

    responseBind =
      funBind (name "parseRequest") [] $
        unguardedRhs (var "Core.parseMultipartResponse")

resumableInstance :: Service Solved -> Method Solved -> Solved -> Maybe (Decl ())
resumableInstance service@Service {_sDescription} method request@Solved {_unique, _schema} = do
  guard (_mSupportsMediaDownload method && not (_mSupportsMediaUpload method))

  path <- resumablePathE =<< _mMediaUpload method

  pure $! instDecl instanceHead (Just (instanceDecls path))
  where
    instanceHead = iRule (iCon "Core.GoogleRequest" `iApp` tyParen instanceType)
    instanceType = tyCon "Core.ResumableRequest" `tyApp` wrappedType
    wrappedType = tyCon (dname _unique)

    instanceDecls path =
      [ iResponse instanceType (tyResponse method),
        iScopesDefer instanceType wrappedType,
        iDecl (requestBind path),
        iDecl responseBind
      ]

    requestBind path =
      funBind (name "toRequest") [] $
        unguardedRhs (var "Core.toResumableRequest" `app` paren path)

    responseBind =
      funBind (name "parseRequest") [] $
        unguardedRhs (var "Core.parseResumableResponse")

iResponse :: Type () -> Type () -> InstDecl ()
iResponse itype = iType (tyCon "Response" `tyApp` itype)

tyResponse :: Method a -> Type ()
tyResponse Method {_mResponse} = maybe (unit_tycon ()) tyRef _mResponse

iScopes :: Method a -> Type () -> InstDecl ()
iScopes Method {_mScopes} itype =
  iType (tyScopes itype) (tyList (map (tyCon . name . scopeName) _mScopes))

iScopesDefer :: Type () -> Type () -> InstDecl ()
iScopesDefer itype = iType (tyScopes itype)

tyScopes :: Type () -> Type ()
tyScopes = tyApp (tyCon "Scopes")

simplePathE :: MediaUpload -> Exp ()
simplePathE = pathE Nothing . _muSimplePath

resumablePathE :: MediaUpload -> Maybe (Exp ())
resumablePathE = fmap (pathE Nothing) . _muResumablePath

requestPathE :: Description a -> Method b -> Exp ()
requestPathE Description {_dBasePath} = pathE (Just _dBasePath) . _mPath

pathE :: Maybe Text -> Text -> Exp ()
pathE mbase path =
  -- basePath is absolute, prefixed with "/", whereas servicePath is not prefixed.
  var "Core.toRequestPath" `app` listE components
  where
    components =
      -- Assume the base path always has a trailing slash.
      fuseE
        . maybe id (\x xs -> textE x : xs) mbase
        . List.intersperse (strE "/")
        . concatMap go
        . extractPath
        $ path

    go = \case
      Left constant ->
        [textE constant]
      Right (capture, mmode) ->
        catMaybes
          [ Just (app (var "Core.toPathBuilder") (var (fname capture))),
            textE . Text.cons ':' <$> mmode
          ]

queryE :: Description Solved -> Method Solved -> Exp ()
queryE Description {_dParameters} Method {_mParameters, _mParameterOrder} =
  infixApp (var "Core.toRequestQuery") "$" (var "Core.catMaybes" `app` listE params)
  where
    params =
      mapMaybe go (orderParams fst unorderedParams _mParameterOrder)

    unorderedParams =
      Map.toList
        . Map.filter (\v -> _pLocation v /= Path)
        . Map.delete "alt"
        . Map.delete "uploadType"
        $ _mParameters <> _dParameters

    go (k, x) =
      case _pLocation x of
        Path -> Nothing
        Query -> Just (if defaulted x then encode else encodeOptional)
          where
            encode =
              var "Core.Just" `app` tuple [localE k, var build `app` var (fname k)]

            encodeOptional =
              infixApp
                (infixApp (tupleSectionE [Just (localE k), Nothing]) "Core.." (var build))
                "Core.<$>"
                (var (fname k))

            build =
              if x ^. iRepeated
                then "Core.toQueryParamsBuilder"
                else "Core.toQueryParamBuilder"

-- alt is the data format for the _response_.
--
-- It needs to be set to determine the response, we hardcode to
-- json unless the request is a media download, which then needs
-- the dynamic content type set.
altE :: Description Solved -> Exp ()
altE Description {_dParameters} =
  case Map.lookup "alt" _dParameters >>= view iDefault of
    Nothing -> var "Core.Nothing"
    Just ok -> var "Core.Just" `app` textE ok
