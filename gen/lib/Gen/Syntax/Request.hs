module Gen.Syntax.Request where

import Control.Lens (view, (^.))
import Data.Foldable qualified as Foldable
import Data.List qualified as List
import Data.Map.Strict qualified as Map
import Data.Set qualified as Set
import Data.Text qualified as Text
import Debug.Trace
import Gen.Prelude
import Gen.Syntax.Build
import Gen.Syntax.Service (serviceType)
import Gen.Types
import Language.Haskell.Exts.Build
import Language.Haskell.Exts.Syntax

requestInstances :: Service Solved -> Method Solved -> Solved -> [Decl ()]
requestInstances service method@Method {..} request =
  catMaybes
    [ Just (requestInstance service method request),
      downloadInstance service method request
    ]
    ++ multipartInstance service method request
    ++ resumableInstance service method request

requestInstance :: Service Solved -> Method Solved -> Solved -> Decl ()
requestInstance service@Service {_sDescription} method request@Solved {_unique, _schema} =
  instDecl (iRule Nothing instanceClass) (Just instanceDecls)
  where
    instanceClass = iCon "Core.GoogleRequest" `iApp` instanceType
    instanceType = tyCon requestName

    requestName = dname _unique

    paramsName = name (getServiceParamsName service)
    paramsType = tyCon paramsName
    paramsEmpty = Map.null (_dParameters _sDescription)

    configType = serviceType service

    instanceDecls =
      [ iType (tyScopesF instanceType) (tyScopes method),
        iType (tyConfigF instanceType) configType,
        iType (tyResponseF instanceType) (tyResponse method),
        iDecl requestBind
      ]

    requestBind =
      funBind (name "toRequest") requestPats $
        unguardedRhs requestUpdate

    -- responseBind =
    --   funBind (name "parseResponse") [] $
    --     unguardedRhs (var "Core.parseJSONResponse")

    requestPats =
      [ pRecord
          "Core.Service"
          [ pFieldPun (name "serviceRequest"),
            pField (name "serviceParams") (pRecord paramsName [pFieldWild | not paramsEmpty])
          ],
        pRecord requestName [pFieldWild | hasProperties _schema]
      ]

    requestUpdate =
      recordUpdateE (var "serviceRequest") $
        [ fieldUpdate "Core.method" (textE (_mHttpMethod method)),
          fieldUpdate "Core.path" (requestPathE _sDescription method),
          fieldUpdate "Core.queryString" (queryE _sDescription method)
        ]
          ++ maybeToList (fieldUpdate "Core.requestBody" requestBody <$ _mRequest method)

    requestBody =
      var "Core.toRequestBodyJSON" `app` var (fname "payload")

downloadInstance :: Service Solved -> Method Solved -> Solved -> Maybe (Decl ())
downloadInstance service@Service {_sDescription} method request@Solved {_unique, _schema} =
  guard (_mSupportsMediaDownload method && not (_mSupportsMediaUpload method))
    $> instDecl (iRule Nothing instanceClass) Nothing
  where
    instanceClass = iCon "Core.GoogleMediaRequest" `iApp` instanceType
    instanceType = tyCon (dname _unique)

data Upload = Upload
  { requestName :: Name (),
    requestType :: Type (),
    requestAccepts :: Set Text
  }

uploadInstances :: Service Solved -> Method Solved -> Solved -> Upload -> [Decl ()]
uploadInstances service@Service {_sDescription} method Solved {_unique, _schema} Upload {..}
  | Set.member acceptAny requestAccepts = [canonicalDecl (tyVar "media")]
  | otherwise = map (canonicalDecl . tySymbol) accepts
  where
    acceptAny = "*/*"
    accepts = Set.toList (Set.delete acceptAny requestAccepts)

    acceptDecl media =
      canonicalDecl (tyCon media)

    canonicalDecl media =
      instDecl (iRule Nothing (canonicalType media)) Nothing

    canonicalType media =
      iCon requestName `iApp` (media `tyApp` requestType)

multipartInstance :: Service Solved -> Method Solved -> Solved -> [Decl ()]
multipartInstance service method request =
  fromMaybe [] $ do
    guard (_mSupportsMediaUpload method && not (_mSupportsMediaDownload method))

    MediaUpload {_muAccept, _muSimplePath} <- _mMediaUpload method

    checkUpload service method "/upload/" _muSimplePath

    pure $
      uploadInstances service method request $
        Upload
          { requestName = name "Core.GoogleMultipartRequest",
            requestType = tyCon (dname (_unique request)),
            requestAccepts = Set.fromList _muAccept
          }

resumableInstance :: Service Solved -> Method Solved -> Solved -> [Decl ()]
resumableInstance service method request =
  fromMaybe [] $ do
    guard (_mSupportsMediaUpload method && not (_mSupportsMediaDownload method))

    MediaUpload {_muAccept, _muResumablePath} <- _mMediaUpload method

    checkUpload service method "/resumable/upload/" =<< _muResumablePath

    pure $
      uploadInstances service method request $
        Upload
          { requestName = name "Core.GoogleResumableRequest",
            requestType = tyCon (dname (_unique request)),
            requestAccepts = Set.fromList _muAccept
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

tyScopes :: Method a -> Type ()
tyScopes Method {_mScopes} =
  tyPromotedList (map (tyCon . name . getScopeName) _mScopes)

tyResponse :: Method a -> Type ()
tyResponse Method {_mResponse} = maybe (unit_tycon ()) tyRef _mResponse

tyScopesF :: Type () -> Type ()
tyScopesF = tyApp (tyCon "Core.Scopes")

tyConfigF :: Type () -> Type ()
tyConfigF = tyApp (tyCon "Core.Config")

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
      catMaybes $
        map go (orderParams fst unorderedParams _mParameterOrder)
          ++ [ altE _dParameters
             ]

    unorderedParams =
      Map.toList
        . Map.filter (\v -> _pLocation v /= Path)
        . flip Map.withoutKeys specialParamNames
        $ mappend _mParameters _dParameters

    go (k, x) =
      case _pLocation x of
        Path -> Nothing
        Query -> Just (if defaulted x then encodeRequired else encodeOptional)
          where
            encodeRequired =
              var "Core.Just" `app` tuple [localE k, var build `app` var (fname k)]

            encodeOptional =
              infixApp
                (infixApp (tupleSectionE [Just (localE k), Nothing]) "Core.." (var build))
                "Core.<$>"
                (var (fname k))

            build =
              if x ^. iRepeated
                then "Core.toQueryParams"
                else "Core.toQueryParam"

-- | @alt@ is the data format for the _response_.
--
-- It needs to be set to determine the response, we hardcode to
-- json unless the request is a media download, which then needs
-- the dynamic content type set.
altE :: Map Local (Param Solved) -> Maybe (Exp ())
altE params = do
  alt' <- Map.lookup "alt" params >>= view iDefault
  pure (var "Core.Just" `app` tuple [textE "alt", textE alt'])

uploadE :: Map Local (Param Solved) -> Exp ()
uploadE params
  -- Upload protocol for media (e.g. "raw", "multipart").
  | Map.member "upload_protocol" params = var "Core.UploadProtocol"
  -- Legacy upload protocol for media (e.g. "media", "multipart").
  | Map.member "uploadType" params = var "Core.UploadType"
  -- Error, no upload protocol supported?
  | otherwise = var "Core.UploadType"
