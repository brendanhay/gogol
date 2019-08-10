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

-- | Determines how to redact text from image.
data ImageConfigTextRedactionMode
    = TextRedactionModeUnspecified
      -- ^ @TEXT_REDACTION_MODE_UNSPECIFIED@
      -- No text redaction specified. Same as REDACT_NO_TEXT.
    | RedactAllText
      -- ^ @REDACT_ALL_TEXT@
      -- Redact all text.
    | RedactSensitiveText
      -- ^ @REDACT_SENSITIVE_TEXT@
      -- Redact sensitive text.
    | RedactNoText
      -- ^ @REDACT_NO_TEXT@
      -- Do not redact text.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ImageConfigTextRedactionMode

instance FromHttpApiData ImageConfigTextRedactionMode where
    parseQueryParam = \case
        "TEXT_REDACTION_MODE_UNSPECIFIED" -> Right TextRedactionModeUnspecified
        "REDACT_ALL_TEXT" -> Right RedactAllText
        "REDACT_SENSITIVE_TEXT" -> Right RedactSensitiveText
        "REDACT_NO_TEXT" -> Right RedactNoText
        x -> Left ("Unable to parse ImageConfigTextRedactionMode from: " <> x)

instance ToHttpApiData ImageConfigTextRedactionMode where
    toQueryParam = \case
        TextRedactionModeUnspecified -> "TEXT_REDACTION_MODE_UNSPECIFIED"
        RedactAllText -> "REDACT_ALL_TEXT"
        RedactSensitiveText -> "REDACT_SENSITIVE_TEXT"
        RedactNoText -> "REDACT_NO_TEXT"

instance FromJSON ImageConfigTextRedactionMode where
    parseJSON = parseJSONText "ImageConfigTextRedactionMode"

instance ToJSON ImageConfigTextRedactionMode where
    toJSON = toJSONText

-- | The content structure in the source location. The default is BUNDLE.
data ImportResourcesRequestContentStructure
    = ContentStructureUnspecified
      -- ^ @CONTENT_STRUCTURE_UNSPECIFIED@
    | Bundle
      -- ^ @BUNDLE@
      -- Each line is a bundle, which contains one or more resources. Set the
      -- bundle type to \`history\` to import resource versions.
    | Resource
      -- ^ @RESOURCE@
      -- Each line is a single resource.
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

-- | Deidentify action for one field.
data FieldMetadataAction
    = ActionUnspecified
      -- ^ @ACTION_UNSPECIFIED@
      -- No action specified.
    | Transform
      -- ^ @TRANSFORM@
      -- Transform the entire field.
    | InspectAndTransform
      -- ^ @INSPECT_AND_TRANSFORM@
      -- Inspect and transform any found PHI.
    | DoNotTransform
      -- ^ @DO_NOT_TRANSFORM@
      -- Do not transform.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable FieldMetadataAction

instance FromHttpApiData FieldMetadataAction where
    parseQueryParam = \case
        "ACTION_UNSPECIFIED" -> Right ActionUnspecified
        "TRANSFORM" -> Right Transform
        "INSPECT_AND_TRANSFORM" -> Right InspectAndTransform
        "DO_NOT_TRANSFORM" -> Right DoNotTransform
        x -> Left ("Unable to parse FieldMetadataAction from: " <> x)

instance ToHttpApiData FieldMetadataAction where
    toQueryParam = \case
        ActionUnspecified -> "ACTION_UNSPECIFIED"
        Transform -> "TRANSFORM"
        InspectAndTransform -> "INSPECT_AND_TRANSFORM"
        DoNotTransform -> "DO_NOT_TRANSFORM"

instance FromJSON FieldMetadataAction where
    parseJSON = parseJSONText "FieldMetadataAction"

instance ToJSON FieldMetadataAction where
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
      -- A data-driven schema generated from the fields present in the FHIR data
      -- being exported, with no additional simplification.
    | Analytics
      -- ^ @ANALYTICS@
      -- Analytics schema defined by the FHIR community. See
      -- https:\/\/github.com\/FHIR\/sql-on-fhir\/blob\/master\/sql-on-fhir.md.
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

-- | Tag filtering profile that determines which tags to keep\/remove.
data DicomConfigFilterProFile
    = TagFilterProFileUnspecified
      -- ^ @TAG_FILTER_PROFILE_UNSPECIFIED@
      -- No tag filtration profile provided. Same as KEEP_ALL_PROFILE.
    | MinimalKeepListProFile
      -- ^ @MINIMAL_KEEP_LIST_PROFILE@
      -- Keep only tags required to produce valid DICOM.
    | AttributeConfidentialityBasicProFile
      -- ^ @ATTRIBUTE_CONFIDENTIALITY_BASIC_PROFILE@
      -- Remove tags based on DICOM Standard\'s Attribute Confidentiality Basic
      -- Profile (DICOM Standard Edition 2018e).
    | KeepAllProFile
      -- ^ @KEEP_ALL_PROFILE@
      -- Keep all tags.
    | DeidentifyTagContents
      -- ^ @DEIDENTIFY_TAG_CONTENTS@
      -- Inspects within tag contents and replaces sensitive text. The process
      -- can be configured using the TextConfig. Applies to all tags with the
      -- following Value Representation names: AE, LO, LT, PN, SH, ST, UC, UT,
      -- DA, DT, AS
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable DicomConfigFilterProFile

instance FromHttpApiData DicomConfigFilterProFile where
    parseQueryParam = \case
        "TAG_FILTER_PROFILE_UNSPECIFIED" -> Right TagFilterProFileUnspecified
        "MINIMAL_KEEP_LIST_PROFILE" -> Right MinimalKeepListProFile
        "ATTRIBUTE_CONFIDENTIALITY_BASIC_PROFILE" -> Right AttributeConfidentialityBasicProFile
        "KEEP_ALL_PROFILE" -> Right KeepAllProFile
        "DEIDENTIFY_TAG_CONTENTS" -> Right DeidentifyTagContents
        x -> Left ("Unable to parse DicomConfigFilterProFile from: " <> x)

instance ToHttpApiData DicomConfigFilterProFile where
    toQueryParam = \case
        TagFilterProFileUnspecified -> "TAG_FILTER_PROFILE_UNSPECIFIED"
        MinimalKeepListProFile -> "MINIMAL_KEEP_LIST_PROFILE"
        AttributeConfidentialityBasicProFile -> "ATTRIBUTE_CONFIDENTIALITY_BASIC_PROFILE"
        KeepAllProFile -> "KEEP_ALL_PROFILE"
        DeidentifyTagContents -> "DEIDENTIFY_TAG_CONTENTS"

instance FromJSON DicomConfigFilterProFile where
    parseJSON = parseJSONText "DicomConfigFilterProFile"

instance ToJSON DicomConfigFilterProFile where
    toJSON = toJSONText
