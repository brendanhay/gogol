{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.CloudIOT.Types.Sum
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.CloudIOT.Types.Sum where

import           Network.Google.Prelude hiding (Bytes)

-- | **Beta Feature** The logging verbosity for device activity. If
-- unspecified, DeviceRegistry.log_level will be used.
data DeviceLogLevel
    = LogLevelUnspecified
      -- ^ @LOG_LEVEL_UNSPECIFIED@
      -- No logging specified. If not specified, logging will be disabled.
    | None
      -- ^ @NONE@
      -- Disables logging.
    | Error'
      -- ^ @ERROR@
      -- Error events will be logged.
    | Info
      -- ^ @INFO@
      -- Informational events will be logged, such as connections and
      -- disconnections.
    | Debug
      -- ^ @DEBUG@
      -- All events will be logged.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable DeviceLogLevel

instance FromHttpApiData DeviceLogLevel where
    parseQueryParam = \case
        "LOG_LEVEL_UNSPECIFIED" -> Right LogLevelUnspecified
        "NONE" -> Right None
        "ERROR" -> Right Error'
        "INFO" -> Right Info
        "DEBUG" -> Right Debug
        x -> Left ("Unable to parse DeviceLogLevel from: " <> x)

instance ToHttpApiData DeviceLogLevel where
    toQueryParam = \case
        LogLevelUnspecified -> "LOG_LEVEL_UNSPECIFIED"
        None -> "NONE"
        Error' -> "ERROR"
        Info -> "INFO"
        Debug -> "DEBUG"

instance FromJSON DeviceLogLevel where
    parseJSON = parseJSONText "DeviceLogLevel"

instance ToJSON DeviceLogLevel where
    toJSON = toJSONText

-- | The certificate format.
data PublicKeyCertificateFormat
    = UnspecifiedPublicKeyCertificateFormat
      -- ^ @UNSPECIFIED_PUBLIC_KEY_CERTIFICATE_FORMAT@
      -- The format has not been specified. This is an invalid default value and
      -- must not be used.
    | X509CertificatePem
      -- ^ @X509_CERTIFICATE_PEM@
      -- An X.509v3 certificate
      -- ([RFC5280](https:\/\/www.ietf.org\/rfc\/rfc5280.txt)), encoded in
      -- base64, and wrapped by \`-----BEGIN CERTIFICATE-----\` and \`-----END
      -- CERTIFICATE-----\`.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable PublicKeyCertificateFormat

instance FromHttpApiData PublicKeyCertificateFormat where
    parseQueryParam = \case
        "UNSPECIFIED_PUBLIC_KEY_CERTIFICATE_FORMAT" -> Right UnspecifiedPublicKeyCertificateFormat
        "X509_CERTIFICATE_PEM" -> Right X509CertificatePem
        x -> Left ("Unable to parse PublicKeyCertificateFormat from: " <> x)

instance ToHttpApiData PublicKeyCertificateFormat where
    toQueryParam = \case
        UnspecifiedPublicKeyCertificateFormat -> "UNSPECIFIED_PUBLIC_KEY_CERTIFICATE_FORMAT"
        X509CertificatePem -> "X509_CERTIFICATE_PEM"

instance FromJSON PublicKeyCertificateFormat where
    parseJSON = parseJSONText "PublicKeyCertificateFormat"

instance ToJSON PublicKeyCertificateFormat where
    toJSON = toJSONText

-- | The format of the key.
data PublicKeyCredentialFormat
    = UnspecifiedPublicKeyFormat
      -- ^ @UNSPECIFIED_PUBLIC_KEY_FORMAT@
      -- The format has not been specified. This is an invalid default value and
      -- must not be used.
    | RsaPem
      -- ^ @RSA_PEM@
      -- An RSA public key encoded in base64, and wrapped by \`-----BEGIN PUBLIC
      -- KEY-----\` and \`-----END PUBLIC KEY-----\`. This can be used to verify
      -- \`RS256\` signatures in JWT tokens ([RFC7518](
      -- https:\/\/www.ietf.org\/rfc\/rfc7518.txt)).
    | RsaX509Pem
      -- ^ @RSA_X509_PEM@
      -- As RSA_PEM, but wrapped in an X.509v3 certificate ([RFC5280](
      -- https:\/\/www.ietf.org\/rfc\/rfc5280.txt)), encoded in base64, and
      -- wrapped by \`-----BEGIN CERTIFICATE-----\` and \`-----END
      -- CERTIFICATE-----\`.
    | ES256Pem
      -- ^ @ES256_PEM@
      -- Public key for the ECDSA algorithm using P-256 and SHA-256, encoded in
      -- base64, and wrapped by \`-----BEGIN PUBLIC KEY-----\` and \`-----END
      -- PUBLIC KEY-----\`. This can be used to verify JWT tokens with the
      -- \`ES256\` algorithm
      -- ([RFC7518](https:\/\/www.ietf.org\/rfc\/rfc7518.txt)). This curve is
      -- defined in [OpenSSL](https:\/\/www.openssl.org\/) as the \`prime256v1\`
      -- curve.
    | ES256X509Pem
      -- ^ @ES256_X509_PEM@
      -- As ES256_PEM, but wrapped in an X.509v3 certificate ([RFC5280](
      -- https:\/\/www.ietf.org\/rfc\/rfc5280.txt)), encoded in base64, and
      -- wrapped by \`-----BEGIN CERTIFICATE-----\` and \`-----END
      -- CERTIFICATE-----\`.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable PublicKeyCredentialFormat

instance FromHttpApiData PublicKeyCredentialFormat where
    parseQueryParam = \case
        "UNSPECIFIED_PUBLIC_KEY_FORMAT" -> Right UnspecifiedPublicKeyFormat
        "RSA_PEM" -> Right RsaPem
        "RSA_X509_PEM" -> Right RsaX509Pem
        "ES256_PEM" -> Right ES256Pem
        "ES256_X509_PEM" -> Right ES256X509Pem
        x -> Left ("Unable to parse PublicKeyCredentialFormat from: " <> x)

instance ToHttpApiData PublicKeyCredentialFormat where
    toQueryParam = \case
        UnspecifiedPublicKeyFormat -> "UNSPECIFIED_PUBLIC_KEY_FORMAT"
        RsaPem -> "RSA_PEM"
        RsaX509Pem -> "RSA_X509_PEM"
        ES256Pem -> "ES256_PEM"
        ES256X509Pem -> "ES256_X509_PEM"

instance FromJSON PublicKeyCredentialFormat where
    parseJSON = parseJSONText "PublicKeyCredentialFormat"

instance ToJSON PublicKeyCredentialFormat where
    toJSON = toJSONText

-- | **Beta Feature** The default logging verbosity for activity from devices
-- in this registry. The verbosity level can be overridden by
-- Device.log_level.
data DeviceRegistryLogLevel
    = DRLLLogLevelUnspecified
      -- ^ @LOG_LEVEL_UNSPECIFIED@
      -- No logging specified. If not specified, logging will be disabled.
    | DRLLNone
      -- ^ @NONE@
      -- Disables logging.
    | DRLLError'
      -- ^ @ERROR@
      -- Error events will be logged.
    | DRLLInfo
      -- ^ @INFO@
      -- Informational events will be logged, such as connections and
      -- disconnections.
    | DRLLDebug
      -- ^ @DEBUG@
      -- All events will be logged.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable DeviceRegistryLogLevel

instance FromHttpApiData DeviceRegistryLogLevel where
    parseQueryParam = \case
        "LOG_LEVEL_UNSPECIFIED" -> Right DRLLLogLevelUnspecified
        "NONE" -> Right DRLLNone
        "ERROR" -> Right DRLLError'
        "INFO" -> Right DRLLInfo
        "DEBUG" -> Right DRLLDebug
        x -> Left ("Unable to parse DeviceRegistryLogLevel from: " <> x)

instance ToHttpApiData DeviceRegistryLogLevel where
    toQueryParam = \case
        DRLLLogLevelUnspecified -> "LOG_LEVEL_UNSPECIFIED"
        DRLLNone -> "NONE"
        DRLLError' -> "ERROR"
        DRLLInfo -> "INFO"
        DRLLDebug -> "DEBUG"

instance FromJSON DeviceRegistryLogLevel where
    parseJSON = parseJSONText "DeviceRegistryLogLevel"

instance ToJSON DeviceRegistryLogLevel where
    toJSON = toJSONText

-- | V1 error format.
data Xgafv
    = X1
      -- ^ @1@
      -- v1 error format
    | X2
      -- ^ @2@
      -- v2 error format
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable Xgafv

instance FromHttpApiData Xgafv where
    parseQueryParam = \case
        "1" -> Right X1
        "2" -> Right X2
        x -> Left ("Unable to parse Xgafv from: " <> x)

instance ToHttpApiData Xgafv where
    toQueryParam = \case
        X1 -> "1"
        X2 -> "2"

instance FromJSON Xgafv where
    parseJSON = parseJSONText "Xgafv"

instance ToJSON Xgafv where
    toJSON = toJSONText

-- | Indicates whether the device is a gateway.
data GatewayConfigGatewayType
    = GatewayTypeUnspecified
      -- ^ @GATEWAY_TYPE_UNSPECIFIED@
      -- If unspecified, the device is considered a non-gateway device.
    | Gateway
      -- ^ @GATEWAY@
      -- The device is a gateway.
    | NonGateway
      -- ^ @NON_GATEWAY@
      -- The device is not a gateway.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable GatewayConfigGatewayType

instance FromHttpApiData GatewayConfigGatewayType where
    parseQueryParam = \case
        "GATEWAY_TYPE_UNSPECIFIED" -> Right GatewayTypeUnspecified
        "GATEWAY" -> Right Gateway
        "NON_GATEWAY" -> Right NonGateway
        x -> Left ("Unable to parse GatewayConfigGatewayType from: " <> x)

instance ToHttpApiData GatewayConfigGatewayType where
    toQueryParam = \case
        GatewayTypeUnspecified -> "GATEWAY_TYPE_UNSPECIFIED"
        Gateway -> "GATEWAY"
        NonGateway -> "NON_GATEWAY"

instance FromJSON GatewayConfigGatewayType where
    parseJSON = parseJSONText "GatewayConfigGatewayType"

instance ToJSON GatewayConfigGatewayType where
    toJSON = toJSONText

-- | Indicates how to authorize and\/or authenticate devices to access the
-- gateway.
data GatewayConfigGatewayAuthMethod
    = GatewayAuthMethodUnspecified
      -- ^ @GATEWAY_AUTH_METHOD_UNSPECIFIED@
      -- No authentication\/authorization method specified. No devices are
      -- allowed to access the gateway.
    | AssociationOnly
      -- ^ @ASSOCIATION_ONLY@
      -- The device is authenticated through the gateway association only. Device
      -- credentials are ignored even if provided.
    | DeviceAuthTokenOnly
      -- ^ @DEVICE_AUTH_TOKEN_ONLY@
      -- The device is authenticated through its own credentials. Gateway
      -- association is not checked.
    | AssociationAndDeviceAuthToken
      -- ^ @ASSOCIATION_AND_DEVICE_AUTH_TOKEN@
      -- The device is authenticated through both device credentials and gateway
      -- association. The device must be bound to the gateway and must provide
      -- its own credentials.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable GatewayConfigGatewayAuthMethod

instance FromHttpApiData GatewayConfigGatewayAuthMethod where
    parseQueryParam = \case
        "GATEWAY_AUTH_METHOD_UNSPECIFIED" -> Right GatewayAuthMethodUnspecified
        "ASSOCIATION_ONLY" -> Right AssociationOnly
        "DEVICE_AUTH_TOKEN_ONLY" -> Right DeviceAuthTokenOnly
        "ASSOCIATION_AND_DEVICE_AUTH_TOKEN" -> Right AssociationAndDeviceAuthToken
        x -> Left ("Unable to parse GatewayConfigGatewayAuthMethod from: " <> x)

instance ToHttpApiData GatewayConfigGatewayAuthMethod where
    toQueryParam = \case
        GatewayAuthMethodUnspecified -> "GATEWAY_AUTH_METHOD_UNSPECIFIED"
        AssociationOnly -> "ASSOCIATION_ONLY"
        DeviceAuthTokenOnly -> "DEVICE_AUTH_TOKEN_ONLY"
        AssociationAndDeviceAuthToken -> "ASSOCIATION_AND_DEVICE_AUTH_TOKEN"

instance FromJSON GatewayConfigGatewayAuthMethod where
    parseJSON = parseJSONText "GatewayConfigGatewayAuthMethod"

instance ToJSON GatewayConfigGatewayAuthMethod where
    toJSON = toJSONText

-- | If enabled, allows connections using the MQTT protocol. Otherwise, MQTT
-- connections to this registry will fail.
data MqttConfigMqttEnabledState
    = MqttStateUnspecified
      -- ^ @MQTT_STATE_UNSPECIFIED@
      -- No MQTT state specified. If not specified, MQTT will be enabled by
      -- default.
    | MqttEnabled
      -- ^ @MQTT_ENABLED@
      -- Enables a MQTT connection.
    | MqttDisabled
      -- ^ @MQTT_DISABLED@
      -- Disables a MQTT connection.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable MqttConfigMqttEnabledState

instance FromHttpApiData MqttConfigMqttEnabledState where
    parseQueryParam = \case
        "MQTT_STATE_UNSPECIFIED" -> Right MqttStateUnspecified
        "MQTT_ENABLED" -> Right MqttEnabled
        "MQTT_DISABLED" -> Right MqttDisabled
        x -> Left ("Unable to parse MqttConfigMqttEnabledState from: " <> x)

instance ToHttpApiData MqttConfigMqttEnabledState where
    toQueryParam = \case
        MqttStateUnspecified -> "MQTT_STATE_UNSPECIFIED"
        MqttEnabled -> "MQTT_ENABLED"
        MqttDisabled -> "MQTT_DISABLED"

instance FromJSON MqttConfigMqttEnabledState where
    parseJSON = parseJSONText "MqttConfigMqttEnabledState"

instance ToJSON MqttConfigMqttEnabledState where
    toJSON = toJSONText

-- | If enabled, allows devices to use DeviceService via the HTTP protocol.
-- Otherwise, any requests to DeviceService will fail for this registry.
data HTTPConfigHTTPEnabledState
    = HTTPStateUnspecified
      -- ^ @HTTP_STATE_UNSPECIFIED@
      -- No HTTP state specified. If not specified, DeviceService will be enabled
      -- by default.
    | HTTPEnabled
      -- ^ @HTTP_ENABLED@
      -- Enables DeviceService (HTTP) service for the registry.
    | HTTPDisabled
      -- ^ @HTTP_DISABLED@
      -- Disables DeviceService (HTTP) service for the registry.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable HTTPConfigHTTPEnabledState

instance FromHttpApiData HTTPConfigHTTPEnabledState where
    parseQueryParam = \case
        "HTTP_STATE_UNSPECIFIED" -> Right HTTPStateUnspecified
        "HTTP_ENABLED" -> Right HTTPEnabled
        "HTTP_DISABLED" -> Right HTTPDisabled
        x -> Left ("Unable to parse HTTPConfigHTTPEnabledState from: " <> x)

instance ToHttpApiData HTTPConfigHTTPEnabledState where
    toQueryParam = \case
        HTTPStateUnspecified -> "HTTP_STATE_UNSPECIFIED"
        HTTPEnabled -> "HTTP_ENABLED"
        HTTPDisabled -> "HTTP_DISABLED"

instance FromJSON HTTPConfigHTTPEnabledState where
    parseJSON = parseJSONText "HTTPConfigHTTPEnabledState"

instance ToJSON HTTPConfigHTTPEnabledState where
    toJSON = toJSONText
