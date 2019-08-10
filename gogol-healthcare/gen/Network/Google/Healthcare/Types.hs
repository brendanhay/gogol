{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
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

    -- * RedactConfig
    , RedactConfig
    , redactConfig

    -- * DeidentifyErrorDetails
    , DeidentifyErrorDetails
    , deidentifyErrorDetails
    , dedSuccessStoreCount
    , dedSuccessResourceCount
    , dedFailureResourceCount
    , dedFailureStoreCount

    -- * NotificationConfig
    , NotificationConfig
    , notificationConfig
    , ncPubsubTopic

    -- * GoogleCloudHealthcareV1beta1FhirRestImportResourcesResponse
    , GoogleCloudHealthcareV1beta1FhirRestImportResourcesResponse
    , googleCloudHealthcareV1beta1FhirRestImportResourcesResponse
    , gchvfrirrFhirStore
    , gchvfrirrInputSize

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

    -- * GoogleCloudHealthcareV1beta1DicomGcsDestination
    , GoogleCloudHealthcareV1beta1DicomGcsDestination
    , googleCloudHealthcareV1beta1DicomGcsDestination
    , gchvdgdURIPrefix
    , gchvdgdMimeType

    -- * FhirStore
    , FhirStore
    , fhirStore
    , fsEnableUpdateCreate
    , fsNotificationConfig
    , fsDisableReferentialIntegrity
    , fsDisableResourceVersioning
    , fsName
    , fsLabels
    , fsEnableHistoryImport

    -- * SegmentFields
    , SegmentFields
    , segmentFields
    , sfAddtional

    -- * DataSet
    , DataSet
    , dataSet
    , dsName
    , dsTimeZone

    -- * GoogleCloudHealthcareV1beta1FhirRestGcsSource
    , GoogleCloudHealthcareV1beta1FhirRestGcsSource
    , googleCloudHealthcareV1beta1FhirRestGcsSource
    , gchvfrgsURI

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

    -- * ImportDicomDataRequest
    , ImportDicomDataRequest
    , importDicomDataRequest
    , iddrGcsSource

    -- * Hl7V2Store
    , Hl7V2Store
    , hl7V2Store
    , hvsNotificationConfig
    , hvsName
    , hvsParserConfig
    , hvsLabels

    -- * GoogleCloudHealthcareV1beta1FhirRestGcsDestination
    , GoogleCloudHealthcareV1beta1FhirRestGcsDestination
    , googleCloudHealthcareV1beta1FhirRestGcsDestination
    , gchvfrgdURIPrefix

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

    -- * GoogleCloudHealthcareV1beta1FhirRestImportResourcesErrorDetails
    , GoogleCloudHealthcareV1beta1FhirRestImportResourcesErrorDetails
    , googleCloudHealthcareV1beta1FhirRestImportResourcesErrorDetails
    , gchvfriredFhirStore
    , gchvfriredErrorCount
    , gchvfriredSuccessCount
    , gchvfriredInputSize

    -- * DateShiftConfig
    , DateShiftConfig
    , dateShiftConfig
    , dscCryptoKey

    -- * SetIAMPolicyRequest
    , SetIAMPolicyRequest
    , setIAMPolicyRequest
    , siprUpdateMask
    , siprPolicy

    -- * DeidentifySummary
    , DeidentifySummary
    , deidentifySummary
    , dsSuccessStoreCount
    , dsSuccessResourceCount

    -- * ProgressCounter
    , ProgressCounter
    , progressCounter
    , pcPending
    , pcSuccess
    , pcFailure

    -- * ImportResourcesRequestContentStructure
    , ImportResourcesRequestContentStructure (..)

    -- * FieldMetadataAction
    , FieldMetadataAction (..)

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

    -- * FhirStoreLabels
    , FhirStoreLabels
    , fhirStoreLabels
    , fslAddtional

    -- * AuditLogConfigLogType
    , AuditLogConfigLogType (..)

    -- * GoogleCloudHealthcareV1beta1FhirBigQueryDestination
    , GoogleCloudHealthcareV1beta1FhirBigQueryDestination
    , googleCloudHealthcareV1beta1FhirBigQueryDestination
    , gchvfbqdSchemaConfig
    , gchvfbqdDataSetURI

    -- * ReplaceWithInfoTypeConfig
    , ReplaceWithInfoTypeConfig
    , replaceWithInfoTypeConfig

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

    -- * ParserConfig
    , ParserConfig
    , parserConfig
    , pcSegmentTerminator
    , pcAllowNullHeader

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

    -- * LocationMetadata
    , LocationMetadata
    , locationMetadata
    , lmAddtional

    -- * OperationMetadata
    , OperationMetadata
    , operationMetadata
    , omCounter
    , omEndTime
    , omAPIMethodName
    , omCreateTime

    -- * Message
    , Message
    , message
    , mData
    , mMessageType
    , mName
    , mPatientIds
    , mLabels
    , mSendTime
    , mSendFacility
    , mCreateTime
    , mParsedData

    -- * GoogleCloudHealthcareV1beta1DicomGcsSource
    , GoogleCloudHealthcareV1beta1DicomGcsSource
    , googleCloudHealthcareV1beta1DicomGcsSource
    , gchvdgsURI

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

    -- * ImportDicomDataErrorDetails
    , ImportDicomDataErrorDetails
    , importDicomDataErrorDetails
    , iddedSampleErrors

    -- * AuditLogConfig
    , AuditLogConfig
    , auditLogConfig
    , alcLogType
    , alcExemptedMembers

    -- * GoogleCloudHealthcareV1beta1DicomBigQueryDestination
    , GoogleCloudHealthcareV1beta1DicomBigQueryDestination
    , googleCloudHealthcareV1beta1DicomBigQueryDestination
    , gchvdbqdForce
    , gchvdbqdTableURI

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
    , ddsrConfig
    , ddsrDestinationDataSet

    -- * PatientId
    , PatientId
    , patientId
    , piValue
    , piType

    -- * GoogleCloudHealthcareV1beta1FhirRestExportResourcesResponse
    , GoogleCloudHealthcareV1beta1FhirRestExportResourcesResponse
    , googleCloudHealthcareV1beta1FhirRestExportResourcesResponse
    , gchvfrerrFhirStore
    , gchvfrerrResourceCount

    -- * DicomConfig
    , DicomConfig
    , dicomConfig
    , dcKeepList
    , dcRemoveList
    , dcFilterProFile

    -- * OperationResponse
    , OperationResponse
    , operationResponse
    , orAddtional

    -- * CreateMessageRequest
    , CreateMessageRequest
    , createMessageRequest
    , cmrMessage

    -- * DicomStoreLabels
    , DicomStoreLabels
    , dicomStoreLabels
    , dslAddtional

    -- * ListMessagesResponse
    , ListMessagesResponse
    , listMessagesResponse
    , lmrNextPageToken
    , lmrMessages

    -- * ListDicomStoresResponse
    , ListDicomStoresResponse
    , listDicomStoresResponse
    , lNextPageToken
    , lDicomStores

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

    -- * ErrorDetail
    , ErrorDetail
    , errorDetail
    , edError
    , edResource
    ) where

import           Network.Google.Healthcare.Types.Product
import           Network.Google.Healthcare.Types.Sum
import           Network.Google.Prelude

-- | Default request referring to version 'v1beta1' of the Cloud Healthcare API. This contains the host and root path used as a starting point for constructing service requests.
healthcareService :: ServiceConfig
healthcareService
  = defaultService (ServiceId "healthcare:v1beta1")
      "healthcare.googleapis.com"

-- | View and manage your data across Google Cloud Platform services
cloudPlatformScope :: Proxy '["https://www.googleapis.com/auth/cloud-platform"]
cloudPlatformScope = Proxy
