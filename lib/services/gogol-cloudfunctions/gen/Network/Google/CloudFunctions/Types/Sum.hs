{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.CloudFunctions.Types.Sum
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.CloudFunctions.Types.Sum where

import Network.Google.Prelude hiding (Bytes)

-- | Type of operation.
data OperationMetadataV1Type
    = OperationUnspecified
      -- ^ @OPERATION_UNSPECIFIED@
      -- Unknown operation type.
    | CreateFunction
      -- ^ @CREATE_FUNCTION@
      -- Triggered by CreateFunction call
    | UpdateFunction
      -- ^ @UPDATE_FUNCTION@
      -- Triggered by UpdateFunction call
    | DeleteFunction
      -- ^ @DELETE_FUNCTION@
      -- Triggered by DeleteFunction call.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable OperationMetadataV1Type

instance FromHttpApiData OperationMetadataV1Type where
    parseQueryParam = \case
        "OPERATION_UNSPECIFIED" -> Right OperationUnspecified
        "CREATE_FUNCTION" -> Right CreateFunction
        "UPDATE_FUNCTION" -> Right UpdateFunction
        "DELETE_FUNCTION" -> Right DeleteFunction
        x -> Left ("Unable to parse OperationMetadataV1Type from: " <> x)

instance ToHttpApiData OperationMetadataV1Type where
    toQueryParam = \case
        OperationUnspecified -> "OPERATION_UNSPECIFIED"
        CreateFunction -> "CREATE_FUNCTION"
        UpdateFunction -> "UPDATE_FUNCTION"
        DeleteFunction -> "DELETE_FUNCTION"

instance FromJSON OperationMetadataV1Type where
    parseJSON = parseJSONText "OperationMetadataV1Type"

instance ToJSON OperationMetadataV1Type where
    toJSON = toJSONText

-- | The egress settings for the connector, controlling what traffic is
-- diverted through it.
data CloudFunctionVPCConnectorEgressSettings
    = VPCConnectorEgressSettingsUnspecified
      -- ^ @VPC_CONNECTOR_EGRESS_SETTINGS_UNSPECIFIED@
      -- Unspecified.
    | PrivateRangesOnly
      -- ^ @PRIVATE_RANGES_ONLY@
      -- Use the VPC Access Connector only for private IP space from RFC1918.
    | AllTraffic
      -- ^ @ALL_TRAFFIC@
      -- Force the use of VPC Access Connector for all egress traffic from the
      -- function.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable CloudFunctionVPCConnectorEgressSettings

instance FromHttpApiData CloudFunctionVPCConnectorEgressSettings where
    parseQueryParam = \case
        "VPC_CONNECTOR_EGRESS_SETTINGS_UNSPECIFIED" -> Right VPCConnectorEgressSettingsUnspecified
        "PRIVATE_RANGES_ONLY" -> Right PrivateRangesOnly
        "ALL_TRAFFIC" -> Right AllTraffic
        x -> Left ("Unable to parse CloudFunctionVPCConnectorEgressSettings from: " <> x)

instance ToHttpApiData CloudFunctionVPCConnectorEgressSettings where
    toQueryParam = \case
        VPCConnectorEgressSettingsUnspecified -> "VPC_CONNECTOR_EGRESS_SETTINGS_UNSPECIFIED"
        PrivateRangesOnly -> "PRIVATE_RANGES_ONLY"
        AllTraffic -> "ALL_TRAFFIC"

instance FromJSON CloudFunctionVPCConnectorEgressSettings where
    parseJSON = parseJSONText "CloudFunctionVPCConnectorEgressSettings"

instance ToJSON CloudFunctionVPCConnectorEgressSettings where
    toJSON = toJSONText

-- | Output only. Status of the function deployment.
data CloudFunctionStatus
    = CloudFunctionStatusUnspecified
      -- ^ @CLOUD_FUNCTION_STATUS_UNSPECIFIED@
      -- Not specified. Invalid state.
    | Active
      -- ^ @ACTIVE@
      -- Function has been successfully deployed and is serving.
    | Offline
      -- ^ @OFFLINE@
      -- Function deployment failed and the function isn’t serving.
    | DeployInProgress
      -- ^ @DEPLOY_IN_PROGRESS@
      -- Function is being created or updated.
    | DeleteInProgress
      -- ^ @DELETE_IN_PROGRESS@
      -- Function is being deleted.
    | Unknown
      -- ^ @UNKNOWN@
      -- Function deployment failed and the function serving state is undefined.
      -- The function should be updated or deleted to move it out of this state.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable CloudFunctionStatus

instance FromHttpApiData CloudFunctionStatus where
    parseQueryParam = \case
        "CLOUD_FUNCTION_STATUS_UNSPECIFIED" -> Right CloudFunctionStatusUnspecified
        "ACTIVE" -> Right Active
        "OFFLINE" -> Right Offline
        "DEPLOY_IN_PROGRESS" -> Right DeployInProgress
        "DELETE_IN_PROGRESS" -> Right DeleteInProgress
        "UNKNOWN" -> Right Unknown
        x -> Left ("Unable to parse CloudFunctionStatus from: " <> x)

instance ToHttpApiData CloudFunctionStatus where
    toQueryParam = \case
        CloudFunctionStatusUnspecified -> "CLOUD_FUNCTION_STATUS_UNSPECIFIED"
        Active -> "ACTIVE"
        Offline -> "OFFLINE"
        DeployInProgress -> "DEPLOY_IN_PROGRESS"
        DeleteInProgress -> "DELETE_IN_PROGRESS"
        Unknown -> "UNKNOWN"

instance FromJSON CloudFunctionStatus where
    parseJSON = parseJSONText "CloudFunctionStatus"

instance ToJSON CloudFunctionStatus where
    toJSON = toJSONText

-- | The log type that this config enables.
data AuditLogConfigLogType
    = LogTypeUnspecified
      -- ^ @LOG_TYPE_UNSPECIFIED@
      -- Default case. Should never be this.
    | AdminRead
      -- ^ @ADMIN_READ@
      -- Admin reads. Example: CloudIAM getIamPolicy
    | DataWrite
      -- ^ @DATA_WRITE@
      -- Data writes. Example: CloudSQL Users create
    | DataRead
      -- ^ @DATA_READ@
      -- Data reads. Example: CloudSQL Users list
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable AuditLogConfigLogType

instance FromHttpApiData AuditLogConfigLogType where
    parseQueryParam = \case
        "LOG_TYPE_UNSPECIFIED" -> Right LogTypeUnspecified
        "ADMIN_READ" -> Right AdminRead
        "DATA_WRITE" -> Right DataWrite
        "DATA_READ" -> Right DataRead
        x -> Left ("Unable to parse AuditLogConfigLogType from: " <> x)

instance ToHttpApiData AuditLogConfigLogType where
    toQueryParam = \case
        LogTypeUnspecified -> "LOG_TYPE_UNSPECIFIED"
        AdminRead -> "ADMIN_READ"
        DataWrite -> "DATA_WRITE"
        DataRead -> "DATA_READ"

instance FromJSON AuditLogConfigLogType where
    parseJSON = parseJSONText "AuditLogConfigLogType"

instance ToJSON AuditLogConfigLogType where
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

-- | The security level for the function.
data HTTPSTriggerSecurityLevel
    = SecurityLevelUnspecified
      -- ^ @SECURITY_LEVEL_UNSPECIFIED@
      -- Unspecified.
    | SecureAlways
      -- ^ @SECURE_ALWAYS@
      -- Requests for a URL that match this handler that do not use HTTPS are
      -- automatically redirected to the HTTPS URL with the same path. Query
      -- parameters are reserved for the redirect.
    | SecureOptional
      -- ^ @SECURE_OPTIONAL@
      -- Both HTTP and HTTPS requests with URLs that match the handler succeed
      -- without redirects. The application can examine the request to determine
      -- which protocol was used and respond accordingly.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable HTTPSTriggerSecurityLevel

instance FromHttpApiData HTTPSTriggerSecurityLevel where
    parseQueryParam = \case
        "SECURITY_LEVEL_UNSPECIFIED" -> Right SecurityLevelUnspecified
        "SECURE_ALWAYS" -> Right SecureAlways
        "SECURE_OPTIONAL" -> Right SecureOptional
        x -> Left ("Unable to parse HTTPSTriggerSecurityLevel from: " <> x)

instance ToHttpApiData HTTPSTriggerSecurityLevel where
    toQueryParam = \case
        SecurityLevelUnspecified -> "SECURITY_LEVEL_UNSPECIFIED"
        SecureAlways -> "SECURE_ALWAYS"
        SecureOptional -> "SECURE_OPTIONAL"

instance FromJSON HTTPSTriggerSecurityLevel where
    parseJSON = parseJSONText "HTTPSTriggerSecurityLevel"

instance ToJSON HTTPSTriggerSecurityLevel where
    toJSON = toJSONText

-- | The ingress settings for the function, controlling what traffic can
-- reach it.
data CloudFunctionIngressSettings
    = IngressSettingsUnspecified
      -- ^ @INGRESS_SETTINGS_UNSPECIFIED@
      -- Unspecified.
    | AllowAll
      -- ^ @ALLOW_ALL@
      -- Allow HTTP traffic from public and private sources.
    | AllowInternalOnly
      -- ^ @ALLOW_INTERNAL_ONLY@
      -- Allow HTTP traffic from only private VPC sources.
    | AllowInternalAndGclb
      -- ^ @ALLOW_INTERNAL_AND_GCLB@
      -- Allow HTTP traffic from private VPC sources and through GCLB.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable CloudFunctionIngressSettings

instance FromHttpApiData CloudFunctionIngressSettings where
    parseQueryParam = \case
        "INGRESS_SETTINGS_UNSPECIFIED" -> Right IngressSettingsUnspecified
        "ALLOW_ALL" -> Right AllowAll
        "ALLOW_INTERNAL_ONLY" -> Right AllowInternalOnly
        "ALLOW_INTERNAL_AND_GCLB" -> Right AllowInternalAndGclb
        x -> Left ("Unable to parse CloudFunctionIngressSettings from: " <> x)

instance ToHttpApiData CloudFunctionIngressSettings where
    toQueryParam = \case
        IngressSettingsUnspecified -> "INGRESS_SETTINGS_UNSPECIFIED"
        AllowAll -> "ALLOW_ALL"
        AllowInternalOnly -> "ALLOW_INTERNAL_ONLY"
        AllowInternalAndGclb -> "ALLOW_INTERNAL_AND_GCLB"

instance FromJSON CloudFunctionIngressSettings where
    parseJSON = parseJSONText "CloudFunctionIngressSettings"

instance ToJSON CloudFunctionIngressSettings where
    toJSON = toJSONText
