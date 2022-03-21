module Gen.Syntax.Request where

import Control.Lens (view, (^.))
import qualified Data.Foldable as Foldable
import qualified Data.List as List
import qualified Data.Map.Strict as Map
import qualified Data.Set as Set
import qualified Data.Text as Text
import Debug.Trace
import Gen.Prelude
import Gen.Syntax.Build
import Gen.Types
import Language.Haskell.Exts.Build
import Language.Haskell.Exts.Syntax

requestInstances :: Service Solved -> Method Solved -> Solved -> [Decl ()]
requestInstances service method@Method {..} request =
  catMaybes
    [ Just (requestInstance service method request),
      downloadInstance service method request,
      multipartInstance service method request,
      resumableInstance service method request
    ]

requestInstance :: Service Solved -> Method Solved -> Solved -> Decl ()
requestInstance service@Service {_sDescription} method request@Solved {_unique, _schema} =
  requestDecl Nothing instanceType instanceDecls
  where
    instanceHead = Nothing
    instanceType = tyCon requestName

    requestName = dname _unique

    paramsName = dname (getServiceParamsName service)
    paramsEmpty = Map.null (_dParameters _sDescription)
    paramsType
      | paramsEmpty = tyCon "()"
      | otherwise = tyCon paramsName

    instanceDecls =
      [ iType (tyScopesF instanceType) (tyScopes method),
        iType (tyParamsF instanceType) paramsType,
        iType (tyResponseF instanceType) (tyResponse method),
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
      [ pRecord paramsName [pFieldWild | not paramsEmpty],
        pRecord requestName [pFieldWild | hasProperties _schema]
      ]

    requestUpdate =
      recordUpdateE (var "Core.newRequest") $
        [ fieldUpdate "requestService" (textE (_dId _sDescription)),
          fieldUpdate "requestMethod" (textE (_mHttpMethod method)),
          fieldUpdate "requestPath" (requestPathE _sDescription method),
          fieldUpdate "requestQuery" (queryE _sDescription method),
          fieldUpdate "requestAlt" (altE _sDescription),
          fieldUpdate "requestBody" requestBody
        ]

    requestBody =
      case _mRequest method of
        Nothing -> var "Core.mempty"
        Just {} -> var "Core.toRequestBodyJSON" `app` var (fname "payload")

downloadInstance :: Service Solved -> Method Solved -> Solved -> Maybe (Decl ())
downloadInstance service@Service {_sDescription} method request@Solved {_unique, _schema} =
  guard (_mSupportsMediaDownload method && not (_mSupportsMediaUpload method))
    $> requestDecl Nothing instanceType instanceDecls
  where
    instanceType = tyParen (tyCon "Core.MediaRequest" `tyApp` wrappedType)

    wrappedType = tyCon (dname _unique)

    instanceDecls =
      [ iType (tyScopesF instanceType) (tyScopesF wrappedType),
        iType (tyParamsF instanceType) (tyParamsF wrappedType),
        iType (tyResponseF instanceType) (tyCon "Core.BodyReader"),
        iDecl requestBind,
        iDecl responseBind
      ]

    requestBind =
      funBind (name "toRequest") [] $
        unguardedRhs (var "toMediaRequest")

    responseBind =
      funBind (name "parseResponse") [] $
        unguardedRhs (var "parseMediaResponse")

data Upload = Upload
  { requestAccept :: Set Text,
    requestName :: Name (),
    requestFieldName :: Name (),
    toRequestName :: Name (),
    parseResponseName :: Name (),
    responseBody :: Maybe (Type ())
  }

uploadInstance :: Service Solved -> Method Solved -> Solved -> Upload -> Decl ()
uploadInstance Service {_sDescription} method Solved {_unique, _schema} Upload {..} =
  requestDecl instanceHead instanceType instanceDecls
  where
    instanceHead =
      if Set.member "*/*" requestAccept
        then Nothing
        else do
          let accepts = Set.toList (Set.delete "*/*" requestAccept)

          pure . cxSingle $
            tyCon "Core.Accepts"
              `tyApp` tyVar "media"
              `tyApp` tyList (map tySymbol accepts)

    instanceType =
      tyParen (tyCon requestName `tyApp` tyVar "media" `tyApp` wrappedType)

    wrappedName = dname _unique
    wrappedType = tyCon wrappedName

    instanceDecls =
      [ iType (tyScopesF instanceType) (tyScopesF wrappedType),
        iType (tyParamsF instanceType) (tyParamsF wrappedType),
        iType (tyResponseF instanceType) (tyResponse method),
        iDecl requestBind,
        iDecl responseBind
      ]

    -- Note: stopped destructuring full path for /upload + /resumable/upload
    -- prefixed paths as it forces two serializations of the path components.
    --
    -- The invariant that a path must be identical to the terminal
    -- GoogleRequest instance with on an /upload or /resumable/upload
    -- prefix is a partial/HasCallStack check instead.
    --
    -- infixApp (var toRequestName `app` var "params" `app` var "request")
    --    "Core.$" requestPath
    --
    -- requestPats =
    --   [ pAs (name "request") . pRecord requestName $
    --       [ pField requestFieldName (pRecord wrappedName [pFieldWild])
    --       ]
    --   ]

    requestBind =
      funBind (name "toRequest") [] $
        unguardedRhs (var toRequestName `app` uploadE _sDescription)

    responseBind =
      funBind (name "parseResponse") [] $
        unguardedRhs (var parseResponseName)

multipartInstance :: Service Solved -> Method Solved -> Solved -> Maybe (Decl ())
multipartInstance service method request = do
  guard (_mSupportsMediaUpload method && not (_mSupportsMediaDownload method))

  MediaUpload {_muAccept, _muSimplePath} <- _mMediaUpload method

  checkUpload service method "/upload/" _muSimplePath

  pure $! uploadInstance service method request $
    Upload
      { requestAccept = Set.fromList _muAccept,
        requestName = name "Core.MultipartRequest",
        requestFieldName = name "Core.multipartRequest",
        toRequestName = name "Core.toMultipartRequest",
        parseResponseName = name "Core.parseMultipartResponse",
        responseBody = Nothing
      }

resumableInstance :: Service Solved -> Method Solved -> Solved -> Maybe (Decl ())
resumableInstance service method request = do
  guard (_mSupportsMediaUpload method && not (_mSupportsMediaDownload method))

  MediaUpload {_muAccept, _muResumablePath} <- _mMediaUpload method

  checkUpload service method "/resumable/upload/" =<< _muResumablePath

  pure $! uploadInstance service method request $
    Upload
      { requestAccept = Set.fromList _muAccept,
        requestName = name "Core.ResumableRequest",
        requestFieldName = name "Core.resumableRequest",
        toRequestName = name "Core.toResumableRequest",
        parseResponseName = name "Core.parseResumableResponse",
        responseBody = Just (tyCon "Core.Location")
      }

checkUpload :: Service Solved -> Method Solved -> Text -> Text -> Maybe ()
checkUpload Service {_sDescription} Method {_mPath} prefix actual = do
  let expect =
        prefix
          <> (fromMaybe <*> Text.stripPrefix "/") (_dBasePath _sDescription)
          <> _mPath

  unless (actual == expect) $
    error $
      "(checkUpload) missing prefix on method.path: "
        ++ show prefix
        ++ "\n  mediaUpload.path: "
        ++ show actual
        ++ "\n  method.path:      "
        ++ show expect

requestDecl :: Maybe (Context ()) -> Type () -> [InstDecl ()] -> Decl ()
requestDecl ctx rhs decls =
  instDecl (iRule ctx (iCon "Core.GoogleRequest" `iApp` rhs)) (Just decls)

tyScopes :: Method a -> Type ()
tyScopes Method {_mScopes} = tyList (map (tyCon . name . getScopeName) _mScopes)

tyResponse :: Method a -> Type ()
tyResponse Method {_mResponse} = maybe (unit_tycon ()) tyRef _mResponse

tyScopesF :: Type () -> Type ()
tyScopesF = tyApp (tyCon "Core.Scopes")

tyParamsF :: Type () -> Type ()
tyParamsF = tyApp (tyCon "Core.Params")

tyResponseF :: Type () -> Type ()
tyResponseF = tyApp (tyCon "Core.Response")

requestPathE :: Description a -> Method b -> Exp ()
requestPathE Description {_dBasePath} = pathE (Just _dBasePath) . _mPath

pathE :: Maybe Text -> Text -> Exp ()
pathE mbase path =
  -- basePath is absolute, prefixed with "/", whereas servicePath is not prefixed.
  var "Core.toRequestPath" `app` listE components
  where
    components =
      -- Fuse together adjacent text segments in the codegen.
      fuseE
        . (baseUrl :)
        . List.intersperse (strE "/")
        . concatMap encode
        . extractPath
        $ path

    baseUrl =
      -- Assume the base path always has a trailing slash.
      case mbase of
        Nothing -> textE "/"
        Just "" -> textE "/"
        Just url -> textE url

    encode = \case
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
        . flip Map.withoutKeys specialParamNames
        $ mappend _mParameters _dParameters

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

uploadE :: Description Solved -> Exp ()
uploadE Description {_dParameters}
  -- Upload protocol for media (e.g. "raw", "multipart").
  | Map.member "upload_protocol" _dParameters = var "Core.UploadProtocol"
  -- Legacy upload protocol for media (e.g. "media", "multipart").
  | Map.member "uploadType" _dParameters = var "Core.UploadType"
  -- Error, no upload protocol supported?
  | otherwise = var "Core.UploadType"
