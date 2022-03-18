{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Network.Google.CloudIOT.Internal.Sum
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.Google.CloudIOT.Internal.Sum
  ( -- * Xgafv
    Xgafv
      ( Xgafv_1,
        Xgafv_2,
        ..
      ),

    -- * Device_LogLevel
    Device_LogLevel
      ( Device_LogLevel_LOGLEVELUNSPECIFIED,
        Device_LogLevel_None,
        Device_LogLevel_Error',
        Device_LogLevel_Info,
        Device_LogLevel_Debug,
        ..
      ),

    -- * DeviceRegistry_LogLevel
    DeviceRegistry_LogLevel
      ( DeviceRegistry_LogLevel_LOGLEVELUNSPECIFIED,
        DeviceRegistry_LogLevel_None,
        DeviceRegistry_LogLevel_Error',
        DeviceRegistry_LogLevel_Info,
        DeviceRegistry_LogLevel_Debug,
        ..
      ),

    -- * GatewayConfig_GatewayAuthMethod
    GatewayConfig_GatewayAuthMethod
      ( GatewayConfig_GatewayAuthMethod_GATEWAYAUTHMETHODUNSPECIFIED,
        GatewayConfig_GatewayAuthMethod_ASSOCIATIONONLY,
        GatewayConfig_GatewayAuthMethod_DEVICEAUTHTOKENONLY,
        GatewayConfig_GatewayAuthMethod_ASSOCIATIONANDDEVICEAUTHTOKEN,
        ..
      ),

    -- * GatewayConfig_GatewayType
    GatewayConfig_GatewayType
      ( GatewayConfig_GatewayType_GATEWAYTYPEUNSPECIFIED,
        GatewayConfig_GatewayType_Gateway,
        GatewayConfig_GatewayType_NONGATEWAY,
        ..
      ),

    -- * HttpConfig_HttpEnabledState
    HttpConfig_HttpEnabledState
      ( HttpConfig_HttpEnabledState_HTTPSTATEUNSPECIFIED,
        HttpConfig_HttpEnabledState_HTTPENABLED,
        HttpConfig_HttpEnabledState_HTTPDISABLED,
        ..
      ),

    -- * MqttConfig_MqttEnabledState
    MqttConfig_MqttEnabledState
      ( MqttConfig_MqttEnabledState_MQTTSTATEUNSPECIFIED,
        MqttConfig_MqttEnabledState_MQTTENABLED,
        MqttConfig_MqttEnabledState_MQTTDISABLED,
        ..
      ),

    -- * PublicKeyCertificate_Format
    PublicKeyCertificate_Format
      ( PublicKeyCertificate_Format_UNSPECIFIEDPUBLICKEYCERTIFICATEFORMAT,
        PublicKeyCertificate_Format_X509CERTIFICATEPEM,
        ..
      ),

    -- * PublicKeyCredential_Format
    PublicKeyCredential_Format
      ( PublicKeyCredential_Format_UNSPECIFIEDPUBLICKEYFORMAT,
        PublicKeyCredential_Format_RSAPEM,
        PublicKeyCredential_Format_RSAX509PEM,
        PublicKeyCredential_Format_ES256PEM,
        PublicKeyCredential_Format_ES256X509PEM,
        ..
      ),

    -- * ProjectsLocationsRegistriesDevicesListGatewayListOptionsGatewayType
    ProjectsLocationsRegistriesDevicesListGatewayListOptionsGatewayType
      ( ProjectsLocationsRegistriesDevicesListGatewayListOptionsGatewayType_GATEWAYTYPEUNSPECIFIED,
        ProjectsLocationsRegistriesDevicesListGatewayListOptionsGatewayType_Gateway,
        ProjectsLocationsRegistriesDevicesListGatewayListOptionsGatewayType_NONGATEWAY,
        ..
      ),

    -- * ProjectsLocationsRegistriesGroupsDevicesListGatewayListOptionsGatewayType
    ProjectsLocationsRegistriesGroupsDevicesListGatewayListOptionsGatewayType
      ( ProjectsLocationsRegistriesGroupsDevicesListGatewayListOptionsGatewayType_GATEWAYTYPEUNSPECIFIED,
        ProjectsLocationsRegistriesGroupsDevicesListGatewayListOptionsGatewayType_Gateway,
        ProjectsLocationsRegistriesGroupsDevicesListGatewayListOptionsGatewayType_NONGATEWAY,
        ..
      ),
  )
where

import qualified Network.Google.Prelude as Core

-- | V1 error format.
newtype Xgafv = Xgafv {fromXgafv :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | v1 error format
pattern Xgafv_1 :: Xgafv
pattern Xgafv_1 = Xgafv "1"

-- | v2 error format
pattern Xgafv_2 :: Xgafv
pattern Xgafv_2 = Xgafv "2"

{-# COMPLETE
  Xgafv_1,
  Xgafv_2,
  Xgafv
  #-}

-- | __Beta Feature__ The logging verbosity for device activity. If unspecified, DeviceRegistry.log_level will be used.
newtype Device_LogLevel = Device_LogLevel {fromDevice_LogLevel :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | No logging specified. If not specified, logging will be disabled.
pattern Device_LogLevel_LOGLEVELUNSPECIFIED :: Device_LogLevel
pattern Device_LogLevel_LOGLEVELUNSPECIFIED = Device_LogLevel "LOG_LEVEL_UNSPECIFIED"

-- | Disables logging.
pattern Device_LogLevel_None :: Device_LogLevel
pattern Device_LogLevel_None = Device_LogLevel "NONE"

-- | Error events will be logged.
pattern Device_LogLevel_Error' :: Device_LogLevel
pattern Device_LogLevel_Error' = Device_LogLevel "ERROR"

-- | Informational events will be logged, such as connections and disconnections.
pattern Device_LogLevel_Info :: Device_LogLevel
pattern Device_LogLevel_Info = Device_LogLevel "INFO"

-- | All events will be logged.
pattern Device_LogLevel_Debug :: Device_LogLevel
pattern Device_LogLevel_Debug = Device_LogLevel "DEBUG"

{-# COMPLETE
  Device_LogLevel_LOGLEVELUNSPECIFIED,
  Device_LogLevel_None,
  Device_LogLevel_Error',
  Device_LogLevel_Info,
  Device_LogLevel_Debug,
  Device_LogLevel
  #-}

-- | __Beta Feature__ The default logging verbosity for activity from devices in this registry. The verbosity level can be overridden by Device.log_level.
newtype DeviceRegistry_LogLevel = DeviceRegistry_LogLevel {fromDeviceRegistry_LogLevel :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | No logging specified. If not specified, logging will be disabled.
pattern DeviceRegistry_LogLevel_LOGLEVELUNSPECIFIED :: DeviceRegistry_LogLevel
pattern DeviceRegistry_LogLevel_LOGLEVELUNSPECIFIED = DeviceRegistry_LogLevel "LOG_LEVEL_UNSPECIFIED"

-- | Disables logging.
pattern DeviceRegistry_LogLevel_None :: DeviceRegistry_LogLevel
pattern DeviceRegistry_LogLevel_None = DeviceRegistry_LogLevel "NONE"

-- | Error events will be logged.
pattern DeviceRegistry_LogLevel_Error' :: DeviceRegistry_LogLevel
pattern DeviceRegistry_LogLevel_Error' = DeviceRegistry_LogLevel "ERROR"

-- | Informational events will be logged, such as connections and disconnections.
pattern DeviceRegistry_LogLevel_Info :: DeviceRegistry_LogLevel
pattern DeviceRegistry_LogLevel_Info = DeviceRegistry_LogLevel "INFO"

-- | All events will be logged.
pattern DeviceRegistry_LogLevel_Debug :: DeviceRegistry_LogLevel
pattern DeviceRegistry_LogLevel_Debug = DeviceRegistry_LogLevel "DEBUG"

{-# COMPLETE
  DeviceRegistry_LogLevel_LOGLEVELUNSPECIFIED,
  DeviceRegistry_LogLevel_None,
  DeviceRegistry_LogLevel_Error',
  DeviceRegistry_LogLevel_Info,
  DeviceRegistry_LogLevel_Debug,
  DeviceRegistry_LogLevel
  #-}

-- | Indicates how to authorize and\/or authenticate devices to access the gateway.
newtype GatewayConfig_GatewayAuthMethod = GatewayConfig_GatewayAuthMethod {fromGatewayConfig_GatewayAuthMethod :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | No authentication\/authorization method specified. No devices are allowed to access the gateway.
pattern GatewayConfig_GatewayAuthMethod_GATEWAYAUTHMETHODUNSPECIFIED :: GatewayConfig_GatewayAuthMethod
pattern GatewayConfig_GatewayAuthMethod_GATEWAYAUTHMETHODUNSPECIFIED = GatewayConfig_GatewayAuthMethod "GATEWAY_AUTH_METHOD_UNSPECIFIED"

-- | The device is authenticated through the gateway association only. Device credentials are ignored even if provided.
pattern GatewayConfig_GatewayAuthMethod_ASSOCIATIONONLY :: GatewayConfig_GatewayAuthMethod
pattern GatewayConfig_GatewayAuthMethod_ASSOCIATIONONLY = GatewayConfig_GatewayAuthMethod "ASSOCIATION_ONLY"

-- | The device is authenticated through its own credentials. Gateway association is not checked.
pattern GatewayConfig_GatewayAuthMethod_DEVICEAUTHTOKENONLY :: GatewayConfig_GatewayAuthMethod
pattern GatewayConfig_GatewayAuthMethod_DEVICEAUTHTOKENONLY = GatewayConfig_GatewayAuthMethod "DEVICE_AUTH_TOKEN_ONLY"

-- | The device is authenticated through both device credentials and gateway association. The device must be bound to the gateway and must provide its own credentials.
pattern GatewayConfig_GatewayAuthMethod_ASSOCIATIONANDDEVICEAUTHTOKEN :: GatewayConfig_GatewayAuthMethod
pattern GatewayConfig_GatewayAuthMethod_ASSOCIATIONANDDEVICEAUTHTOKEN = GatewayConfig_GatewayAuthMethod "ASSOCIATION_AND_DEVICE_AUTH_TOKEN"

{-# COMPLETE
  GatewayConfig_GatewayAuthMethod_GATEWAYAUTHMETHODUNSPECIFIED,
  GatewayConfig_GatewayAuthMethod_ASSOCIATIONONLY,
  GatewayConfig_GatewayAuthMethod_DEVICEAUTHTOKENONLY,
  GatewayConfig_GatewayAuthMethod_ASSOCIATIONANDDEVICEAUTHTOKEN,
  GatewayConfig_GatewayAuthMethod
  #-}

-- | Indicates whether the device is a gateway.
newtype GatewayConfig_GatewayType = GatewayConfig_GatewayType {fromGatewayConfig_GatewayType :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | If unspecified, the device is considered a non-gateway device.
pattern GatewayConfig_GatewayType_GATEWAYTYPEUNSPECIFIED :: GatewayConfig_GatewayType
pattern GatewayConfig_GatewayType_GATEWAYTYPEUNSPECIFIED = GatewayConfig_GatewayType "GATEWAY_TYPE_UNSPECIFIED"

-- | The device is a gateway.
pattern GatewayConfig_GatewayType_Gateway :: GatewayConfig_GatewayType
pattern GatewayConfig_GatewayType_Gateway = GatewayConfig_GatewayType "GATEWAY"

-- | The device is not a gateway.
pattern GatewayConfig_GatewayType_NONGATEWAY :: GatewayConfig_GatewayType
pattern GatewayConfig_GatewayType_NONGATEWAY = GatewayConfig_GatewayType "NON_GATEWAY"

{-# COMPLETE
  GatewayConfig_GatewayType_GATEWAYTYPEUNSPECIFIED,
  GatewayConfig_GatewayType_Gateway,
  GatewayConfig_GatewayType_NONGATEWAY,
  GatewayConfig_GatewayType
  #-}

-- | If enabled, allows devices to use DeviceService via the HTTP protocol. Otherwise, any requests to DeviceService will fail for this registry.
newtype HttpConfig_HttpEnabledState = HttpConfig_HttpEnabledState {fromHttpConfig_HttpEnabledState :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | No HTTP state specified. If not specified, DeviceService will be enabled by default.
pattern HttpConfig_HttpEnabledState_HTTPSTATEUNSPECIFIED :: HttpConfig_HttpEnabledState
pattern HttpConfig_HttpEnabledState_HTTPSTATEUNSPECIFIED = HttpConfig_HttpEnabledState "HTTP_STATE_UNSPECIFIED"

-- | Enables DeviceService (HTTP) service for the registry.
pattern HttpConfig_HttpEnabledState_HTTPENABLED :: HttpConfig_HttpEnabledState
pattern HttpConfig_HttpEnabledState_HTTPENABLED = HttpConfig_HttpEnabledState "HTTP_ENABLED"

-- | Disables DeviceService (HTTP) service for the registry.
pattern HttpConfig_HttpEnabledState_HTTPDISABLED :: HttpConfig_HttpEnabledState
pattern HttpConfig_HttpEnabledState_HTTPDISABLED = HttpConfig_HttpEnabledState "HTTP_DISABLED"

{-# COMPLETE
  HttpConfig_HttpEnabledState_HTTPSTATEUNSPECIFIED,
  HttpConfig_HttpEnabledState_HTTPENABLED,
  HttpConfig_HttpEnabledState_HTTPDISABLED,
  HttpConfig_HttpEnabledState
  #-}

-- | If enabled, allows connections using the MQTT protocol. Otherwise, MQTT connections to this registry will fail.
newtype MqttConfig_MqttEnabledState = MqttConfig_MqttEnabledState {fromMqttConfig_MqttEnabledState :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | No MQTT state specified. If not specified, MQTT will be enabled by default.
pattern MqttConfig_MqttEnabledState_MQTTSTATEUNSPECIFIED :: MqttConfig_MqttEnabledState
pattern MqttConfig_MqttEnabledState_MQTTSTATEUNSPECIFIED = MqttConfig_MqttEnabledState "MQTT_STATE_UNSPECIFIED"

-- | Enables a MQTT connection.
pattern MqttConfig_MqttEnabledState_MQTTENABLED :: MqttConfig_MqttEnabledState
pattern MqttConfig_MqttEnabledState_MQTTENABLED = MqttConfig_MqttEnabledState "MQTT_ENABLED"

-- | Disables a MQTT connection.
pattern MqttConfig_MqttEnabledState_MQTTDISABLED :: MqttConfig_MqttEnabledState
pattern MqttConfig_MqttEnabledState_MQTTDISABLED = MqttConfig_MqttEnabledState "MQTT_DISABLED"

{-# COMPLETE
  MqttConfig_MqttEnabledState_MQTTSTATEUNSPECIFIED,
  MqttConfig_MqttEnabledState_MQTTENABLED,
  MqttConfig_MqttEnabledState_MQTTDISABLED,
  MqttConfig_MqttEnabledState
  #-}

-- | The certificate format.
newtype PublicKeyCertificate_Format = PublicKeyCertificate_Format {fromPublicKeyCertificate_Format :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | The format has not been specified. This is an invalid default value and must not be used.
pattern PublicKeyCertificate_Format_UNSPECIFIEDPUBLICKEYCERTIFICATEFORMAT :: PublicKeyCertificate_Format
pattern PublicKeyCertificate_Format_UNSPECIFIEDPUBLICKEYCERTIFICATEFORMAT = PublicKeyCertificate_Format "UNSPECIFIED_PUBLIC_KEY_CERTIFICATE_FORMAT"

-- | An X.509v3 certificate (<https://www.ietf.org/rfc/rfc5280.txt RFC5280>), encoded in base64, and wrapped by @-----BEGIN CERTIFICATE-----@ and @-----END CERTIFICATE-----@.
pattern PublicKeyCertificate_Format_X509CERTIFICATEPEM :: PublicKeyCertificate_Format
pattern PublicKeyCertificate_Format_X509CERTIFICATEPEM = PublicKeyCertificate_Format "X509_CERTIFICATE_PEM"

{-# COMPLETE
  PublicKeyCertificate_Format_UNSPECIFIEDPUBLICKEYCERTIFICATEFORMAT,
  PublicKeyCertificate_Format_X509CERTIFICATEPEM,
  PublicKeyCertificate_Format
  #-}

-- | The format of the key.
newtype PublicKeyCredential_Format = PublicKeyCredential_Format {fromPublicKeyCredential_Format :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | The format has not been specified. This is an invalid default value and must not be used.
pattern PublicKeyCredential_Format_UNSPECIFIEDPUBLICKEYFORMAT :: PublicKeyCredential_Format
pattern PublicKeyCredential_Format_UNSPECIFIEDPUBLICKEYFORMAT = PublicKeyCredential_Format "UNSPECIFIED_PUBLIC_KEY_FORMAT"

-- | An RSA public key encoded in base64, and wrapped by @-----BEGIN PUBLIC KEY-----@ and @-----END PUBLIC KEY-----@. This can be used to verify @RS256@ signatures in JWT tokens (<https://www.ietf.org/rfc/rfc7518.txt RFC7518>).
pattern PublicKeyCredential_Format_RSAPEM :: PublicKeyCredential_Format
pattern PublicKeyCredential_Format_RSAPEM = PublicKeyCredential_Format "RSA_PEM"

-- | As RSA_PEM, but wrapped in an X.509v3 certificate (<https://www.ietf.org/rfc/rfc5280.txt RFC5280>), encoded in base64, and wrapped by @-----BEGIN CERTIFICATE-----@ and @-----END CERTIFICATE-----@.
pattern PublicKeyCredential_Format_RSAX509PEM :: PublicKeyCredential_Format
pattern PublicKeyCredential_Format_RSAX509PEM = PublicKeyCredential_Format "RSA_X509_PEM"

-- | Public key for the ECDSA algorithm using P-256 and SHA-256, encoded in base64, and wrapped by @-----BEGIN PUBLIC KEY-----@ and @-----END PUBLIC KEY-----@. This can be used to verify JWT tokens with the @ES256@ algorithm (<https://www.ietf.org/rfc/rfc7518.txt RFC7518>). This curve is defined in <https://www.openssl.org/ OpenSSL> as the @prime256v1@ curve.
pattern PublicKeyCredential_Format_ES256PEM :: PublicKeyCredential_Format
pattern PublicKeyCredential_Format_ES256PEM = PublicKeyCredential_Format "ES256_PEM"

-- | As ES256_PEM, but wrapped in an X.509v3 certificate (<https://www.ietf.org/rfc/rfc5280.txt RFC5280>), encoded in base64, and wrapped by @-----BEGIN CERTIFICATE-----@ and @-----END CERTIFICATE-----@.
pattern PublicKeyCredential_Format_ES256X509PEM :: PublicKeyCredential_Format
pattern PublicKeyCredential_Format_ES256X509PEM = PublicKeyCredential_Format "ES256_X509_PEM"

{-# COMPLETE
  PublicKeyCredential_Format_UNSPECIFIEDPUBLICKEYFORMAT,
  PublicKeyCredential_Format_RSAPEM,
  PublicKeyCredential_Format_RSAX509PEM,
  PublicKeyCredential_Format_ES256PEM,
  PublicKeyCredential_Format_ES256X509PEM,
  PublicKeyCredential_Format
  #-}

-- | If @GATEWAY@ is specified, only gateways are returned. If @NON_GATEWAY@ is specified, only non-gateway devices are returned. If @GATEWAY_TYPE_UNSPECIFIED@ is specified, all devices are returned.
newtype ProjectsLocationsRegistriesDevicesListGatewayListOptionsGatewayType = ProjectsLocationsRegistriesDevicesListGatewayListOptionsGatewayType {fromProjectsLocationsRegistriesDevicesListGatewayListOptionsGatewayType :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | If unspecified, the device is considered a non-gateway device.
pattern ProjectsLocationsRegistriesDevicesListGatewayListOptionsGatewayType_GATEWAYTYPEUNSPECIFIED :: ProjectsLocationsRegistriesDevicesListGatewayListOptionsGatewayType
pattern ProjectsLocationsRegistriesDevicesListGatewayListOptionsGatewayType_GATEWAYTYPEUNSPECIFIED = ProjectsLocationsRegistriesDevicesListGatewayListOptionsGatewayType "GATEWAY_TYPE_UNSPECIFIED"

-- | The device is a gateway.
pattern ProjectsLocationsRegistriesDevicesListGatewayListOptionsGatewayType_Gateway :: ProjectsLocationsRegistriesDevicesListGatewayListOptionsGatewayType
pattern ProjectsLocationsRegistriesDevicesListGatewayListOptionsGatewayType_Gateway = ProjectsLocationsRegistriesDevicesListGatewayListOptionsGatewayType "GATEWAY"

-- | The device is not a gateway.
pattern ProjectsLocationsRegistriesDevicesListGatewayListOptionsGatewayType_NONGATEWAY :: ProjectsLocationsRegistriesDevicesListGatewayListOptionsGatewayType
pattern ProjectsLocationsRegistriesDevicesListGatewayListOptionsGatewayType_NONGATEWAY = ProjectsLocationsRegistriesDevicesListGatewayListOptionsGatewayType "NON_GATEWAY"

{-# COMPLETE
  ProjectsLocationsRegistriesDevicesListGatewayListOptionsGatewayType_GATEWAYTYPEUNSPECIFIED,
  ProjectsLocationsRegistriesDevicesListGatewayListOptionsGatewayType_Gateway,
  ProjectsLocationsRegistriesDevicesListGatewayListOptionsGatewayType_NONGATEWAY,
  ProjectsLocationsRegistriesDevicesListGatewayListOptionsGatewayType
  #-}

-- | If @GATEWAY@ is specified, only gateways are returned. If @NON_GATEWAY@ is specified, only non-gateway devices are returned. If @GATEWAY_TYPE_UNSPECIFIED@ is specified, all devices are returned.
newtype ProjectsLocationsRegistriesGroupsDevicesListGatewayListOptionsGatewayType = ProjectsLocationsRegistriesGroupsDevicesListGatewayListOptionsGatewayType {fromProjectsLocationsRegistriesGroupsDevicesListGatewayListOptionsGatewayType :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | If unspecified, the device is considered a non-gateway device.
pattern ProjectsLocationsRegistriesGroupsDevicesListGatewayListOptionsGatewayType_GATEWAYTYPEUNSPECIFIED :: ProjectsLocationsRegistriesGroupsDevicesListGatewayListOptionsGatewayType
pattern ProjectsLocationsRegistriesGroupsDevicesListGatewayListOptionsGatewayType_GATEWAYTYPEUNSPECIFIED = ProjectsLocationsRegistriesGroupsDevicesListGatewayListOptionsGatewayType "GATEWAY_TYPE_UNSPECIFIED"

-- | The device is a gateway.
pattern ProjectsLocationsRegistriesGroupsDevicesListGatewayListOptionsGatewayType_Gateway :: ProjectsLocationsRegistriesGroupsDevicesListGatewayListOptionsGatewayType
pattern ProjectsLocationsRegistriesGroupsDevicesListGatewayListOptionsGatewayType_Gateway = ProjectsLocationsRegistriesGroupsDevicesListGatewayListOptionsGatewayType "GATEWAY"

-- | The device is not a gateway.
pattern ProjectsLocationsRegistriesGroupsDevicesListGatewayListOptionsGatewayType_NONGATEWAY :: ProjectsLocationsRegistriesGroupsDevicesListGatewayListOptionsGatewayType
pattern ProjectsLocationsRegistriesGroupsDevicesListGatewayListOptionsGatewayType_NONGATEWAY = ProjectsLocationsRegistriesGroupsDevicesListGatewayListOptionsGatewayType "NON_GATEWAY"

{-# COMPLETE
  ProjectsLocationsRegistriesGroupsDevicesListGatewayListOptionsGatewayType_GATEWAYTYPEUNSPECIFIED,
  ProjectsLocationsRegistriesGroupsDevicesListGatewayListOptionsGatewayType_Gateway,
  ProjectsLocationsRegistriesGroupsDevicesListGatewayListOptionsGatewayType_NONGATEWAY,
  ProjectsLocationsRegistriesGroupsDevicesListGatewayListOptionsGatewayType
  #-}
