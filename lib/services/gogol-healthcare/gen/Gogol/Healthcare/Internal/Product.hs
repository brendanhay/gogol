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
-- Module      : Gogol.Healthcare.Internal.Product
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Gogol.Healthcare.Internal.Product
  ( -- * ActivateConsentRequest
    ActivateConsentRequest (..),
    newActivateConsentRequest,

    -- * AnalyzeEntitiesRequest
    AnalyzeEntitiesRequest (..),
    newAnalyzeEntitiesRequest,

    -- * AnalyzeEntitiesResponse
    AnalyzeEntitiesResponse (..),
    newAnalyzeEntitiesResponse,

    -- * ArchiveUserDataMappingRequest
    ArchiveUserDataMappingRequest (..),
    newArchiveUserDataMappingRequest,

    -- * ArchiveUserDataMappingResponse
    ArchiveUserDataMappingResponse (..),
    newArchiveUserDataMappingResponse,

    -- * Attribute
    Attribute (..),
    newAttribute,

    -- * AttributeDefinition
    AttributeDefinition (..),
    newAttributeDefinition,

    -- * AuditConfig
    AuditConfig (..),
    newAuditConfig,

    -- * AuditLogConfig
    AuditLogConfig (..),
    newAuditLogConfig,

    -- * Binding
    Binding (..),
    newBinding,

    -- * CancelOperationRequest
    CancelOperationRequest (..),
    newCancelOperationRequest,

    -- * CharacterMaskConfig
    CharacterMaskConfig (..),
    newCharacterMaskConfig,

    -- * CheckDataAccessRequest
    CheckDataAccessRequest (..),
    newCheckDataAccessRequest,

    -- * CheckDataAccessRequest_RequestAttributes
    CheckDataAccessRequest_RequestAttributes (..),
    newCheckDataAccessRequest_RequestAttributes,

    -- * CheckDataAccessResponse
    CheckDataAccessResponse (..),
    newCheckDataAccessResponse,

    -- * CheckDataAccessResponse_ConsentDetails
    CheckDataAccessResponse_ConsentDetails (..),
    newCheckDataAccessResponse_ConsentDetails,

    -- * Consent
    Consent (..),
    newConsent,

    -- * Consent_Metadata
    Consent_Metadata (..),
    newConsent_Metadata,

    -- * ConsentArtifact
    ConsentArtifact (..),
    newConsentArtifact,

    -- * ConsentArtifact_Metadata
    ConsentArtifact_Metadata (..),
    newConsentArtifact_Metadata,

    -- * ConsentEvaluation
    ConsentEvaluation (..),
    newConsentEvaluation,

    -- * ConsentList
    ConsentList (..),
    newConsentList,

    -- * ConsentStore
    ConsentStore (..),
    newConsentStore,

    -- * ConsentStore_Labels
    ConsentStore_Labels (..),
    newConsentStore_Labels,

    -- * CreateMessageRequest
    CreateMessageRequest (..),
    newCreateMessageRequest,

    -- * CryptoHashConfig
    CryptoHashConfig (..),
    newCryptoHashConfig,

    -- * Dataset
    Dataset (..),
    newDataset,

    -- * DateShiftConfig
    DateShiftConfig (..),
    newDateShiftConfig,

    -- * DeidentifyConfig
    DeidentifyConfig (..),
    newDeidentifyConfig,

    -- * DeidentifyDatasetRequest
    DeidentifyDatasetRequest (..),
    newDeidentifyDatasetRequest,

    -- * DeidentifyDicomStoreRequest
    DeidentifyDicomStoreRequest (..),
    newDeidentifyDicomStoreRequest,

    -- * DeidentifyFhirStoreRequest
    DeidentifyFhirStoreRequest (..),
    newDeidentifyFhirStoreRequest,

    -- * DeidentifySummary
    DeidentifySummary (..),
    newDeidentifySummary,

    -- * DicomConfig
    DicomConfig (..),
    newDicomConfig,

    -- * DicomFilterConfig
    DicomFilterConfig (..),
    newDicomFilterConfig,

    -- * DicomStore
    DicomStore (..),
    newDicomStore,

    -- * DicomStore_Labels
    DicomStore_Labels (..),
    newDicomStore_Labels,

    -- * Empty
    Empty (..),
    newEmpty,

    -- * Entity
    Entity (..),
    newEntity,

    -- * EntityMention
    EntityMention (..),
    newEntityMention,

    -- * EntityMentionRelationship
    EntityMentionRelationship (..),
    newEntityMentionRelationship,

    -- * EvaluateUserConsentsRequest
    EvaluateUserConsentsRequest (..),
    newEvaluateUserConsentsRequest,

    -- * EvaluateUserConsentsRequest_RequestAttributes
    EvaluateUserConsentsRequest_RequestAttributes (..),
    newEvaluateUserConsentsRequest_RequestAttributes,

    -- * EvaluateUserConsentsRequest_ResourceAttributes
    EvaluateUserConsentsRequest_ResourceAttributes (..),
    newEvaluateUserConsentsRequest_ResourceAttributes,

    -- * EvaluateUserConsentsResponse
    EvaluateUserConsentsResponse (..),
    newEvaluateUserConsentsResponse,

    -- * ExportDicomDataRequest
    ExportDicomDataRequest (..),
    newExportDicomDataRequest,

    -- * ExportDicomDataResponse
    ExportDicomDataResponse (..),
    newExportDicomDataResponse,

    -- * ExportMessagesRequest
    ExportMessagesRequest (..),
    newExportMessagesRequest,

    -- * ExportMessagesResponse
    ExportMessagesResponse (..),
    newExportMessagesResponse,

    -- * ExportResourcesRequest
    ExportResourcesRequest (..),
    newExportResourcesRequest,

    -- * ExportResourcesResponse
    ExportResourcesResponse (..),
    newExportResourcesResponse,

    -- * Expr
    Expr (..),
    newExpr,

    -- * Feature
    Feature (..),
    newFeature,

    -- * FhirConfig
    FhirConfig (..),
    newFhirConfig,

    -- * FhirFilter
    FhirFilter (..),
    newFhirFilter,

    -- * FhirStore
    FhirStore (..),
    newFhirStore,

    -- * FhirStore_Labels
    FhirStore_Labels (..),
    newFhirStore_Labels,

    -- * Field
    Field (..),
    newField,

    -- * FieldMetadata
    FieldMetadata (..),
    newFieldMetadata,

    -- * GcsDestination
    GcsDestination (..),
    newGcsDestination,

    -- * GcsSource
    GcsSource (..),
    newGcsSource,

    -- * GoogleCloudHealthcareV1ConsentGcsDestination
    GoogleCloudHealthcareV1ConsentGcsDestination (..),
    newGoogleCloudHealthcareV1ConsentGcsDestination,

    -- * GoogleCloudHealthcareV1ConsentPolicy
    GoogleCloudHealthcareV1ConsentPolicy (..),
    newGoogleCloudHealthcareV1ConsentPolicy,

    -- * GoogleCloudHealthcareV1DeidentifyDeidentifyDicomStoreSummary
    GoogleCloudHealthcareV1DeidentifyDeidentifyDicomStoreSummary (..),
    newGoogleCloudHealthcareV1DeidentifyDeidentifyDicomStoreSummary,

    -- * GoogleCloudHealthcareV1DeidentifyDeidentifyFhirStoreSummary
    GoogleCloudHealthcareV1DeidentifyDeidentifyFhirStoreSummary (..),
    newGoogleCloudHealthcareV1DeidentifyDeidentifyFhirStoreSummary,

    -- * GoogleCloudHealthcareV1DicomBigQueryDestination
    GoogleCloudHealthcareV1DicomBigQueryDestination (..),
    newGoogleCloudHealthcareV1DicomBigQueryDestination,

    -- * GoogleCloudHealthcareV1DicomGcsDestination
    GoogleCloudHealthcareV1DicomGcsDestination (..),
    newGoogleCloudHealthcareV1DicomGcsDestination,

    -- * GoogleCloudHealthcareV1DicomGcsSource
    GoogleCloudHealthcareV1DicomGcsSource (..),
    newGoogleCloudHealthcareV1DicomGcsSource,

    -- * GoogleCloudHealthcareV1FhirBigQueryDestination
    GoogleCloudHealthcareV1FhirBigQueryDestination (..),
    newGoogleCloudHealthcareV1FhirBigQueryDestination,

    -- * GoogleCloudHealthcareV1FhirGcsDestination
    GoogleCloudHealthcareV1FhirGcsDestination (..),
    newGoogleCloudHealthcareV1FhirGcsDestination,

    -- * GoogleCloudHealthcareV1FhirGcsSource
    GoogleCloudHealthcareV1FhirGcsSource (..),
    newGoogleCloudHealthcareV1FhirGcsSource,

    -- * GroupOrSegment
    GroupOrSegment (..),
    newGroupOrSegment,

    -- * Hl7SchemaConfig
    Hl7SchemaConfig (..),
    newHl7SchemaConfig,

    -- * Hl7SchemaConfig_MessageSchemaConfigs
    Hl7SchemaConfig_MessageSchemaConfigs (..),
    newHl7SchemaConfig_MessageSchemaConfigs,

    -- * Hl7TypesConfig
    Hl7TypesConfig (..),
    newHl7TypesConfig,

    -- * Hl7V2NotificationConfig
    Hl7V2NotificationConfig (..),
    newHl7V2NotificationConfig,

    -- * Hl7V2Store
    Hl7V2Store (..),
    newHl7V2Store,

    -- * Hl7V2Store_Labels
    Hl7V2Store_Labels (..),
    newHl7V2Store_Labels,

    -- * HttpBody
    HttpBody (..),
    newHttpBody,

    -- * HttpBody_ExtensionsItem
    HttpBody_ExtensionsItem (..),
    newHttpBody_ExtensionsItem,

    -- * Image
    Image (..),
    newImage,

    -- * ImageConfig
    ImageConfig (..),
    newImageConfig,

    -- * ImportDicomDataRequest
    ImportDicomDataRequest (..),
    newImportDicomDataRequest,

    -- * ImportDicomDataResponse
    ImportDicomDataResponse (..),
    newImportDicomDataResponse,

    -- * ImportMessagesRequest
    ImportMessagesRequest (..),
    newImportMessagesRequest,

    -- * ImportMessagesResponse
    ImportMessagesResponse (..),
    newImportMessagesResponse,

    -- * ImportResourcesRequest
    ImportResourcesRequest (..),
    newImportResourcesRequest,

    -- * ImportResourcesResponse
    ImportResourcesResponse (..),
    newImportResourcesResponse,

    -- * InfoTypeTransformation
    InfoTypeTransformation (..),
    newInfoTypeTransformation,

    -- * IngestMessageRequest
    IngestMessageRequest (..),
    newIngestMessageRequest,

    -- * IngestMessageResponse
    IngestMessageResponse (..),
    newIngestMessageResponse,

    -- * LinkedEntity
    LinkedEntity (..),
    newLinkedEntity,

    -- * ListAttributeDefinitionsResponse
    ListAttributeDefinitionsResponse (..),
    newListAttributeDefinitionsResponse,

    -- * ListConsentArtifactsResponse
    ListConsentArtifactsResponse (..),
    newListConsentArtifactsResponse,

    -- * ListConsentRevisionsResponse
    ListConsentRevisionsResponse (..),
    newListConsentRevisionsResponse,

    -- * ListConsentStoresResponse
    ListConsentStoresResponse (..),
    newListConsentStoresResponse,

    -- * ListConsentsResponse
    ListConsentsResponse (..),
    newListConsentsResponse,

    -- * ListDatasetsResponse
    ListDatasetsResponse (..),
    newListDatasetsResponse,

    -- * ListDicomStoresResponse
    ListDicomStoresResponse (..),
    newListDicomStoresResponse,

    -- * ListFhirStoresResponse
    ListFhirStoresResponse (..),
    newListFhirStoresResponse,

    -- * ListHl7V2StoresResponse
    ListHl7V2StoresResponse (..),
    newListHl7V2StoresResponse,

    -- * ListLocationsResponse
    ListLocationsResponse (..),
    newListLocationsResponse,

    -- * ListMessagesResponse
    ListMessagesResponse (..),
    newListMessagesResponse,

    -- * ListOperationsResponse
    ListOperationsResponse (..),
    newListOperationsResponse,

    -- * ListUserDataMappingsResponse
    ListUserDataMappingsResponse (..),
    newListUserDataMappingsResponse,

    -- * Location
    Location (..),
    newLocation,

    -- * Location_Labels
    Location_Labels (..),
    newLocation_Labels,

    -- * Location_Metadata
    Location_Metadata (..),
    newLocation_Metadata,

    -- * Message
    Message (..),
    newMessage,

    -- * Message_Labels
    Message_Labels (..),
    newMessage_Labels,

    -- * NotificationConfig
    NotificationConfig (..),
    newNotificationConfig,

    -- * Operation
    Operation (..),
    newOperation,

    -- * Operation_Metadata
    Operation_Metadata (..),
    newOperation_Metadata,

    -- * Operation_Response
    Operation_Response (..),
    newOperation_Response,

    -- * OperationMetadata
    OperationMetadata (..),
    newOperationMetadata,

    -- * ParsedData
    ParsedData (..),
    newParsedData,

    -- * ParserConfig
    ParserConfig (..),
    newParserConfig,

    -- * PatientId
    PatientId (..),
    newPatientId,

    -- * Policy
    Policy (..),
    newPolicy,

    -- * ProgressCounter
    ProgressCounter (..),
    newProgressCounter,

    -- * QueryAccessibleDataRequest
    QueryAccessibleDataRequest (..),
    newQueryAccessibleDataRequest,

    -- * QueryAccessibleDataRequest_RequestAttributes
    QueryAccessibleDataRequest_RequestAttributes (..),
    newQueryAccessibleDataRequest_RequestAttributes,

    -- * QueryAccessibleDataRequest_ResourceAttributes
    QueryAccessibleDataRequest_ResourceAttributes (..),
    newQueryAccessibleDataRequest_ResourceAttributes,

    -- * QueryAccessibleDataResponse
    QueryAccessibleDataResponse (..),
    newQueryAccessibleDataResponse,

    -- * RedactConfig
    RedactConfig (..),
    newRedactConfig,

    -- * RejectConsentRequest
    RejectConsentRequest (..),
    newRejectConsentRequest,

    -- * ReplaceWithInfoTypeConfig
    ReplaceWithInfoTypeConfig (..),
    newReplaceWithInfoTypeConfig,

    -- * Resources
    Resources (..),
    newResources,

    -- * Result
    Result (..),
    newResult,

    -- * Result_ConsentDetails
    Result_ConsentDetails (..),
    newResult_ConsentDetails,

    -- * RevokeConsentRequest
    RevokeConsentRequest (..),
    newRevokeConsentRequest,

    -- * SchemaConfig
    SchemaConfig (..),
    newSchemaConfig,

    -- * SchemaGroup
    SchemaGroup (..),
    newSchemaGroup,

    -- * SchemaPackage
    SchemaPackage (..),
    newSchemaPackage,

    -- * SchemaSegment
    SchemaSegment (..),
    newSchemaSegment,

    -- * SchematizedData
    SchematizedData (..),
    newSchematizedData,

    -- * SearchResourcesRequest
    SearchResourcesRequest (..),
    newSearchResourcesRequest,

    -- * Segment
    Segment (..),
    newSegment,

    -- * Segment_Fields
    Segment_Fields (..),
    newSegment_Fields,

    -- * SetIamPolicyRequest
    SetIamPolicyRequest (..),
    newSetIamPolicyRequest,

    -- * Signature
    Signature (..),
    newSignature,

    -- * Signature_Metadata
    Signature_Metadata (..),
    newSignature_Metadata,

    -- * Status
    Status (..),
    newStatus,

    -- * Status_DetailsItem
    Status_DetailsItem (..),
    newStatus_DetailsItem,

    -- * StreamConfig
    StreamConfig (..),
    newStreamConfig,

    -- * TagFilterList
    TagFilterList (..),
    newTagFilterList,

    -- * TestIamPermissionsRequest
    TestIamPermissionsRequest (..),
    newTestIamPermissionsRequest,

    -- * TestIamPermissionsResponse
    TestIamPermissionsResponse (..),
    newTestIamPermissionsResponse,

    -- * TextConfig
    TextConfig (..),
    newTextConfig,

    -- * TextSpan
    TextSpan (..),
    newTextSpan,

    -- * Type
    Type (..),
    newType,

    -- * UserDataMapping
    UserDataMapping (..),
    newUserDataMapping,

    -- * ValidationConfig
    ValidationConfig (..),
    newValidationConfig,

    -- * VersionSource
    VersionSource (..),
    newVersionSource,
  )
where

import Gogol.Healthcare.Internal.Sum
import qualified Gogol.Prelude as Core

-- | Activates the latest revision of the specified Consent by committing a new revision with @state@ updated to @ACTIVE@. If the latest revision of the given Consent is in the @ACTIVE@ state, no new revision is committed. A FAILED_PRECONDITION error occurs if the latest revision of the given consent is in the @REJECTED@ or @REVOKED@ state.
--
-- /See:/ 'newActivateConsentRequest' smart constructor.
data ActivateConsentRequest = ActivateConsentRequest
  { -- | Required. The resource name of the Consent artifact that contains documentation of the user\'s consent, of the form @projects\/{project_id}\/locations\/{location_id}\/datasets\/{dataset_id}\/consentStores\/{consent_store_id}\/consentArtifacts\/{consent_artifact_id}@. If the draft Consent had a Consent artifact, this Consent artifact overwrites it.
    consentArtifact :: (Core.Maybe Core.Text),
    -- | Timestamp in UTC of when this Consent is considered expired.
    expireTime :: (Core.Maybe Core.DateTime),
    -- | The time to live for this Consent from when it is marked as active.
    ttl :: (Core.Maybe Core.Duration)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ActivateConsentRequest' with the minimum fields required to make a request.
newActivateConsentRequest ::
  ActivateConsentRequest
newActivateConsentRequest =
  ActivateConsentRequest
    { consentArtifact = Core.Nothing,
      expireTime = Core.Nothing,
      ttl = Core.Nothing
    }

instance Core.FromJSON ActivateConsentRequest where
  parseJSON =
    Core.withObject
      "ActivateConsentRequest"
      ( \o ->
          ActivateConsentRequest
            Core.<$> (o Core..:? "consentArtifact")
            Core.<*> (o Core..:? "expireTime")
            Core.<*> (o Core..:? "ttl")
      )

instance Core.ToJSON ActivateConsentRequest where
  toJSON ActivateConsentRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("consentArtifact" Core..=)
              Core.<$> consentArtifact,
            ("expireTime" Core..=) Core.<$> expireTime,
            ("ttl" Core..=) Core.<$> ttl
          ]
      )

-- | The request to analyze healthcare entities in a document.
--
-- /See:/ 'newAnalyzeEntitiesRequest' smart constructor.
data AnalyzeEntitiesRequest = AnalyzeEntitiesRequest
  { -- | document_content is a document to be annotated.
    documentContent :: (Core.Maybe Core.Text),
    -- | A list of licensed vocabularies to use in the request, in addition to the default unlicensed vocabularies.
    licensedVocabularies :: (Core.Maybe [AnalyzeEntitiesRequest_LicensedVocabulariesItem])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AnalyzeEntitiesRequest' with the minimum fields required to make a request.
newAnalyzeEntitiesRequest ::
  AnalyzeEntitiesRequest
newAnalyzeEntitiesRequest =
  AnalyzeEntitiesRequest
    { documentContent = Core.Nothing,
      licensedVocabularies = Core.Nothing
    }

instance Core.FromJSON AnalyzeEntitiesRequest where
  parseJSON =
    Core.withObject
      "AnalyzeEntitiesRequest"
      ( \o ->
          AnalyzeEntitiesRequest
            Core.<$> (o Core..:? "documentContent")
            Core.<*> (o Core..:? "licensedVocabularies")
      )

instance Core.ToJSON AnalyzeEntitiesRequest where
  toJSON AnalyzeEntitiesRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("documentContent" Core..=)
              Core.<$> documentContent,
            ("licensedVocabularies" Core..=)
              Core.<$> licensedVocabularies
          ]
      )

-- | Includes recognized entity mentions and relationships between them.
--
-- /See:/ 'newAnalyzeEntitiesResponse' smart constructor.
data AnalyzeEntitiesResponse = AnalyzeEntitiesResponse
  { -- | The union of all the candidate entities that the entity_mentions in this response could link to. These are UMLS concepts or normalized mention content.
    entities :: (Core.Maybe [Entity]),
    -- | entity_mentions contains all the annotated medical entities that were mentioned in the provided document.
    entityMentions :: (Core.Maybe [EntityMention]),
    -- | relationships contains all the binary relationships that were identified between entity mentions within the provided document.
    relationships :: (Core.Maybe [EntityMentionRelationship])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AnalyzeEntitiesResponse' with the minimum fields required to make a request.
newAnalyzeEntitiesResponse ::
  AnalyzeEntitiesResponse
newAnalyzeEntitiesResponse =
  AnalyzeEntitiesResponse
    { entities = Core.Nothing,
      entityMentions = Core.Nothing,
      relationships = Core.Nothing
    }

instance Core.FromJSON AnalyzeEntitiesResponse where
  parseJSON =
    Core.withObject
      "AnalyzeEntitiesResponse"
      ( \o ->
          AnalyzeEntitiesResponse
            Core.<$> (o Core..:? "entities")
            Core.<*> (o Core..:? "entityMentions")
            Core.<*> (o Core..:? "relationships")
      )

instance Core.ToJSON AnalyzeEntitiesResponse where
  toJSON AnalyzeEntitiesResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("entities" Core..=) Core.<$> entities,
            ("entityMentions" Core..=) Core.<$> entityMentions,
            ("relationships" Core..=) Core.<$> relationships
          ]
      )

-- | Archives the specified User data mapping.
--
-- /See:/ 'newArchiveUserDataMappingRequest' smart constructor.
data ArchiveUserDataMappingRequest = ArchiveUserDataMappingRequest
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ArchiveUserDataMappingRequest' with the minimum fields required to make a request.
newArchiveUserDataMappingRequest ::
  ArchiveUserDataMappingRequest
newArchiveUserDataMappingRequest = ArchiveUserDataMappingRequest

instance Core.FromJSON ArchiveUserDataMappingRequest where
  parseJSON =
    Core.withObject
      "ArchiveUserDataMappingRequest"
      (\o -> Core.pure ArchiveUserDataMappingRequest)

instance Core.ToJSON ArchiveUserDataMappingRequest where
  toJSON = Core.const Core.emptyObject

-- | Archives the specified User data mapping.
--
-- /See:/ 'newArchiveUserDataMappingResponse' smart constructor.
data ArchiveUserDataMappingResponse = ArchiveUserDataMappingResponse
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ArchiveUserDataMappingResponse' with the minimum fields required to make a request.
newArchiveUserDataMappingResponse ::
  ArchiveUserDataMappingResponse
newArchiveUserDataMappingResponse = ArchiveUserDataMappingResponse

instance Core.FromJSON ArchiveUserDataMappingResponse where
  parseJSON =
    Core.withObject
      "ArchiveUserDataMappingResponse"
      (\o -> Core.pure ArchiveUserDataMappingResponse)

instance Core.ToJSON ArchiveUserDataMappingResponse where
  toJSON = Core.const Core.emptyObject

-- | An attribute value for a Consent or User data mapping. Each Attribute must have a corresponding AttributeDefinition in the consent store that defines the default and allowed values.
--
-- /See:/ 'newAttribute' smart constructor.
data Attribute = Attribute
  { -- | Indicates the name of an attribute defined in the consent store.
    attributeDefinitionId :: (Core.Maybe Core.Text),
    -- | Required. The value of the attribute. Must be an acceptable value as defined in the consent store. For example, if the consent store defines \"data type\" with acceptable values \"questionnaire\" and \"step-count\", when the attribute name is data type, this field must contain one of those values.
    values :: (Core.Maybe [Core.Text])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Attribute' with the minimum fields required to make a request.
newAttribute ::
  Attribute
newAttribute =
  Attribute {attributeDefinitionId = Core.Nothing, values = Core.Nothing}

instance Core.FromJSON Attribute where
  parseJSON =
    Core.withObject
      "Attribute"
      ( \o ->
          Attribute
            Core.<$> (o Core..:? "attributeDefinitionId")
            Core.<*> (o Core..:? "values")
      )

instance Core.ToJSON Attribute where
  toJSON Attribute {..} =
    Core.object
      ( Core.catMaybes
          [ ("attributeDefinitionId" Core..=)
              Core.<$> attributeDefinitionId,
            ("values" Core..=) Core.<$> values
          ]
      )

-- | A client-defined consent attribute.
--
-- /See:/ 'newAttributeDefinition' smart constructor.
data AttributeDefinition = AttributeDefinition
  { -- | Required. Possible values for the attribute. The number of allowed values must not exceed 500. An empty list is invalid. The list can only be expanded after creation.
    allowedValues :: (Core.Maybe [Core.Text]),
    -- | Required. The category of the attribute. The value of this field cannot be changed after creation.
    category :: (Core.Maybe AttributeDefinition_Category),
    -- | Optional. Default values of the attribute in Consents. If no default values are specified, it defaults to an empty value.
    consentDefaultValues :: (Core.Maybe [Core.Text]),
    -- | Optional. Default value of the attribute in User data mappings. If no default value is specified, it defaults to an empty value. This field is only applicable to attributes of the category @RESOURCE@.
    dataMappingDefaultValue :: (Core.Maybe Core.Text),
    -- | Optional. A description of the attribute.
    description :: (Core.Maybe Core.Text),
    -- | Resource name of the Attribute definition, of the form @projects\/{project_id}\/locations\/{location_id}\/datasets\/{dataset_id}\/consentStores\/{consent_store_id}\/attributeDefinitions\/{attribute_definition_id}@. Cannot be changed after creation.
    name :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AttributeDefinition' with the minimum fields required to make a request.
newAttributeDefinition ::
  AttributeDefinition
newAttributeDefinition =
  AttributeDefinition
    { allowedValues = Core.Nothing,
      category = Core.Nothing,
      consentDefaultValues = Core.Nothing,
      dataMappingDefaultValue = Core.Nothing,
      description = Core.Nothing,
      name = Core.Nothing
    }

instance Core.FromJSON AttributeDefinition where
  parseJSON =
    Core.withObject
      "AttributeDefinition"
      ( \o ->
          AttributeDefinition
            Core.<$> (o Core..:? "allowedValues")
            Core.<*> (o Core..:? "category")
            Core.<*> (o Core..:? "consentDefaultValues")
            Core.<*> (o Core..:? "dataMappingDefaultValue")
            Core.<*> (o Core..:? "description")
            Core.<*> (o Core..:? "name")
      )

instance Core.ToJSON AttributeDefinition where
  toJSON AttributeDefinition {..} =
    Core.object
      ( Core.catMaybes
          [ ("allowedValues" Core..=) Core.<$> allowedValues,
            ("category" Core..=) Core.<$> category,
            ("consentDefaultValues" Core..=)
              Core.<$> consentDefaultValues,
            ("dataMappingDefaultValue" Core..=)
              Core.<$> dataMappingDefaultValue,
            ("description" Core..=) Core.<$> description,
            ("name" Core..=) Core.<$> name
          ]
      )

-- | Specifies the audit configuration for a service. The configuration determines which permission types are logged, and what identities, if any, are exempted from logging. An AuditConfig must have one or more AuditLogConfigs. If there are AuditConfigs for both @allServices@ and a specific service, the union of the two AuditConfigs is used for that service: the log/types specified in each AuditConfig are enabled, and the exempted/members in each AuditLogConfig are exempted. Example Policy with multiple AuditConfigs: { \"audit/configs\": [ { \"service\": \"allServices\", \"audit/log/configs\": [ { \"log/type\": \"DATA/READ\", \"exempted/members\": [ \"user:jose\@example.com\" ] }, { \"log/type\": \"DATA/WRITE\" }, { \"log/type\": \"ADMIN/READ\" } ] }, { \"service\": \"sampleservice.googleapis.com\", \"audit/log/configs\": [ { \"log/type\": \"DATA/READ\" }, { \"log/type\": \"DATA/WRITE\", \"exempted/members\": [ \"user:aliya\@example.com\" ] } ] } ] } For sampleservice, this policy enables DATA/READ, DATA/WRITE and
-- ADMIN/READ logging. It also exempts jose\@example.com from DATA/READ logging, and aliya\@example.com from DATA/WRITE logging.
--
-- /See:/ 'newAuditConfig' smart constructor.
data AuditConfig = AuditConfig
  { -- | The configuration for logging of each type of permission.
    auditLogConfigs :: (Core.Maybe [AuditLogConfig]),
    -- | Specifies a service that will be enabled for audit logging. For example, @storage.googleapis.com@, @cloudsql.googleapis.com@. @allServices@ is a special value that covers all services.
    service :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AuditConfig' with the minimum fields required to make a request.
newAuditConfig ::
  AuditConfig
newAuditConfig =
  AuditConfig {auditLogConfigs = Core.Nothing, service = Core.Nothing}

instance Core.FromJSON AuditConfig where
  parseJSON =
    Core.withObject
      "AuditConfig"
      ( \o ->
          AuditConfig
            Core.<$> (o Core..:? "auditLogConfigs")
            Core.<*> (o Core..:? "service")
      )

instance Core.ToJSON AuditConfig where
  toJSON AuditConfig {..} =
    Core.object
      ( Core.catMaybes
          [ ("auditLogConfigs" Core..=)
              Core.<$> auditLogConfigs,
            ("service" Core..=) Core.<$> service
          ]
      )

-- | Provides the configuration for logging a type of permissions. Example: { \"audit/log/configs\": [ { \"log/type\": \"DATA/READ\", \"exempted/members\": [ \"user:jose\@example.com\" ] }, { \"log/type\": \"DATA/WRITE\" } ] } This enables \'DATA/READ\' and \'DATA/WRITE\' logging, while exempting jose\@example.com from DATA/READ logging.
--
-- /See:/ 'newAuditLogConfig' smart constructor.
data AuditLogConfig = AuditLogConfig
  { -- | Specifies the identities that do not cause logging for this type of permission. Follows the same format of Binding.members.
    exemptedMembers :: (Core.Maybe [Core.Text]),
    -- | The log type that this config enables.
    logType :: (Core.Maybe AuditLogConfig_LogType)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AuditLogConfig' with the minimum fields required to make a request.
newAuditLogConfig ::
  AuditLogConfig
newAuditLogConfig =
  AuditLogConfig {exemptedMembers = Core.Nothing, logType = Core.Nothing}

instance Core.FromJSON AuditLogConfig where
  parseJSON =
    Core.withObject
      "AuditLogConfig"
      ( \o ->
          AuditLogConfig
            Core.<$> (o Core..:? "exemptedMembers")
            Core.<*> (o Core..:? "logType")
      )

instance Core.ToJSON AuditLogConfig where
  toJSON AuditLogConfig {..} =
    Core.object
      ( Core.catMaybes
          [ ("exemptedMembers" Core..=)
              Core.<$> exemptedMembers,
            ("logType" Core..=) Core.<$> logType
          ]
      )

-- | Associates @members@, or principals, with a @role@.
--
-- /See:/ 'newBinding' smart constructor.
data Binding = Binding
  { -- | The condition that is associated with this binding. If the condition evaluates to @true@, then this binding applies to the current request. If the condition evaluates to @false@, then this binding does not apply to the current request. However, a different role binding might grant the same role to one or more of the principals in this binding. To learn which resources support conditions in their IAM policies, see the <https://cloud.google.com/iam/help/conditions/resource-policies IAM documentation>.
    condition :: (Core.Maybe Expr),
    -- | Specifies the principals requesting access for a Cloud Platform resource. @members@ can have the following values: * @allUsers@: A special identifier that represents anyone who is on the internet; with or without a Google account. * @allAuthenticatedUsers@: A special identifier that represents anyone who is authenticated with a Google account or a service account. * @user:{emailid}@: An email address that represents a specific Google account. For example, @alice\@example.com@ . * @serviceAccount:{emailid}@: An email address that represents a service account. For example, @my-other-app\@appspot.gserviceaccount.com@. * @group:{emailid}@: An email address that represents a Google group. For example, @admins\@example.com@. * @deleted:user:{emailid}?uid={uniqueid}@: An email address (plus unique identifier) representing a user that has been recently deleted. For example, @alice\@example.com?uid=123456789012345678901@. If the user is recovered, this value reverts to @user:{emailid}@ and the recovered user retains
    -- the role in the binding. * @deleted:serviceAccount:{emailid}?uid={uniqueid}@: An email address (plus unique identifier) representing a service account that has been recently deleted. For example, @my-other-app\@appspot.gserviceaccount.com?uid=123456789012345678901@. If the service account is undeleted, this value reverts to @serviceAccount:{emailid}@ and the undeleted service account retains the role in the binding. * @deleted:group:{emailid}?uid={uniqueid}@: An email address (plus unique identifier) representing a Google group that has been recently deleted. For example, @admins\@example.com?uid=123456789012345678901@. If the group is recovered, this value reverts to @group:{emailid}@ and the recovered group retains the role in the binding. * @domain:{domain}@: The G Suite domain (primary) that represents all the users of that domain. For example, @google.com@ or @example.com@.
    members :: (Core.Maybe [Core.Text]),
    -- | Role that is assigned to the list of @members@, or principals. For example, @roles\/viewer@, @roles\/editor@, or @roles\/owner@.
    role' :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Binding' with the minimum fields required to make a request.
newBinding ::
  Binding
newBinding =
  Binding
    { condition = Core.Nothing,
      members = Core.Nothing,
      role' = Core.Nothing
    }

instance Core.FromJSON Binding where
  parseJSON =
    Core.withObject
      "Binding"
      ( \o ->
          Binding
            Core.<$> (o Core..:? "condition")
            Core.<*> (o Core..:? "members")
            Core.<*> (o Core..:? "role")
      )

instance Core.ToJSON Binding where
  toJSON Binding {..} =
    Core.object
      ( Core.catMaybes
          [ ("condition" Core..=) Core.<$> condition,
            ("members" Core..=) Core.<$> members,
            ("role" Core..=) Core.<$> role'
          ]
      )

-- | The request message for Operations.CancelOperation.
--
-- /See:/ 'newCancelOperationRequest' smart constructor.
data CancelOperationRequest = CancelOperationRequest
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CancelOperationRequest' with the minimum fields required to make a request.
newCancelOperationRequest ::
  CancelOperationRequest
newCancelOperationRequest = CancelOperationRequest

instance Core.FromJSON CancelOperationRequest where
  parseJSON =
    Core.withObject
      "CancelOperationRequest"
      (\o -> Core.pure CancelOperationRequest)

instance Core.ToJSON CancelOperationRequest where
  toJSON = Core.const Core.emptyObject

-- | Mask a string by replacing its characters with a fixed character.
--
-- /See:/ 'newCharacterMaskConfig' smart constructor.
newtype CharacterMaskConfig = CharacterMaskConfig
  { -- | Character to mask the sensitive values. If not supplied, defaults to \"*\".
    maskingCharacter :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CharacterMaskConfig' with the minimum fields required to make a request.
newCharacterMaskConfig ::
  CharacterMaskConfig
newCharacterMaskConfig = CharacterMaskConfig {maskingCharacter = Core.Nothing}

instance Core.FromJSON CharacterMaskConfig where
  parseJSON =
    Core.withObject
      "CharacterMaskConfig"
      ( \o ->
          CharacterMaskConfig
            Core.<$> (o Core..:? "maskingCharacter")
      )

instance Core.ToJSON CharacterMaskConfig where
  toJSON CharacterMaskConfig {..} =
    Core.object
      ( Core.catMaybes
          [ ("maskingCharacter" Core..=)
              Core.<$> maskingCharacter
          ]
      )

-- | Checks if a particular data_id of a User data mapping in the given consent store is consented for a given use.
--
-- /See:/ 'newCheckDataAccessRequest' smart constructor.
data CheckDataAccessRequest = CheckDataAccessRequest
  { -- | Optional. Specific Consents to evaluate the access request against. These Consents must have the same @user_id@ as the evaluated User data mapping, must exist in the current @consent_store@, and have a @state@ of either @ACTIVE@ or @DRAFT@. A maximum of 100 Consents can be provided here. If no selection is specified, the access request is evaluated against all @ACTIVE@ unexpired Consents with the same @user_id@ as the evaluated User data mapping.
    consentList :: (Core.Maybe ConsentList),
    -- | Required. The unique identifier of the resource to check access for. This identifier must correspond to a User data mapping in the given consent store.
    dataId :: (Core.Maybe Core.Text),
    -- | The values of request attributes associated with this access request.
    requestAttributes :: (Core.Maybe CheckDataAccessRequest_RequestAttributes),
    -- | Optional. The view for CheckDataAccessResponse. If unspecified, defaults to @BASIC@ and returns @consented@ as @TRUE@ or @FALSE@.
    responseView :: (Core.Maybe CheckDataAccessRequest_ResponseView)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CheckDataAccessRequest' with the minimum fields required to make a request.
newCheckDataAccessRequest ::
  CheckDataAccessRequest
newCheckDataAccessRequest =
  CheckDataAccessRequest
    { consentList = Core.Nothing,
      dataId = Core.Nothing,
      requestAttributes = Core.Nothing,
      responseView = Core.Nothing
    }

instance Core.FromJSON CheckDataAccessRequest where
  parseJSON =
    Core.withObject
      "CheckDataAccessRequest"
      ( \o ->
          CheckDataAccessRequest
            Core.<$> (o Core..:? "consentList")
            Core.<*> (o Core..:? "dataId")
            Core.<*> (o Core..:? "requestAttributes")
            Core.<*> (o Core..:? "responseView")
      )

instance Core.ToJSON CheckDataAccessRequest where
  toJSON CheckDataAccessRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("consentList" Core..=) Core.<$> consentList,
            ("dataId" Core..=) Core.<$> dataId,
            ("requestAttributes" Core..=)
              Core.<$> requestAttributes,
            ("responseView" Core..=) Core.<$> responseView
          ]
      )

-- | The values of request attributes associated with this access request.
--
-- /See:/ 'newCheckDataAccessRequest_RequestAttributes' smart constructor.
newtype CheckDataAccessRequest_RequestAttributes = CheckDataAccessRequest_RequestAttributes
  { -- |
    additional :: (Core.HashMap Core.Text Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CheckDataAccessRequest_RequestAttributes' with the minimum fields required to make a request.
newCheckDataAccessRequest_RequestAttributes ::
  -- |  See 'additional'.
  Core.HashMap Core.Text Core.Text ->
  CheckDataAccessRequest_RequestAttributes
newCheckDataAccessRequest_RequestAttributes additional =
  CheckDataAccessRequest_RequestAttributes {additional = additional}

instance
  Core.FromJSON
    CheckDataAccessRequest_RequestAttributes
  where
  parseJSON =
    Core.withObject
      "CheckDataAccessRequest_RequestAttributes"
      ( \o ->
          CheckDataAccessRequest_RequestAttributes
            Core.<$> (Core.parseJSONObject o)
      )

instance
  Core.ToJSON
    CheckDataAccessRequest_RequestAttributes
  where
  toJSON CheckDataAccessRequest_RequestAttributes {..} =
    Core.toJSON additional

-- | Checks if a particular data_id of a User data mapping in the given consent store is consented for a given use.
--
-- /See:/ 'newCheckDataAccessResponse' smart constructor.
data CheckDataAccessResponse = CheckDataAccessResponse
  { -- | The resource names of all evaluated Consents mapped to their evaluation.
    consentDetails :: (Core.Maybe CheckDataAccessResponse_ConsentDetails),
    -- | Whether the requested resource is consented for the given use.
    consented :: (Core.Maybe Core.Bool)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CheckDataAccessResponse' with the minimum fields required to make a request.
newCheckDataAccessResponse ::
  CheckDataAccessResponse
newCheckDataAccessResponse =
  CheckDataAccessResponse
    { consentDetails = Core.Nothing,
      consented = Core.Nothing
    }

instance Core.FromJSON CheckDataAccessResponse where
  parseJSON =
    Core.withObject
      "CheckDataAccessResponse"
      ( \o ->
          CheckDataAccessResponse
            Core.<$> (o Core..:? "consentDetails")
            Core.<*> (o Core..:? "consented")
      )

instance Core.ToJSON CheckDataAccessResponse where
  toJSON CheckDataAccessResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("consentDetails" Core..=) Core.<$> consentDetails,
            ("consented" Core..=) Core.<$> consented
          ]
      )

-- | The resource names of all evaluated Consents mapped to their evaluation.
--
-- /See:/ 'newCheckDataAccessResponse_ConsentDetails' smart constructor.
newtype CheckDataAccessResponse_ConsentDetails = CheckDataAccessResponse_ConsentDetails
  { -- |
    additional :: (Core.HashMap Core.Text ConsentEvaluation)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CheckDataAccessResponse_ConsentDetails' with the minimum fields required to make a request.
newCheckDataAccessResponse_ConsentDetails ::
  -- |  See 'additional'.
  Core.HashMap Core.Text ConsentEvaluation ->
  CheckDataAccessResponse_ConsentDetails
newCheckDataAccessResponse_ConsentDetails additional =
  CheckDataAccessResponse_ConsentDetails {additional = additional}

instance
  Core.FromJSON
    CheckDataAccessResponse_ConsentDetails
  where
  parseJSON =
    Core.withObject
      "CheckDataAccessResponse_ConsentDetails"
      ( \o ->
          CheckDataAccessResponse_ConsentDetails
            Core.<$> (Core.parseJSONObject o)
      )

instance
  Core.ToJSON
    CheckDataAccessResponse_ConsentDetails
  where
  toJSON CheckDataAccessResponse_ConsentDetails {..} =
    Core.toJSON additional

-- | Represents a user\'s consent.
--
-- /See:/ 'newConsent' smart constructor.
data Consent = Consent
  { -- | Required. The resource name of the Consent artifact that contains proof of the end user\'s consent, of the form @projects\/{project_id}\/locations\/{location_id}\/datasets\/{dataset_id}\/consentStores\/{consent_store_id}\/consentArtifacts\/{consent_artifact_id}@.
    consentArtifact :: (Core.Maybe Core.Text),
    -- | Timestamp in UTC of when this Consent is considered expired.
    expireTime :: (Core.Maybe Core.DateTime),
    -- | Optional. User-supplied key-value pairs used to organize Consent resources. Metadata keys must: - be between 1 and 63 characters long - have a UTF-8 encoding of maximum 128 bytes - begin with a letter - consist of up to 63 characters including lowercase letters, numeric characters, underscores, and dashes Metadata values must be: - be between 1 and 63 characters long - have a UTF-8 encoding of maximum 128 bytes - consist of up to 63 characters including lowercase letters, numeric characters, underscores, and dashes No more than 64 metadata entries can be associated with a given consent.
    metadata :: (Core.Maybe Consent_Metadata),
    -- | Resource name of the Consent, of the form @projects\/{project_id}\/locations\/{location_id}\/datasets\/{dataset_id}\/consentStores\/{consent_store_id}\/consents\/{consent_id}@. Cannot be changed after creation.
    name :: (Core.Maybe Core.Text),
    -- | Optional. Represents a user\'s consent in terms of the resources that can be accessed and under what conditions.
    policies :: (Core.Maybe [GoogleCloudHealthcareV1ConsentPolicy]),
    -- | Output only. The timestamp that the revision was created.
    revisionCreateTime :: (Core.Maybe Core.DateTime),
    -- | Output only. The revision ID of the Consent. The format is an 8-character hexadecimal string. Refer to a specific revision of a Consent by appending @\@{revision_id}@ to the Consent\'s resource name.
    revisionId :: (Core.Maybe Core.Text),
    -- | Required. Indicates the current state of this Consent.
    state :: (Core.Maybe Consent_State),
    -- | Input only. The time to live for this Consent from when it is created.
    ttl :: (Core.Maybe Core.Duration),
    -- | Required. User\'s UUID provided by the client.
    userId :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Consent' with the minimum fields required to make a request.
newConsent ::
  Consent
newConsent =
  Consent
    { consentArtifact = Core.Nothing,
      expireTime = Core.Nothing,
      metadata = Core.Nothing,
      name = Core.Nothing,
      policies = Core.Nothing,
      revisionCreateTime = Core.Nothing,
      revisionId = Core.Nothing,
      state = Core.Nothing,
      ttl = Core.Nothing,
      userId = Core.Nothing
    }

instance Core.FromJSON Consent where
  parseJSON =
    Core.withObject
      "Consent"
      ( \o ->
          Consent
            Core.<$> (o Core..:? "consentArtifact")
            Core.<*> (o Core..:? "expireTime")
            Core.<*> (o Core..:? "metadata")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "policies")
            Core.<*> (o Core..:? "revisionCreateTime")
            Core.<*> (o Core..:? "revisionId")
            Core.<*> (o Core..:? "state")
            Core.<*> (o Core..:? "ttl")
            Core.<*> (o Core..:? "userId")
      )

instance Core.ToJSON Consent where
  toJSON Consent {..} =
    Core.object
      ( Core.catMaybes
          [ ("consentArtifact" Core..=)
              Core.<$> consentArtifact,
            ("expireTime" Core..=) Core.<$> expireTime,
            ("metadata" Core..=) Core.<$> metadata,
            ("name" Core..=) Core.<$> name,
            ("policies" Core..=) Core.<$> policies,
            ("revisionCreateTime" Core..=)
              Core.<$> revisionCreateTime,
            ("revisionId" Core..=) Core.<$> revisionId,
            ("state" Core..=) Core.<$> state,
            ("ttl" Core..=) Core.<$> ttl,
            ("userId" Core..=) Core.<$> userId
          ]
      )

-- | Optional. User-supplied key-value pairs used to organize Consent resources. Metadata keys must: - be between 1 and 63 characters long - have a UTF-8 encoding of maximum 128 bytes - begin with a letter - consist of up to 63 characters including lowercase letters, numeric characters, underscores, and dashes Metadata values must be: - be between 1 and 63 characters long - have a UTF-8 encoding of maximum 128 bytes - consist of up to 63 characters including lowercase letters, numeric characters, underscores, and dashes No more than 64 metadata entries can be associated with a given consent.
--
-- /See:/ 'newConsent_Metadata' smart constructor.
newtype Consent_Metadata = Consent_Metadata
  { -- |
    additional :: (Core.HashMap Core.Text Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Consent_Metadata' with the minimum fields required to make a request.
newConsent_Metadata ::
  -- |  See 'additional'.
  Core.HashMap Core.Text Core.Text ->
  Consent_Metadata
newConsent_Metadata additional = Consent_Metadata {additional = additional}

instance Core.FromJSON Consent_Metadata where
  parseJSON =
    Core.withObject
      "Consent_Metadata"
      ( \o ->
          Consent_Metadata Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON Consent_Metadata where
  toJSON Consent_Metadata {..} = Core.toJSON additional

-- | Documentation of a user\'s consent.
--
-- /See:/ 'newConsentArtifact' smart constructor.
data ConsentArtifact = ConsentArtifact
  { -- | Optional. Screenshots, PDFs, or other binary information documenting the user\'s consent.
    consentContentScreenshots :: (Core.Maybe [Image]),
    -- | Optional. An string indicating the version of the consent information shown to the user.
    consentContentVersion :: (Core.Maybe Core.Text),
    -- | Optional. A signature from a guardian.
    guardianSignature :: (Core.Maybe Signature),
    -- | Optional. Metadata associated with the Consent artifact. For example, the consent locale or user agent version.
    metadata :: (Core.Maybe ConsentArtifact_Metadata),
    -- | Resource name of the Consent artifact, of the form @projects\/{project_id}\/locations\/{location_id}\/datasets\/{dataset_id}\/consentStores\/{consent_store_id}\/consentArtifacts\/{consent_artifact_id}@. Cannot be changed after creation.
    name :: (Core.Maybe Core.Text),
    -- | Required. User\'s UUID provided by the client.
    userId :: (Core.Maybe Core.Text),
    -- | Optional. User\'s signature.
    userSignature :: (Core.Maybe Signature),
    -- | Optional. A signature from a witness.
    witnessSignature :: (Core.Maybe Signature)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ConsentArtifact' with the minimum fields required to make a request.
newConsentArtifact ::
  ConsentArtifact
newConsentArtifact =
  ConsentArtifact
    { consentContentScreenshots = Core.Nothing,
      consentContentVersion = Core.Nothing,
      guardianSignature = Core.Nothing,
      metadata = Core.Nothing,
      name = Core.Nothing,
      userId = Core.Nothing,
      userSignature = Core.Nothing,
      witnessSignature = Core.Nothing
    }

instance Core.FromJSON ConsentArtifact where
  parseJSON =
    Core.withObject
      "ConsentArtifact"
      ( \o ->
          ConsentArtifact
            Core.<$> (o Core..:? "consentContentScreenshots")
            Core.<*> (o Core..:? "consentContentVersion")
            Core.<*> (o Core..:? "guardianSignature")
            Core.<*> (o Core..:? "metadata")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "userId")
            Core.<*> (o Core..:? "userSignature")
            Core.<*> (o Core..:? "witnessSignature")
      )

instance Core.ToJSON ConsentArtifact where
  toJSON ConsentArtifact {..} =
    Core.object
      ( Core.catMaybes
          [ ("consentContentScreenshots" Core..=)
              Core.<$> consentContentScreenshots,
            ("consentContentVersion" Core..=)
              Core.<$> consentContentVersion,
            ("guardianSignature" Core..=)
              Core.<$> guardianSignature,
            ("metadata" Core..=) Core.<$> metadata,
            ("name" Core..=) Core.<$> name,
            ("userId" Core..=) Core.<$> userId,
            ("userSignature" Core..=) Core.<$> userSignature,
            ("witnessSignature" Core..=)
              Core.<$> witnessSignature
          ]
      )

-- | Optional. Metadata associated with the Consent artifact. For example, the consent locale or user agent version.
--
-- /See:/ 'newConsentArtifact_Metadata' smart constructor.
newtype ConsentArtifact_Metadata = ConsentArtifact_Metadata
  { -- |
    additional :: (Core.HashMap Core.Text Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ConsentArtifact_Metadata' with the minimum fields required to make a request.
newConsentArtifact_Metadata ::
  -- |  See 'additional'.
  Core.HashMap Core.Text Core.Text ->
  ConsentArtifact_Metadata
newConsentArtifact_Metadata additional =
  ConsentArtifact_Metadata {additional = additional}

instance Core.FromJSON ConsentArtifact_Metadata where
  parseJSON =
    Core.withObject
      "ConsentArtifact_Metadata"
      ( \o ->
          ConsentArtifact_Metadata
            Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON ConsentArtifact_Metadata where
  toJSON ConsentArtifact_Metadata {..} =
    Core.toJSON additional

-- | The detailed evaluation of a particular Consent.
--
-- /See:/ 'newConsentEvaluation' smart constructor.
newtype ConsentEvaluation = ConsentEvaluation
  { -- | The evaluation result.
    evaluationResult :: (Core.Maybe ConsentEvaluation_EvaluationResult)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ConsentEvaluation' with the minimum fields required to make a request.
newConsentEvaluation ::
  ConsentEvaluation
newConsentEvaluation = ConsentEvaluation {evaluationResult = Core.Nothing}

instance Core.FromJSON ConsentEvaluation where
  parseJSON =
    Core.withObject
      "ConsentEvaluation"
      ( \o ->
          ConsentEvaluation
            Core.<$> (o Core..:? "evaluationResult")
      )

instance Core.ToJSON ConsentEvaluation where
  toJSON ConsentEvaluation {..} =
    Core.object
      ( Core.catMaybes
          [ ("evaluationResult" Core..=)
              Core.<$> evaluationResult
          ]
      )

-- | List of resource names of Consent resources.
--
-- /See:/ 'newConsentList' smart constructor.
newtype ConsentList = ConsentList
  { -- | The resource names of the Consents to evaluate against, of the form @projects\/{project_id}\/locations\/{location_id}\/datasets\/{dataset_id}\/consentStores\/{consent_store_id}\/consents\/{consent_id}@.
    consents :: (Core.Maybe [Core.Text])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ConsentList' with the minimum fields required to make a request.
newConsentList ::
  ConsentList
newConsentList = ConsentList {consents = Core.Nothing}

instance Core.FromJSON ConsentList where
  parseJSON =
    Core.withObject
      "ConsentList"
      (\o -> ConsentList Core.<$> (o Core..:? "consents"))

instance Core.ToJSON ConsentList where
  toJSON ConsentList {..} =
    Core.object
      ( Core.catMaybes
          [("consents" Core..=) Core.<$> consents]
      )

-- | Represents a consent store.
--
-- /See:/ 'newConsentStore' smart constructor.
data ConsentStore = ConsentStore
  { -- | Optional. Default time to live for Consents created in this store. Must be at least 24 hours. Updating this field will not affect the expiration time of existing consents.
    defaultConsentTtl :: (Core.Maybe Core.Duration),
    -- | Optional. If @true@, UpdateConsent creates the Consent if it does not already exist. If unspecified, defaults to @false@.
    enableConsentCreateOnUpdate :: (Core.Maybe Core.Bool),
    -- | Optional. User-supplied key-value pairs used to organize consent stores. Label keys must be between 1 and 63 characters long, have a UTF-8 encoding of maximum 128 bytes, and must conform to the following PCRE regular expression: \\p{Ll}\\p{Lo}{0,62}. Label values must be between 1 and 63 characters long, have a UTF-8 encoding of maximum 128 bytes, and must conform to the following PCRE regular expression: [\\p{Ll}\\p{Lo}\\p{N}_-]{0,63}. No more than 64 labels can be associated with a given store. For more information: https:\/\/cloud.google.com\/healthcare\/docs\/how-tos\/labeling-resources
    labels :: (Core.Maybe ConsentStore_Labels),
    -- | Resource name of the consent store, of the form @projects\/{project_id}\/locations\/{location_id}\/datasets\/{dataset_id}\/consentStores\/{consent_store_id}@. Cannot be changed after creation.
    name :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ConsentStore' with the minimum fields required to make a request.
newConsentStore ::
  ConsentStore
newConsentStore =
  ConsentStore
    { defaultConsentTtl = Core.Nothing,
      enableConsentCreateOnUpdate = Core.Nothing,
      labels = Core.Nothing,
      name = Core.Nothing
    }

instance Core.FromJSON ConsentStore where
  parseJSON =
    Core.withObject
      "ConsentStore"
      ( \o ->
          ConsentStore
            Core.<$> (o Core..:? "defaultConsentTtl")
            Core.<*> (o Core..:? "enableConsentCreateOnUpdate")
            Core.<*> (o Core..:? "labels")
            Core.<*> (o Core..:? "name")
      )

instance Core.ToJSON ConsentStore where
  toJSON ConsentStore {..} =
    Core.object
      ( Core.catMaybes
          [ ("defaultConsentTtl" Core..=)
              Core.<$> defaultConsentTtl,
            ("enableConsentCreateOnUpdate" Core..=)
              Core.<$> enableConsentCreateOnUpdate,
            ("labels" Core..=) Core.<$> labels,
            ("name" Core..=) Core.<$> name
          ]
      )

-- | Optional. User-supplied key-value pairs used to organize consent stores. Label keys must be between 1 and 63 characters long, have a UTF-8 encoding of maximum 128 bytes, and must conform to the following PCRE regular expression: \\p{Ll}\\p{Lo}{0,62}. Label values must be between 1 and 63 characters long, have a UTF-8 encoding of maximum 128 bytes, and must conform to the following PCRE regular expression: [\\p{Ll}\\p{Lo}\\p{N}_-]{0,63}. No more than 64 labels can be associated with a given store. For more information: https:\/\/cloud.google.com\/healthcare\/docs\/how-tos\/labeling-resources
--
-- /See:/ 'newConsentStore_Labels' smart constructor.
newtype ConsentStore_Labels = ConsentStore_Labels
  { -- |
    additional :: (Core.HashMap Core.Text Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ConsentStore_Labels' with the minimum fields required to make a request.
newConsentStore_Labels ::
  -- |  See 'additional'.
  Core.HashMap Core.Text Core.Text ->
  ConsentStore_Labels
newConsentStore_Labels additional =
  ConsentStore_Labels {additional = additional}

instance Core.FromJSON ConsentStore_Labels where
  parseJSON =
    Core.withObject
      "ConsentStore_Labels"
      ( \o ->
          ConsentStore_Labels
            Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON ConsentStore_Labels where
  toJSON ConsentStore_Labels {..} =
    Core.toJSON additional

-- | Creates a new message.
--
-- /See:/ 'newCreateMessageRequest' smart constructor.
newtype CreateMessageRequest = CreateMessageRequest
  { -- | HL7v2 message.
    message :: (Core.Maybe Message)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CreateMessageRequest' with the minimum fields required to make a request.
newCreateMessageRequest ::
  CreateMessageRequest
newCreateMessageRequest = CreateMessageRequest {message = Core.Nothing}

instance Core.FromJSON CreateMessageRequest where
  parseJSON =
    Core.withObject
      "CreateMessageRequest"
      ( \o ->
          CreateMessageRequest Core.<$> (o Core..:? "message")
      )

instance Core.ToJSON CreateMessageRequest where
  toJSON CreateMessageRequest {..} =
    Core.object
      ( Core.catMaybes
          [("message" Core..=) Core.<$> message]
      )

-- | Pseudonymization method that generates surrogates via cryptographic hashing. Uses SHA-256. Outputs a base64-encoded representation of the hashed output (for example, @L7k0BHmF1ha5U3NfGykjro4xWi1MPVQPjhMAZbSV9mM=@).
--
-- /See:/ 'newCryptoHashConfig' smart constructor.
newtype CryptoHashConfig = CryptoHashConfig
  { -- | An AES 128\/192\/256 bit key. Causes the hash to be computed based on this key. A default key is generated for each Deidentify operation and is used wherever crypto_key is not specified.
    cryptoKey :: (Core.Maybe Core.Base64)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CryptoHashConfig' with the minimum fields required to make a request.
newCryptoHashConfig ::
  CryptoHashConfig
newCryptoHashConfig = CryptoHashConfig {cryptoKey = Core.Nothing}

instance Core.FromJSON CryptoHashConfig where
  parseJSON =
    Core.withObject
      "CryptoHashConfig"
      ( \o ->
          CryptoHashConfig Core.<$> (o Core..:? "cryptoKey")
      )

instance Core.ToJSON CryptoHashConfig where
  toJSON CryptoHashConfig {..} =
    Core.object
      ( Core.catMaybes
          [("cryptoKey" Core..=) Core.<$> cryptoKey]
      )

-- | A message representing a health dataset. A health dataset represents a collection of healthcare data pertaining to one or more patients. This may include multiple modalities of healthcare data, such as electronic medical records or medical imaging data.
--
-- /See:/ 'newDataset' smart constructor.
data Dataset = Dataset
  { -- | Resource name of the dataset, of the form @projects\/{project_id}\/locations\/{location_id}\/datasets\/{dataset_id}@.
    name :: (Core.Maybe Core.Text),
    -- | The default timezone used by this dataset. Must be a either a valid IANA time zone name such as \"America\/New_York\" or empty, which defaults to UTC. This is used for parsing times in resources, such as HL7 messages, where no explicit timezone is specified.
    timeZone :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Dataset' with the minimum fields required to make a request.
newDataset ::
  Dataset
newDataset = Dataset {name = Core.Nothing, timeZone = Core.Nothing}

instance Core.FromJSON Dataset where
  parseJSON =
    Core.withObject
      "Dataset"
      ( \o ->
          Dataset
            Core.<$> (o Core..:? "name") Core.<*> (o Core..:? "timeZone")
      )

instance Core.ToJSON Dataset where
  toJSON Dataset {..} =
    Core.object
      ( Core.catMaybes
          [ ("name" Core..=) Core.<$> name,
            ("timeZone" Core..=) Core.<$> timeZone
          ]
      )

-- | Shift a date forward or backward in time by a random amount which is consistent for a given patient and crypto key combination.
--
-- /See:/ 'newDateShiftConfig' smart constructor.
newtype DateShiftConfig = DateShiftConfig
  { -- | An AES 128\/192\/256 bit key. Causes the shift to be computed based on this key and the patient ID. A default key is generated for each Deidentify operation and is used wherever crypto_key is not specified.
    cryptoKey :: (Core.Maybe Core.Base64)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DateShiftConfig' with the minimum fields required to make a request.
newDateShiftConfig ::
  DateShiftConfig
newDateShiftConfig = DateShiftConfig {cryptoKey = Core.Nothing}

instance Core.FromJSON DateShiftConfig where
  parseJSON =
    Core.withObject
      "DateShiftConfig"
      ( \o ->
          DateShiftConfig Core.<$> (o Core..:? "cryptoKey")
      )

instance Core.ToJSON DateShiftConfig where
  toJSON DateShiftConfig {..} =
    Core.object
      ( Core.catMaybes
          [("cryptoKey" Core..=) Core.<$> cryptoKey]
      )

-- | Configures de-id options specific to different types of content. Each submessage customizes the handling of an https:\/\/tools.ietf.org\/html\/rfc6838 media type or subtype. Configs are applied in a nested manner at runtime.
--
-- /See:/ 'newDeidentifyConfig' smart constructor.
data DeidentifyConfig = DeidentifyConfig
  { -- | Configures de-id of application\/DICOM content.
    dicom :: (Core.Maybe DicomConfig),
    -- | Configures de-id of application\/FHIR content.
    fhir :: (Core.Maybe FhirConfig),
    -- | Configures de-identification of image pixels wherever they are found in the source_dataset.
    image :: (Core.Maybe ImageConfig),
    -- | Configures de-identification of text wherever it is found in the source_dataset.
    text :: (Core.Maybe TextConfig)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DeidentifyConfig' with the minimum fields required to make a request.
newDeidentifyConfig ::
  DeidentifyConfig
newDeidentifyConfig =
  DeidentifyConfig
    { dicom = Core.Nothing,
      fhir = Core.Nothing,
      image = Core.Nothing,
      text = Core.Nothing
    }

instance Core.FromJSON DeidentifyConfig where
  parseJSON =
    Core.withObject
      "DeidentifyConfig"
      ( \o ->
          DeidentifyConfig
            Core.<$> (o Core..:? "dicom")
            Core.<*> (o Core..:? "fhir")
            Core.<*> (o Core..:? "image")
            Core.<*> (o Core..:? "text")
      )

instance Core.ToJSON DeidentifyConfig where
  toJSON DeidentifyConfig {..} =
    Core.object
      ( Core.catMaybes
          [ ("dicom" Core..=) Core.<$> dicom,
            ("fhir" Core..=) Core.<$> fhir,
            ("image" Core..=) Core.<$> image,
            ("text" Core..=) Core.<$> text
          ]
      )

-- | Redacts identifying information from the specified dataset.
--
-- /See:/ 'newDeidentifyDatasetRequest' smart constructor.
data DeidentifyDatasetRequest = DeidentifyDatasetRequest
  { -- | Deidentify configuration.
    config :: (Core.Maybe DeidentifyConfig),
    -- | The name of the dataset resource to create and write the redacted data to. * The destination dataset must not exist. * The destination dataset must be in the same location as the source dataset. De-identifying data across multiple locations is not supported.
    destinationDataset :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DeidentifyDatasetRequest' with the minimum fields required to make a request.
newDeidentifyDatasetRequest ::
  DeidentifyDatasetRequest
newDeidentifyDatasetRequest =
  DeidentifyDatasetRequest
    { config = Core.Nothing,
      destinationDataset = Core.Nothing
    }

instance Core.FromJSON DeidentifyDatasetRequest where
  parseJSON =
    Core.withObject
      "DeidentifyDatasetRequest"
      ( \o ->
          DeidentifyDatasetRequest
            Core.<$> (o Core..:? "config")
            Core.<*> (o Core..:? "destinationDataset")
      )

instance Core.ToJSON DeidentifyDatasetRequest where
  toJSON DeidentifyDatasetRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("config" Core..=) Core.<$> config,
            ("destinationDataset" Core..=)
              Core.<$> destinationDataset
          ]
      )

-- | Creates a new DICOM store with sensitive information de-identified.
--
-- /See:/ 'newDeidentifyDicomStoreRequest' smart constructor.
data DeidentifyDicomStoreRequest = DeidentifyDicomStoreRequest
  { -- | Deidentify configuration.
    config :: (Core.Maybe DeidentifyConfig),
    -- | The name of the DICOM store to create and write the redacted data to. For example, @projects\/{project_id}\/locations\/{location_id}\/datasets\/{dataset_id}\/dicomStores\/{dicom_store_id}@. * The destination dataset must exist. * The source dataset and destination dataset must both reside in the same location. De-identifying data across multiple locations is not supported. * The destination DICOM store must not exist. * The caller must have the necessary permissions to create the destination DICOM store.
    destinationStore :: (Core.Maybe Core.Text),
    -- | Filter configuration.
    filterConfig :: (Core.Maybe DicomFilterConfig)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DeidentifyDicomStoreRequest' with the minimum fields required to make a request.
newDeidentifyDicomStoreRequest ::
  DeidentifyDicomStoreRequest
newDeidentifyDicomStoreRequest =
  DeidentifyDicomStoreRequest
    { config = Core.Nothing,
      destinationStore = Core.Nothing,
      filterConfig = Core.Nothing
    }

instance Core.FromJSON DeidentifyDicomStoreRequest where
  parseJSON =
    Core.withObject
      "DeidentifyDicomStoreRequest"
      ( \o ->
          DeidentifyDicomStoreRequest
            Core.<$> (o Core..:? "config")
            Core.<*> (o Core..:? "destinationStore")
            Core.<*> (o Core..:? "filterConfig")
      )

instance Core.ToJSON DeidentifyDicomStoreRequest where
  toJSON DeidentifyDicomStoreRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("config" Core..=) Core.<$> config,
            ("destinationStore" Core..=)
              Core.<$> destinationStore,
            ("filterConfig" Core..=) Core.<$> filterConfig
          ]
      )

-- | Creates a new FHIR store with sensitive information de-identified.
--
-- /See:/ 'newDeidentifyFhirStoreRequest' smart constructor.
data DeidentifyFhirStoreRequest = DeidentifyFhirStoreRequest
  { -- | Deidentify configuration.
    config :: (Core.Maybe DeidentifyConfig),
    -- | The name of the FHIR store to create and write the redacted data to. For example, @projects\/{project_id}\/locations\/{location_id}\/datasets\/{dataset_id}\/fhirStores\/{fhir_store_id}@. * The destination dataset must exist. * The source dataset and destination dataset must both reside in the same location. De-identifying data across multiple locations is not supported. * The destination FHIR store must exist. * The caller must have the healthcare.fhirResources.update permission to write to the destination FHIR store.
    destinationStore :: (Core.Maybe Core.Text),
    -- | A filter specifying the resources to include in the output. If not specified, all resources are included in the output.
    resourceFilter :: (Core.Maybe FhirFilter)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DeidentifyFhirStoreRequest' with the minimum fields required to make a request.
newDeidentifyFhirStoreRequest ::
  DeidentifyFhirStoreRequest
newDeidentifyFhirStoreRequest =
  DeidentifyFhirStoreRequest
    { config = Core.Nothing,
      destinationStore = Core.Nothing,
      resourceFilter = Core.Nothing
    }

instance Core.FromJSON DeidentifyFhirStoreRequest where
  parseJSON =
    Core.withObject
      "DeidentifyFhirStoreRequest"
      ( \o ->
          DeidentifyFhirStoreRequest
            Core.<$> (o Core..:? "config")
            Core.<*> (o Core..:? "destinationStore")
            Core.<*> (o Core..:? "resourceFilter")
      )

instance Core.ToJSON DeidentifyFhirStoreRequest where
  toJSON DeidentifyFhirStoreRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("config" Core..=) Core.<$> config,
            ("destinationStore" Core..=)
              Core.<$> destinationStore,
            ("resourceFilter" Core..=) Core.<$> resourceFilter
          ]
      )

-- | Contains a summary of the Deidentify operation.
--
-- /See:/ 'newDeidentifySummary' smart constructor.
data DeidentifySummary = DeidentifySummary
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DeidentifySummary' with the minimum fields required to make a request.
newDeidentifySummary ::
  DeidentifySummary
newDeidentifySummary = DeidentifySummary

instance Core.FromJSON DeidentifySummary where
  parseJSON =
    Core.withObject
      "DeidentifySummary"
      (\o -> Core.pure DeidentifySummary)

instance Core.ToJSON DeidentifySummary where
  toJSON = Core.const Core.emptyObject

-- | Specifies the parameters needed for de-identification of DICOM stores.
--
-- /See:/ 'newDicomConfig' smart constructor.
data DicomConfig = DicomConfig
  { -- | Tag filtering profile that determines which tags to keep\/remove.
    filterProfile :: (Core.Maybe DicomConfig_FilterProfile),
    -- | List of tags to keep. Remove all other tags.
    keepList :: (Core.Maybe TagFilterList),
    -- | List of tags to remove. Keep all other tags.
    removeList :: (Core.Maybe TagFilterList),
    -- | If true, skip replacing StudyInstanceUID, SeriesInstanceUID, SOPInstanceUID, and MediaStorageSOPInstanceUID and leave them untouched. The Cloud Healthcare API regenerates these UIDs by default based on the DICOM Standard\'s reasoning: \"Whilst these UIDs cannot be mapped directly to an individual out of context, given access to the original images, or to a database of the original images containing the UIDs, it would be possible to recover the individual\'s identity.\" http:\/\/dicom.nema.org\/medical\/dicom\/current\/output\/chtml\/part15\/sect_E.3.9.html
    skipIdRedaction :: (Core.Maybe Core.Bool)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DicomConfig' with the minimum fields required to make a request.
newDicomConfig ::
  DicomConfig
newDicomConfig =
  DicomConfig
    { filterProfile = Core.Nothing,
      keepList = Core.Nothing,
      removeList = Core.Nothing,
      skipIdRedaction = Core.Nothing
    }

instance Core.FromJSON DicomConfig where
  parseJSON =
    Core.withObject
      "DicomConfig"
      ( \o ->
          DicomConfig
            Core.<$> (o Core..:? "filterProfile")
            Core.<*> (o Core..:? "keepList")
            Core.<*> (o Core..:? "removeList")
            Core.<*> (o Core..:? "skipIdRedaction")
      )

instance Core.ToJSON DicomConfig where
  toJSON DicomConfig {..} =
    Core.object
      ( Core.catMaybes
          [ ("filterProfile" Core..=) Core.<$> filterProfile,
            ("keepList" Core..=) Core.<$> keepList,
            ("removeList" Core..=) Core.<$> removeList,
            ("skipIdRedaction" Core..=)
              Core.<$> skipIdRedaction
          ]
      )

-- | Specifies the filter configuration for DICOM resources.
--
-- /See:/ 'newDicomFilterConfig' smart constructor.
newtype DicomFilterConfig = DicomFilterConfig
  { -- | The Cloud Storage location of the filter configuration file. The @gcs_uri@ must be in the format @gs:\/\/bucket\/path\/to\/object@. The filter configuration file must contain a list of resource paths separated by newline characters (\\n or \\r\\n). Each resource path must be in the format \"\/studies\/{studyUID}[\/series\/{seriesUID}[\/instances\/{instanceUID}]]\" The Cloud Healthcare API service account must have the @roles\/storage.objectViewer@ Cloud IAM role for this Cloud Storage location.
    resourcePathsGcsUri :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DicomFilterConfig' with the minimum fields required to make a request.
newDicomFilterConfig ::
  DicomFilterConfig
newDicomFilterConfig = DicomFilterConfig {resourcePathsGcsUri = Core.Nothing}

instance Core.FromJSON DicomFilterConfig where
  parseJSON =
    Core.withObject
      "DicomFilterConfig"
      ( \o ->
          DicomFilterConfig
            Core.<$> (o Core..:? "resourcePathsGcsUri")
      )

instance Core.ToJSON DicomFilterConfig where
  toJSON DicomFilterConfig {..} =
    Core.object
      ( Core.catMaybes
          [ ("resourcePathsGcsUri" Core..=)
              Core.<$> resourcePathsGcsUri
          ]
      )

-- | Represents a DICOM store.
--
-- /See:/ 'newDicomStore' smart constructor.
data DicomStore = DicomStore
  { -- | User-supplied key-value pairs used to organize DICOM stores. Label keys must be between 1 and 63 characters long, have a UTF-8 encoding of maximum 128 bytes, and must conform to the following PCRE regular expression: \\p{Ll}\\p{Lo}{0,62} Label values are optional, must be between 1 and 63 characters long, have a UTF-8 encoding of maximum 128 bytes, and must conform to the following PCRE regular expression: [\\p{Ll}\\p{Lo}\\p{N}_-]{0,63} No more than 64 labels can be associated with a given store.
    labels :: (Core.Maybe DicomStore_Labels),
    -- | Resource name of the DICOM store, of the form @projects\/{project_id}\/locations\/{location_id}\/datasets\/{dataset_id}\/dicomStores\/{dicom_store_id}@.
    name :: (Core.Maybe Core.Text),
    -- | Notification destination for new DICOM instances. Supplied by the client.
    notificationConfig :: (Core.Maybe NotificationConfig)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DicomStore' with the minimum fields required to make a request.
newDicomStore ::
  DicomStore
newDicomStore =
  DicomStore
    { labels = Core.Nothing,
      name = Core.Nothing,
      notificationConfig = Core.Nothing
    }

instance Core.FromJSON DicomStore where
  parseJSON =
    Core.withObject
      "DicomStore"
      ( \o ->
          DicomStore
            Core.<$> (o Core..:? "labels")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "notificationConfig")
      )

instance Core.ToJSON DicomStore where
  toJSON DicomStore {..} =
    Core.object
      ( Core.catMaybes
          [ ("labels" Core..=) Core.<$> labels,
            ("name" Core..=) Core.<$> name,
            ("notificationConfig" Core..=)
              Core.<$> notificationConfig
          ]
      )

-- | User-supplied key-value pairs used to organize DICOM stores. Label keys must be between 1 and 63 characters long, have a UTF-8 encoding of maximum 128 bytes, and must conform to the following PCRE regular expression: \\p{Ll}\\p{Lo}{0,62} Label values are optional, must be between 1 and 63 characters long, have a UTF-8 encoding of maximum 128 bytes, and must conform to the following PCRE regular expression: [\\p{Ll}\\p{Lo}\\p{N}_-]{0,63} No more than 64 labels can be associated with a given store.
--
-- /See:/ 'newDicomStore_Labels' smart constructor.
newtype DicomStore_Labels = DicomStore_Labels
  { -- |
    additional :: (Core.HashMap Core.Text Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DicomStore_Labels' with the minimum fields required to make a request.
newDicomStore_Labels ::
  -- |  See 'additional'.
  Core.HashMap Core.Text Core.Text ->
  DicomStore_Labels
newDicomStore_Labels additional = DicomStore_Labels {additional = additional}

instance Core.FromJSON DicomStore_Labels where
  parseJSON =
    Core.withObject
      "DicomStore_Labels"
      ( \o ->
          DicomStore_Labels Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON DicomStore_Labels where
  toJSON DicomStore_Labels {..} = Core.toJSON additional

-- | A generic empty message that you can re-use to avoid defining duplicated empty messages in your APIs. A typical example is to use it as the request or the response type of an API method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns (google.protobuf.Empty); } The JSON representation for @Empty@ is empty JSON object @{}@.
--
-- /See:/ 'newEmpty' smart constructor.
data Empty = Empty
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Empty' with the minimum fields required to make a request.
newEmpty ::
  Empty
newEmpty = Empty

instance Core.FromJSON Empty where
  parseJSON =
    Core.withObject "Empty" (\o -> Core.pure Empty)

instance Core.ToJSON Empty where
  toJSON = Core.const Core.emptyObject

-- | The candidate entities that an entity mention could link to.
--
-- /See:/ 'newEntity' smart constructor.
data Entity = Entity
  { -- | entity/id is a first class field entity/id uniquely identifies this concept and its meta-vocabulary. For example, \"UMLS\/C0000970\".
    entityId :: (Core.Maybe Core.Text),
    -- | preferred_term is the preferred term for this concept. For example, \"Acetaminophen\". For ad hoc entities formed by normalization, this is the most popular unnormalized string.
    preferredTerm :: (Core.Maybe Core.Text),
    -- | Vocabulary codes are first-class fields and differentiated from the concept unique identifier (entity/id). vocabulary/codes contains the representation of this concept in particular vocabularies, such as ICD-10, SNOMED-CT and RxNORM. These are prefixed by the name of the vocabulary, followed by the unique code within that vocabulary. For example, \"RXNORM\/A10334543\".
    vocabularyCodes :: (Core.Maybe [Core.Text])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Entity' with the minimum fields required to make a request.
newEntity ::
  Entity
newEntity =
  Entity
    { entityId = Core.Nothing,
      preferredTerm = Core.Nothing,
      vocabularyCodes = Core.Nothing
    }

instance Core.FromJSON Entity where
  parseJSON =
    Core.withObject
      "Entity"
      ( \o ->
          Entity
            Core.<$> (o Core..:? "entityId")
            Core.<*> (o Core..:? "preferredTerm")
            Core.<*> (o Core..:? "vocabularyCodes")
      )

instance Core.ToJSON Entity where
  toJSON Entity {..} =
    Core.object
      ( Core.catMaybes
          [ ("entityId" Core..=) Core.<$> entityId,
            ("preferredTerm" Core..=) Core.<$> preferredTerm,
            ("vocabularyCodes" Core..=)
              Core.<$> vocabularyCodes
          ]
      )

-- | An entity mention in the document.
--
-- /See:/ 'newEntityMention' smart constructor.
data EntityMention = EntityMention
  { -- | The certainty assessment of the entity mention. Its value is one of: LIKELY, SOMEWHAT/LIKELY, UNCERTAIN, SOMEWHAT/UNLIKELY, UNLIKELY, CONDITIONAL
    certaintyAssessment :: (Core.Maybe Feature),
    -- | The model\'s confidence in this entity mention annotation. A number between 0 and 1.
    confidence :: (Core.Maybe Core.Double),
    -- | linked_entities are candidate ontological concepts that this entity mention may refer to. They are sorted by decreasing confidence.it
    linkedEntities :: (Core.Maybe [LinkedEntity]),
    -- | mention_id uniquely identifies each entity mention in a single response.
    mentionId :: (Core.Maybe Core.Text),
    -- | The subject this entity mention relates to. Its value is one of: PATIENT, FAMILY_MEMBER, OTHER
    subject :: (Core.Maybe Feature),
    -- | How this entity mention relates to the subject temporally. Its value is one of: CURRENT, CLINICAL/HISTORY, FAMILY/HISTORY, UPCOMING, ALLERGY
    temporalAssessment :: (Core.Maybe Feature),
    -- | text is the location of the entity mention in the document.
    text :: (Core.Maybe TextSpan),
    -- | The semantic type of the entity: UNKNOWN/ENTITY/TYPE, ALONE, ANATOMICAL/STRUCTURE, ASSISTED/LIVING, BF/RESULT, BM/RESULT, BM/UNIT, BM/VALUE, BODY/FUNCTION, BODY/MEASUREMENT, COMPLIANT, DOESNOT/FOLLOWUP, FAMILY, FOLLOWSUP, LABORATORY/DATA, LAB/RESULT, LAB/UNIT, LAB/VALUE, MEDICAL/DEVICE, MEDICINE, MED/DOSE, MED/DURATION, MED/FORM, MED/FREQUENCY, MED/ROUTE, MED/STATUS, MED/STRENGTH, MED/TOTALDOSE, MED/UNIT, NON/COMPLIANT, OTHER/LIVINGSTATUS, PROBLEM, PROCEDURE, PROCEDURE/RESULT, PROC/METHOD, REASON/FOR/NONCOMPLIANCE, SEVERITY, SUBSTANCE/ABUSE, UNCLEAR_FOLLOWUP.
    type' :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'EntityMention' with the minimum fields required to make a request.
newEntityMention ::
  EntityMention
newEntityMention =
  EntityMention
    { certaintyAssessment = Core.Nothing,
      confidence = Core.Nothing,
      linkedEntities = Core.Nothing,
      mentionId = Core.Nothing,
      subject = Core.Nothing,
      temporalAssessment = Core.Nothing,
      text = Core.Nothing,
      type' = Core.Nothing
    }

instance Core.FromJSON EntityMention where
  parseJSON =
    Core.withObject
      "EntityMention"
      ( \o ->
          EntityMention
            Core.<$> (o Core..:? "certaintyAssessment")
            Core.<*> (o Core..:? "confidence")
            Core.<*> (o Core..:? "linkedEntities")
            Core.<*> (o Core..:? "mentionId")
            Core.<*> (o Core..:? "subject")
            Core.<*> (o Core..:? "temporalAssessment")
            Core.<*> (o Core..:? "text")
            Core.<*> (o Core..:? "type")
      )

instance Core.ToJSON EntityMention where
  toJSON EntityMention {..} =
    Core.object
      ( Core.catMaybes
          [ ("certaintyAssessment" Core..=)
              Core.<$> certaintyAssessment,
            ("confidence" Core..=) Core.<$> confidence,
            ("linkedEntities" Core..=) Core.<$> linkedEntities,
            ("mentionId" Core..=) Core.<$> mentionId,
            ("subject" Core..=) Core.<$> subject,
            ("temporalAssessment" Core..=)
              Core.<$> temporalAssessment,
            ("text" Core..=) Core.<$> text,
            ("type" Core..=) Core.<$> type'
          ]
      )

-- | Defines directed relationship from one entity mention to another.
--
-- /See:/ 'newEntityMentionRelationship' smart constructor.
data EntityMentionRelationship = EntityMentionRelationship
  { -- | The model\'s confidence in this annotation. A number between 0 and 1.
    confidence :: (Core.Maybe Core.Double),
    -- | object_id is the id of the object entity mention.
    objectId :: (Core.Maybe Core.Text),
    -- | subject_id is the id of the subject entity mention.
    subjectId :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'EntityMentionRelationship' with the minimum fields required to make a request.
newEntityMentionRelationship ::
  EntityMentionRelationship
newEntityMentionRelationship =
  EntityMentionRelationship
    { confidence = Core.Nothing,
      objectId = Core.Nothing,
      subjectId = Core.Nothing
    }

instance Core.FromJSON EntityMentionRelationship where
  parseJSON =
    Core.withObject
      "EntityMentionRelationship"
      ( \o ->
          EntityMentionRelationship
            Core.<$> (o Core..:? "confidence")
            Core.<*> (o Core..:? "objectId")
            Core.<*> (o Core..:? "subjectId")
      )

instance Core.ToJSON EntityMentionRelationship where
  toJSON EntityMentionRelationship {..} =
    Core.object
      ( Core.catMaybes
          [ ("confidence" Core..=) Core.<$> confidence,
            ("objectId" Core..=) Core.<$> objectId,
            ("subjectId" Core..=) Core.<$> subjectId
          ]
      )

-- | Evaluate a user\'s Consents for all matching User data mappings. Note: User data mappings are indexed asynchronously, causing slight delays between the time mappings are created or updated and when they are included in EvaluateUserConsents results.
--
-- /See:/ 'newEvaluateUserConsentsRequest' smart constructor.
data EvaluateUserConsentsRequest = EvaluateUserConsentsRequest
  { -- | Optional. Specific Consents to evaluate the access request against. These Consents must have the same @user_id@ as the User data mappings being evalauted, must exist in the current @consent_store@, and must have a @state@ of either @ACTIVE@ or @DRAFT@. A maximum of 100 Consents can be provided here. If unspecified, all @ACTIVE@ unexpired Consents in the current @consent_store@ will be evaluated.
    consentList :: (Core.Maybe ConsentList),
    -- | Optional. Limit on the number of User data mappings to return in a single response. If not specified, 100 is used. May not be larger than 1000.
    pageSize :: (Core.Maybe Core.Int32),
    -- | Optional. Token to retrieve the next page of results, or empty to get the first page.
    pageToken :: (Core.Maybe Core.Text),
    -- | Required. The values of request attributes associated with this access request.
    requestAttributes :: (Core.Maybe EvaluateUserConsentsRequest_RequestAttributes),
    -- | Optional. The values of resource attributes associated with the resources being requested. If no values are specified, then all resources are queried.
    resourceAttributes :: (Core.Maybe EvaluateUserConsentsRequest_ResourceAttributes),
    -- | Optional. The view for EvaluateUserConsentsResponse. If unspecified, defaults to @BASIC@ and returns @consented@ as @TRUE@ or @FALSE@.
    responseView :: (Core.Maybe EvaluateUserConsentsRequest_ResponseView),
    -- | Required. User ID to evaluate consents for.
    userId :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'EvaluateUserConsentsRequest' with the minimum fields required to make a request.
newEvaluateUserConsentsRequest ::
  EvaluateUserConsentsRequest
newEvaluateUserConsentsRequest =
  EvaluateUserConsentsRequest
    { consentList = Core.Nothing,
      pageSize = Core.Nothing,
      pageToken = Core.Nothing,
      requestAttributes = Core.Nothing,
      resourceAttributes = Core.Nothing,
      responseView = Core.Nothing,
      userId = Core.Nothing
    }

instance Core.FromJSON EvaluateUserConsentsRequest where
  parseJSON =
    Core.withObject
      "EvaluateUserConsentsRequest"
      ( \o ->
          EvaluateUserConsentsRequest
            Core.<$> (o Core..:? "consentList")
            Core.<*> (o Core..:? "pageSize")
            Core.<*> (o Core..:? "pageToken")
            Core.<*> (o Core..:? "requestAttributes")
            Core.<*> (o Core..:? "resourceAttributes")
            Core.<*> (o Core..:? "responseView")
            Core.<*> (o Core..:? "userId")
      )

instance Core.ToJSON EvaluateUserConsentsRequest where
  toJSON EvaluateUserConsentsRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("consentList" Core..=) Core.<$> consentList,
            ("pageSize" Core..=) Core.<$> pageSize,
            ("pageToken" Core..=) Core.<$> pageToken,
            ("requestAttributes" Core..=)
              Core.<$> requestAttributes,
            ("resourceAttributes" Core..=)
              Core.<$> resourceAttributes,
            ("responseView" Core..=) Core.<$> responseView,
            ("userId" Core..=) Core.<$> userId
          ]
      )

-- | Required. The values of request attributes associated with this access request.
--
-- /See:/ 'newEvaluateUserConsentsRequest_RequestAttributes' smart constructor.
newtype EvaluateUserConsentsRequest_RequestAttributes = EvaluateUserConsentsRequest_RequestAttributes
  { -- |
    additional :: (Core.HashMap Core.Text Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'EvaluateUserConsentsRequest_RequestAttributes' with the minimum fields required to make a request.
newEvaluateUserConsentsRequest_RequestAttributes ::
  -- |  See 'additional'.
  Core.HashMap Core.Text Core.Text ->
  EvaluateUserConsentsRequest_RequestAttributes
newEvaluateUserConsentsRequest_RequestAttributes additional =
  EvaluateUserConsentsRequest_RequestAttributes {additional = additional}

instance
  Core.FromJSON
    EvaluateUserConsentsRequest_RequestAttributes
  where
  parseJSON =
    Core.withObject
      "EvaluateUserConsentsRequest_RequestAttributes"
      ( \o ->
          EvaluateUserConsentsRequest_RequestAttributes
            Core.<$> (Core.parseJSONObject o)
      )

instance
  Core.ToJSON
    EvaluateUserConsentsRequest_RequestAttributes
  where
  toJSON
    EvaluateUserConsentsRequest_RequestAttributes {..} =
      Core.toJSON additional

-- | Optional. The values of resource attributes associated with the resources being requested. If no values are specified, then all resources are queried.
--
-- /See:/ 'newEvaluateUserConsentsRequest_ResourceAttributes' smart constructor.
newtype EvaluateUserConsentsRequest_ResourceAttributes = EvaluateUserConsentsRequest_ResourceAttributes
  { -- |
    additional :: (Core.HashMap Core.Text Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'EvaluateUserConsentsRequest_ResourceAttributes' with the minimum fields required to make a request.
newEvaluateUserConsentsRequest_ResourceAttributes ::
  -- |  See 'additional'.
  Core.HashMap Core.Text Core.Text ->
  EvaluateUserConsentsRequest_ResourceAttributes
newEvaluateUserConsentsRequest_ResourceAttributes additional =
  EvaluateUserConsentsRequest_ResourceAttributes {additional = additional}

instance
  Core.FromJSON
    EvaluateUserConsentsRequest_ResourceAttributes
  where
  parseJSON =
    Core.withObject
      "EvaluateUserConsentsRequest_ResourceAttributes"
      ( \o ->
          EvaluateUserConsentsRequest_ResourceAttributes
            Core.<$> (Core.parseJSONObject o)
      )

instance
  Core.ToJSON
    EvaluateUserConsentsRequest_ResourceAttributes
  where
  toJSON
    EvaluateUserConsentsRequest_ResourceAttributes {..} =
      Core.toJSON additional

--
-- /See:/ 'newEvaluateUserConsentsResponse' smart constructor.
data EvaluateUserConsentsResponse = EvaluateUserConsentsResponse
  { -- | Token to retrieve the next page of results, or empty if there are no more results in the list. This token is valid for 72 hours after it is created.
    nextPageToken :: (Core.Maybe Core.Text),
    -- | The consent evaluation result for each @data_id@.
    results :: (Core.Maybe [Result])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'EvaluateUserConsentsResponse' with the minimum fields required to make a request.
newEvaluateUserConsentsResponse ::
  EvaluateUserConsentsResponse
newEvaluateUserConsentsResponse =
  EvaluateUserConsentsResponse
    { nextPageToken = Core.Nothing,
      results = Core.Nothing
    }

instance Core.FromJSON EvaluateUserConsentsResponse where
  parseJSON =
    Core.withObject
      "EvaluateUserConsentsResponse"
      ( \o ->
          EvaluateUserConsentsResponse
            Core.<$> (o Core..:? "nextPageToken")
            Core.<*> (o Core..:? "results")
      )

instance Core.ToJSON EvaluateUserConsentsResponse where
  toJSON EvaluateUserConsentsResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("nextPageToken" Core..=) Core.<$> nextPageToken,
            ("results" Core..=) Core.<$> results
          ]
      )

-- | Exports data from the specified DICOM store. If a given resource, such as a DICOM object with the same SOPInstance UID, already exists in the output, it is overwritten with the version in the source dataset. Exported DICOM data persists when the DICOM store from which it was exported is deleted.
--
-- /See:/ 'newExportDicomDataRequest' smart constructor.
data ExportDicomDataRequest = ExportDicomDataRequest
  { -- | The BigQuery output destination. You can only export to a BigQuery dataset that\'s in the same project as the DICOM store you\'re exporting from. The Cloud Healthcare Service Agent requires two IAM roles on the BigQuery location: @roles\/bigquery.dataEditor@ and @roles\/bigquery.jobUser@.
    bigqueryDestination :: (Core.Maybe GoogleCloudHealthcareV1DicomBigQueryDestination),
    -- | The Cloud Storage output destination. The Cloud Healthcare Service Agent requires the @roles\/storage.objectAdmin@ Cloud IAM roles on the Cloud Storage location.
    gcsDestination :: (Core.Maybe GoogleCloudHealthcareV1DicomGcsDestination)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ExportDicomDataRequest' with the minimum fields required to make a request.
newExportDicomDataRequest ::
  ExportDicomDataRequest
newExportDicomDataRequest =
  ExportDicomDataRequest
    { bigqueryDestination = Core.Nothing,
      gcsDestination = Core.Nothing
    }

instance Core.FromJSON ExportDicomDataRequest where
  parseJSON =
    Core.withObject
      "ExportDicomDataRequest"
      ( \o ->
          ExportDicomDataRequest
            Core.<$> (o Core..:? "bigqueryDestination")
            Core.<*> (o Core..:? "gcsDestination")
      )

instance Core.ToJSON ExportDicomDataRequest where
  toJSON ExportDicomDataRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("bigqueryDestination" Core..=)
              Core.<$> bigqueryDestination,
            ("gcsDestination" Core..=) Core.<$> gcsDestination
          ]
      )

-- | Returns additional information in regards to a completed DICOM store export.
--
-- /See:/ 'newExportDicomDataResponse' smart constructor.
data ExportDicomDataResponse = ExportDicomDataResponse
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ExportDicomDataResponse' with the minimum fields required to make a request.
newExportDicomDataResponse ::
  ExportDicomDataResponse
newExportDicomDataResponse = ExportDicomDataResponse

instance Core.FromJSON ExportDicomDataResponse where
  parseJSON =
    Core.withObject
      "ExportDicomDataResponse"
      (\o -> Core.pure ExportDicomDataResponse)

instance Core.ToJSON ExportDicomDataResponse where
  toJSON = Core.const Core.emptyObject

-- | Request to schedule an export.
--
-- /See:/ 'newExportMessagesRequest' smart constructor.
data ExportMessagesRequest = ExportMessagesRequest
  { -- | The end of the range in @send_time@ (MSH.7, https:\/\/www.hl7.org\/documentcenter\/public/temp/2E58C1F9-1C23-BA17-0C6126475344DA9D\/wg\/conf\/HL7MSH.htm) to process. If not specified, the time when the export is scheduled is used. This value has to come after the @start_time@ defined below. Only messages whose @send_time@ lies in the range @start_time@ (inclusive) to @end_time@ (exclusive) are exported.
    endTime :: (Core.Maybe Core.DateTime),
    -- | Export to a Cloud Storage destination.
    gcsDestination :: (Core.Maybe GcsDestination),
    -- | The start of the range in @send_time@ (MSH.7, https:\/\/www.hl7.org\/documentcenter\/public/temp/2E58C1F9-1C23-BA17-0C6126475344DA9D\/wg\/conf\/HL7MSH.htm) to process. If not specified, the UNIX epoch (1970-01-01T00:00:00Z) is used. This value has to come before the @end_time@ defined below. Only messages whose @send_time@ lies in the range @start_time@ (inclusive) to @end_time@ (exclusive) are exported.
    startTime :: (Core.Maybe Core.DateTime)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ExportMessagesRequest' with the minimum fields required to make a request.
newExportMessagesRequest ::
  ExportMessagesRequest
newExportMessagesRequest =
  ExportMessagesRequest
    { endTime = Core.Nothing,
      gcsDestination = Core.Nothing,
      startTime = Core.Nothing
    }

instance Core.FromJSON ExportMessagesRequest where
  parseJSON =
    Core.withObject
      "ExportMessagesRequest"
      ( \o ->
          ExportMessagesRequest
            Core.<$> (o Core..:? "endTime")
            Core.<*> (o Core..:? "gcsDestination")
            Core.<*> (o Core..:? "startTime")
      )

instance Core.ToJSON ExportMessagesRequest where
  toJSON ExportMessagesRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("endTime" Core..=) Core.<$> endTime,
            ("gcsDestination" Core..=) Core.<$> gcsDestination,
            ("startTime" Core..=) Core.<$> startTime
          ]
      )

-- | Final response for the export operation. This structure is included in the response to describe the detailed outcome.
--
-- /See:/ 'newExportMessagesResponse' smart constructor.
data ExportMessagesResponse = ExportMessagesResponse
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ExportMessagesResponse' with the minimum fields required to make a request.
newExportMessagesResponse ::
  ExportMessagesResponse
newExportMessagesResponse = ExportMessagesResponse

instance Core.FromJSON ExportMessagesResponse where
  parseJSON =
    Core.withObject
      "ExportMessagesResponse"
      (\o -> Core.pure ExportMessagesResponse)

instance Core.ToJSON ExportMessagesResponse where
  toJSON = Core.const Core.emptyObject

-- | Request to export resources.
--
-- /See:/ 'newExportResourcesRequest' smart constructor.
data ExportResourcesRequest = ExportResourcesRequest
  { -- | If provided, only resources updated after this time are exported. The time uses the format YYYY-MM-DDThh:mm:ss.sss+zz:zz. For example, @2015-02-07T13:28:17.239+02:00@ or @2017-01-01T00:00:00Z@. The time must be specified to the second and include a time zone.
    since :: (Core.Maybe Core.Text),
    -- | String of comma-delimited FHIR resource types. If provided, only resources of the specified resource type(s) are exported.
    type' :: (Core.Maybe Core.Text),
    -- | The BigQuery output destination. The Cloud Healthcare Service Agent requires two IAM roles on the BigQuery location: @roles\/bigquery.dataEditor@ and @roles\/bigquery.jobUser@. The output is one BigQuery table per resource type. Unlike when setting @BigQueryDestination@ for @StreamConfig@, @ExportResources@ does not create BigQuery views.
    bigqueryDestination :: (Core.Maybe GoogleCloudHealthcareV1FhirBigQueryDestination),
    -- | The Cloud Storage output destination. The Healthcare Service Agent account requires the @roles\/storage.objectAdmin@ role on the Cloud Storage location. The exported outputs are organized by FHIR resource types. The server creates one object per resource type. Each object contains newline delimited JSON, and each line is a FHIR resource.
    gcsDestination :: (Core.Maybe GoogleCloudHealthcareV1FhirGcsDestination)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ExportResourcesRequest' with the minimum fields required to make a request.
newExportResourcesRequest ::
  ExportResourcesRequest
newExportResourcesRequest =
  ExportResourcesRequest
    { since = Core.Nothing,
      type' = Core.Nothing,
      bigqueryDestination = Core.Nothing,
      gcsDestination = Core.Nothing
    }

instance Core.FromJSON ExportResourcesRequest where
  parseJSON =
    Core.withObject
      "ExportResourcesRequest"
      ( \o ->
          ExportResourcesRequest
            Core.<$> (o Core..:? "_since")
            Core.<*> (o Core..:? "_type")
            Core.<*> (o Core..:? "bigqueryDestination")
            Core.<*> (o Core..:? "gcsDestination")
      )

instance Core.ToJSON ExportResourcesRequest where
  toJSON ExportResourcesRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("_since" Core..=) Core.<$> since,
            ("_type" Core..=) Core.<$> type',
            ("bigqueryDestination" Core..=)
              Core.<$> bigqueryDestination,
            ("gcsDestination" Core..=) Core.<$> gcsDestination
          ]
      )

-- | Response when all resources export successfully. This structure is included in the response to describe the detailed outcome after the operation finishes successfully.
--
-- /See:/ 'newExportResourcesResponse' smart constructor.
data ExportResourcesResponse = ExportResourcesResponse
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ExportResourcesResponse' with the minimum fields required to make a request.
newExportResourcesResponse ::
  ExportResourcesResponse
newExportResourcesResponse = ExportResourcesResponse

instance Core.FromJSON ExportResourcesResponse where
  parseJSON =
    Core.withObject
      "ExportResourcesResponse"
      (\o -> Core.pure ExportResourcesResponse)

instance Core.ToJSON ExportResourcesResponse where
  toJSON = Core.const Core.emptyObject

-- | Represents a textual expression in the Common Expression Language (CEL) syntax. CEL is a C-like expression language. The syntax and semantics of CEL are documented at https:\/\/github.com\/google\/cel-spec. Example (Comparison): title: \"Summary size limit\" description: \"Determines if a summary is less than 100 chars\" expression: \"document.summary.size() \< 100\" Example (Equality): title: \"Requestor is owner\" description: \"Determines if requestor is the document owner\" expression: \"document.owner == request.auth.claims.email\" Example (Logic): title: \"Public documents\" description: \"Determine whether the document should be publicly visible\" expression: \"document.type != \'private\' && document.type != \'internal\'\" Example (Data Manipulation): title: \"Notification string\" description: \"Create a notification string with a timestamp.\" expression: \"\'New message received at \' + string(document.create_time)\" The exact variables and functions that may be referenced within an expression are
-- determined by the service that evaluates it. See the service documentation for additional information.
--
-- /See:/ 'newExpr' smart constructor.
data Expr = Expr
  { -- | Optional. Description of the expression. This is a longer text which describes the expression, e.g. when hovered over it in a UI.
    description :: (Core.Maybe Core.Text),
    -- | Textual representation of an expression in Common Expression Language syntax.
    expression :: (Core.Maybe Core.Text),
    -- | Optional. String indicating the location of the expression for error reporting, e.g. a file name and a position in the file.
    location :: (Core.Maybe Core.Text),
    -- | Optional. Title for the expression, i.e. a short string describing its purpose. This can be used e.g. in UIs which allow to enter the expression.
    title :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Expr' with the minimum fields required to make a request.
newExpr ::
  Expr
newExpr =
  Expr
    { description = Core.Nothing,
      expression = Core.Nothing,
      location = Core.Nothing,
      title = Core.Nothing
    }

instance Core.FromJSON Expr where
  parseJSON =
    Core.withObject
      "Expr"
      ( \o ->
          Expr
            Core.<$> (o Core..:? "description")
            Core.<*> (o Core..:? "expression")
            Core.<*> (o Core..:? "location")
            Core.<*> (o Core..:? "title")
      )

instance Core.ToJSON Expr where
  toJSON Expr {..} =
    Core.object
      ( Core.catMaybes
          [ ("description" Core..=) Core.<$> description,
            ("expression" Core..=) Core.<$> expression,
            ("location" Core..=) Core.<$> location,
            ("title" Core..=) Core.<$> title
          ]
      )

-- | A feature of an entity mention.
--
-- /See:/ 'newFeature' smart constructor.
data Feature = Feature
  { -- | The model\'s confidence in this feature annotation. A number between 0 and 1.
    confidence :: (Core.Maybe Core.Double),
    -- | The value of this feature annotation. Its range depends on the type of the feature.
    value :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Feature' with the minimum fields required to make a request.
newFeature ::
  Feature
newFeature = Feature {confidence = Core.Nothing, value = Core.Nothing}

instance Core.FromJSON Feature where
  parseJSON =
    Core.withObject
      "Feature"
      ( \o ->
          Feature
            Core.<$> (o Core..:? "confidence")
            Core.<*> (o Core..:? "value")
      )

instance Core.ToJSON Feature where
  toJSON Feature {..} =
    Core.object
      ( Core.catMaybes
          [ ("confidence" Core..=) Core.<$> confidence,
            ("value" Core..=) Core.<$> value
          ]
      )

-- | Specifies how to handle de-identification of a FHIR store.
--
-- /See:/ 'newFhirConfig' smart constructor.
data FhirConfig = FhirConfig
  { -- | The behaviour for handling FHIR extensions that aren\'t otherwise specified for de-identification. If true, all extensions are preserved during de-identification by default. If false or unspecified, all extensions are removed during de-identification by default.
    defaultKeepExtensions :: (Core.Maybe Core.Bool),
    -- | Specifies FHIR paths to match and how to transform them. Any field that is not matched by a FieldMetadata is passed through to the output dataset unmodified. All extensions will be processed according to @default_keep_extensions@.
    fieldMetadataList :: (Core.Maybe [FieldMetadata])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'FhirConfig' with the minimum fields required to make a request.
newFhirConfig ::
  FhirConfig
newFhirConfig =
  FhirConfig
    { defaultKeepExtensions = Core.Nothing,
      fieldMetadataList = Core.Nothing
    }

instance Core.FromJSON FhirConfig where
  parseJSON =
    Core.withObject
      "FhirConfig"
      ( \o ->
          FhirConfig
            Core.<$> (o Core..:? "defaultKeepExtensions")
            Core.<*> (o Core..:? "fieldMetadataList")
      )

instance Core.ToJSON FhirConfig where
  toJSON FhirConfig {..} =
    Core.object
      ( Core.catMaybes
          [ ("defaultKeepExtensions" Core..=)
              Core.<$> defaultKeepExtensions,
            ("fieldMetadataList" Core..=)
              Core.<$> fieldMetadataList
          ]
      )

-- | Filter configuration.
--
-- /See:/ 'newFhirFilter' smart constructor.
newtype FhirFilter = FhirFilter
  { -- | List of resources to include in the output. If this list is empty or not specified, all resources are included in the output.
    resources :: (Core.Maybe Resources)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'FhirFilter' with the minimum fields required to make a request.
newFhirFilter ::
  FhirFilter
newFhirFilter = FhirFilter {resources = Core.Nothing}

instance Core.FromJSON FhirFilter where
  parseJSON =
    Core.withObject
      "FhirFilter"
      (\o -> FhirFilter Core.<$> (o Core..:? "resources"))

instance Core.ToJSON FhirFilter where
  toJSON FhirFilter {..} =
    Core.object
      ( Core.catMaybes
          [("resources" Core..=) Core.<$> resources]
      )

-- | Represents a FHIR store.
--
-- /See:/ 'newFhirStore' smart constructor.
data FhirStore = FhirStore
  { -- | If true, overrides the default search behavior for this FHIR store to @handling=strict@ which returns an error for unrecognized search parameters. If false, uses the FHIR specification default @handling=lenient@ which ignores unrecognized search parameters. The handling can always be changed from the default on an individual API call by setting the HTTP header @Prefer: handling=strict@ or @Prefer: handling=lenient@.
    defaultSearchHandlingStrict :: (Core.Maybe Core.Bool),
    -- | Immutable. Whether to disable referential integrity in this FHIR store. This field is immutable after FHIR store creation. The default value is false, meaning that the API enforces referential integrity and fails the requests that result in inconsistent state in the FHIR store. When this field is set to true, the API skips referential integrity checks. Consequently, operations that rely on references, such as GetPatientEverything, do not return all the results if broken references exist.
    disableReferentialIntegrity :: (Core.Maybe Core.Bool),
    -- | Immutable. Whether to disable resource versioning for this FHIR store. This field can not be changed after the creation of FHIR store. If set to false, which is the default behavior, all write operations cause historical versions to be recorded automatically. The historical versions can be fetched through the history APIs, but cannot be updated. If set to true, no historical versions are kept. The server sends errors for attempts to read the historical versions.
    disableResourceVersioning :: (Core.Maybe Core.Bool),
    -- | Whether this FHIR store has the <https://www.hl7.org/fhir/capabilitystatement-definitions.html#CapabilityStatement.rest.resource.updateCreate updateCreate capability>. This determines if the client can use an Update operation to create a new resource with a client-specified ID. If false, all IDs are server-assigned through the Create operation and attempts to update a non-existent resource return errors. It is strongly advised not to include or encode any sensitive data such as patient identifiers in client-specified resource IDs. Those IDs are part of the FHIR resource path recorded in Cloud audit logs and Pub\/Sub notifications. Those IDs can also be contained in reference fields within other resources.
    enableUpdateCreate :: (Core.Maybe Core.Bool),
    -- | User-supplied key-value pairs used to organize FHIR stores. Label keys must be between 1 and 63 characters long, have a UTF-8 encoding of maximum 128 bytes, and must conform to the following PCRE regular expression: \\p{Ll}\\p{Lo}{0,62} Label values are optional, must be between 1 and 63 characters long, have a UTF-8 encoding of maximum 128 bytes, and must conform to the following PCRE regular expression: [\\p{Ll}\\p{Lo}\\p{N}_-]{0,63} No more than 64 labels can be associated with a given store.
    labels :: (Core.Maybe FhirStore_Labels),
    -- | Output only. Resource name of the FHIR store, of the form @projects\/{project_id}\/datasets\/{dataset_id}\/fhirStores\/{fhir_store_id}@.
    name :: (Core.Maybe Core.Text),
    -- | If non-empty, publish all resource modifications of this FHIR store to this destination. The Pub\/Sub message attributes contain a map with a string describing the action that has triggered the notification. For example, \"action\":\"CreateResource\".
    notificationConfig :: (Core.Maybe NotificationConfig),
    -- | A list of streaming configs that configure the destinations of streaming export for every resource mutation in this FHIR store. Each store is allowed to have up to 10 streaming configs. After a new config is added, the next resource mutation is streamed to the new location in addition to the existing ones. When a location is removed from the list, the server stops streaming to that location. Before adding a new config, you must add the required <https://cloud.google.com/bigquery/docs/access-control#bigquery.dataEditor bigquery.dataEditor> role to your project\'s __Cloud Healthcare Service Agent__ <https://cloud.google.com/iam/docs/service-accounts service account>. Some lag (typically on the order of dozens of seconds) is expected before the results show up in the streaming destination.
    streamConfigs :: (Core.Maybe [StreamConfig]),
    -- | Configuration for how to validate incoming FHIR resources against configured profiles.
    validationConfig :: (Core.Maybe ValidationConfig),
    -- | Immutable. The FHIR specification version that this FHIR store supports natively. This field is immutable after store creation. Requests are rejected if they contain FHIR resources of a different version. Version is required for every FHIR store.
    version :: (Core.Maybe FhirStore_Version)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'FhirStore' with the minimum fields required to make a request.
newFhirStore ::
  FhirStore
newFhirStore =
  FhirStore
    { defaultSearchHandlingStrict = Core.Nothing,
      disableReferentialIntegrity = Core.Nothing,
      disableResourceVersioning = Core.Nothing,
      enableUpdateCreate = Core.Nothing,
      labels = Core.Nothing,
      name = Core.Nothing,
      notificationConfig = Core.Nothing,
      streamConfigs = Core.Nothing,
      validationConfig = Core.Nothing,
      version = Core.Nothing
    }

instance Core.FromJSON FhirStore where
  parseJSON =
    Core.withObject
      "FhirStore"
      ( \o ->
          FhirStore
            Core.<$> (o Core..:? "defaultSearchHandlingStrict")
            Core.<*> (o Core..:? "disableReferentialIntegrity")
            Core.<*> (o Core..:? "disableResourceVersioning")
            Core.<*> (o Core..:? "enableUpdateCreate")
            Core.<*> (o Core..:? "labels")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "notificationConfig")
            Core.<*> (o Core..:? "streamConfigs")
            Core.<*> (o Core..:? "validationConfig")
            Core.<*> (o Core..:? "version")
      )

instance Core.ToJSON FhirStore where
  toJSON FhirStore {..} =
    Core.object
      ( Core.catMaybes
          [ ("defaultSearchHandlingStrict" Core..=)
              Core.<$> defaultSearchHandlingStrict,
            ("disableReferentialIntegrity" Core..=)
              Core.<$> disableReferentialIntegrity,
            ("disableResourceVersioning" Core..=)
              Core.<$> disableResourceVersioning,
            ("enableUpdateCreate" Core..=)
              Core.<$> enableUpdateCreate,
            ("labels" Core..=) Core.<$> labels,
            ("name" Core..=) Core.<$> name,
            ("notificationConfig" Core..=)
              Core.<$> notificationConfig,
            ("streamConfigs" Core..=) Core.<$> streamConfigs,
            ("validationConfig" Core..=)
              Core.<$> validationConfig,
            ("version" Core..=) Core.<$> version
          ]
      )

-- | User-supplied key-value pairs used to organize FHIR stores. Label keys must be between 1 and 63 characters long, have a UTF-8 encoding of maximum 128 bytes, and must conform to the following PCRE regular expression: \\p{Ll}\\p{Lo}{0,62} Label values are optional, must be between 1 and 63 characters long, have a UTF-8 encoding of maximum 128 bytes, and must conform to the following PCRE regular expression: [\\p{Ll}\\p{Lo}\\p{N}_-]{0,63} No more than 64 labels can be associated with a given store.
--
-- /See:/ 'newFhirStore_Labels' smart constructor.
newtype FhirStore_Labels = FhirStore_Labels
  { -- |
    additional :: (Core.HashMap Core.Text Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'FhirStore_Labels' with the minimum fields required to make a request.
newFhirStore_Labels ::
  -- |  See 'additional'.
  Core.HashMap Core.Text Core.Text ->
  FhirStore_Labels
newFhirStore_Labels additional = FhirStore_Labels {additional = additional}

instance Core.FromJSON FhirStore_Labels where
  parseJSON =
    Core.withObject
      "FhirStore_Labels"
      ( \o ->
          FhirStore_Labels Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON FhirStore_Labels where
  toJSON FhirStore_Labels {..} = Core.toJSON additional

-- | A (sub) field of a type.
--
-- /See:/ 'newField' smart constructor.
data Field = Field
  { -- | The maximum number of times this field can be repeated. 0 or -1 means unbounded.
    maxOccurs :: (Core.Maybe Core.Int32),
    -- | The minimum number of times this field must be present\/repeated.
    minOccurs :: (Core.Maybe Core.Int32),
    -- | The name of the field. For example, \"PID-1\" or just \"1\".
    name :: (Core.Maybe Core.Text),
    -- | The HL7v2 table this field refers to. For example, PID-15 (Patient\'s Primary Language) usually refers to table \"0296\".
    table :: (Core.Maybe Core.Text),
    -- | The type of this field. A Type with this name must be defined in an Hl7TypesConfig.
    type' :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Field' with the minimum fields required to make a request.
newField ::
  Field
newField =
  Field
    { maxOccurs = Core.Nothing,
      minOccurs = Core.Nothing,
      name = Core.Nothing,
      table = Core.Nothing,
      type' = Core.Nothing
    }

instance Core.FromJSON Field where
  parseJSON =
    Core.withObject
      "Field"
      ( \o ->
          Field
            Core.<$> (o Core..:? "maxOccurs")
            Core.<*> (o Core..:? "minOccurs")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "table")
            Core.<*> (o Core..:? "type")
      )

instance Core.ToJSON Field where
  toJSON Field {..} =
    Core.object
      ( Core.catMaybes
          [ ("maxOccurs" Core..=) Core.<$> maxOccurs,
            ("minOccurs" Core..=) Core.<$> minOccurs,
            ("name" Core..=) Core.<$> name,
            ("table" Core..=) Core.<$> table,
            ("type" Core..=) Core.<$> type'
          ]
      )

-- | Specifies FHIR paths to match, and how to handle de-identification of matching fields.
--
-- /See:/ 'newFieldMetadata' smart constructor.
data FieldMetadata = FieldMetadata
  { -- | Deidentify action for one field.
    action :: (Core.Maybe FieldMetadata_Action),
    -- | List of paths to FHIR fields to be redacted. Each path is a period-separated list where each component is either a field name or FHIR type name, for example: Patient, HumanName. For \"choice\" types (those defined in the FHIR spec with the form: field[x]) we use two separate components. For example, \"deceasedAge.unit\" is matched by \"Deceased.Age.unit\". Supported types are: AdministrativeGenderCode, Base64Binary, Boolean, Code, Date, DateTime, Decimal, HumanName, Id, Instant, Integer, LanguageCode, Markdown, Oid, PositiveInt, String, UnsignedInt, Uri, Uuid, Xhtml.
    paths :: (Core.Maybe [Core.Text])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'FieldMetadata' with the minimum fields required to make a request.
newFieldMetadata ::
  FieldMetadata
newFieldMetadata = FieldMetadata {action = Core.Nothing, paths = Core.Nothing}

instance Core.FromJSON FieldMetadata where
  parseJSON =
    Core.withObject
      "FieldMetadata"
      ( \o ->
          FieldMetadata
            Core.<$> (o Core..:? "action") Core.<*> (o Core..:? "paths")
      )

instance Core.ToJSON FieldMetadata where
  toJSON FieldMetadata {..} =
    Core.object
      ( Core.catMaybes
          [ ("action" Core..=) Core.<$> action,
            ("paths" Core..=) Core.<$> paths
          ]
      )

-- | The Cloud Storage output destination. The Cloud Healthcare Service Agent requires the @roles\/storage.objectAdmin@ Cloud IAM roles on the Cloud Storage location.
--
-- /See:/ 'newGcsDestination' smart constructor.
data GcsDestination = GcsDestination
  { -- | The format of the exported HL7v2 message files.
    contentStructure :: (Core.Maybe GcsDestination_ContentStructure),
    -- | Specifies the parts of the Message resource to include in the export. If not specified, FULL is used.
    messageView :: (Core.Maybe GcsDestination_MessageView),
    -- | URI of an existing Cloud Storage directory where the server writes result files, in the format @gs:\/\/{bucket-id}\/{path\/to\/destination\/dir}@. If there is no trailing slash, the service appends one when composing the object path.
    uriPrefix :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GcsDestination' with the minimum fields required to make a request.
newGcsDestination ::
  GcsDestination
newGcsDestination =
  GcsDestination
    { contentStructure = Core.Nothing,
      messageView = Core.Nothing,
      uriPrefix = Core.Nothing
    }

instance Core.FromJSON GcsDestination where
  parseJSON =
    Core.withObject
      "GcsDestination"
      ( \o ->
          GcsDestination
            Core.<$> (o Core..:? "contentStructure")
            Core.<*> (o Core..:? "messageView")
            Core.<*> (o Core..:? "uriPrefix")
      )

instance Core.ToJSON GcsDestination where
  toJSON GcsDestination {..} =
    Core.object
      ( Core.catMaybes
          [ ("contentStructure" Core..=)
              Core.<$> contentStructure,
            ("messageView" Core..=) Core.<$> messageView,
            ("uriPrefix" Core..=) Core.<$> uriPrefix
          ]
      )

-- | Specifies the configuration for importing data from Cloud Storage.
--
-- /See:/ 'newGcsSource' smart constructor.
newtype GcsSource = GcsSource
  { -- | Points to a Cloud Storage URI containing file(s) to import. The URI must be in the following format: @gs:\/\/{bucket_id}\/{object_id}@. The URI can include wildcards in @object_id@ and thus identify multiple files. Supported wildcards: * @*@ to match 0 or more non-separator characters * @**@ to match 0 or more characters (including separators). Must be used at the end of a path and with no other wildcards in the path. Can also be used with a file extension (such as .ndjson), which imports all files with the extension in the specified directory and its sub-directories. For example, @gs:\/\/my-bucket\/my-directory\/**.ndjson@ imports all files with @.ndjson@ extensions in @my-directory\/@ and its sub-directories. * @?@ to match 1 character Files matching the wildcard are expected to contain content only, no metadata.
    uri :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GcsSource' with the minimum fields required to make a request.
newGcsSource ::
  GcsSource
newGcsSource = GcsSource {uri = Core.Nothing}

instance Core.FromJSON GcsSource where
  parseJSON =
    Core.withObject
      "GcsSource"
      (\o -> GcsSource Core.<$> (o Core..:? "uri"))

instance Core.ToJSON GcsSource where
  toJSON GcsSource {..} =
    Core.object
      (Core.catMaybes [("uri" Core..=) Core.<$> uri])

-- | The Cloud Storage location for export.
--
-- /See:/ 'newGoogleCloudHealthcareV1ConsentGcsDestination' smart constructor.
newtype GoogleCloudHealthcareV1ConsentGcsDestination = GoogleCloudHealthcareV1ConsentGcsDestination
  { -- | URI for a Cloud Storage directory where the server writes result files, in the format @gs:\/\/{bucket-id}\/{path\/to\/destination\/dir}@. If there is no trailing slash, the service appends one when composing the object path. The user is responsible for creating the Cloud Storage bucket and directory referenced in @uri_prefix@.
    uriPrefix :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudHealthcareV1ConsentGcsDestination' with the minimum fields required to make a request.
newGoogleCloudHealthcareV1ConsentGcsDestination ::
  GoogleCloudHealthcareV1ConsentGcsDestination
newGoogleCloudHealthcareV1ConsentGcsDestination =
  GoogleCloudHealthcareV1ConsentGcsDestination {uriPrefix = Core.Nothing}

instance
  Core.FromJSON
    GoogleCloudHealthcareV1ConsentGcsDestination
  where
  parseJSON =
    Core.withObject
      "GoogleCloudHealthcareV1ConsentGcsDestination"
      ( \o ->
          GoogleCloudHealthcareV1ConsentGcsDestination
            Core.<$> (o Core..:? "uriPrefix")
      )

instance
  Core.ToJSON
    GoogleCloudHealthcareV1ConsentGcsDestination
  where
  toJSON
    GoogleCloudHealthcareV1ConsentGcsDestination {..} =
      Core.object
        ( Core.catMaybes
            [("uriPrefix" Core..=) Core.<$> uriPrefix]
        )

-- | Represents a user\'s consent in terms of the resources that can be accessed and under what conditions.
--
-- /See:/ 'newGoogleCloudHealthcareV1ConsentPolicy' smart constructor.
data GoogleCloudHealthcareV1ConsentPolicy = GoogleCloudHealthcareV1ConsentPolicy
  { -- | Required. The request conditions to meet to grant access. In addition to any supported comparison operators, authorization rules may have @IN@ operator as well as at most 10 logical operators that are limited to @AND@ (@&&@), @OR@ (@||@).
    authorizationRule :: (Core.Maybe Expr),
    -- | The resources that this policy applies to. A resource is a match if it matches all the attributes listed here. If empty, this policy applies to all User data mappings for the given user.
    resourceAttributes :: (Core.Maybe [Attribute])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudHealthcareV1ConsentPolicy' with the minimum fields required to make a request.
newGoogleCloudHealthcareV1ConsentPolicy ::
  GoogleCloudHealthcareV1ConsentPolicy
newGoogleCloudHealthcareV1ConsentPolicy =
  GoogleCloudHealthcareV1ConsentPolicy
    { authorizationRule = Core.Nothing,
      resourceAttributes = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudHealthcareV1ConsentPolicy
  where
  parseJSON =
    Core.withObject
      "GoogleCloudHealthcareV1ConsentPolicy"
      ( \o ->
          GoogleCloudHealthcareV1ConsentPolicy
            Core.<$> (o Core..:? "authorizationRule")
            Core.<*> (o Core..:? "resourceAttributes")
      )

instance
  Core.ToJSON
    GoogleCloudHealthcareV1ConsentPolicy
  where
  toJSON GoogleCloudHealthcareV1ConsentPolicy {..} =
    Core.object
      ( Core.catMaybes
          [ ("authorizationRule" Core..=)
              Core.<$> authorizationRule,
            ("resourceAttributes" Core..=)
              Core.<$> resourceAttributes
          ]
      )

-- | Contains a summary of the DeidentifyDicomStore operation.
--
-- /See:/ 'newGoogleCloudHealthcareV1DeidentifyDeidentifyDicomStoreSummary' smart constructor.
data GoogleCloudHealthcareV1DeidentifyDeidentifyDicomStoreSummary = GoogleCloudHealthcareV1DeidentifyDeidentifyDicomStoreSummary
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudHealthcareV1DeidentifyDeidentifyDicomStoreSummary' with the minimum fields required to make a request.
newGoogleCloudHealthcareV1DeidentifyDeidentifyDicomStoreSummary ::
  GoogleCloudHealthcareV1DeidentifyDeidentifyDicomStoreSummary
newGoogleCloudHealthcareV1DeidentifyDeidentifyDicomStoreSummary =
  GoogleCloudHealthcareV1DeidentifyDeidentifyDicomStoreSummary

instance
  Core.FromJSON
    GoogleCloudHealthcareV1DeidentifyDeidentifyDicomStoreSummary
  where
  parseJSON =
    Core.withObject
      "GoogleCloudHealthcareV1DeidentifyDeidentifyDicomStoreSummary"
      ( \o ->
          Core.pure
            GoogleCloudHealthcareV1DeidentifyDeidentifyDicomStoreSummary
      )

instance
  Core.ToJSON
    GoogleCloudHealthcareV1DeidentifyDeidentifyDicomStoreSummary
  where
  toJSON = Core.const Core.emptyObject

-- | Contains a summary of the DeidentifyFhirStore operation.
--
-- /See:/ 'newGoogleCloudHealthcareV1DeidentifyDeidentifyFhirStoreSummary' smart constructor.
data GoogleCloudHealthcareV1DeidentifyDeidentifyFhirStoreSummary = GoogleCloudHealthcareV1DeidentifyDeidentifyFhirStoreSummary
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudHealthcareV1DeidentifyDeidentifyFhirStoreSummary' with the minimum fields required to make a request.
newGoogleCloudHealthcareV1DeidentifyDeidentifyFhirStoreSummary ::
  GoogleCloudHealthcareV1DeidentifyDeidentifyFhirStoreSummary
newGoogleCloudHealthcareV1DeidentifyDeidentifyFhirStoreSummary =
  GoogleCloudHealthcareV1DeidentifyDeidentifyFhirStoreSummary

instance
  Core.FromJSON
    GoogleCloudHealthcareV1DeidentifyDeidentifyFhirStoreSummary
  where
  parseJSON =
    Core.withObject
      "GoogleCloudHealthcareV1DeidentifyDeidentifyFhirStoreSummary"
      ( \o ->
          Core.pure
            GoogleCloudHealthcareV1DeidentifyDeidentifyFhirStoreSummary
      )

instance
  Core.ToJSON
    GoogleCloudHealthcareV1DeidentifyDeidentifyFhirStoreSummary
  where
  toJSON = Core.const Core.emptyObject

-- | The BigQuery table where the server writes the output.
--
-- /See:/ 'newGoogleCloudHealthcareV1DicomBigQueryDestination' smart constructor.
data GoogleCloudHealthcareV1DicomBigQueryDestination = GoogleCloudHealthcareV1DicomBigQueryDestination
  { -- | Use @write_disposition@ instead. If @write_disposition@ is specified, this parameter is ignored. force=false is equivalent to write/disposition=WRITE/EMPTY and force=true is equivalent to write/disposition=WRITE/TRUNCATE.
    force :: (Core.Maybe Core.Bool),
    -- | BigQuery URI to a table, up to 2000 characters long, in the format @bq:\/\/projectId.bqDatasetId.tableId@
    tableUri :: (Core.Maybe Core.Text),
    -- | Determines whether the existing table in the destination is to be overwritten or appended to. If a write_disposition is specified, the @force@ parameter is ignored.
    writeDisposition ::
      ( Core.Maybe
          GoogleCloudHealthcareV1DicomBigQueryDestination_WriteDisposition
      )
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudHealthcareV1DicomBigQueryDestination' with the minimum fields required to make a request.
newGoogleCloudHealthcareV1DicomBigQueryDestination ::
  GoogleCloudHealthcareV1DicomBigQueryDestination
newGoogleCloudHealthcareV1DicomBigQueryDestination =
  GoogleCloudHealthcareV1DicomBigQueryDestination
    { force = Core.Nothing,
      tableUri = Core.Nothing,
      writeDisposition = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudHealthcareV1DicomBigQueryDestination
  where
  parseJSON =
    Core.withObject
      "GoogleCloudHealthcareV1DicomBigQueryDestination"
      ( \o ->
          GoogleCloudHealthcareV1DicomBigQueryDestination
            Core.<$> (o Core..:? "force") Core.<*> (o Core..:? "tableUri")
              Core.<*> (o Core..:? "writeDisposition")
      )

instance
  Core.ToJSON
    GoogleCloudHealthcareV1DicomBigQueryDestination
  where
  toJSON
    GoogleCloudHealthcareV1DicomBigQueryDestination {..} =
      Core.object
        ( Core.catMaybes
            [ ("force" Core..=) Core.<$> force,
              ("tableUri" Core..=) Core.<$> tableUri,
              ("writeDisposition" Core..=)
                Core.<$> writeDisposition
            ]
        )

-- | The Cloud Storage location where the server writes the output and the export configuration.
--
-- /See:/ 'newGoogleCloudHealthcareV1DicomGcsDestination' smart constructor.
data GoogleCloudHealthcareV1DicomGcsDestination = GoogleCloudHealthcareV1DicomGcsDestination
  { -- | MIME types supported by DICOM spec. Each file is written in the following format: @...\/{study_id}\/{series_id}\/{instance_id}[\/{frame_number}].{extension}@ The frame/number component exists only for multi-frame instances. Supported MIME types are consistent with supported formats in DICOMweb: https:\/\/cloud.google.com\/healthcare\/docs\/dicom#retrieve/transaction. Specifically, the following are supported: - application\/dicom; transfer-syntax=1.2.840.10008.1.2.1 (uncompressed DICOM) - application\/dicom; transfer-syntax=1.2.840.10008.1.2.4.50 (DICOM with embedded JPEG Baseline) - application\/dicom; transfer-syntax=1.2.840.10008.1.2.4.90 (DICOM with embedded JPEG 2000 Lossless Only) - application\/dicom; transfer-syntax=1.2.840.10008.1.2.4.91 (DICOM with embedded JPEG 2000) - application\/dicom; transfer-syntax=* (DICOM with no transcoding) - application\/octet-stream; transfer-syntax=1.2.840.10008.1.2.1 (raw uncompressed PixelData) - application\/octet-stream; transfer-syntax=* (raw PixelData in whatever
    -- format it was uploaded in) - image\/jpeg; transfer-syntax=1.2.840.10008.1.2.4.50 (Consumer JPEG) - image\/png The following extensions are used for output files: - application\/dicom -> .dcm - image\/jpeg -> .jpg - image\/png -> .png - application\/octet-stream -> no extension If unspecified, the instances are exported in the original DICOM format they were uploaded in.
    mimeType :: (Core.Maybe Core.Text),
    -- | The Cloud Storage destination to export to. URI for a Cloud Storage directory where the server writes the result files, in the format @gs:\/\/{bucket-id}\/{path\/to\/destination\/dir}@). If there is no trailing slash, the service appends one when composing the object path. The user is responsible for creating the Cloud Storage bucket referenced in @uri_prefix@.
    uriPrefix :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudHealthcareV1DicomGcsDestination' with the minimum fields required to make a request.
newGoogleCloudHealthcareV1DicomGcsDestination ::
  GoogleCloudHealthcareV1DicomGcsDestination
newGoogleCloudHealthcareV1DicomGcsDestination =
  GoogleCloudHealthcareV1DicomGcsDestination
    { mimeType = Core.Nothing,
      uriPrefix = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudHealthcareV1DicomGcsDestination
  where
  parseJSON =
    Core.withObject
      "GoogleCloudHealthcareV1DicomGcsDestination"
      ( \o ->
          GoogleCloudHealthcareV1DicomGcsDestination
            Core.<$> (o Core..:? "mimeType")
            Core.<*> (o Core..:? "uriPrefix")
      )

instance
  Core.ToJSON
    GoogleCloudHealthcareV1DicomGcsDestination
  where
  toJSON GoogleCloudHealthcareV1DicomGcsDestination {..} =
    Core.object
      ( Core.catMaybes
          [ ("mimeType" Core..=) Core.<$> mimeType,
            ("uriPrefix" Core..=) Core.<$> uriPrefix
          ]
      )

-- | Specifies the configuration for importing data from Cloud Storage.
--
-- /See:/ 'newGoogleCloudHealthcareV1DicomGcsSource' smart constructor.
newtype GoogleCloudHealthcareV1DicomGcsSource = GoogleCloudHealthcareV1DicomGcsSource
  { -- | Points to a Cloud Storage URI containing file(s) with content only. The URI must be in the following format: @gs:\/\/{bucket_id}\/{object_id}@. The URI can include wildcards in @object_id@ and thus identify multiple files. Supported wildcards: * \'/\' to match 0 or more non-separator characters / \'**\' to match 0 or more characters (including separators). Must be used at the end of a path and with no other wildcards in the path. Can also be used with a file extension (such as .dcm), which imports all files with the extension in the specified directory and its sub-directories. For example, @gs:\/\/my-bucket\/my-directory\/**.dcm@ imports all files with .dcm extensions in @my-directory\/@ and its sub-directories. * \'?\' to match 1 character. All other URI formats are invalid. Files matching the wildcard are expected to contain content only, no metadata.
    uri :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudHealthcareV1DicomGcsSource' with the minimum fields required to make a request.
newGoogleCloudHealthcareV1DicomGcsSource ::
  GoogleCloudHealthcareV1DicomGcsSource
newGoogleCloudHealthcareV1DicomGcsSource =
  GoogleCloudHealthcareV1DicomGcsSource {uri = Core.Nothing}

instance
  Core.FromJSON
    GoogleCloudHealthcareV1DicomGcsSource
  where
  parseJSON =
    Core.withObject
      "GoogleCloudHealthcareV1DicomGcsSource"
      ( \o ->
          GoogleCloudHealthcareV1DicomGcsSource
            Core.<$> (o Core..:? "uri")
      )

instance
  Core.ToJSON
    GoogleCloudHealthcareV1DicomGcsSource
  where
  toJSON GoogleCloudHealthcareV1DicomGcsSource {..} =
    Core.object
      (Core.catMaybes [("uri" Core..=) Core.<$> uri])

-- | The configuration for exporting to BigQuery.
--
-- /See:/ 'newGoogleCloudHealthcareV1FhirBigQueryDestination' smart constructor.
data GoogleCloudHealthcareV1FhirBigQueryDestination = GoogleCloudHealthcareV1FhirBigQueryDestination
  { -- | BigQuery URI to an existing dataset, up to 2000 characters long, in the format @bq:\/\/projectId.bqDatasetId@.
    datasetUri :: (Core.Maybe Core.Text),
    -- | If this flag is @TRUE@, all tables are deleted from the dataset before the new exported tables are written. If the flag is not set and the destination dataset contains tables, the export call returns an error. If @write_disposition@ is specified, this parameter is ignored. force=false is equivalent to write/disposition=WRITE/EMPTY and force=true is equivalent to write/disposition=WRITE/TRUNCATE.
    force :: (Core.Maybe Core.Bool),
    -- | The configuration for the exported BigQuery schema.
    schemaConfig :: (Core.Maybe SchemaConfig),
    -- | Determines if existing data in the destination dataset is overwritten, appended to, or not written if the tables contain data. If a write_disposition is specified, the @force@ parameter is ignored.
    writeDisposition ::
      ( Core.Maybe
          GoogleCloudHealthcareV1FhirBigQueryDestination_WriteDisposition
      )
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudHealthcareV1FhirBigQueryDestination' with the minimum fields required to make a request.
newGoogleCloudHealthcareV1FhirBigQueryDestination ::
  GoogleCloudHealthcareV1FhirBigQueryDestination
newGoogleCloudHealthcareV1FhirBigQueryDestination =
  GoogleCloudHealthcareV1FhirBigQueryDestination
    { datasetUri = Core.Nothing,
      force = Core.Nothing,
      schemaConfig = Core.Nothing,
      writeDisposition = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudHealthcareV1FhirBigQueryDestination
  where
  parseJSON =
    Core.withObject
      "GoogleCloudHealthcareV1FhirBigQueryDestination"
      ( \o ->
          GoogleCloudHealthcareV1FhirBigQueryDestination
            Core.<$> (o Core..:? "datasetUri")
              Core.<*> (o Core..:? "force")
              Core.<*> (o Core..:? "schemaConfig")
              Core.<*> (o Core..:? "writeDisposition")
      )

instance
  Core.ToJSON
    GoogleCloudHealthcareV1FhirBigQueryDestination
  where
  toJSON
    GoogleCloudHealthcareV1FhirBigQueryDestination {..} =
      Core.object
        ( Core.catMaybes
            [ ("datasetUri" Core..=) Core.<$> datasetUri,
              ("force" Core..=) Core.<$> force,
              ("schemaConfig" Core..=) Core.<$> schemaConfig,
              ("writeDisposition" Core..=)
                Core.<$> writeDisposition
            ]
        )

-- | The configuration for exporting to Cloud Storage.
--
-- /See:/ 'newGoogleCloudHealthcareV1FhirGcsDestination' smart constructor.
newtype GoogleCloudHealthcareV1FhirGcsDestination = GoogleCloudHealthcareV1FhirGcsDestination
  { -- | URI for a Cloud Storage directory where result files should be written, in the format of @gs:\/\/{bucket-id}\/{path\/to\/destination\/dir}@. If there is no trailing slash, the service appends one when composing the object path. The user is responsible for creating the Cloud Storage bucket referenced in @uri_prefix@.
    uriPrefix :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudHealthcareV1FhirGcsDestination' with the minimum fields required to make a request.
newGoogleCloudHealthcareV1FhirGcsDestination ::
  GoogleCloudHealthcareV1FhirGcsDestination
newGoogleCloudHealthcareV1FhirGcsDestination =
  GoogleCloudHealthcareV1FhirGcsDestination {uriPrefix = Core.Nothing}

instance
  Core.FromJSON
    GoogleCloudHealthcareV1FhirGcsDestination
  where
  parseJSON =
    Core.withObject
      "GoogleCloudHealthcareV1FhirGcsDestination"
      ( \o ->
          GoogleCloudHealthcareV1FhirGcsDestination
            Core.<$> (o Core..:? "uriPrefix")
      )

instance
  Core.ToJSON
    GoogleCloudHealthcareV1FhirGcsDestination
  where
  toJSON GoogleCloudHealthcareV1FhirGcsDestination {..} =
    Core.object
      ( Core.catMaybes
          [("uriPrefix" Core..=) Core.<$> uriPrefix]
      )

-- | Specifies the configuration for importing data from Cloud Storage.
--
-- /See:/ 'newGoogleCloudHealthcareV1FhirGcsSource' smart constructor.
newtype GoogleCloudHealthcareV1FhirGcsSource = GoogleCloudHealthcareV1FhirGcsSource
  { -- | Points to a Cloud Storage URI containing file(s) to import. The URI must be in the following format: @gs:\/\/{bucket_id}\/{object_id}@. The URI can include wildcards in @object_id@ and thus identify multiple files. Supported wildcards: * @*@ to match 0 or more non-separator characters * @**@ to match 0 or more characters (including separators). Must be used at the end of a path and with no other wildcards in the path. Can also be used with a file extension (such as .ndjson), which imports all files with the extension in the specified directory and its sub-directories. For example, @gs:\/\/my-bucket\/my-directory\/**.ndjson@ imports all files with @.ndjson@ extensions in @my-directory\/@ and its sub-directories. * @?@ to match 1 character Files matching the wildcard are expected to contain content only, no metadata.
    uri :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudHealthcareV1FhirGcsSource' with the minimum fields required to make a request.
newGoogleCloudHealthcareV1FhirGcsSource ::
  GoogleCloudHealthcareV1FhirGcsSource
newGoogleCloudHealthcareV1FhirGcsSource =
  GoogleCloudHealthcareV1FhirGcsSource {uri = Core.Nothing}

instance
  Core.FromJSON
    GoogleCloudHealthcareV1FhirGcsSource
  where
  parseJSON =
    Core.withObject
      "GoogleCloudHealthcareV1FhirGcsSource"
      ( \o ->
          GoogleCloudHealthcareV1FhirGcsSource
            Core.<$> (o Core..:? "uri")
      )

instance
  Core.ToJSON
    GoogleCloudHealthcareV1FhirGcsSource
  where
  toJSON GoogleCloudHealthcareV1FhirGcsSource {..} =
    Core.object
      (Core.catMaybes [("uri" Core..=) Core.<$> uri])

-- | Construct representing a logical group or a segment.
--
-- /See:/ 'newGroupOrSegment' smart constructor.
data GroupOrSegment = GroupOrSegment
  { -- |
    group' :: (Core.Maybe SchemaGroup),
    -- |
    segment :: (Core.Maybe SchemaSegment)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GroupOrSegment' with the minimum fields required to make a request.
newGroupOrSegment ::
  GroupOrSegment
newGroupOrSegment =
  GroupOrSegment {group' = Core.Nothing, segment = Core.Nothing}

instance Core.FromJSON GroupOrSegment where
  parseJSON =
    Core.withObject
      "GroupOrSegment"
      ( \o ->
          GroupOrSegment
            Core.<$> (o Core..:? "group") Core.<*> (o Core..:? "segment")
      )

instance Core.ToJSON GroupOrSegment where
  toJSON GroupOrSegment {..} =
    Core.object
      ( Core.catMaybes
          [ ("group" Core..=) Core.<$> group',
            ("segment" Core..=) Core.<$> segment
          ]
      )

-- | Root config message for HL7v2 schema. This contains a schema structure of groups and segments, and filters that determine which messages to apply the schema structure to.
--
-- /See:/ 'newHl7SchemaConfig' smart constructor.
data Hl7SchemaConfig = Hl7SchemaConfig
  { -- | Map from each HL7v2 message type and trigger event pair, such as ADT_A04, to its schema configuration root group.
    messageSchemaConfigs :: (Core.Maybe Hl7SchemaConfig_MessageSchemaConfigs),
    -- | Each VersionSource is tested and only if they all match is the schema used for the message.
    version :: (Core.Maybe [VersionSource])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Hl7SchemaConfig' with the minimum fields required to make a request.
newHl7SchemaConfig ::
  Hl7SchemaConfig
newHl7SchemaConfig =
  Hl7SchemaConfig {messageSchemaConfigs = Core.Nothing, version = Core.Nothing}

instance Core.FromJSON Hl7SchemaConfig where
  parseJSON =
    Core.withObject
      "Hl7SchemaConfig"
      ( \o ->
          Hl7SchemaConfig
            Core.<$> (o Core..:? "messageSchemaConfigs")
            Core.<*> (o Core..:? "version")
      )

instance Core.ToJSON Hl7SchemaConfig where
  toJSON Hl7SchemaConfig {..} =
    Core.object
      ( Core.catMaybes
          [ ("messageSchemaConfigs" Core..=)
              Core.<$> messageSchemaConfigs,
            ("version" Core..=) Core.<$> version
          ]
      )

-- | Map from each HL7v2 message type and trigger event pair, such as ADT_A04, to its schema configuration root group.
--
-- /See:/ 'newHl7SchemaConfig_MessageSchemaConfigs' smart constructor.
newtype Hl7SchemaConfig_MessageSchemaConfigs = Hl7SchemaConfig_MessageSchemaConfigs
  { -- |
    additional :: (Core.HashMap Core.Text SchemaGroup)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Hl7SchemaConfig_MessageSchemaConfigs' with the minimum fields required to make a request.
newHl7SchemaConfig_MessageSchemaConfigs ::
  -- |  See 'additional'.
  Core.HashMap Core.Text SchemaGroup ->
  Hl7SchemaConfig_MessageSchemaConfigs
newHl7SchemaConfig_MessageSchemaConfigs additional =
  Hl7SchemaConfig_MessageSchemaConfigs {additional = additional}

instance
  Core.FromJSON
    Hl7SchemaConfig_MessageSchemaConfigs
  where
  parseJSON =
    Core.withObject
      "Hl7SchemaConfig_MessageSchemaConfigs"
      ( \o ->
          Hl7SchemaConfig_MessageSchemaConfigs
            Core.<$> (Core.parseJSONObject o)
      )

instance
  Core.ToJSON
    Hl7SchemaConfig_MessageSchemaConfigs
  where
  toJSON Hl7SchemaConfig_MessageSchemaConfigs {..} =
    Core.toJSON additional

-- | Root config for HL7v2 datatype definitions for a specific HL7v2 version.
--
-- /See:/ 'newHl7TypesConfig' smart constructor.
data Hl7TypesConfig = Hl7TypesConfig
  { -- | The HL7v2 type definitions.
    type' :: (Core.Maybe [Type]),
    -- | The version selectors that this config applies to. A message must match ALL version sources to apply.
    version :: (Core.Maybe [VersionSource])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Hl7TypesConfig' with the minimum fields required to make a request.
newHl7TypesConfig ::
  Hl7TypesConfig
newHl7TypesConfig =
  Hl7TypesConfig {type' = Core.Nothing, version = Core.Nothing}

instance Core.FromJSON Hl7TypesConfig where
  parseJSON =
    Core.withObject
      "Hl7TypesConfig"
      ( \o ->
          Hl7TypesConfig
            Core.<$> (o Core..:? "type") Core.<*> (o Core..:? "version")
      )

instance Core.ToJSON Hl7TypesConfig where
  toJSON Hl7TypesConfig {..} =
    Core.object
      ( Core.catMaybes
          [ ("type" Core..=) Core.<$> type',
            ("version" Core..=) Core.<$> version
          ]
      )

-- | Specifies where and whether to send notifications upon changes to a data store.
--
-- /See:/ 'newHl7V2NotificationConfig' smart constructor.
data Hl7V2NotificationConfig = Hl7V2NotificationConfig
  { -- | Restricts notifications sent for messages matching a filter. If this is empty, all messages are matched. The following syntax is available: * A string field value can be written as text inside quotation marks, for example @\"query text\"@. The only valid relational operation for text fields is equality (@=@), where text is searched within the field, rather than having the field be equal to the text. For example, @\"Comment = great\"@ returns messages with @great@ in the comment field. * A number field value can be written as an integer, a decimal, or an exponential. The valid relational operators for number fields are the equality operator (@=@), along with the less than\/greater than operators (@\<@, @\<=@, @>@, @>=@). Note that there is no inequality (@!=@) operator. You can prepend the @NOT@ operator to an expression to negate it. * A date field value must be written in @yyyy-mm-dd@ form. Fields with date and time use the RFC3339 time format. Leading zeros are required for one-digit months and days. The
    -- valid relational operators for date fields are the equality operator (@=@) , along with the less than\/greater than operators (@\<@, @\<=@, @>@, @>=@). Note that there is no inequality (@!=@) operator. You can prepend the @NOT@ operator to an expression to negate it. * Multiple field query expressions can be combined in one query by adding @AND@ or @OR@ operators between the expressions. If a boolean operator appears within a quoted string, it is not treated as special, it\'s just another part of the character string to be matched. You can prepend the @NOT@ operator to an expression to negate it. The following fields and functions are available for filtering: * @message_type@, from the MSH-9.1 field. For example, @NOT message_type = \"ADT\"@. * @send_date@ or @sendDate@, the YYYY-MM-DD date the message was sent in the dataset\'s time_zone, from the MSH-7 segment. For example, @send_date \< \"2017-01-02\"@. * @send_time@, the timestamp when the message was sent, using the RFC3339 time format for comparisons,
    -- from the MSH-7 segment. For example, @send_time \< \"2017-01-02T00:00:00-05:00\"@. * @create_time@, the timestamp when the message was created in the HL7v2 store. Use the RFC3339 time format for comparisons. For example, @create_time \< \"2017-01-02T00:00:00-05:00\"@. * @send_facility@, the care center that the message came from, from the MSH-4 segment. For example, @send_facility = \"ABC\"@. * @PatientId(value, type)@, which matches if the message lists a patient having an ID of the given value and type in the PID-2, PID-3, or PID-4 segments. For example, @PatientId(\"123456\", \"MRN\")@. * @labels.x@, a string value of the label with key @x@ as set using the Message.labels map. For example, @labels.\"priority\"=\"high\"@. The operator @:*@ can be used to assert the existence of a label. For example, @labels.\"priority\":*@.
    filter :: (Core.Maybe Core.Text),
    -- | The <https://cloud.google.com/pubsub/docs/ Pub\/Sub> topic that notifications of changes are published on. Supplied by the client. The notification is a @PubsubMessage@ with the following fields: * @PubsubMessage.Data@ contains the resource name. * @PubsubMessage.MessageId@ is the ID of this notification. It\'s guaranteed to be unique within the topic. * @PubsubMessage.PublishTime@ is the time when the message was published. Note that notifications are only sent if the topic is non-empty. <https://cloud.google.com/pubsub/docs/overview#names Topic names> must be scoped to a project. The Cloud Healthcare API service account, service-PROJECT_NUMBER\@gcp-sa-healthcare.iam.gserviceaccount.com, must have publisher permissions on the given Pub\/Sub topic. Not having adequate permissions causes the calls that send notifications to fail. If a notification cannot be published to Pub\/Sub, errors are logged to Cloud Logging. For more information, see
    -- <https://cloud.google.com/healthcare/docs/how-tos/logging Viewing error logs in Cloud Logging>).
    pubsubTopic :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Hl7V2NotificationConfig' with the minimum fields required to make a request.
newHl7V2NotificationConfig ::
  Hl7V2NotificationConfig
newHl7V2NotificationConfig =
  Hl7V2NotificationConfig {filter = Core.Nothing, pubsubTopic = Core.Nothing}

instance Core.FromJSON Hl7V2NotificationConfig where
  parseJSON =
    Core.withObject
      "Hl7V2NotificationConfig"
      ( \o ->
          Hl7V2NotificationConfig
            Core.<$> (o Core..:? "filter")
            Core.<*> (o Core..:? "pubsubTopic")
      )

instance Core.ToJSON Hl7V2NotificationConfig where
  toJSON Hl7V2NotificationConfig {..} =
    Core.object
      ( Core.catMaybes
          [ ("filter" Core..=) Core.<$> filter,
            ("pubsubTopic" Core..=) Core.<$> pubsubTopic
          ]
      )

-- | Represents an HL7v2 store.
--
-- /See:/ 'newHl7V2Store' smart constructor.
data Hl7V2Store = Hl7V2Store
  { -- | User-supplied key-value pairs used to organize HL7v2 stores. Label keys must be between 1 and 63 characters long, have a UTF-8 encoding of maximum 128 bytes, and must conform to the following PCRE regular expression: \\p{Ll}\\p{Lo}{0,62} Label values are optional, must be between 1 and 63 characters long, have a UTF-8 encoding of maximum 128 bytes, and must conform to the following PCRE regular expression: [\\p{Ll}\\p{Lo}\\p{N}_-]{0,63} No more than 64 labels can be associated with a given store.
    labels :: (Core.Maybe Hl7V2Store_Labels),
    -- | Resource name of the HL7v2 store, of the form @projects\/{project_id}\/datasets\/{dataset_id}\/hl7V2Stores\/{hl7v2_store_id}@.
    name :: (Core.Maybe Core.Text),
    -- | A list of notification configs. Each configuration uses a filter to determine whether to publish a message (both Ingest & Create) on the corresponding notification destination. Only the message name is sent as part of the notification. Supplied by the client.
    notificationConfigs :: (Core.Maybe [Hl7V2NotificationConfig]),
    -- | The configuration for the parser. It determines how the server parses the messages.
    parserConfig :: (Core.Maybe ParserConfig),
    -- | Determines whether to reject duplicate messages. A duplicate message is a message with the same raw bytes as a message that has already been ingested\/created in this HL7v2 store. The default value is false, meaning that the store accepts the duplicate messages and it also returns the same ACK message in the IngestMessageResponse as has been returned previously. Note that only one resource is created in the store. When this field is set to true, CreateMessage\/IngestMessage requests with a duplicate message will be rejected by the store, and IngestMessageErrorDetail returns a NACK message upon rejection.
    rejectDuplicateMessage :: (Core.Maybe Core.Bool)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Hl7V2Store' with the minimum fields required to make a request.
newHl7V2Store ::
  Hl7V2Store
newHl7V2Store =
  Hl7V2Store
    { labels = Core.Nothing,
      name = Core.Nothing,
      notificationConfigs = Core.Nothing,
      parserConfig = Core.Nothing,
      rejectDuplicateMessage = Core.Nothing
    }

instance Core.FromJSON Hl7V2Store where
  parseJSON =
    Core.withObject
      "Hl7V2Store"
      ( \o ->
          Hl7V2Store
            Core.<$> (o Core..:? "labels")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "notificationConfigs")
            Core.<*> (o Core..:? "parserConfig")
            Core.<*> (o Core..:? "rejectDuplicateMessage")
      )

instance Core.ToJSON Hl7V2Store where
  toJSON Hl7V2Store {..} =
    Core.object
      ( Core.catMaybes
          [ ("labels" Core..=) Core.<$> labels,
            ("name" Core..=) Core.<$> name,
            ("notificationConfigs" Core..=)
              Core.<$> notificationConfigs,
            ("parserConfig" Core..=) Core.<$> parserConfig,
            ("rejectDuplicateMessage" Core..=)
              Core.<$> rejectDuplicateMessage
          ]
      )

-- | User-supplied key-value pairs used to organize HL7v2 stores. Label keys must be between 1 and 63 characters long, have a UTF-8 encoding of maximum 128 bytes, and must conform to the following PCRE regular expression: \\p{Ll}\\p{Lo}{0,62} Label values are optional, must be between 1 and 63 characters long, have a UTF-8 encoding of maximum 128 bytes, and must conform to the following PCRE regular expression: [\\p{Ll}\\p{Lo}\\p{N}_-]{0,63} No more than 64 labels can be associated with a given store.
--
-- /See:/ 'newHl7V2Store_Labels' smart constructor.
newtype Hl7V2Store_Labels = Hl7V2Store_Labels
  { -- |
    additional :: (Core.HashMap Core.Text Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Hl7V2Store_Labels' with the minimum fields required to make a request.
newHl7V2Store_Labels ::
  -- |  See 'additional'.
  Core.HashMap Core.Text Core.Text ->
  Hl7V2Store_Labels
newHl7V2Store_Labels additional = Hl7V2Store_Labels {additional = additional}

instance Core.FromJSON Hl7V2Store_Labels where
  parseJSON =
    Core.withObject
      "Hl7V2Store_Labels"
      ( \o ->
          Hl7V2Store_Labels Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON Hl7V2Store_Labels where
  toJSON Hl7V2Store_Labels {..} = Core.toJSON additional

-- | Message that represents an arbitrary HTTP body. It should only be used for payload formats that can\'t be represented as JSON, such as raw binary or an HTML page. This message can be used both in streaming and non-streaming API methods in the request as well as the response. It can be used as a top-level request field, which is convenient if one wants to extract parameters from either the URL or HTTP template into the request fields and also want access to the raw HTTP body. Example: message GetResourceRequest { \/\/ A unique request id. string request/id = 1; \/\/ The raw HTTP body is bound to this field. google.api.HttpBody http/body = 2; } service ResourceService { rpc GetResource(GetResourceRequest) returns (google.api.HttpBody); rpc UpdateResource(google.api.HttpBody) returns (google.protobuf.Empty); } Example with streaming methods: service CaldavService { rpc GetCalendar(stream google.api.HttpBody) returns (stream google.api.HttpBody); rpc UpdateCalendar(stream google.api.HttpBody) returns (stream
-- google.api.HttpBody); } Use of this type only changes how the request and response bodies are handled, all other features will continue to work unchanged.
--
-- /See:/ 'newHttpBody' smart constructor.
data HttpBody = HttpBody
  { -- | The HTTP Content-Type header value specifying the content type of the body.
    contentType :: (Core.Maybe Core.Text),
    -- | The HTTP request\/response body as raw binary.
    data' :: (Core.Maybe Core.Base64),
    -- | Application specific response metadata. Must be set in the first response for streaming APIs.
    extensions :: (Core.Maybe [HttpBody_ExtensionsItem])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'HttpBody' with the minimum fields required to make a request.
newHttpBody ::
  HttpBody
newHttpBody =
  HttpBody
    { contentType = Core.Nothing,
      data' = Core.Nothing,
      extensions = Core.Nothing
    }

instance Core.FromJSON HttpBody where
  parseJSON =
    Core.withObject
      "HttpBody"
      ( \o ->
          HttpBody
            Core.<$> (o Core..:? "contentType")
            Core.<*> (o Core..:? "data")
            Core.<*> (o Core..:? "extensions")
      )

instance Core.ToJSON HttpBody where
  toJSON HttpBody {..} =
    Core.object
      ( Core.catMaybes
          [ ("contentType" Core..=) Core.<$> contentType,
            ("data" Core..=) Core.<$> data',
            ("extensions" Core..=) Core.<$> extensions
          ]
      )

--
-- /See:/ 'newHttpBody_ExtensionsItem' smart constructor.
newtype HttpBody_ExtensionsItem = HttpBody_ExtensionsItem
  { -- | Properties of the object. Contains field \@type with type URL.
    additional :: (Core.HashMap Core.Text Core.Value)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'HttpBody_ExtensionsItem' with the minimum fields required to make a request.
newHttpBody_ExtensionsItem ::
  -- |  Properties of the object. Contains field \@type with type URL. See 'additional'.
  Core.HashMap Core.Text Core.Value ->
  HttpBody_ExtensionsItem
newHttpBody_ExtensionsItem additional =
  HttpBody_ExtensionsItem {additional = additional}

instance Core.FromJSON HttpBody_ExtensionsItem where
  parseJSON =
    Core.withObject
      "HttpBody_ExtensionsItem"
      ( \o ->
          HttpBody_ExtensionsItem
            Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON HttpBody_ExtensionsItem where
  toJSON HttpBody_ExtensionsItem {..} =
    Core.toJSON additional

-- | Raw bytes representing consent artifact content.
--
-- /See:/ 'newImage' smart constructor.
data Image = Image
  { -- | Input only. Points to a Cloud Storage URI containing the consent artifact content. The URI must be in the following format: @gs:\/\/{bucket_id}\/{object_id}@. The Cloud Healthcare API service account must have the @roles\/storage.objectViewer@ Cloud IAM role for this Cloud Storage location. The consent artifact content at this URI is copied to a Cloud Storage location managed by the Cloud Healthcare API. Responses to fetching requests return the consent artifact content in raw_bytes.
    gcsUri :: (Core.Maybe Core.Text),
    -- | Consent artifact content represented as a stream of bytes. This field is populated when returned in GetConsentArtifact response, but not included in CreateConsentArtifact and ListConsentArtifact response.
    rawBytes :: (Core.Maybe Core.Base64)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Image' with the minimum fields required to make a request.
newImage ::
  Image
newImage = Image {gcsUri = Core.Nothing, rawBytes = Core.Nothing}

instance Core.FromJSON Image where
  parseJSON =
    Core.withObject
      "Image"
      ( \o ->
          Image
            Core.<$> (o Core..:? "gcsUri")
            Core.<*> (o Core..:? "rawBytes")
      )

instance Core.ToJSON Image where
  toJSON Image {..} =
    Core.object
      ( Core.catMaybes
          [ ("gcsUri" Core..=) Core.<$> gcsUri,
            ("rawBytes" Core..=) Core.<$> rawBytes
          ]
      )

-- | Specifies how to handle de-identification of image pixels.
--
-- /See:/ 'newImageConfig' smart constructor.
newtype ImageConfig = ImageConfig
  { -- | Determines how to redact text from image.
    textRedactionMode :: (Core.Maybe ImageConfig_TextRedactionMode)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ImageConfig' with the minimum fields required to make a request.
newImageConfig ::
  ImageConfig
newImageConfig = ImageConfig {textRedactionMode = Core.Nothing}

instance Core.FromJSON ImageConfig where
  parseJSON =
    Core.withObject
      "ImageConfig"
      ( \o ->
          ImageConfig
            Core.<$> (o Core..:? "textRedactionMode")
      )

instance Core.ToJSON ImageConfig where
  toJSON ImageConfig {..} =
    Core.object
      ( Core.catMaybes
          [ ("textRedactionMode" Core..=)
              Core.<$> textRedactionMode
          ]
      )

-- | Imports data into the specified DICOM store. Returns an error if any of the files to import are not DICOM files. This API accepts duplicate DICOM instances by ignoring the newly-pushed instance. It does not overwrite.
--
-- /See:/ 'newImportDicomDataRequest' smart constructor.
newtype ImportDicomDataRequest = ImportDicomDataRequest
  { -- | Cloud Storage source data location and import configuration. The Cloud Healthcare Service Agent requires the @roles\/storage.objectViewer@ Cloud IAM roles on the Cloud Storage location.
    gcsSource :: (Core.Maybe GoogleCloudHealthcareV1DicomGcsSource)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ImportDicomDataRequest' with the minimum fields required to make a request.
newImportDicomDataRequest ::
  ImportDicomDataRequest
newImportDicomDataRequest = ImportDicomDataRequest {gcsSource = Core.Nothing}

instance Core.FromJSON ImportDicomDataRequest where
  parseJSON =
    Core.withObject
      "ImportDicomDataRequest"
      ( \o ->
          ImportDicomDataRequest
            Core.<$> (o Core..:? "gcsSource")
      )

instance Core.ToJSON ImportDicomDataRequest where
  toJSON ImportDicomDataRequest {..} =
    Core.object
      ( Core.catMaybes
          [("gcsSource" Core..=) Core.<$> gcsSource]
      )

-- | Returns additional information in regards to a completed DICOM store import.
--
-- /See:/ 'newImportDicomDataResponse' smart constructor.
data ImportDicomDataResponse = ImportDicomDataResponse
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ImportDicomDataResponse' with the minimum fields required to make a request.
newImportDicomDataResponse ::
  ImportDicomDataResponse
newImportDicomDataResponse = ImportDicomDataResponse

instance Core.FromJSON ImportDicomDataResponse where
  parseJSON =
    Core.withObject
      "ImportDicomDataResponse"
      (\o -> Core.pure ImportDicomDataResponse)

instance Core.ToJSON ImportDicomDataResponse where
  toJSON = Core.const Core.emptyObject

-- | Request to import messages.
--
-- /See:/ 'newImportMessagesRequest' smart constructor.
newtype ImportMessagesRequest = ImportMessagesRequest
  { -- | Cloud Storage source data location and import configuration. The Cloud Healthcare Service Agent requires the @roles\/storage.objectViewer@ Cloud IAM roles on the Cloud Storage location.
    gcsSource :: (Core.Maybe GcsSource)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ImportMessagesRequest' with the minimum fields required to make a request.
newImportMessagesRequest ::
  ImportMessagesRequest
newImportMessagesRequest = ImportMessagesRequest {gcsSource = Core.Nothing}

instance Core.FromJSON ImportMessagesRequest where
  parseJSON =
    Core.withObject
      "ImportMessagesRequest"
      ( \o ->
          ImportMessagesRequest
            Core.<$> (o Core..:? "gcsSource")
      )

instance Core.ToJSON ImportMessagesRequest where
  toJSON ImportMessagesRequest {..} =
    Core.object
      ( Core.catMaybes
          [("gcsSource" Core..=) Core.<$> gcsSource]
      )

-- | Final response of importing messages. This structure is included in the response to describe the detailed outcome. It is only included when the operation finishes successfully.
--
-- /See:/ 'newImportMessagesResponse' smart constructor.
data ImportMessagesResponse = ImportMessagesResponse
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ImportMessagesResponse' with the minimum fields required to make a request.
newImportMessagesResponse ::
  ImportMessagesResponse
newImportMessagesResponse = ImportMessagesResponse

instance Core.FromJSON ImportMessagesResponse where
  parseJSON =
    Core.withObject
      "ImportMessagesResponse"
      (\o -> Core.pure ImportMessagesResponse)

instance Core.ToJSON ImportMessagesResponse where
  toJSON = Core.const Core.emptyObject

-- | Request to import resources.
--
-- /See:/ 'newImportResourcesRequest' smart constructor.
data ImportResourcesRequest = ImportResourcesRequest
  { -- | The content structure in the source location. If not specified, the server treats the input source files as BUNDLE.
    contentStructure :: (Core.Maybe ImportResourcesRequest_ContentStructure),
    -- | Cloud Storage source data location and import configuration. The Healthcare Service Agent account requires the @roles\/storage.objectAdmin@ role on the Cloud Storage location. Each Cloud Storage object should be a text file that contains the format specified in ContentStructure.
    gcsSource :: (Core.Maybe GoogleCloudHealthcareV1FhirGcsSource)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ImportResourcesRequest' with the minimum fields required to make a request.
newImportResourcesRequest ::
  ImportResourcesRequest
newImportResourcesRequest =
  ImportResourcesRequest
    { contentStructure = Core.Nothing,
      gcsSource = Core.Nothing
    }

instance Core.FromJSON ImportResourcesRequest where
  parseJSON =
    Core.withObject
      "ImportResourcesRequest"
      ( \o ->
          ImportResourcesRequest
            Core.<$> (o Core..:? "contentStructure")
            Core.<*> (o Core..:? "gcsSource")
      )

instance Core.ToJSON ImportResourcesRequest where
  toJSON ImportResourcesRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("contentStructure" Core..=)
              Core.<$> contentStructure,
            ("gcsSource" Core..=) Core.<$> gcsSource
          ]
      )

-- | Final response of importing resources. This structure is included in the response to describe the detailed outcome after the operation finishes successfully.
--
-- /See:/ 'newImportResourcesResponse' smart constructor.
data ImportResourcesResponse = ImportResourcesResponse
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ImportResourcesResponse' with the minimum fields required to make a request.
newImportResourcesResponse ::
  ImportResourcesResponse
newImportResourcesResponse = ImportResourcesResponse

instance Core.FromJSON ImportResourcesResponse where
  parseJSON =
    Core.withObject
      "ImportResourcesResponse"
      (\o -> Core.pure ImportResourcesResponse)

instance Core.ToJSON ImportResourcesResponse where
  toJSON = Core.const Core.emptyObject

-- | A transformation to apply to text that is identified as a specific info_type.
--
-- /See:/ 'newInfoTypeTransformation' smart constructor.
data InfoTypeTransformation = InfoTypeTransformation
  { -- | Config for character mask.
    characterMaskConfig :: (Core.Maybe CharacterMaskConfig),
    -- | Config for crypto hash.
    cryptoHashConfig :: (Core.Maybe CryptoHashConfig),
    -- | Config for date shift.
    dateShiftConfig :: (Core.Maybe DateShiftConfig),
    -- | InfoTypes to apply this transformation to. If this is not specified, the transformation applies to any info_type.
    infoTypes :: (Core.Maybe [Core.Text]),
    -- | Config for text redaction.
    redactConfig :: (Core.Maybe RedactConfig),
    -- | Config for replace with InfoType.
    replaceWithInfoTypeConfig :: (Core.Maybe ReplaceWithInfoTypeConfig)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'InfoTypeTransformation' with the minimum fields required to make a request.
newInfoTypeTransformation ::
  InfoTypeTransformation
newInfoTypeTransformation =
  InfoTypeTransformation
    { characterMaskConfig = Core.Nothing,
      cryptoHashConfig = Core.Nothing,
      dateShiftConfig = Core.Nothing,
      infoTypes = Core.Nothing,
      redactConfig = Core.Nothing,
      replaceWithInfoTypeConfig = Core.Nothing
    }

instance Core.FromJSON InfoTypeTransformation where
  parseJSON =
    Core.withObject
      "InfoTypeTransformation"
      ( \o ->
          InfoTypeTransformation
            Core.<$> (o Core..:? "characterMaskConfig")
            Core.<*> (o Core..:? "cryptoHashConfig")
            Core.<*> (o Core..:? "dateShiftConfig")
            Core.<*> (o Core..:? "infoTypes")
            Core.<*> (o Core..:? "redactConfig")
            Core.<*> (o Core..:? "replaceWithInfoTypeConfig")
      )

instance Core.ToJSON InfoTypeTransformation where
  toJSON InfoTypeTransformation {..} =
    Core.object
      ( Core.catMaybes
          [ ("characterMaskConfig" Core..=)
              Core.<$> characterMaskConfig,
            ("cryptoHashConfig" Core..=)
              Core.<$> cryptoHashConfig,
            ("dateShiftConfig" Core..=) Core.<$> dateShiftConfig,
            ("infoTypes" Core..=) Core.<$> infoTypes,
            ("redactConfig" Core..=) Core.<$> redactConfig,
            ("replaceWithInfoTypeConfig" Core..=)
              Core.<$> replaceWithInfoTypeConfig
          ]
      )

-- | Ingests a message into the specified HL7v2 store.
--
-- /See:/ 'newIngestMessageRequest' smart constructor.
newtype IngestMessageRequest = IngestMessageRequest
  { -- | HL7v2 message to ingest.
    message :: (Core.Maybe Message)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'IngestMessageRequest' with the minimum fields required to make a request.
newIngestMessageRequest ::
  IngestMessageRequest
newIngestMessageRequest = IngestMessageRequest {message = Core.Nothing}

instance Core.FromJSON IngestMessageRequest where
  parseJSON =
    Core.withObject
      "IngestMessageRequest"
      ( \o ->
          IngestMessageRequest Core.<$> (o Core..:? "message")
      )

instance Core.ToJSON IngestMessageRequest where
  toJSON IngestMessageRequest {..} =
    Core.object
      ( Core.catMaybes
          [("message" Core..=) Core.<$> message]
      )

-- | Acknowledges that a message has been ingested into the specified HL7v2 store.
--
-- /See:/ 'newIngestMessageResponse' smart constructor.
data IngestMessageResponse = IngestMessageResponse
  { -- | HL7v2 ACK message.
    hl7Ack :: (Core.Maybe Core.Base64),
    -- | Created message resource.
    message :: (Core.Maybe Message)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'IngestMessageResponse' with the minimum fields required to make a request.
newIngestMessageResponse ::
  IngestMessageResponse
newIngestMessageResponse =
  IngestMessageResponse {hl7Ack = Core.Nothing, message = Core.Nothing}

instance Core.FromJSON IngestMessageResponse where
  parseJSON =
    Core.withObject
      "IngestMessageResponse"
      ( \o ->
          IngestMessageResponse
            Core.<$> (o Core..:? "hl7Ack")
            Core.<*> (o Core..:? "message")
      )

instance Core.ToJSON IngestMessageResponse where
  toJSON IngestMessageResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("hl7Ack" Core..=) Core.<$> hl7Ack,
            ("message" Core..=) Core.<$> message
          ]
      )

-- | EntityMentions can be linked to multiple entities using a LinkedEntity message lets us add other fields, e.g. confidence.
--
-- /See:/ 'newLinkedEntity' smart constructor.
newtype LinkedEntity = LinkedEntity
  { -- | entity_id is a concept unique identifier. These are prefixed by a string that identifies the entity coding system, followed by the unique identifier within that system. For example, \"UMLS\/C0000970\". This also supports ad hoc entities, which are formed by normalizing entity mention content.
    entityId :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'LinkedEntity' with the minimum fields required to make a request.
newLinkedEntity ::
  LinkedEntity
newLinkedEntity = LinkedEntity {entityId = Core.Nothing}

instance Core.FromJSON LinkedEntity where
  parseJSON =
    Core.withObject
      "LinkedEntity"
      ( \o ->
          LinkedEntity Core.<$> (o Core..:? "entityId")
      )

instance Core.ToJSON LinkedEntity where
  toJSON LinkedEntity {..} =
    Core.object
      ( Core.catMaybes
          [("entityId" Core..=) Core.<$> entityId]
      )

--
-- /See:/ 'newListAttributeDefinitionsResponse' smart constructor.
data ListAttributeDefinitionsResponse = ListAttributeDefinitionsResponse
  { -- | The returned Attribute definitions. The maximum number of attributes returned is determined by the value of page_size in the ListAttributeDefinitionsRequest.
    attributeDefinitions :: (Core.Maybe [AttributeDefinition]),
    -- | Token to retrieve the next page of results, or empty if there are no more results in the list.
    nextPageToken :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListAttributeDefinitionsResponse' with the minimum fields required to make a request.
newListAttributeDefinitionsResponse ::
  ListAttributeDefinitionsResponse
newListAttributeDefinitionsResponse =
  ListAttributeDefinitionsResponse
    { attributeDefinitions = Core.Nothing,
      nextPageToken = Core.Nothing
    }

instance
  Core.FromJSON
    ListAttributeDefinitionsResponse
  where
  parseJSON =
    Core.withObject
      "ListAttributeDefinitionsResponse"
      ( \o ->
          ListAttributeDefinitionsResponse
            Core.<$> (o Core..:? "attributeDefinitions")
            Core.<*> (o Core..:? "nextPageToken")
      )

instance Core.ToJSON ListAttributeDefinitionsResponse where
  toJSON ListAttributeDefinitionsResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("attributeDefinitions" Core..=)
              Core.<$> attributeDefinitions,
            ("nextPageToken" Core..=) Core.<$> nextPageToken
          ]
      )

--
-- /See:/ 'newListConsentArtifactsResponse' smart constructor.
data ListConsentArtifactsResponse = ListConsentArtifactsResponse
  { -- | The returned Consent artifacts. The maximum number of artifacts returned is determined by the value of page_size in the ListConsentArtifactsRequest.
    consentArtifacts :: (Core.Maybe [ConsentArtifact]),
    -- | Token to retrieve the next page of results, or empty if there are no more results in the list.
    nextPageToken :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListConsentArtifactsResponse' with the minimum fields required to make a request.
newListConsentArtifactsResponse ::
  ListConsentArtifactsResponse
newListConsentArtifactsResponse =
  ListConsentArtifactsResponse
    { consentArtifacts = Core.Nothing,
      nextPageToken = Core.Nothing
    }

instance Core.FromJSON ListConsentArtifactsResponse where
  parseJSON =
    Core.withObject
      "ListConsentArtifactsResponse"
      ( \o ->
          ListConsentArtifactsResponse
            Core.<$> (o Core..:? "consentArtifacts")
            Core.<*> (o Core..:? "nextPageToken")
      )

instance Core.ToJSON ListConsentArtifactsResponse where
  toJSON ListConsentArtifactsResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("consentArtifacts" Core..=)
              Core.<$> consentArtifacts,
            ("nextPageToken" Core..=) Core.<$> nextPageToken
          ]
      )

--
-- /See:/ 'newListConsentRevisionsResponse' smart constructor.
data ListConsentRevisionsResponse = ListConsentRevisionsResponse
  { -- | The returned Consent revisions. The maximum number of revisions returned is determined by the value of @page_size@ in the ListConsentRevisionsRequest.
    consents :: (Core.Maybe [Consent]),
    -- | Token to retrieve the next page of results, or empty if there are no more results in the list.
    nextPageToken :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListConsentRevisionsResponse' with the minimum fields required to make a request.
newListConsentRevisionsResponse ::
  ListConsentRevisionsResponse
newListConsentRevisionsResponse =
  ListConsentRevisionsResponse
    { consents = Core.Nothing,
      nextPageToken = Core.Nothing
    }

instance Core.FromJSON ListConsentRevisionsResponse where
  parseJSON =
    Core.withObject
      "ListConsentRevisionsResponse"
      ( \o ->
          ListConsentRevisionsResponse
            Core.<$> (o Core..:? "consents")
            Core.<*> (o Core..:? "nextPageToken")
      )

instance Core.ToJSON ListConsentRevisionsResponse where
  toJSON ListConsentRevisionsResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("consents" Core..=) Core.<$> consents,
            ("nextPageToken" Core..=) Core.<$> nextPageToken
          ]
      )

--
-- /See:/ 'newListConsentStoresResponse' smart constructor.
data ListConsentStoresResponse = ListConsentStoresResponse
  { -- | The returned consent stores. The maximum number of stores returned is determined by the value of page_size in the ListConsentStoresRequest.
    consentStores :: (Core.Maybe [ConsentStore]),
    -- | Token to retrieve the next page of results, or empty if there are no more results in the list.
    nextPageToken :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListConsentStoresResponse' with the minimum fields required to make a request.
newListConsentStoresResponse ::
  ListConsentStoresResponse
newListConsentStoresResponse =
  ListConsentStoresResponse
    { consentStores = Core.Nothing,
      nextPageToken = Core.Nothing
    }

instance Core.FromJSON ListConsentStoresResponse where
  parseJSON =
    Core.withObject
      "ListConsentStoresResponse"
      ( \o ->
          ListConsentStoresResponse
            Core.<$> (o Core..:? "consentStores")
            Core.<*> (o Core..:? "nextPageToken")
      )

instance Core.ToJSON ListConsentStoresResponse where
  toJSON ListConsentStoresResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("consentStores" Core..=) Core.<$> consentStores,
            ("nextPageToken" Core..=) Core.<$> nextPageToken
          ]
      )

--
-- /See:/ 'newListConsentsResponse' smart constructor.
data ListConsentsResponse = ListConsentsResponse
  { -- | The returned Consents. The maximum number of Consents returned is determined by the value of page_size in the ListConsentsRequest.
    consents :: (Core.Maybe [Consent]),
    -- | Token to retrieve the next page of results, or empty if there are no more results in the list.
    nextPageToken :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListConsentsResponse' with the minimum fields required to make a request.
newListConsentsResponse ::
  ListConsentsResponse
newListConsentsResponse =
  ListConsentsResponse {consents = Core.Nothing, nextPageToken = Core.Nothing}

instance Core.FromJSON ListConsentsResponse where
  parseJSON =
    Core.withObject
      "ListConsentsResponse"
      ( \o ->
          ListConsentsResponse
            Core.<$> (o Core..:? "consents")
            Core.<*> (o Core..:? "nextPageToken")
      )

instance Core.ToJSON ListConsentsResponse where
  toJSON ListConsentsResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("consents" Core..=) Core.<$> consents,
            ("nextPageToken" Core..=) Core.<$> nextPageToken
          ]
      )

-- | Lists the available datasets.
--
-- /See:/ 'newListDatasetsResponse' smart constructor.
data ListDatasetsResponse = ListDatasetsResponse
  { -- | The first page of datasets.
    datasets :: (Core.Maybe [Dataset]),
    -- | Token to retrieve the next page of results, or empty if there are no more results in the list.
    nextPageToken :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListDatasetsResponse' with the minimum fields required to make a request.
newListDatasetsResponse ::
  ListDatasetsResponse
newListDatasetsResponse =
  ListDatasetsResponse {datasets = Core.Nothing, nextPageToken = Core.Nothing}

instance Core.FromJSON ListDatasetsResponse where
  parseJSON =
    Core.withObject
      "ListDatasetsResponse"
      ( \o ->
          ListDatasetsResponse
            Core.<$> (o Core..:? "datasets")
            Core.<*> (o Core..:? "nextPageToken")
      )

instance Core.ToJSON ListDatasetsResponse where
  toJSON ListDatasetsResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("datasets" Core..=) Core.<$> datasets,
            ("nextPageToken" Core..=) Core.<$> nextPageToken
          ]
      )

-- | Lists the DICOM stores in the given dataset.
--
-- /See:/ 'newListDicomStoresResponse' smart constructor.
data ListDicomStoresResponse = ListDicomStoresResponse
  { -- | The returned DICOM stores. Won\'t be more DICOM stores than the value of page_size in the request.
    dicomStores :: (Core.Maybe [DicomStore]),
    -- | Token to retrieve the next page of results or empty if there are no more results in the list.
    nextPageToken :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListDicomStoresResponse' with the minimum fields required to make a request.
newListDicomStoresResponse ::
  ListDicomStoresResponse
newListDicomStoresResponse =
  ListDicomStoresResponse
    { dicomStores = Core.Nothing,
      nextPageToken = Core.Nothing
    }

instance Core.FromJSON ListDicomStoresResponse where
  parseJSON =
    Core.withObject
      "ListDicomStoresResponse"
      ( \o ->
          ListDicomStoresResponse
            Core.<$> (o Core..:? "dicomStores")
            Core.<*> (o Core..:? "nextPageToken")
      )

instance Core.ToJSON ListDicomStoresResponse where
  toJSON ListDicomStoresResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("dicomStores" Core..=) Core.<$> dicomStores,
            ("nextPageToken" Core..=) Core.<$> nextPageToken
          ]
      )

-- | Lists the FHIR stores in the given dataset.
--
-- /See:/ 'newListFhirStoresResponse' smart constructor.
data ListFhirStoresResponse = ListFhirStoresResponse
  { -- | The returned FHIR stores. Won\'t be more FHIR stores than the value of page_size in the request.
    fhirStores :: (Core.Maybe [FhirStore]),
    -- | Token to retrieve the next page of results or empty if there are no more results in the list.
    nextPageToken :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListFhirStoresResponse' with the minimum fields required to make a request.
newListFhirStoresResponse ::
  ListFhirStoresResponse
newListFhirStoresResponse =
  ListFhirStoresResponse
    { fhirStores = Core.Nothing,
      nextPageToken = Core.Nothing
    }

instance Core.FromJSON ListFhirStoresResponse where
  parseJSON =
    Core.withObject
      "ListFhirStoresResponse"
      ( \o ->
          ListFhirStoresResponse
            Core.<$> (o Core..:? "fhirStores")
            Core.<*> (o Core..:? "nextPageToken")
      )

instance Core.ToJSON ListFhirStoresResponse where
  toJSON ListFhirStoresResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("fhirStores" Core..=) Core.<$> fhirStores,
            ("nextPageToken" Core..=) Core.<$> nextPageToken
          ]
      )

-- | Lists the HL7v2 stores in the given dataset.
--
-- /See:/ 'newListHl7V2StoresResponse' smart constructor.
data ListHl7V2StoresResponse = ListHl7V2StoresResponse
  { -- | The returned HL7v2 stores. Won\'t be more HL7v2 stores than the value of page_size in the request.
    hl7V2Stores :: (Core.Maybe [Hl7V2Store]),
    -- | Token to retrieve the next page of results or empty if there are no more results in the list.
    nextPageToken :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListHl7V2StoresResponse' with the minimum fields required to make a request.
newListHl7V2StoresResponse ::
  ListHl7V2StoresResponse
newListHl7V2StoresResponse =
  ListHl7V2StoresResponse
    { hl7V2Stores = Core.Nothing,
      nextPageToken = Core.Nothing
    }

instance Core.FromJSON ListHl7V2StoresResponse where
  parseJSON =
    Core.withObject
      "ListHl7V2StoresResponse"
      ( \o ->
          ListHl7V2StoresResponse
            Core.<$> (o Core..:? "hl7V2Stores")
            Core.<*> (o Core..:? "nextPageToken")
      )

instance Core.ToJSON ListHl7V2StoresResponse where
  toJSON ListHl7V2StoresResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("hl7V2Stores" Core..=) Core.<$> hl7V2Stores,
            ("nextPageToken" Core..=) Core.<$> nextPageToken
          ]
      )

-- | The response message for Locations.ListLocations.
--
-- /See:/ 'newListLocationsResponse' smart constructor.
data ListLocationsResponse = ListLocationsResponse
  { -- | A list of locations that matches the specified filter in the request.
    locations :: (Core.Maybe [Location]),
    -- | The standard List next-page token.
    nextPageToken :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListLocationsResponse' with the minimum fields required to make a request.
newListLocationsResponse ::
  ListLocationsResponse
newListLocationsResponse =
  ListLocationsResponse {locations = Core.Nothing, nextPageToken = Core.Nothing}

instance Core.FromJSON ListLocationsResponse where
  parseJSON =
    Core.withObject
      "ListLocationsResponse"
      ( \o ->
          ListLocationsResponse
            Core.<$> (o Core..:? "locations")
            Core.<*> (o Core..:? "nextPageToken")
      )

instance Core.ToJSON ListLocationsResponse where
  toJSON ListLocationsResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("locations" Core..=) Core.<$> locations,
            ("nextPageToken" Core..=) Core.<$> nextPageToken
          ]
      )

-- | Lists the messages in the specified HL7v2 store.
--
-- /See:/ 'newListMessagesResponse' smart constructor.
data ListMessagesResponse = ListMessagesResponse
  { -- | The returned Messages. Won\'t be more Messages than the value of page_size in the request. See view for populated fields.
    hl7V2Messages :: (Core.Maybe [Message]),
    -- | Token to retrieve the next page of results or empty if there are no more results in the list.
    nextPageToken :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListMessagesResponse' with the minimum fields required to make a request.
newListMessagesResponse ::
  ListMessagesResponse
newListMessagesResponse =
  ListMessagesResponse
    { hl7V2Messages = Core.Nothing,
      nextPageToken = Core.Nothing
    }

instance Core.FromJSON ListMessagesResponse where
  parseJSON =
    Core.withObject
      "ListMessagesResponse"
      ( \o ->
          ListMessagesResponse
            Core.<$> (o Core..:? "hl7V2Messages")
            Core.<*> (o Core..:? "nextPageToken")
      )

instance Core.ToJSON ListMessagesResponse where
  toJSON ListMessagesResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("hl7V2Messages" Core..=) Core.<$> hl7V2Messages,
            ("nextPageToken" Core..=) Core.<$> nextPageToken
          ]
      )

-- | The response message for Operations.ListOperations.
--
-- /See:/ 'newListOperationsResponse' smart constructor.
data ListOperationsResponse = ListOperationsResponse
  { -- | The standard List next-page token.
    nextPageToken :: (Core.Maybe Core.Text),
    -- | A list of operations that matches the specified filter in the request.
    operations :: (Core.Maybe [Operation])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListOperationsResponse' with the minimum fields required to make a request.
newListOperationsResponse ::
  ListOperationsResponse
newListOperationsResponse =
  ListOperationsResponse
    { nextPageToken = Core.Nothing,
      operations = Core.Nothing
    }

instance Core.FromJSON ListOperationsResponse where
  parseJSON =
    Core.withObject
      "ListOperationsResponse"
      ( \o ->
          ListOperationsResponse
            Core.<$> (o Core..:? "nextPageToken")
            Core.<*> (o Core..:? "operations")
      )

instance Core.ToJSON ListOperationsResponse where
  toJSON ListOperationsResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("nextPageToken" Core..=) Core.<$> nextPageToken,
            ("operations" Core..=) Core.<$> operations
          ]
      )

--
-- /See:/ 'newListUserDataMappingsResponse' smart constructor.
data ListUserDataMappingsResponse = ListUserDataMappingsResponse
  { -- | Token to retrieve the next page of results, or empty if there are no more results in the list.
    nextPageToken :: (Core.Maybe Core.Text),
    -- | The returned User data mappings. The maximum number of User data mappings returned is determined by the value of page_size in the ListUserDataMappingsRequest.
    userDataMappings :: (Core.Maybe [UserDataMapping])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListUserDataMappingsResponse' with the minimum fields required to make a request.
newListUserDataMappingsResponse ::
  ListUserDataMappingsResponse
newListUserDataMappingsResponse =
  ListUserDataMappingsResponse
    { nextPageToken = Core.Nothing,
      userDataMappings = Core.Nothing
    }

instance Core.FromJSON ListUserDataMappingsResponse where
  parseJSON =
    Core.withObject
      "ListUserDataMappingsResponse"
      ( \o ->
          ListUserDataMappingsResponse
            Core.<$> (o Core..:? "nextPageToken")
            Core.<*> (o Core..:? "userDataMappings")
      )

instance Core.ToJSON ListUserDataMappingsResponse where
  toJSON ListUserDataMappingsResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("nextPageToken" Core..=) Core.<$> nextPageToken,
            ("userDataMappings" Core..=)
              Core.<$> userDataMappings
          ]
      )

-- | A resource that represents Google Cloud Platform location.
--
-- /See:/ 'newLocation' smart constructor.
data Location = Location
  { -- | The friendly name for this location, typically a nearby city name. For example, \"Tokyo\".
    displayName :: (Core.Maybe Core.Text),
    -- | Cross-service attributes for the location. For example {\"cloud.googleapis.com\/region\": \"us-east1\"}
    labels :: (Core.Maybe Location_Labels),
    -- | The canonical id for this location. For example: @\"us-east1\"@.
    locationId :: (Core.Maybe Core.Text),
    -- | Service-specific metadata. For example the available capacity at the given location.
    metadata :: (Core.Maybe Location_Metadata),
    -- | Resource name for the location, which may vary between implementations. For example: @\"projects\/example-project\/locations\/us-east1\"@
    name :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Location' with the minimum fields required to make a request.
newLocation ::
  Location
newLocation =
  Location
    { displayName = Core.Nothing,
      labels = Core.Nothing,
      locationId = Core.Nothing,
      metadata = Core.Nothing,
      name = Core.Nothing
    }

instance Core.FromJSON Location where
  parseJSON =
    Core.withObject
      "Location"
      ( \o ->
          Location
            Core.<$> (o Core..:? "displayName")
            Core.<*> (o Core..:? "labels")
            Core.<*> (o Core..:? "locationId")
            Core.<*> (o Core..:? "metadata")
            Core.<*> (o Core..:? "name")
      )

instance Core.ToJSON Location where
  toJSON Location {..} =
    Core.object
      ( Core.catMaybes
          [ ("displayName" Core..=) Core.<$> displayName,
            ("labels" Core..=) Core.<$> labels,
            ("locationId" Core..=) Core.<$> locationId,
            ("metadata" Core..=) Core.<$> metadata,
            ("name" Core..=) Core.<$> name
          ]
      )

-- | Cross-service attributes for the location. For example {\"cloud.googleapis.com\/region\": \"us-east1\"}
--
-- /See:/ 'newLocation_Labels' smart constructor.
newtype Location_Labels = Location_Labels
  { -- |
    additional :: (Core.HashMap Core.Text Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Location_Labels' with the minimum fields required to make a request.
newLocation_Labels ::
  -- |  See 'additional'.
  Core.HashMap Core.Text Core.Text ->
  Location_Labels
newLocation_Labels additional = Location_Labels {additional = additional}

instance Core.FromJSON Location_Labels where
  parseJSON =
    Core.withObject
      "Location_Labels"
      ( \o ->
          Location_Labels Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON Location_Labels where
  toJSON Location_Labels {..} = Core.toJSON additional

-- | Service-specific metadata. For example the available capacity at the given location.
--
-- /See:/ 'newLocation_Metadata' smart constructor.
newtype Location_Metadata = Location_Metadata
  { -- | Properties of the object. Contains field \@type with type URL.
    additional :: (Core.HashMap Core.Text Core.Value)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Location_Metadata' with the minimum fields required to make a request.
newLocation_Metadata ::
  -- |  Properties of the object. Contains field \@type with type URL. See 'additional'.
  Core.HashMap Core.Text Core.Value ->
  Location_Metadata
newLocation_Metadata additional = Location_Metadata {additional = additional}

instance Core.FromJSON Location_Metadata where
  parseJSON =
    Core.withObject
      "Location_Metadata"
      ( \o ->
          Location_Metadata Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON Location_Metadata where
  toJSON Location_Metadata {..} = Core.toJSON additional

-- | A complete HL7v2 message. See [Introduction to HL7 Standards] (https:\/\/www.hl7.org\/implement\/standards\/index.cfm?ref=common) for details on the standard.
--
-- /See:/ 'newMessage' smart constructor.
data Message = Message
  { -- | Output only. The datetime when the message was created. Set by the server.
    createTime :: (Core.Maybe Core.DateTime),
    -- | Raw message bytes.
    data' :: (Core.Maybe Core.Base64),
    -- | User-supplied key-value pairs used to organize HL7v2 stores. Label keys must be between 1 and 63 characters long, have a UTF-8 encoding of maximum 128 bytes, and must conform to the following PCRE regular expression: \\p{Ll}\\p{Lo}{0,62} Label values are optional, must be between 1 and 63 characters long, have a UTF-8 encoding of maximum 128 bytes, and must conform to the following PCRE regular expression: [\\p{Ll}\\p{Lo}\\p{N}_-]{0,63} No more than 64 labels can be associated with a given store.
    labels :: (Core.Maybe Message_Labels),
    -- | The message type for this message. MSH-9.1.
    messageType :: (Core.Maybe Core.Text),
    -- | Resource name of the Message, of the form @projects\/{project_id}\/datasets\/{dataset_id}\/hl7V2Stores\/{hl7_v2_store_id}\/messages\/{message_id}@. Assigned by the server.
    name :: (Core.Maybe Core.Text),
    -- | Output only. The parsed version of the raw message data.
    parsedData :: (Core.Maybe ParsedData),
    -- | All patient IDs listed in the PID-2, PID-3, and PID-4 segments of this message.
    patientIds :: (Core.Maybe [PatientId]),
    -- | The parsed version of the raw message data schematized according to this store\'s schemas and type definitions.
    schematizedData :: (Core.Maybe SchematizedData),
    -- | The hospital that this message came from. MSH-4.
    sendFacility :: (Core.Maybe Core.Text),
    -- | The datetime the sending application sent this message. MSH-7.
    sendTime :: (Core.Maybe Core.DateTime)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Message' with the minimum fields required to make a request.
newMessage ::
  Message
newMessage =
  Message
    { createTime = Core.Nothing,
      data' = Core.Nothing,
      labels = Core.Nothing,
      messageType = Core.Nothing,
      name = Core.Nothing,
      parsedData = Core.Nothing,
      patientIds = Core.Nothing,
      schematizedData = Core.Nothing,
      sendFacility = Core.Nothing,
      sendTime = Core.Nothing
    }

instance Core.FromJSON Message where
  parseJSON =
    Core.withObject
      "Message"
      ( \o ->
          Message
            Core.<$> (o Core..:? "createTime")
            Core.<*> (o Core..:? "data")
            Core.<*> (o Core..:? "labels")
            Core.<*> (o Core..:? "messageType")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "parsedData")
            Core.<*> (o Core..:? "patientIds")
            Core.<*> (o Core..:? "schematizedData")
            Core.<*> (o Core..:? "sendFacility")
            Core.<*> (o Core..:? "sendTime")
      )

instance Core.ToJSON Message where
  toJSON Message {..} =
    Core.object
      ( Core.catMaybes
          [ ("createTime" Core..=) Core.<$> createTime,
            ("data" Core..=) Core.<$> data',
            ("labels" Core..=) Core.<$> labels,
            ("messageType" Core..=) Core.<$> messageType,
            ("name" Core..=) Core.<$> name,
            ("parsedData" Core..=) Core.<$> parsedData,
            ("patientIds" Core..=) Core.<$> patientIds,
            ("schematizedData" Core..=) Core.<$> schematizedData,
            ("sendFacility" Core..=) Core.<$> sendFacility,
            ("sendTime" Core..=) Core.<$> sendTime
          ]
      )

-- | User-supplied key-value pairs used to organize HL7v2 stores. Label keys must be between 1 and 63 characters long, have a UTF-8 encoding of maximum 128 bytes, and must conform to the following PCRE regular expression: \\p{Ll}\\p{Lo}{0,62} Label values are optional, must be between 1 and 63 characters long, have a UTF-8 encoding of maximum 128 bytes, and must conform to the following PCRE regular expression: [\\p{Ll}\\p{Lo}\\p{N}_-]{0,63} No more than 64 labels can be associated with a given store.
--
-- /See:/ 'newMessage_Labels' smart constructor.
newtype Message_Labels = Message_Labels
  { -- |
    additional :: (Core.HashMap Core.Text Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Message_Labels' with the minimum fields required to make a request.
newMessage_Labels ::
  -- |  See 'additional'.
  Core.HashMap Core.Text Core.Text ->
  Message_Labels
newMessage_Labels additional = Message_Labels {additional = additional}

instance Core.FromJSON Message_Labels where
  parseJSON =
    Core.withObject
      "Message_Labels"
      ( \o ->
          Message_Labels Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON Message_Labels where
  toJSON Message_Labels {..} = Core.toJSON additional

-- | Specifies where to send notifications upon changes to a data store.
--
-- /See:/ 'newNotificationConfig' smart constructor.
newtype NotificationConfig = NotificationConfig
  { -- | The <https://cloud.google.com/pubsub/docs/ Pub\/Sub> topic that notifications of changes are published on. Supplied by the client. PubsubMessage.Data contains the resource name. PubsubMessage.MessageId is the ID of this message. It is guaranteed to be unique within the topic. PubsubMessage.PublishTime is the time at which the message was published. Notifications are only sent if the topic is non-empty. <https://cloud.google.com/pubsub/docs/overview#names Topic names> must be scoped to a project. Cloud Healthcare API service account must have publisher permissions on the given Pub\/Sub topic. Not having adequate permissions causes the calls that send notifications to fail. If a notification can\'t be published to Pub\/Sub, errors are logged to Cloud Logging (see <https://cloud.google.com/healthcare/docs/how-tos/logging Viewing error logs in Cloud Logging>). If the number of errors exceeds a certain rate, some aren\'t submitted. Note that not all operations trigger notifications, see
    -- <https://cloud.google.com/healthcare/docs/how-tos/pubsub Configuring Pub\/Sub notifications> for specific details.
    pubsubTopic :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'NotificationConfig' with the minimum fields required to make a request.
newNotificationConfig ::
  NotificationConfig
newNotificationConfig = NotificationConfig {pubsubTopic = Core.Nothing}

instance Core.FromJSON NotificationConfig where
  parseJSON =
    Core.withObject
      "NotificationConfig"
      ( \o ->
          NotificationConfig
            Core.<$> (o Core..:? "pubsubTopic")
      )

instance Core.ToJSON NotificationConfig where
  toJSON NotificationConfig {..} =
    Core.object
      ( Core.catMaybes
          [("pubsubTopic" Core..=) Core.<$> pubsubTopic]
      )

-- | This resource represents a long-running operation that is the result of a network API call.
--
-- /See:/ 'newOperation' smart constructor.
data Operation = Operation
  { -- | If the value is @false@, it means the operation is still in progress. If @true@, the operation is completed, and either @error@ or @response@ is available.
    done :: (Core.Maybe Core.Bool),
    -- | The error result of the operation in case of failure or cancellation.
    error :: (Core.Maybe Status),
    -- | Service-specific metadata associated with the operation. It typically contains progress information and common metadata such as create time. Some services might not provide such metadata. Any method that returns a long-running operation should document the metadata type, if any.
    metadata :: (Core.Maybe Operation_Metadata),
    -- | The server-assigned name, which is only unique within the same service that originally returns it. If you use the default HTTP mapping, the @name@ should be a resource name ending with @operations\/{unique_id}@.
    name :: (Core.Maybe Core.Text),
    -- | The normal response of the operation in case of success. If the original method returns no data on success, such as @Delete@, the response is @google.protobuf.Empty@. If the original method is standard @Get@\/@Create@\/@Update@, the response should be the resource. For other methods, the response should have the type @XxxResponse@, where @Xxx@ is the original method name. For example, if the original method name is @TakeSnapshot()@, the inferred response type is @TakeSnapshotResponse@.
    response :: (Core.Maybe Operation_Response)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Operation' with the minimum fields required to make a request.
newOperation ::
  Operation
newOperation =
  Operation
    { done = Core.Nothing,
      error = Core.Nothing,
      metadata = Core.Nothing,
      name = Core.Nothing,
      response = Core.Nothing
    }

instance Core.FromJSON Operation where
  parseJSON =
    Core.withObject
      "Operation"
      ( \o ->
          Operation
            Core.<$> (o Core..:? "done")
            Core.<*> (o Core..:? "error")
            Core.<*> (o Core..:? "metadata")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "response")
      )

instance Core.ToJSON Operation where
  toJSON Operation {..} =
    Core.object
      ( Core.catMaybes
          [ ("done" Core..=) Core.<$> done,
            ("error" Core..=) Core.<$> error,
            ("metadata" Core..=) Core.<$> metadata,
            ("name" Core..=) Core.<$> name,
            ("response" Core..=) Core.<$> response
          ]
      )

-- | Service-specific metadata associated with the operation. It typically contains progress information and common metadata such as create time. Some services might not provide such metadata. Any method that returns a long-running operation should document the metadata type, if any.
--
-- /See:/ 'newOperation_Metadata' smart constructor.
newtype Operation_Metadata = Operation_Metadata
  { -- | Properties of the object. Contains field \@type with type URL.
    additional :: (Core.HashMap Core.Text Core.Value)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Operation_Metadata' with the minimum fields required to make a request.
newOperation_Metadata ::
  -- |  Properties of the object. Contains field \@type with type URL. See 'additional'.
  Core.HashMap Core.Text Core.Value ->
  Operation_Metadata
newOperation_Metadata additional = Operation_Metadata {additional = additional}

instance Core.FromJSON Operation_Metadata where
  parseJSON =
    Core.withObject
      "Operation_Metadata"
      ( \o ->
          Operation_Metadata Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON Operation_Metadata where
  toJSON Operation_Metadata {..} =
    Core.toJSON additional

-- | The normal response of the operation in case of success. If the original method returns no data on success, such as @Delete@, the response is @google.protobuf.Empty@. If the original method is standard @Get@\/@Create@\/@Update@, the response should be the resource. For other methods, the response should have the type @XxxResponse@, where @Xxx@ is the original method name. For example, if the original method name is @TakeSnapshot()@, the inferred response type is @TakeSnapshotResponse@.
--
-- /See:/ 'newOperation_Response' smart constructor.
newtype Operation_Response = Operation_Response
  { -- | Properties of the object. Contains field \@type with type URL.
    additional :: (Core.HashMap Core.Text Core.Value)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Operation_Response' with the minimum fields required to make a request.
newOperation_Response ::
  -- |  Properties of the object. Contains field \@type with type URL. See 'additional'.
  Core.HashMap Core.Text Core.Value ->
  Operation_Response
newOperation_Response additional = Operation_Response {additional = additional}

instance Core.FromJSON Operation_Response where
  parseJSON =
    Core.withObject
      "Operation_Response"
      ( \o ->
          Operation_Response Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON Operation_Response where
  toJSON Operation_Response {..} =
    Core.toJSON additional

-- | OperationMetadata provides information about the operation execution. Returned in the long-running operation\'s metadata field.
--
-- /See:/ 'newOperationMetadata' smart constructor.
data OperationMetadata = OperationMetadata
  { -- | The name of the API method that initiated the operation.
    apiMethodName :: (Core.Maybe Core.Text),
    -- | Specifies if cancellation was requested for the operation.
    cancelRequested :: (Core.Maybe Core.Bool),
    -- |
    counter :: (Core.Maybe ProgressCounter),
    -- | The time at which the operation was created by the API.
    createTime :: (Core.Maybe Core.DateTime),
    -- | The time at which execution was completed.
    endTime :: (Core.Maybe Core.DateTime),
    -- | A link to audit and error logs in the log viewer. Error logs are generated only by some operations, listed at <https://cloud.google.com/healthcare/docs/how-tos/logging Viewing error logs in Cloud Logging>.
    logsUrl :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'OperationMetadata' with the minimum fields required to make a request.
newOperationMetadata ::
  OperationMetadata
newOperationMetadata =
  OperationMetadata
    { apiMethodName = Core.Nothing,
      cancelRequested = Core.Nothing,
      counter = Core.Nothing,
      createTime = Core.Nothing,
      endTime = Core.Nothing,
      logsUrl = Core.Nothing
    }

instance Core.FromJSON OperationMetadata where
  parseJSON =
    Core.withObject
      "OperationMetadata"
      ( \o ->
          OperationMetadata
            Core.<$> (o Core..:? "apiMethodName")
            Core.<*> (o Core..:? "cancelRequested")
            Core.<*> (o Core..:? "counter")
            Core.<*> (o Core..:? "createTime")
            Core.<*> (o Core..:? "endTime")
            Core.<*> (o Core..:? "logsUrl")
      )

instance Core.ToJSON OperationMetadata where
  toJSON OperationMetadata {..} =
    Core.object
      ( Core.catMaybes
          [ ("apiMethodName" Core..=) Core.<$> apiMethodName,
            ("cancelRequested" Core..=) Core.<$> cancelRequested,
            ("counter" Core..=) Core.<$> counter,
            ("createTime" Core..=) Core.<$> createTime,
            ("endTime" Core..=) Core.<$> endTime,
            ("logsUrl" Core..=) Core.<$> logsUrl
          ]
      )

-- | The content of a HL7v2 message in a structured format.
--
-- /See:/ 'newParsedData' smart constructor.
newtype ParsedData = ParsedData
  { -- |
    segments :: (Core.Maybe [Segment])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ParsedData' with the minimum fields required to make a request.
newParsedData ::
  ParsedData
newParsedData = ParsedData {segments = Core.Nothing}

instance Core.FromJSON ParsedData where
  parseJSON =
    Core.withObject
      "ParsedData"
      (\o -> ParsedData Core.<$> (o Core..:? "segments"))

instance Core.ToJSON ParsedData where
  toJSON ParsedData {..} =
    Core.object
      ( Core.catMaybes
          [("segments" Core..=) Core.<$> segments]
      )

-- | The configuration for the parser. It determines how the server parses the messages.
--
-- /See:/ 'newParserConfig' smart constructor.
data ParserConfig = ParserConfig
  { -- | Determines whether messages with no header are allowed.
    allowNullHeader :: (Core.Maybe Core.Bool),
    -- | Schemas used to parse messages in this store, if schematized parsing is desired.
    schema :: (Core.Maybe SchemaPackage),
    -- | Byte(s) to use as the segment terminator. If this is unset, \'\\r\' is used as segment terminator, matching the HL7 version 2 specification.
    segmentTerminator :: (Core.Maybe Core.Base64),
    -- | Immutable. Determines the version of both the default parser to be used when @schema@ is not given, as well as the schematized parser used when @schema@ is specified. This field is immutable after HL7v2 store creation.
    version :: (Core.Maybe ParserConfig_Version)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ParserConfig' with the minimum fields required to make a request.
newParserConfig ::
  ParserConfig
newParserConfig =
  ParserConfig
    { allowNullHeader = Core.Nothing,
      schema = Core.Nothing,
      segmentTerminator = Core.Nothing,
      version = Core.Nothing
    }

instance Core.FromJSON ParserConfig where
  parseJSON =
    Core.withObject
      "ParserConfig"
      ( \o ->
          ParserConfig
            Core.<$> (o Core..:? "allowNullHeader")
            Core.<*> (o Core..:? "schema")
            Core.<*> (o Core..:? "segmentTerminator")
            Core.<*> (o Core..:? "version")
      )

instance Core.ToJSON ParserConfig where
  toJSON ParserConfig {..} =
    Core.object
      ( Core.catMaybes
          [ ("allowNullHeader" Core..=)
              Core.<$> allowNullHeader,
            ("schema" Core..=) Core.<$> schema,
            ("segmentTerminator" Core..=)
              Core.<$> segmentTerminator,
            ("version" Core..=) Core.<$> version
          ]
      )

-- | A patient identifier and associated type.
--
-- /See:/ 'newPatientId' smart constructor.
data PatientId = PatientId
  { -- | ID type. For example, MRN or NHS.
    type' :: (Core.Maybe Core.Text),
    -- | The patient\'s unique identifier.
    value :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PatientId' with the minimum fields required to make a request.
newPatientId ::
  PatientId
newPatientId = PatientId {type' = Core.Nothing, value = Core.Nothing}

instance Core.FromJSON PatientId where
  parseJSON =
    Core.withObject
      "PatientId"
      ( \o ->
          PatientId
            Core.<$> (o Core..:? "type") Core.<*> (o Core..:? "value")
      )

instance Core.ToJSON PatientId where
  toJSON PatientId {..} =
    Core.object
      ( Core.catMaybes
          [ ("type" Core..=) Core.<$> type',
            ("value" Core..=) Core.<$> value
          ]
      )

-- | An Identity and Access Management (IAM) policy, which specifies access controls for Google Cloud resources. A @Policy@ is a collection of @bindings@. A @binding@ binds one or more @members@, or principals, to a single @role@. Principals can be user accounts, service accounts, Google groups, and domains (such as G Suite). A @role@ is a named list of permissions; each @role@ can be an IAM predefined role or a user-created custom role. For some types of Google Cloud resources, a @binding@ can also specify a @condition@, which is a logical expression that allows access to a resource only if the expression evaluates to @true@. A condition can add constraints based on attributes of the request, the resource, or both. To learn which resources support conditions in their IAM policies, see the <https://cloud.google.com/iam/help/conditions/resource-policies IAM documentation>. __JSON example:__ { \"bindings\": [ { \"role\": \"roles\/resourcemanager.organizationAdmin\", \"members\": [ \"user:mike\@example.com\",
-- \"group:admins\@example.com\", \"domain:google.com\", \"serviceAccount:my-project-id\@appspot.gserviceaccount.com\" ] }, { \"role\": \"roles\/resourcemanager.organizationViewer\", \"members\": [ \"user:eve\@example.com\" ], \"condition\": { \"title\": \"expirable access\", \"description\": \"Does not grant access after Sep 2020\", \"expression\": \"request.time \< timestamp(\'2020-10-01T00:00:00.000Z\')\", } } ], \"etag\": \"BwWWja0YfJA=\", \"version\": 3 } __YAML example:__ bindings: - members: - user:mike\@example.com - group:admins\@example.com - domain:google.com - serviceAccount:my-project-id\@appspot.gserviceaccount.com role: roles\/resourcemanager.organizationAdmin - members: - user:eve\@example.com role: roles\/resourcemanager.organizationViewer condition: title: expirable access description: Does not grant access after Sep 2020 expression: request.time \< timestamp(\'2020-10-01T00:00:00.000Z\') etag: BwWWja0YfJA= version: 3 For a description of IAM and its features, see the
-- <https://cloud.google.com/iam/docs/ IAM documentation>.
--
-- /See:/ 'newPolicy' smart constructor.
data Policy = Policy
  { -- | Specifies cloud audit logging configuration for this policy.
    auditConfigs :: (Core.Maybe [AuditConfig]),
    -- | Associates a list of @members@, or principals, with a @role@. Optionally, may specify a @condition@ that determines how and when the @bindings@ are applied. Each of the @bindings@ must contain at least one principal. The @bindings@ in a @Policy@ can refer to up to 1,500 principals; up to 250 of these principals can be Google groups. Each occurrence of a principal counts towards these limits. For example, if the @bindings@ grant 50 different roles to @user:alice\@example.com@, and not to any other principal, then you can add another 1,450 principals to the @bindings@ in the @Policy@.
    bindings :: (Core.Maybe [Binding]),
    -- | @etag@ is used for optimistic concurrency control as a way to help prevent simultaneous updates of a policy from overwriting each other. It is strongly suggested that systems make use of the @etag@ in the read-modify-write cycle to perform policy updates in order to avoid race conditions: An @etag@ is returned in the response to @getIamPolicy@, and systems are expected to put that etag in the request to @setIamPolicy@ to ensure that their change will be applied to the same version of the policy. __Important:__ If you use IAM Conditions, you must include the @etag@ field whenever you call @setIamPolicy@. If you omit this field, then IAM allows you to overwrite a version @3@ policy with a version @1@ policy, and all of the conditions in the version @3@ policy are lost.
    etag :: (Core.Maybe Core.Base64),
    -- | Specifies the format of the policy. Valid values are @0@, @1@, and @3@. Requests that specify an invalid value are rejected. Any operation that affects conditional role bindings must specify version @3@. This requirement applies to the following operations: * Getting a policy that includes a conditional role binding * Adding a conditional role binding to a policy * Changing a conditional role binding in a policy * Removing any role binding, with or without a condition, from a policy that includes conditions __Important:__ If you use IAM Conditions, you must include the @etag@ field whenever you call @setIamPolicy@. If you omit this field, then IAM allows you to overwrite a version @3@ policy with a version @1@ policy, and all of the conditions in the version @3@ policy are lost. If a policy does not include any conditions, operations on that policy may specify any valid version or leave the field unset. To learn which resources support conditions in their IAM policies, see the
    -- <https://cloud.google.com/iam/help/conditions/resource-policies IAM documentation>.
    version :: (Core.Maybe Core.Int32)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Policy' with the minimum fields required to make a request.
newPolicy ::
  Policy
newPolicy =
  Policy
    { auditConfigs = Core.Nothing,
      bindings = Core.Nothing,
      etag = Core.Nothing,
      version = Core.Nothing
    }

instance Core.FromJSON Policy where
  parseJSON =
    Core.withObject
      "Policy"
      ( \o ->
          Policy
            Core.<$> (o Core..:? "auditConfigs")
            Core.<*> (o Core..:? "bindings")
            Core.<*> (o Core..:? "etag")
            Core.<*> (o Core..:? "version")
      )

instance Core.ToJSON Policy where
  toJSON Policy {..} =
    Core.object
      ( Core.catMaybes
          [ ("auditConfigs" Core..=) Core.<$> auditConfigs,
            ("bindings" Core..=) Core.<$> bindings,
            ("etag" Core..=) Core.<$> etag,
            ("version" Core..=) Core.<$> version
          ]
      )

-- | ProgressCounter provides counters to describe an operation\'s progress.
--
-- /See:/ 'newProgressCounter' smart constructor.
data ProgressCounter = ProgressCounter
  { -- | The number of units that failed in the operation.
    failure :: (Core.Maybe Core.Int64),
    -- | The number of units that are pending in the operation.
    pending :: (Core.Maybe Core.Int64),
    -- | The number of units that succeeded in the operation.
    success :: (Core.Maybe Core.Int64)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ProgressCounter' with the minimum fields required to make a request.
newProgressCounter ::
  ProgressCounter
newProgressCounter =
  ProgressCounter
    { failure = Core.Nothing,
      pending = Core.Nothing,
      success = Core.Nothing
    }

instance Core.FromJSON ProgressCounter where
  parseJSON =
    Core.withObject
      "ProgressCounter"
      ( \o ->
          ProgressCounter
            Core.<$> ( o Core..:? "failure"
                         Core.<&> Core.fmap Core.fromAsText
                     )
            Core.<*> ( o Core..:? "pending"
                         Core.<&> Core.fmap Core.fromAsText
                     )
            Core.<*> ( o Core..:? "success"
                         Core.<&> Core.fmap Core.fromAsText
                     )
      )

instance Core.ToJSON ProgressCounter where
  toJSON ProgressCounter {..} =
    Core.object
      ( Core.catMaybes
          [ ("failure" Core..=) Core.. Core.AsText
              Core.<$> failure,
            ("pending" Core..=) Core.. Core.AsText
              Core.<$> pending,
            ("success" Core..=) Core.. Core.AsText
              Core.<$> success
          ]
      )

-- | Queries all data_ids that are consented for a given use in the given consent store and writes them to a specified destination. The returned Operation includes a progress counter for the number of User data mappings processed. Errors are logged to Cloud Logging (see [Viewing error logs in Cloud Logging] (https:\/\/cloud.google.com\/healthcare\/docs\/how-tos\/logging) and [QueryAccessibleData] for a sample log entry).
--
-- /See:/ 'newQueryAccessibleDataRequest' smart constructor.
data QueryAccessibleDataRequest = QueryAccessibleDataRequest
  { -- | The Cloud Storage destination. The Cloud Healthcare API service account must have the @roles\/storage.objectAdmin@ Cloud IAM role for this Cloud Storage location.
    gcsDestination :: (Core.Maybe GoogleCloudHealthcareV1ConsentGcsDestination),
    -- | The values of request attributes associated with this access request.
    requestAttributes :: (Core.Maybe QueryAccessibleDataRequest_RequestAttributes),
    -- | Optional. The values of resource attributes associated with the type of resources being requested. If no values are specified, then all resource types are included in the output.
    resourceAttributes :: (Core.Maybe QueryAccessibleDataRequest_ResourceAttributes)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'QueryAccessibleDataRequest' with the minimum fields required to make a request.
newQueryAccessibleDataRequest ::
  QueryAccessibleDataRequest
newQueryAccessibleDataRequest =
  QueryAccessibleDataRequest
    { gcsDestination = Core.Nothing,
      requestAttributes = Core.Nothing,
      resourceAttributes = Core.Nothing
    }

instance Core.FromJSON QueryAccessibleDataRequest where
  parseJSON =
    Core.withObject
      "QueryAccessibleDataRequest"
      ( \o ->
          QueryAccessibleDataRequest
            Core.<$> (o Core..:? "gcsDestination")
            Core.<*> (o Core..:? "requestAttributes")
            Core.<*> (o Core..:? "resourceAttributes")
      )

instance Core.ToJSON QueryAccessibleDataRequest where
  toJSON QueryAccessibleDataRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("gcsDestination" Core..=) Core.<$> gcsDestination,
            ("requestAttributes" Core..=)
              Core.<$> requestAttributes,
            ("resourceAttributes" Core..=)
              Core.<$> resourceAttributes
          ]
      )

-- | The values of request attributes associated with this access request.
--
-- /See:/ 'newQueryAccessibleDataRequest_RequestAttributes' smart constructor.
newtype QueryAccessibleDataRequest_RequestAttributes = QueryAccessibleDataRequest_RequestAttributes
  { -- |
    additional :: (Core.HashMap Core.Text Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'QueryAccessibleDataRequest_RequestAttributes' with the minimum fields required to make a request.
newQueryAccessibleDataRequest_RequestAttributes ::
  -- |  See 'additional'.
  Core.HashMap Core.Text Core.Text ->
  QueryAccessibleDataRequest_RequestAttributes
newQueryAccessibleDataRequest_RequestAttributes additional =
  QueryAccessibleDataRequest_RequestAttributes {additional = additional}

instance
  Core.FromJSON
    QueryAccessibleDataRequest_RequestAttributes
  where
  parseJSON =
    Core.withObject
      "QueryAccessibleDataRequest_RequestAttributes"
      ( \o ->
          QueryAccessibleDataRequest_RequestAttributes
            Core.<$> (Core.parseJSONObject o)
      )

instance
  Core.ToJSON
    QueryAccessibleDataRequest_RequestAttributes
  where
  toJSON
    QueryAccessibleDataRequest_RequestAttributes {..} =
      Core.toJSON additional

-- | Optional. The values of resource attributes associated with the type of resources being requested. If no values are specified, then all resource types are included in the output.
--
-- /See:/ 'newQueryAccessibleDataRequest_ResourceAttributes' smart constructor.
newtype QueryAccessibleDataRequest_ResourceAttributes = QueryAccessibleDataRequest_ResourceAttributes
  { -- |
    additional :: (Core.HashMap Core.Text Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'QueryAccessibleDataRequest_ResourceAttributes' with the minimum fields required to make a request.
newQueryAccessibleDataRequest_ResourceAttributes ::
  -- |  See 'additional'.
  Core.HashMap Core.Text Core.Text ->
  QueryAccessibleDataRequest_ResourceAttributes
newQueryAccessibleDataRequest_ResourceAttributes additional =
  QueryAccessibleDataRequest_ResourceAttributes {additional = additional}

instance
  Core.FromJSON
    QueryAccessibleDataRequest_ResourceAttributes
  where
  parseJSON =
    Core.withObject
      "QueryAccessibleDataRequest_ResourceAttributes"
      ( \o ->
          QueryAccessibleDataRequest_ResourceAttributes
            Core.<$> (Core.parseJSONObject o)
      )

instance
  Core.ToJSON
    QueryAccessibleDataRequest_ResourceAttributes
  where
  toJSON
    QueryAccessibleDataRequest_ResourceAttributes {..} =
      Core.toJSON additional

-- | Response for successful QueryAccessibleData operations. This structure is included in the response upon operation completion.
--
-- /See:/ 'newQueryAccessibleDataResponse' smart constructor.
newtype QueryAccessibleDataResponse = QueryAccessibleDataResponse
  { -- | List of files, each of which contains a list of data_id(s) that are consented for a specified use in the request.
    gcsUris :: (Core.Maybe [Core.Text])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'QueryAccessibleDataResponse' with the minimum fields required to make a request.
newQueryAccessibleDataResponse ::
  QueryAccessibleDataResponse
newQueryAccessibleDataResponse =
  QueryAccessibleDataResponse {gcsUris = Core.Nothing}

instance Core.FromJSON QueryAccessibleDataResponse where
  parseJSON =
    Core.withObject
      "QueryAccessibleDataResponse"
      ( \o ->
          QueryAccessibleDataResponse
            Core.<$> (o Core..:? "gcsUris")
      )

instance Core.ToJSON QueryAccessibleDataResponse where
  toJSON QueryAccessibleDataResponse {..} =
    Core.object
      ( Core.catMaybes
          [("gcsUris" Core..=) Core.<$> gcsUris]
      )

-- | Define how to redact sensitive values. Default behaviour is erase. For example, \"My name is Jane.\" becomes \"My name is .\"
--
-- /See:/ 'newRedactConfig' smart constructor.
data RedactConfig = RedactConfig
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'RedactConfig' with the minimum fields required to make a request.
newRedactConfig ::
  RedactConfig
newRedactConfig = RedactConfig

instance Core.FromJSON RedactConfig where
  parseJSON =
    Core.withObject
      "RedactConfig"
      (\o -> Core.pure RedactConfig)

instance Core.ToJSON RedactConfig where
  toJSON = Core.const Core.emptyObject

-- | Rejects the latest revision of the specified Consent by committing a new revision with @state@ updated to @REJECTED@. If the latest revision of the given Consent is in the @REJECTED@ state, no new revision is committed.
--
-- /See:/ 'newRejectConsentRequest' smart constructor.
newtype RejectConsentRequest = RejectConsentRequest
  { -- | Optional. The resource name of the Consent artifact that contains documentation of the user\'s rejection of the draft Consent, of the form @projects\/{project_id}\/locations\/{location_id}\/datasets\/{dataset_id}\/consentStores\/{consent_store_id}\/consentArtifacts\/{consent_artifact_id}@. If the draft Consent had a Consent artifact, this Consent artifact overwrites it.
    consentArtifact :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'RejectConsentRequest' with the minimum fields required to make a request.
newRejectConsentRequest ::
  RejectConsentRequest
newRejectConsentRequest = RejectConsentRequest {consentArtifact = Core.Nothing}

instance Core.FromJSON RejectConsentRequest where
  parseJSON =
    Core.withObject
      "RejectConsentRequest"
      ( \o ->
          RejectConsentRequest
            Core.<$> (o Core..:? "consentArtifact")
      )

instance Core.ToJSON RejectConsentRequest where
  toJSON RejectConsentRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("consentArtifact" Core..=)
              Core.<$> consentArtifact
          ]
      )

-- | When using the INSPECT/AND/TRANSFORM action, each match is replaced with the name of the info/type. For example, \"My name is Jane\" becomes \"My name is [PERSON/NAME].\" The TRANSFORM action is equivalent to redacting.
--
-- /See:/ 'newReplaceWithInfoTypeConfig' smart constructor.
data ReplaceWithInfoTypeConfig = ReplaceWithInfoTypeConfig
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ReplaceWithInfoTypeConfig' with the minimum fields required to make a request.
newReplaceWithInfoTypeConfig ::
  ReplaceWithInfoTypeConfig
newReplaceWithInfoTypeConfig = ReplaceWithInfoTypeConfig

instance Core.FromJSON ReplaceWithInfoTypeConfig where
  parseJSON =
    Core.withObject
      "ReplaceWithInfoTypeConfig"
      (\o -> Core.pure ReplaceWithInfoTypeConfig)

instance Core.ToJSON ReplaceWithInfoTypeConfig where
  toJSON = Core.const Core.emptyObject

-- | A list of FHIR resources.
--
-- /See:/ 'newResources' smart constructor.
newtype Resources = Resources
  { -- | List of resources IDs. For example, \"Patient\/1234\".
    resources :: (Core.Maybe [Core.Text])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Resources' with the minimum fields required to make a request.
newResources ::
  Resources
newResources = Resources {resources = Core.Nothing}

instance Core.FromJSON Resources where
  parseJSON =
    Core.withObject
      "Resources"
      (\o -> Resources Core.<$> (o Core..:? "resources"))

instance Core.ToJSON Resources where
  toJSON Resources {..} =
    Core.object
      ( Core.catMaybes
          [("resources" Core..=) Core.<$> resources]
      )

-- | The consent evaluation result for a single @data_id@.
--
-- /See:/ 'newResult' smart constructor.
data Result = Result
  { -- | The resource names of all evaluated Consents mapped to their evaluation.
    consentDetails :: (Core.Maybe Result_ConsentDetails),
    -- | Whether the resource is consented for the given use.
    consented :: (Core.Maybe Core.Bool),
    -- | The unique identifier of the evaluated resource.
    dataId :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Result' with the minimum fields required to make a request.
newResult ::
  Result
newResult =
  Result
    { consentDetails = Core.Nothing,
      consented = Core.Nothing,
      dataId = Core.Nothing
    }

instance Core.FromJSON Result where
  parseJSON =
    Core.withObject
      "Result"
      ( \o ->
          Result
            Core.<$> (o Core..:? "consentDetails")
            Core.<*> (o Core..:? "consented")
            Core.<*> (o Core..:? "dataId")
      )

instance Core.ToJSON Result where
  toJSON Result {..} =
    Core.object
      ( Core.catMaybes
          [ ("consentDetails" Core..=) Core.<$> consentDetails,
            ("consented" Core..=) Core.<$> consented,
            ("dataId" Core..=) Core.<$> dataId
          ]
      )

-- | The resource names of all evaluated Consents mapped to their evaluation.
--
-- /See:/ 'newResult_ConsentDetails' smart constructor.
newtype Result_ConsentDetails = Result_ConsentDetails
  { -- |
    additional :: (Core.HashMap Core.Text ConsentEvaluation)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Result_ConsentDetails' with the minimum fields required to make a request.
newResult_ConsentDetails ::
  -- |  See 'additional'.
  Core.HashMap Core.Text ConsentEvaluation ->
  Result_ConsentDetails
newResult_ConsentDetails additional =
  Result_ConsentDetails {additional = additional}

instance Core.FromJSON Result_ConsentDetails where
  parseJSON =
    Core.withObject
      "Result_ConsentDetails"
      ( \o ->
          Result_ConsentDetails
            Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON Result_ConsentDetails where
  toJSON Result_ConsentDetails {..} =
    Core.toJSON additional

-- | Revokes the latest revision of the specified Consent by committing a new revision with @state@ updated to @REVOKED@. If the latest revision of the given Consent is in the @REVOKED@ state, no new revision is committed.
--
-- /See:/ 'newRevokeConsentRequest' smart constructor.
newtype RevokeConsentRequest = RevokeConsentRequest
  { -- | Optional. The resource name of the Consent artifact that contains proof of the user\'s revocation of the Consent, of the form @projects\/{project_id}\/locations\/{location_id}\/datasets\/{dataset_id}\/consentStores\/{consent_store_id}\/consentArtifacts\/{consent_artifact_id}@.
    consentArtifact :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'RevokeConsentRequest' with the minimum fields required to make a request.
newRevokeConsentRequest ::
  RevokeConsentRequest
newRevokeConsentRequest = RevokeConsentRequest {consentArtifact = Core.Nothing}

instance Core.FromJSON RevokeConsentRequest where
  parseJSON =
    Core.withObject
      "RevokeConsentRequest"
      ( \o ->
          RevokeConsentRequest
            Core.<$> (o Core..:? "consentArtifact")
      )

instance Core.ToJSON RevokeConsentRequest where
  toJSON RevokeConsentRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("consentArtifact" Core..=)
              Core.<$> consentArtifact
          ]
      )

-- | Configuration for the FHIR BigQuery schema. Determines how the server generates the schema.
--
-- /See:/ 'newSchemaConfig' smart constructor.
data SchemaConfig = SchemaConfig
  { -- | The depth for all recursive structures in the output analytics schema. For example, @concept@ in the CodeSystem resource is a recursive structure; when the depth is 2, the CodeSystem table will have a column called @concept.concept@ but not @concept.concept.concept@. If not specified or set to 0, the server will use the default value 2. The maximum depth allowed is 5.
    recursiveStructureDepth :: (Core.Maybe Core.Int64),
    -- | Specifies the output schema type. Schema type is required.
    schemaType :: (Core.Maybe SchemaConfig_SchemaType)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SchemaConfig' with the minimum fields required to make a request.
newSchemaConfig ::
  SchemaConfig
newSchemaConfig =
  SchemaConfig
    { recursiveStructureDepth = Core.Nothing,
      schemaType = Core.Nothing
    }

instance Core.FromJSON SchemaConfig where
  parseJSON =
    Core.withObject
      "SchemaConfig"
      ( \o ->
          SchemaConfig
            Core.<$> ( o Core..:? "recursiveStructureDepth"
                         Core.<&> Core.fmap Core.fromAsText
                     )
            Core.<*> (o Core..:? "schemaType")
      )

instance Core.ToJSON SchemaConfig where
  toJSON SchemaConfig {..} =
    Core.object
      ( Core.catMaybes
          [ ("recursiveStructureDepth" Core..=)
              Core.. Core.AsText
              Core.<$> recursiveStructureDepth,
            ("schemaType" Core..=) Core.<$> schemaType
          ]
      )

-- | An HL7v2 logical group construct.
--
-- /See:/ 'newSchemaGroup' smart constructor.
data SchemaGroup = SchemaGroup
  { -- | True indicates that this is a choice group, meaning that only one of its segments can exist in a given message.
    choice :: (Core.Maybe Core.Bool),
    -- | The maximum number of times this group can be repeated. 0 or -1 means unbounded.
    maxOccurs :: (Core.Maybe Core.Int32),
    -- | Nested groups and\/or segments.
    members :: (Core.Maybe [GroupOrSegment]),
    -- | The minimum number of times this group must be present\/repeated.
    minOccurs :: (Core.Maybe Core.Int32),
    -- | The name of this group. For example, \"ORDER_DETAIL\".
    name :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SchemaGroup' with the minimum fields required to make a request.
newSchemaGroup ::
  SchemaGroup
newSchemaGroup =
  SchemaGroup
    { choice = Core.Nothing,
      maxOccurs = Core.Nothing,
      members = Core.Nothing,
      minOccurs = Core.Nothing,
      name = Core.Nothing
    }

instance Core.FromJSON SchemaGroup where
  parseJSON =
    Core.withObject
      "SchemaGroup"
      ( \o ->
          SchemaGroup
            Core.<$> (o Core..:? "choice")
            Core.<*> (o Core..:? "maxOccurs")
            Core.<*> (o Core..:? "members")
            Core.<*> (o Core..:? "minOccurs")
            Core.<*> (o Core..:? "name")
      )

instance Core.ToJSON SchemaGroup where
  toJSON SchemaGroup {..} =
    Core.object
      ( Core.catMaybes
          [ ("choice" Core..=) Core.<$> choice,
            ("maxOccurs" Core..=) Core.<$> maxOccurs,
            ("members" Core..=) Core.<$> members,
            ("minOccurs" Core..=) Core.<$> minOccurs,
            ("name" Core..=) Core.<$> name
          ]
      )

-- | A schema package contains a set of schemas and type definitions.
--
-- /See:/ 'newSchemaPackage' smart constructor.
data SchemaPackage = SchemaPackage
  { -- | Flag to ignore all min_occurs restrictions in the schema. This means that incoming messages can omit any group, segment, field, component, or subcomponent.
    ignoreMinOccurs :: (Core.Maybe Core.Bool),
    -- | Schema configs that are layered based on their VersionSources that match the incoming message. Schema configs present in higher indices override those in lower indices with the same message type and trigger event if their VersionSources all match an incoming message.
    schemas :: (Core.Maybe [Hl7SchemaConfig]),
    -- | Determines how messages that fail to parse are handled.
    schematizedParsingType :: (Core.Maybe SchemaPackage_SchematizedParsingType),
    -- | Schema type definitions that are layered based on their VersionSources that match the incoming message. Type definitions present in higher indices override those in lower indices with the same type name if their VersionSources all match an incoming message.
    types :: (Core.Maybe [Hl7TypesConfig]),
    -- | Determines how unexpected segments (segments not matched to the schema) are handled.
    unexpectedSegmentHandling :: (Core.Maybe SchemaPackage_UnexpectedSegmentHandling)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SchemaPackage' with the minimum fields required to make a request.
newSchemaPackage ::
  SchemaPackage
newSchemaPackage =
  SchemaPackage
    { ignoreMinOccurs = Core.Nothing,
      schemas = Core.Nothing,
      schematizedParsingType = Core.Nothing,
      types = Core.Nothing,
      unexpectedSegmentHandling = Core.Nothing
    }

instance Core.FromJSON SchemaPackage where
  parseJSON =
    Core.withObject
      "SchemaPackage"
      ( \o ->
          SchemaPackage
            Core.<$> (o Core..:? "ignoreMinOccurs")
            Core.<*> (o Core..:? "schemas")
            Core.<*> (o Core..:? "schematizedParsingType")
            Core.<*> (o Core..:? "types")
            Core.<*> (o Core..:? "unexpectedSegmentHandling")
      )

instance Core.ToJSON SchemaPackage where
  toJSON SchemaPackage {..} =
    Core.object
      ( Core.catMaybes
          [ ("ignoreMinOccurs" Core..=)
              Core.<$> ignoreMinOccurs,
            ("schemas" Core..=) Core.<$> schemas,
            ("schematizedParsingType" Core..=)
              Core.<$> schematizedParsingType,
            ("types" Core..=) Core.<$> types,
            ("unexpectedSegmentHandling" Core..=)
              Core.<$> unexpectedSegmentHandling
          ]
      )

-- | An HL7v2 Segment.
--
-- /See:/ 'newSchemaSegment' smart constructor.
data SchemaSegment = SchemaSegment
  { -- | The maximum number of times this segment can be present in this group. 0 or -1 means unbounded.
    maxOccurs :: (Core.Maybe Core.Int32),
    -- | The minimum number of times this segment can be present in this group.
    minOccurs :: (Core.Maybe Core.Int32),
    -- | The Segment type. For example, \"PID\".
    type' :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SchemaSegment' with the minimum fields required to make a request.
newSchemaSegment ::
  SchemaSegment
newSchemaSegment =
  SchemaSegment
    { maxOccurs = Core.Nothing,
      minOccurs = Core.Nothing,
      type' = Core.Nothing
    }

instance Core.FromJSON SchemaSegment where
  parseJSON =
    Core.withObject
      "SchemaSegment"
      ( \o ->
          SchemaSegment
            Core.<$> (o Core..:? "maxOccurs")
            Core.<*> (o Core..:? "minOccurs")
            Core.<*> (o Core..:? "type")
      )

instance Core.ToJSON SchemaSegment where
  toJSON SchemaSegment {..} =
    Core.object
      ( Core.catMaybes
          [ ("maxOccurs" Core..=) Core.<$> maxOccurs,
            ("minOccurs" Core..=) Core.<$> minOccurs,
            ("type" Core..=) Core.<$> type'
          ]
      )

-- | The content of an HL7v2 message in a structured format as specified by a schema.
--
-- /See:/ 'newSchematizedData' smart constructor.
data SchematizedData = SchematizedData
  { -- | JSON output of the parser.
    data' :: (Core.Maybe Core.Text),
    -- | The error output of the parser.
    error :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SchematizedData' with the minimum fields required to make a request.
newSchematizedData ::
  SchematizedData
newSchematizedData =
  SchematizedData {data' = Core.Nothing, error = Core.Nothing}

instance Core.FromJSON SchematizedData where
  parseJSON =
    Core.withObject
      "SchematizedData"
      ( \o ->
          SchematizedData
            Core.<$> (o Core..:? "data") Core.<*> (o Core..:? "error")
      )

instance Core.ToJSON SchematizedData where
  toJSON SchematizedData {..} =
    Core.object
      ( Core.catMaybes
          [ ("data" Core..=) Core.<$> data',
            ("error" Core..=) Core.<$> error
          ]
      )

-- | Request to search the resources in the specified FHIR store.
--
-- /See:/ 'newSearchResourcesRequest' smart constructor.
newtype SearchResourcesRequest = SearchResourcesRequest
  { -- | The FHIR resource type to search, such as Patient or Observation. For a complete list, see the FHIR Resource Index (<http://hl7.org/implement/standards/fhir/DSTU2/resourcelist.html DSTU2>, <http://hl7.org/implement/standards/fhir/STU3/resourcelist.html STU3>, <http://hl7.org/implement/standards/fhir/R4/resourcelist.html R4>).
    resourceType :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SearchResourcesRequest' with the minimum fields required to make a request.
newSearchResourcesRequest ::
  SearchResourcesRequest
newSearchResourcesRequest = SearchResourcesRequest {resourceType = Core.Nothing}

instance Core.FromJSON SearchResourcesRequest where
  parseJSON =
    Core.withObject
      "SearchResourcesRequest"
      ( \o ->
          SearchResourcesRequest
            Core.<$> (o Core..:? "resourceType")
      )

instance Core.ToJSON SearchResourcesRequest where
  toJSON SearchResourcesRequest {..} =
    Core.object
      ( Core.catMaybes
          [("resourceType" Core..=) Core.<$> resourceType]
      )

-- | A segment in a structured format.
--
-- /See:/ 'newSegment' smart constructor.
data Segment = Segment
  { -- | A mapping from the positional location to the value. The key string uses zero-based indexes separated by dots to identify Fields, components and sub-components. A bracket notation is also used to identify different instances of a repeated field. Regex for key: (\\d+)([\\d+])?(.\\d+)?(.\\d+)? Examples of (key, value) pairs: * (0.1, \"hemoglobin\") denotes that the first component of Field 0 has the value \"hemoglobin\". * (1.1.2, \"CBC\") denotes that the second sub-component of the first component of Field 1 has the value \"CBC\". * (1[0].1, \"HbA1c\") denotes that the first component of the first Instance of Field 1, which is repeated, has the value \"HbA1c\".
    fields :: (Core.Maybe Segment_Fields),
    -- | A string that indicates the type of segment. For example, EVN or PID.
    segmentId :: (Core.Maybe Core.Text),
    -- | Set ID for segments that can be in a set. This can be empty if it\'s missing or isn\'t applicable.
    setId :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Segment' with the minimum fields required to make a request.
newSegment ::
  Segment
newSegment =
  Segment
    { fields = Core.Nothing,
      segmentId = Core.Nothing,
      setId = Core.Nothing
    }

instance Core.FromJSON Segment where
  parseJSON =
    Core.withObject
      "Segment"
      ( \o ->
          Segment
            Core.<$> (o Core..:? "fields")
            Core.<*> (o Core..:? "segmentId")
            Core.<*> (o Core..:? "setId")
      )

instance Core.ToJSON Segment where
  toJSON Segment {..} =
    Core.object
      ( Core.catMaybes
          [ ("fields" Core..=) Core.<$> fields,
            ("segmentId" Core..=) Core.<$> segmentId,
            ("setId" Core..=) Core.<$> setId
          ]
      )

-- | A mapping from the positional location to the value. The key string uses zero-based indexes separated by dots to identify Fields, components and sub-components. A bracket notation is also used to identify different instances of a repeated field. Regex for key: (\\d+)([\\d+])?(.\\d+)?(.\\d+)? Examples of (key, value) pairs: * (0.1, \"hemoglobin\") denotes that the first component of Field 0 has the value \"hemoglobin\". * (1.1.2, \"CBC\") denotes that the second sub-component of the first component of Field 1 has the value \"CBC\". * (1[0].1, \"HbA1c\") denotes that the first component of the first Instance of Field 1, which is repeated, has the value \"HbA1c\".
--
-- /See:/ 'newSegment_Fields' smart constructor.
newtype Segment_Fields = Segment_Fields
  { -- |
    additional :: (Core.HashMap Core.Text Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Segment_Fields' with the minimum fields required to make a request.
newSegment_Fields ::
  -- |  See 'additional'.
  Core.HashMap Core.Text Core.Text ->
  Segment_Fields
newSegment_Fields additional = Segment_Fields {additional = additional}

instance Core.FromJSON Segment_Fields where
  parseJSON =
    Core.withObject
      "Segment_Fields"
      ( \o ->
          Segment_Fields Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON Segment_Fields where
  toJSON Segment_Fields {..} = Core.toJSON additional

-- | Request message for @SetIamPolicy@ method.
--
-- /See:/ 'newSetIamPolicyRequest' smart constructor.
data SetIamPolicyRequest = SetIamPolicyRequest
  { -- | REQUIRED: The complete policy to be applied to the @resource@. The size of the policy is limited to a few 10s of KB. An empty policy is a valid policy but certain Cloud Platform services (such as Projects) might reject them.
    policy :: (Core.Maybe Policy),
    -- | OPTIONAL: A FieldMask specifying which fields of the policy to modify. Only the fields in the mask will be modified. If no mask is provided, the following default mask is used: @paths: \"bindings, etag\"@
    updateMask :: (Core.Maybe Core.FieldMask)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SetIamPolicyRequest' with the minimum fields required to make a request.
newSetIamPolicyRequest ::
  SetIamPolicyRequest
newSetIamPolicyRequest =
  SetIamPolicyRequest {policy = Core.Nothing, updateMask = Core.Nothing}

instance Core.FromJSON SetIamPolicyRequest where
  parseJSON =
    Core.withObject
      "SetIamPolicyRequest"
      ( \o ->
          SetIamPolicyRequest
            Core.<$> (o Core..:? "policy")
            Core.<*> (o Core..:? "updateMask")
      )

instance Core.ToJSON SetIamPolicyRequest where
  toJSON SetIamPolicyRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("policy" Core..=) Core.<$> policy,
            ("updateMask" Core..=) Core.<$> updateMask
          ]
      )

-- | User signature.
--
-- /See:/ 'newSignature' smart constructor.
data Signature = Signature
  { -- | Optional. An image of the user\'s signature.
    image :: (Core.Maybe Image),
    -- | Optional. Metadata associated with the user\'s signature. For example, the user\'s name or the user\'s title.
    metadata :: (Core.Maybe Signature_Metadata),
    -- | Optional. Timestamp of the signature.
    signatureTime :: (Core.Maybe Core.DateTime),
    -- | Required. User\'s UUID provided by the client.
    userId :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Signature' with the minimum fields required to make a request.
newSignature ::
  Signature
newSignature =
  Signature
    { image = Core.Nothing,
      metadata = Core.Nothing,
      signatureTime = Core.Nothing,
      userId = Core.Nothing
    }

instance Core.FromJSON Signature where
  parseJSON =
    Core.withObject
      "Signature"
      ( \o ->
          Signature
            Core.<$> (o Core..:? "image")
            Core.<*> (o Core..:? "metadata")
            Core.<*> (o Core..:? "signatureTime")
            Core.<*> (o Core..:? "userId")
      )

instance Core.ToJSON Signature where
  toJSON Signature {..} =
    Core.object
      ( Core.catMaybes
          [ ("image" Core..=) Core.<$> image,
            ("metadata" Core..=) Core.<$> metadata,
            ("signatureTime" Core..=) Core.<$> signatureTime,
            ("userId" Core..=) Core.<$> userId
          ]
      )

-- | Optional. Metadata associated with the user\'s signature. For example, the user\'s name or the user\'s title.
--
-- /See:/ 'newSignature_Metadata' smart constructor.
newtype Signature_Metadata = Signature_Metadata
  { -- |
    additional :: (Core.HashMap Core.Text Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Signature_Metadata' with the minimum fields required to make a request.
newSignature_Metadata ::
  -- |  See 'additional'.
  Core.HashMap Core.Text Core.Text ->
  Signature_Metadata
newSignature_Metadata additional = Signature_Metadata {additional = additional}

instance Core.FromJSON Signature_Metadata where
  parseJSON =
    Core.withObject
      "Signature_Metadata"
      ( \o ->
          Signature_Metadata Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON Signature_Metadata where
  toJSON Signature_Metadata {..} =
    Core.toJSON additional

-- | The @Status@ type defines a logical error model that is suitable for different programming environments, including REST APIs and RPC APIs. It is used by <https://github.com/grpc gRPC>. Each @Status@ message contains three pieces of data: error code, error message, and error details. You can find out more about this error model and how to work with it in the <https://cloud.google.com/apis/design/errors API Design Guide>.
--
-- /See:/ 'newStatus' smart constructor.
data Status = Status
  { -- | The status code, which should be an enum value of google.rpc.Code.
    code :: (Core.Maybe Core.Int32),
    -- | A list of messages that carry the error details. There is a common set of message types for APIs to use.
    details :: (Core.Maybe [Status_DetailsItem]),
    -- | A developer-facing error message, which should be in English. Any user-facing error message should be localized and sent in the google.rpc.Status.details field, or localized by the client.
    message :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Status' with the minimum fields required to make a request.
newStatus ::
  Status
newStatus =
  Status {code = Core.Nothing, details = Core.Nothing, message = Core.Nothing}

instance Core.FromJSON Status where
  parseJSON =
    Core.withObject
      "Status"
      ( \o ->
          Status
            Core.<$> (o Core..:? "code")
            Core.<*> (o Core..:? "details")
            Core.<*> (o Core..:? "message")
      )

instance Core.ToJSON Status where
  toJSON Status {..} =
    Core.object
      ( Core.catMaybes
          [ ("code" Core..=) Core.<$> code,
            ("details" Core..=) Core.<$> details,
            ("message" Core..=) Core.<$> message
          ]
      )

--
-- /See:/ 'newStatus_DetailsItem' smart constructor.
newtype Status_DetailsItem = Status_DetailsItem
  { -- | Properties of the object. Contains field \@type with type URL.
    additional :: (Core.HashMap Core.Text Core.Value)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Status_DetailsItem' with the minimum fields required to make a request.
newStatus_DetailsItem ::
  -- |  Properties of the object. Contains field \@type with type URL. See 'additional'.
  Core.HashMap Core.Text Core.Value ->
  Status_DetailsItem
newStatus_DetailsItem additional = Status_DetailsItem {additional = additional}

instance Core.FromJSON Status_DetailsItem where
  parseJSON =
    Core.withObject
      "Status_DetailsItem"
      ( \o ->
          Status_DetailsItem Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON Status_DetailsItem where
  toJSON Status_DetailsItem {..} =
    Core.toJSON additional

-- | Contains configuration for streaming FHIR export.
--
-- /See:/ 'newStreamConfig' smart constructor.
data StreamConfig = StreamConfig
  { -- | The destination BigQuery structure that contains both the dataset location and corresponding schema config. The output is organized in one table per resource type. The server reuses the existing tables (if any) that are named after the resource types. For example, \"Patient\", \"Observation\". When there is no existing table for a given resource type, the server attempts to create one. When a table schema doesn\'t align with the schema config, either because of existing incompatible schema or out of band incompatible modification, the server does not stream in new data. BigQuery imposes a 1 MB limit on streaming insert row size, therefore any resource mutation that generates more than 1 MB of BigQuery data is not streamed. One resolution in this case is to delete the incompatible table and let the server recreate one, though the newly created table only contains data after the table recreation. Results are written to BigQuery tables according to the parameters in BigQueryDestination.WriteDisposition.
    -- Different versions of the same resource are distinguishable by the meta.versionId and meta.lastUpdated columns. The operation (CREATE\/UPDATE\/DELETE) that results in the new version is recorded in the meta.tag. The tables contain all historical resource versions since streaming was enabled. For query convenience, the server also creates one view per table of the same name containing only the current resource version. The streamed data in the BigQuery dataset is not guaranteed to be completely unique. The combination of the id and meta.versionId columns should ideally identify a single unique row. But in rare cases, duplicates may exist. At query time, users may use the SQL select statement to keep only one of the duplicate rows given an id and meta.versionId pair. Alternatively, the server created view mentioned above also filters out duplicates. If a resource mutation cannot be streamed to BigQuery, errors are logged to Cloud Logging. For more information, see
    -- <https://cloud.google.com/healthcare/docs/how-tos/logging Viewing error logs in Cloud Logging>).
    bigqueryDestination :: (Core.Maybe GoogleCloudHealthcareV1FhirBigQueryDestination),
    -- | Supply a FHIR resource type (such as \"Patient\" or \"Observation\"). See https:\/\/www.hl7.org\/fhir\/valueset-resource-types.html for a list of all FHIR resource types. The server treats an empty list as an intent to stream all the supported resource types in this FHIR store.
    resourceTypes :: (Core.Maybe [Core.Text])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'StreamConfig' with the minimum fields required to make a request.
newStreamConfig ::
  StreamConfig
newStreamConfig =
  StreamConfig
    { bigqueryDestination = Core.Nothing,
      resourceTypes = Core.Nothing
    }

instance Core.FromJSON StreamConfig where
  parseJSON =
    Core.withObject
      "StreamConfig"
      ( \o ->
          StreamConfig
            Core.<$> (o Core..:? "bigqueryDestination")
            Core.<*> (o Core..:? "resourceTypes")
      )

instance Core.ToJSON StreamConfig where
  toJSON StreamConfig {..} =
    Core.object
      ( Core.catMaybes
          [ ("bigqueryDestination" Core..=)
              Core.<$> bigqueryDestination,
            ("resourceTypes" Core..=) Core.<$> resourceTypes
          ]
      )

-- | List of tags to be filtered.
--
-- /See:/ 'newTagFilterList' smart constructor.
newtype TagFilterList = TagFilterList
  { -- | Tags to be filtered. Tags must be DICOM Data Elements, File Meta Elements, or Directory Structuring Elements, as defined at: http:\/\/dicom.nema.org\/medical\/dicom\/current\/output\/html\/part06.html#table_6-1,. They may be provided by \"Keyword\" or \"Tag\". For example \"PatientID\", \"00100010\".
    tags :: (Core.Maybe [Core.Text])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TagFilterList' with the minimum fields required to make a request.
newTagFilterList ::
  TagFilterList
newTagFilterList = TagFilterList {tags = Core.Nothing}

instance Core.FromJSON TagFilterList where
  parseJSON =
    Core.withObject
      "TagFilterList"
      (\o -> TagFilterList Core.<$> (o Core..:? "tags"))

instance Core.ToJSON TagFilterList where
  toJSON TagFilterList {..} =
    Core.object
      (Core.catMaybes [("tags" Core..=) Core.<$> tags])

-- | Request message for @TestIamPermissions@ method.
--
-- /See:/ 'newTestIamPermissionsRequest' smart constructor.
newtype TestIamPermissionsRequest = TestIamPermissionsRequest
  { -- | The set of permissions to check for the @resource@. Permissions with wildcards (such as \'/\' or \'storage./\') are not allowed. For more information see <https://cloud.google.com/iam/docs/overview#permissions IAM Overview>.
    permissions :: (Core.Maybe [Core.Text])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TestIamPermissionsRequest' with the minimum fields required to make a request.
newTestIamPermissionsRequest ::
  TestIamPermissionsRequest
newTestIamPermissionsRequest =
  TestIamPermissionsRequest {permissions = Core.Nothing}

instance Core.FromJSON TestIamPermissionsRequest where
  parseJSON =
    Core.withObject
      "TestIamPermissionsRequest"
      ( \o ->
          TestIamPermissionsRequest
            Core.<$> (o Core..:? "permissions")
      )

instance Core.ToJSON TestIamPermissionsRequest where
  toJSON TestIamPermissionsRequest {..} =
    Core.object
      ( Core.catMaybes
          [("permissions" Core..=) Core.<$> permissions]
      )

-- | Response message for @TestIamPermissions@ method.
--
-- /See:/ 'newTestIamPermissionsResponse' smart constructor.
newtype TestIamPermissionsResponse = TestIamPermissionsResponse
  { -- | A subset of @TestPermissionsRequest.permissions@ that the caller is allowed.
    permissions :: (Core.Maybe [Core.Text])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TestIamPermissionsResponse' with the minimum fields required to make a request.
newTestIamPermissionsResponse ::
  TestIamPermissionsResponse
newTestIamPermissionsResponse =
  TestIamPermissionsResponse {permissions = Core.Nothing}

instance Core.FromJSON TestIamPermissionsResponse where
  parseJSON =
    Core.withObject
      "TestIamPermissionsResponse"
      ( \o ->
          TestIamPermissionsResponse
            Core.<$> (o Core..:? "permissions")
      )

instance Core.ToJSON TestIamPermissionsResponse where
  toJSON TestIamPermissionsResponse {..} =
    Core.object
      ( Core.catMaybes
          [("permissions" Core..=) Core.<$> permissions]
      )

--
-- /See:/ 'newTextConfig' smart constructor.
newtype TextConfig = TextConfig
  { -- | The transformations to apply to the detected data.
    transformations :: (Core.Maybe [InfoTypeTransformation])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TextConfig' with the minimum fields required to make a request.
newTextConfig ::
  TextConfig
newTextConfig = TextConfig {transformations = Core.Nothing}

instance Core.FromJSON TextConfig where
  parseJSON =
    Core.withObject
      "TextConfig"
      ( \o ->
          TextConfig Core.<$> (o Core..:? "transformations")
      )

instance Core.ToJSON TextConfig where
  toJSON TextConfig {..} =
    Core.object
      ( Core.catMaybes
          [ ("transformations" Core..=)
              Core.<$> transformations
          ]
      )

-- | A span of text in the provided document.
--
-- /See:/ 'newTextSpan' smart constructor.
data TextSpan = TextSpan
  { -- | The unicode codepoint index of the beginning of this span.
    beginOffset :: (Core.Maybe Core.Int32),
    -- | The original text contained in this span.
    content :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TextSpan' with the minimum fields required to make a request.
newTextSpan ::
  TextSpan
newTextSpan = TextSpan {beginOffset = Core.Nothing, content = Core.Nothing}

instance Core.FromJSON TextSpan where
  parseJSON =
    Core.withObject
      "TextSpan"
      ( \o ->
          TextSpan
            Core.<$> (o Core..:? "beginOffset")
            Core.<*> (o Core..:? "content")
      )

instance Core.ToJSON TextSpan where
  toJSON TextSpan {..} =
    Core.object
      ( Core.catMaybes
          [ ("beginOffset" Core..=) Core.<$> beginOffset,
            ("content" Core..=) Core.<$> content
          ]
      )

-- | A type definition for some HL7v2 type (incl. Segments and Datatypes).
--
-- /See:/ 'newType' smart constructor.
data Type = Type
  { -- | The (sub) fields this type has (if not primitive).
    fields :: (Core.Maybe [Field]),
    -- | The name of this type. This would be the segment or datatype name. For example, \"PID\" or \"XPN\".
    name :: (Core.Maybe Core.Text),
    -- | If this is a primitive type then this field is the type of the primitive For example, STRING. Leave unspecified for composite types.
    primitive' :: (Core.Maybe Type_Primitive)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Type' with the minimum fields required to make a request.
newType ::
  Type
newType =
  Type {fields = Core.Nothing, name = Core.Nothing, primitive' = Core.Nothing}

instance Core.FromJSON Type where
  parseJSON =
    Core.withObject
      "Type"
      ( \o ->
          Type
            Core.<$> (o Core..:? "fields")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "primitive")
      )

instance Core.ToJSON Type where
  toJSON Type {..} =
    Core.object
      ( Core.catMaybes
          [ ("fields" Core..=) Core.<$> fields,
            ("name" Core..=) Core.<$> name,
            ("primitive" Core..=) Core.<$> primitive'
          ]
      )

-- | Maps a resource to the associated user and Attributes.
--
-- /See:/ 'newUserDataMapping' smart constructor.
data UserDataMapping = UserDataMapping
  { -- | Output only. Indicates the time when this mapping was archived.
    archiveTime :: (Core.Maybe Core.DateTime),
    -- | Output only. Indicates whether this mapping is archived.
    archived :: (Core.Maybe Core.Bool),
    -- | Required. A unique identifier for the mapped resource.
    dataId :: (Core.Maybe Core.Text),
    -- | Resource name of the User data mapping, of the form @projects\/{project_id}\/locations\/{location_id}\/datasets\/{dataset_id}\/consentStores\/{consent_store_id}\/userDataMappings\/{user_data_mapping_id}@.
    name :: (Core.Maybe Core.Text),
    -- | Attributes of the resource. Only explicitly set attributes are displayed here. Attribute definitions with defaults set implicitly apply to these User data mappings. Attributes listed here must be single valued, that is, exactly one value is specified for the field \"values\" in each Attribute.
    resourceAttributes :: (Core.Maybe [Attribute]),
    -- | Required. User\'s UUID provided by the client.
    userId :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'UserDataMapping' with the minimum fields required to make a request.
newUserDataMapping ::
  UserDataMapping
newUserDataMapping =
  UserDataMapping
    { archiveTime = Core.Nothing,
      archived = Core.Nothing,
      dataId = Core.Nothing,
      name = Core.Nothing,
      resourceAttributes = Core.Nothing,
      userId = Core.Nothing
    }

instance Core.FromJSON UserDataMapping where
  parseJSON =
    Core.withObject
      "UserDataMapping"
      ( \o ->
          UserDataMapping
            Core.<$> (o Core..:? "archiveTime")
            Core.<*> (o Core..:? "archived")
            Core.<*> (o Core..:? "dataId")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "resourceAttributes")
            Core.<*> (o Core..:? "userId")
      )

instance Core.ToJSON UserDataMapping where
  toJSON UserDataMapping {..} =
    Core.object
      ( Core.catMaybes
          [ ("archiveTime" Core..=) Core.<$> archiveTime,
            ("archived" Core..=) Core.<$> archived,
            ("dataId" Core..=) Core.<$> dataId,
            ("name" Core..=) Core.<$> name,
            ("resourceAttributes" Core..=)
              Core.<$> resourceAttributes,
            ("userId" Core..=) Core.<$> userId
          ]
      )

-- | Contains the configuration for FHIR profiles and validation.
--
-- /See:/ 'newValidationConfig' smart constructor.
data ValidationConfig = ValidationConfig
  { -- | Whether to disable FHIRPath validation for incoming resources. Set this to true to disable checking incoming resources for conformance against FHIRPath requirement defined in the FHIR specification. This property only affects resource types that do not have profiles configured for them, any rules in enabled implementation guides will still be enforced.
    disableFhirpathValidation :: (Core.Maybe Core.Bool),
    -- | Whether to disable profile validation for this FHIR store. Set this to true to disable checking incoming resources for conformance against structure definitions in this FHIR store.
    disableProfileValidation :: (Core.Maybe Core.Bool),
    -- | Whether to disable reference type validation for incoming resources. Set this to true to disable checking incoming resources for conformance against reference type requirement defined in the FHIR specification. This property only affects resource types that do not have profiles configured for them, any rules in enabled implementation guides will still be enforced.
    disableReferenceTypeValidation :: (Core.Maybe Core.Bool),
    -- | Whether to disable required fields validation for incoming resources. Set this to true to disable checking incoming resources for conformance against required fields requirement defined in the FHIR specification. This property only affects resource types that do not have profiles configured for them, any rules in enabled implementation guides will still be enforced.
    disableRequiredFieldValidation :: (Core.Maybe Core.Bool),
    -- | A list of implementation guide URLs in this FHIR store that are used to configure the profiles to use for validation. For example, to use the US Core profiles for validation, set @enabled_implementation_guides@ to @[\"http:\/\/hl7.org\/fhir\/us\/core\/ImplementationGuide\/ig\"]@. If @enabled_implementation_guides@ is empty or omitted, then incoming resources are only required to conform to the base FHIR profiles. Otherwise, a resource must conform to at least one profile listed in the @global@ property of one of the enabled ImplementationGuides. The Cloud Healthcare API does not currently enforce all of the rules in a StructureDefinition. The following rules are supported: - min\/max - minValue\/maxValue - maxLength - type - fixed[x] - pattern[x] on simple types - slicing, when using \"value\" as the discriminator type When a URL cannot be resolved (for example, in a type assertion), the server does not return an error.
    enabledImplementationGuides :: (Core.Maybe [Core.Text])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ValidationConfig' with the minimum fields required to make a request.
newValidationConfig ::
  ValidationConfig
newValidationConfig =
  ValidationConfig
    { disableFhirpathValidation = Core.Nothing,
      disableProfileValidation = Core.Nothing,
      disableReferenceTypeValidation = Core.Nothing,
      disableRequiredFieldValidation = Core.Nothing,
      enabledImplementationGuides = Core.Nothing
    }

instance Core.FromJSON ValidationConfig where
  parseJSON =
    Core.withObject
      "ValidationConfig"
      ( \o ->
          ValidationConfig
            Core.<$> (o Core..:? "disableFhirpathValidation")
            Core.<*> (o Core..:? "disableProfileValidation")
            Core.<*> (o Core..:? "disableReferenceTypeValidation")
            Core.<*> (o Core..:? "disableRequiredFieldValidation")
            Core.<*> (o Core..:? "enabledImplementationGuides")
      )

instance Core.ToJSON ValidationConfig where
  toJSON ValidationConfig {..} =
    Core.object
      ( Core.catMaybes
          [ ("disableFhirpathValidation" Core..=)
              Core.<$> disableFhirpathValidation,
            ("disableProfileValidation" Core..=)
              Core.<$> disableProfileValidation,
            ("disableReferenceTypeValidation" Core..=)
              Core.<$> disableReferenceTypeValidation,
            ("disableRequiredFieldValidation" Core..=)
              Core.<$> disableRequiredFieldValidation,
            ("enabledImplementationGuides" Core..=)
              Core.<$> enabledImplementationGuides
          ]
      )

-- | Describes a selector for extracting and matching an MSH field to a value.
--
-- /See:/ 'newVersionSource' smart constructor.
data VersionSource = VersionSource
  { -- | The field to extract from the MSH segment. For example, \"3.1\" or \"18[1].1\".
    mshField :: (Core.Maybe Core.Text),
    -- | The value to match with the field. For example, \"My Application Name\" or \"2.3\".
    value :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'VersionSource' with the minimum fields required to make a request.
newVersionSource ::
  VersionSource
newVersionSource = VersionSource {mshField = Core.Nothing, value = Core.Nothing}

instance Core.FromJSON VersionSource where
  parseJSON =
    Core.withObject
      "VersionSource"
      ( \o ->
          VersionSource
            Core.<$> (o Core..:? "mshField")
            Core.<*> (o Core..:? "value")
      )

instance Core.ToJSON VersionSource where
  toJSON VersionSource {..} =
    Core.object
      ( Core.catMaybes
          [ ("mshField" Core..=) Core.<$> mshField,
            ("value" Core..=) Core.<$> value
          ]
      )
