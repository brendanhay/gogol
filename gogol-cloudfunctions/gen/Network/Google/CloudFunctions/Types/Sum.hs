{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.CloudFunctions.Types.Sum
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.CloudFunctions.Types.Sum where

import           Network.Google.Prelude hiding (Bytes)

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

-- | Output only. Status of the function deployment.
data CloudFunctionStatus
    = CloudFunctionStatusUnspecified
      -- ^ @CLOUD_FUNCTION_STATUS_UNSPECIFIED@
      -- Not specified. Invalid state.
    | Active
      -- ^ @ACTIVE@
      -- Function has been succesfully deployed and is serving.
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

-- | Type of operation.
data OperationMetadataV1Beta2Type
    = OMVBTOperationUnspecified
      -- ^ @OPERATION_UNSPECIFIED@
      -- Unknown operation type.
    | OMVBTCreateFunction
      -- ^ @CREATE_FUNCTION@
      -- Triggered by CreateFunction call
    | OMVBTUpdateFunction
      -- ^ @UPDATE_FUNCTION@
      -- Triggered by UpdateFunction call
    | OMVBTDeleteFunction
      -- ^ @DELETE_FUNCTION@
      -- Triggered by DeleteFunction call.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable OperationMetadataV1Beta2Type

instance FromHttpApiData OperationMetadataV1Beta2Type where
    parseQueryParam = \case
        "OPERATION_UNSPECIFIED" -> Right OMVBTOperationUnspecified
        "CREATE_FUNCTION" -> Right OMVBTCreateFunction
        "UPDATE_FUNCTION" -> Right OMVBTUpdateFunction
        "DELETE_FUNCTION" -> Right OMVBTDeleteFunction
        x -> Left ("Unable to parse OperationMetadataV1Beta2Type from: " <> x)

instance ToHttpApiData OperationMetadataV1Beta2Type where
    toQueryParam = \case
        OMVBTOperationUnspecified -> "OPERATION_UNSPECIFIED"
        OMVBTCreateFunction -> "CREATE_FUNCTION"
        OMVBTUpdateFunction -> "UPDATE_FUNCTION"
        OMVBTDeleteFunction -> "DELETE_FUNCTION"

instance FromJSON OperationMetadataV1Beta2Type where
    parseJSON = parseJSONText "OperationMetadataV1Beta2Type"

instance ToJSON OperationMetadataV1Beta2Type where
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
