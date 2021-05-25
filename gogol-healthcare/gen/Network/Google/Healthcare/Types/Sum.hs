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

import Network.Google.Prelude hiding (Bytes)

-- | Optional. The view for EvaluateUserConsentsResponse. If unspecified,
-- defaults to \`BASIC\` and returns \`consented\` as \`TRUE\` or
-- \`FALSE\`.
data EvaluateUserConsentsRequestResponseView
    = ResponseViewUnspecified
      -- ^ @RESPONSE_VIEW_UNSPECIFIED@
      -- No response view specified. The API will default to the BASIC view.
    | Basic
      -- ^ @BASIC@
      -- Only the \`data_id\` and \`consented\` fields are populated in the
      -- response.
    | Full
      -- ^ @FULL@
      -- All fields within the response are populated. When set to \`FULL\`, all
      -- \`ACTIVE\` Consents are evaluated even if a matching policy is found
      -- during evaluation.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable EvaluateUserConsentsRequestResponseView

instance FromHttpApiData EvaluateUserConsentsRequestResponseView where
    parseQueryParam = \case
        "RESPONSE_VIEW_UNSPECIFIED" -> Right ResponseViewUnspecified
        "BASIC" -> Right Basic
        "FULL" -> Right Full
        x -> Left ("Unable to parse EvaluateUserConsentsRequestResponseView from: " <> x)

instance ToHttpApiData EvaluateUserConsentsRequestResponseView where
    toQueryParam = \case
        ResponseViewUnspecified -> "RESPONSE_VIEW_UNSPECIFIED"
        Basic -> "BASIC"
        Full -> "FULL"

instance FromJSON EvaluateUserConsentsRequestResponseView where
    parseJSON = parseJSONText "EvaluateUserConsentsRequestResponseView"

instance ToJSON EvaluateUserConsentsRequestResponseView where
    toJSON = toJSONText

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

-- | Required. The category of the attribute. The value of this field cannot
-- be changed after creation.
data AttributeDefinitionCategory
    = CategoryUnspecified
      -- ^ @CATEGORY_UNSPECIFIED@
      -- No category specified. This option is invalid.
    | Resource
      -- ^ @RESOURCE@
      -- Specify this category when this attribute describes the properties of
      -- resources. For example, data anonymity or data type.
    | Request'
      -- ^ @REQUEST@
      -- Specify this category when this attribute describes the properties of
      -- requests. For example, requester\'s role or requester\'s organization.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable AttributeDefinitionCategory

instance FromHttpApiData AttributeDefinitionCategory where
    parseQueryParam = \case
        "CATEGORY_UNSPECIFIED" -> Right CategoryUnspecified
        "RESOURCE" -> Right Resource
        "REQUEST" -> Right Request'
        x -> Left ("Unable to parse AttributeDefinitionCategory from: " <> x)

instance ToHttpApiData AttributeDefinitionCategory where
    toQueryParam = \case
        CategoryUnspecified -> "CATEGORY_UNSPECIFIED"
        Resource -> "RESOURCE"
        Request' -> "REQUEST"

instance FromJSON AttributeDefinitionCategory where
    parseJSON = parseJSONText "AttributeDefinitionCategory"

instance ToJSON AttributeDefinitionCategory where
    toJSON = toJSONText

-- | Specifies which parts of the Message resource to return in the response.
-- When unspecified, equivalent to FULL.
data ProjectsLocationsDataSetsHl7V2StoresMessagesGetView
    = PLDSHVSMGVMessageViewUnspecified
      -- ^ @MESSAGE_VIEW_UNSPECIFIED@
      -- Not specified, equivalent to FULL.
    | PLDSHVSMGVRawOnly
      -- ^ @RAW_ONLY@
      -- Server responses include all the message fields except parsed_data
      -- field, and schematized_data fields.
    | PLDSHVSMGVParsedOnly
      -- ^ @PARSED_ONLY@
      -- Server responses include all the message fields except data field, and
      -- schematized_data fields.
    | PLDSHVSMGVFull
      -- ^ @FULL@
      -- Server responses include all the message fields.
    | PLDSHVSMGVSchematizedOnly
      -- ^ @SCHEMATIZED_ONLY@
      -- Server responses include all the message fields except data and
      -- parsed_data fields.
    | PLDSHVSMGVBasic
      -- ^ @BASIC@
      -- Server responses include only the name field.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ProjectsLocationsDataSetsHl7V2StoresMessagesGetView

instance FromHttpApiData ProjectsLocationsDataSetsHl7V2StoresMessagesGetView where
    parseQueryParam = \case
        "MESSAGE_VIEW_UNSPECIFIED" -> Right PLDSHVSMGVMessageViewUnspecified
        "RAW_ONLY" -> Right PLDSHVSMGVRawOnly
        "PARSED_ONLY" -> Right PLDSHVSMGVParsedOnly
        "FULL" -> Right PLDSHVSMGVFull
        "SCHEMATIZED_ONLY" -> Right PLDSHVSMGVSchematizedOnly
        "BASIC" -> Right PLDSHVSMGVBasic
        x -> Left ("Unable to parse ProjectsLocationsDataSetsHl7V2StoresMessagesGetView from: " <> x)

instance ToHttpApiData ProjectsLocationsDataSetsHl7V2StoresMessagesGetView where
    toQueryParam = \case
        PLDSHVSMGVMessageViewUnspecified -> "MESSAGE_VIEW_UNSPECIFIED"
        PLDSHVSMGVRawOnly -> "RAW_ONLY"
        PLDSHVSMGVParsedOnly -> "PARSED_ONLY"
        PLDSHVSMGVFull -> "FULL"
        PLDSHVSMGVSchematizedOnly -> "SCHEMATIZED_ONLY"
        PLDSHVSMGVBasic -> "BASIC"

instance FromJSON ProjectsLocationsDataSetsHl7V2StoresMessagesGetView where
    parseJSON = parseJSONText "ProjectsLocationsDataSetsHl7V2StoresMessagesGetView"

instance ToJSON ProjectsLocationsDataSetsHl7V2StoresMessagesGetView where
    toJSON = toJSONText

-- | The content structure in the source location. If not specified, the
-- server treats the input source files as BUNDLE.
data ImportResourcesRequestContentStructure
    = IRRCSContentStructureUnspecified
      -- ^ @CONTENT_STRUCTURE_UNSPECIFIED@
      -- If the content structure is not specified, the default value \`BUNDLE\`
      -- is used.
    | IRRCSBundle
      -- ^ @BUNDLE@
      -- The source file contains one or more lines of newline-delimited JSON
      -- (ndjson). Each line is a bundle that contains one or more resources.
    | IRRCSResource
      -- ^ @RESOURCE@
      -- The source file contains one or more lines of newline-delimited JSON
      -- (ndjson). Each line is a single resource.
    | IRRCSBundlePretty
      -- ^ @BUNDLE_PRETTY@
      -- The entire file is one JSON bundle. The JSON can span multiple lines.
    | IRRCSResourcePretty
      -- ^ @RESOURCE_PRETTY@
      -- The entire file is one JSON resource. The JSON can span multiple lines.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ImportResourcesRequestContentStructure

instance FromHttpApiData ImportResourcesRequestContentStructure where
    parseQueryParam = \case
        "CONTENT_STRUCTURE_UNSPECIFIED" -> Right IRRCSContentStructureUnspecified
        "BUNDLE" -> Right IRRCSBundle
        "RESOURCE" -> Right IRRCSResource
        "BUNDLE_PRETTY" -> Right IRRCSBundlePretty
        "RESOURCE_PRETTY" -> Right IRRCSResourcePretty
        x -> Left ("Unable to parse ImportResourcesRequestContentStructure from: " <> x)

instance ToHttpApiData ImportResourcesRequestContentStructure where
    toQueryParam = \case
        IRRCSContentStructureUnspecified -> "CONTENT_STRUCTURE_UNSPECIFIED"
        IRRCSBundle -> "BUNDLE"
        IRRCSResource -> "RESOURCE"
        IRRCSBundlePretty -> "BUNDLE_PRETTY"
        IRRCSResourcePretty -> "RESOURCE_PRETTY"

instance FromJSON ImportResourcesRequestContentStructure where
    parseJSON = parseJSONText "ImportResourcesRequestContentStructure"

instance ToJSON ImportResourcesRequestContentStructure where
    toJSON = toJSONText

-- | If this is a primitive type then this field is the type of the primitive
-- For example, STRING. Leave unspecified for composite types.
data TypePrimitive
    = PrimitiveUnspecified
      -- ^ @PRIMITIVE_UNSPECIFIED@
      -- Not a primitive.
    | String
      -- ^ @STRING@
      -- String primitive.
    | Varies
      -- ^ @VARIES@
      -- Element that can have unschematized children.
    | UnescapedString
      -- ^ @UNESCAPED_STRING@
      -- Like STRING, but all delimiters below this element are ignored.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable TypePrimitive

instance FromHttpApiData TypePrimitive where
    parseQueryParam = \case
        "PRIMITIVE_UNSPECIFIED" -> Right PrimitiveUnspecified
        "STRING" -> Right String
        "VARIES" -> Right Varies
        "UNESCAPED_STRING" -> Right UnescapedString
        x -> Left ("Unable to parse TypePrimitive from: " <> x)

instance ToHttpApiData TypePrimitive where
    toQueryParam = \case
        PrimitiveUnspecified -> "PRIMITIVE_UNSPECIFIED"
        String -> "STRING"
        Varies -> "VARIES"
        UnescapedString -> "UNESCAPED_STRING"

instance FromJSON TypePrimitive where
    parseJSON = parseJSONText "TypePrimitive"

instance ToJSON TypePrimitive where
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

-- | Determines how messages that fail to parse are handled.
data SchemaPackageSchematizedParsingType
    = SchematizedParsingTypeUnspecified
      -- ^ @SCHEMATIZED_PARSING_TYPE_UNSPECIFIED@
      -- Unspecified schematized parsing type, equivalent to \`SOFT_FAIL\`.
    | SoftFail
      -- ^ @SOFT_FAIL@
      -- Messages that fail to parse are still stored and ACKed but a parser
      -- error is stored in place of the schematized data.
    | HardFail
      -- ^ @HARD_FAIL@
      -- Messages that fail to parse are rejected from ingestion\/insertion and
      -- return an error code.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable SchemaPackageSchematizedParsingType

instance FromHttpApiData SchemaPackageSchematizedParsingType where
    parseQueryParam = \case
        "SCHEMATIZED_PARSING_TYPE_UNSPECIFIED" -> Right SchematizedParsingTypeUnspecified
        "SOFT_FAIL" -> Right SoftFail
        "HARD_FAIL" -> Right HardFail
        x -> Left ("Unable to parse SchemaPackageSchematizedParsingType from: " <> x)

instance ToHttpApiData SchemaPackageSchematizedParsingType where
    toQueryParam = \case
        SchematizedParsingTypeUnspecified -> "SCHEMATIZED_PARSING_TYPE_UNSPECIFIED"
        SoftFail -> "SOFT_FAIL"
        HardFail -> "HARD_FAIL"

instance FromJSON SchemaPackageSchematizedParsingType where
    parseJSON = parseJSONText "SchemaPackageSchematizedParsingType"

instance ToJSON SchemaPackageSchematizedParsingType where
    toJSON = toJSONText

-- | The evaluation result.
data ConsentEvaluationEvaluationResult
    = EvaluationResultUnspecified
      -- ^ @EVALUATION_RESULT_UNSPECIFIED@
      -- No evaluation result specified. This option is invalid.
    | NotApplicable
      -- ^ @NOT_APPLICABLE@
      -- The Consent is not applicable to the requested access determination. For
      -- example, the Consent does not apply to the user for which the access
      -- determination is requested, or it has a \`state\` of \`REVOKED\`, or it
      -- has expired.
    | NoMatchingPolicy
      -- ^ @NO_MATCHING_POLICY@
      -- The Consent does not have a policy that matches the
      -- \`resource_attributes\` of the evaluated resource.
    | NoSatisfiedPolicy
      -- ^ @NO_SATISFIED_POLICY@
      -- The Consent has at least one policy that matches the
      -- \`resource_attributes\` of the evaluated resource, but no
      -- \`authorization_rule\` was satisfied.
    | HasSatisfiedPolicy
      -- ^ @HAS_SATISFIED_POLICY@
      -- The Consent has at least one policy that matches the
      -- \`resource_attributes\` of the evaluated resource, and at least one
      -- \`authorization_rule\` was satisfied.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ConsentEvaluationEvaluationResult

instance FromHttpApiData ConsentEvaluationEvaluationResult where
    parseQueryParam = \case
        "EVALUATION_RESULT_UNSPECIFIED" -> Right EvaluationResultUnspecified
        "NOT_APPLICABLE" -> Right NotApplicable
        "NO_MATCHING_POLICY" -> Right NoMatchingPolicy
        "NO_SATISFIED_POLICY" -> Right NoSatisfiedPolicy
        "HAS_SATISFIED_POLICY" -> Right HasSatisfiedPolicy
        x -> Left ("Unable to parse ConsentEvaluationEvaluationResult from: " <> x)

instance ToHttpApiData ConsentEvaluationEvaluationResult where
    toQueryParam = \case
        EvaluationResultUnspecified -> "EVALUATION_RESULT_UNSPECIFIED"
        NotApplicable -> "NOT_APPLICABLE"
        NoMatchingPolicy -> "NO_MATCHING_POLICY"
        NoSatisfiedPolicy -> "NO_SATISFIED_POLICY"
        HasSatisfiedPolicy -> "HAS_SATISFIED_POLICY"

instance FromJSON ConsentEvaluationEvaluationResult where
    parseJSON = parseJSONText "ConsentEvaluationEvaluationResult"

instance ToJSON ConsentEvaluationEvaluationResult where
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

-- | Specifies the output schema type. Schema type is required.
data SchemaConfigSchemaType
    = SchemaTypeUnspecified
      -- ^ @SCHEMA_TYPE_UNSPECIFIED@
      -- No schema type specified. This type is unsupported.
    | Analytics
      -- ^ @ANALYTICS@
      -- Analytics schema defined by the FHIR community. See
      -- https:\/\/github.com\/FHIR\/sql-on-fhir\/blob\/master\/sql-on-fhir.md.
      -- BigQuery only allows a maximum of 10,000 columns per table. Due to this
      -- limitation, the server will not generate schemas for fields of type
      -- \`Resource\`, which can hold any resource type. The affected fields are
      -- \`Parameters.parameter.resource\`, \`Bundle.entry.resource\`, and
      -- \`Bundle.entry.response.outcome\`.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable SchemaConfigSchemaType

instance FromHttpApiData SchemaConfigSchemaType where
    parseQueryParam = \case
        "SCHEMA_TYPE_UNSPECIFIED" -> Right SchemaTypeUnspecified
        "ANALYTICS" -> Right Analytics
        x -> Left ("Unable to parse SchemaConfigSchemaType from: " <> x)

instance ToHttpApiData SchemaConfigSchemaType where
    toQueryParam = \case
        SchemaTypeUnspecified -> "SCHEMA_TYPE_UNSPECIFIED"
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
      -- Profile (DICOM Standard Edition 2018e)
      -- http:\/\/dicom.nema.org\/medical\/dicom\/2018e\/output\/chtml\/part15\/chapter_E.html.
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

-- | Optional. The view for CheckDataAccessResponse. If unspecified, defaults
-- to \`BASIC\` and returns \`consented\` as \`TRUE\` or \`FALSE\`.
data CheckDataAccessRequestResponseView
    = CDARRVResponseViewUnspecified
      -- ^ @RESPONSE_VIEW_UNSPECIFIED@
      -- No response view specified. The API will default to the BASIC view.
    | CDARRVBasic
      -- ^ @BASIC@
      -- Only the \`consented\` field is populated in CheckDataAccessResponse.
    | CDARRVFull
      -- ^ @FULL@
      -- All fields within CheckDataAccessResponse are populated. When set to
      -- \`FULL\`, all \`ACTIVE\` Consents are evaluated even if a matching
      -- policy is found during evaluation.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable CheckDataAccessRequestResponseView

instance FromHttpApiData CheckDataAccessRequestResponseView where
    parseQueryParam = \case
        "RESPONSE_VIEW_UNSPECIFIED" -> Right CDARRVResponseViewUnspecified
        "BASIC" -> Right CDARRVBasic
        "FULL" -> Right CDARRVFull
        x -> Left ("Unable to parse CheckDataAccessRequestResponseView from: " <> x)

instance ToHttpApiData CheckDataAccessRequestResponseView where
    toQueryParam = \case
        CDARRVResponseViewUnspecified -> "RESPONSE_VIEW_UNSPECIFIED"
        CDARRVBasic -> "BASIC"
        CDARRVFull -> "FULL"

instance FromJSON CheckDataAccessRequestResponseView where
    parseJSON = parseJSONText "CheckDataAccessRequestResponseView"

instance ToJSON CheckDataAccessRequestResponseView where
    toJSON = toJSONText

-- | Specifies the parts of the Message to return in the response. When
-- unspecified, equivalent to BASIC. Setting this to anything other than
-- BASIC with a \`page_size\` larger than the default can generate a large
-- response, which impacts the performance of this method.
data ProjectsLocationsDataSetsHl7V2StoresMessagesListView
    = PLDSHVSMLVMessageViewUnspecified
      -- ^ @MESSAGE_VIEW_UNSPECIFIED@
      -- Not specified, equivalent to FULL.
    | PLDSHVSMLVRawOnly
      -- ^ @RAW_ONLY@
      -- Server responses include all the message fields except parsed_data
      -- field, and schematized_data fields.
    | PLDSHVSMLVParsedOnly
      -- ^ @PARSED_ONLY@
      -- Server responses include all the message fields except data field, and
      -- schematized_data fields.
    | PLDSHVSMLVFull
      -- ^ @FULL@
      -- Server responses include all the message fields.
    | PLDSHVSMLVSchematizedOnly
      -- ^ @SCHEMATIZED_ONLY@
      -- Server responses include all the message fields except data and
      -- parsed_data fields.
    | PLDSHVSMLVBasic
      -- ^ @BASIC@
      -- Server responses include only the name field.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ProjectsLocationsDataSetsHl7V2StoresMessagesListView

instance FromHttpApiData ProjectsLocationsDataSetsHl7V2StoresMessagesListView where
    parseQueryParam = \case
        "MESSAGE_VIEW_UNSPECIFIED" -> Right PLDSHVSMLVMessageViewUnspecified
        "RAW_ONLY" -> Right PLDSHVSMLVRawOnly
        "PARSED_ONLY" -> Right PLDSHVSMLVParsedOnly
        "FULL" -> Right PLDSHVSMLVFull
        "SCHEMATIZED_ONLY" -> Right PLDSHVSMLVSchematizedOnly
        "BASIC" -> Right PLDSHVSMLVBasic
        x -> Left ("Unable to parse ProjectsLocationsDataSetsHl7V2StoresMessagesListView from: " <> x)

instance ToHttpApiData ProjectsLocationsDataSetsHl7V2StoresMessagesListView where
    toQueryParam = \case
        PLDSHVSMLVMessageViewUnspecified -> "MESSAGE_VIEW_UNSPECIFIED"
        PLDSHVSMLVRawOnly -> "RAW_ONLY"
        PLDSHVSMLVParsedOnly -> "PARSED_ONLY"
        PLDSHVSMLVFull -> "FULL"
        PLDSHVSMLVSchematizedOnly -> "SCHEMATIZED_ONLY"
        PLDSHVSMLVBasic -> "BASIC"

instance FromJSON ProjectsLocationsDataSetsHl7V2StoresMessagesListView where
    parseJSON = parseJSONText "ProjectsLocationsDataSetsHl7V2StoresMessagesListView"

instance ToJSON ProjectsLocationsDataSetsHl7V2StoresMessagesListView where
    toJSON = toJSONText

-- | Immutable. The FHIR specification version that this FHIR store supports
-- natively. This field is immutable after store creation. Requests are
-- rejected if they contain FHIR resources of a different version. Version
-- is required for every FHIR store.
data FhirStoreVersion
    = VersionUnspecified
      -- ^ @VERSION_UNSPECIFIED@
      -- Users must specify a version on store creation or an error is returned.
    | DSTU2
      -- ^ @DSTU2@
      -- Draft Standard for Trial Use, [Release
      -- 2](https:\/\/www.hl7.org\/fhir\/DSTU2)
    | STU3
      -- ^ @STU3@
      -- Standard for Trial Use, [Release 3](https:\/\/www.hl7.org\/fhir\/STU3)
    | R4
      -- ^ @R4@
      -- [Release 4](https:\/\/www.hl7.org\/fhir\/R4)
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable FhirStoreVersion

instance FromHttpApiData FhirStoreVersion where
    parseQueryParam = \case
        "VERSION_UNSPECIFIED" -> Right VersionUnspecified
        "DSTU2" -> Right DSTU2
        "STU3" -> Right STU3
        "R4" -> Right R4
        x -> Left ("Unable to parse FhirStoreVersion from: " <> x)

instance ToHttpApiData FhirStoreVersion where
    toQueryParam = \case
        VersionUnspecified -> "VERSION_UNSPECIFIED"
        DSTU2 -> "DSTU2"
        STU3 -> "STU3"
        R4 -> "R4"

instance FromJSON FhirStoreVersion where
    parseJSON = parseJSONText "FhirStoreVersion"

instance ToJSON FhirStoreVersion where
    toJSON = toJSONText

-- | Determines if existing data in the destination dataset is overwritten,
-- appended to, or not written if the tables contain data. If a
-- write_disposition is specified, the \`force\` parameter is ignored.
data GoogleCloudHealthcareV1FhirBigQueryDestinationWriteDisPosition
    = WriteDisPositionUnspecified
      -- ^ @WRITE_DISPOSITION_UNSPECIFIED@
      -- Default behavior is the same as WRITE_EMPTY.
    | WriteEmpty
      -- ^ @WRITE_EMPTY@
      -- Only export data if the destination tables are empty.
    | WriteTruncate
      -- ^ @WRITE_TRUNCATE@
      -- Erase all existing data in the tables before writing the instances.
    | WriteAppend
      -- ^ @WRITE_APPEND@
      -- Append data to the existing tables.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable GoogleCloudHealthcareV1FhirBigQueryDestinationWriteDisPosition

instance FromHttpApiData GoogleCloudHealthcareV1FhirBigQueryDestinationWriteDisPosition where
    parseQueryParam = \case
        "WRITE_DISPOSITION_UNSPECIFIED" -> Right WriteDisPositionUnspecified
        "WRITE_EMPTY" -> Right WriteEmpty
        "WRITE_TRUNCATE" -> Right WriteTruncate
        "WRITE_APPEND" -> Right WriteAppend
        x -> Left ("Unable to parse GoogleCloudHealthcareV1FhirBigQueryDestinationWriteDisPosition from: " <> x)

instance ToHttpApiData GoogleCloudHealthcareV1FhirBigQueryDestinationWriteDisPosition where
    toQueryParam = \case
        WriteDisPositionUnspecified -> "WRITE_DISPOSITION_UNSPECIFIED"
        WriteEmpty -> "WRITE_EMPTY"
        WriteTruncate -> "WRITE_TRUNCATE"
        WriteAppend -> "WRITE_APPEND"

instance FromJSON GoogleCloudHealthcareV1FhirBigQueryDestinationWriteDisPosition where
    parseJSON = parseJSONText "GoogleCloudHealthcareV1FhirBigQueryDestinationWriteDisPosition"

instance ToJSON GoogleCloudHealthcareV1FhirBigQueryDestinationWriteDisPosition where
    toJSON = toJSONText

-- | Required. Indicates the current state of this Consent.
data ConsentState
    = StateUnspecified
      -- ^ @STATE_UNSPECIFIED@
      -- No state specified. Treated as ACTIVE only at the time of resource
      -- creation.
    | Active
      -- ^ @ACTIVE@
      -- The Consent is active and is considered when evaluating a user\'s
      -- consent on resources.
    | Archived
      -- ^ @ARCHIVED@
      -- When a Consent is updated, the current version is archived and a new one
      -- is created with its state set to the updated Consent\'s previous state.
    | Revoked
      -- ^ @REVOKED@
      -- A revoked Consent is not considered when evaluating a user\'s consent on
      -- resources.
    | Draft
      -- ^ @DRAFT@
      -- A draft Consent is not considered when evaluating a user\'s consent on
      -- resources unless explicitly specified.
    | Rejected
      -- ^ @REJECTED@
      -- When a draft Consent is rejected by a user, it is set to a rejected
      -- state. A rejected Consent is not considered when evaluating a user\'s
      -- consent on resources.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ConsentState

instance FromHttpApiData ConsentState where
    parseQueryParam = \case
        "STATE_UNSPECIFIED" -> Right StateUnspecified
        "ACTIVE" -> Right Active
        "ARCHIVED" -> Right Archived
        "REVOKED" -> Right Revoked
        "DRAFT" -> Right Draft
        "REJECTED" -> Right Rejected
        x -> Left ("Unable to parse ConsentState from: " <> x)

instance ToHttpApiData ConsentState where
    toQueryParam = \case
        StateUnspecified -> "STATE_UNSPECIFIED"
        Active -> "ACTIVE"
        Archived -> "ARCHIVED"
        Revoked -> "REVOKED"
        Draft -> "DRAFT"
        Rejected -> "REJECTED"

instance FromJSON ConsentState where
    parseJSON = parseJSONText "ConsentState"

instance ToJSON ConsentState where
    toJSON = toJSONText
