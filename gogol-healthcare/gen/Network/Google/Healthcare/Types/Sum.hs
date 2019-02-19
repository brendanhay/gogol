{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.Healthcare.Types.Sum
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.Healthcare.Types.Sum where

import           Network.Google.Prelude hiding (Bytes)

-- | The content structure in the source location. The default is BUNDLE.
data ImportResourcesRequestContentStructure
    = ContentStructureUnspecified
      -- ^ @CONTENT_STRUCTURE_UNSPECIFIED@
    | Bundle
      -- ^ @BUNDLE@
      -- Each unit is a bundle, which contains one or more resources.
    | Resource
      -- ^ @RESOURCE@
      -- Each unit is a single resource.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ImportResourcesRequestContentStructure

instance FromHttpApiData ImportResourcesRequestContentStructure where
    parseQueryParam = \case
        "CONTENT_STRUCTURE_UNSPECIFIED" -> Right ContentStructureUnspecified
        "BUNDLE" -> Right Bundle
        "RESOURCE" -> Right Resource
        x -> Left ("Unable to parse ImportResourcesRequestContentStructure from: " <> x)

instance ToHttpApiData ImportResourcesRequestContentStructure where
    toQueryParam = \case
        ContentStructureUnspecified -> "CONTENT_STRUCTURE_UNSPECIFIED"
        Bundle -> "BUNDLE"
        Resource -> "RESOURCE"

instance FromJSON ImportResourcesRequestContentStructure where
    parseJSON = parseJSONText "ImportResourcesRequestContentStructure"

instance ToJSON ImportResourcesRequestContentStructure where
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

-- | Specifies the output schema type. If unspecified, the default is
-- \`LOSSLESS\`.
data SchemaConfigSchemaType
    = SchemaTypeUnspecified
      -- ^ @SCHEMA_TYPE_UNSPECIFIED@
      -- No schema type specified. Same as \`LOSSLESS\`.
    | Lossless
      -- ^ @LOSSLESS@
      -- Schema generated from original FHIR data.
    | Analytics
      -- ^ @ANALYTICS@
      -- Analytics schema defined by the FHIR community. See
      -- https:\/\/github.com\/FHIR\/sql-on-fhir.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable SchemaConfigSchemaType

instance FromHttpApiData SchemaConfigSchemaType where
    parseQueryParam = \case
        "SCHEMA_TYPE_UNSPECIFIED" -> Right SchemaTypeUnspecified
        "LOSSLESS" -> Right Lossless
        "ANALYTICS" -> Right Analytics
        x -> Left ("Unable to parse SchemaConfigSchemaType from: " <> x)

instance ToHttpApiData SchemaConfigSchemaType where
    toQueryParam = \case
        SchemaTypeUnspecified -> "SCHEMA_TYPE_UNSPECIFIED"
        Lossless -> "LOSSLESS"
        Analytics -> "ANALYTICS"

instance FromJSON SchemaConfigSchemaType where
    parseJSON = parseJSONText "SchemaConfigSchemaType"

instance ToJSON SchemaConfigSchemaType where
    toJSON = toJSONText
