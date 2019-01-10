{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.CloudAsset.Types.Sum
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.CloudAsset.Types.Sum where

import           Network.Google.Prelude hiding (Bytes)

-- | Asset content type. If not specified, no content but the asset name will
-- be returned.
data ExportAssetsRequestContentType
    = EARCTContentTypeUnspecified
      -- ^ @CONTENT_TYPE_UNSPECIFIED@
      -- Unspecified content type.
    | EARCTResource
      -- ^ @RESOURCE@
      -- Resource metadata.
    | EARCTIAMPolicy
      -- ^ @IAM_POLICY@
      -- The actual IAM policy set on a resource.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ExportAssetsRequestContentType

instance FromHttpApiData ExportAssetsRequestContentType where
    parseQueryParam = \case
        "CONTENT_TYPE_UNSPECIFIED" -> Right EARCTContentTypeUnspecified
        "RESOURCE" -> Right EARCTResource
        "IAM_POLICY" -> Right EARCTIAMPolicy
        x -> Left ("Unable to parse ExportAssetsRequestContentType from: " <> x)

instance ToHttpApiData ExportAssetsRequestContentType where
    toQueryParam = \case
        EARCTContentTypeUnspecified -> "CONTENT_TYPE_UNSPECIFIED"
        EARCTResource -> "RESOURCE"
        EARCTIAMPolicy -> "IAM_POLICY"

instance FromJSON ExportAssetsRequestContentType where
    parseJSON = parseJSONText "ExportAssetsRequestContentType"

instance ToJSON ExportAssetsRequestContentType where
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
