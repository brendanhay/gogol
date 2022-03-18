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
-- Module      : Gogol.Healthcare.Internal.Sum
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Gogol.Healthcare.Internal.Sum
  ( -- * Xgafv
    Xgafv
      ( Xgafv_1,
        Xgafv_2,
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

    -- * ConsentEvaluation_EvaluationResult
    ConsentEvaluation_EvaluationResult
      ( ConsentEvaluation_EvaluationResult_EVALUATIONRESULTUNSPECIFIED,
        ConsentEvaluation_EvaluationResult_NOTAPPLICABLE,
        ConsentEvaluation_EvaluationResult_NOMATCHINGPOLICY,
        ConsentEvaluation_EvaluationResult_NOSATISFIEDPOLICY,
        ConsentEvaluation_EvaluationResult_HASSATISFIEDPOLICY,
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
        ..
      ),

    -- * SchemaConfig_SchemaType
    SchemaConfig_SchemaType
      ( SchemaConfig_SchemaType_SCHEMATYPEUNSPECIFIED,
        SchemaConfig_SchemaType_Analytics,
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

import qualified Gogol.Prelude as Core

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

-- | Immutable. The FHIR specification version that this FHIR store supports natively. This field is immutable after store creation. Requests are rejected if they contain FHIR resources of a different version. Version is required for every FHIR store.
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

-- | Deidentify action for one field.
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

-- | No action specified.
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

-- | Determines whether the existing table in the destination is to be overwritten or appended to. If a write_disposition is specified, the @force@ parameter is ignored.
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

-- | Erase all existing data in a table before writing the instances.
pattern GoogleCloudHealthcareV1DicomBigQueryDestination_WriteDisposition_WRITETRUNCATE :: GoogleCloudHealthcareV1DicomBigQueryDestination_WriteDisposition
pattern GoogleCloudHealthcareV1DicomBigQueryDestination_WriteDisposition_WRITETRUNCATE = GoogleCloudHealthcareV1DicomBigQueryDestination_WriteDisposition "WRITE_TRUNCATE"

-- | Append data to the existing table.
pattern GoogleCloudHealthcareV1DicomBigQueryDestination_WriteDisposition_WRITEAPPEND :: GoogleCloudHealthcareV1DicomBigQueryDestination_WriteDisposition
pattern GoogleCloudHealthcareV1DicomBigQueryDestination_WriteDisposition_WRITEAPPEND = GoogleCloudHealthcareV1DicomBigQueryDestination_WriteDisposition "WRITE_APPEND"

{-# COMPLETE
  GoogleCloudHealthcareV1DicomBigQueryDestination_WriteDisposition_WRITEDISPOSITIONUNSPECIFIED,
  GoogleCloudHealthcareV1DicomBigQueryDestination_WriteDisposition_WRITEEMPTY,
  GoogleCloudHealthcareV1DicomBigQueryDestination_WriteDisposition_WRITETRUNCATE,
  GoogleCloudHealthcareV1DicomBigQueryDestination_WriteDisposition_WRITEAPPEND,
  GoogleCloudHealthcareV1DicomBigQueryDestination_WriteDisposition
  #-}

-- | Determines if existing data in the destination dataset is overwritten, appended to, or not written if the tables contain data. If a write_disposition is specified, the @force@ parameter is ignored.
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

-- | Erase all existing data in the tables before writing the instances.
pattern GoogleCloudHealthcareV1FhirBigQueryDestination_WriteDisposition_WRITETRUNCATE :: GoogleCloudHealthcareV1FhirBigQueryDestination_WriteDisposition
pattern GoogleCloudHealthcareV1FhirBigQueryDestination_WriteDisposition_WRITETRUNCATE = GoogleCloudHealthcareV1FhirBigQueryDestination_WriteDisposition "WRITE_TRUNCATE"

-- | Append data to the existing tables.
pattern GoogleCloudHealthcareV1FhirBigQueryDestination_WriteDisposition_WRITEAPPEND :: GoogleCloudHealthcareV1FhirBigQueryDestination_WriteDisposition
pattern GoogleCloudHealthcareV1FhirBigQueryDestination_WriteDisposition_WRITEAPPEND = GoogleCloudHealthcareV1FhirBigQueryDestination_WriteDisposition "WRITE_APPEND"

{-# COMPLETE
  GoogleCloudHealthcareV1FhirBigQueryDestination_WriteDisposition_WRITEDISPOSITIONUNSPECIFIED,
  GoogleCloudHealthcareV1FhirBigQueryDestination_WriteDisposition_WRITEEMPTY,
  GoogleCloudHealthcareV1FhirBigQueryDestination_WriteDisposition_WRITETRUNCATE,
  GoogleCloudHealthcareV1FhirBigQueryDestination_WriteDisposition_WRITEAPPEND,
  GoogleCloudHealthcareV1FhirBigQueryDestination_WriteDisposition
  #-}

-- | Determines how to redact text from image.
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

-- | Redact sensitive text.
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

{-# COMPLETE
  ParserConfig_Version_PARSERVERSIONUNSPECIFIED,
  ParserConfig_Version_V1,
  ParserConfig_Version_V2,
  ParserConfig_Version
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

-- | Analytics schema defined by the FHIR community. See https:\/\/github.com\/FHIR\/sql-on-fhir\/blob\/master\/sql-on-fhir.md. BigQuery only allows a maximum of 10,000 columns per table. Due to this limitation, the server will not generate schemas for fields of type @Resource@, which can hold any resource type. The affected fields are @Parameters.parameter.resource@, @Bundle.entry.resource@, and @Bundle.entry.response.outcome@.
pattern SchemaConfig_SchemaType_Analytics :: SchemaConfig_SchemaType
pattern SchemaConfig_SchemaType_Analytics = SchemaConfig_SchemaType "ANALYTICS"

{-# COMPLETE
  SchemaConfig_SchemaType_SCHEMATYPEUNSPECIFIED,
  SchemaConfig_SchemaType_Analytics,
  SchemaConfig_SchemaType
  #-}

-- | Determines how messages that fail to parse are handled.
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

-- | Determines how unexpected segments (segments not matched to the schema) are handled.
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
