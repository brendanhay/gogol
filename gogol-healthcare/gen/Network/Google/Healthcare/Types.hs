{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.Healthcare.Types
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.Healthcare.Types
    (
    -- * Service Configuration
      healthcareService

    -- * OAuth Scopes
    , cloudPlatformScope

    -- * Attribute
    , Attribute
    , attribute
    , aValues
    , aAttributeDefinitionId

    -- * Signature
    , Signature
    , signature
    , sImage
    , sSignatureTime
    , sUserId
    , sMetadata

    -- * ListConsentsResponse
    , ListConsentsResponse
    , listConsentsResponse
    , lcrNextPageToken
    , lcrConsents

    -- * Status
    , Status
    , status
    , sDetails
    , sCode
    , sMessage

    -- * OperationSchema
    , OperationSchema
    , operationSchema
    , osAddtional

    -- * ExportResourcesRequest
    , ExportResourcesRequest
    , exportResourcesRequest
    , errBigQueryDestination
    , errGcsDestination

    -- * CharacterMaskConfig
    , CharacterMaskConfig
    , characterMaskConfig
    , cmcMaskingCharacter

    -- * InfoTypeTransformation
    , InfoTypeTransformation
    , infoTypeTransformation
    , ittRedactConfig
    , ittCharacterMaskConfig
    , ittInfoTypes
    , ittDateShiftConfig
    , ittReplaceWithInfoTypeConfig
    , ittCryptoHashConfig

    -- * AuditConfig
    , AuditConfig
    , auditConfig
    , acService
    , acAuditLogConfigs

    -- * HTTPBodyExtensionsItem
    , HTTPBodyExtensionsItem
    , hTTPBodyExtensionsItem
    , httpbeiAddtional

    -- * ListUserDataMAppingsResponse
    , ListUserDataMAppingsResponse
    , listUserDataMAppingsResponse
    , ludmarNextPageToken
    , ludmarUserDataMAppings

    -- * ListConsentRevisionsResponse
    , ListConsentRevisionsResponse
    , listConsentRevisionsResponse
    , lcrrNextPageToken
    , lcrrConsents

    -- * RedactConfig
    , RedactConfig
    , redactConfig

    -- * Image
    , Image
    , image
    , iRawBytes
    , iGcsURI

    -- * NotificationConfig
    , NotificationConfig
    , notificationConfig
    , ncPubsubTopic

    -- * ImportResourcesResponse
    , ImportResourcesResponse
    , importResourcesResponse

    -- * FhirConfig
    , FhirConfig
    , fhirConfig
    , fcFieldMetadataList

    -- * Expr
    , Expr
    , expr
    , eLocation
    , eExpression
    , eTitle
    , eDescription

    -- * VersionSource
    , VersionSource
    , versionSource
    , vsValue
    , vsMshField

    -- * TextConfig
    , TextConfig
    , textConfig
    , tcTransformations

    -- * ListLocationsResponse
    , ListLocationsResponse
    , listLocationsResponse
    , llrNextPageToken
    , llrLocations

    -- * ListOperationsResponse
    , ListOperationsResponse
    , listOperationsResponse
    , lorNextPageToken
    , lorOperations

    -- * CancelOperationRequest
    , CancelOperationRequest
    , cancelOperationRequest

    -- * Hl7TypesConfig
    , Hl7TypesConfig
    , hl7TypesConfig
    , htcVersion
    , htcType

    -- * FhirStore
    , FhirStore
    , fhirStore
    , fsEnableUpdateCreate
    , fsNotificationConfig
    , fsDisableReferentialIntegrity
    , fsDisableResourceVersioning
    , fsName
    , fsVersion
    , fsStreamConfigs
    , fsLabels
    , fsDefaultSearchHandlingStrict

    -- * SegmentFields
    , SegmentFields
    , segmentFields
    , sfAddtional

    -- * DataSet
    , DataSet
    , dataSet
    , dsName
    , dsTimeZone

    -- * ImportDicomDataResponse
    , ImportDicomDataResponse
    , importDicomDataResponse

    -- * Field
    , Field
    , field
    , fMaxOccurs
    , fName
    , fType
    , fTable
    , fMinOccurs

    -- * SchemaSegment
    , SchemaSegment
    , schemaSegment
    , ssMaxOccurs
    , ssType
    , ssMinOccurs

    -- * UserDataMApping
    , UserDataMApping
    , userDataMApping
    , udmaResourceAttributes
    , udmaUserId
    , udmaName
    , udmaArchiveTime
    , udmaDataId
    , udmaArchived

    -- * Location
    , Location
    , location
    , lName
    , lMetadata
    , lDisplayName
    , lLabels
    , lLocationId

    -- * Operation
    , Operation
    , operation
    , oDone
    , oError
    , oResponse
    , oName
    , oMetadata

    -- * ImageConfig
    , ImageConfig
    , imageConfig
    , icTextRedactionMode

    -- * Empty
    , Empty
    , empty

    -- * ResultConsentDetails
    , ResultConsentDetails
    , resultConsentDetails
    , rcdAddtional

    -- * QueryAccessibleDataRequest
    , QueryAccessibleDataRequest
    , queryAccessibleDataRequest
    , qadrResourceAttributes
    , qadrGcsDestination
    , qadrRequestAttributes

    -- * RejectConsentRequest
    , RejectConsentRequest
    , rejectConsentRequest
    , rcrConsentArtifact

    -- * ImportDicomDataRequest
    , ImportDicomDataRequest
    , importDicomDataRequest
    , iddrGcsSource

    -- * QueryAccessibleDataRequestResourceAttributes
    , QueryAccessibleDataRequestResourceAttributes
    , queryAccessibleDataRequestResourceAttributes
    , qadrraAddtional

    -- * GoogleCloudHealthcareV1DicomBigQueryDestination
    , GoogleCloudHealthcareV1DicomBigQueryDestination
    , googleCloudHealthcareV1DicomBigQueryDestination
    , gchvdbqdForce
    , gchvdbqdTableURI

    -- * Hl7V2Store
    , Hl7V2Store
    , hl7V2Store
    , hvsNotificationConfigs
    , hvsRejectDuplicateMessage
    , hvsName
    , hvsParserConfig
    , hvsLabels

    -- * EvaluateUserConsentsRequestResponseView
    , EvaluateUserConsentsRequestResponseView (..)

    -- * GoogleCloudHealthcareV1DicomGcsSource
    , GoogleCloudHealthcareV1DicomGcsSource
    , googleCloudHealthcareV1DicomGcsSource
    , gchvdgsURI

    -- * Hl7V2NotificationConfig
    , Hl7V2NotificationConfig
    , hl7V2NotificationConfig
    , hvncPubsubTopic
    , hvncFilter

    -- * ConsentArtifact
    , ConsentArtifact
    , consentArtifact
    , caUserId
    , caGuardianSignature
    , caName
    , caMetadata
    , caUserSignature
    , caConsentContentVersion
    , caWitnessSignature
    , caConsentContentScreenshots

    -- * GoogleCloudHealthcareV1DeidentifyDeidentifyFhirStoreSummary
    , GoogleCloudHealthcareV1DeidentifyDeidentifyFhirStoreSummary
    , googleCloudHealthcareV1DeidentifyDeidentifyFhirStoreSummary

    -- * GoogleCloudHealthcareV1FhirGcsDestination
    , GoogleCloudHealthcareV1FhirGcsDestination
    , googleCloudHealthcareV1FhirGcsDestination
    , gchvfgdURIPrefix

    -- * GoogleCloudHealthcareV1ConsentPolicy
    , GoogleCloudHealthcareV1ConsentPolicy
    , googleCloudHealthcareV1ConsentPolicy
    , gchvcpResourceAttributes
    , gchvcpAuthorizationRule

    -- * ConsentMetadata
    , ConsentMetadata
    , consentMetadata
    , cmAddtional

    -- * SchemaPackage
    , SchemaPackage
    , schemaPackage
    , spSchemas
    , spTypes
    , spSchematizedParsingType
    , spIgnoreMinOccurs

    -- * ExportDicomDataResponse
    , ExportDicomDataResponse
    , exportDicomDataResponse

    -- * CheckDataAccessRequest
    , CheckDataAccessRequest
    , checkDataAccessRequest
    , cdarResponseView
    , cdarConsentList
    , cdarDataId
    , cdarRequestAttributes

    -- * ListAttributeDefinitionsResponse
    , ListAttributeDefinitionsResponse
    , listAttributeDefinitionsResponse
    , ladrNextPageToken
    , ladrAttributeDefinitions

    -- * ListConsentStoresResponse
    , ListConsentStoresResponse
    , listConsentStoresResponse
    , lcsrNextPageToken
    , lcsrConsentStores

    -- * StatusDetailsItem
    , StatusDetailsItem
    , statusDetailsItem
    , sdiAddtional

    -- * SchemaConfig
    , SchemaConfig
    , schemaConfig
    , scRecursiveStructureDepth
    , scSchemaType

    -- * ImageConfigTextRedactionMode
    , ImageConfigTextRedactionMode (..)

    -- * Consent
    , Consent
    , consent
    , cTtl
    , cState
    , cRevisionCreateTime
    , cConsentArtifact
    , cUserId
    , cName
    , cMetadata
    , cExpireTime
    , cRevisionId
    , cPolicies

    -- * EvaluateUserConsentsRequest
    , EvaluateUserConsentsRequest
    , evaluateUserConsentsRequest
    , eucrResourceAttributes
    , eucrResponseView
    , eucrUserId
    , eucrConsentList
    , eucrPageToken
    , eucrRequestAttributes
    , eucrPageSize

    -- * DateShiftConfig
    , DateShiftConfig
    , dateShiftConfig
    , dscCryptoKey

    -- * SchemaGroup
    , SchemaGroup
    , schemaGroup
    , sgMaxOccurs
    , sgMembers
    , sgName
    , sgChoice
    , sgMinOccurs

    -- * ArchiveUserDataMAppingRequest
    , ArchiveUserDataMAppingRequest
    , archiveUserDataMAppingRequest

    -- * SetIAMPolicyRequest
    , SetIAMPolicyRequest
    , setIAMPolicyRequest
    , siprUpdateMask
    , siprPolicy

    -- * DicomFilterConfig
    , DicomFilterConfig
    , dicomFilterConfig
    , dfcResourcePathsGcsURI

    -- * DeidentifySummary
    , DeidentifySummary
    , deidentifySummary

    -- * GoogleCloudHealthcareV1DicomGcsDestination
    , GoogleCloudHealthcareV1DicomGcsDestination
    , googleCloudHealthcareV1DicomGcsDestination
    , gchvdgdURIPrefix
    , gchvdgdMimeType

    -- * Result
    , Result
    , result
    , rConsentDetails
    , rConsented
    , rDataId

    -- * Resources
    , Resources
    , resources
    , rResources

    -- * ProgressCounter
    , ProgressCounter
    , progressCounter
    , pcPending
    , pcSuccess
    , pcFailure

    -- * AttributeDefinitionCategory
    , AttributeDefinitionCategory (..)

    -- * ProjectsLocationsDataSetsHl7V2StoresMessagesGetView
    , ProjectsLocationsDataSetsHl7V2StoresMessagesGetView (..)

    -- * ImportResourcesRequestContentStructure
    , ImportResourcesRequestContentStructure (..)

    -- * TypePrimitive
    , TypePrimitive (..)

    -- * AttributeDefinition
    , AttributeDefinition
    , attributeDefinition
    , adDataMAppingDefaultValue
    , adCategory
    , adName
    , adConsentDefaultValues
    , adAllowedValues
    , adDescription

    -- * GroupOrSegment
    , GroupOrSegment
    , groupOrSegment
    , gosGroup
    , gosSegment

    -- * GoogleCloudHealthcareV1DeidentifyDeidentifyDicomStoreSummary
    , GoogleCloudHealthcareV1DeidentifyDeidentifyDicomStoreSummary
    , googleCloudHealthcareV1DeidentifyDeidentifyDicomStoreSummary

    -- * FieldMetadataAction
    , FieldMetadataAction (..)

    -- * ConsentStore
    , ConsentStore
    , consentStore
    , csName
    , csLabels
    , csEnableConsentCreateOnUpdate
    , csDefaultConsentTtl

    -- * ConsentList
    , ConsentList
    , consentList
    , clConsents

    -- * EvaluateUserConsentsResponse
    , EvaluateUserConsentsResponse
    , evaluateUserConsentsResponse
    , eucrNextPageToken
    , eucrResults

    -- * ArchiveUserDataMAppingResponse
    , ArchiveUserDataMAppingResponse
    , archiveUserDataMAppingResponse

    -- * ConsentStoreLabels
    , ConsentStoreLabels
    , consentStoreLabels
    , cslAddtional

    -- * SchemaPackageSchematizedParsingType
    , SchemaPackageSchematizedParsingType (..)

    -- * ConsentEvaluationEvaluationResult
    , ConsentEvaluationEvaluationResult (..)

    -- * SchematizedData
    , SchematizedData
    , schematizedData
    , sdData
    , sdError

    -- * FieldMetadata
    , FieldMetadata
    , fieldMetadata
    , fmAction
    , fmPaths

    -- * DeidentifyConfig
    , DeidentifyConfig
    , deidentifyConfig
    , dcDicom
    , dcImage
    , dcFhir
    , dcText

    -- * QueryAccessibleDataResponse
    , QueryAccessibleDataResponse
    , queryAccessibleDataResponse
    , qadrGcsURIs

    -- * RevokeConsentRequest
    , RevokeConsentRequest
    , revokeConsentRequest
    , rConsentArtifact

    -- * FhirStoreLabels
    , FhirStoreLabels
    , fhirStoreLabels
    , fslAddtional

    -- * DeidentifyDicomStoreRequest
    , DeidentifyDicomStoreRequest
    , deidentifyDicomStoreRequest
    , ddsrConfig
    , ddsrFilterConfig
    , ddsrDestinationStore

    -- * AuditLogConfigLogType
    , AuditLogConfigLogType (..)

    -- * ReplaceWithInfoTypeConfig
    , ReplaceWithInfoTypeConfig
    , replaceWithInfoTypeConfig

    -- * ListConsentArtifactsResponse
    , ListConsentArtifactsResponse
    , listConsentArtifactsResponse
    , lcarNextPageToken
    , lcarConsentArtifacts

    -- * IngestMessageResponse
    , IngestMessageResponse
    , ingestMessageResponse
    , imrHl7Ack
    , imrMessage

    -- * Xgafv
    , Xgafv (..)

    -- * SchemaConfigSchemaType
    , SchemaConfigSchemaType (..)

    -- * TestIAMPermissionsRequest
    , TestIAMPermissionsRequest
    , testIAMPermissionsRequest
    , tiprPermissions

    -- * ListHl7V2StoresResponse
    , ListHl7V2StoresResponse
    , listHl7V2StoresResponse
    , lhvsrNextPageToken
    , lhvsrHl7V2Stores

    -- * CheckDataAccessResponseConsentDetails
    , CheckDataAccessResponseConsentDetails
    , checkDataAccessResponseConsentDetails
    , cdarcdAddtional

    -- * ConsentArtifactMetadata
    , ConsentArtifactMetadata
    , consentArtifactMetadata
    , camAddtional

    -- * DicomConfigFilterProFile
    , DicomConfigFilterProFile (..)

    -- * ImportResourcesRequest
    , ImportResourcesRequest
    , importResourcesRequest
    , irrGcsSource
    , irrContentStructure

    -- * Hl7V2StoreLabels
    , Hl7V2StoreLabels
    , hl7V2StoreLabels
    , hvslAddtional

    -- * FhirFilter
    , FhirFilter
    , fhirFilter
    , ffResources

    -- * CheckDataAccessRequestResponseView
    , CheckDataAccessRequestResponseView (..)

    -- * ParserConfig
    , ParserConfig
    , parserConfig
    , pcSegmentTerminator
    , pcSchema
    , pcAllowNullHeader

    -- * ProjectsLocationsDataSetsHl7V2StoresMessagesListView
    , ProjectsLocationsDataSetsHl7V2StoresMessagesListView (..)

    -- * CheckDataAccessRequestRequestAttributes
    , CheckDataAccessRequestRequestAttributes
    , checkDataAccessRequestRequestAttributes
    , cdarraAddtional

    -- * HTTPBody
    , HTTPBody
    , hTTPBody
    , httpbExtensions
    , httpbData
    , httpbContentType

    -- * TagFilterList
    , TagFilterList
    , tagFilterList
    , tflTags

    -- * TestIAMPermissionsResponse
    , TestIAMPermissionsResponse
    , testIAMPermissionsResponse
    , tiamprPermissions

    -- * ListDataSetsResponse
    , ListDataSetsResponse
    , listDataSetsResponse
    , ldsrNextPageToken
    , ldsrDataSets

    -- * Hl7SchemaConfig
    , Hl7SchemaConfig
    , hl7SchemaConfig
    , hscMessageSchemaConfigs
    , hscVersion

    -- * FhirStoreVersion
    , FhirStoreVersion (..)

    -- * ConsentEvaluation
    , ConsentEvaluation
    , consentEvaluation
    , ceEvaluationResult

    -- * EvaluateUserConsentsRequestRequestAttributes
    , EvaluateUserConsentsRequestRequestAttributes
    , evaluateUserConsentsRequestRequestAttributes
    , eucrraAddtional

    -- * Policy
    , Policy
    , policy
    , pAuditConfigs
    , pEtag
    , pVersion
    , pBindings

    -- * ListFhirStoresResponse
    , ListFhirStoresResponse
    , listFhirStoresResponse
    , lfsrNextPageToken
    , lfsrFhirStores

    -- * LocationLabels
    , LocationLabels
    , locationLabels
    , llAddtional

    -- * IngestMessageRequest
    , IngestMessageRequest
    , ingestMessageRequest
    , iMessage

    -- * Type
    , Type
    , type'
    , tName
    , tPrimitive
    , tFields

    -- * LocationMetadata
    , LocationMetadata
    , locationMetadata
    , lmAddtional

    -- * OperationMetadata
    , OperationMetadata
    , operationMetadata
    , omLogsURL
    , omCounter
    , omEndTime
    , omAPIMethodName
    , omCancelRequested
    , omCreateTime

    -- * Message
    , Message
    , message
    , mData
    , mMessageType
    , mName
    , mSchematizedData
    , mPatientIds
    , mLabels
    , mSendTime
    , mSendFacility
    , mCreateTime
    , mParsedData

    -- * Hl7SchemaConfigMessageSchemaConfigs
    , Hl7SchemaConfigMessageSchemaConfigs
    , hl7SchemaConfigMessageSchemaConfigs
    , hscmscAddtional

    -- * CryptoHashConfig
    , CryptoHashConfig
    , cryptoHashConfig
    , chcCryptoKey

    -- * DicomStore
    , DicomStore
    , dicomStore
    , dNotificationConfig
    , dName
    , dLabels

    -- * GoogleCloudHealthcareV1ConsentGcsDestination
    , GoogleCloudHealthcareV1ConsentGcsDestination
    , googleCloudHealthcareV1ConsentGcsDestination
    , gchvcgdURIPrefix

    -- * QueryAccessibleDataRequestRequestAttributes
    , QueryAccessibleDataRequestRequestAttributes
    , queryAccessibleDataRequestRequestAttributes
    , qAddtional

    -- * AuditLogConfig
    , AuditLogConfig
    , auditLogConfig
    , alcLogType
    , alcExemptedMembers

    -- * EvaluateUserConsentsRequestResourceAttributes
    , EvaluateUserConsentsRequestResourceAttributes
    , evaluateUserConsentsRequestResourceAttributes
    , eAddtional

    -- * GoogleCloudHealthcareV1FhirBigQueryDestinationWriteDisPosition
    , GoogleCloudHealthcareV1FhirBigQueryDestinationWriteDisPosition (..)

    -- * Segment
    , Segment
    , segment
    , sSetId
    , sSegmentId
    , sFields

    -- * MessageLabels
    , MessageLabels
    , messageLabels
    , mlAddtional

    -- * SearchResourcesRequest
    , SearchResourcesRequest
    , searchResourcesRequest
    , srrResourceType

    -- * DeidentifyDataSetRequest
    , DeidentifyDataSetRequest
    , deidentifyDataSetRequest
    , dConfig
    , dDestinationDataSet

    -- * ExportResourcesResponse
    , ExportResourcesResponse
    , exportResourcesResponse

    -- * PatientId
    , PatientId
    , patientId
    , piValue
    , piType

    -- * DicomConfig
    , DicomConfig
    , dicomConfig
    , dcSkipIdRedaction
    , dcKeepList
    , dcRemoveList
    , dcFilterProFile

    -- * StreamConfig
    , StreamConfig
    , streamConfig
    , scBigQueryDestination
    , scResourceTypes

    -- * OperationResponse
    , OperationResponse
    , operationResponse
    , orAddtional

    -- * CreateMessageRequest
    , CreateMessageRequest
    , createMessageRequest
    , cmrMessage

    -- * DeidentifyFhirStoreRequest
    , DeidentifyFhirStoreRequest
    , deidentifyFhirStoreRequest
    , dfsrResourceFilter
    , dfsrConfig
    , dfsrDestinationStore

    -- * ActivateConsentRequest
    , ActivateConsentRequest
    , activateConsentRequest
    , acrTtl
    , acrConsentArtifact
    , acrExpireTime

    -- * DicomStoreLabels
    , DicomStoreLabels
    , dicomStoreLabels
    , dslAddtional

    -- * ListMessagesResponse
    , ListMessagesResponse
    , listMessagesResponse
    , lmrNextPageToken
    , lmrHl7V2Messages

    -- * GoogleCloudHealthcareV1FhirBigQueryDestination
    , GoogleCloudHealthcareV1FhirBigQueryDestination
    , googleCloudHealthcareV1FhirBigQueryDestination
    , gchvfbqdWriteDisPosition
    , gchvfbqdForce
    , gchvfbqdSchemaConfig
    , gchvfbqdDataSetURI

    -- * CheckDataAccessResponse
    , CheckDataAccessResponse
    , checkDataAccessResponse
    , cdarConsentDetails
    , cdarConsented

    -- * GoogleCloudHealthcareV1FhirGcsSource
    , GoogleCloudHealthcareV1FhirGcsSource
    , googleCloudHealthcareV1FhirGcsSource
    , gchvfgsURI

    -- * ListDicomStoresResponse
    , ListDicomStoresResponse
    , listDicomStoresResponse
    , lNextPageToken
    , lDicomStores

    -- * ConsentState
    , ConsentState (..)

    -- * SignatureMetadata
    , SignatureMetadata
    , signatureMetadata
    , smAddtional

    -- * Binding
    , Binding
    , binding
    , bMembers
    , bRole
    , bCondition

    -- * ExportDicomDataRequest
    , ExportDicomDataRequest
    , exportDicomDataRequest
    , eddrBigQueryDestination
    , eddrGcsDestination

    -- * ParsedData
    , ParsedData
    , parsedData
    , pdSegments
    ) where

import Network.Google.Healthcare.Types.Product
import Network.Google.Healthcare.Types.Sum
import Network.Google.Prelude

-- | Default request referring to version 'v1' of the Cloud Healthcare API. This contains the host and root path used as a starting point for constructing service requests.
healthcareService :: ServiceConfig
healthcareService
  = defaultService (ServiceId "healthcare:v1")
      "healthcare.googleapis.com"

-- | See, edit, configure, and delete your Google Cloud Platform data
cloudPlatformScope :: Proxy '["https://www.googleapis.com/auth/cloud-platform"]
cloudPlatformScope = Proxy
