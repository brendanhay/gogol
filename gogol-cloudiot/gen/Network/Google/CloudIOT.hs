{-# LANGUAGE DataKinds         #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE TypeOperators     #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.CloudIOT
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Registers and manages IoT (Internet of Things) devices that connect to
-- the Google Cloud Platform.
--
-- /See:/ <https://cloud.google.com/iot Cloud IoT API Reference>
module Network.Google.CloudIOT
    (
    -- * Service Configuration
      cloudIOTService

    -- * OAuth Scopes
    , cloudIOTScope
    , cloudPlatformScope

    -- * API Declaration
    , CloudIOTAPI

    -- * Resources

    -- ** cloudiot.projects.locations.registries.bindDeviceToGateway
    , module Network.Google.Resource.CloudIOT.Projects.Locations.Registries.BindDeviceToGateway

    -- ** cloudiot.projects.locations.registries.create
    , module Network.Google.Resource.CloudIOT.Projects.Locations.Registries.Create

    -- ** cloudiot.projects.locations.registries.delete
    , module Network.Google.Resource.CloudIOT.Projects.Locations.Registries.Delete

    -- ** cloudiot.projects.locations.registries.devices.configVersions.list
    , module Network.Google.Resource.CloudIOT.Projects.Locations.Registries.Devices.ConfigVersions.List

    -- ** cloudiot.projects.locations.registries.devices.create
    , module Network.Google.Resource.CloudIOT.Projects.Locations.Registries.Devices.Create

    -- ** cloudiot.projects.locations.registries.devices.delete
    , module Network.Google.Resource.CloudIOT.Projects.Locations.Registries.Devices.Delete

    -- ** cloudiot.projects.locations.registries.devices.get
    , module Network.Google.Resource.CloudIOT.Projects.Locations.Registries.Devices.Get

    -- ** cloudiot.projects.locations.registries.devices.list
    , module Network.Google.Resource.CloudIOT.Projects.Locations.Registries.Devices.List

    -- ** cloudiot.projects.locations.registries.devices.modifyCloudToDeviceConfig
    , module Network.Google.Resource.CloudIOT.Projects.Locations.Registries.Devices.ModifyCloudToDeviceConfig

    -- ** cloudiot.projects.locations.registries.devices.patch
    , module Network.Google.Resource.CloudIOT.Projects.Locations.Registries.Devices.Patch

    -- ** cloudiot.projects.locations.registries.devices.sendCommandToDevice
    , module Network.Google.Resource.CloudIOT.Projects.Locations.Registries.Devices.SendCommandToDevice

    -- ** cloudiot.projects.locations.registries.devices.states.list
    , module Network.Google.Resource.CloudIOT.Projects.Locations.Registries.Devices.States.List

    -- ** cloudiot.projects.locations.registries.get
    , module Network.Google.Resource.CloudIOT.Projects.Locations.Registries.Get

    -- ** cloudiot.projects.locations.registries.getIamPolicy
    , module Network.Google.Resource.CloudIOT.Projects.Locations.Registries.GetIAMPolicy

    -- ** cloudiot.projects.locations.registries.groups.devices.list
    , module Network.Google.Resource.CloudIOT.Projects.Locations.Registries.Groups.Devices.List

    -- ** cloudiot.projects.locations.registries.groups.getIamPolicy
    , module Network.Google.Resource.CloudIOT.Projects.Locations.Registries.Groups.GetIAMPolicy

    -- ** cloudiot.projects.locations.registries.groups.setIamPolicy
    , module Network.Google.Resource.CloudIOT.Projects.Locations.Registries.Groups.SetIAMPolicy

    -- ** cloudiot.projects.locations.registries.groups.testIamPermissions
    , module Network.Google.Resource.CloudIOT.Projects.Locations.Registries.Groups.TestIAMPermissions

    -- ** cloudiot.projects.locations.registries.list
    , module Network.Google.Resource.CloudIOT.Projects.Locations.Registries.List

    -- ** cloudiot.projects.locations.registries.patch
    , module Network.Google.Resource.CloudIOT.Projects.Locations.Registries.Patch

    -- ** cloudiot.projects.locations.registries.setIamPolicy
    , module Network.Google.Resource.CloudIOT.Projects.Locations.Registries.SetIAMPolicy

    -- ** cloudiot.projects.locations.registries.testIamPermissions
    , module Network.Google.Resource.CloudIOT.Projects.Locations.Registries.TestIAMPermissions

    -- ** cloudiot.projects.locations.registries.unbindDeviceFromGateway
    , module Network.Google.Resource.CloudIOT.Projects.Locations.Registries.UnbindDeviceFromGateway

    -- * Types

    -- ** Status
    , Status
    , status
    , sDetails
    , sCode
    , sMessage

    -- ** ProjectsLocationsRegistriesGroupsDevicesListGatewayListOptionsGatewayType
    , ProjectsLocationsRegistriesGroupsDevicesListGatewayListOptionsGatewayType (..)

    -- ** UnbindDeviceFromGatewayResponse
    , UnbindDeviceFromGatewayResponse
    , unbindDeviceFromGatewayResponse

    -- ** DeviceState
    , DeviceState
    , deviceState
    , dsUpdateTime
    , dsBinaryData

    -- ** Expr
    , Expr
    , expr
    , eLocation
    , eExpression
    , eTitle
    , eDescription

    -- ** GetIAMPolicyRequest
    , GetIAMPolicyRequest
    , getIAMPolicyRequest
    , giprOptions

    -- ** ListDeviceRegistriesResponse
    , ListDeviceRegistriesResponse
    , listDeviceRegistriesResponse
    , ldrrNextPageToken
    , ldrrDeviceRegistries

    -- ** DeviceConfig
    , DeviceConfig
    , deviceConfig
    , dcDeviceAckTime
    , dcCloudUpdateTime
    , dcBinaryData
    , dcVersion

    -- ** ListDeviceConfigVersionsResponse
    , ListDeviceConfigVersionsResponse
    , listDeviceConfigVersionsResponse
    , ldcvrDeviceConfigs

    -- ** DeviceLogLevel
    , DeviceLogLevel (..)

    -- ** GatewayConfig
    , GatewayConfig
    , gatewayConfig
    , gcLastAccessedGatewayId
    , gcGatewayAuthMethod
    , gcLastAccessedGatewayTime
    , gcGatewayType

    -- ** ListDeviceStatesResponse
    , ListDeviceStatesResponse
    , listDeviceStatesResponse
    , ldsrDeviceStates

    -- ** Empty
    , Empty
    , empty

    -- ** ProjectsLocationsRegistriesDevicesListGatewayListOptionsGatewayType
    , ProjectsLocationsRegistriesDevicesListGatewayListOptionsGatewayType (..)

    -- ** StateNotificationConfig
    , StateNotificationConfig
    , stateNotificationConfig
    , sncPubsubTopicName

    -- ** PublicKeyCertificateFormat
    , PublicKeyCertificateFormat (..)

    -- ** Device
    , Device
    , device
    , dState
    , dLastHeartbeatTime
    , dGatewayConfig
    , dLogLevel
    , dConfig
    , dCredentials
    , dNumId
    , dLastErrorStatus
    , dLastConfigSendTime
    , dLastConfigAckTime
    , dName
    , dLastErrorTime
    , dMetadata
    , dId
    , dLastStateTime
    , dBlocked
    , dLastEventTime

    -- ** DeviceCredential
    , DeviceCredential
    , deviceCredential
    , dcPublicKey
    , dcExpirationTime

    -- ** EventNotificationConfig
    , EventNotificationConfig
    , eventNotificationConfig
    , encPubsubTopicName
    , encSubfolderMatches

    -- ** X509CertificateDetails
    , X509CertificateDetails
    , x509CertificateDetails
    , xcdSubject
    , xcdExpiryTime
    , xcdStartTime
    , xcdSignatureAlgorithm
    , xcdIssuer
    , xcdPublicKeyType

    -- ** PublicKeyCertificate
    , PublicKeyCertificate
    , publicKeyCertificate
    , pkcFormat
    , pkcCertificate
    , pkcX509Details

    -- ** StatusDetailsItem
    , StatusDetailsItem
    , statusDetailsItem
    , sdiAddtional

    -- ** PublicKeyCredentialFormat
    , PublicKeyCredentialFormat (..)

    -- ** GetPolicyOptions
    , GetPolicyOptions
    , getPolicyOptions
    , gpoRequestedPolicyVersion

    -- ** MqttConfig
    , MqttConfig
    , mqttConfig
    , mcMqttEnabledState

    -- ** SetIAMPolicyRequest
    , SetIAMPolicyRequest
    , setIAMPolicyRequest
    , siprPolicy

    -- ** RegistryCredential
    , RegistryCredential
    , registryCredential
    , rcPublicKeyCertificate

    -- ** SendCommandToDeviceRequest
    , SendCommandToDeviceRequest
    , sendCommandToDeviceRequest
    , sctdrBinaryData
    , sctdrSubfolder

    -- ** BindDeviceToGatewayResponse
    , BindDeviceToGatewayResponse
    , bindDeviceToGatewayResponse

    -- ** DeviceRegistryLogLevel
    , DeviceRegistryLogLevel (..)

    -- ** HTTPConfig
    , HTTPConfig
    , hTTPConfig
    , httpcHTTPEnabledState

    -- ** Xgafv
    , Xgafv (..)

    -- ** TestIAMPermissionsRequest
    , TestIAMPermissionsRequest
    , testIAMPermissionsRequest
    , tiprPermissions

    -- ** GatewayConfigGatewayType
    , GatewayConfigGatewayType (..)

    -- ** ListDevicesResponse
    , ListDevicesResponse
    , listDevicesResponse
    , ldrNextPageToken
    , ldrDevices

    -- ** DeviceMetadata
    , DeviceMetadata
    , deviceMetadata
    , dmAddtional

    -- ** GatewayConfigGatewayAuthMethod
    , GatewayConfigGatewayAuthMethod (..)

    -- ** DeviceRegistry
    , DeviceRegistry
    , deviceRegistry
    , drLogLevel
    , drCredentials
    , drStateNotificationConfig
    , drEventNotificationConfigs
    , drMqttConfig
    , drName
    , drHTTPConfig
    , drId

    -- ** PublicKeyCredential
    , PublicKeyCredential
    , publicKeyCredential
    , pFormat
    , pKey

    -- ** UnbindDeviceFromGatewayRequest
    , UnbindDeviceFromGatewayRequest
    , unbindDeviceFromGatewayRequest
    , udfgrDeviceId
    , udfgrGatewayId

    -- ** MqttConfigMqttEnabledState
    , MqttConfigMqttEnabledState (..)

    -- ** TestIAMPermissionsResponse
    , TestIAMPermissionsResponse
    , testIAMPermissionsResponse
    , tiamprPermissions

    -- ** Policy
    , Policy
    , policy
    , pEtag
    , pVersion
    , pBindings

    -- ** HTTPConfigHTTPEnabledState
    , HTTPConfigHTTPEnabledState (..)

    -- ** SendCommandToDeviceResponse
    , SendCommandToDeviceResponse
    , sendCommandToDeviceResponse

    -- ** BindDeviceToGatewayRequest
    , BindDeviceToGatewayRequest
    , bindDeviceToGatewayRequest
    , bdtgrDeviceId
    , bdtgrGatewayId

    -- ** ModifyCloudToDeviceConfigRequest
    , ModifyCloudToDeviceConfigRequest
    , modifyCloudToDeviceConfigRequest
    , mctdcrVersionToUpdate
    , mctdcrBinaryData

    -- ** Binding
    , Binding
    , binding
    , bMembers
    , bRole
    , bCondition
    ) where

import Network.Google.Prelude
import Network.Google.CloudIOT.Types
import Network.Google.Resource.CloudIOT.Projects.Locations.Registries.BindDeviceToGateway
import Network.Google.Resource.CloudIOT.Projects.Locations.Registries.Create
import Network.Google.Resource.CloudIOT.Projects.Locations.Registries.Delete
import Network.Google.Resource.CloudIOT.Projects.Locations.Registries.Devices.ConfigVersions.List
import Network.Google.Resource.CloudIOT.Projects.Locations.Registries.Devices.Create
import Network.Google.Resource.CloudIOT.Projects.Locations.Registries.Devices.Delete
import Network.Google.Resource.CloudIOT.Projects.Locations.Registries.Devices.Get
import Network.Google.Resource.CloudIOT.Projects.Locations.Registries.Devices.List
import Network.Google.Resource.CloudIOT.Projects.Locations.Registries.Devices.ModifyCloudToDeviceConfig
import Network.Google.Resource.CloudIOT.Projects.Locations.Registries.Devices.Patch
import Network.Google.Resource.CloudIOT.Projects.Locations.Registries.Devices.SendCommandToDevice
import Network.Google.Resource.CloudIOT.Projects.Locations.Registries.Devices.States.List
import Network.Google.Resource.CloudIOT.Projects.Locations.Registries.Get
import Network.Google.Resource.CloudIOT.Projects.Locations.Registries.GetIAMPolicy
import Network.Google.Resource.CloudIOT.Projects.Locations.Registries.Groups.Devices.List
import Network.Google.Resource.CloudIOT.Projects.Locations.Registries.Groups.GetIAMPolicy
import Network.Google.Resource.CloudIOT.Projects.Locations.Registries.Groups.SetIAMPolicy
import Network.Google.Resource.CloudIOT.Projects.Locations.Registries.Groups.TestIAMPermissions
import Network.Google.Resource.CloudIOT.Projects.Locations.Registries.List
import Network.Google.Resource.CloudIOT.Projects.Locations.Registries.Patch
import Network.Google.Resource.CloudIOT.Projects.Locations.Registries.SetIAMPolicy
import Network.Google.Resource.CloudIOT.Projects.Locations.Registries.TestIAMPermissions
import Network.Google.Resource.CloudIOT.Projects.Locations.Registries.UnbindDeviceFromGateway

{- $resources
TODO
-}

-- | Represents the entirety of the methods and resources available for the Cloud IoT API service.
type CloudIOTAPI =
     ProjectsLocationsRegistriesGroupsDevicesListResource
       :<|>
       ProjectsLocationsRegistriesGroupsGetIAMPolicyResource
       :<|>
       ProjectsLocationsRegistriesGroupsSetIAMPolicyResource
       :<|>
       ProjectsLocationsRegistriesGroupsTestIAMPermissionsResource
       :<|>
       ProjectsLocationsRegistriesDevicesStatesListResource
       :<|>
       ProjectsLocationsRegistriesDevicesConfigVersionsListResource
       :<|> ProjectsLocationsRegistriesDevicesListResource
       :<|>
       ProjectsLocationsRegistriesDevicesModifyCloudToDeviceConfigResource
       :<|> ProjectsLocationsRegistriesDevicesPatchResource
       :<|> ProjectsLocationsRegistriesDevicesGetResource
       :<|> ProjectsLocationsRegistriesDevicesCreateResource
       :<|>
       ProjectsLocationsRegistriesDevicesSendCommandToDeviceResource
       :<|> ProjectsLocationsRegistriesDevicesDeleteResource
       :<|>
       ProjectsLocationsRegistriesUnbindDeviceFromGatewayResource
       :<|> ProjectsLocationsRegistriesListResource
       :<|>
       ProjectsLocationsRegistriesBindDeviceToGatewayResource
       :<|> ProjectsLocationsRegistriesGetIAMPolicyResource
       :<|> ProjectsLocationsRegistriesPatchResource
       :<|> ProjectsLocationsRegistriesGetResource
       :<|> ProjectsLocationsRegistriesCreateResource
       :<|> ProjectsLocationsRegistriesSetIAMPolicyResource
       :<|>
       ProjectsLocationsRegistriesTestIAMPermissionsResource
       :<|> ProjectsLocationsRegistriesDeleteResource
