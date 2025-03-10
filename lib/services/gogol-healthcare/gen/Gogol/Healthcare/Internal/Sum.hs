{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE ImportQualifiedPost #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.Healthcare.Internal.Sum
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Gogol.Healthcare.Internal.Sum
  ( -- * Xgafv
    Xgafv
      ( Xgafv_1,
        Xgafv_2,
        ..
      ),

    -- * AccessDeterminationLogConfig_LogLevel
    AccessDeterminationLogConfig_LogLevel
      ( AccessDeterminationLogConfig_LogLevel_LOGLEVELUNSPECIFIED,
        AccessDeterminationLogConfig_LogLevel_Disabled,
        AccessDeterminationLogConfig_LogLevel_Minimum,
        AccessDeterminationLogConfig_LogLevel_Verbose,
        ..
      ),

    -- * AnalyzeEntitiesRequest_AlternativeOutputFormat
    AnalyzeEntitiesRequest_AlternativeOutputFormat
      ( AnalyzeEntitiesRequest_AlternativeOutputFormat_ALTERNATIVEOUTPUTFORMATUNSPECIFIED,
        AnalyzeEntitiesRequest_AlternativeOutputFormat_FHIRBUNDLE,
        ..
      ),

    -- * AnalyzeEntitiesRequest_LicensedVocabulariesItem
    AnalyzeEntitiesRequest_LicensedVocabulariesItem
      ( AnalyzeEntitiesRequest_LicensedVocabulariesItem_LICENSEDVOCABULARYUNSPECIFIED,
        AnalyzeEntitiesRequest_LicensedVocabulariesItem_ICD10CM,
        AnalyzeEntitiesRequest_LicensedVocabulariesItem_SNOMEDCTUS,
        ..
      ),

    -- * AttributeDefinition_Category
    AttributeDefinition_Category
      ( AttributeDefinition_Category_CATEGORYUNSPECIFIED,
        AttributeDefinition_Category_Resource,
        AttributeDefinition_Category_Request',
        ..
      ),

    -- * AuditLogConfig_LogType
    AuditLogConfig_LogType
      ( AuditLogConfig_LogType_LOGTYPEUNSPECIFIED,
        AuditLogConfig_LogType_ADMINREAD,
        AuditLogConfig_LogType_DATAWRITE,
        AuditLogConfig_LogType_DATAREAD,
        ..
      ),

    -- * BlobStorageInfo_StorageClass
    BlobStorageInfo_StorageClass
      ( BlobStorageInfo_StorageClass_BLOBSTORAGECLASSUNSPECIFIED,
        BlobStorageInfo_StorageClass_Standard,
        BlobStorageInfo_StorageClass_Nearline,
        BlobStorageInfo_StorageClass_Coldline,
        BlobStorageInfo_StorageClass_Archive,
        ..
      ),

    -- * BlobStorageSettings_BlobStorageClass
    BlobStorageSettings_BlobStorageClass
      ( BlobStorageSettings_BlobStorageClass_BLOBSTORAGECLASSUNSPECIFIED,
        BlobStorageSettings_BlobStorageClass_Standard,
        BlobStorageSettings_BlobStorageClass_Nearline,
        BlobStorageSettings_BlobStorageClass_Coldline,
        BlobStorageSettings_BlobStorageClass_Archive,
        ..
      ),

    -- * CheckDataAccessRequest_ResponseView
    CheckDataAccessRequest_ResponseView
      ( CheckDataAccessRequest_ResponseView_RESPONSEVIEWUNSPECIFIED,
        CheckDataAccessRequest_ResponseView_Basic,
        CheckDataAccessRequest_ResponseView_Full,
        ..
      ),

    -- * Consent_State
    Consent_State
      ( Consent_State_STATEUNSPECIFIED,
        Consent_State_Active,
        Consent_State_Archived,
        Consent_State_Revoked,
        Consent_State_Draft,
        Consent_State_Rejected,
        ..
      ),

    -- * ConsentConfig_Version
    ConsentConfig_Version
      ( ConsentConfig_Version_CONSENTENFORCEMENTVERSIONUNSPECIFIED,
        ConsentConfig_Version_V1,
        ..
      ),

    -- * ConsentEvaluation_EvaluationResult
    ConsentEvaluation_EvaluationResult
      ( ConsentEvaluation_EvaluationResult_EVALUATIONRESULTUNSPECIFIED,
        ConsentEvaluation_EvaluationResult_NOTAPPLICABLE,
        ConsentEvaluation_EvaluationResult_NOMATCHINGPOLICY,
        ConsentEvaluation_EvaluationResult_NOSATISFIEDPOLICY,
        ConsentEvaluation_EvaluationResult_HASSATISFIEDPOLICY,
        ..
      ),

    -- * ConsentHeaderHandling_Profile
    ConsentHeaderHandling_Profile
      ( ConsentHeaderHandling_Profile_SCOPEPROFILEUNSPECIFIED,
        ConsentHeaderHandling_Profile_PERMITEMPTYSCOPE,
        ConsentHeaderHandling_Profile_REQUIREDONREAD,
        ..
      ),

    -- * DicomConfig_FilterProfile
    DicomConfig_FilterProfile
      ( DicomConfig_FilterProfile_TAGFILTERPROFILEUNSPECIFIED,
        DicomConfig_FilterProfile_MINIMALKEEPLISTPROFILE,
        DicomConfig_FilterProfile_ATTRIBUTECONFIDENTIALITYBASICPROFILE,
        DicomConfig_FilterProfile_KEEPALLPROFILE,
        DicomConfig_FilterProfile_DEIDENTIFYTAGCONTENTS,
        ..
      ),

    -- * EvaluateUserConsentsRequest_ResponseView
    EvaluateUserConsentsRequest_ResponseView
      ( EvaluateUserConsentsRequest_ResponseView_RESPONSEVIEWUNSPECIFIED,
        EvaluateUserConsentsRequest_ResponseView_Basic,
        EvaluateUserConsentsRequest_ResponseView_Full,
        ..
      ),

    -- * ExplainDataAccessConsentInfo_Type
    ExplainDataAccessConsentInfo_Type
      ( ExplainDataAccessConsentInfo_Type_CONSENTPOLICYTYPEUNSPECIFIED,
        ExplainDataAccessConsentInfo_Type_CONSENTPOLICYTYPEPATIENT,
        ExplainDataAccessConsentInfo_Type_CONSENTPOLICYTYPEADMIN,
        ..
      ),

    -- * ExplainDataAccessConsentInfo_VariantsItem
    ExplainDataAccessConsentInfo_VariantsItem
      ( ExplainDataAccessConsentInfo_VariantsItem_CONSENTVARIANTUNSPECIFIED,
        ExplainDataAccessConsentInfo_VariantsItem_CONSENTVARIANTSTANDARD,
        ExplainDataAccessConsentInfo_VariantsItem_CONSENTVARIANTCASCADE,
        ..
      ),

    -- * ExplainDataAccessConsentScope_Decision
    ExplainDataAccessConsentScope_Decision
      ( ExplainDataAccessConsentScope_Decision_CONSENTDECISIONTYPEUNSPECIFIED,
        ExplainDataAccessConsentScope_Decision_CONSENTDECISIONTYPEPERMIT,
        ExplainDataAccessConsentScope_Decision_CONSENTDECISIONTYPEDENY,
        ..
      ),

    -- * FhirStore_ComplexDataTypeReferenceParsing
    FhirStore_ComplexDataTypeReferenceParsing
      ( FhirStore_ComplexDataTypeReferenceParsing_COMPLEXDATATYPEREFERENCEPARSINGUNSPECIFIED,
        FhirStore_ComplexDataTypeReferenceParsing_Disabled,
        FhirStore_ComplexDataTypeReferenceParsing_Enabled,
        ..
      ),

    -- * FhirStore_Version
    FhirStore_Version
      ( FhirStore_Version_VERSIONUNSPECIFIED,
        FhirStore_Version_DSTU2,
        FhirStore_Version_STU3,
        FhirStore_Version_R4,
        ..
      ),

    -- * FieldMetadata_Action
    FieldMetadata_Action
      ( FieldMetadata_Action_ACTIONUNSPECIFIED,
        FieldMetadata_Action_Transform,
        FieldMetadata_Action_INSPECTANDTRANSFORM,
        FieldMetadata_Action_DONOTTRANSFORM,
        ..
      ),

    -- * GcsDestination_ContentStructure
    GcsDestination_ContentStructure
      ( GcsDestination_ContentStructure_CONTENTSTRUCTUREUNSPECIFIED,
        GcsDestination_ContentStructure_MESSAGEJSON,
        ..
      ),

    -- * GcsDestination_MessageView
    GcsDestination_MessageView
      ( GcsDestination_MessageView_MESSAGEVIEWUNSPECIFIED,
        GcsDestination_MessageView_RAWONLY,
        GcsDestination_MessageView_PARSEDONLY,
        GcsDestination_MessageView_Full,
        GcsDestination_MessageView_SCHEMATIZEDONLY,
        GcsDestination_MessageView_Basic,
        ..
      ),

    -- * GoogleCloudHealthcareV1DicomBigQueryDestination_WriteDisposition
    GoogleCloudHealthcareV1DicomBigQueryDestination_WriteDisposition
      ( GoogleCloudHealthcareV1DicomBigQueryDestination_WriteDisposition_WRITEDISPOSITIONUNSPECIFIED,
        GoogleCloudHealthcareV1DicomBigQueryDestination_WriteDisposition_WRITEEMPTY,
        GoogleCloudHealthcareV1DicomBigQueryDestination_WriteDisposition_WRITETRUNCATE,
        GoogleCloudHealthcareV1DicomBigQueryDestination_WriteDisposition_WRITEAPPEND,
        ..
      ),

    -- * GoogleCloudHealthcareV1FhirBigQueryDestination_WriteDisposition
    GoogleCloudHealthcareV1FhirBigQueryDestination_WriteDisposition
      ( GoogleCloudHealthcareV1FhirBigQueryDestination_WriteDisposition_WRITEDISPOSITIONUNSPECIFIED,
        GoogleCloudHealthcareV1FhirBigQueryDestination_WriteDisposition_WRITEEMPTY,
        GoogleCloudHealthcareV1FhirBigQueryDestination_WriteDisposition_WRITETRUNCATE,
        GoogleCloudHealthcareV1FhirBigQueryDestination_WriteDisposition_WRITEAPPEND,
        ..
      ),

    -- * ImageConfig_TextRedactionMode
    ImageConfig_TextRedactionMode
      ( ImageConfig_TextRedactionMode_TEXTREDACTIONMODEUNSPECIFIED,
        ImageConfig_TextRedactionMode_REDACTALLTEXT,
        ImageConfig_TextRedactionMode_REDACTSENSITIVETEXT,
        ImageConfig_TextRedactionMode_REDACTNOTEXT,
        ..
      ),

    -- * ImportResourcesRequest_ContentStructure
    ImportResourcesRequest_ContentStructure
      ( ImportResourcesRequest_ContentStructure_CONTENTSTRUCTUREUNSPECIFIED,
        ImportResourcesRequest_ContentStructure_Bundle,
        ImportResourcesRequest_ContentStructure_Resource,
        ImportResourcesRequest_ContentStructure_BUNDLEPRETTY,
        ImportResourcesRequest_ContentStructure_RESOURCEPRETTY,
        ..
      ),

    -- * ParserConfig_Version
    ParserConfig_Version
      ( ParserConfig_Version_PARSERVERSIONUNSPECIFIED,
        ParserConfig_Version_V1,
        ParserConfig_Version_V2,
        ParserConfig_Version_V3,
        ..
      ),

    -- * RollbackFhirResourcesRequest_ChangeType
    RollbackFhirResourcesRequest_ChangeType
      ( RollbackFhirResourcesRequest_ChangeType_CHANGETYPEUNSPECIFIED,
        RollbackFhirResourcesRequest_ChangeType_All,
        RollbackFhirResourcesRequest_ChangeType_Create,
        RollbackFhirResourcesRequest_ChangeType_Update,
        RollbackFhirResourcesRequest_ChangeType_Delete',
        ..
      ),

    -- * RollbackHl7V2MessagesRequest_ChangeType
    RollbackHl7V2MessagesRequest_ChangeType
      ( RollbackHl7V2MessagesRequest_ChangeType_CHANGETYPEUNSPECIFIED,
        RollbackHl7V2MessagesRequest_ChangeType_All,
        RollbackHl7V2MessagesRequest_ChangeType_Create,
        RollbackHl7V2MessagesRequest_ChangeType_Update,
        RollbackHl7V2MessagesRequest_ChangeType_Delete',
        ..
      ),

    -- * SchemaConfig_SchemaType
    SchemaConfig_SchemaType
      ( SchemaConfig_SchemaType_SCHEMATYPEUNSPECIFIED,
        SchemaConfig_SchemaType_Analytics,
        SchemaConfig_SchemaType_ANALYTICS_V2,
        ..
      ),

    -- * SchemaPackage_SchematizedParsingType
    SchemaPackage_SchematizedParsingType
      ( SchemaPackage_SchematizedParsingType_SCHEMATIZEDPARSINGTYPEUNSPECIFIED,
        SchemaPackage_SchematizedParsingType_SOFTFAIL,
        SchemaPackage_SchematizedParsingType_HARDFAIL,
        ..
      ),

    -- * SchemaPackage_UnexpectedSegmentHandling
    SchemaPackage_UnexpectedSegmentHandling
      ( SchemaPackage_UnexpectedSegmentHandling_UNEXPECTEDSEGMENTHANDLINGMODEUNSPECIFIED,
        SchemaPackage_UnexpectedSegmentHandling_Fail,
        SchemaPackage_UnexpectedSegmentHandling_Skip,
        SchemaPackage_UnexpectedSegmentHandling_Parse,
        ..
      ),

    -- * TimePartitioning_Type
    TimePartitioning_Type
      ( TimePartitioning_Type_PARTITIONTYPEUNSPECIFIED,
        TimePartitioning_Type_Hour,
        TimePartitioning_Type_Day,
        TimePartitioning_Type_Month,
        TimePartitioning_Type_Year,
        ..
      ),

    -- * Type_Primitive
    Type_Primitive
      ( Type_Primitive_PRIMITIVEUNSPECIFIED,
        Type_Primitive_String,
        Type_Primitive_Varies,
        Type_Primitive_UNESCAPEDSTRING,
        ..
      ),

    -- * ProjectsLocationsDatasetsHl7V2StoresMessagesGetView
    ProjectsLocationsDatasetsHl7V2StoresMessagesGetView
      ( ProjectsLocationsDatasetsHl7V2StoresMessagesGetView_MESSAGEVIEWUNSPECIFIED,
        ProjectsLocationsDatasetsHl7V2StoresMessagesGetView_RAWONLY,
        ProjectsLocationsDatasetsHl7V2StoresMessagesGetView_PARSEDONLY,
        ProjectsLocationsDatasetsHl7V2StoresMessagesGetView_Full,
        ProjectsLocationsDatasetsHl7V2StoresMessagesGetView_SCHEMATIZEDONLY,
        ProjectsLocationsDatasetsHl7V2StoresMessagesGetView_Basic,
        ..
      ),

    -- * ProjectsLocationsDatasetsHl7V2StoresMessagesListView
    ProjectsLocationsDatasetsHl7V2StoresMessagesListView
      ( ProjectsLocationsDatasetsHl7V2StoresMessagesListView_MESSAGEVIEWUNSPECIFIED,
        ProjectsLocationsDatasetsHl7V2StoresMessagesListView_RAWONLY,
        ProjectsLocationsDatasetsHl7V2StoresMessagesListView_PARSEDONLY,
        ProjectsLocationsDatasetsHl7V2StoresMessagesListView_Full,
        ProjectsLocationsDatasetsHl7V2StoresMessagesListView_SCHEMATIZEDONLY,
        ProjectsLocationsDatasetsHl7V2StoresMessagesListView_Basic,
        ..
      ),
  )
where

import Gogol.Prelude qualified as Core

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

-- | Optional. Controls the amount of detail to include as part of the audit logs.
newtype AccessDeterminationLogConfig_LogLevel = AccessDeterminationLogConfig_LogLevel {fromAccessDeterminationLogConfig_LogLevel :: Core.Text}
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

-- | No log level specified. This value is unused.
pattern AccessDeterminationLogConfig_LogLevel_LOGLEVELUNSPECIFIED :: AccessDeterminationLogConfig_LogLevel
pattern AccessDeterminationLogConfig_LogLevel_LOGLEVELUNSPECIFIED = AccessDeterminationLogConfig_LogLevel "LOG_LEVEL_UNSPECIFIED"

-- | No additional consent-related logging is added to audit logs.
pattern AccessDeterminationLogConfig_LogLevel_Disabled :: AccessDeterminationLogConfig_LogLevel
pattern AccessDeterminationLogConfig_LogLevel_Disabled = AccessDeterminationLogConfig_LogLevel "DISABLED"

-- | The following information is included: * One of the following <https://cloud.google.com/healthcare-api/docs/fhir-consent#audit_logs consentMode> fields: (@off@|@emptyScope@|@enforced@|@btg@|@bypass@). * The accessor\'s request headers * The @log_level@ of the AccessDeterminationLogConfig * The final consent evaluation (@PERMIT@, @DENY@, or @NO_CONSENT@) * A human-readable summary of the evaluation
pattern AccessDeterminationLogConfig_LogLevel_Minimum :: AccessDeterminationLogConfig_LogLevel
pattern AccessDeterminationLogConfig_LogLevel_Minimum = AccessDeterminationLogConfig_LogLevel "MINIMUM"

-- | Includes @MINIMUM@ and, for each resource owner, returns: * The resource owner\'s name * Most specific part of the @X-Consent-Scope@ resulting in consensual determination * Timestamp of the applied enforcement leading to the decision * Enforcement version at the time the applicable consents were applied * The Consent resource name * The timestamp of the Consent resource used for enforcement * Policy type (@PATIENT@ or @ADMIN@) Note that this mode adds some overhead to CRUD operations.
pattern AccessDeterminationLogConfig_LogLevel_Verbose :: AccessDeterminationLogConfig_LogLevel
pattern AccessDeterminationLogConfig_LogLevel_Verbose = AccessDeterminationLogConfig_LogLevel "VERBOSE"

{-# COMPLETE
  AccessDeterminationLogConfig_LogLevel_LOGLEVELUNSPECIFIED,
  AccessDeterminationLogConfig_LogLevel_Disabled,
  AccessDeterminationLogConfig_LogLevel_Minimum,
  AccessDeterminationLogConfig_LogLevel_Verbose,
  AccessDeterminationLogConfig_LogLevel
  #-}

-- | Optional. Alternative output format to be generated based on the results of analysis.
newtype AnalyzeEntitiesRequest_AlternativeOutputFormat = AnalyzeEntitiesRequest_AlternativeOutputFormat {fromAnalyzeEntitiesRequest_AlternativeOutputFormat :: Core.Text}
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

-- | No alternative output format is specified.
pattern AnalyzeEntitiesRequest_AlternativeOutputFormat_ALTERNATIVEOUTPUTFORMATUNSPECIFIED :: AnalyzeEntitiesRequest_AlternativeOutputFormat
pattern AnalyzeEntitiesRequest_AlternativeOutputFormat_ALTERNATIVEOUTPUTFORMATUNSPECIFIED = AnalyzeEntitiesRequest_AlternativeOutputFormat "ALTERNATIVE_OUTPUT_FORMAT_UNSPECIFIED"

-- | FHIR bundle output.
pattern AnalyzeEntitiesRequest_AlternativeOutputFormat_FHIRBUNDLE :: AnalyzeEntitiesRequest_AlternativeOutputFormat
pattern AnalyzeEntitiesRequest_AlternativeOutputFormat_FHIRBUNDLE = AnalyzeEntitiesRequest_AlternativeOutputFormat "FHIR_BUNDLE"

{-# COMPLETE
  AnalyzeEntitiesRequest_AlternativeOutputFormat_ALTERNATIVEOUTPUTFORMATUNSPECIFIED,
  AnalyzeEntitiesRequest_AlternativeOutputFormat_FHIRBUNDLE,
  AnalyzeEntitiesRequest_AlternativeOutputFormat
  #-}

newtype AnalyzeEntitiesRequest_LicensedVocabulariesItem = AnalyzeEntitiesRequest_LicensedVocabulariesItem {fromAnalyzeEntitiesRequest_LicensedVocabulariesItem :: Core.Text}
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

-- | No licensed vocabulary specified.
pattern AnalyzeEntitiesRequest_LicensedVocabulariesItem_LICENSEDVOCABULARYUNSPECIFIED :: AnalyzeEntitiesRequest_LicensedVocabulariesItem
pattern AnalyzeEntitiesRequest_LicensedVocabulariesItem_LICENSEDVOCABULARYUNSPECIFIED = AnalyzeEntitiesRequest_LicensedVocabulariesItem "LICENSED_VOCABULARY_UNSPECIFIED"

-- | ICD-10-CM vocabulary
pattern AnalyzeEntitiesRequest_LicensedVocabulariesItem_ICD10CM :: AnalyzeEntitiesRequest_LicensedVocabulariesItem
pattern AnalyzeEntitiesRequest_LicensedVocabulariesItem_ICD10CM = AnalyzeEntitiesRequest_LicensedVocabulariesItem "ICD10CM"

-- | SNOMED CT (US version) vocabulary
pattern AnalyzeEntitiesRequest_LicensedVocabulariesItem_SNOMEDCTUS :: AnalyzeEntitiesRequest_LicensedVocabulariesItem
pattern AnalyzeEntitiesRequest_LicensedVocabulariesItem_SNOMEDCTUS = AnalyzeEntitiesRequest_LicensedVocabulariesItem "SNOMEDCT_US"

{-# COMPLETE
  AnalyzeEntitiesRequest_LicensedVocabulariesItem_LICENSEDVOCABULARYUNSPECIFIED,
  AnalyzeEntitiesRequest_LicensedVocabulariesItem_ICD10CM,
  AnalyzeEntitiesRequest_LicensedVocabulariesItem_SNOMEDCTUS,
  AnalyzeEntitiesRequest_LicensedVocabulariesItem
  #-}

-- | Required. The category of the attribute. The value of this field cannot be changed after creation.
newtype AttributeDefinition_Category = AttributeDefinition_Category {fromAttributeDefinition_Category :: Core.Text}
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

-- | No category specified. This option is invalid.
pattern AttributeDefinition_Category_CATEGORYUNSPECIFIED :: AttributeDefinition_Category
pattern AttributeDefinition_Category_CATEGORYUNSPECIFIED = AttributeDefinition_Category "CATEGORY_UNSPECIFIED"

-- | Specify this category when this attribute describes the properties of resources. For example, data anonymity or data type.
pattern AttributeDefinition_Category_Resource :: AttributeDefinition_Category
pattern AttributeDefinition_Category_Resource = AttributeDefinition_Category "RESOURCE"

-- | Specify this category when this attribute describes the properties of requests. For example, requester\'s role or requester\'s organization.
pattern AttributeDefinition_Category_Request' :: AttributeDefinition_Category
pattern AttributeDefinition_Category_Request' = AttributeDefinition_Category "REQUEST"

{-# COMPLETE
  AttributeDefinition_Category_CATEGORYUNSPECIFIED,
  AttributeDefinition_Category_Resource,
  AttributeDefinition_Category_Request',
  AttributeDefinition_Category
  #-}

-- | The log type that this config enables.
newtype AuditLogConfig_LogType = AuditLogConfig_LogType {fromAuditLogConfig_LogType :: Core.Text}
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

-- | Default case. Should never be this.
pattern AuditLogConfig_LogType_LOGTYPEUNSPECIFIED :: AuditLogConfig_LogType
pattern AuditLogConfig_LogType_LOGTYPEUNSPECIFIED = AuditLogConfig_LogType "LOG_TYPE_UNSPECIFIED"

-- | Admin reads. Example: CloudIAM getIamPolicy
pattern AuditLogConfig_LogType_ADMINREAD :: AuditLogConfig_LogType
pattern AuditLogConfig_LogType_ADMINREAD = AuditLogConfig_LogType "ADMIN_READ"

-- | Data writes. Example: CloudSQL Users create
pattern AuditLogConfig_LogType_DATAWRITE :: AuditLogConfig_LogType
pattern AuditLogConfig_LogType_DATAWRITE = AuditLogConfig_LogType "DATA_WRITE"

-- | Data reads. Example: CloudSQL Users list
pattern AuditLogConfig_LogType_DATAREAD :: AuditLogConfig_LogType
pattern AuditLogConfig_LogType_DATAREAD = AuditLogConfig_LogType "DATA_READ"

{-# COMPLETE
  AuditLogConfig_LogType_LOGTYPEUNSPECIFIED,
  AuditLogConfig_LogType_ADMINREAD,
  AuditLogConfig_LogType_DATAWRITE,
  AuditLogConfig_LogType_DATAREAD,
  AuditLogConfig_LogType
  #-}

-- | The storage class in which the Blob data is stored.
newtype BlobStorageInfo_StorageClass = BlobStorageInfo_StorageClass {fromBlobStorageInfo_StorageClass :: Core.Text}
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

-- | If unspecified in CreateDataset, the StorageClass defaults to STANDARD. If unspecified in UpdateDataset and the StorageClass is set in the field mask, an InvalidRequest error is thrown.
pattern BlobStorageInfo_StorageClass_BLOBSTORAGECLASSUNSPECIFIED :: BlobStorageInfo_StorageClass
pattern BlobStorageInfo_StorageClass_BLOBSTORAGECLASSUNSPECIFIED = BlobStorageInfo_StorageClass "BLOB_STORAGE_CLASS_UNSPECIFIED"

-- | This stores the Object in Blob Standard Storage: https:\/\/cloud.google.com\/storage\/docs\/storage-classes#standard
pattern BlobStorageInfo_StorageClass_Standard :: BlobStorageInfo_StorageClass
pattern BlobStorageInfo_StorageClass_Standard = BlobStorageInfo_StorageClass "STANDARD"

-- | This stores the Object in Blob Nearline Storage: https:\/\/cloud.google.com\/storage\/docs\/storage-classes#nearline
pattern BlobStorageInfo_StorageClass_Nearline :: BlobStorageInfo_StorageClass
pattern BlobStorageInfo_StorageClass_Nearline = BlobStorageInfo_StorageClass "NEARLINE"

-- | This stores the Object in Blob Coldline Storage: https:\/\/cloud.google.com\/storage\/docs\/storage-classes#coldline
pattern BlobStorageInfo_StorageClass_Coldline :: BlobStorageInfo_StorageClass
pattern BlobStorageInfo_StorageClass_Coldline = BlobStorageInfo_StorageClass "COLDLINE"

-- | This stores the Object in Blob Archive Storage: https:\/\/cloud.google.com\/storage\/docs\/storage-classes#archive
pattern BlobStorageInfo_StorageClass_Archive :: BlobStorageInfo_StorageClass
pattern BlobStorageInfo_StorageClass_Archive = BlobStorageInfo_StorageClass "ARCHIVE"

{-# COMPLETE
  BlobStorageInfo_StorageClass_BLOBSTORAGECLASSUNSPECIFIED,
  BlobStorageInfo_StorageClass_Standard,
  BlobStorageInfo_StorageClass_Nearline,
  BlobStorageInfo_StorageClass_Coldline,
  BlobStorageInfo_StorageClass_Archive,
  BlobStorageInfo_StorageClass
  #-}

-- | The Storage class in which the Blob data is stored.
newtype BlobStorageSettings_BlobStorageClass = BlobStorageSettings_BlobStorageClass {fromBlobStorageSettings_BlobStorageClass :: Core.Text}
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

-- | If unspecified in CreateDataset, the StorageClass defaults to STANDARD. If unspecified in UpdateDataset and the StorageClass is set in the field mask, an InvalidRequest error is thrown.
pattern BlobStorageSettings_BlobStorageClass_BLOBSTORAGECLASSUNSPECIFIED :: BlobStorageSettings_BlobStorageClass
pattern BlobStorageSettings_BlobStorageClass_BLOBSTORAGECLASSUNSPECIFIED = BlobStorageSettings_BlobStorageClass "BLOB_STORAGE_CLASS_UNSPECIFIED"

-- | This stores the Object in Blob Standard Storage: https:\/\/cloud.google.com\/storage\/docs\/storage-classes#standard
pattern BlobStorageSettings_BlobStorageClass_Standard :: BlobStorageSettings_BlobStorageClass
pattern BlobStorageSettings_BlobStorageClass_Standard = BlobStorageSettings_BlobStorageClass "STANDARD"

-- | This stores the Object in Blob Nearline Storage: https:\/\/cloud.google.com\/storage\/docs\/storage-classes#nearline
pattern BlobStorageSettings_BlobStorageClass_Nearline :: BlobStorageSettings_BlobStorageClass
pattern BlobStorageSettings_BlobStorageClass_Nearline = BlobStorageSettings_BlobStorageClass "NEARLINE"

-- | This stores the Object in Blob Coldline Storage: https:\/\/cloud.google.com\/storage\/docs\/storage-classes#coldline
pattern BlobStorageSettings_BlobStorageClass_Coldline :: BlobStorageSettings_BlobStorageClass
pattern BlobStorageSettings_BlobStorageClass_Coldline = BlobStorageSettings_BlobStorageClass "COLDLINE"

-- | This stores the Object in Blob Archive Storage: https:\/\/cloud.google.com\/storage\/docs\/storage-classes#archive
pattern BlobStorageSettings_BlobStorageClass_Archive :: BlobStorageSettings_BlobStorageClass
pattern BlobStorageSettings_BlobStorageClass_Archive = BlobStorageSettings_BlobStorageClass "ARCHIVE"

{-# COMPLETE
  BlobStorageSettings_BlobStorageClass_BLOBSTORAGECLASSUNSPECIFIED,
  BlobStorageSettings_BlobStorageClass_Standard,
  BlobStorageSettings_BlobStorageClass_Nearline,
  BlobStorageSettings_BlobStorageClass_Coldline,
  BlobStorageSettings_BlobStorageClass_Archive,
  BlobStorageSettings_BlobStorageClass
  #-}

-- | Optional. The view for CheckDataAccessResponse. If unspecified, defaults to @BASIC@ and returns @consented@ as @TRUE@ or @FALSE@.
newtype CheckDataAccessRequest_ResponseView = CheckDataAccessRequest_ResponseView {fromCheckDataAccessRequest_ResponseView :: Core.Text}
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

-- | No response view specified. The API will default to the BASIC view.
pattern CheckDataAccessRequest_ResponseView_RESPONSEVIEWUNSPECIFIED :: CheckDataAccessRequest_ResponseView
pattern CheckDataAccessRequest_ResponseView_RESPONSEVIEWUNSPECIFIED = CheckDataAccessRequest_ResponseView "RESPONSE_VIEW_UNSPECIFIED"

-- | Only the @consented@ field is populated in CheckDataAccessResponse.
pattern CheckDataAccessRequest_ResponseView_Basic :: CheckDataAccessRequest_ResponseView
pattern CheckDataAccessRequest_ResponseView_Basic = CheckDataAccessRequest_ResponseView "BASIC"

-- | All fields within CheckDataAccessResponse are populated. When set to @FULL@, all @ACTIVE@ Consents are evaluated even if a matching policy is found during evaluation.
pattern CheckDataAccessRequest_ResponseView_Full :: CheckDataAccessRequest_ResponseView
pattern CheckDataAccessRequest_ResponseView_Full = CheckDataAccessRequest_ResponseView "FULL"

{-# COMPLETE
  CheckDataAccessRequest_ResponseView_RESPONSEVIEWUNSPECIFIED,
  CheckDataAccessRequest_ResponseView_Basic,
  CheckDataAccessRequest_ResponseView_Full,
  CheckDataAccessRequest_ResponseView
  #-}

-- | Required. Indicates the current state of this Consent.
newtype Consent_State = Consent_State {fromConsent_State :: Core.Text}
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

-- | No state specified. Treated as ACTIVE only at the time of resource creation.
pattern Consent_State_STATEUNSPECIFIED :: Consent_State
pattern Consent_State_STATEUNSPECIFIED = Consent_State "STATE_UNSPECIFIED"

-- | The Consent is active and is considered when evaluating a user\'s consent on resources.
pattern Consent_State_Active :: Consent_State
pattern Consent_State_Active = Consent_State "ACTIVE"

-- | The archived state is currently not being used.
pattern Consent_State_Archived :: Consent_State
pattern Consent_State_Archived = Consent_State "ARCHIVED"

-- | A revoked Consent is not considered when evaluating a user\'s consent on resources.
pattern Consent_State_Revoked :: Consent_State
pattern Consent_State_Revoked = Consent_State "REVOKED"

-- | A draft Consent is not considered when evaluating a user\'s consent on resources unless explicitly specified.
pattern Consent_State_Draft :: Consent_State
pattern Consent_State_Draft = Consent_State "DRAFT"

-- | When a draft Consent is rejected by a user, it is set to a rejected state. A rejected Consent is not considered when evaluating a user\'s consent on resources.
pattern Consent_State_Rejected :: Consent_State
pattern Consent_State_Rejected = Consent_State "REJECTED"

{-# COMPLETE
  Consent_State_STATEUNSPECIFIED,
  Consent_State_Active,
  Consent_State_Archived,
  Consent_State_Revoked,
  Consent_State_Draft,
  Consent_State_Rejected,
  Consent_State
  #-}

-- | Required. Specifies which consent enforcement version is being used for this FHIR store. This field can only be set once by either CreateFhirStore or UpdateFhirStore. After that, you must call ApplyConsents to change the version.
newtype ConsentConfig_Version = ConsentConfig_Version {fromConsentConfig_Version :: Core.Text}
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

-- | Users must specify an enforcement version or an error is returned.
pattern ConsentConfig_Version_CONSENTENFORCEMENTVERSIONUNSPECIFIED :: ConsentConfig_Version
pattern ConsentConfig_Version_CONSENTENFORCEMENTVERSIONUNSPECIFIED = ConsentConfig_Version "CONSENT_ENFORCEMENT_VERSION_UNSPECIFIED"

-- | Enforcement version 1. See the <https://cloud.google.com/healthcare-api/docs/fhir-consent FHIR Consent resources in the Cloud Healthcare API> guide for more details.
pattern ConsentConfig_Version_V1 :: ConsentConfig_Version
pattern ConsentConfig_Version_V1 = ConsentConfig_Version "V1"

{-# COMPLETE
  ConsentConfig_Version_CONSENTENFORCEMENTVERSIONUNSPECIFIED,
  ConsentConfig_Version_V1,
  ConsentConfig_Version
  #-}

-- | The evaluation result.
newtype ConsentEvaluation_EvaluationResult = ConsentEvaluation_EvaluationResult {fromConsentEvaluation_EvaluationResult :: Core.Text}
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

-- | No evaluation result specified. This option is invalid.
pattern ConsentEvaluation_EvaluationResult_EVALUATIONRESULTUNSPECIFIED :: ConsentEvaluation_EvaluationResult
pattern ConsentEvaluation_EvaluationResult_EVALUATIONRESULTUNSPECIFIED = ConsentEvaluation_EvaluationResult "EVALUATION_RESULT_UNSPECIFIED"

-- | The Consent is not applicable to the requested access determination. For example, the Consent does not apply to the user for which the access determination is requested, or it has a @state@ of @REVOKED@, or it has expired.
pattern ConsentEvaluation_EvaluationResult_NOTAPPLICABLE :: ConsentEvaluation_EvaluationResult
pattern ConsentEvaluation_EvaluationResult_NOTAPPLICABLE = ConsentEvaluation_EvaluationResult "NOT_APPLICABLE"

-- | The Consent does not have a policy that matches the @resource_attributes@ of the evaluated resource.
pattern ConsentEvaluation_EvaluationResult_NOMATCHINGPOLICY :: ConsentEvaluation_EvaluationResult
pattern ConsentEvaluation_EvaluationResult_NOMATCHINGPOLICY = ConsentEvaluation_EvaluationResult "NO_MATCHING_POLICY"

-- | The Consent has at least one policy that matches the @resource_attributes@ of the evaluated resource, but no @authorization_rule@ was satisfied.
pattern ConsentEvaluation_EvaluationResult_NOSATISFIEDPOLICY :: ConsentEvaluation_EvaluationResult
pattern ConsentEvaluation_EvaluationResult_NOSATISFIEDPOLICY = ConsentEvaluation_EvaluationResult "NO_SATISFIED_POLICY"

-- | The Consent has at least one policy that matches the @resource_attributes@ of the evaluated resource, and at least one @authorization_rule@ was satisfied.
pattern ConsentEvaluation_EvaluationResult_HASSATISFIEDPOLICY :: ConsentEvaluation_EvaluationResult
pattern ConsentEvaluation_EvaluationResult_HASSATISFIEDPOLICY = ConsentEvaluation_EvaluationResult "HAS_SATISFIED_POLICY"

{-# COMPLETE
  ConsentEvaluation_EvaluationResult_EVALUATIONRESULTUNSPECIFIED,
  ConsentEvaluation_EvaluationResult_NOTAPPLICABLE,
  ConsentEvaluation_EvaluationResult_NOMATCHINGPOLICY,
  ConsentEvaluation_EvaluationResult_NOSATISFIEDPOLICY,
  ConsentEvaluation_EvaluationResult_HASSATISFIEDPOLICY,
  ConsentEvaluation_EvaluationResult
  #-}

-- | Optional. Specifies the default server behavior when the header is empty. If not specified, the @ScopeProfile.PERMIT_EMPTY_SCOPE@ option is used.
newtype ConsentHeaderHandling_Profile = ConsentHeaderHandling_Profile {fromConsentHeaderHandling_Profile :: Core.Text}
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

-- | If not specified, the default value @PERMIT_EMPTY_SCOPE@ is used.
pattern ConsentHeaderHandling_Profile_SCOPEPROFILEUNSPECIFIED :: ConsentHeaderHandling_Profile
pattern ConsentHeaderHandling_Profile_SCOPEPROFILEUNSPECIFIED = ConsentHeaderHandling_Profile "SCOPE_PROFILE_UNSPECIFIED"

-- | When no consent scopes are provided (for example, if there\'s an empty or missing header), then consent check is disabled, similar to when @access_enforced@ is @false@. You can use audit logs to differentiate these two cases by looking at the value of @protopayload.metadata.consentMode@. If consents scopes are present, they must be valid and within the allowed limits, otherwise the request will be rejected with a @4xx@ code.
pattern ConsentHeaderHandling_Profile_PERMITEMPTYSCOPE :: ConsentHeaderHandling_Profile
pattern ConsentHeaderHandling_Profile_PERMITEMPTYSCOPE = ConsentHeaderHandling_Profile "PERMIT_EMPTY_SCOPE"

-- | The consent header must be non-empty when performing read and search operations, otherwise the request is rejected with a @4xx@ code. Additionally, invalid consent scopes or scopes exceeding the allowed limits are rejected.
pattern ConsentHeaderHandling_Profile_REQUIREDONREAD :: ConsentHeaderHandling_Profile
pattern ConsentHeaderHandling_Profile_REQUIREDONREAD = ConsentHeaderHandling_Profile "REQUIRED_ON_READ"

{-# COMPLETE
  ConsentHeaderHandling_Profile_SCOPEPROFILEUNSPECIFIED,
  ConsentHeaderHandling_Profile_PERMITEMPTYSCOPE,
  ConsentHeaderHandling_Profile_REQUIREDONREAD,
  ConsentHeaderHandling_Profile
  #-}

-- | Tag filtering profile that determines which tags to keep\/remove.
newtype DicomConfig_FilterProfile = DicomConfig_FilterProfile {fromDicomConfig_FilterProfile :: Core.Text}
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

-- | No tag filtration profile provided. Same as KEEP/ALL/PROFILE.
pattern DicomConfig_FilterProfile_TAGFILTERPROFILEUNSPECIFIED :: DicomConfig_FilterProfile
pattern DicomConfig_FilterProfile_TAGFILTERPROFILEUNSPECIFIED = DicomConfig_FilterProfile "TAG_FILTER_PROFILE_UNSPECIFIED"

-- | Keep only tags required to produce valid DICOM.
pattern DicomConfig_FilterProfile_MINIMALKEEPLISTPROFILE :: DicomConfig_FilterProfile
pattern DicomConfig_FilterProfile_MINIMALKEEPLISTPROFILE = DicomConfig_FilterProfile "MINIMAL_KEEP_LIST_PROFILE"

-- | Remove tags based on DICOM Standard\'s Attribute Confidentiality Basic Profile (DICOM Standard Edition 2018e) http:\/\/dicom.nema.org\/medical\/dicom\/2018e\/output\/chtml\/part15\/chapter_E.html.
pattern DicomConfig_FilterProfile_ATTRIBUTECONFIDENTIALITYBASICPROFILE :: DicomConfig_FilterProfile
pattern DicomConfig_FilterProfile_ATTRIBUTECONFIDENTIALITYBASICPROFILE = DicomConfig_FilterProfile "ATTRIBUTE_CONFIDENTIALITY_BASIC_PROFILE"

-- | Keep all tags.
pattern DicomConfig_FilterProfile_KEEPALLPROFILE :: DicomConfig_FilterProfile
pattern DicomConfig_FilterProfile_KEEPALLPROFILE = DicomConfig_FilterProfile "KEEP_ALL_PROFILE"

-- | Inspects within tag contents and replaces sensitive text. The process can be configured using the TextConfig. Applies to all tags with the following Value Representation names: AE, LO, LT, PN, SH, ST, UC, UT, DA, DT, AS
pattern DicomConfig_FilterProfile_DEIDENTIFYTAGCONTENTS :: DicomConfig_FilterProfile
pattern DicomConfig_FilterProfile_DEIDENTIFYTAGCONTENTS = DicomConfig_FilterProfile "DEIDENTIFY_TAG_CONTENTS"

{-# COMPLETE
  DicomConfig_FilterProfile_TAGFILTERPROFILEUNSPECIFIED,
  DicomConfig_FilterProfile_MINIMALKEEPLISTPROFILE,
  DicomConfig_FilterProfile_ATTRIBUTECONFIDENTIALITYBASICPROFILE,
  DicomConfig_FilterProfile_KEEPALLPROFILE,
  DicomConfig_FilterProfile_DEIDENTIFYTAGCONTENTS,
  DicomConfig_FilterProfile
  #-}

-- | Optional. The view for EvaluateUserConsentsResponse. If unspecified, defaults to @BASIC@ and returns @consented@ as @TRUE@ or @FALSE@.
newtype EvaluateUserConsentsRequest_ResponseView = EvaluateUserConsentsRequest_ResponseView {fromEvaluateUserConsentsRequest_ResponseView :: Core.Text}
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

-- | No response view specified. The API will default to the BASIC view.
pattern EvaluateUserConsentsRequest_ResponseView_RESPONSEVIEWUNSPECIFIED :: EvaluateUserConsentsRequest_ResponseView
pattern EvaluateUserConsentsRequest_ResponseView_RESPONSEVIEWUNSPECIFIED = EvaluateUserConsentsRequest_ResponseView "RESPONSE_VIEW_UNSPECIFIED"

-- | Only the @data_id@ and @consented@ fields are populated in the response.
pattern EvaluateUserConsentsRequest_ResponseView_Basic :: EvaluateUserConsentsRequest_ResponseView
pattern EvaluateUserConsentsRequest_ResponseView_Basic = EvaluateUserConsentsRequest_ResponseView "BASIC"

-- | All fields within the response are populated. When set to @FULL@, all @ACTIVE@ Consents are evaluated even if a matching policy is found during evaluation.
pattern EvaluateUserConsentsRequest_ResponseView_Full :: EvaluateUserConsentsRequest_ResponseView
pattern EvaluateUserConsentsRequest_ResponseView_Full = EvaluateUserConsentsRequest_ResponseView "FULL"

{-# COMPLETE
  EvaluateUserConsentsRequest_ResponseView_RESPONSEVIEWUNSPECIFIED,
  EvaluateUserConsentsRequest_ResponseView_Basic,
  EvaluateUserConsentsRequest_ResponseView_Full,
  EvaluateUserConsentsRequest_ResponseView
  #-}

-- | The policy type of consent resource (e.g. PATIENT, ADMIN).
newtype ExplainDataAccessConsentInfo_Type = ExplainDataAccessConsentInfo_Type {fromExplainDataAccessConsentInfo_Type :: Core.Text}
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

-- | Unspecified policy type.
pattern ExplainDataAccessConsentInfo_Type_CONSENTPOLICYTYPEUNSPECIFIED :: ExplainDataAccessConsentInfo_Type
pattern ExplainDataAccessConsentInfo_Type_CONSENTPOLICYTYPEUNSPECIFIED = ExplainDataAccessConsentInfo_Type "CONSENT_POLICY_TYPE_UNSPECIFIED"

-- | Consent represent a patient consent.
pattern ExplainDataAccessConsentInfo_Type_CONSENTPOLICYTYPEPATIENT :: ExplainDataAccessConsentInfo_Type
pattern ExplainDataAccessConsentInfo_Type_CONSENTPOLICYTYPEPATIENT = ExplainDataAccessConsentInfo_Type "CONSENT_POLICY_TYPE_PATIENT"

-- | Consent represent an admin consent.
pattern ExplainDataAccessConsentInfo_Type_CONSENTPOLICYTYPEADMIN :: ExplainDataAccessConsentInfo_Type
pattern ExplainDataAccessConsentInfo_Type_CONSENTPOLICYTYPEADMIN = ExplainDataAccessConsentInfo_Type "CONSENT_POLICY_TYPE_ADMIN"

{-# COMPLETE
  ExplainDataAccessConsentInfo_Type_CONSENTPOLICYTYPEUNSPECIFIED,
  ExplainDataAccessConsentInfo_Type_CONSENTPOLICYTYPEPATIENT,
  ExplainDataAccessConsentInfo_Type_CONSENTPOLICYTYPEADMIN,
  ExplainDataAccessConsentInfo_Type
  #-}

newtype ExplainDataAccessConsentInfo_VariantsItem = ExplainDataAccessConsentInfo_VariantsItem {fromExplainDataAccessConsentInfo_VariantsItem :: Core.Text}
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

-- | Consent variant unspecified.
pattern ExplainDataAccessConsentInfo_VariantsItem_CONSENTVARIANTUNSPECIFIED :: ExplainDataAccessConsentInfo_VariantsItem
pattern ExplainDataAccessConsentInfo_VariantsItem_CONSENTVARIANTUNSPECIFIED = ExplainDataAccessConsentInfo_VariantsItem "CONSENT_VARIANT_UNSPECIFIED"

-- | Consent is a standard patient or admin consent.
pattern ExplainDataAccessConsentInfo_VariantsItem_CONSENTVARIANTSTANDARD :: ExplainDataAccessConsentInfo_VariantsItem
pattern ExplainDataAccessConsentInfo_VariantsItem_CONSENTVARIANTSTANDARD = ExplainDataAccessConsentInfo_VariantsItem "CONSENT_VARIANT_STANDARD"

-- | Consent is a cascading consent.
pattern ExplainDataAccessConsentInfo_VariantsItem_CONSENTVARIANTCASCADE :: ExplainDataAccessConsentInfo_VariantsItem
pattern ExplainDataAccessConsentInfo_VariantsItem_CONSENTVARIANTCASCADE = ExplainDataAccessConsentInfo_VariantsItem "CONSENT_VARIANT_CASCADE"

{-# COMPLETE
  ExplainDataAccessConsentInfo_VariantsItem_CONSENTVARIANTUNSPECIFIED,
  ExplainDataAccessConsentInfo_VariantsItem_CONSENTVARIANTSTANDARD,
  ExplainDataAccessConsentInfo_VariantsItem_CONSENTVARIANTCASCADE,
  ExplainDataAccessConsentInfo_VariantsItem
  #-}

-- | Whether the current consent scope is permitted or denied access on the requested resource.
newtype ExplainDataAccessConsentScope_Decision = ExplainDataAccessConsentScope_Decision {fromExplainDataAccessConsentScope_Decision :: Core.Text}
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

-- | Unspecified consent decision type.
pattern ExplainDataAccessConsentScope_Decision_CONSENTDECISIONTYPEUNSPECIFIED :: ExplainDataAccessConsentScope_Decision
pattern ExplainDataAccessConsentScope_Decision_CONSENTDECISIONTYPEUNSPECIFIED = ExplainDataAccessConsentScope_Decision "CONSENT_DECISION_TYPE_UNSPECIFIED"

-- | Consent permitted access.
pattern ExplainDataAccessConsentScope_Decision_CONSENTDECISIONTYPEPERMIT :: ExplainDataAccessConsentScope_Decision
pattern ExplainDataAccessConsentScope_Decision_CONSENTDECISIONTYPEPERMIT = ExplainDataAccessConsentScope_Decision "CONSENT_DECISION_TYPE_PERMIT"

-- | Consent denied access.
pattern ExplainDataAccessConsentScope_Decision_CONSENTDECISIONTYPEDENY :: ExplainDataAccessConsentScope_Decision
pattern ExplainDataAccessConsentScope_Decision_CONSENTDECISIONTYPEDENY = ExplainDataAccessConsentScope_Decision "CONSENT_DECISION_TYPE_DENY"

{-# COMPLETE
  ExplainDataAccessConsentScope_Decision_CONSENTDECISIONTYPEUNSPECIFIED,
  ExplainDataAccessConsentScope_Decision_CONSENTDECISIONTYPEPERMIT,
  ExplainDataAccessConsentScope_Decision_CONSENTDECISIONTYPEDENY,
  ExplainDataAccessConsentScope_Decision
  #-}

-- | Optional. Enable parsing of references within complex FHIR data types such as Extensions. If this value is set to ENABLED, then features like referential integrity and Bundle reference rewriting apply to all references. If this flag has not been specified the behavior of the FHIR store will not change, references in complex data types will not be parsed. New stores will have this value set to ENABLED after a notification period. Warning: turning on this flag causes processing existing resources to fail if they contain references to non-existent resources.
newtype FhirStore_ComplexDataTypeReferenceParsing = FhirStore_ComplexDataTypeReferenceParsing {fromFhirStore_ComplexDataTypeReferenceParsing :: Core.Text}
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

-- | No parsing behavior specified. This is the same as DISABLED for backwards compatibility.
pattern FhirStore_ComplexDataTypeReferenceParsing_COMPLEXDATATYPEREFERENCEPARSINGUNSPECIFIED :: FhirStore_ComplexDataTypeReferenceParsing
pattern FhirStore_ComplexDataTypeReferenceParsing_COMPLEXDATATYPEREFERENCEPARSINGUNSPECIFIED = FhirStore_ComplexDataTypeReferenceParsing "COMPLEX_DATA_TYPE_REFERENCE_PARSING_UNSPECIFIED"

-- | References in complex data types are ignored.
pattern FhirStore_ComplexDataTypeReferenceParsing_Disabled :: FhirStore_ComplexDataTypeReferenceParsing
pattern FhirStore_ComplexDataTypeReferenceParsing_Disabled = FhirStore_ComplexDataTypeReferenceParsing "DISABLED"

-- | References in complex data types are parsed.
pattern FhirStore_ComplexDataTypeReferenceParsing_Enabled :: FhirStore_ComplexDataTypeReferenceParsing
pattern FhirStore_ComplexDataTypeReferenceParsing_Enabled = FhirStore_ComplexDataTypeReferenceParsing "ENABLED"

{-# COMPLETE
  FhirStore_ComplexDataTypeReferenceParsing_COMPLEXDATATYPEREFERENCEPARSINGUNSPECIFIED,
  FhirStore_ComplexDataTypeReferenceParsing_Disabled,
  FhirStore_ComplexDataTypeReferenceParsing_Enabled,
  FhirStore_ComplexDataTypeReferenceParsing
  #-}

-- | Required. Immutable. The FHIR specification version that this FHIR store supports natively. This field is immutable after store creation. Requests are rejected if they contain FHIR resources of a different version. Version is required for every FHIR store.
newtype FhirStore_Version = FhirStore_Version {fromFhirStore_Version :: Core.Text}
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

-- | Users must specify a version on store creation or an error is returned.
pattern FhirStore_Version_VERSIONUNSPECIFIED :: FhirStore_Version
pattern FhirStore_Version_VERSIONUNSPECIFIED = FhirStore_Version "VERSION_UNSPECIFIED"

-- | Draft Standard for Trial Use, <https://www.hl7.org/fhir/DSTU2 Release 2>
pattern FhirStore_Version_DSTU2 :: FhirStore_Version
pattern FhirStore_Version_DSTU2 = FhirStore_Version "DSTU2"

-- | Standard for Trial Use, <https://www.hl7.org/fhir/STU3 Release 3>
pattern FhirStore_Version_STU3 :: FhirStore_Version
pattern FhirStore_Version_STU3 = FhirStore_Version "STU3"

-- | <https://www.hl7.org/fhir/R4 Release 4>
pattern FhirStore_Version_R4 :: FhirStore_Version
pattern FhirStore_Version_R4 = FhirStore_Version "R4"

{-# COMPLETE
  FhirStore_Version_VERSIONUNSPECIFIED,
  FhirStore_Version_DSTU2,
  FhirStore_Version_STU3,
  FhirStore_Version_R4,
  FhirStore_Version
  #-}

-- | Optional. Deidentify action for one field.
newtype FieldMetadata_Action = FieldMetadata_Action {fromFieldMetadata_Action :: Core.Text}
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

-- | No action specified. Defaults to DO/NOT/TRANSFORM.
pattern FieldMetadata_Action_ACTIONUNSPECIFIED :: FieldMetadata_Action
pattern FieldMetadata_Action_ACTIONUNSPECIFIED = FieldMetadata_Action "ACTION_UNSPECIFIED"

-- | Transform the entire field.
pattern FieldMetadata_Action_Transform :: FieldMetadata_Action
pattern FieldMetadata_Action_Transform = FieldMetadata_Action "TRANSFORM"

-- | Inspect and transform any found PHI.
pattern FieldMetadata_Action_INSPECTANDTRANSFORM :: FieldMetadata_Action
pattern FieldMetadata_Action_INSPECTANDTRANSFORM = FieldMetadata_Action "INSPECT_AND_TRANSFORM"

-- | Do not transform.
pattern FieldMetadata_Action_DONOTTRANSFORM :: FieldMetadata_Action
pattern FieldMetadata_Action_DONOTTRANSFORM = FieldMetadata_Action "DO_NOT_TRANSFORM"

{-# COMPLETE
  FieldMetadata_Action_ACTIONUNSPECIFIED,
  FieldMetadata_Action_Transform,
  FieldMetadata_Action_INSPECTANDTRANSFORM,
  FieldMetadata_Action_DONOTTRANSFORM,
  FieldMetadata_Action
  #-}

-- | The format of the exported HL7v2 message files.
newtype GcsDestination_ContentStructure = GcsDestination_ContentStructure {fromGcsDestination_ContentStructure :: Core.Text}
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

-- | If the content structure is not specified, the default value @MESSAGE_JSON@ will be used.
pattern GcsDestination_ContentStructure_CONTENTSTRUCTUREUNSPECIFIED :: GcsDestination_ContentStructure
pattern GcsDestination_ContentStructure_CONTENTSTRUCTUREUNSPECIFIED = GcsDestination_ContentStructure "CONTENT_STRUCTURE_UNSPECIFIED"

-- | Messages are printed using the JSON format returned from the @GetMessage@ API. Messages are delimited with newlines.
pattern GcsDestination_ContentStructure_MESSAGEJSON :: GcsDestination_ContentStructure
pattern GcsDestination_ContentStructure_MESSAGEJSON = GcsDestination_ContentStructure "MESSAGE_JSON"

{-# COMPLETE
  GcsDestination_ContentStructure_CONTENTSTRUCTUREUNSPECIFIED,
  GcsDestination_ContentStructure_MESSAGEJSON,
  GcsDestination_ContentStructure
  #-}

-- | Specifies the parts of the Message resource to include in the export. If not specified, FULL is used.
newtype GcsDestination_MessageView = GcsDestination_MessageView {fromGcsDestination_MessageView :: Core.Text}
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

-- | Not specified, equivalent to FULL.
pattern GcsDestination_MessageView_MESSAGEVIEWUNSPECIFIED :: GcsDestination_MessageView
pattern GcsDestination_MessageView_MESSAGEVIEWUNSPECIFIED = GcsDestination_MessageView "MESSAGE_VIEW_UNSPECIFIED"

-- | Server responses include all the message fields except parsed/data field, and schematized/data fields.
pattern GcsDestination_MessageView_RAWONLY :: GcsDestination_MessageView
pattern GcsDestination_MessageView_RAWONLY = GcsDestination_MessageView "RAW_ONLY"

-- | Server responses include all the message fields except data field, and schematized_data fields.
pattern GcsDestination_MessageView_PARSEDONLY :: GcsDestination_MessageView
pattern GcsDestination_MessageView_PARSEDONLY = GcsDestination_MessageView "PARSED_ONLY"

-- | Server responses include all the message fields.
pattern GcsDestination_MessageView_Full :: GcsDestination_MessageView
pattern GcsDestination_MessageView_Full = GcsDestination_MessageView "FULL"

-- | Server responses include all the message fields except data and parsed_data fields.
pattern GcsDestination_MessageView_SCHEMATIZEDONLY :: GcsDestination_MessageView
pattern GcsDestination_MessageView_SCHEMATIZEDONLY = GcsDestination_MessageView "SCHEMATIZED_ONLY"

-- | Server responses include only the name field.
pattern GcsDestination_MessageView_Basic :: GcsDestination_MessageView
pattern GcsDestination_MessageView_Basic = GcsDestination_MessageView "BASIC"

{-# COMPLETE
  GcsDestination_MessageView_MESSAGEVIEWUNSPECIFIED,
  GcsDestination_MessageView_RAWONLY,
  GcsDestination_MessageView_PARSEDONLY,
  GcsDestination_MessageView_Full,
  GcsDestination_MessageView_SCHEMATIZEDONLY,
  GcsDestination_MessageView_Basic,
  GcsDestination_MessageView
  #-}

-- | Optional. Determines whether the existing table in the destination is to be overwritten or appended to. If a write_disposition is specified, the @force@ parameter is ignored.
newtype GoogleCloudHealthcareV1DicomBigQueryDestination_WriteDisposition = GoogleCloudHealthcareV1DicomBigQueryDestination_WriteDisposition {fromGoogleCloudHealthcareV1DicomBigQueryDestination_WriteDisposition :: Core.Text}
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

-- | Default behavior is the same as WRITE_EMPTY.
pattern GoogleCloudHealthcareV1DicomBigQueryDestination_WriteDisposition_WRITEDISPOSITIONUNSPECIFIED :: GoogleCloudHealthcareV1DicomBigQueryDestination_WriteDisposition
pattern GoogleCloudHealthcareV1DicomBigQueryDestination_WriteDisposition_WRITEDISPOSITIONUNSPECIFIED = GoogleCloudHealthcareV1DicomBigQueryDestination_WriteDisposition "WRITE_DISPOSITION_UNSPECIFIED"

-- | Only export data if the destination table is empty.
pattern GoogleCloudHealthcareV1DicomBigQueryDestination_WriteDisposition_WRITEEMPTY :: GoogleCloudHealthcareV1DicomBigQueryDestination_WriteDisposition
pattern GoogleCloudHealthcareV1DicomBigQueryDestination_WriteDisposition_WRITEEMPTY = GoogleCloudHealthcareV1DicomBigQueryDestination_WriteDisposition "WRITE_EMPTY"

-- | Erase all existing data in the destination table before writing the instances.
pattern GoogleCloudHealthcareV1DicomBigQueryDestination_WriteDisposition_WRITETRUNCATE :: GoogleCloudHealthcareV1DicomBigQueryDestination_WriteDisposition
pattern GoogleCloudHealthcareV1DicomBigQueryDestination_WriteDisposition_WRITETRUNCATE = GoogleCloudHealthcareV1DicomBigQueryDestination_WriteDisposition "WRITE_TRUNCATE"

-- | Append data to the destination table.
pattern GoogleCloudHealthcareV1DicomBigQueryDestination_WriteDisposition_WRITEAPPEND :: GoogleCloudHealthcareV1DicomBigQueryDestination_WriteDisposition
pattern GoogleCloudHealthcareV1DicomBigQueryDestination_WriteDisposition_WRITEAPPEND = GoogleCloudHealthcareV1DicomBigQueryDestination_WriteDisposition "WRITE_APPEND"

{-# COMPLETE
  GoogleCloudHealthcareV1DicomBigQueryDestination_WriteDisposition_WRITEDISPOSITIONUNSPECIFIED,
  GoogleCloudHealthcareV1DicomBigQueryDestination_WriteDisposition_WRITEEMPTY,
  GoogleCloudHealthcareV1DicomBigQueryDestination_WriteDisposition_WRITETRUNCATE,
  GoogleCloudHealthcareV1DicomBigQueryDestination_WriteDisposition_WRITEAPPEND,
  GoogleCloudHealthcareV1DicomBigQueryDestination_WriteDisposition
  #-}

-- | Optional. Determines if existing data in the destination dataset is overwritten, appended to, or not written if the tables contain data. If a write_disposition is specified, the @force@ parameter is ignored.
newtype GoogleCloudHealthcareV1FhirBigQueryDestination_WriteDisposition = GoogleCloudHealthcareV1FhirBigQueryDestination_WriteDisposition {fromGoogleCloudHealthcareV1FhirBigQueryDestination_WriteDisposition :: Core.Text}
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

-- | Default behavior is the same as WRITE_EMPTY.
pattern GoogleCloudHealthcareV1FhirBigQueryDestination_WriteDisposition_WRITEDISPOSITIONUNSPECIFIED :: GoogleCloudHealthcareV1FhirBigQueryDestination_WriteDisposition
pattern GoogleCloudHealthcareV1FhirBigQueryDestination_WriteDisposition_WRITEDISPOSITIONUNSPECIFIED = GoogleCloudHealthcareV1FhirBigQueryDestination_WriteDisposition "WRITE_DISPOSITION_UNSPECIFIED"

-- | Only export data if the destination tables are empty.
pattern GoogleCloudHealthcareV1FhirBigQueryDestination_WriteDisposition_WRITEEMPTY :: GoogleCloudHealthcareV1FhirBigQueryDestination_WriteDisposition
pattern GoogleCloudHealthcareV1FhirBigQueryDestination_WriteDisposition_WRITEEMPTY = GoogleCloudHealthcareV1FhirBigQueryDestination_WriteDisposition "WRITE_EMPTY"

-- | Erase all existing data in the destination tables before writing the FHIR resources.
pattern GoogleCloudHealthcareV1FhirBigQueryDestination_WriteDisposition_WRITETRUNCATE :: GoogleCloudHealthcareV1FhirBigQueryDestination_WriteDisposition
pattern GoogleCloudHealthcareV1FhirBigQueryDestination_WriteDisposition_WRITETRUNCATE = GoogleCloudHealthcareV1FhirBigQueryDestination_WriteDisposition "WRITE_TRUNCATE"

-- | Append data to the destination tables.
pattern GoogleCloudHealthcareV1FhirBigQueryDestination_WriteDisposition_WRITEAPPEND :: GoogleCloudHealthcareV1FhirBigQueryDestination_WriteDisposition
pattern GoogleCloudHealthcareV1FhirBigQueryDestination_WriteDisposition_WRITEAPPEND = GoogleCloudHealthcareV1FhirBigQueryDestination_WriteDisposition "WRITE_APPEND"

{-# COMPLETE
  GoogleCloudHealthcareV1FhirBigQueryDestination_WriteDisposition_WRITEDISPOSITIONUNSPECIFIED,
  GoogleCloudHealthcareV1FhirBigQueryDestination_WriteDisposition_WRITEEMPTY,
  GoogleCloudHealthcareV1FhirBigQueryDestination_WriteDisposition_WRITETRUNCATE,
  GoogleCloudHealthcareV1FhirBigQueryDestination_WriteDisposition_WRITEAPPEND,
  GoogleCloudHealthcareV1FhirBigQueryDestination_WriteDisposition
  #-}

-- | Optional. Determines how to redact text from image.
newtype ImageConfig_TextRedactionMode = ImageConfig_TextRedactionMode {fromImageConfig_TextRedactionMode :: Core.Text}
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

-- | No text redaction specified. Same as REDACT/NO/TEXT.
pattern ImageConfig_TextRedactionMode_TEXTREDACTIONMODEUNSPECIFIED :: ImageConfig_TextRedactionMode
pattern ImageConfig_TextRedactionMode_TEXTREDACTIONMODEUNSPECIFIED = ImageConfig_TextRedactionMode "TEXT_REDACTION_MODE_UNSPECIFIED"

-- | Redact all text.
pattern ImageConfig_TextRedactionMode_REDACTALLTEXT :: ImageConfig_TextRedactionMode
pattern ImageConfig_TextRedactionMode_REDACTALLTEXT = ImageConfig_TextRedactionMode "REDACT_ALL_TEXT"

-- | Redact sensitive text. Uses the set of <https://cloud.google.com/healthcare-api/docs/how-tos/dicom-deidentify#default_dicom_infotypes Default DICOM InfoTypes>.
pattern ImageConfig_TextRedactionMode_REDACTSENSITIVETEXT :: ImageConfig_TextRedactionMode
pattern ImageConfig_TextRedactionMode_REDACTSENSITIVETEXT = ImageConfig_TextRedactionMode "REDACT_SENSITIVE_TEXT"

-- | Do not redact text.
pattern ImageConfig_TextRedactionMode_REDACTNOTEXT :: ImageConfig_TextRedactionMode
pattern ImageConfig_TextRedactionMode_REDACTNOTEXT = ImageConfig_TextRedactionMode "REDACT_NO_TEXT"

{-# COMPLETE
  ImageConfig_TextRedactionMode_TEXTREDACTIONMODEUNSPECIFIED,
  ImageConfig_TextRedactionMode_REDACTALLTEXT,
  ImageConfig_TextRedactionMode_REDACTSENSITIVETEXT,
  ImageConfig_TextRedactionMode_REDACTNOTEXT,
  ImageConfig_TextRedactionMode
  #-}

-- | The content structure in the source location. If not specified, the server treats the input source files as BUNDLE.
newtype ImportResourcesRequest_ContentStructure = ImportResourcesRequest_ContentStructure {fromImportResourcesRequest_ContentStructure :: Core.Text}
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

-- | If the content structure is not specified, the default value @BUNDLE@ is used.
pattern ImportResourcesRequest_ContentStructure_CONTENTSTRUCTUREUNSPECIFIED :: ImportResourcesRequest_ContentStructure
pattern ImportResourcesRequest_ContentStructure_CONTENTSTRUCTUREUNSPECIFIED = ImportResourcesRequest_ContentStructure "CONTENT_STRUCTURE_UNSPECIFIED"

-- | The source file contains one or more lines of newline-delimited JSON (ndjson). Each line is a bundle that contains one or more resources.
pattern ImportResourcesRequest_ContentStructure_Bundle :: ImportResourcesRequest_ContentStructure
pattern ImportResourcesRequest_ContentStructure_Bundle = ImportResourcesRequest_ContentStructure "BUNDLE"

-- | The source file contains one or more lines of newline-delimited JSON (ndjson). Each line is a single resource.
pattern ImportResourcesRequest_ContentStructure_Resource :: ImportResourcesRequest_ContentStructure
pattern ImportResourcesRequest_ContentStructure_Resource = ImportResourcesRequest_ContentStructure "RESOURCE"

-- | The entire file is one JSON bundle. The JSON can span multiple lines.
pattern ImportResourcesRequest_ContentStructure_BUNDLEPRETTY :: ImportResourcesRequest_ContentStructure
pattern ImportResourcesRequest_ContentStructure_BUNDLEPRETTY = ImportResourcesRequest_ContentStructure "BUNDLE_PRETTY"

-- | The entire file is one JSON resource. The JSON can span multiple lines.
pattern ImportResourcesRequest_ContentStructure_RESOURCEPRETTY :: ImportResourcesRequest_ContentStructure
pattern ImportResourcesRequest_ContentStructure_RESOURCEPRETTY = ImportResourcesRequest_ContentStructure "RESOURCE_PRETTY"

{-# COMPLETE
  ImportResourcesRequest_ContentStructure_CONTENTSTRUCTUREUNSPECIFIED,
  ImportResourcesRequest_ContentStructure_Bundle,
  ImportResourcesRequest_ContentStructure_Resource,
  ImportResourcesRequest_ContentStructure_BUNDLEPRETTY,
  ImportResourcesRequest_ContentStructure_RESOURCEPRETTY,
  ImportResourcesRequest_ContentStructure
  #-}

-- | Immutable. Determines the version of both the default parser to be used when @schema@ is not given, as well as the schematized parser used when @schema@ is specified. This field is immutable after HL7v2 store creation.
newtype ParserConfig_Version = ParserConfig_Version {fromParserConfig_Version :: Core.Text}
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

-- | Unspecified parser version, equivalent to V1.
pattern ParserConfig_Version_PARSERVERSIONUNSPECIFIED :: ParserConfig_Version
pattern ParserConfig_Version_PARSERVERSIONUNSPECIFIED = ParserConfig_Version "PARSER_VERSION_UNSPECIFIED"

-- | The @parsed_data@ includes every given non-empty message field except the Field Separator (MSH-1) field. As a result, the parsed MSH segment starts with the MSH-2 field and the field numbers are off-by-one with respect to the HL7 standard.
pattern ParserConfig_Version_V1 :: ParserConfig_Version
pattern ParserConfig_Version_V1 = ParserConfig_Version "V1"

-- | The @parsed_data@ includes every given non-empty message field.
pattern ParserConfig_Version_V2 :: ParserConfig_Version
pattern ParserConfig_Version_V2 = ParserConfig_Version "V2"

-- | This version is the same as V2, with the following change. The @parsed_data@ contains unescaped escaped field separators, component separators, sub-component separators, repetition separators, escape characters, and truncation characters. If @schema@ is specified, the schematized parser uses improved parsing heuristics compared to previous versions.
pattern ParserConfig_Version_V3 :: ParserConfig_Version
pattern ParserConfig_Version_V3 = ParserConfig_Version "V3"

{-# COMPLETE
  ParserConfig_Version_PARSERVERSIONUNSPECIFIED,
  ParserConfig_Version_V1,
  ParserConfig_Version_V2,
  ParserConfig_Version_V3,
  ParserConfig_Version
  #-}

-- | Optional. CREATE\/UPDATE\/DELETE\/ALL for reverting all txns of a certain type.
newtype RollbackFhirResourcesRequest_ChangeType = RollbackFhirResourcesRequest_ChangeType {fromRollbackFhirResourcesRequest_ChangeType :: Core.Text}
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

-- | When unspecified, revert all transactions
pattern RollbackFhirResourcesRequest_ChangeType_CHANGETYPEUNSPECIFIED :: RollbackFhirResourcesRequest_ChangeType
pattern RollbackFhirResourcesRequest_ChangeType_CHANGETYPEUNSPECIFIED = RollbackFhirResourcesRequest_ChangeType "CHANGE_TYPE_UNSPECIFIED"

-- | All transactions
pattern RollbackFhirResourcesRequest_ChangeType_All :: RollbackFhirResourcesRequest_ChangeType
pattern RollbackFhirResourcesRequest_ChangeType_All = RollbackFhirResourcesRequest_ChangeType "ALL"

-- | Revert only CREATE transactions
pattern RollbackFhirResourcesRequest_ChangeType_Create :: RollbackFhirResourcesRequest_ChangeType
pattern RollbackFhirResourcesRequest_ChangeType_Create = RollbackFhirResourcesRequest_ChangeType "CREATE"

-- | Revert only Update transactions
pattern RollbackFhirResourcesRequest_ChangeType_Update :: RollbackFhirResourcesRequest_ChangeType
pattern RollbackFhirResourcesRequest_ChangeType_Update = RollbackFhirResourcesRequest_ChangeType "UPDATE"

-- | Revert only Delete transactions
pattern RollbackFhirResourcesRequest_ChangeType_Delete' :: RollbackFhirResourcesRequest_ChangeType
pattern RollbackFhirResourcesRequest_ChangeType_Delete' = RollbackFhirResourcesRequest_ChangeType "DELETE"

{-# COMPLETE
  RollbackFhirResourcesRequest_ChangeType_CHANGETYPEUNSPECIFIED,
  RollbackFhirResourcesRequest_ChangeType_All,
  RollbackFhirResourcesRequest_ChangeType_Create,
  RollbackFhirResourcesRequest_ChangeType_Update,
  RollbackFhirResourcesRequest_ChangeType_Delete',
  RollbackFhirResourcesRequest_ChangeType
  #-}

-- | Optional. CREATE\/UPDATE\/DELETE\/ALL for reverting all txns of a certain type.
newtype RollbackHl7V2MessagesRequest_ChangeType = RollbackHl7V2MessagesRequest_ChangeType {fromRollbackHl7V2MessagesRequest_ChangeType :: Core.Text}
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

-- | When unspecified, revert all transactions
pattern RollbackHl7V2MessagesRequest_ChangeType_CHANGETYPEUNSPECIFIED :: RollbackHl7V2MessagesRequest_ChangeType
pattern RollbackHl7V2MessagesRequest_ChangeType_CHANGETYPEUNSPECIFIED = RollbackHl7V2MessagesRequest_ChangeType "CHANGE_TYPE_UNSPECIFIED"

-- | All transactions
pattern RollbackHl7V2MessagesRequest_ChangeType_All :: RollbackHl7V2MessagesRequest_ChangeType
pattern RollbackHl7V2MessagesRequest_ChangeType_All = RollbackHl7V2MessagesRequest_ChangeType "ALL"

-- | Revert only CREATE transactions
pattern RollbackHl7V2MessagesRequest_ChangeType_Create :: RollbackHl7V2MessagesRequest_ChangeType
pattern RollbackHl7V2MessagesRequest_ChangeType_Create = RollbackHl7V2MessagesRequest_ChangeType "CREATE"

-- | Revert only Update transactions
pattern RollbackHl7V2MessagesRequest_ChangeType_Update :: RollbackHl7V2MessagesRequest_ChangeType
pattern RollbackHl7V2MessagesRequest_ChangeType_Update = RollbackHl7V2MessagesRequest_ChangeType "UPDATE"

-- | Revert only Delete transactions
pattern RollbackHl7V2MessagesRequest_ChangeType_Delete' :: RollbackHl7V2MessagesRequest_ChangeType
pattern RollbackHl7V2MessagesRequest_ChangeType_Delete' = RollbackHl7V2MessagesRequest_ChangeType "DELETE"

{-# COMPLETE
  RollbackHl7V2MessagesRequest_ChangeType_CHANGETYPEUNSPECIFIED,
  RollbackHl7V2MessagesRequest_ChangeType_All,
  RollbackHl7V2MessagesRequest_ChangeType_Create,
  RollbackHl7V2MessagesRequest_ChangeType_Update,
  RollbackHl7V2MessagesRequest_ChangeType_Delete',
  RollbackHl7V2MessagesRequest_ChangeType
  #-}

-- | Specifies the output schema type. Schema type is required.
newtype SchemaConfig_SchemaType = SchemaConfig_SchemaType {fromSchemaConfig_SchemaType :: Core.Text}
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

-- | No schema type specified. This type is unsupported.
pattern SchemaConfig_SchemaType_SCHEMATYPEUNSPECIFIED :: SchemaConfig_SchemaType
pattern SchemaConfig_SchemaType_SCHEMATYPEUNSPECIFIED = SchemaConfig_SchemaType "SCHEMA_TYPE_UNSPECIFIED"

-- | Analytics schema defined by the FHIR community. See https:\/\/github.com\/FHIR\/sql-on-fhir\/blob\/master\/sql-on-fhir.md. BigQuery only allows a maximum of 10,000 columns per table. Due to this limitation, the server will not generate schemas for fields of type @Resource@, which can hold any resource type. The affected fields are @Parameters.parameter.resource@, @Bundle.entry.resource@, and @Bundle.entry.response.outcome@. Analytics schema does not gracefully handle extensions with one or more occurrences, anaytics schema also does not handle contained resource. Additionally, extensions with a URL ending in \"\/{existing/resource/field_name}\" may cause undefined behavior.
pattern SchemaConfig_SchemaType_Analytics :: SchemaConfig_SchemaType
pattern SchemaConfig_SchemaType_Analytics = SchemaConfig_SchemaType "ANALYTICS"

-- | Analytics V2, similar to schema defined by the FHIR community, with added support for extensions with one or more occurrences and contained resources in stringified JSON. Extensions with a URL ending in \"\/{existing/resource/field_name}\" will cause conflict and prevent the resource from being sent to BigQuery. Analytics V2 uses more space in the destination table than Analytics V1. It is generally recommended to use Analytics V2 over Analytics.
pattern SchemaConfig_SchemaType_ANALYTICS_V2 :: SchemaConfig_SchemaType
pattern SchemaConfig_SchemaType_ANALYTICS_V2 = SchemaConfig_SchemaType "ANALYTICS_V2"

{-# COMPLETE
  SchemaConfig_SchemaType_SCHEMATYPEUNSPECIFIED,
  SchemaConfig_SchemaType_Analytics,
  SchemaConfig_SchemaType_ANALYTICS_V2,
  SchemaConfig_SchemaType
  #-}

-- | Optional. Determines how messages that fail to parse are handled.
newtype SchemaPackage_SchematizedParsingType = SchemaPackage_SchematizedParsingType {fromSchemaPackage_SchematizedParsingType :: Core.Text}
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

-- | Unspecified schematized parsing type, equivalent to @SOFT_FAIL@.
pattern SchemaPackage_SchematizedParsingType_SCHEMATIZEDPARSINGTYPEUNSPECIFIED :: SchemaPackage_SchematizedParsingType
pattern SchemaPackage_SchematizedParsingType_SCHEMATIZEDPARSINGTYPEUNSPECIFIED = SchemaPackage_SchematizedParsingType "SCHEMATIZED_PARSING_TYPE_UNSPECIFIED"

-- | Messages that fail to parse are still stored and ACKed but a parser error is stored in place of the schematized data.
pattern SchemaPackage_SchematizedParsingType_SOFTFAIL :: SchemaPackage_SchematizedParsingType
pattern SchemaPackage_SchematizedParsingType_SOFTFAIL = SchemaPackage_SchematizedParsingType "SOFT_FAIL"

-- | Messages that fail to parse are rejected from ingestion\/insertion and return an error code.
pattern SchemaPackage_SchematizedParsingType_HARDFAIL :: SchemaPackage_SchematizedParsingType
pattern SchemaPackage_SchematizedParsingType_HARDFAIL = SchemaPackage_SchematizedParsingType "HARD_FAIL"

{-# COMPLETE
  SchemaPackage_SchematizedParsingType_SCHEMATIZEDPARSINGTYPEUNSPECIFIED,
  SchemaPackage_SchematizedParsingType_SOFTFAIL,
  SchemaPackage_SchematizedParsingType_HARDFAIL,
  SchemaPackage_SchematizedParsingType
  #-}

-- | Optional. Determines how unexpected segments (segments not matched to the schema) are handled.
newtype SchemaPackage_UnexpectedSegmentHandling = SchemaPackage_UnexpectedSegmentHandling {fromSchemaPackage_UnexpectedSegmentHandling :: Core.Text}
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

-- | Unspecified handling mode, equivalent to FAIL.
pattern SchemaPackage_UnexpectedSegmentHandling_UNEXPECTEDSEGMENTHANDLINGMODEUNSPECIFIED :: SchemaPackage_UnexpectedSegmentHandling
pattern SchemaPackage_UnexpectedSegmentHandling_UNEXPECTEDSEGMENTHANDLINGMODEUNSPECIFIED = SchemaPackage_UnexpectedSegmentHandling "UNEXPECTED_SEGMENT_HANDLING_MODE_UNSPECIFIED"

-- | Unexpected segments fail to parse and return an error.
pattern SchemaPackage_UnexpectedSegmentHandling_Fail :: SchemaPackage_UnexpectedSegmentHandling
pattern SchemaPackage_UnexpectedSegmentHandling_Fail = SchemaPackage_UnexpectedSegmentHandling "FAIL"

-- | Unexpected segments do not fail, but are omitted from the output.
pattern SchemaPackage_UnexpectedSegmentHandling_Skip :: SchemaPackage_UnexpectedSegmentHandling
pattern SchemaPackage_UnexpectedSegmentHandling_Skip = SchemaPackage_UnexpectedSegmentHandling "SKIP"

-- | Unexpected segments do not fail, but are parsed in place and added to the current group. If a segment has a type definition, it is used, otherwise it is parsed as VARIES.
pattern SchemaPackage_UnexpectedSegmentHandling_Parse :: SchemaPackage_UnexpectedSegmentHandling
pattern SchemaPackage_UnexpectedSegmentHandling_Parse = SchemaPackage_UnexpectedSegmentHandling "PARSE"

{-# COMPLETE
  SchemaPackage_UnexpectedSegmentHandling_UNEXPECTEDSEGMENTHANDLINGMODEUNSPECIFIED,
  SchemaPackage_UnexpectedSegmentHandling_Fail,
  SchemaPackage_UnexpectedSegmentHandling_Skip,
  SchemaPackage_UnexpectedSegmentHandling_Parse,
  SchemaPackage_UnexpectedSegmentHandling
  #-}

-- | Type of partitioning.
newtype TimePartitioning_Type = TimePartitioning_Type {fromTimePartitioning_Type :: Core.Text}
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

-- | Default unknown time.
pattern TimePartitioning_Type_PARTITIONTYPEUNSPECIFIED :: TimePartitioning_Type
pattern TimePartitioning_Type_PARTITIONTYPEUNSPECIFIED = TimePartitioning_Type "PARTITION_TYPE_UNSPECIFIED"

-- | Data partitioned by hour.
pattern TimePartitioning_Type_Hour :: TimePartitioning_Type
pattern TimePartitioning_Type_Hour = TimePartitioning_Type "HOUR"

-- | Data partitioned by day.
pattern TimePartitioning_Type_Day :: TimePartitioning_Type
pattern TimePartitioning_Type_Day = TimePartitioning_Type "DAY"

-- | Data partitioned by month.
pattern TimePartitioning_Type_Month :: TimePartitioning_Type
pattern TimePartitioning_Type_Month = TimePartitioning_Type "MONTH"

-- | Data partitioned by year.
pattern TimePartitioning_Type_Year :: TimePartitioning_Type
pattern TimePartitioning_Type_Year = TimePartitioning_Type "YEAR"

{-# COMPLETE
  TimePartitioning_Type_PARTITIONTYPEUNSPECIFIED,
  TimePartitioning_Type_Hour,
  TimePartitioning_Type_Day,
  TimePartitioning_Type_Month,
  TimePartitioning_Type_Year,
  TimePartitioning_Type
  #-}

-- | If this is a primitive type then this field is the type of the primitive For example, STRING. Leave unspecified for composite types.
newtype Type_Primitive = Type_Primitive {fromType_Primitive :: Core.Text}
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

-- | Not a primitive.
pattern Type_Primitive_PRIMITIVEUNSPECIFIED :: Type_Primitive
pattern Type_Primitive_PRIMITIVEUNSPECIFIED = Type_Primitive "PRIMITIVE_UNSPECIFIED"

-- | String primitive.
pattern Type_Primitive_String :: Type_Primitive
pattern Type_Primitive_String = Type_Primitive "STRING"

-- | Element that can have unschematized children.
pattern Type_Primitive_Varies :: Type_Primitive
pattern Type_Primitive_Varies = Type_Primitive "VARIES"

-- | Like STRING, but all delimiters below this element are ignored.
pattern Type_Primitive_UNESCAPEDSTRING :: Type_Primitive
pattern Type_Primitive_UNESCAPEDSTRING = Type_Primitive "UNESCAPED_STRING"

{-# COMPLETE
  Type_Primitive_PRIMITIVEUNSPECIFIED,
  Type_Primitive_String,
  Type_Primitive_Varies,
  Type_Primitive_UNESCAPEDSTRING,
  Type_Primitive
  #-}

-- | Specifies which parts of the Message resource to return in the response. When unspecified, equivalent to FULL.
newtype ProjectsLocationsDatasetsHl7V2StoresMessagesGetView = ProjectsLocationsDatasetsHl7V2StoresMessagesGetView {fromProjectsLocationsDatasetsHl7V2StoresMessagesGetView :: Core.Text}
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

-- | Not specified, equivalent to FULL.
pattern ProjectsLocationsDatasetsHl7V2StoresMessagesGetView_MESSAGEVIEWUNSPECIFIED :: ProjectsLocationsDatasetsHl7V2StoresMessagesGetView
pattern ProjectsLocationsDatasetsHl7V2StoresMessagesGetView_MESSAGEVIEWUNSPECIFIED = ProjectsLocationsDatasetsHl7V2StoresMessagesGetView "MESSAGE_VIEW_UNSPECIFIED"

-- | Server responses include all the message fields except parsed/data field, and schematized/data fields.
pattern ProjectsLocationsDatasetsHl7V2StoresMessagesGetView_RAWONLY :: ProjectsLocationsDatasetsHl7V2StoresMessagesGetView
pattern ProjectsLocationsDatasetsHl7V2StoresMessagesGetView_RAWONLY = ProjectsLocationsDatasetsHl7V2StoresMessagesGetView "RAW_ONLY"

-- | Server responses include all the message fields except data field, and schematized_data fields.
pattern ProjectsLocationsDatasetsHl7V2StoresMessagesGetView_PARSEDONLY :: ProjectsLocationsDatasetsHl7V2StoresMessagesGetView
pattern ProjectsLocationsDatasetsHl7V2StoresMessagesGetView_PARSEDONLY = ProjectsLocationsDatasetsHl7V2StoresMessagesGetView "PARSED_ONLY"

-- | Server responses include all the message fields.
pattern ProjectsLocationsDatasetsHl7V2StoresMessagesGetView_Full :: ProjectsLocationsDatasetsHl7V2StoresMessagesGetView
pattern ProjectsLocationsDatasetsHl7V2StoresMessagesGetView_Full = ProjectsLocationsDatasetsHl7V2StoresMessagesGetView "FULL"

-- | Server responses include all the message fields except data and parsed_data fields.
pattern ProjectsLocationsDatasetsHl7V2StoresMessagesGetView_SCHEMATIZEDONLY :: ProjectsLocationsDatasetsHl7V2StoresMessagesGetView
pattern ProjectsLocationsDatasetsHl7V2StoresMessagesGetView_SCHEMATIZEDONLY = ProjectsLocationsDatasetsHl7V2StoresMessagesGetView "SCHEMATIZED_ONLY"

-- | Server responses include only the name field.
pattern ProjectsLocationsDatasetsHl7V2StoresMessagesGetView_Basic :: ProjectsLocationsDatasetsHl7V2StoresMessagesGetView
pattern ProjectsLocationsDatasetsHl7V2StoresMessagesGetView_Basic = ProjectsLocationsDatasetsHl7V2StoresMessagesGetView "BASIC"

{-# COMPLETE
  ProjectsLocationsDatasetsHl7V2StoresMessagesGetView_MESSAGEVIEWUNSPECIFIED,
  ProjectsLocationsDatasetsHl7V2StoresMessagesGetView_RAWONLY,
  ProjectsLocationsDatasetsHl7V2StoresMessagesGetView_PARSEDONLY,
  ProjectsLocationsDatasetsHl7V2StoresMessagesGetView_Full,
  ProjectsLocationsDatasetsHl7V2StoresMessagesGetView_SCHEMATIZEDONLY,
  ProjectsLocationsDatasetsHl7V2StoresMessagesGetView_Basic,
  ProjectsLocationsDatasetsHl7V2StoresMessagesGetView
  #-}

-- | Specifies the parts of the Message to return in the response. When unspecified, equivalent to BASIC. Setting this to anything other than BASIC with a @page_size@ larger than the default can generate a large response, which impacts the performance of this method.
newtype ProjectsLocationsDatasetsHl7V2StoresMessagesListView = ProjectsLocationsDatasetsHl7V2StoresMessagesListView {fromProjectsLocationsDatasetsHl7V2StoresMessagesListView :: Core.Text}
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

-- | Not specified, equivalent to FULL.
pattern ProjectsLocationsDatasetsHl7V2StoresMessagesListView_MESSAGEVIEWUNSPECIFIED :: ProjectsLocationsDatasetsHl7V2StoresMessagesListView
pattern ProjectsLocationsDatasetsHl7V2StoresMessagesListView_MESSAGEVIEWUNSPECIFIED = ProjectsLocationsDatasetsHl7V2StoresMessagesListView "MESSAGE_VIEW_UNSPECIFIED"

-- | Server responses include all the message fields except parsed/data field, and schematized/data fields.
pattern ProjectsLocationsDatasetsHl7V2StoresMessagesListView_RAWONLY :: ProjectsLocationsDatasetsHl7V2StoresMessagesListView
pattern ProjectsLocationsDatasetsHl7V2StoresMessagesListView_RAWONLY = ProjectsLocationsDatasetsHl7V2StoresMessagesListView "RAW_ONLY"

-- | Server responses include all the message fields except data field, and schematized_data fields.
pattern ProjectsLocationsDatasetsHl7V2StoresMessagesListView_PARSEDONLY :: ProjectsLocationsDatasetsHl7V2StoresMessagesListView
pattern ProjectsLocationsDatasetsHl7V2StoresMessagesListView_PARSEDONLY = ProjectsLocationsDatasetsHl7V2StoresMessagesListView "PARSED_ONLY"

-- | Server responses include all the message fields.
pattern ProjectsLocationsDatasetsHl7V2StoresMessagesListView_Full :: ProjectsLocationsDatasetsHl7V2StoresMessagesListView
pattern ProjectsLocationsDatasetsHl7V2StoresMessagesListView_Full = ProjectsLocationsDatasetsHl7V2StoresMessagesListView "FULL"

-- | Server responses include all the message fields except data and parsed_data fields.
pattern ProjectsLocationsDatasetsHl7V2StoresMessagesListView_SCHEMATIZEDONLY :: ProjectsLocationsDatasetsHl7V2StoresMessagesListView
pattern ProjectsLocationsDatasetsHl7V2StoresMessagesListView_SCHEMATIZEDONLY = ProjectsLocationsDatasetsHl7V2StoresMessagesListView "SCHEMATIZED_ONLY"

-- | Server responses include only the name field.
pattern ProjectsLocationsDatasetsHl7V2StoresMessagesListView_Basic :: ProjectsLocationsDatasetsHl7V2StoresMessagesListView
pattern ProjectsLocationsDatasetsHl7V2StoresMessagesListView_Basic = ProjectsLocationsDatasetsHl7V2StoresMessagesListView "BASIC"

{-# COMPLETE
  ProjectsLocationsDatasetsHl7V2StoresMessagesListView_MESSAGEVIEWUNSPECIFIED,
  ProjectsLocationsDatasetsHl7V2StoresMessagesListView_RAWONLY,
  ProjectsLocationsDatasetsHl7V2StoresMessagesListView_PARSEDONLY,
  ProjectsLocationsDatasetsHl7V2StoresMessagesListView_Full,
  ProjectsLocationsDatasetsHl7V2StoresMessagesListView_SCHEMATIZEDONLY,
  ProjectsLocationsDatasetsHl7V2StoresMessagesListView_Basic,
  ProjectsLocationsDatasetsHl7V2StoresMessagesListView
  #-}
