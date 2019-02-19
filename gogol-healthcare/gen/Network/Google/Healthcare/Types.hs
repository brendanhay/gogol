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
    , errBigQueryDestinationLocation
    , errGcsDestinationLocation

    -- * AuditConfig
    , AuditConfig
    , auditConfig
    , acService
    , acAuditLogConfigs

    -- * HTTPBodyExtensionsItem
    , HTTPBodyExtensionsItem
    , hTTPBodyExtensionsItem
    , httpbeiAddtional

    -- * Annotation
    , Annotation
    , annotation
    , aTextAnnotation
    , aImageAnnotation
    , aName
    , aAnnotationSource
    , aResourceAnnotation

    -- * NotificationConfig
    , NotificationConfig
    , notificationConfig
    , ncPubsubTopic

    -- * FhirConfig
    , FhirConfig
    , fhirConfig

    -- * Expr
    , Expr
    , expr
    , eLocation
    , eExpression
    , eTitle
    , eDescription

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

    -- * GetIAMPolicyRequest
    , GetIAMPolicyRequest
    , getIAMPolicyRequest

    -- * FhirStore
    , FhirStore
    , fhirStore
    , fsEnableUpdateCreate
    , fsNotificationConfig
    , fsDisableReferentialIntegrity
    , fsDisableResourceVersioning
    , fsName

    -- * SegmentFields
    , SegmentFields
    , segmentFields
    , sfAddtional

    -- * DataSet
    , DataSet
    , dataSet
    , dsName
    , dsTimeZone

    -- * BigQueryDestination
    , BigQueryDestination
    , bigQueryDestination
    , bqdDataSet
    , bqdOverwriteTable
    , bqdTable

    -- * ListAnnotationsResponse
    , ListAnnotationsResponse
    , listAnnotationsResponse
    , larAnnotations
    , larNextPageToken

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

    -- * Finding
    , Finding
    , finding
    , fStart
    , fInfoType
    , fEnd

    -- * ImageConfig
    , ImageConfig
    , imageConfig
    , icRedactAllText

    -- * Empty
    , Empty
    , empty

    -- * ImportError
    , ImportError
    , importError
    , ieStatus
    , ieResource

    -- * ImportDicomDataRequest
    , ImportDicomDataRequest
    , importDicomDataRequest
    , iddrInputConfig

    -- * Hl7V2Store
    , Hl7V2Store
    , hl7V2Store
    , hvsNotificationConfig
    , hvsName
    , hvsParserConfig

    -- * AnnotationStore
    , AnnotationStore
    , annotationStore
    , asName
    , asLabels

    -- * BoundingPoly
    , BoundingPoly
    , boundingPoly
    , bpLabel
    , bpVertices

    -- * ImageAnnotation
    , ImageAnnotation
    , imageAnnotation
    , iaBoundingPolys

    -- * Vertex
    , Vertex
    , vertex
    , vX
    , vY

    -- * GcsDestination
    , GcsDestination
    , gcsDestination
    , gdURIPrefix
    , gdMimeType

    -- * BigQueryLocation
    , BigQueryLocation
    , bigQueryLocation
    , bqlSchemaConfig
    , bqlDataSetId
    , bqlProjectId

    -- * StatusDetailsItem
    , StatusDetailsItem
    , statusDetailsItem
    , sdiAddtional

    -- * SchemaConfig
    , SchemaConfig
    , schemaConfig
    , scRecursiveStructureDepth
    , scSchemaType

    -- * SetIAMPolicyRequest
    , SetIAMPolicyRequest
    , setIAMPolicyRequest
    , siprUpdateMask
    , siprPolicy

    -- * ProgressCounter
    , ProgressCounter
    , progressCounter
    , pcPending
    , pcSuccess
    , pcFailure

    -- * ImportResourcesRequestContentStructure
    , ImportResourcesRequestContentStructure (..)

    -- * InputConfig
    , InputConfig
    , inputConfig
    , icGcsSource

    -- * SensitiveTextAnnotationDetails
    , SensitiveTextAnnotationDetails
    , sensitiveTextAnnotationDetails
    , stadAddtional

    -- * DeidentifyConfig
    , DeidentifyConfig
    , deidentifyConfig
    , dcDicom
    , dcImage
    , dcFhir

    -- * AuditLogConfigLogType
    , AuditLogConfigLogType (..)

    -- * ListAnnotationStoresResponse
    , ListAnnotationStoresResponse
    , listAnnotationStoresResponse
    , lasrNextPageToken
    , lasrAnnotationStores

    -- * IngestMessageResponse
    , IngestMessageResponse
    , ingestMessageResponse
    , imrHl7Ack
    , imrMessage

    -- * Xgafv
    , Xgafv (..)

    -- * GcsDataLocation
    , GcsDataLocation
    , gcsDataLocation
    , gdlGcsURI

    -- * AnnotationSource
    , AnnotationSource
    , annotationSource
    , asCloudHealthcareSource

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

    -- * ImportResourcesRequest
    , ImportResourcesRequest
    , importResourcesRequest
    , irrGcsSourceLocation
    , irrGcsErrorLocation
    , irrContentStructure

    -- * ResourceAnnotation
    , ResourceAnnotation
    , resourceAnnotation
    , raLabel

    -- * AnnotationStoreLabels
    , AnnotationStoreLabels
    , annotationStoreLabels
    , aslAddtional

    -- * ParserConfig
    , ParserConfig
    , parserConfig
    , pcSegmentTerminator
    , pcAllowNullHeader

    -- * CloudHealthcareSource
    , CloudHealthcareSource
    , cloudHealthcareSource
    , chsName

    -- * OutputConfig
    , OutputConfig
    , outputConfig
    , ocBigQueryDestination
    , ocGcsDestination

    -- * HTTPBody
    , HTTPBody
    , hTTPBody
    , httpbExtensions
    , httpbData
    , httpbContentType

    -- * TestIAMPermissionsResponse
    , TestIAMPermissionsResponse
    , testIAMPermissionsResponse
    , tiamprPermissions

    -- * ListDataSetsResponse
    , ListDataSetsResponse
    , listDataSetsResponse
    , ldsrNextPageToken
    , ldsrDataSets

    -- * GoogleCloudHealthcareV1alphaFhirRestImportResourcesResponse
    , GoogleCloudHealthcareV1alphaFhirRestImportResourcesResponse
    , googleCloudHealthcareV1alphaFhirRestImportResourcesResponse
    , gchvfrirrErrorCount
    , gchvfrirrName
    , gchvfrirrSuccessCount
    , gchvfrirrInputSize

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

    -- * GoogleCloudHealthcareV1alphaGcsSource
    , GoogleCloudHealthcareV1alphaGcsSource
    , googleCloudHealthcareV1alphaGcsSource
    , gchvgsContentURI

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

    -- * DicomStore
    , DicomStore
    , dicomStore
    , dNotificationConfig
    , dName

    -- * ImportDicomDataErrorDetails
    , ImportDicomDataErrorDetails
    , importDicomDataErrorDetails
    , iddedErrors

    -- * AuditLogConfig
    , AuditLogConfig
    , auditLogConfig
    , alcLogType
    , alcExemptedMembers

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

    -- * DicomConfig
    , DicomConfig
    , dicomConfig
    , dcWhiteListTags

    -- * OperationResponse
    , OperationResponse
    , operationResponse
    , orAddtional

    -- * CreateMessageRequest
    , CreateMessageRequest
    , createMessageRequest
    , cmrMessage

    -- * SensitiveTextAnnotation
    , SensitiveTextAnnotation
    , sensitiveTextAnnotation
    , staDetails

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

    -- * GoogleCloudHealthcareV1alphaFhirRestExportResourcesResponse
    , GoogleCloudHealthcareV1alphaFhirRestExportResourcesResponse
    , googleCloudHealthcareV1alphaFhirRestExportResourcesResponse
    , gchvfrerrName
    , gchvfrerrResourceCount

    -- * Binding
    , Binding
    , binding
    , bMembers
    , bRole
    , bCondition

    -- * Detail
    , Detail
    , detail
    , dFindings

    -- * ExportDicomDataRequest
    , ExportDicomDataRequest
    , exportDicomDataRequest
    , eddrOutputConfig

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

-- | Default request referring to version 'v1alpha' of the Cloud Healthcare API. This contains the host and root path used as a starting point for constructing service requests.
healthcareService :: ServiceConfig
healthcareService
  = defaultService (ServiceId "healthcare:v1alpha")
      "healthcare.googleapis.com"

-- | View and manage your data across Google Cloud Platform services
cloudPlatformScope :: Proxy '["https://www.googleapis.com/auth/cloud-platform"]
cloudPlatformScope = Proxy
