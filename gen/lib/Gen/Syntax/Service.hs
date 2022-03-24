module Gen.Syntax.Service where

import Control.Lens (view, (^.))
import qualified Data.Foldable as Foldable
import qualified Data.List as List
import qualified Data.Map.Strict as Map
import qualified Data.Set as Set
import qualified Data.Text as Text
import Gen.Formatting
import Gen.Prelude
import Gen.Syntax.Build
import Gen.Syntax.Record
import Gen.Text (stripPrefix, stripSuffix)
import Gen.Types
import Language.Haskell.Exts

scopeAliases :: OAuth2 -> Set Alias
scopeAliases (OAuth2 xs) =
  Set.fromList . flip map (Map.toList xs) $ \(value, help) ->
    let key = name (getScopeName value)
     in Alias
          { aliasName = key,
            aliasDecl = typeDecl (DHead () key) (tySymbol value),
            aliasHelp = Just help
          }

serviceType :: Service a -> Type ()
serviceType service = tyCon (name (getServiceName service))

serviceDecl :: Service Solved -> Data
serviceDecl service@Service {_sDescription} =
  Prod
    { prodName = paramsName,
      prodHelp = Just (rawHelpText paramsHelp),
      prodAlias,
      prodDecl = recordDecl paramsName params,
      prodFields = recordFields params,
      prodCtor = Just constrFun,
      prodSynonym = Nothing,
      prodDeriving = Just (recordDerive [DShow, DEq, DOrd, DGeneric]),
      prodExtras = []
    }
  where
    serviceName = getServiceName service

    prodAlias =
      Just
        Alias
          { aliasName,
            aliasHelp = Just (rawHelpText aliasHelp),
            aliasDecl = typeDecl (DHead () aliasName) aliasType
          }

    aliasName = name serviceName

    aliasType =
      tyCon "Core.Service"
        `tyApp` tySymbol (_dId _sDescription)
        `tyApp` tyCon paramsName

    aliasHelp =
      sformat
        ( "Default request configuration for version @" % stext
            % "@ of the "
            % stext
        )
        (service ^. dVersion)
        (service ^. dTitle)

    paramsName = name (getServiceParamsName service)

    paramsConstr = constrE paramsName params

    params =
      Map.map _pParam
        . flip Map.withoutKeys specialParamNames
        $ _dParameters _sDescription

    paramsHelp =
      sformat
        ( "Global query parameters for version @" % stext
            % "@ of the "
            % stext
            % ". These parameters will be added to the query string for every request."
        )
        (service ^. dVersion)
        (service ^. dTitle)

    constrName = name ("mk" <> serviceName)

    constrFun =
      Fun
        { funName = constrName,
          funHelp = Just (rawHelpText constrHelp),
          funSig = typeSig [constrName] (tyCon aliasName),
          funDecl = constrDecl
        }

    constrDecl =
      funBind constrName [] . unguardedRhs $
        recordConstrE
          (name "Core.Service")
          [ fieldUpdate "Core.serviceRequest" requestConstr,
            fieldUpdate "Core.serviceParams" paramsConstr
          ]

    constrHelp =
      sformat
        ( "Default configuration referring to version @" % stext
            % "@ of the "
            % stext
            % ". This sets the host and port used as a starting point for constructing service requests."
        )
        (service ^. dVersion)
        (service ^. dTitle)

    requestConstr =
      recordUpdateE (var "Core.defaultRequest") $
        [ fieldUpdate "Core.secure" (boolE True),
          fieldUpdate "Core.host" (textE requestHost),
          fieldUpdate "Core.port" (intE 443)
        ]

    requestHost =
      (fromMaybe <*> Text.stripSuffix "/") (_dRootUrl _sDescription)
