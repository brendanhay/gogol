module Gen.Syntax.Request where

import Control.Lens (view, (^.))
import qualified Control.Monad as Monad
import Data.Either
import qualified Data.Foldable as Foldable
import qualified Data.List as List
import Data.Map.Strict (Map)
import qualified Data.Map.Strict as Map
import Data.Maybe
import Data.Text (Text)
import qualified Data.Text as Text
import Gen.Syntax.Build
import Gen.Types
import Language.Haskell.Exts.Build
import Language.Haskell.Exts.Syntax

downloadInstance :: Service Solved -> Method Solved -> Solved -> Decl ()
downloadInstance service@Service {_sDescription} method request@Solved {_unique, _schema} =
  instDecl instanceHead (Just instanceDecls)
  where
    instanceHead = iRule (iCon "Core.GoogleRequest" `iApp` tyParen instanceType)
    instanceType = tyCon "Core.MediaDownload" `tyApp` tyCon wrappedName

    wrappedName = dname _unique
    paramsName = dname (serviceParamsName service)
    paramsEmpty = Map.null (_dParameters _sDescription)

    instanceDecls =
      [ iResponse instanceType (tyCon "Core.BodyReader"),
        iScopes method instanceType,
        iParams instanceType (tyCon paramsName),
        iDecl requestBind,
        iDecl responseBind
      ]

    requestBind = funBind (name "toRequest") requestPats requestUpdate

    requestPats =
      [ pRecord paramsName (not paramsEmpty),
        pApp "Core.MediaDownload" $
          [ pRecord wrappedName (hasProperties _schema),
            pvar mediaName,
            pvar downloadType
          ]
      ]

    requestUpdate =
      unguardedRhs . recordUpdateE (var "Core.defaultRequest") $
        [ fieldUpdate "method" (textE (_mHttpMethod method)),
          fieldUpdate "path" (pathE _sDescription method),
          fieldUpdate "queryString" (queryE _sDescription method Nothing (Just "Core.AltMedia")),
          fieldUpdate "requestBody" (var mediaName)
        ]

    mediaName = name "mediaPayload"
    downloadType = name "mediaDownload"

    responseBind = funBind (name "withResponse") [pvar "_proxy"] responseParser
    responseParser = unguardedRhs (var "Core.pure")

uploadInstance :: Service Solved -> Method Solved -> Solved -> Decl ()
uploadInstance service@Service {_sDescription} method request@Solved {_unique, _schema} =
  instDecl instanceHead (Just instanceDecls)
  where
    instanceHead = iRule (iCon "Core.GoogleRequest" `iApp` tyParen instanceType)
    instanceType = tyCon "Core.MediaUpload" `tyApp` tyCon wrappedName

    wrappedName = dname _unique
    paramsName = dname (serviceParamsName service)
    paramsEmpty = Map.null (_dParameters _sDescription)

    instanceDecls =
      [ iResponse instanceType (tyResponse method),
        iScopes method instanceType,
        iParams instanceType (tyCon paramsName),
        iDecl requestBind,
        iDecl responseBind
      ]

    requestBind = funBind (name "toRequest") requestPats requestUpdate

    requestPats =
      [ pRecord paramsName (not paramsEmpty),
        pApp "Core.MediaUpload" $
          [ pRecord wrappedName (hasProperties _schema),
            pvar mediaName,
            pvar uploadType
          ]
      ]

    requestUpdate =
      unguardedRhs . recordUpdateE (var "Core.defaultRequest") $
        [ fieldUpdate "method" (textE (_mHttpMethod method)),
          fieldUpdate "path" (pathE _sDescription method),
          fieldUpdate "queryString" (queryE _sDescription method Nothing Nothing),
          fieldUpdate "requestBody" (var mediaName)
        ]

    mediaName = name "mediaPayload"
    uploadType = name "mediaUpload"

    responseBind = funBind (name "withResponse") [pvar "_proxy"] responseParser
    responseParser = unguardedRhs (var "Core.parseJSONResponse")

requestInstance :: Service Solved -> Method Solved -> Solved -> Decl ()
requestInstance service@Service {_sDescription} method@Method {_mRequest} request@Solved {_unique, _schema} =
  instDecl requestHead (Just requestDecls)
  where
    requestHead = iRule (iCon "Core.GoogleRequest" `iApp` instanceType)
    instanceType = tyCon requestName
    requestName = dname _unique

    paramsName = dname (serviceParamsName service)
    paramsEmpty = Map.null (_dParameters _sDescription)

    requestDecls =
      [ iResponse instanceType (tyResponse method),
        iScopes method instanceType,
        iParams instanceType (tyCon paramsName),
        iDecl requestBind
      ]

    requestBind = funBind (name "googleRequest") requestPats requestUpdate

    requestPats =
      [ pRecord paramsName (not paramsEmpty),
        pRecord requestName (hasProperties _schema)
      ]

    requestUpdate =
      unguardedRhs . recordUpdateE (var "Core.defaultRequest") $
        [ fieldUpdate "method" (textE (_mHttpMethod method)),
          fieldUpdate "path" (pathE _sDescription method),
          fieldUpdate "queryString" (queryE _sDescription method Nothing Nothing),
          fieldUpdate "requestBody" requestBody
        ]

    requestBody =
      case _mRequest of
        Nothing -> var "Core.mempty"
        Just {} -> var "Core.toRequestBodyJSON" `app` var (fname "payload")

iParams :: Type () -> Type () -> InstDecl ()
iParams itype = iType (tyCon "GoogleParams" `tyApp` itype)

iResponse :: Type () -> Type () -> InstDecl ()
iResponse itype = iType (tyCon "GoogleResponse" `tyApp` itype)

tyResponse :: Method a -> Type ()
tyResponse Method {_mResponse} = maybe (unit_tycon ()) tyRef _mResponse

iScopes :: Method a -> Type () -> InstDecl ()
iScopes Method {_mScopes} itype =
  iType (tyScopes itype) (tyList (map (tyCon . name . scopeName) _mScopes))

tyScopes :: Type () -> Type ()
tyScopes = tyApp (tyCon "GoogleScopes")

pathE :: Description a -> Method b -> Exp ()
pathE Description {_dServicePath} Method {_mPath} =
  var "Core.toRequestPath" `app` listE components
  where
    components =
      fuseE $
        -- Assume the service path always has a trailing slash.
        textE _dServicePath :
        List.intersperse (strE "/") (concatMap go (extractPath _mPath))

    go = \case
      Left constant ->
        [textE constant]
      Right (capture, mmode) ->
        catMaybes
          [ Just (app (var "Core.toPathBuilder") (var (fname capture))),
            textE . Text.cons ':' <$> mmode
          ]

queryE :: Description Solved -> Method Solved -> Maybe (Name ()) -> Maybe Text -> Exp ()
queryE Description {_dParameters} Method {_mParameters, _mParameterOrder} upload media =
  infixApp (var "Core.toRequestQuery") "$" (var "Core.catMaybes" `app` listE params)
  where
    params =
      mapMaybe go (orderParams fst unorderedParams _mParameterOrder)
        ++ catMaybes [acceptType, uploadType]

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
    -- It Needs to be set to determine the response, we hardcode to
    -- json unless the request is a media download, which then needs
    -- the dynamic content type set.
    acceptType = do
      mime <-
        case media of
          Nothing -> alternate <$> (Map.lookup "alt" _dParameters >>= view iDefault)
          Just ok -> pure ok

      pure . app (var "Core.Just") . tuple $
        [ strE "alt",
          var (name (Text.unpack mime))
        ]

    uploadType = do
      proto <- upload

      Monad.guard (Map.member "uploadType" _dParameters)

      pure . app (var "Core.Just") . tuple $
        [ strE "uploadType",
          var proto
        ]
