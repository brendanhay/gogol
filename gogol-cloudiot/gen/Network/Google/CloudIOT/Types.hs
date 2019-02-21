{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.CloudIOT.Types
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.CloudIOT.Types
    (
    -- * Service Configuration
      cloudIOTService

    -- * OAuth Scopes
    , cloudIOTScope
    , cloudPlatformScope

    -- * Status
    , Status
    , status
    , sDetails
    , sCode
    , sMessage

    -- * UnbindDeviceFromGatewayResponse
    , UnbindDeviceFromGatewayResponse
    , unbindDeviceFromGatewayResponse

    -- * DeviceState
    , DeviceState
    , deviceState
    , dsUpdateTime
    , dsBinaryData

    -- * Expr
    , Expr
    , expr
    , eLocation
    , eExpression
    , eTitle
    , eDescription

    -- * GetIAMPolicyRequest
    , GetIAMPolicyRequest
    , getIAMPolicyRequest

    -- * ListDeviceRegistriesResponse
    , ListDeviceRegistriesResponse
    , listDeviceRegistriesResponse
    , ldrrNextPageToken
    , ldrrDeviceRegistries

    -- * DeviceConfig
    , DeviceConfig
    , deviceConfig
    , dcDeviceAckTime
    , dcCloudUpdateTime
    , dcBinaryData
    , dcVersion

    -- * ListDeviceConfigVersionsResponse
    , ListDeviceConfigVersionsResponse
    , listDeviceConfigVersionsResponse
    , ldcvrDeviceConfigs

    -- * DeviceLogLevel
    , DeviceLogLevel (..)

    -- * GatewayConfig
    , GatewayConfig
    , gatewayConfig
    , gcLastAccessedGatewayId
    , gcGatewayAuthMethod
    , gcLastAccessedGatewayTime
    , gcGatewayType

    -- * ListDeviceStatesResponse
    , ListDeviceStatesResponse
    , listDeviceStatesResponse
    , ldsrDeviceStates

    -- * Empty
    , Empty
    , empty

    -- * StateNotificationConfig
    , StateNotificationConfig
    , stateNotificationConfig
    , sncPubsubTopicName

    -- * PublicKeyCertificateFormat
    , PublicKeyCertificateFormat (..)

    -- * Device
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

    -- * DeviceCredential
    , DeviceCredential
    , deviceCredential
    , dcPublicKey
    , dcExpirationTime

    -- * EventNotificationConfig
    , EventNotificationConfig
    , eventNotificationConfig
    , encPubsubTopicName
    , encSubfolderMatches

    -- * X509CertificateDetails
    , X509CertificateDetails
    , x509CertificateDetails
    , xcdSubject
    , xcdExpiryTime
    , xcdStartTime
    , xcdSignatureAlgorithm
    , xcdIssuer
    , xcdPublicKeyType

    -- * PublicKeyCertificate
    , PublicKeyCertificate
    , publicKeyCertificate
    , pkcFormat
    , pkcCertificate
    , pkcX509Details

    -- * StatusDetailsItem
    , StatusDetailsItem
    , statusDetailsItem
    , sdiAddtional

    -- * PublicKeyCredentialFormat
    , PublicKeyCredentialFormat (..)

    -- * MqttConfig
    , MqttConfig
    , mqttConfig
    , mcMqttEnabledState

    -- * SetIAMPolicyRequest
    , SetIAMPolicyRequest
    , setIAMPolicyRequest
    , siprPolicy

    -- * RegistryCredential
    , RegistryCredential
    , registryCredential
    , rcPublicKeyCertificate

    -- * SendCommandToDeviceRequest
    , SendCommandToDeviceRequest
    , sendCommandToDeviceRequest
    , sctdrBinaryData
    , sctdrSubfolder

    -- * BindDeviceToGatewayResponse
    , BindDeviceToGatewayResponse
    , bindDeviceToGatewayResponse

    -- * DeviceRegistryLogLevel
    , DeviceRegistryLogLevel (..)

    -- * HTTPConfig
    , HTTPConfig
    , hTTPConfig
    , httpcHTTPEnabledState

    -- * Xgafv
    , Xgafv (..)

    -- * TestIAMPermissionsRequest
    , TestIAMPermissionsRequest
    , testIAMPermissionsRequest
    , tiprPermissions

    -- * GatewayConfigGatewayType
    , GatewayConfigGatewayType (..)

    -- * ListDevicesResponse
    , ListDevicesResponse
    , listDevicesResponse
    , ldrNextPageToken
    , ldrDevices

    -- * DeviceMetadata
    , DeviceMetadata
    , deviceMetadata
    , dmAddtional

    -- * GatewayConfigGatewayAuthMethod
    , GatewayConfigGatewayAuthMethod (..)

    -- * DeviceRegistry
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

    -- * PublicKeyCredential
    , PublicKeyCredential
    , publicKeyCredential
    , pFormat
    , pKey

    -- * UnbindDeviceFromGatewayRequest
    , UnbindDeviceFromGatewayRequest
    , unbindDeviceFromGatewayRequest
    , udfgrDeviceId
    , udfgrGatewayId

    -- * MqttConfigMqttEnabledState
    , MqttConfigMqttEnabledState (..)

    -- * TestIAMPermissionsResponse
    , TestIAMPermissionsResponse
    , testIAMPermissionsResponse
    , tiamprPermissions

    -- * Policy
    , Policy
    , policy
    , pEtag
    , pVersion
    , pBindings

    -- * HTTPConfigHTTPEnabledState
    , HTTPConfigHTTPEnabledState (..)

    -- * SendCommandToDeviceResponse
    , SendCommandToDeviceResponse
    , sendCommandToDeviceResponse

    -- * BindDeviceToGatewayRequest
    , BindDeviceToGatewayRequest
    , bindDeviceToGatewayRequest
    , bdtgrDeviceId
    , bdtgrGatewayId

    -- * ModifyCloudToDeviceConfigRequest
    , ModifyCloudToDeviceConfigRequest
    , modifyCloudToDeviceConfigRequest
    , mctdcrVersionToUpdate
    , mctdcrBinaryData

    -- * Binding
    , Binding
    , binding
    , bMembers
    , bRole
    , bCondition
    ) where

import           Network.Google.CloudIOT.Types.Product
import           Network.Google.CloudIOT.Types.Sum
import           Network.Google.Prelude

-- | Default request referring to version 'v1' of the Cloud IoT API. This contains the host and root path used as a starting point for constructing service requests.
cloudIOTService :: ServiceConfig
cloudIOTService
  = defaultService (ServiceId "cloudiot:v1")
      "cloudiot.googleapis.com"

-- | Register and manage devices in the Google Cloud IoT service
cloudIOTScope :: Proxy '["https://www.googleapis.com/auth/cloudiot"]
cloudIOTScope = Proxy

-- | View and manage your data across Google Cloud Platform services
cloudPlatformScope :: Proxy '["https://www.googleapis.com/auth/cloud-platform"]
cloudPlatformScope = Proxy
