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
-- Module      : Gogol.Healthcare.Types
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Gogol.Healthcare.Types
  ( -- * Configuration
    healthcareService,

    -- * OAuth Scopes
    CloudPlatform'FullControl,

    -- * Types

    -- ** Xgafv
    Xgafv (..),

    -- ** ActivateConsentRequest
    ActivateConsentRequest (..),
    newActivateConsentRequest,

    -- ** AnalyzeEntitiesRequest
    AnalyzeEntitiesRequest (..),
    newAnalyzeEntitiesRequest,

    -- ** AnalyzeEntitiesRequest_LicensedVocabulariesItem
    AnalyzeEntitiesRequest_LicensedVocabulariesItem (..),

    -- ** AnalyzeEntitiesResponse
    AnalyzeEntitiesResponse (..),
    newAnalyzeEntitiesResponse,

    -- ** ArchiveUserDataMappingRequest
    ArchiveUserDataMappingRequest (..),
    newArchiveUserDataMappingRequest,

    -- ** ArchiveUserDataMappingResponse
    ArchiveUserDataMappingResponse (..),
    newArchiveUserDataMappingResponse,

    -- ** Attribute
    Attribute (..),
    newAttribute,

    -- ** AttributeDefinition
    AttributeDefinition (..),
    newAttributeDefinition,

    -- ** AttributeDefinition_Category
    AttributeDefinition_Category (..),

    -- ** AuditConfig
    AuditConfig (..),
    newAuditConfig,

    -- ** AuditLogConfig
    AuditLogConfig (..),
    newAuditLogConfig,

    -- ** AuditLogConfig_LogType
    AuditLogConfig_LogType (..),

    -- ** Binding
    Binding (..),
    newBinding,

    -- ** CancelOperationRequest
    CancelOperationRequest (..),
    newCancelOperationRequest,

    -- ** CharacterMaskConfig
    CharacterMaskConfig (..),
    newCharacterMaskConfig,

    -- ** CheckDataAccessRequest
    CheckDataAccessRequest (..),
    newCheckDataAccessRequest,

    -- ** CheckDataAccessRequest_RequestAttributes
    CheckDataAccessRequest_RequestAttributes (..),
    newCheckDataAccessRequest_RequestAttributes,

    -- ** CheckDataAccessRequest_ResponseView
    CheckDataAccessRequest_ResponseView (..),

    -- ** CheckDataAccessResponse
    CheckDataAccessResponse (..),
    newCheckDataAccessResponse,

    -- ** CheckDataAccessResponse_ConsentDetails
    CheckDataAccessResponse_ConsentDetails (..),
    newCheckDataAccessResponse_ConsentDetails,

    -- ** Consent
    Consent (..),
    newConsent,

    -- ** Consent_Metadata
    Consent_Metadata (..),
    newConsent_Metadata,

    -- ** Consent_State
    Consent_State (..),

    -- ** ConsentArtifact
    ConsentArtifact (..),
    newConsentArtifact,

    -- ** ConsentArtifact_Metadata
    ConsentArtifact_Metadata (..),
    newConsentArtifact_Metadata,

    -- ** ConsentEvaluation
    ConsentEvaluation (..),
    newConsentEvaluation,

    -- ** ConsentEvaluation_EvaluationResult
    ConsentEvaluation_EvaluationResult (..),

    -- ** ConsentList
    ConsentList (..),
    newConsentList,

    -- ** ConsentStore
    ConsentStore (..),
    newConsentStore,

    -- ** ConsentStore_Labels
    ConsentStore_Labels (..),
    newConsentStore_Labels,

    -- ** CreateMessageRequest
    CreateMessageRequest (..),
    newCreateMessageRequest,

    -- ** CryptoHashConfig
    CryptoHashConfig (..),
    newCryptoHashConfig,

    -- ** Dataset
    Dataset (..),
    newDataset,

    -- ** DateShiftConfig
    DateShiftConfig (..),
    newDateShiftConfig,

    -- ** DeidentifiedStoreDestination
    DeidentifiedStoreDestination (..),
    newDeidentifiedStoreDestination,

    -- ** DeidentifyConfig
    DeidentifyConfig (..),
    newDeidentifyConfig,

    -- ** DeidentifyDatasetRequest
    DeidentifyDatasetRequest (..),
    newDeidentifyDatasetRequest,

    -- ** DeidentifyDicomStoreRequest
    DeidentifyDicomStoreRequest (..),
    newDeidentifyDicomStoreRequest,

    -- ** DeidentifyFhirStoreRequest
    DeidentifyFhirStoreRequest (..),
    newDeidentifyFhirStoreRequest,

    -- ** DeidentifySummary
    DeidentifySummary (..),
    newDeidentifySummary,

    -- ** DicomConfig
    DicomConfig (..),
    newDicomConfig,

    -- ** DicomConfig_FilterProfile
    DicomConfig_FilterProfile (..),

    -- ** DicomFilterConfig
    DicomFilterConfig (..),
    newDicomFilterConfig,

    -- ** DicomStore
    DicomStore (..),
    newDicomStore,

    -- ** DicomStore_Labels
    DicomStore_Labels (..),
    newDicomStore_Labels,

    -- ** Empty
    Empty (..),
    newEmpty,

    -- ** Entity
    Entity (..),
    newEntity,

    -- ** EntityMention
    EntityMention (..),
    newEntityMention,

    -- ** EntityMentionRelationship
    EntityMentionRelationship (..),
    newEntityMentionRelationship,

    -- ** EvaluateUserConsentsRequest
    EvaluateUserConsentsRequest (..),
    newEvaluateUserConsentsRequest,

    -- ** EvaluateUserConsentsRequest_RequestAttributes
    EvaluateUserConsentsRequest_RequestAttributes (..),
    newEvaluateUserConsentsRequest_RequestAttributes,

    -- ** EvaluateUserConsentsRequest_ResourceAttributes
    EvaluateUserConsentsRequest_ResourceAttributes (..),
    newEvaluateUserConsentsRequest_ResourceAttributes,

    -- ** EvaluateUserConsentsRequest_ResponseView
    EvaluateUserConsentsRequest_ResponseView (..),

    -- ** EvaluateUserConsentsResponse
    EvaluateUserConsentsResponse (..),
    newEvaluateUserConsentsResponse,

    -- ** ExportDicomDataRequest
    ExportDicomDataRequest (..),
    newExportDicomDataRequest,

    -- ** ExportDicomDataResponse
    ExportDicomDataResponse (..),
    newExportDicomDataResponse,

    -- ** ExportMessagesRequest
    ExportMessagesRequest (..),
    newExportMessagesRequest,

    -- ** ExportMessagesResponse
    ExportMessagesResponse (..),
    newExportMessagesResponse,

    -- ** ExportResourcesRequest
    ExportResourcesRequest (..),
    newExportResourcesRequest,

    -- ** ExportResourcesResponse
    ExportResourcesResponse (..),
    newExportResourcesResponse,

    -- ** Expr
    Expr (..),
    newExpr,

    -- ** Feature
    Feature (..),
    newFeature,

    -- ** FhirConfig
    FhirConfig (..),
    newFhirConfig,

    -- ** FhirFilter
    FhirFilter (..),
    newFhirFilter,

    -- ** FhirStore
    FhirStore (..),
    newFhirStore,

    -- ** FhirStore_ComplexDataTypeReferenceParsing
    FhirStore_ComplexDataTypeReferenceParsing (..),

    -- ** FhirStore_Labels
    FhirStore_Labels (..),
    newFhirStore_Labels,

    -- ** FhirStore_Version
    FhirStore_Version (..),

    -- ** FhirStoreMetric
    FhirStoreMetric (..),
    newFhirStoreMetric,

    -- ** FhirStoreMetrics
    FhirStoreMetrics (..),
    newFhirStoreMetrics,

    -- ** Field
    Field (..),
    newField,

    -- ** FieldMetadata
    FieldMetadata (..),
    newFieldMetadata,

    -- ** FieldMetadata_Action
    FieldMetadata_Action (..),

    -- ** GcsDestination
    GcsDestination (..),
    newGcsDestination,

    -- ** GcsDestination_ContentStructure
    GcsDestination_ContentStructure (..),

    -- ** GcsDestination_MessageView
    GcsDestination_MessageView (..),

    -- ** GcsSource
    GcsSource (..),
    newGcsSource,

    -- ** GoogleCloudHealthcareV1ConsentGcsDestination
    GoogleCloudHealthcareV1ConsentGcsDestination (..),
    newGoogleCloudHealthcareV1ConsentGcsDestination,

    -- ** GoogleCloudHealthcareV1ConsentPolicy
    GoogleCloudHealthcareV1ConsentPolicy (..),
    newGoogleCloudHealthcareV1ConsentPolicy,

    -- ** GoogleCloudHealthcareV1DeidentifyDeidentifyDicomStoreSummary
    GoogleCloudHealthcareV1DeidentifyDeidentifyDicomStoreSummary (..),
    newGoogleCloudHealthcareV1DeidentifyDeidentifyDicomStoreSummary,

    -- ** GoogleCloudHealthcareV1DeidentifyDeidentifyFhirStoreSummary
    GoogleCloudHealthcareV1DeidentifyDeidentifyFhirStoreSummary (..),
    newGoogleCloudHealthcareV1DeidentifyDeidentifyFhirStoreSummary,

    -- ** GoogleCloudHealthcareV1DicomBigQueryDestination
    GoogleCloudHealthcareV1DicomBigQueryDestination (..),
    newGoogleCloudHealthcareV1DicomBigQueryDestination,

    -- ** GoogleCloudHealthcareV1DicomBigQueryDestination_WriteDisposition
    GoogleCloudHealthcareV1DicomBigQueryDestination_WriteDisposition (..),

    -- ** GoogleCloudHealthcareV1DicomGcsDestination
    GoogleCloudHealthcareV1DicomGcsDestination (..),
    newGoogleCloudHealthcareV1DicomGcsDestination,

    -- ** GoogleCloudHealthcareV1DicomGcsSource
    GoogleCloudHealthcareV1DicomGcsSource (..),
    newGoogleCloudHealthcareV1DicomGcsSource,

    -- ** GoogleCloudHealthcareV1FhirBigQueryDestination
    GoogleCloudHealthcareV1FhirBigQueryDestination (..),
    newGoogleCloudHealthcareV1FhirBigQueryDestination,

    -- ** GoogleCloudHealthcareV1FhirBigQueryDestination_WriteDisposition
    GoogleCloudHealthcareV1FhirBigQueryDestination_WriteDisposition (..),

    -- ** GoogleCloudHealthcareV1FhirGcsDestination
    GoogleCloudHealthcareV1FhirGcsDestination (..),
    newGoogleCloudHealthcareV1FhirGcsDestination,

    -- ** GoogleCloudHealthcareV1FhirGcsSource
    GoogleCloudHealthcareV1FhirGcsSource (..),
    newGoogleCloudHealthcareV1FhirGcsSource,

    -- ** GroupOrSegment
    GroupOrSegment (..),
    newGroupOrSegment,

    -- ** Hl7SchemaConfig
    Hl7SchemaConfig (..),
    newHl7SchemaConfig,

    -- ** Hl7SchemaConfig_MessageSchemaConfigs
    Hl7SchemaConfig_MessageSchemaConfigs (..),
    newHl7SchemaConfig_MessageSchemaConfigs,

    -- ** Hl7TypesConfig
    Hl7TypesConfig (..),
    newHl7TypesConfig,

    -- ** Hl7V2NotificationConfig
    Hl7V2NotificationConfig (..),
    newHl7V2NotificationConfig,

    -- ** Hl7V2Store
    Hl7V2Store (..),
    newHl7V2Store,

    -- ** Hl7V2Store_Labels
    Hl7V2Store_Labels (..),
    newHl7V2Store_Labels,

    -- ** HttpBody
    HttpBody (..),
    newHttpBody,

    -- ** HttpBody_ExtensionsItem
    HttpBody_ExtensionsItem (..),
    newHttpBody_ExtensionsItem,

    -- ** Image
    Image (..),
    newImage,

    -- ** ImageConfig
    ImageConfig (..),
    newImageConfig,

    -- ** ImageConfig_TextRedactionMode
    ImageConfig_TextRedactionMode (..),

    -- ** ImportDicomDataRequest
    ImportDicomDataRequest (..),
    newImportDicomDataRequest,

    -- ** ImportDicomDataResponse
    ImportDicomDataResponse (..),
    newImportDicomDataResponse,

    -- ** ImportMessagesRequest
    ImportMessagesRequest (..),
    newImportMessagesRequest,

    -- ** ImportMessagesResponse
    ImportMessagesResponse (..),
    newImportMessagesResponse,

    -- ** ImportResourcesRequest
    ImportResourcesRequest (..),
    newImportResourcesRequest,

    -- ** ImportResourcesRequest_ContentStructure
    ImportResourcesRequest_ContentStructure (..),

    -- ** ImportResourcesResponse
    ImportResourcesResponse (..),
    newImportResourcesResponse,

    -- ** InfoTypeTransformation
    InfoTypeTransformation (..),
    newInfoTypeTransformation,

    -- ** IngestMessageRequest
    IngestMessageRequest (..),
    newIngestMessageRequest,

    -- ** IngestMessageResponse
    IngestMessageResponse (..),
    newIngestMessageResponse,

    -- ** KmsWrappedCryptoKey
    KmsWrappedCryptoKey (..),
    newKmsWrappedCryptoKey,

    -- ** LinkedEntity
    LinkedEntity (..),
    newLinkedEntity,

    -- ** ListAttributeDefinitionsResponse
    ListAttributeDefinitionsResponse (..),
    newListAttributeDefinitionsResponse,

    -- ** ListConsentArtifactsResponse
    ListConsentArtifactsResponse (..),
    newListConsentArtifactsResponse,

    -- ** ListConsentRevisionsResponse
    ListConsentRevisionsResponse (..),
    newListConsentRevisionsResponse,

    -- ** ListConsentStoresResponse
    ListConsentStoresResponse (..),
    newListConsentStoresResponse,

    -- ** ListConsentsResponse
    ListConsentsResponse (..),
    newListConsentsResponse,

    -- ** ListDatasetsResponse
    ListDatasetsResponse (..),
    newListDatasetsResponse,

    -- ** ListDicomStoresResponse
    ListDicomStoresResponse (..),
    newListDicomStoresResponse,

    -- ** ListFhirStoresResponse
    ListFhirStoresResponse (..),
    newListFhirStoresResponse,

    -- ** ListHl7V2StoresResponse
    ListHl7V2StoresResponse (..),
    newListHl7V2StoresResponse,

    -- ** ListLocationsResponse
    ListLocationsResponse (..),
    newListLocationsResponse,

    -- ** ListMessagesResponse
    ListMessagesResponse (..),
    newListMessagesResponse,

    -- ** ListOperationsResponse
    ListOperationsResponse (..),
    newListOperationsResponse,

    -- ** ListUserDataMappingsResponse
    ListUserDataMappingsResponse (..),
    newListUserDataMappingsResponse,

    -- ** Location
    Location (..),
    newLocation,

    -- ** Location_Labels
    Location_Labels (..),
    newLocation_Labels,

    -- ** Location_Metadata
    Location_Metadata (..),
    newLocation_Metadata,

    -- ** Message
    Message (..),
    newMessage,

    -- ** Message_Labels
    Message_Labels (..),
    newMessage_Labels,

    -- ** NotificationConfig
    NotificationConfig (..),
    newNotificationConfig,

    -- ** Operation
    Operation (..),
    newOperation,

    -- ** Operation_Metadata
    Operation_Metadata (..),
    newOperation_Metadata,

    -- ** Operation_Response
    Operation_Response (..),
    newOperation_Response,

    -- ** OperationMetadata
    OperationMetadata (..),
    newOperationMetadata,

    -- ** ParsedData
    ParsedData (..),
    newParsedData,

    -- ** ParserConfig
    ParserConfig (..),
    newParserConfig,

    -- ** ParserConfig_Version
    ParserConfig_Version (..),

    -- ** PatientId
    PatientId (..),
    newPatientId,

    -- ** Policy
    Policy (..),
    newPolicy,

    -- ** ProgressCounter
    ProgressCounter (..),
    newProgressCounter,

    -- ** QueryAccessibleDataRequest
    QueryAccessibleDataRequest (..),
    newQueryAccessibleDataRequest,

    -- ** QueryAccessibleDataRequest_RequestAttributes
    QueryAccessibleDataRequest_RequestAttributes (..),
    newQueryAccessibleDataRequest_RequestAttributes,

    -- ** QueryAccessibleDataRequest_ResourceAttributes
    QueryAccessibleDataRequest_ResourceAttributes (..),
    newQueryAccessibleDataRequest_ResourceAttributes,

    -- ** QueryAccessibleDataResponse
    QueryAccessibleDataResponse (..),
    newQueryAccessibleDataResponse,

    -- ** RedactConfig
    RedactConfig (..),
    newRedactConfig,

    -- ** RejectConsentRequest
    RejectConsentRequest (..),
    newRejectConsentRequest,

    -- ** ReplaceWithInfoTypeConfig
    ReplaceWithInfoTypeConfig (..),
    newReplaceWithInfoTypeConfig,

    -- ** Resources
    Resources (..),
    newResources,

    -- ** Result
    Result (..),
    newResult,

    -- ** Result_ConsentDetails
    Result_ConsentDetails (..),
    newResult_ConsentDetails,

    -- ** RevokeConsentRequest
    RevokeConsentRequest (..),
    newRevokeConsentRequest,

    -- ** SchemaConfig
    SchemaConfig (..),
    newSchemaConfig,

    -- ** SchemaConfig_SchemaType
    SchemaConfig_SchemaType (..),

    -- ** SchemaGroup
    SchemaGroup (..),
    newSchemaGroup,

    -- ** SchemaPackage
    SchemaPackage (..),
    newSchemaPackage,

    -- ** SchemaPackage_SchematizedParsingType
    SchemaPackage_SchematizedParsingType (..),

    -- ** SchemaPackage_UnexpectedSegmentHandling
    SchemaPackage_UnexpectedSegmentHandling (..),

    -- ** SchemaSegment
    SchemaSegment (..),
    newSchemaSegment,

    -- ** SchematizedData
    SchematizedData (..),
    newSchematizedData,

    -- ** SearchResourcesRequest
    SearchResourcesRequest (..),
    newSearchResourcesRequest,

    -- ** Segment
    Segment (..),
    newSegment,

    -- ** Segment_Fields
    Segment_Fields (..),
    newSegment_Fields,

    -- ** SetIamPolicyRequest
    SetIamPolicyRequest (..),
    newSetIamPolicyRequest,

    -- ** Signature
    Signature (..),
    newSignature,

    -- ** Signature_Metadata
    Signature_Metadata (..),
    newSignature_Metadata,

    -- ** Status
    Status (..),
    newStatus,

    -- ** Status_DetailsItem
    Status_DetailsItem (..),
    newStatus_DetailsItem,

    -- ** StreamConfig
    StreamConfig (..),
    newStreamConfig,

    -- ** TagFilterList
    TagFilterList (..),
    newTagFilterList,

    -- ** TestIamPermissionsRequest
    TestIamPermissionsRequest (..),
    newTestIamPermissionsRequest,

    -- ** TestIamPermissionsResponse
    TestIamPermissionsResponse (..),
    newTestIamPermissionsResponse,

    -- ** TextConfig
    TextConfig (..),
    newTextConfig,

    -- ** TextSpan
    TextSpan (..),
    newTextSpan,

    -- ** TimePartitioning
    TimePartitioning (..),
    newTimePartitioning,

    -- ** TimePartitioning_Type
    TimePartitioning_Type (..),

    -- ** Type
    Type (..),
    newType,

    -- ** Type_Primitive
    Type_Primitive (..),

    -- ** UserDataMapping
    UserDataMapping (..),
    newUserDataMapping,

    -- ** ValidationConfig
    ValidationConfig (..),
    newValidationConfig,

    -- ** VersionSource
    VersionSource (..),
    newVersionSource,

    -- ** ProjectsLocationsDatasetsHl7V2StoresMessagesGetView
    ProjectsLocationsDatasetsHl7V2StoresMessagesGetView (..),

    -- ** ProjectsLocationsDatasetsHl7V2StoresMessagesListView
    ProjectsLocationsDatasetsHl7V2StoresMessagesListView (..),
  )
where

import Gogol.Healthcare.Internal.Product
import Gogol.Healthcare.Internal.Sum
import qualified Gogol.Prelude as Core

-- | Default request referring to version @v1@ of the Cloud Healthcare API. This contains the host and root path used as a starting point for constructing service requests.
healthcareService :: Core.ServiceConfig
healthcareService =
  Core.defaultService
    (Core.ServiceId "healthcare:v1")
    "healthcare.googleapis.com"

-- | See, edit, configure, and delete your Google Cloud data and see the email address for your Google Account.
type CloudPlatform'FullControl = "https://www.googleapis.com/auth/cloud-platform"
