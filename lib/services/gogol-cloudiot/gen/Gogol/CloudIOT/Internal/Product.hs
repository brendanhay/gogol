{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.CloudIOT.Internal.Product
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Gogol.CloudIOT.Internal.Product
  (

    -- * BindDeviceToGatewayRequest
    BindDeviceToGatewayRequest (..),
    newBindDeviceToGatewayRequest,

    -- * BindDeviceToGatewayResponse
    BindDeviceToGatewayResponse (..),
    newBindDeviceToGatewayResponse,

    -- * Binding
    Binding (..),
    newBinding,

    -- * Device
    Device (..),
    newDevice,

    -- * Device_Metadata
    Device_Metadata (..),
    newDevice_Metadata,

    -- * DeviceConfig
    DeviceConfig (..),
    newDeviceConfig,

    -- * DeviceCredential
    DeviceCredential (..),
    newDeviceCredential,

    -- * DeviceRegistry
    DeviceRegistry (..),
    newDeviceRegistry,

    -- * DeviceState
    DeviceState (..),
    newDeviceState,

    -- * Empty
    Empty (..),
    newEmpty,

    -- * EventNotificationConfig
    EventNotificationConfig (..),
    newEventNotificationConfig,

    -- * Expr
    Expr (..),
    newExpr,

    -- * GatewayConfig
    GatewayConfig (..),
    newGatewayConfig,

    -- * GetIamPolicyRequest
    GetIamPolicyRequest (..),
    newGetIamPolicyRequest,

    -- * GetPolicyOptions
    GetPolicyOptions (..),
    newGetPolicyOptions,

    -- * HttpConfig
    HttpConfig (..),
    newHttpConfig,

    -- * ListDeviceConfigVersionsResponse
    ListDeviceConfigVersionsResponse (..),
    newListDeviceConfigVersionsResponse,

    -- * ListDeviceRegistriesResponse
    ListDeviceRegistriesResponse (..),
    newListDeviceRegistriesResponse,

    -- * ListDeviceStatesResponse
    ListDeviceStatesResponse (..),
    newListDeviceStatesResponse,

    -- * ListDevicesResponse
    ListDevicesResponse (..),
    newListDevicesResponse,

    -- * ModifyCloudToDeviceConfigRequest
    ModifyCloudToDeviceConfigRequest (..),
    newModifyCloudToDeviceConfigRequest,

    -- * MqttConfig
    MqttConfig (..),
    newMqttConfig,

    -- * Policy
    Policy (..),
    newPolicy,

    -- * PublicKeyCertificate
    PublicKeyCertificate (..),
    newPublicKeyCertificate,

    -- * PublicKeyCredential
    PublicKeyCredential (..),
    newPublicKeyCredential,

    -- * RegistryCredential
    RegistryCredential (..),
    newRegistryCredential,

    -- * SendCommandToDeviceRequest
    SendCommandToDeviceRequest (..),
    newSendCommandToDeviceRequest,

    -- * SendCommandToDeviceResponse
    SendCommandToDeviceResponse (..),
    newSendCommandToDeviceResponse,

    -- * SetIamPolicyRequest
    SetIamPolicyRequest (..),
    newSetIamPolicyRequest,

    -- * StateNotificationConfig
    StateNotificationConfig (..),
    newStateNotificationConfig,

    -- * Status
    Status (..),
    newStatus,

    -- * Status_DetailsItem
    Status_DetailsItem (..),
    newStatus_DetailsItem,

    -- * TestIamPermissionsRequest
    TestIamPermissionsRequest (..),
    newTestIamPermissionsRequest,

    -- * TestIamPermissionsResponse
    TestIamPermissionsResponse (..),
    newTestIamPermissionsResponse,

    -- * UnbindDeviceFromGatewayRequest
    UnbindDeviceFromGatewayRequest (..),
    newUnbindDeviceFromGatewayRequest,

    -- * UnbindDeviceFromGatewayResponse
    UnbindDeviceFromGatewayResponse (..),
    newUnbindDeviceFromGatewayResponse,

    -- * X509CertificateDetails
    X509CertificateDetails (..),
    newX509CertificateDetails,
  ) where

import qualified Gogol.Prelude as Core
import Gogol.CloudIOT.Internal.Sum

-- | Request for @BindDeviceToGateway@.
--
-- /See:/ 'newBindDeviceToGatewayRequest' smart constructor.
data BindDeviceToGatewayRequest = BindDeviceToGatewayRequest
    {
      -- | Required. The device to associate with the specified gateway. The value of @device_id@ can be either the device numeric ID or the user-defined device identifier.
      deviceId :: (Core.Maybe Core.Text)
      -- | Required. The value of @gateway_id@ can be either the device numeric ID or the user-defined device identifier.
    , gatewayId :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BindDeviceToGatewayRequest' with the minimum fields required to make a request.
newBindDeviceToGatewayRequest 
    ::  BindDeviceToGatewayRequest
newBindDeviceToGatewayRequest =
  BindDeviceToGatewayRequest {deviceId = Core.Nothing, gatewayId = Core.Nothing}

instance Core.FromJSON BindDeviceToGatewayRequest
         where
        parseJSON
          = Core.withObject "BindDeviceToGatewayRequest"
              (\ o ->
                 BindDeviceToGatewayRequest Core.<$>
                   (o Core..:? "deviceId") Core.<*>
                     (o Core..:? "gatewayId"))

instance Core.ToJSON BindDeviceToGatewayRequest where
        toJSON BindDeviceToGatewayRequest{..}
          = Core.object
              (Core.catMaybes
                 [("deviceId" Core..=) Core.<$> deviceId,
                  ("gatewayId" Core..=) Core.<$> gatewayId])


-- | Response for @BindDeviceToGateway@.
--
-- /See:/ 'newBindDeviceToGatewayResponse' smart constructor.
data BindDeviceToGatewayResponse = BindDeviceToGatewayResponse
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BindDeviceToGatewayResponse' with the minimum fields required to make a request.
newBindDeviceToGatewayResponse 
    ::  BindDeviceToGatewayResponse
newBindDeviceToGatewayResponse = BindDeviceToGatewayResponse

instance Core.FromJSON BindDeviceToGatewayResponse
         where
        parseJSON
          = Core.withObject "BindDeviceToGatewayResponse"
              (\ o -> Core.pure BindDeviceToGatewayResponse)

instance Core.ToJSON BindDeviceToGatewayResponse
         where
        toJSON = Core.const Core.emptyObject


-- | Associates @members@, or principals, with a @role@.
--
-- /See:/ 'newBinding' smart constructor.
data Binding = Binding
    {
      -- | The condition that is associated with this binding. If the condition evaluates to @true@, then this binding applies to the current request. If the condition evaluates to @false@, then this binding does not apply to the current request. However, a different role binding might grant the same role to one or more of the principals in this binding. To learn which resources support conditions in their IAM policies, see the <https://cloud.google.com/iam/help/conditions/resource-policies IAM documentation>.
      condition :: (Core.Maybe Expr)
      -- | Specifies the principals requesting access for a Google Cloud resource. @members@ can have the following values: * @allUsers@: A special identifier that represents anyone who is on the internet; with or without a Google account. * @allAuthenticatedUsers@: A special identifier that represents anyone who is authenticated with a Google account or a service account. Does not include identities that come from external identity providers (IdPs) through identity federation. * @user:{emailid}@: An email address that represents a specific Google account. For example, @alice\@example.com@ . * @serviceAccount:{emailid}@: An email address that represents a Google service account. For example, @my-other-app\@appspot.gserviceaccount.com@. * @serviceAccount:{projectid}.svc.id.goog[{namespace}\/{kubernetes-sa}]@: An identifier for a <https://cloud.google.com/kubernetes-engine/docs/how-to/kubernetes-service-accounts Kubernetes service account>. For example, @my-project.svc.id.goog[my-namespace\/my-kubernetes-sa]@. *
      -- @group:{emailid}@: An email address that represents a Google group. For example, @admins\@example.com@. * @domain:{domain}@: The G Suite domain (primary) that represents all the users of that domain. For example, @google.com@ or @example.com@. * @deleted:user:{emailid}?uid={uniqueid}@: An email address (plus unique identifier) representing a user that has been recently deleted. For example, @alice\@example.com?uid=123456789012345678901@. If the user is recovered, this value reverts to @user:{emailid}@ and the recovered user retains the role in the binding. * @deleted:serviceAccount:{emailid}?uid={uniqueid}@: An email address (plus unique identifier) representing a service account that has been recently deleted. For example, @my-other-app\@appspot.gserviceaccount.com?uid=123456789012345678901@. If the service account is undeleted, this value reverts to @serviceAccount:{emailid}@ and the undeleted service account retains the role in the binding. * @deleted:group:{emailid}?uid={uniqueid}@: An email address (plus
      -- unique identifier) representing a Google group that has been recently deleted. For example, @admins\@example.com?uid=123456789012345678901@. If the group is recovered, this value reverts to @group:{emailid}@ and the recovered group retains the role in the binding.
    , members :: (Core.Maybe [Core.Text])
      -- | Role that is assigned to the list of @members@, or principals. For example, @roles\/viewer@, @roles\/editor@, or @roles\/owner@.
    , role' :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Binding' with the minimum fields required to make a request.
newBinding 
    ::  Binding
newBinding =
  Binding
    {condition = Core.Nothing, members = Core.Nothing, role' = Core.Nothing}

instance Core.FromJSON Binding where
        parseJSON
          = Core.withObject "Binding"
              (\ o ->
                 Binding Core.<$>
                   (o Core..:? "condition") Core.<*>
                     (o Core..:? "members")
                     Core.<*> (o Core..:? "role"))

instance Core.ToJSON Binding where
        toJSON Binding{..}
          = Core.object
              (Core.catMaybes
                 [("condition" Core..=) Core.<$> condition,
                  ("members" Core..=) Core.<$> members,
                  ("role" Core..=) Core.<$> role'])


-- | The device resource.
--
-- /See:/ 'newDevice' smart constructor.
data Device = Device
    {
      -- | If a device is blocked, connections or requests from this device will fail. Can be used to temporarily prevent the device from connecting if, for example, the sensor is generating bad data and needs maintenance.
      blocked :: (Core.Maybe Core.Bool)
      -- | The most recent device configuration, which is eventually sent from Cloud IoT Core to the device. If not present on creation, the configuration will be initialized with an empty payload and version value of @1@. To update this field after creation, use the @DeviceManager.ModifyCloudToDeviceConfig@ method.
    , config :: (Core.Maybe DeviceConfig)
      -- | The credentials used to authenticate this device. To allow credential rotation without interruption, multiple device credentials can be bound to this device. No more than 3 credentials can be bound to a single device at a time. When new credentials are added to a device, they are verified against the registry credentials. For details, see the description of the @DeviceRegistry.credentials@ field.
    , credentials :: (Core.Maybe [DeviceCredential])
      -- | Gateway-related configuration and state.
    , gatewayConfig :: (Core.Maybe GatewayConfig)
      -- | The user-defined device identifier. The device ID must be unique within a device registry.
    , id :: (Core.Maybe Core.Text)
      -- | [Output only] The last time a cloud-to-device config version acknowledgment was received from the device. This field is only for configurations sent through MQTT.
    , lastConfigAckTime :: (Core.Maybe Core.DateTime)
      -- | [Output only] The last time a cloud-to-device config version was sent to the device.
    , lastConfigSendTime :: (Core.Maybe Core.DateTime)
      -- | [Output only] The error message of the most recent error, such as a failure to publish to Cloud Pub\/Sub. \'last/error/time\' is the timestamp of this field. If no errors have occurred, this field has an empty message and the status code 0 == OK. Otherwise, this field is expected to have a status code other than OK.
    , lastErrorStatus :: (Core.Maybe Status)
      -- | [Output only] The time the most recent error occurred, such as a failure to publish to Cloud Pub\/Sub. This field is the timestamp of \'last/error/status\'.
    , lastErrorTime :: (Core.Maybe Core.DateTime)
      -- | [Output only] The last time a telemetry event was received. Timestamps are periodically collected and written to storage; they may be stale by a few minutes.
    , lastEventTime :: (Core.Maybe Core.DateTime)
      -- | [Output only] The last time an MQTT @PINGREQ@ was received. This field applies only to devices connecting through MQTT. MQTT clients usually only send @PINGREQ@ messages if the connection is idle, and no other messages have been sent. Timestamps are periodically collected and written to storage; they may be stale by a few minutes.
    , lastHeartbeatTime :: (Core.Maybe Core.DateTime)
      -- | [Output only] The last time a state event was received. Timestamps are periodically collected and written to storage; they may be stale by a few minutes.
    , lastStateTime :: (Core.Maybe Core.DateTime)
      -- | __Beta Feature__ The logging verbosity for device activity. If unspecified, DeviceRegistry.log_level will be used.
    , logLevel :: (Core.Maybe Device_LogLevel)
      -- | The metadata key-value pairs assigned to the device. This metadata is not interpreted or indexed by Cloud IoT Core. It can be used to add contextual information for the device. Keys must conform to the regular expression a-zA-Z+ and be less than 128 bytes in length. Values are free-form strings. Each value must be less than or equal to 32 KB in size. The total size of all keys and values must be less than 256 KB, and the maximum number of key-value pairs is 500.
    , metadata :: (Core.Maybe Device_Metadata)
      -- | The resource path name. For example, @projects\/p1\/locations\/us-central1\/registries\/registry0\/devices\/dev0@ or @projects\/p1\/locations\/us-central1\/registries\/registry0\/devices\/{num_id}@. When @name@ is populated as a response from the service, it always ends in the device numeric ID.
    , name :: (Core.Maybe Core.Text)
      -- | [Output only] A server-defined unique numeric ID for the device. This is a more compact way to identify devices, and it is globally unique.
    , numId :: (Core.Maybe Core.Word64)
      -- | [Output only] The state most recently received from the device. If no state has been reported, this field is not present.
    , state :: (Core.Maybe DeviceState)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Device' with the minimum fields required to make a request.
newDevice 
    ::  Device
newDevice =
  Device
    { blocked = Core.Nothing
    , config = Core.Nothing
    , credentials = Core.Nothing
    , gatewayConfig = Core.Nothing
    , id = Core.Nothing
    , lastConfigAckTime = Core.Nothing
    , lastConfigSendTime = Core.Nothing
    , lastErrorStatus = Core.Nothing
    , lastErrorTime = Core.Nothing
    , lastEventTime = Core.Nothing
    , lastHeartbeatTime = Core.Nothing
    , lastStateTime = Core.Nothing
    , logLevel = Core.Nothing
    , metadata = Core.Nothing
    , name = Core.Nothing
    , numId = Core.Nothing
    , state = Core.Nothing
    }

instance Core.FromJSON Device where
        parseJSON
          = Core.withObject "Device"
              (\ o ->
                 Device Core.<$>
                   (o Core..:? "blocked") Core.<*> (o Core..:? "config")
                     Core.<*> (o Core..:? "credentials")
                     Core.<*> (o Core..:? "gatewayConfig")
                     Core.<*> (o Core..:? "id")
                     Core.<*> (o Core..:? "lastConfigAckTime")
                     Core.<*> (o Core..:? "lastConfigSendTime")
                     Core.<*> (o Core..:? "lastErrorStatus")
                     Core.<*> (o Core..:? "lastErrorTime")
                     Core.<*> (o Core..:? "lastEventTime")
                     Core.<*> (o Core..:? "lastHeartbeatTime")
                     Core.<*> (o Core..:? "lastStateTime")
                     Core.<*> (o Core..:? "logLevel")
                     Core.<*> (o Core..:? "metadata")
                     Core.<*> (o Core..:? "name")
                     Core.<*>
                     (o Core..:? "numId" Core.<&>
                        Core.fmap Core.fromAsText)
                     Core.<*> (o Core..:? "state"))

instance Core.ToJSON Device where
        toJSON Device{..}
          = Core.object
              (Core.catMaybes
                 [("blocked" Core..=) Core.<$> blocked,
                  ("config" Core..=) Core.<$> config,
                  ("credentials" Core..=) Core.<$> credentials,
                  ("gatewayConfig" Core..=) Core.<$> gatewayConfig,
                  ("id" Core..=) Core.<$> id,
                  ("lastConfigAckTime" Core..=) Core.<$>
                    lastConfigAckTime,
                  ("lastConfigSendTime" Core..=) Core.<$>
                    lastConfigSendTime,
                  ("lastErrorStatus" Core..=) Core.<$> lastErrorStatus,
                  ("lastErrorTime" Core..=) Core.<$> lastErrorTime,
                  ("lastEventTime" Core..=) Core.<$> lastEventTime,
                  ("lastHeartbeatTime" Core..=) Core.<$>
                    lastHeartbeatTime,
                  ("lastStateTime" Core..=) Core.<$> lastStateTime,
                  ("logLevel" Core..=) Core.<$> logLevel,
                  ("metadata" Core..=) Core.<$> metadata,
                  ("name" Core..=) Core.<$> name,
                  ("numId" Core..=) Core.. Core.AsText Core.<$> numId,
                  ("state" Core..=) Core.<$> state])


-- | The metadata key-value pairs assigned to the device. This metadata is not interpreted or indexed by Cloud IoT Core. It can be used to add contextual information for the device. Keys must conform to the regular expression a-zA-Z+ and be less than 128 bytes in length. Values are free-form strings. Each value must be less than or equal to 32 KB in size. The total size of all keys and values must be less than 256 KB, and the maximum number of key-value pairs is 500.
--
-- /See:/ 'newDevice_Metadata' smart constructor.
newtype Device_Metadata = Device_Metadata
    {
      -- | 
      additional :: (Core.HashMap Core.Text Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Device_Metadata' with the minimum fields required to make a request.
newDevice_Metadata 
    ::  Core.HashMap Core.Text Core.Text
       -- ^  See 'additional'.
    -> Device_Metadata
newDevice_Metadata additional = Device_Metadata {additional = additional}

instance Core.FromJSON Device_Metadata where
        parseJSON
          = Core.withObject "Device_Metadata"
              (\ o ->
                 Device_Metadata Core.<$> (Core.parseJSONObject o))

instance Core.ToJSON Device_Metadata where
        toJSON Device_Metadata{..} = Core.toJSON additional


-- | The device configuration. Eventually delivered to devices.
--
-- /See:/ 'newDeviceConfig' smart constructor.
data DeviceConfig = DeviceConfig
    {
      -- | The device configuration data.
      binaryData :: (Core.Maybe Core.Base64)
      -- | [Output only] The time at which this configuration version was updated in Cloud IoT Core. This timestamp is set by the server.
    , cloudUpdateTime :: (Core.Maybe Core.DateTime)
      -- | [Output only] The time at which Cloud IoT Core received the acknowledgment from the device, indicating that the device has received this configuration version. If this field is not present, the device has not yet acknowledged that it received this version. Note that when the config was sent to the device, many config versions may have been available in Cloud IoT Core while the device was disconnected, and on connection, only the latest version is sent to the device. Some versions may never be sent to the device, and therefore are never acknowledged. This timestamp is set by Cloud IoT Core.
    , deviceAckTime :: (Core.Maybe Core.DateTime)
      -- | [Output only] The version of this update. The version number is assigned by the server, and is always greater than 0 after device creation. The version must be 0 on the @CreateDevice@ request if a @config@ is specified; the response of @CreateDevice@ will always have a value of 1.
    , version :: (Core.Maybe Core.Int64)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DeviceConfig' with the minimum fields required to make a request.
newDeviceConfig 
    ::  DeviceConfig
newDeviceConfig =
  DeviceConfig
    { binaryData = Core.Nothing
    , cloudUpdateTime = Core.Nothing
    , deviceAckTime = Core.Nothing
    , version = Core.Nothing
    }

instance Core.FromJSON DeviceConfig where
        parseJSON
          = Core.withObject "DeviceConfig"
              (\ o ->
                 DeviceConfig Core.<$>
                   (o Core..:? "binaryData") Core.<*>
                     (o Core..:? "cloudUpdateTime")
                     Core.<*> (o Core..:? "deviceAckTime")
                     Core.<*>
                     (o Core..:? "version" Core.<&>
                        Core.fmap Core.fromAsText))

instance Core.ToJSON DeviceConfig where
        toJSON DeviceConfig{..}
          = Core.object
              (Core.catMaybes
                 [("binaryData" Core..=) Core.<$> binaryData,
                  ("cloudUpdateTime" Core..=) Core.<$> cloudUpdateTime,
                  ("deviceAckTime" Core..=) Core.<$> deviceAckTime,
                  ("version" Core..=) Core.. Core.AsText Core.<$>
                    version])


-- | A server-stored device credential used for authentication.
--
-- /See:/ 'newDeviceCredential' smart constructor.
data DeviceCredential = DeviceCredential
    {
      -- | [Optional] The time at which this credential becomes invalid. This credential will be ignored for new client authentication requests after this timestamp; however, it will not be automatically deleted.
      expirationTime :: (Core.Maybe Core.DateTime)
      -- | A public key used to verify the signature of JSON Web Tokens (JWTs). When adding a new device credential, either via device creation or via modifications, this public key credential may be required to be signed by one of the registry level certificates. More specifically, if the registry contains at least one certificate, any new device credential must be signed by one of the registry certificates. As a result, when the registry contains certificates, only X.509 certificates are accepted as device credentials. However, if the registry does not contain a certificate, self-signed certificates and public keys will be accepted. New device credentials must be different from every registry-level certificate.
    , publicKey :: (Core.Maybe PublicKeyCredential)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DeviceCredential' with the minimum fields required to make a request.
newDeviceCredential 
    ::  DeviceCredential
newDeviceCredential =
  DeviceCredential {expirationTime = Core.Nothing, publicKey = Core.Nothing}

instance Core.FromJSON DeviceCredential where
        parseJSON
          = Core.withObject "DeviceCredential"
              (\ o ->
                 DeviceCredential Core.<$>
                   (o Core..:? "expirationTime") Core.<*>
                     (o Core..:? "publicKey"))

instance Core.ToJSON DeviceCredential where
        toJSON DeviceCredential{..}
          = Core.object
              (Core.catMaybes
                 [("expirationTime" Core..=) Core.<$> expirationTime,
                  ("publicKey" Core..=) Core.<$> publicKey])


-- | A container for a group of devices.
--
-- /See:/ 'newDeviceRegistry' smart constructor.
data DeviceRegistry = DeviceRegistry
    {
      -- | The credentials used to verify the device credentials. No more than 10 credentials can be bound to a single registry at a time. The verification process occurs at the time of device creation or update. If this field is empty, no verification is performed. Otherwise, the credentials of a newly created device or added credentials of an updated device should be signed with one of these registry credentials. Note, however, that existing devices will never be affected by modifications to this list of credentials: after a device has been successfully created in a registry, it should be able to connect even if its registry credentials are revoked, deleted, or modified.
      credentials :: (Core.Maybe [RegistryCredential])
      -- | The configuration for notification of telemetry events received from the device. All telemetry events that were successfully published by the device and acknowledged by Cloud IoT Core are guaranteed to be delivered to Cloud Pub\/Sub. If multiple configurations match a message, only the first matching configuration is used. If you try to publish a device telemetry event using MQTT without specifying a Cloud Pub\/Sub topic for the device\'s registry, the connection closes automatically. If you try to do so using an HTTP connection, an error is returned. Up to 10 configurations may be provided.
    , eventNotificationConfigs :: (Core.Maybe [EventNotificationConfig])
      -- | The DeviceService (HTTP) configuration for this device registry.
    , httpConfig :: (Core.Maybe HttpConfig)
      -- | The identifier of this device registry. For example, @myRegistry@.
    , id :: (Core.Maybe Core.Text)
      -- | __Beta Feature__ The default logging verbosity for activity from devices in this registry. The verbosity level can be overridden by Device.log_level.
    , logLevel :: (Core.Maybe DeviceRegistry_LogLevel)
      -- | The MQTT configuration for this device registry.
    , mqttConfig :: (Core.Maybe MqttConfig)
      -- | The resource path name. For example, @projects\/example-project\/locations\/us-central1\/registries\/my-registry@.
    , name :: (Core.Maybe Core.Text)
      -- | The configuration for notification of new states received from the device. State updates are guaranteed to be stored in the state history, but notifications to Cloud Pub\/Sub are not guaranteed. For example, if permissions are misconfigured or the specified topic doesn\'t exist, no notification will be published but the state will still be stored in Cloud IoT Core.
    , stateNotificationConfig :: (Core.Maybe StateNotificationConfig)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DeviceRegistry' with the minimum fields required to make a request.
newDeviceRegistry 
    ::  DeviceRegistry
newDeviceRegistry =
  DeviceRegistry
    { credentials = Core.Nothing
    , eventNotificationConfigs = Core.Nothing
    , httpConfig = Core.Nothing
    , id = Core.Nothing
    , logLevel = Core.Nothing
    , mqttConfig = Core.Nothing
    , name = Core.Nothing
    , stateNotificationConfig = Core.Nothing
    }

instance Core.FromJSON DeviceRegistry where
        parseJSON
          = Core.withObject "DeviceRegistry"
              (\ o ->
                 DeviceRegistry Core.<$>
                   (o Core..:? "credentials") Core.<*>
                     (o Core..:? "eventNotificationConfigs")
                     Core.<*> (o Core..:? "httpConfig")
                     Core.<*> (o Core..:? "id")
                     Core.<*> (o Core..:? "logLevel")
                     Core.<*> (o Core..:? "mqttConfig")
                     Core.<*> (o Core..:? "name")
                     Core.<*> (o Core..:? "stateNotificationConfig"))

instance Core.ToJSON DeviceRegistry where
        toJSON DeviceRegistry{..}
          = Core.object
              (Core.catMaybes
                 [("credentials" Core..=) Core.<$> credentials,
                  ("eventNotificationConfigs" Core..=) Core.<$>
                    eventNotificationConfigs,
                  ("httpConfig" Core..=) Core.<$> httpConfig,
                  ("id" Core..=) Core.<$> id,
                  ("logLevel" Core..=) Core.<$> logLevel,
                  ("mqttConfig" Core..=) Core.<$> mqttConfig,
                  ("name" Core..=) Core.<$> name,
                  ("stateNotificationConfig" Core..=) Core.<$>
                    stateNotificationConfig])


-- | The device state, as reported by the device.
--
-- /See:/ 'newDeviceState' smart constructor.
data DeviceState = DeviceState
    {
      -- | The device state data.
      binaryData :: (Core.Maybe Core.Base64)
      -- | [Output only] The time at which this state version was updated in Cloud IoT Core.
    , updateTime :: (Core.Maybe Core.DateTime)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DeviceState' with the minimum fields required to make a request.
newDeviceState 
    ::  DeviceState
newDeviceState =
  DeviceState {binaryData = Core.Nothing, updateTime = Core.Nothing}

instance Core.FromJSON DeviceState where
        parseJSON
          = Core.withObject "DeviceState"
              (\ o ->
                 DeviceState Core.<$>
                   (o Core..:? "binaryData") Core.<*>
                     (o Core..:? "updateTime"))

instance Core.ToJSON DeviceState where
        toJSON DeviceState{..}
          = Core.object
              (Core.catMaybes
                 [("binaryData" Core..=) Core.<$> binaryData,
                  ("updateTime" Core..=) Core.<$> updateTime])


-- | A generic empty message that you can re-use to avoid defining duplicated empty messages in your APIs. A typical example is to use it as the request or the response type of an API method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns (google.protobuf.Empty); }
--
-- /See:/ 'newEmpty' smart constructor.
data Empty = Empty
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Empty' with the minimum fields required to make a request.
newEmpty 
    ::  Empty
newEmpty = Empty

instance Core.FromJSON Empty where
        parseJSON
          = Core.withObject "Empty" (\ o -> Core.pure Empty)

instance Core.ToJSON Empty where
        toJSON = Core.const Core.emptyObject


-- | The configuration for forwarding telemetry events.
--
-- /See:/ 'newEventNotificationConfig' smart constructor.
data EventNotificationConfig = EventNotificationConfig
    {
      -- | A Cloud Pub\/Sub topic name. For example, @projects\/myProject\/topics\/deviceEvents@.
      pubsubTopicName :: (Core.Maybe Core.Text)
      -- | If the subfolder name matches this string exactly, this configuration will be used. The string must not include the leading \'\/\' character. If empty, all strings are matched. This field is used only for telemetry events; subfolders are not supported for state changes.
    , subfolderMatches :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'EventNotificationConfig' with the minimum fields required to make a request.
newEventNotificationConfig 
    ::  EventNotificationConfig
newEventNotificationConfig =
  EventNotificationConfig
    {pubsubTopicName = Core.Nothing, subfolderMatches = Core.Nothing}

instance Core.FromJSON EventNotificationConfig where
        parseJSON
          = Core.withObject "EventNotificationConfig"
              (\ o ->
                 EventNotificationConfig Core.<$>
                   (o Core..:? "pubsubTopicName") Core.<*>
                     (o Core..:? "subfolderMatches"))

instance Core.ToJSON EventNotificationConfig where
        toJSON EventNotificationConfig{..}
          = Core.object
              (Core.catMaybes
                 [("pubsubTopicName" Core..=) Core.<$>
                    pubsubTopicName,
                  ("subfolderMatches" Core..=) Core.<$>
                    subfolderMatches])


-- | Represents a textual expression in the Common Expression Language (CEL) syntax. CEL is a C-like expression language. The syntax and semantics of CEL are documented at https:\/\/github.com\/google\/cel-spec. Example (Comparison): title: \"Summary size limit\" description: \"Determines if a summary is less than 100 chars\" expression: \"document.summary.size() \< 100\" Example (Equality): title: \"Requestor is owner\" description: \"Determines if requestor is the document owner\" expression: \"document.owner == request.auth.claims.email\" Example (Logic): title: \"Public documents\" description: \"Determine whether the document should be publicly visible\" expression: \"document.type != \'private\' && document.type != \'internal\'\" Example (Data Manipulation): title: \"Notification string\" description: \"Create a notification string with a timestamp.\" expression: \"\'New message received at \' + string(document.create_time)\" The exact variables and functions that may be referenced within an expression are
-- determined by the service that evaluates it. See the service documentation for additional information.
--
-- /See:/ 'newExpr' smart constructor.
data Expr = Expr
    {
      -- | Optional. Description of the expression. This is a longer text which describes the expression, e.g. when hovered over it in a UI.
      description :: (Core.Maybe Core.Text)
      -- | Textual representation of an expression in Common Expression Language syntax.
    , expression :: (Core.Maybe Core.Text)
      -- | Optional. String indicating the location of the expression for error reporting, e.g. a file name and a position in the file.
    , location :: (Core.Maybe Core.Text)
      -- | Optional. Title for the expression, i.e. a short string describing its purpose. This can be used e.g. in UIs which allow to enter the expression.
    , title :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Expr' with the minimum fields required to make a request.
newExpr 
    ::  Expr
newExpr =
  Expr
    { description = Core.Nothing
    , expression = Core.Nothing
    , location = Core.Nothing
    , title = Core.Nothing
    }

instance Core.FromJSON Expr where
        parseJSON
          = Core.withObject "Expr"
              (\ o ->
                 Expr Core.<$>
                   (o Core..:? "description") Core.<*>
                     (o Core..:? "expression")
                     Core.<*> (o Core..:? "location")
                     Core.<*> (o Core..:? "title"))

instance Core.ToJSON Expr where
        toJSON Expr{..}
          = Core.object
              (Core.catMaybes
                 [("description" Core..=) Core.<$> description,
                  ("expression" Core..=) Core.<$> expression,
                  ("location" Core..=) Core.<$> location,
                  ("title" Core..=) Core.<$> title])


-- | Gateway-related configuration and state.
--
-- /See:/ 'newGatewayConfig' smart constructor.
data GatewayConfig = GatewayConfig
    {
      -- | Indicates how to authorize and\/or authenticate devices to access the gateway.
      gatewayAuthMethod :: (Core.Maybe GatewayConfig_GatewayAuthMethod)
      -- | Indicates whether the device is a gateway.
    , gatewayType :: (Core.Maybe GatewayConfig_GatewayType)
      -- | [Output only] The ID of the gateway the device accessed most recently.
    , lastAccessedGatewayId :: (Core.Maybe Core.Text)
      -- | [Output only] The most recent time at which the device accessed the gateway specified in @last_accessed_gateway@.
    , lastAccessedGatewayTime :: (Core.Maybe Core.DateTime)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GatewayConfig' with the minimum fields required to make a request.
newGatewayConfig 
    ::  GatewayConfig
newGatewayConfig =
  GatewayConfig
    { gatewayAuthMethod = Core.Nothing
    , gatewayType = Core.Nothing
    , lastAccessedGatewayId = Core.Nothing
    , lastAccessedGatewayTime = Core.Nothing
    }

instance Core.FromJSON GatewayConfig where
        parseJSON
          = Core.withObject "GatewayConfig"
              (\ o ->
                 GatewayConfig Core.<$>
                   (o Core..:? "gatewayAuthMethod") Core.<*>
                     (o Core..:? "gatewayType")
                     Core.<*> (o Core..:? "lastAccessedGatewayId")
                     Core.<*> (o Core..:? "lastAccessedGatewayTime"))

instance Core.ToJSON GatewayConfig where
        toJSON GatewayConfig{..}
          = Core.object
              (Core.catMaybes
                 [("gatewayAuthMethod" Core..=) Core.<$>
                    gatewayAuthMethod,
                  ("gatewayType" Core..=) Core.<$> gatewayType,
                  ("lastAccessedGatewayId" Core..=) Core.<$>
                    lastAccessedGatewayId,
                  ("lastAccessedGatewayTime" Core..=) Core.<$>
                    lastAccessedGatewayTime])


-- | Request message for @GetIamPolicy@ method.
--
-- /See:/ 'newGetIamPolicyRequest' smart constructor.
newtype GetIamPolicyRequest = GetIamPolicyRequest
    {
      -- | OPTIONAL: A @GetPolicyOptions@ object for specifying options to @GetIamPolicy@.
      options :: (Core.Maybe GetPolicyOptions)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GetIamPolicyRequest' with the minimum fields required to make a request.
newGetIamPolicyRequest 
    ::  GetIamPolicyRequest
newGetIamPolicyRequest = GetIamPolicyRequest {options = Core.Nothing}

instance Core.FromJSON GetIamPolicyRequest where
        parseJSON
          = Core.withObject "GetIamPolicyRequest"
              (\ o ->
                 GetIamPolicyRequest Core.<$> (o Core..:? "options"))

instance Core.ToJSON GetIamPolicyRequest where
        toJSON GetIamPolicyRequest{..}
          = Core.object
              (Core.catMaybes
                 [("options" Core..=) Core.<$> options])


-- | Encapsulates settings provided to GetIamPolicy.
--
-- /See:/ 'newGetPolicyOptions' smart constructor.
newtype GetPolicyOptions = GetPolicyOptions
    {
      -- | Optional. The maximum policy version that will be used to format the policy. Valid values are 0, 1, and 3. Requests specifying an invalid value will be rejected. Requests for policies with any conditional role bindings must specify version 3. Policies with no conditional role bindings may specify any valid value or leave the field unset. The policy in the response might use the policy version that you specified, or it might use a lower policy version. For example, if you specify version 3, but the policy has no conditional role bindings, the response uses version 1. To learn which resources support conditions in their IAM policies, see the <https://cloud.google.com/iam/help/conditions/resource-policies IAM documentation>.
      requestedPolicyVersion :: (Core.Maybe Core.Int32)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GetPolicyOptions' with the minimum fields required to make a request.
newGetPolicyOptions 
    ::  GetPolicyOptions
newGetPolicyOptions = GetPolicyOptions {requestedPolicyVersion = Core.Nothing}

instance Core.FromJSON GetPolicyOptions where
        parseJSON
          = Core.withObject "GetPolicyOptions"
              (\ o ->
                 GetPolicyOptions Core.<$>
                   (o Core..:? "requestedPolicyVersion"))

instance Core.ToJSON GetPolicyOptions where
        toJSON GetPolicyOptions{..}
          = Core.object
              (Core.catMaybes
                 [("requestedPolicyVersion" Core..=) Core.<$>
                    requestedPolicyVersion])


-- | The configuration of the HTTP bridge for a device registry.
--
-- /See:/ 'newHttpConfig' smart constructor.
newtype HttpConfig = HttpConfig
    {
      -- | If enabled, allows devices to use DeviceService via the HTTP protocol. Otherwise, any requests to DeviceService will fail for this registry.
      httpEnabledState :: (Core.Maybe HttpConfig_HttpEnabledState)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'HttpConfig' with the minimum fields required to make a request.
newHttpConfig 
    ::  HttpConfig
newHttpConfig = HttpConfig {httpEnabledState = Core.Nothing}

instance Core.FromJSON HttpConfig where
        parseJSON
          = Core.withObject "HttpConfig"
              (\ o ->
                 HttpConfig Core.<$> (o Core..:? "httpEnabledState"))

instance Core.ToJSON HttpConfig where
        toJSON HttpConfig{..}
          = Core.object
              (Core.catMaybes
                 [("httpEnabledState" Core..=) Core.<$>
                    httpEnabledState])


-- | Response for @ListDeviceConfigVersions@.
--
-- /See:/ 'newListDeviceConfigVersionsResponse' smart constructor.
newtype ListDeviceConfigVersionsResponse = ListDeviceConfigVersionsResponse
    {
      -- | The device configuration for the last few versions. Versions are listed in decreasing order, starting from the most recent one.
      deviceConfigs :: (Core.Maybe [DeviceConfig])
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListDeviceConfigVersionsResponse' with the minimum fields required to make a request.
newListDeviceConfigVersionsResponse 
    ::  ListDeviceConfigVersionsResponse
newListDeviceConfigVersionsResponse =
  ListDeviceConfigVersionsResponse {deviceConfigs = Core.Nothing}

instance Core.FromJSON
           ListDeviceConfigVersionsResponse
         where
        parseJSON
          = Core.withObject "ListDeviceConfigVersionsResponse"
              (\ o ->
                 ListDeviceConfigVersionsResponse Core.<$>
                   (o Core..:? "deviceConfigs"))

instance Core.ToJSON ListDeviceConfigVersionsResponse
         where
        toJSON ListDeviceConfigVersionsResponse{..}
          = Core.object
              (Core.catMaybes
                 [("deviceConfigs" Core..=) Core.<$> deviceConfigs])


-- | Response for @ListDeviceRegistries@.
--
-- /See:/ 'newListDeviceRegistriesResponse' smart constructor.
data ListDeviceRegistriesResponse = ListDeviceRegistriesResponse
    {
      -- | The registries that matched the query.
      deviceRegistries :: (Core.Maybe [DeviceRegistry])
      -- | If not empty, indicates that there may be more registries that match the request; this value should be passed in a new @ListDeviceRegistriesRequest@.
    , nextPageToken :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListDeviceRegistriesResponse' with the minimum fields required to make a request.
newListDeviceRegistriesResponse 
    ::  ListDeviceRegistriesResponse
newListDeviceRegistriesResponse =
  ListDeviceRegistriesResponse
    {deviceRegistries = Core.Nothing, nextPageToken = Core.Nothing}

instance Core.FromJSON ListDeviceRegistriesResponse
         where
        parseJSON
          = Core.withObject "ListDeviceRegistriesResponse"
              (\ o ->
                 ListDeviceRegistriesResponse Core.<$>
                   (o Core..:? "deviceRegistries") Core.<*>
                     (o Core..:? "nextPageToken"))

instance Core.ToJSON ListDeviceRegistriesResponse
         where
        toJSON ListDeviceRegistriesResponse{..}
          = Core.object
              (Core.catMaybes
                 [("deviceRegistries" Core..=) Core.<$>
                    deviceRegistries,
                  ("nextPageToken" Core..=) Core.<$> nextPageToken])


-- | Response for @ListDeviceStates@.
--
-- /See:/ 'newListDeviceStatesResponse' smart constructor.
newtype ListDeviceStatesResponse = ListDeviceStatesResponse
    {
      -- | The last few device states. States are listed in descending order of server update time, starting from the most recent one.
      deviceStates :: (Core.Maybe [DeviceState])
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListDeviceStatesResponse' with the minimum fields required to make a request.
newListDeviceStatesResponse 
    ::  ListDeviceStatesResponse
newListDeviceStatesResponse =
  ListDeviceStatesResponse {deviceStates = Core.Nothing}

instance Core.FromJSON ListDeviceStatesResponse where
        parseJSON
          = Core.withObject "ListDeviceStatesResponse"
              (\ o ->
                 ListDeviceStatesResponse Core.<$>
                   (o Core..:? "deviceStates"))

instance Core.ToJSON ListDeviceStatesResponse where
        toJSON ListDeviceStatesResponse{..}
          = Core.object
              (Core.catMaybes
                 [("deviceStates" Core..=) Core.<$> deviceStates])


-- | Response for @ListDevices@.
--
-- /See:/ 'newListDevicesResponse' smart constructor.
data ListDevicesResponse = ListDevicesResponse
    {
      -- | The devices that match the request.
      devices :: (Core.Maybe [Device])
      -- | If not empty, indicates that there may be more devices that match the request; this value should be passed in a new @ListDevicesRequest@.
    , nextPageToken :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListDevicesResponse' with the minimum fields required to make a request.
newListDevicesResponse 
    ::  ListDevicesResponse
newListDevicesResponse =
  ListDevicesResponse {devices = Core.Nothing, nextPageToken = Core.Nothing}

instance Core.FromJSON ListDevicesResponse where
        parseJSON
          = Core.withObject "ListDevicesResponse"
              (\ o ->
                 ListDevicesResponse Core.<$>
                   (o Core..:? "devices") Core.<*>
                     (o Core..:? "nextPageToken"))

instance Core.ToJSON ListDevicesResponse where
        toJSON ListDevicesResponse{..}
          = Core.object
              (Core.catMaybes
                 [("devices" Core..=) Core.<$> devices,
                  ("nextPageToken" Core..=) Core.<$> nextPageToken])


-- | Request for @ModifyCloudToDeviceConfig@.
--
-- /See:/ 'newModifyCloudToDeviceConfigRequest' smart constructor.
data ModifyCloudToDeviceConfigRequest = ModifyCloudToDeviceConfigRequest
    {
      -- | Required. The configuration data for the device.
      binaryData :: (Core.Maybe Core.Base64)
      -- | The version number to update. If this value is zero, it will not check the version number of the server and will always update the current version; otherwise, this update will fail if the version number found on the server does not match this version number. This is used to support multiple simultaneous updates without losing data.
    , versionToUpdate :: (Core.Maybe Core.Int64)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ModifyCloudToDeviceConfigRequest' with the minimum fields required to make a request.
newModifyCloudToDeviceConfigRequest 
    ::  ModifyCloudToDeviceConfigRequest
newModifyCloudToDeviceConfigRequest =
  ModifyCloudToDeviceConfigRequest
    {binaryData = Core.Nothing, versionToUpdate = Core.Nothing}

instance Core.FromJSON
           ModifyCloudToDeviceConfigRequest
         where
        parseJSON
          = Core.withObject "ModifyCloudToDeviceConfigRequest"
              (\ o ->
                 ModifyCloudToDeviceConfigRequest Core.<$>
                   (o Core..:? "binaryData") Core.<*>
                     (o Core..:? "versionToUpdate" Core.<&>
                        Core.fmap Core.fromAsText))

instance Core.ToJSON ModifyCloudToDeviceConfigRequest
         where
        toJSON ModifyCloudToDeviceConfigRequest{..}
          = Core.object
              (Core.catMaybes
                 [("binaryData" Core..=) Core.<$> binaryData,
                  ("versionToUpdate" Core..=) Core.. Core.AsText
                    Core.<$> versionToUpdate])


-- | The configuration of MQTT for a device registry.
--
-- /See:/ 'newMqttConfig' smart constructor.
newtype MqttConfig = MqttConfig
    {
      -- | If enabled, allows connections using the MQTT protocol. Otherwise, MQTT connections to this registry will fail.
      mqttEnabledState :: (Core.Maybe MqttConfig_MqttEnabledState)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'MqttConfig' with the minimum fields required to make a request.
newMqttConfig 
    ::  MqttConfig
newMqttConfig = MqttConfig {mqttEnabledState = Core.Nothing}

instance Core.FromJSON MqttConfig where
        parseJSON
          = Core.withObject "MqttConfig"
              (\ o ->
                 MqttConfig Core.<$> (o Core..:? "mqttEnabledState"))

instance Core.ToJSON MqttConfig where
        toJSON MqttConfig{..}
          = Core.object
              (Core.catMaybes
                 [("mqttEnabledState" Core..=) Core.<$>
                    mqttEnabledState])


-- | An Identity and Access Management (IAM) policy, which specifies access controls for Google Cloud resources. A @Policy@ is a collection of @bindings@. A @binding@ binds one or more @members@, or principals, to a single @role@. Principals can be user accounts, service accounts, Google groups, and domains (such as G Suite). A @role@ is a named list of permissions; each @role@ can be an IAM predefined role or a user-created custom role. For some types of Google Cloud resources, a @binding@ can also specify a @condition@, which is a logical expression that allows access to a resource only if the expression evaluates to @true@. A condition can add constraints based on attributes of the request, the resource, or both. To learn which resources support conditions in their IAM policies, see the <https://cloud.google.com/iam/help/conditions/resource-policies IAM documentation>. __JSON example:__ { \"bindings\": [ { \"role\": \"roles\/resourcemanager.organizationAdmin\", \"members\": [ \"user:mike\@example.com\",
-- \"group:admins\@example.com\", \"domain:google.com\", \"serviceAccount:my-project-id\@appspot.gserviceaccount.com\" ] }, { \"role\": \"roles\/resourcemanager.organizationViewer\", \"members\": [ \"user:eve\@example.com\" ], \"condition\": { \"title\": \"expirable access\", \"description\": \"Does not grant access after Sep 2020\", \"expression\": \"request.time \< timestamp(\'2020-10-01T00:00:00.000Z\')\", } } ], \"etag\": \"BwWWja0YfJA=\", \"version\": 3 } __YAML example:__ bindings: - members: - user:mike\@example.com - group:admins\@example.com - domain:google.com - serviceAccount:my-project-id\@appspot.gserviceaccount.com role: roles\/resourcemanager.organizationAdmin - members: - user:eve\@example.com role: roles\/resourcemanager.organizationViewer condition: title: expirable access description: Does not grant access after Sep 2020 expression: request.time \< timestamp(\'2020-10-01T00:00:00.000Z\') etag: BwWWja0YfJA= version: 3 For a description of IAM and its features, see the
-- <https://cloud.google.com/iam/docs/ IAM documentation>.
--
-- /See:/ 'newPolicy' smart constructor.
data Policy = Policy
    {
      -- | Associates a list of @members@, or principals, with a @role@. Optionally, may specify a @condition@ that determines how and when the @bindings@ are applied. Each of the @bindings@ must contain at least one principal. The @bindings@ in a @Policy@ can refer to up to 1,500 principals; up to 250 of these principals can be Google groups. Each occurrence of a principal counts towards these limits. For example, if the @bindings@ grant 50 different roles to @user:alice\@example.com@, and not to any other principal, then you can add another 1,450 principals to the @bindings@ in the @Policy@.
      bindings :: (Core.Maybe [Binding])
      -- | @etag@ is used for optimistic concurrency control as a way to help prevent simultaneous updates of a policy from overwriting each other. It is strongly suggested that systems make use of the @etag@ in the read-modify-write cycle to perform policy updates in order to avoid race conditions: An @etag@ is returned in the response to @getIamPolicy@, and systems are expected to put that etag in the request to @setIamPolicy@ to ensure that their change will be applied to the same version of the policy. __Important:__ If you use IAM Conditions, you must include the @etag@ field whenever you call @setIamPolicy@. If you omit this field, then IAM allows you to overwrite a version @3@ policy with a version @1@ policy, and all of the conditions in the version @3@ policy are lost.
    , etag :: (Core.Maybe Core.Base64)
      -- | Specifies the format of the policy. Valid values are @0@, @1@, and @3@. Requests that specify an invalid value are rejected. Any operation that affects conditional role bindings must specify version @3@. This requirement applies to the following operations: * Getting a policy that includes a conditional role binding * Adding a conditional role binding to a policy * Changing a conditional role binding in a policy * Removing any role binding, with or without a condition, from a policy that includes conditions __Important:__ If you use IAM Conditions, you must include the @etag@ field whenever you call @setIamPolicy@. If you omit this field, then IAM allows you to overwrite a version @3@ policy with a version @1@ policy, and all of the conditions in the version @3@ policy are lost. If a policy does not include any conditions, operations on that policy may specify any valid version or leave the field unset. To learn which resources support conditions in their IAM policies, see the
      -- <https://cloud.google.com/iam/help/conditions/resource-policies IAM documentation>.
    , version :: (Core.Maybe Core.Int32)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Policy' with the minimum fields required to make a request.
newPolicy 
    ::  Policy
newPolicy =
  Policy {bindings = Core.Nothing, etag = Core.Nothing, version = Core.Nothing}

instance Core.FromJSON Policy where
        parseJSON
          = Core.withObject "Policy"
              (\ o ->
                 Policy Core.<$>
                   (o Core..:? "bindings") Core.<*> (o Core..:? "etag")
                     Core.<*> (o Core..:? "version"))

instance Core.ToJSON Policy where
        toJSON Policy{..}
          = Core.object
              (Core.catMaybes
                 [("bindings" Core..=) Core.<$> bindings,
                  ("etag" Core..=) Core.<$> etag,
                  ("version" Core..=) Core.<$> version])


-- | A public key certificate format and data.
--
-- /See:/ 'newPublicKeyCertificate' smart constructor.
data PublicKeyCertificate = PublicKeyCertificate
    {
      -- | The certificate data.
      certificate :: (Core.Maybe Core.Text)
      -- | The certificate format.
    , format :: (Core.Maybe PublicKeyCertificate_Format)
      -- | [Output only] The certificate details. Used only for X.509 certificates.
    , x509Details :: (Core.Maybe X509CertificateDetails)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PublicKeyCertificate' with the minimum fields required to make a request.
newPublicKeyCertificate 
    ::  PublicKeyCertificate
newPublicKeyCertificate =
  PublicKeyCertificate
    { certificate = Core.Nothing
    , format = Core.Nothing
    , x509Details = Core.Nothing
    }

instance Core.FromJSON PublicKeyCertificate where
        parseJSON
          = Core.withObject "PublicKeyCertificate"
              (\ o ->
                 PublicKeyCertificate Core.<$>
                   (o Core..:? "certificate") Core.<*>
                     (o Core..:? "format")
                     Core.<*> (o Core..:? "x509Details"))

instance Core.ToJSON PublicKeyCertificate where
        toJSON PublicKeyCertificate{..}
          = Core.object
              (Core.catMaybes
                 [("certificate" Core..=) Core.<$> certificate,
                  ("format" Core..=) Core.<$> format,
                  ("x509Details" Core..=) Core.<$> x509Details])


-- | A public key format and data.
--
-- /See:/ 'newPublicKeyCredential' smart constructor.
data PublicKeyCredential = PublicKeyCredential
    {
      -- | The format of the key.
      format :: (Core.Maybe PublicKeyCredential_Format)
      -- | The key data.
    , key :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PublicKeyCredential' with the minimum fields required to make a request.
newPublicKeyCredential 
    ::  PublicKeyCredential
newPublicKeyCredential =
  PublicKeyCredential {format = Core.Nothing, key = Core.Nothing}

instance Core.FromJSON PublicKeyCredential where
        parseJSON
          = Core.withObject "PublicKeyCredential"
              (\ o ->
                 PublicKeyCredential Core.<$>
                   (o Core..:? "format") Core.<*> (o Core..:? "key"))

instance Core.ToJSON PublicKeyCredential where
        toJSON PublicKeyCredential{..}
          = Core.object
              (Core.catMaybes
                 [("format" Core..=) Core.<$> format,
                  ("key" Core..=) Core.<$> key])


-- | A server-stored registry credential used to validate device credentials.
--
-- /See:/ 'newRegistryCredential' smart constructor.
newtype RegistryCredential = RegistryCredential
    {
      -- | A public key certificate used to verify the device credentials.
      publicKeyCertificate :: (Core.Maybe PublicKeyCertificate)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'RegistryCredential' with the minimum fields required to make a request.
newRegistryCredential 
    ::  RegistryCredential
newRegistryCredential = RegistryCredential {publicKeyCertificate = Core.Nothing}

instance Core.FromJSON RegistryCredential where
        parseJSON
          = Core.withObject "RegistryCredential"
              (\ o ->
                 RegistryCredential Core.<$>
                   (o Core..:? "publicKeyCertificate"))

instance Core.ToJSON RegistryCredential where
        toJSON RegistryCredential{..}
          = Core.object
              (Core.catMaybes
                 [("publicKeyCertificate" Core..=) Core.<$>
                    publicKeyCertificate])


-- | Request for @SendCommandToDevice@.
--
-- /See:/ 'newSendCommandToDeviceRequest' smart constructor.
data SendCommandToDeviceRequest = SendCommandToDeviceRequest
    {
      -- | Required. The command data to send to the device.
      binaryData :: (Core.Maybe Core.Base64)
      -- | Optional subfolder for the command. If empty, the command will be delivered to the \/devices\/{device-id}\/commands topic, otherwise it will be delivered to the \/devices\/{device-id}\/commands\/{subfolder} topic. Multi-level subfolders are allowed. This field must not have more than 256 characters, and must not contain any MQTT wildcards (\"+\" or \"#\") or null characters.
    , subfolder :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SendCommandToDeviceRequest' with the minimum fields required to make a request.
newSendCommandToDeviceRequest 
    ::  SendCommandToDeviceRequest
newSendCommandToDeviceRequest =
  SendCommandToDeviceRequest
    {binaryData = Core.Nothing, subfolder = Core.Nothing}

instance Core.FromJSON SendCommandToDeviceRequest
         where
        parseJSON
          = Core.withObject "SendCommandToDeviceRequest"
              (\ o ->
                 SendCommandToDeviceRequest Core.<$>
                   (o Core..:? "binaryData") Core.<*>
                     (o Core..:? "subfolder"))

instance Core.ToJSON SendCommandToDeviceRequest where
        toJSON SendCommandToDeviceRequest{..}
          = Core.object
              (Core.catMaybes
                 [("binaryData" Core..=) Core.<$> binaryData,
                  ("subfolder" Core..=) Core.<$> subfolder])


-- | Response for @SendCommandToDevice@.
--
-- /See:/ 'newSendCommandToDeviceResponse' smart constructor.
data SendCommandToDeviceResponse = SendCommandToDeviceResponse
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SendCommandToDeviceResponse' with the minimum fields required to make a request.
newSendCommandToDeviceResponse 
    ::  SendCommandToDeviceResponse
newSendCommandToDeviceResponse = SendCommandToDeviceResponse

instance Core.FromJSON SendCommandToDeviceResponse
         where
        parseJSON
          = Core.withObject "SendCommandToDeviceResponse"
              (\ o -> Core.pure SendCommandToDeviceResponse)

instance Core.ToJSON SendCommandToDeviceResponse
         where
        toJSON = Core.const Core.emptyObject


-- | Request message for @SetIamPolicy@ method.
--
-- /See:/ 'newSetIamPolicyRequest' smart constructor.
newtype SetIamPolicyRequest = SetIamPolicyRequest
    {
      -- | REQUIRED: The complete policy to be applied to the @resource@. The size of the policy is limited to a few 10s of KB. An empty policy is a valid policy but certain Google Cloud services (such as Projects) might reject them.
      policy :: (Core.Maybe Policy)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SetIamPolicyRequest' with the minimum fields required to make a request.
newSetIamPolicyRequest 
    ::  SetIamPolicyRequest
newSetIamPolicyRequest = SetIamPolicyRequest {policy = Core.Nothing}

instance Core.FromJSON SetIamPolicyRequest where
        parseJSON
          = Core.withObject "SetIamPolicyRequest"
              (\ o ->
                 SetIamPolicyRequest Core.<$> (o Core..:? "policy"))

instance Core.ToJSON SetIamPolicyRequest where
        toJSON SetIamPolicyRequest{..}
          = Core.object
              (Core.catMaybes [("policy" Core..=) Core.<$> policy])


-- | The configuration for notification of new states received from the device.
--
-- /See:/ 'newStateNotificationConfig' smart constructor.
newtype StateNotificationConfig = StateNotificationConfig
    {
      -- | A Cloud Pub\/Sub topic name. For example, @projects\/myProject\/topics\/deviceEvents@.
      pubsubTopicName :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'StateNotificationConfig' with the minimum fields required to make a request.
newStateNotificationConfig 
    ::  StateNotificationConfig
newStateNotificationConfig =
  StateNotificationConfig {pubsubTopicName = Core.Nothing}

instance Core.FromJSON StateNotificationConfig where
        parseJSON
          = Core.withObject "StateNotificationConfig"
              (\ o ->
                 StateNotificationConfig Core.<$>
                   (o Core..:? "pubsubTopicName"))

instance Core.ToJSON StateNotificationConfig where
        toJSON StateNotificationConfig{..}
          = Core.object
              (Core.catMaybes
                 [("pubsubTopicName" Core..=) Core.<$>
                    pubsubTopicName])


-- | The @Status@ type defines a logical error model that is suitable for different programming environments, including REST APIs and RPC APIs. It is used by <https://github.com/grpc gRPC>. Each @Status@ message contains three pieces of data: error code, error message, and error details. You can find out more about this error model and how to work with it in the <https://cloud.google.com/apis/design/errors API Design Guide>.
--
-- /See:/ 'newStatus' smart constructor.
data Status = Status
    {
      -- | The status code, which should be an enum value of google.rpc.Code.
      code :: (Core.Maybe Core.Int32)
      -- | A list of messages that carry the error details. There is a common set of message types for APIs to use.
    , details :: (Core.Maybe [Status_DetailsItem])
      -- | A developer-facing error message, which should be in English. Any user-facing error message should be localized and sent in the google.rpc.Status.details field, or localized by the client.
    , message :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Status' with the minimum fields required to make a request.
newStatus 
    ::  Status
newStatus =
  Status {code = Core.Nothing, details = Core.Nothing, message = Core.Nothing}

instance Core.FromJSON Status where
        parseJSON
          = Core.withObject "Status"
              (\ o ->
                 Status Core.<$>
                   (o Core..:? "code") Core.<*> (o Core..:? "details")
                     Core.<*> (o Core..:? "message"))

instance Core.ToJSON Status where
        toJSON Status{..}
          = Core.object
              (Core.catMaybes
                 [("code" Core..=) Core.<$> code,
                  ("details" Core..=) Core.<$> details,
                  ("message" Core..=) Core.<$> message])


--
-- /See:/ 'newStatus_DetailsItem' smart constructor.
newtype Status_DetailsItem = Status_DetailsItem
    {
      -- | Properties of the object. Contains field \@type with type URL.
      additional :: (Core.HashMap Core.Text Core.Value)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Status_DetailsItem' with the minimum fields required to make a request.
newStatus_DetailsItem 
    ::  Core.HashMap Core.Text Core.Value
       -- ^  Properties of the object. Contains field \@type with type URL. See 'additional'.
    -> Status_DetailsItem
newStatus_DetailsItem additional = Status_DetailsItem {additional = additional}

instance Core.FromJSON Status_DetailsItem where
        parseJSON
          = Core.withObject "Status_DetailsItem"
              (\ o ->
                 Status_DetailsItem Core.<$> (Core.parseJSONObject o))

instance Core.ToJSON Status_DetailsItem where
        toJSON Status_DetailsItem{..}
          = Core.toJSON additional


-- | Request message for @TestIamPermissions@ method.
--
-- /See:/ 'newTestIamPermissionsRequest' smart constructor.
newtype TestIamPermissionsRequest = TestIamPermissionsRequest
    {
      -- | The set of permissions to check for the @resource@. Permissions with wildcards (such as @*@ or @storage.*@) are not allowed. For more information see <https://cloud.google.com/iam/docs/overview#permissions IAM Overview>.
      permissions :: (Core.Maybe [Core.Text])
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TestIamPermissionsRequest' with the minimum fields required to make a request.
newTestIamPermissionsRequest 
    ::  TestIamPermissionsRequest
newTestIamPermissionsRequest =
  TestIamPermissionsRequest {permissions = Core.Nothing}

instance Core.FromJSON TestIamPermissionsRequest
         where
        parseJSON
          = Core.withObject "TestIamPermissionsRequest"
              (\ o ->
                 TestIamPermissionsRequest Core.<$>
                   (o Core..:? "permissions"))

instance Core.ToJSON TestIamPermissionsRequest where
        toJSON TestIamPermissionsRequest{..}
          = Core.object
              (Core.catMaybes
                 [("permissions" Core..=) Core.<$> permissions])


-- | Response message for @TestIamPermissions@ method.
--
-- /See:/ 'newTestIamPermissionsResponse' smart constructor.
newtype TestIamPermissionsResponse = TestIamPermissionsResponse
    {
      -- | A subset of @TestPermissionsRequest.permissions@ that the caller is allowed.
      permissions :: (Core.Maybe [Core.Text])
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TestIamPermissionsResponse' with the minimum fields required to make a request.
newTestIamPermissionsResponse 
    ::  TestIamPermissionsResponse
newTestIamPermissionsResponse =
  TestIamPermissionsResponse {permissions = Core.Nothing}

instance Core.FromJSON TestIamPermissionsResponse
         where
        parseJSON
          = Core.withObject "TestIamPermissionsResponse"
              (\ o ->
                 TestIamPermissionsResponse Core.<$>
                   (o Core..:? "permissions"))

instance Core.ToJSON TestIamPermissionsResponse where
        toJSON TestIamPermissionsResponse{..}
          = Core.object
              (Core.catMaybes
                 [("permissions" Core..=) Core.<$> permissions])


-- | Request for @UnbindDeviceFromGateway@.
--
-- /See:/ 'newUnbindDeviceFromGatewayRequest' smart constructor.
data UnbindDeviceFromGatewayRequest = UnbindDeviceFromGatewayRequest
    {
      -- | Required. The device to disassociate from the specified gateway. The value of @device_id@ can be either the device numeric ID or the user-defined device identifier.
      deviceId :: (Core.Maybe Core.Text)
      -- | Required. The value of @gateway_id@ can be either the device numeric ID or the user-defined device identifier.
    , gatewayId :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'UnbindDeviceFromGatewayRequest' with the minimum fields required to make a request.
newUnbindDeviceFromGatewayRequest 
    ::  UnbindDeviceFromGatewayRequest
newUnbindDeviceFromGatewayRequest =
  UnbindDeviceFromGatewayRequest
    {deviceId = Core.Nothing, gatewayId = Core.Nothing}

instance Core.FromJSON UnbindDeviceFromGatewayRequest
         where
        parseJSON
          = Core.withObject "UnbindDeviceFromGatewayRequest"
              (\ o ->
                 UnbindDeviceFromGatewayRequest Core.<$>
                   (o Core..:? "deviceId") Core.<*>
                     (o Core..:? "gatewayId"))

instance Core.ToJSON UnbindDeviceFromGatewayRequest
         where
        toJSON UnbindDeviceFromGatewayRequest{..}
          = Core.object
              (Core.catMaybes
                 [("deviceId" Core..=) Core.<$> deviceId,
                  ("gatewayId" Core..=) Core.<$> gatewayId])


-- | Response for @UnbindDeviceFromGateway@.
--
-- /See:/ 'newUnbindDeviceFromGatewayResponse' smart constructor.
data UnbindDeviceFromGatewayResponse = UnbindDeviceFromGatewayResponse
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'UnbindDeviceFromGatewayResponse' with the minimum fields required to make a request.
newUnbindDeviceFromGatewayResponse 
    ::  UnbindDeviceFromGatewayResponse
newUnbindDeviceFromGatewayResponse = UnbindDeviceFromGatewayResponse

instance Core.FromJSON
           UnbindDeviceFromGatewayResponse
         where
        parseJSON
          = Core.withObject "UnbindDeviceFromGatewayResponse"
              (\ o -> Core.pure UnbindDeviceFromGatewayResponse)

instance Core.ToJSON UnbindDeviceFromGatewayResponse
         where
        toJSON = Core.const Core.emptyObject


-- | Details of an X.509 certificate. For informational purposes only.
--
-- /See:/ 'newX509CertificateDetails' smart constructor.
data X509CertificateDetails = X509CertificateDetails
    {
      -- | The time the certificate becomes invalid.
      expiryTime :: (Core.Maybe Core.DateTime)
      -- | The entity that signed the certificate.
    , issuer :: (Core.Maybe Core.Text)
      -- | The type of public key in the certificate.
    , publicKeyType :: (Core.Maybe Core.Text)
      -- | The algorithm used to sign the certificate.
    , signatureAlgorithm :: (Core.Maybe Core.Text)
      -- | The time the certificate becomes valid.
    , startTime :: (Core.Maybe Core.DateTime)
      -- | The entity the certificate and public key belong to.
    , subject :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'X509CertificateDetails' with the minimum fields required to make a request.
newX509CertificateDetails 
    ::  X509CertificateDetails
newX509CertificateDetails =
  X509CertificateDetails
    { expiryTime = Core.Nothing
    , issuer = Core.Nothing
    , publicKeyType = Core.Nothing
    , signatureAlgorithm = Core.Nothing
    , startTime = Core.Nothing
    , subject = Core.Nothing
    }

instance Core.FromJSON X509CertificateDetails where
        parseJSON
          = Core.withObject "X509CertificateDetails"
              (\ o ->
                 X509CertificateDetails Core.<$>
                   (o Core..:? "expiryTime") Core.<*>
                     (o Core..:? "issuer")
                     Core.<*> (o Core..:? "publicKeyType")
                     Core.<*> (o Core..:? "signatureAlgorithm")
                     Core.<*> (o Core..:? "startTime")
                     Core.<*> (o Core..:? "subject"))

instance Core.ToJSON X509CertificateDetails where
        toJSON X509CertificateDetails{..}
          = Core.object
              (Core.catMaybes
                 [("expiryTime" Core..=) Core.<$> expiryTime,
                  ("issuer" Core..=) Core.<$> issuer,
                  ("publicKeyType" Core..=) Core.<$> publicKeyType,
                  ("signatureAlgorithm" Core..=) Core.<$>
                    signatureAlgorithm,
                  ("startTime" Core..=) Core.<$> startTime,
                  ("subject" Core..=) Core.<$> subject])

