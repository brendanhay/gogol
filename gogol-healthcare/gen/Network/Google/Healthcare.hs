{-# LANGUAGE DataKinds         #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE TypeOperators     #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Healthcare
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- -- |
--
-- /See:/ <https://cloud.google.com/healthcare Cloud Healthcare API Reference>
module Network.Google.Healthcare
    (
    -- * Service Configuration
      healthcareService

    -- * OAuth Scopes
    , cloudPlatformScope

    -- * API Declaration
    , HealthcareAPI

    -- * Resources

    -- ** healthcare.projects.locations.datasets.annotationStores.annotations.create
    , module Network.Google.Resource.Healthcare.Projects.Locations.DataSets.AnnotationStores.Annotations.Create

    -- ** healthcare.projects.locations.datasets.annotationStores.annotations.delete
    , module Network.Google.Resource.Healthcare.Projects.Locations.DataSets.AnnotationStores.Annotations.Delete

    -- ** healthcare.projects.locations.datasets.annotationStores.annotations.get
    , module Network.Google.Resource.Healthcare.Projects.Locations.DataSets.AnnotationStores.Annotations.Get

    -- ** healthcare.projects.locations.datasets.annotationStores.annotations.list
    , module Network.Google.Resource.Healthcare.Projects.Locations.DataSets.AnnotationStores.Annotations.List

    -- ** healthcare.projects.locations.datasets.annotationStores.annotations.patch
    , module Network.Google.Resource.Healthcare.Projects.Locations.DataSets.AnnotationStores.Annotations.Patch

    -- ** healthcare.projects.locations.datasets.annotationStores.create
    , module Network.Google.Resource.Healthcare.Projects.Locations.DataSets.AnnotationStores.Create

    -- ** healthcare.projects.locations.datasets.annotationStores.delete
    , module Network.Google.Resource.Healthcare.Projects.Locations.DataSets.AnnotationStores.Delete

    -- ** healthcare.projects.locations.datasets.annotationStores.get
    , module Network.Google.Resource.Healthcare.Projects.Locations.DataSets.AnnotationStores.Get

    -- ** healthcare.projects.locations.datasets.annotationStores.getIamPolicy
    , module Network.Google.Resource.Healthcare.Projects.Locations.DataSets.AnnotationStores.GetIAMPolicy

    -- ** healthcare.projects.locations.datasets.annotationStores.list
    , module Network.Google.Resource.Healthcare.Projects.Locations.DataSets.AnnotationStores.List

    -- ** healthcare.projects.locations.datasets.annotationStores.patch
    , module Network.Google.Resource.Healthcare.Projects.Locations.DataSets.AnnotationStores.Patch

    -- ** healthcare.projects.locations.datasets.annotationStores.setIamPolicy
    , module Network.Google.Resource.Healthcare.Projects.Locations.DataSets.AnnotationStores.SetIAMPolicy

    -- ** healthcare.projects.locations.datasets.annotationStores.testIamPermissions
    , module Network.Google.Resource.Healthcare.Projects.Locations.DataSets.AnnotationStores.TestIAMPermissions

    -- ** healthcare.projects.locations.datasets.create
    , module Network.Google.Resource.Healthcare.Projects.Locations.DataSets.Create

    -- ** healthcare.projects.locations.datasets.deidentify
    , module Network.Google.Resource.Healthcare.Projects.Locations.DataSets.Deidentify

    -- ** healthcare.projects.locations.datasets.delete
    , module Network.Google.Resource.Healthcare.Projects.Locations.DataSets.Delete

    -- ** healthcare.projects.locations.datasets.dicomStores.create
    , module Network.Google.Resource.Healthcare.Projects.Locations.DataSets.DicomStores.Create

    -- ** healthcare.projects.locations.datasets.dicomStores.delete
    , module Network.Google.Resource.Healthcare.Projects.Locations.DataSets.DicomStores.Delete

    -- ** healthcare.projects.locations.datasets.dicomStores.dicomWeb.dicomWebDelete
    , module Network.Google.Resource.Healthcare.Projects.Locations.DataSets.DicomStores.DicomWeb.DicomWebDelete

    -- ** healthcare.projects.locations.datasets.dicomStores.dicomWeb.dicomWebGet
    , module Network.Google.Resource.Healthcare.Projects.Locations.DataSets.DicomStores.DicomWeb.DicomWebGet

    -- ** healthcare.projects.locations.datasets.dicomStores.dicomWeb.dicomWebPost
    , module Network.Google.Resource.Healthcare.Projects.Locations.DataSets.DicomStores.DicomWeb.DicomWebPost

    -- ** healthcare.projects.locations.datasets.dicomStores.export
    , module Network.Google.Resource.Healthcare.Projects.Locations.DataSets.DicomStores.Export

    -- ** healthcare.projects.locations.datasets.dicomStores.get
    , module Network.Google.Resource.Healthcare.Projects.Locations.DataSets.DicomStores.Get

    -- ** healthcare.projects.locations.datasets.dicomStores.getIamPolicy
    , module Network.Google.Resource.Healthcare.Projects.Locations.DataSets.DicomStores.GetIAMPolicy

    -- ** healthcare.projects.locations.datasets.dicomStores.import
    , module Network.Google.Resource.Healthcare.Projects.Locations.DataSets.DicomStores.Import

    -- ** healthcare.projects.locations.datasets.dicomStores.list
    , module Network.Google.Resource.Healthcare.Projects.Locations.DataSets.DicomStores.List

    -- ** healthcare.projects.locations.datasets.dicomStores.patch
    , module Network.Google.Resource.Healthcare.Projects.Locations.DataSets.DicomStores.Patch

    -- ** healthcare.projects.locations.datasets.dicomStores.setIamPolicy
    , module Network.Google.Resource.Healthcare.Projects.Locations.DataSets.DicomStores.SetIAMPolicy

    -- ** healthcare.projects.locations.datasets.dicomStores.testIamPermissions
    , module Network.Google.Resource.Healthcare.Projects.Locations.DataSets.DicomStores.TestIAMPermissions

    -- ** healthcare.projects.locations.datasets.fhirStores.create
    , module Network.Google.Resource.Healthcare.Projects.Locations.DataSets.FhirStores.Create

    -- ** healthcare.projects.locations.datasets.fhirStores.delete
    , module Network.Google.Resource.Healthcare.Projects.Locations.DataSets.FhirStores.Delete

    -- ** healthcare.projects.locations.datasets.fhirStores.executeBundle
    , module Network.Google.Resource.Healthcare.Projects.Locations.DataSets.FhirStores.ExecuteBundle

    -- ** healthcare.projects.locations.datasets.fhirStores.export
    , module Network.Google.Resource.Healthcare.Projects.Locations.DataSets.FhirStores.Export

    -- ** healthcare.projects.locations.datasets.fhirStores.get
    , module Network.Google.Resource.Healthcare.Projects.Locations.DataSets.FhirStores.Get

    -- ** healthcare.projects.locations.datasets.fhirStores.getIamPolicy
    , module Network.Google.Resource.Healthcare.Projects.Locations.DataSets.FhirStores.GetIAMPolicy

    -- ** healthcare.projects.locations.datasets.fhirStores.getMetadata
    , module Network.Google.Resource.Healthcare.Projects.Locations.DataSets.FhirStores.GetMetadata

    -- ** healthcare.projects.locations.datasets.fhirStores.import
    , module Network.Google.Resource.Healthcare.Projects.Locations.DataSets.FhirStores.Import

    -- ** healthcare.projects.locations.datasets.fhirStores.list
    , module Network.Google.Resource.Healthcare.Projects.Locations.DataSets.FhirStores.List

    -- ** healthcare.projects.locations.datasets.fhirStores.patch
    , module Network.Google.Resource.Healthcare.Projects.Locations.DataSets.FhirStores.Patch

    -- ** healthcare.projects.locations.datasets.fhirStores.resources.Patient.get$everything
    , module Network.Google.Resource.Healthcare.Projects.Locations.DataSets.FhirStores.Resources.Patient.GetEverything

    -- ** healthcare.projects.locations.datasets.fhirStores.resources._history.get
    , module Network.Google.Resource.Healthcare.Projects.Locations.DataSets.FhirStores.Resources.History.Get

    -- ** healthcare.projects.locations.datasets.fhirStores.resources._history.list
    , module Network.Google.Resource.Healthcare.Projects.Locations.DataSets.FhirStores.Resources.History.List

    -- ** healthcare.projects.locations.datasets.fhirStores.resources._search
    , module Network.Google.Resource.Healthcare.Projects.Locations.DataSets.FhirStores.Resources.Search

    -- ** healthcare.projects.locations.datasets.fhirStores.resources.conditionalDeleteResource
    , module Network.Google.Resource.Healthcare.Projects.Locations.DataSets.FhirStores.Resources.ConditionalDeleteResource

    -- ** healthcare.projects.locations.datasets.fhirStores.resources.conditionalPatchResource
    , module Network.Google.Resource.Healthcare.Projects.Locations.DataSets.FhirStores.Resources.ConditionalPatchResource

    -- ** healthcare.projects.locations.datasets.fhirStores.resources.conditionalUpdateResource
    , module Network.Google.Resource.Healthcare.Projects.Locations.DataSets.FhirStores.Resources.ConditionalUpdateResource

    -- ** healthcare.projects.locations.datasets.fhirStores.resources.createResource
    , module Network.Google.Resource.Healthcare.Projects.Locations.DataSets.FhirStores.Resources.CreateResource

    -- ** healthcare.projects.locations.datasets.fhirStores.resources.delete
    , module Network.Google.Resource.Healthcare.Projects.Locations.DataSets.FhirStores.Resources.Delete

    -- ** healthcare.projects.locations.datasets.fhirStores.resources.delete$purge
    , module Network.Google.Resource.Healthcare.Projects.Locations.DataSets.FhirStores.Resources.DeletePurge

    -- ** healthcare.projects.locations.datasets.fhirStores.resources.get
    , module Network.Google.Resource.Healthcare.Projects.Locations.DataSets.FhirStores.Resources.Get

    -- ** healthcare.projects.locations.datasets.fhirStores.resources.getMetadata
    , module Network.Google.Resource.Healthcare.Projects.Locations.DataSets.FhirStores.Resources.GetMetadata

    -- ** healthcare.projects.locations.datasets.fhirStores.resources.patch
    , module Network.Google.Resource.Healthcare.Projects.Locations.DataSets.FhirStores.Resources.Patch

    -- ** healthcare.projects.locations.datasets.fhirStores.resources.searchResources
    , module Network.Google.Resource.Healthcare.Projects.Locations.DataSets.FhirStores.Resources.SearchResources

    -- ** healthcare.projects.locations.datasets.fhirStores.resources.update
    , module Network.Google.Resource.Healthcare.Projects.Locations.DataSets.FhirStores.Resources.Update

    -- ** healthcare.projects.locations.datasets.fhirStores.securityLabels.getIamPolicy
    , module Network.Google.Resource.Healthcare.Projects.Locations.DataSets.FhirStores.SecurityLabels.GetIAMPolicy

    -- ** healthcare.projects.locations.datasets.fhirStores.securityLabels.setIamPolicy
    , module Network.Google.Resource.Healthcare.Projects.Locations.DataSets.FhirStores.SecurityLabels.SetIAMPolicy

    -- ** healthcare.projects.locations.datasets.fhirStores.setIamPolicy
    , module Network.Google.Resource.Healthcare.Projects.Locations.DataSets.FhirStores.SetIAMPolicy

    -- ** healthcare.projects.locations.datasets.fhirStores.testIamPermissions
    , module Network.Google.Resource.Healthcare.Projects.Locations.DataSets.FhirStores.TestIAMPermissions

    -- ** healthcare.projects.locations.datasets.get
    , module Network.Google.Resource.Healthcare.Projects.Locations.DataSets.Get

    -- ** healthcare.projects.locations.datasets.getIamPolicy
    , module Network.Google.Resource.Healthcare.Projects.Locations.DataSets.GetIAMPolicy

    -- ** healthcare.projects.locations.datasets.hl7V2Stores.create
    , module Network.Google.Resource.Healthcare.Projects.Locations.DataSets.Hl7V2Stores.Create

    -- ** healthcare.projects.locations.datasets.hl7V2Stores.delete
    , module Network.Google.Resource.Healthcare.Projects.Locations.DataSets.Hl7V2Stores.Delete

    -- ** healthcare.projects.locations.datasets.hl7V2Stores.get
    , module Network.Google.Resource.Healthcare.Projects.Locations.DataSets.Hl7V2Stores.Get

    -- ** healthcare.projects.locations.datasets.hl7V2Stores.getIamPolicy
    , module Network.Google.Resource.Healthcare.Projects.Locations.DataSets.Hl7V2Stores.GetIAMPolicy

    -- ** healthcare.projects.locations.datasets.hl7V2Stores.list
    , module Network.Google.Resource.Healthcare.Projects.Locations.DataSets.Hl7V2Stores.List

    -- ** healthcare.projects.locations.datasets.hl7V2Stores.messages.create
    , module Network.Google.Resource.Healthcare.Projects.Locations.DataSets.Hl7V2Stores.Messages.Create

    -- ** healthcare.projects.locations.datasets.hl7V2Stores.messages.delete
    , module Network.Google.Resource.Healthcare.Projects.Locations.DataSets.Hl7V2Stores.Messages.Delete

    -- ** healthcare.projects.locations.datasets.hl7V2Stores.messages.get
    , module Network.Google.Resource.Healthcare.Projects.Locations.DataSets.Hl7V2Stores.Messages.Get

    -- ** healthcare.projects.locations.datasets.hl7V2Stores.messages.ingest
    , module Network.Google.Resource.Healthcare.Projects.Locations.DataSets.Hl7V2Stores.Messages.Ingest

    -- ** healthcare.projects.locations.datasets.hl7V2Stores.messages.list
    , module Network.Google.Resource.Healthcare.Projects.Locations.DataSets.Hl7V2Stores.Messages.List

    -- ** healthcare.projects.locations.datasets.hl7V2Stores.messages.patch
    , module Network.Google.Resource.Healthcare.Projects.Locations.DataSets.Hl7V2Stores.Messages.Patch

    -- ** healthcare.projects.locations.datasets.hl7V2Stores.patch
    , module Network.Google.Resource.Healthcare.Projects.Locations.DataSets.Hl7V2Stores.Patch

    -- ** healthcare.projects.locations.datasets.hl7V2Stores.setIamPolicy
    , module Network.Google.Resource.Healthcare.Projects.Locations.DataSets.Hl7V2Stores.SetIAMPolicy

    -- ** healthcare.projects.locations.datasets.hl7V2Stores.testIamPermissions
    , module Network.Google.Resource.Healthcare.Projects.Locations.DataSets.Hl7V2Stores.TestIAMPermissions

    -- ** healthcare.projects.locations.datasets.list
    , module Network.Google.Resource.Healthcare.Projects.Locations.DataSets.List

    -- ** healthcare.projects.locations.datasets.operations.get
    , module Network.Google.Resource.Healthcare.Projects.Locations.DataSets.Operations.Get

    -- ** healthcare.projects.locations.datasets.operations.list
    , module Network.Google.Resource.Healthcare.Projects.Locations.DataSets.Operations.List

    -- ** healthcare.projects.locations.datasets.patch
    , module Network.Google.Resource.Healthcare.Projects.Locations.DataSets.Patch

    -- ** healthcare.projects.locations.datasets.setIamPolicy
    , module Network.Google.Resource.Healthcare.Projects.Locations.DataSets.SetIAMPolicy

    -- ** healthcare.projects.locations.datasets.testIamPermissions
    , module Network.Google.Resource.Healthcare.Projects.Locations.DataSets.TestIAMPermissions

    -- ** healthcare.projects.locations.get
    , module Network.Google.Resource.Healthcare.Projects.Locations.Get

    -- ** healthcare.projects.locations.list
    , module Network.Google.Resource.Healthcare.Projects.Locations.List

    -- * Types

    -- ** Status
    , Status
    , status
    , sDetails
    , sCode
    , sMessage

    -- ** OperationSchema
    , OperationSchema
    , operationSchema
    , osAddtional

    -- ** ExportResourcesRequest
    , ExportResourcesRequest
    , exportResourcesRequest
    , errBigQueryDestinationLocation
    , errGcsDestinationLocation

    -- ** AuditConfig
    , AuditConfig
    , auditConfig
    , acService
    , acAuditLogConfigs

    -- ** HTTPBodyExtensionsItem
    , HTTPBodyExtensionsItem
    , hTTPBodyExtensionsItem
    , httpbeiAddtional

    -- ** Annotation
    , Annotation
    , annotation
    , aTextAnnotation
    , aImageAnnotation
    , aName
    , aAnnotationSource
    , aResourceAnnotation

    -- ** NotificationConfig
    , NotificationConfig
    , notificationConfig
    , ncPubsubTopic

    -- ** FhirConfig
    , FhirConfig
    , fhirConfig

    -- ** Expr
    , Expr
    , expr
    , eLocation
    , eExpression
    , eTitle
    , eDescription

    -- ** ListLocationsResponse
    , ListLocationsResponse
    , listLocationsResponse
    , llrNextPageToken
    , llrLocations

    -- ** ListOperationsResponse
    , ListOperationsResponse
    , listOperationsResponse
    , lorNextPageToken
    , lorOperations

    -- ** GetIAMPolicyRequest
    , GetIAMPolicyRequest
    , getIAMPolicyRequest

    -- ** FhirStore
    , FhirStore
    , fhirStore
    , fsEnableUpdateCreate
    , fsNotificationConfig
    , fsDisableReferentialIntegrity
    , fsDisableResourceVersioning
    , fsName

    -- ** SegmentFields
    , SegmentFields
    , segmentFields
    , sfAddtional

    -- ** DataSet
    , DataSet
    , dataSet
    , dsName
    , dsTimeZone

    -- ** BigQueryDestination
    , BigQueryDestination
    , bigQueryDestination
    , bqdDataSet
    , bqdOverwriteTable
    , bqdTable

    -- ** ListAnnotationsResponse
    , ListAnnotationsResponse
    , listAnnotationsResponse
    , larAnnotations
    , larNextPageToken

    -- ** Location
    , Location
    , location
    , lName
    , lMetadata
    , lDisplayName
    , lLabels
    , lLocationId

    -- ** Operation
    , Operation
    , operation
    , oDone
    , oError
    , oResponse
    , oName
    , oMetadata

    -- ** Finding
    , Finding
    , finding
    , fStart
    , fInfoType
    , fEnd

    -- ** ImageConfig
    , ImageConfig
    , imageConfig
    , icRedactAllText

    -- ** Empty
    , Empty
    , empty

    -- ** ImportError
    , ImportError
    , importError
    , ieStatus
    , ieResource

    -- ** ImportDicomDataRequest
    , ImportDicomDataRequest
    , importDicomDataRequest
    , iddrInputConfig

    -- ** Hl7V2Store
    , Hl7V2Store
    , hl7V2Store
    , hvsNotificationConfig
    , hvsName
    , hvsParserConfig

    -- ** AnnotationStore
    , AnnotationStore
    , annotationStore
    , asName
    , asLabels

    -- ** BoundingPoly
    , BoundingPoly
    , boundingPoly
    , bpLabel
    , bpVertices

    -- ** ImageAnnotation
    , ImageAnnotation
    , imageAnnotation
    , iaBoundingPolys

    -- ** Vertex
    , Vertex
    , vertex
    , vX
    , vY

    -- ** GcsDestination
    , GcsDestination
    , gcsDestination
    , gdURIPrefix
    , gdMimeType

    -- ** BigQueryLocation
    , BigQueryLocation
    , bigQueryLocation
    , bqlSchemaConfig
    , bqlDataSetId
    , bqlProjectId

    -- ** StatusDetailsItem
    , StatusDetailsItem
    , statusDetailsItem
    , sdiAddtional

    -- ** SchemaConfig
    , SchemaConfig
    , schemaConfig
    , scRecursiveStructureDepth
    , scSchemaType

    -- ** SetIAMPolicyRequest
    , SetIAMPolicyRequest
    , setIAMPolicyRequest
    , siprUpdateMask
    , siprPolicy

    -- ** ProgressCounter
    , ProgressCounter
    , progressCounter
    , pcPending
    , pcSuccess
    , pcFailure

    -- ** ImportResourcesRequestContentStructure
    , ImportResourcesRequestContentStructure (..)

    -- ** InputConfig
    , InputConfig
    , inputConfig
    , icGcsSource

    -- ** SensitiveTextAnnotationDetails
    , SensitiveTextAnnotationDetails
    , sensitiveTextAnnotationDetails
    , stadAddtional

    -- ** DeidentifyConfig
    , DeidentifyConfig
    , deidentifyConfig
    , dcDicom
    , dcImage
    , dcFhir

    -- ** AuditLogConfigLogType
    , AuditLogConfigLogType (..)

    -- ** ListAnnotationStoresResponse
    , ListAnnotationStoresResponse
    , listAnnotationStoresResponse
    , lasrNextPageToken
    , lasrAnnotationStores

    -- ** IngestMessageResponse
    , IngestMessageResponse
    , ingestMessageResponse
    , imrHl7Ack
    , imrMessage

    -- ** Xgafv
    , Xgafv (..)

    -- ** GcsDataLocation
    , GcsDataLocation
    , gcsDataLocation
    , gdlGcsURI

    -- ** AnnotationSource
    , AnnotationSource
    , annotationSource
    , asCloudHealthcareSource

    -- ** SchemaConfigSchemaType
    , SchemaConfigSchemaType (..)

    -- ** TestIAMPermissionsRequest
    , TestIAMPermissionsRequest
    , testIAMPermissionsRequest
    , tiprPermissions

    -- ** ListHl7V2StoresResponse
    , ListHl7V2StoresResponse
    , listHl7V2StoresResponse
    , lhvsrNextPageToken
    , lhvsrHl7V2Stores

    -- ** ImportResourcesRequest
    , ImportResourcesRequest
    , importResourcesRequest
    , irrGcsSourceLocation
    , irrGcsErrorLocation
    , irrContentStructure

    -- ** ResourceAnnotation
    , ResourceAnnotation
    , resourceAnnotation
    , raLabel

    -- ** AnnotationStoreLabels
    , AnnotationStoreLabels
    , annotationStoreLabels
    , aslAddtional

    -- ** ParserConfig
    , ParserConfig
    , parserConfig
    , pcSegmentTerminator
    , pcAllowNullHeader

    -- ** CloudHealthcareSource
    , CloudHealthcareSource
    , cloudHealthcareSource
    , chsName

    -- ** OutputConfig
    , OutputConfig
    , outputConfig
    , ocBigQueryDestination
    , ocGcsDestination

    -- ** HTTPBody
    , HTTPBody
    , hTTPBody
    , httpbExtensions
    , httpbData
    , httpbContentType

    -- ** TestIAMPermissionsResponse
    , TestIAMPermissionsResponse
    , testIAMPermissionsResponse
    , tiamprPermissions

    -- ** ListDataSetsResponse
    , ListDataSetsResponse
    , listDataSetsResponse
    , ldsrNextPageToken
    , ldsrDataSets

    -- ** GoogleCloudHealthcareV1alphaFhirRestImportResourcesResponse
    , GoogleCloudHealthcareV1alphaFhirRestImportResourcesResponse
    , googleCloudHealthcareV1alphaFhirRestImportResourcesResponse
    , gchvfrirrErrorCount
    , gchvfrirrName
    , gchvfrirrSuccessCount
    , gchvfrirrInputSize

    -- ** Policy
    , Policy
    , policy
    , pAuditConfigs
    , pEtag
    , pVersion
    , pBindings

    -- ** ListFhirStoresResponse
    , ListFhirStoresResponse
    , listFhirStoresResponse
    , lfsrNextPageToken
    , lfsrFhirStores

    -- ** LocationLabels
    , LocationLabels
    , locationLabels
    , llAddtional

    -- ** IngestMessageRequest
    , IngestMessageRequest
    , ingestMessageRequest
    , iMessage

    -- ** GoogleCloudHealthcareV1alphaGcsSource
    , GoogleCloudHealthcareV1alphaGcsSource
    , googleCloudHealthcareV1alphaGcsSource
    , gchvgsContentURI

    -- ** LocationMetadata
    , LocationMetadata
    , locationMetadata
    , lmAddtional

    -- ** OperationMetadata
    , OperationMetadata
    , operationMetadata
    , omCounter
    , omEndTime
    , omAPIMethodName
    , omCreateTime

    -- ** Message
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

    -- ** DicomStore
    , DicomStore
    , dicomStore
    , dNotificationConfig
    , dName

    -- ** ImportDicomDataErrorDetails
    , ImportDicomDataErrorDetails
    , importDicomDataErrorDetails
    , iddedErrors

    -- ** AuditLogConfig
    , AuditLogConfig
    , auditLogConfig
    , alcLogType
    , alcExemptedMembers

    -- ** Segment
    , Segment
    , segment
    , sSetId
    , sSegmentId
    , sFields

    -- ** MessageLabels
    , MessageLabels
    , messageLabels
    , mlAddtional

    -- ** SearchResourcesRequest
    , SearchResourcesRequest
    , searchResourcesRequest
    , srrResourceType

    -- ** DeidentifyDataSetRequest
    , DeidentifyDataSetRequest
    , deidentifyDataSetRequest
    , ddsrConfig
    , ddsrDestinationDataSet

    -- ** PatientId
    , PatientId
    , patientId
    , piValue
    , piType

    -- ** DicomConfig
    , DicomConfig
    , dicomConfig
    , dcWhiteListTags

    -- ** OperationResponse
    , OperationResponse
    , operationResponse
    , orAddtional

    -- ** CreateMessageRequest
    , CreateMessageRequest
    , createMessageRequest
    , cmrMessage

    -- ** SensitiveTextAnnotation
    , SensitiveTextAnnotation
    , sensitiveTextAnnotation
    , staDetails

    -- ** ListMessagesResponse
    , ListMessagesResponse
    , listMessagesResponse
    , lmrNextPageToken
    , lmrMessages

    -- ** ListDicomStoresResponse
    , ListDicomStoresResponse
    , listDicomStoresResponse
    , lNextPageToken
    , lDicomStores

    -- ** GoogleCloudHealthcareV1alphaFhirRestExportResourcesResponse
    , GoogleCloudHealthcareV1alphaFhirRestExportResourcesResponse
    , googleCloudHealthcareV1alphaFhirRestExportResourcesResponse
    , gchvfrerrName
    , gchvfrerrResourceCount

    -- ** Binding
    , Binding
    , binding
    , bMembers
    , bRole
    , bCondition

    -- ** Detail
    , Detail
    , detail
    , dFindings

    -- ** ExportDicomDataRequest
    , ExportDicomDataRequest
    , exportDicomDataRequest
    , eddrOutputConfig

    -- ** ParsedData
    , ParsedData
    , parsedData
    , pdSegments

    -- ** ErrorDetail
    , ErrorDetail
    , errorDetail
    , edError
    , edResource
    ) where

import           Network.Google.Healthcare.Types
import           Network.Google.Prelude
import           Network.Google.Resource.Healthcare.Projects.Locations.DataSets.AnnotationStores.Annotations.Create
import           Network.Google.Resource.Healthcare.Projects.Locations.DataSets.AnnotationStores.Annotations.Delete
import           Network.Google.Resource.Healthcare.Projects.Locations.DataSets.AnnotationStores.Annotations.Get
import           Network.Google.Resource.Healthcare.Projects.Locations.DataSets.AnnotationStores.Annotations.List
import           Network.Google.Resource.Healthcare.Projects.Locations.DataSets.AnnotationStores.Annotations.Patch
import           Network.Google.Resource.Healthcare.Projects.Locations.DataSets.AnnotationStores.Create
import           Network.Google.Resource.Healthcare.Projects.Locations.DataSets.AnnotationStores.Delete
import           Network.Google.Resource.Healthcare.Projects.Locations.DataSets.AnnotationStores.Get
import           Network.Google.Resource.Healthcare.Projects.Locations.DataSets.AnnotationStores.GetIAMPolicy
import           Network.Google.Resource.Healthcare.Projects.Locations.DataSets.AnnotationStores.List
import           Network.Google.Resource.Healthcare.Projects.Locations.DataSets.AnnotationStores.Patch
import           Network.Google.Resource.Healthcare.Projects.Locations.DataSets.AnnotationStores.SetIAMPolicy
import           Network.Google.Resource.Healthcare.Projects.Locations.DataSets.AnnotationStores.TestIAMPermissions
import           Network.Google.Resource.Healthcare.Projects.Locations.DataSets.Create
import           Network.Google.Resource.Healthcare.Projects.Locations.DataSets.Deidentify
import           Network.Google.Resource.Healthcare.Projects.Locations.DataSets.Delete
import           Network.Google.Resource.Healthcare.Projects.Locations.DataSets.DicomStores.Create
import           Network.Google.Resource.Healthcare.Projects.Locations.DataSets.DicomStores.Delete
import           Network.Google.Resource.Healthcare.Projects.Locations.DataSets.DicomStores.DicomWeb.DicomWebDelete
import           Network.Google.Resource.Healthcare.Projects.Locations.DataSets.DicomStores.DicomWeb.DicomWebGet
import           Network.Google.Resource.Healthcare.Projects.Locations.DataSets.DicomStores.DicomWeb.DicomWebPost
import           Network.Google.Resource.Healthcare.Projects.Locations.DataSets.DicomStores.Export
import           Network.Google.Resource.Healthcare.Projects.Locations.DataSets.DicomStores.Get
import           Network.Google.Resource.Healthcare.Projects.Locations.DataSets.DicomStores.GetIAMPolicy
import           Network.Google.Resource.Healthcare.Projects.Locations.DataSets.DicomStores.Import
import           Network.Google.Resource.Healthcare.Projects.Locations.DataSets.DicomStores.List
import           Network.Google.Resource.Healthcare.Projects.Locations.DataSets.DicomStores.Patch
import           Network.Google.Resource.Healthcare.Projects.Locations.DataSets.DicomStores.SetIAMPolicy
import           Network.Google.Resource.Healthcare.Projects.Locations.DataSets.DicomStores.TestIAMPermissions
import           Network.Google.Resource.Healthcare.Projects.Locations.DataSets.FhirStores.Create
import           Network.Google.Resource.Healthcare.Projects.Locations.DataSets.FhirStores.Delete
import           Network.Google.Resource.Healthcare.Projects.Locations.DataSets.FhirStores.ExecuteBundle
import           Network.Google.Resource.Healthcare.Projects.Locations.DataSets.FhirStores.Export
import           Network.Google.Resource.Healthcare.Projects.Locations.DataSets.FhirStores.Get
import           Network.Google.Resource.Healthcare.Projects.Locations.DataSets.FhirStores.GetIAMPolicy
import           Network.Google.Resource.Healthcare.Projects.Locations.DataSets.FhirStores.GetMetadata
import           Network.Google.Resource.Healthcare.Projects.Locations.DataSets.FhirStores.Import
import           Network.Google.Resource.Healthcare.Projects.Locations.DataSets.FhirStores.List
import           Network.Google.Resource.Healthcare.Projects.Locations.DataSets.FhirStores.Patch
import           Network.Google.Resource.Healthcare.Projects.Locations.DataSets.FhirStores.Resources.ConditionalDeleteResource
import           Network.Google.Resource.Healthcare.Projects.Locations.DataSets.FhirStores.Resources.ConditionalPatchResource
import           Network.Google.Resource.Healthcare.Projects.Locations.DataSets.FhirStores.Resources.ConditionalUpdateResource
import           Network.Google.Resource.Healthcare.Projects.Locations.DataSets.FhirStores.Resources.CreateResource
import           Network.Google.Resource.Healthcare.Projects.Locations.DataSets.FhirStores.Resources.Delete
import           Network.Google.Resource.Healthcare.Projects.Locations.DataSets.FhirStores.Resources.DeletePurge
import           Network.Google.Resource.Healthcare.Projects.Locations.DataSets.FhirStores.Resources.Get
import           Network.Google.Resource.Healthcare.Projects.Locations.DataSets.FhirStores.Resources.GetMetadata
import           Network.Google.Resource.Healthcare.Projects.Locations.DataSets.FhirStores.Resources.History.Get
import           Network.Google.Resource.Healthcare.Projects.Locations.DataSets.FhirStores.Resources.History.List
import           Network.Google.Resource.Healthcare.Projects.Locations.DataSets.FhirStores.Resources.Patch
import           Network.Google.Resource.Healthcare.Projects.Locations.DataSets.FhirStores.Resources.Patient.GetEverything
import           Network.Google.Resource.Healthcare.Projects.Locations.DataSets.FhirStores.Resources.Search
import           Network.Google.Resource.Healthcare.Projects.Locations.DataSets.FhirStores.Resources.SearchResources
import           Network.Google.Resource.Healthcare.Projects.Locations.DataSets.FhirStores.Resources.Update
import           Network.Google.Resource.Healthcare.Projects.Locations.DataSets.FhirStores.SecurityLabels.GetIAMPolicy
import           Network.Google.Resource.Healthcare.Projects.Locations.DataSets.FhirStores.SecurityLabels.SetIAMPolicy
import           Network.Google.Resource.Healthcare.Projects.Locations.DataSets.FhirStores.SetIAMPolicy
import           Network.Google.Resource.Healthcare.Projects.Locations.DataSets.FhirStores.TestIAMPermissions
import           Network.Google.Resource.Healthcare.Projects.Locations.DataSets.Get
import           Network.Google.Resource.Healthcare.Projects.Locations.DataSets.GetIAMPolicy
import           Network.Google.Resource.Healthcare.Projects.Locations.DataSets.Hl7V2Stores.Create
import           Network.Google.Resource.Healthcare.Projects.Locations.DataSets.Hl7V2Stores.Delete
import           Network.Google.Resource.Healthcare.Projects.Locations.DataSets.Hl7V2Stores.Get
import           Network.Google.Resource.Healthcare.Projects.Locations.DataSets.Hl7V2Stores.GetIAMPolicy
import           Network.Google.Resource.Healthcare.Projects.Locations.DataSets.Hl7V2Stores.List
import           Network.Google.Resource.Healthcare.Projects.Locations.DataSets.Hl7V2Stores.Messages.Create
import           Network.Google.Resource.Healthcare.Projects.Locations.DataSets.Hl7V2Stores.Messages.Delete
import           Network.Google.Resource.Healthcare.Projects.Locations.DataSets.Hl7V2Stores.Messages.Get
import           Network.Google.Resource.Healthcare.Projects.Locations.DataSets.Hl7V2Stores.Messages.Ingest
import           Network.Google.Resource.Healthcare.Projects.Locations.DataSets.Hl7V2Stores.Messages.List
import           Network.Google.Resource.Healthcare.Projects.Locations.DataSets.Hl7V2Stores.Messages.Patch
import           Network.Google.Resource.Healthcare.Projects.Locations.DataSets.Hl7V2Stores.Patch
import           Network.Google.Resource.Healthcare.Projects.Locations.DataSets.Hl7V2Stores.SetIAMPolicy
import           Network.Google.Resource.Healthcare.Projects.Locations.DataSets.Hl7V2Stores.TestIAMPermissions
import           Network.Google.Resource.Healthcare.Projects.Locations.DataSets.List
import           Network.Google.Resource.Healthcare.Projects.Locations.DataSets.Operations.Get
import           Network.Google.Resource.Healthcare.Projects.Locations.DataSets.Operations.List
import           Network.Google.Resource.Healthcare.Projects.Locations.DataSets.Patch
import           Network.Google.Resource.Healthcare.Projects.Locations.DataSets.SetIAMPolicy
import           Network.Google.Resource.Healthcare.Projects.Locations.DataSets.TestIAMPermissions
import           Network.Google.Resource.Healthcare.Projects.Locations.Get
import           Network.Google.Resource.Healthcare.Projects.Locations.List

{- $resources
TODO
-}

-- | Represents the entirety of the methods and resources available for the Cloud Healthcare API service.
type HealthcareAPI =
     ProjectsLocationsDataSetsDicomStoresDicomWebDicomWebGetResource
       :<|>
       ProjectsLocationsDataSetsDicomStoresDicomWebDicomWebDeleteResource
       :<|>
       ProjectsLocationsDataSetsDicomStoresDicomWebDicomWebPostResource
       :<|>
       ProjectsLocationsDataSetsDicomStoresExportResource
       :<|> ProjectsLocationsDataSetsDicomStoresListResource
       :<|>
       ProjectsLocationsDataSetsDicomStoresGetIAMPolicyResource
       :<|>
       ProjectsLocationsDataSetsDicomStoresPatchResource
       :<|> ProjectsLocationsDataSetsDicomStoresGetResource
       :<|>
       ProjectsLocationsDataSetsDicomStoresCreateResource
       :<|>
       ProjectsLocationsDataSetsDicomStoresSetIAMPolicyResource
       :<|>
       ProjectsLocationsDataSetsDicomStoresImportResource
       :<|>
       ProjectsLocationsDataSetsDicomStoresTestIAMPermissionsResource
       :<|>
       ProjectsLocationsDataSetsDicomStoresDeleteResource
       :<|>
       ProjectsLocationsDataSetsAnnotationStoresAnnotationsListResource
       :<|>
       ProjectsLocationsDataSetsAnnotationStoresAnnotationsPatchResource
       :<|>
       ProjectsLocationsDataSetsAnnotationStoresAnnotationsGetResource
       :<|>
       ProjectsLocationsDataSetsAnnotationStoresAnnotationsCreateResource
       :<|>
       ProjectsLocationsDataSetsAnnotationStoresAnnotationsDeleteResource
       :<|>
       ProjectsLocationsDataSetsAnnotationStoresListResource
       :<|>
       ProjectsLocationsDataSetsAnnotationStoresGetIAMPolicyResource
       :<|>
       ProjectsLocationsDataSetsAnnotationStoresPatchResource
       :<|>
       ProjectsLocationsDataSetsAnnotationStoresGetResource
       :<|>
       ProjectsLocationsDataSetsAnnotationStoresCreateResource
       :<|>
       ProjectsLocationsDataSetsAnnotationStoresSetIAMPolicyResource
       :<|>
       ProjectsLocationsDataSetsAnnotationStoresTestIAMPermissionsResource
       :<|>
       ProjectsLocationsDataSetsAnnotationStoresDeleteResource
       :<|>
       ProjectsLocationsDataSetsHl7V2StoresMessagesListResource
       :<|>
       ProjectsLocationsDataSetsHl7V2StoresMessagesIngestResource
       :<|>
       ProjectsLocationsDataSetsHl7V2StoresMessagesPatchResource
       :<|>
       ProjectsLocationsDataSetsHl7V2StoresMessagesGetResource
       :<|>
       ProjectsLocationsDataSetsHl7V2StoresMessagesCreateResource
       :<|>
       ProjectsLocationsDataSetsHl7V2StoresMessagesDeleteResource
       :<|> ProjectsLocationsDataSetsHl7V2StoresListResource
       :<|>
       ProjectsLocationsDataSetsHl7V2StoresGetIAMPolicyResource
       :<|>
       ProjectsLocationsDataSetsHl7V2StoresPatchResource
       :<|> ProjectsLocationsDataSetsHl7V2StoresGetResource
       :<|>
       ProjectsLocationsDataSetsHl7V2StoresCreateResource
       :<|>
       ProjectsLocationsDataSetsHl7V2StoresSetIAMPolicyResource
       :<|>
       ProjectsLocationsDataSetsHl7V2StoresTestIAMPermissionsResource
       :<|>
       ProjectsLocationsDataSetsHl7V2StoresDeleteResource
       :<|> ProjectsLocationsDataSetsOperationsListResource
       :<|> ProjectsLocationsDataSetsOperationsGetResource
       :<|>
       ProjectsLocationsDataSetsFhirStoresResourcesHistoryListResource
       :<|>
       ProjectsLocationsDataSetsFhirStoresResourcesHistoryGetResource
       :<|>
       ProjectsLocationsDataSetsFhirStoresResourcesPatientGetEverythingResource
       :<|>
       ProjectsLocationsDataSetsFhirStoresResourcesSearchResourcesResource
       :<|>
       ProjectsLocationsDataSetsFhirStoresResourcesConditionalPatchResourceResource
       :<|>
       ProjectsLocationsDataSetsFhirStoresResourcesConditionalDeleteResourceResource
       :<|>
       ProjectsLocationsDataSetsFhirStoresResourcesConditionalUpdateResourceResource
       :<|>
       ProjectsLocationsDataSetsFhirStoresResourcesGetMetadataResource
       :<|>
       ProjectsLocationsDataSetsFhirStoresResourcesPatchResource
       :<|>
       ProjectsLocationsDataSetsFhirStoresResourcesGetResource
       :<|>
       ProjectsLocationsDataSetsFhirStoresResourcesDeletePurgeResource
       :<|>
       ProjectsLocationsDataSetsFhirStoresResourcesCreateResourceResource
       :<|>
       ProjectsLocationsDataSetsFhirStoresResourcesDeleteResource
       :<|>
       ProjectsLocationsDataSetsFhirStoresResourcesUpdateResource
       :<|>
       ProjectsLocationsDataSetsFhirStoresResourcesSearchResource
       :<|>
       ProjectsLocationsDataSetsFhirStoresSecurityLabelsGetIAMPolicyResource
       :<|>
       ProjectsLocationsDataSetsFhirStoresSecurityLabelsSetIAMPolicyResource
       :<|>
       ProjectsLocationsDataSetsFhirStoresExportResource
       :<|> ProjectsLocationsDataSetsFhirStoresListResource
       :<|>
       ProjectsLocationsDataSetsFhirStoresGetIAMPolicyResource
       :<|>
       ProjectsLocationsDataSetsFhirStoresGetMetadataResource
       :<|> ProjectsLocationsDataSetsFhirStoresPatchResource
       :<|> ProjectsLocationsDataSetsFhirStoresGetResource
       :<|>
       ProjectsLocationsDataSetsFhirStoresCreateResource
       :<|>
       ProjectsLocationsDataSetsFhirStoresSetIAMPolicyResource
       :<|>
       ProjectsLocationsDataSetsFhirStoresImportResource
       :<|>
       ProjectsLocationsDataSetsFhirStoresTestIAMPermissionsResource
       :<|>
       ProjectsLocationsDataSetsFhirStoresExecuteBundleResource
       :<|>
       ProjectsLocationsDataSetsFhirStoresDeleteResource
       :<|> ProjectsLocationsDataSetsListResource
       :<|> ProjectsLocationsDataSetsGetIAMPolicyResource
       :<|> ProjectsLocationsDataSetsPatchResource
       :<|> ProjectsLocationsDataSetsGetResource
       :<|> ProjectsLocationsDataSetsCreateResource
       :<|> ProjectsLocationsDataSetsSetIAMPolicyResource
       :<|> ProjectsLocationsDataSetsDeidentifyResource
       :<|>
       ProjectsLocationsDataSetsTestIAMPermissionsResource
       :<|> ProjectsLocationsDataSetsDeleteResource
       :<|> ProjectsLocationsListResource
       :<|> ProjectsLocationsGetResource
