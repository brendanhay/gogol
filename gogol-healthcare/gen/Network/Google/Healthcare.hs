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
-- Manage, store, and access healthcare data in Google Cloud Platform.
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

    -- ** healthcare.projects.locations.datasets.dicomStores.searchForInstances
    , module Network.Google.Resource.Healthcare.Projects.Locations.DataSets.DicomStores.SearchForInstances

    -- ** healthcare.projects.locations.datasets.dicomStores.searchForSeries
    , module Network.Google.Resource.Healthcare.Projects.Locations.DataSets.DicomStores.SearchForSeries

    -- ** healthcare.projects.locations.datasets.dicomStores.searchForStudies
    , module Network.Google.Resource.Healthcare.Projects.Locations.DataSets.DicomStores.SearchForStudies

    -- ** healthcare.projects.locations.datasets.dicomStores.setIamPolicy
    , module Network.Google.Resource.Healthcare.Projects.Locations.DataSets.DicomStores.SetIAMPolicy

    -- ** healthcare.projects.locations.datasets.dicomStores.storeInstances
    , module Network.Google.Resource.Healthcare.Projects.Locations.DataSets.DicomStores.StoreInstances

    -- ** healthcare.projects.locations.datasets.dicomStores.studies.delete
    , module Network.Google.Resource.Healthcare.Projects.Locations.DataSets.DicomStores.Studies.Delete

    -- ** healthcare.projects.locations.datasets.dicomStores.studies.retrieveMetadata
    , module Network.Google.Resource.Healthcare.Projects.Locations.DataSets.DicomStores.Studies.RetrieveMetadata

    -- ** healthcare.projects.locations.datasets.dicomStores.studies.retrieveStudy
    , module Network.Google.Resource.Healthcare.Projects.Locations.DataSets.DicomStores.Studies.RetrieveStudy

    -- ** healthcare.projects.locations.datasets.dicomStores.studies.searchForInstances
    , module Network.Google.Resource.Healthcare.Projects.Locations.DataSets.DicomStores.Studies.SearchForInstances

    -- ** healthcare.projects.locations.datasets.dicomStores.studies.searchForSeries
    , module Network.Google.Resource.Healthcare.Projects.Locations.DataSets.DicomStores.Studies.SearchForSeries

    -- ** healthcare.projects.locations.datasets.dicomStores.studies.series.delete
    , module Network.Google.Resource.Healthcare.Projects.Locations.DataSets.DicomStores.Studies.Series.Delete

    -- ** healthcare.projects.locations.datasets.dicomStores.studies.series.instances.delete
    , module Network.Google.Resource.Healthcare.Projects.Locations.DataSets.DicomStores.Studies.Series.Instances.Delete

    -- ** healthcare.projects.locations.datasets.dicomStores.studies.series.instances.frames.retrieveFrames
    , module Network.Google.Resource.Healthcare.Projects.Locations.DataSets.DicomStores.Studies.Series.Instances.Frames.RetrieveFrames

    -- ** healthcare.projects.locations.datasets.dicomStores.studies.series.instances.frames.retrieveRendered
    , module Network.Google.Resource.Healthcare.Projects.Locations.DataSets.DicomStores.Studies.Series.Instances.Frames.RetrieveRendered

    -- ** healthcare.projects.locations.datasets.dicomStores.studies.series.instances.retrieveInstance
    , module Network.Google.Resource.Healthcare.Projects.Locations.DataSets.DicomStores.Studies.Series.Instances.RetrieveInstance

    -- ** healthcare.projects.locations.datasets.dicomStores.studies.series.instances.retrieveMetadata
    , module Network.Google.Resource.Healthcare.Projects.Locations.DataSets.DicomStores.Studies.Series.Instances.RetrieveMetadata

    -- ** healthcare.projects.locations.datasets.dicomStores.studies.series.instances.retrieveRendered
    , module Network.Google.Resource.Healthcare.Projects.Locations.DataSets.DicomStores.Studies.Series.Instances.RetrieveRendered

    -- ** healthcare.projects.locations.datasets.dicomStores.studies.series.retrieveMetadata
    , module Network.Google.Resource.Healthcare.Projects.Locations.DataSets.DicomStores.Studies.Series.RetrieveMetadata

    -- ** healthcare.projects.locations.datasets.dicomStores.studies.series.retrieveSeries
    , module Network.Google.Resource.Healthcare.Projects.Locations.DataSets.DicomStores.Studies.Series.RetrieveSeries

    -- ** healthcare.projects.locations.datasets.dicomStores.studies.series.searchForInstances
    , module Network.Google.Resource.Healthcare.Projects.Locations.DataSets.DicomStores.Studies.Series.SearchForInstances

    -- ** healthcare.projects.locations.datasets.dicomStores.studies.storeInstances
    , module Network.Google.Resource.Healthcare.Projects.Locations.DataSets.DicomStores.Studies.StoreInstances

    -- ** healthcare.projects.locations.datasets.dicomStores.testIamPermissions
    , module Network.Google.Resource.Healthcare.Projects.Locations.DataSets.DicomStores.TestIAMPermissions

    -- ** healthcare.projects.locations.datasets.fhirStores.create
    , module Network.Google.Resource.Healthcare.Projects.Locations.DataSets.FhirStores.Create

    -- ** healthcare.projects.locations.datasets.fhirStores.delete
    , module Network.Google.Resource.Healthcare.Projects.Locations.DataSets.FhirStores.Delete

    -- ** healthcare.projects.locations.datasets.fhirStores.export
    , module Network.Google.Resource.Healthcare.Projects.Locations.DataSets.FhirStores.Export

    -- ** healthcare.projects.locations.datasets.fhirStores.fhir.Observation-lastn
    , module Network.Google.Resource.Healthcare.Projects.Locations.DataSets.FhirStores.Fhir.ObservationLastn

    -- ** healthcare.projects.locations.datasets.fhirStores.fhir.Patient-everything
    , module Network.Google.Resource.Healthcare.Projects.Locations.DataSets.FhirStores.Fhir.PatientEverything

    -- ** healthcare.projects.locations.datasets.fhirStores.fhir.Resource-purge
    , module Network.Google.Resource.Healthcare.Projects.Locations.DataSets.FhirStores.Fhir.ResourcePurge

    -- ** healthcare.projects.locations.datasets.fhirStores.fhir.capabilities
    , module Network.Google.Resource.Healthcare.Projects.Locations.DataSets.FhirStores.Fhir.Capabilities

    -- ** healthcare.projects.locations.datasets.fhirStores.fhir.conditionalDelete
    , module Network.Google.Resource.Healthcare.Projects.Locations.DataSets.FhirStores.Fhir.ConditionalDelete

    -- ** healthcare.projects.locations.datasets.fhirStores.fhir.conditionalPatch
    , module Network.Google.Resource.Healthcare.Projects.Locations.DataSets.FhirStores.Fhir.ConditionalPatch

    -- ** healthcare.projects.locations.datasets.fhirStores.fhir.conditionalUpdate
    , module Network.Google.Resource.Healthcare.Projects.Locations.DataSets.FhirStores.Fhir.ConditionalUpdate

    -- ** healthcare.projects.locations.datasets.fhirStores.fhir.create
    , module Network.Google.Resource.Healthcare.Projects.Locations.DataSets.FhirStores.Fhir.Create

    -- ** healthcare.projects.locations.datasets.fhirStores.fhir.delete
    , module Network.Google.Resource.Healthcare.Projects.Locations.DataSets.FhirStores.Fhir.Delete

    -- ** healthcare.projects.locations.datasets.fhirStores.fhir.executeBundle
    , module Network.Google.Resource.Healthcare.Projects.Locations.DataSets.FhirStores.Fhir.ExecuteBundle

    -- ** healthcare.projects.locations.datasets.fhirStores.fhir.history
    , module Network.Google.Resource.Healthcare.Projects.Locations.DataSets.FhirStores.Fhir.History

    -- ** healthcare.projects.locations.datasets.fhirStores.fhir.patch
    , module Network.Google.Resource.Healthcare.Projects.Locations.DataSets.FhirStores.Fhir.Patch

    -- ** healthcare.projects.locations.datasets.fhirStores.fhir.read
    , module Network.Google.Resource.Healthcare.Projects.Locations.DataSets.FhirStores.Fhir.Read

    -- ** healthcare.projects.locations.datasets.fhirStores.fhir.search
    , module Network.Google.Resource.Healthcare.Projects.Locations.DataSets.FhirStores.Fhir.Search

    -- ** healthcare.projects.locations.datasets.fhirStores.fhir.update
    , module Network.Google.Resource.Healthcare.Projects.Locations.DataSets.FhirStores.Fhir.Update

    -- ** healthcare.projects.locations.datasets.fhirStores.fhir.vread
    , module Network.Google.Resource.Healthcare.Projects.Locations.DataSets.FhirStores.Fhir.Vread

    -- ** healthcare.projects.locations.datasets.fhirStores.get
    , module Network.Google.Resource.Healthcare.Projects.Locations.DataSets.FhirStores.Get

    -- ** healthcare.projects.locations.datasets.fhirStores.getIamPolicy
    , module Network.Google.Resource.Healthcare.Projects.Locations.DataSets.FhirStores.GetIAMPolicy

    -- ** healthcare.projects.locations.datasets.fhirStores.import
    , module Network.Google.Resource.Healthcare.Projects.Locations.DataSets.FhirStores.Import

    -- ** healthcare.projects.locations.datasets.fhirStores.list
    , module Network.Google.Resource.Healthcare.Projects.Locations.DataSets.FhirStores.List

    -- ** healthcare.projects.locations.datasets.fhirStores.patch
    , module Network.Google.Resource.Healthcare.Projects.Locations.DataSets.FhirStores.Patch

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
    , errBigQueryDestination
    , errGcsDestination

    -- ** CharacterMaskConfig
    , CharacterMaskConfig
    , characterMaskConfig
    , cmcMaskingCharacter

    -- ** InfoTypeTransformation
    , InfoTypeTransformation
    , infoTypeTransformation
    , ittRedactConfig
    , ittCharacterMaskConfig
    , ittInfoTypes
    , ittDateShiftConfig
    , ittReplaceWithInfoTypeConfig
    , ittCryptoHashConfig

    -- ** AuditConfig
    , AuditConfig
    , auditConfig
    , acService
    , acAuditLogConfigs

    -- ** HTTPBodyExtensionsItem
    , HTTPBodyExtensionsItem
    , hTTPBodyExtensionsItem
    , httpbeiAddtional

    -- ** RedactConfig
    , RedactConfig
    , redactConfig

    -- ** DeidentifyErrorDetails
    , DeidentifyErrorDetails
    , deidentifyErrorDetails
    , dedSuccessStoreCount
    , dedSuccessResourceCount
    , dedFailureResourceCount
    , dedFailureStoreCount

    -- ** NotificationConfig
    , NotificationConfig
    , notificationConfig
    , ncPubsubTopic

    -- ** GoogleCloudHealthcareV1beta1FhirRestImportResourcesResponse
    , GoogleCloudHealthcareV1beta1FhirRestImportResourcesResponse
    , googleCloudHealthcareV1beta1FhirRestImportResourcesResponse
    , gchvfrirrFhirStore
    , gchvfrirrInputSize

    -- ** FhirConfig
    , FhirConfig
    , fhirConfig
    , fcFieldMetadataList

    -- ** Expr
    , Expr
    , expr
    , eLocation
    , eExpression
    , eTitle
    , eDescription

    -- ** TextConfig
    , TextConfig
    , textConfig
    , tcTransformations

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

    -- ** GoogleCloudHealthcareV1beta1DicomGcsDestination
    , GoogleCloudHealthcareV1beta1DicomGcsDestination
    , googleCloudHealthcareV1beta1DicomGcsDestination
    , gchvdgdURIPrefix
    , gchvdgdMimeType

    -- ** FhirStore
    , FhirStore
    , fhirStore
    , fsEnableUpdateCreate
    , fsNotificationConfig
    , fsDisableReferentialIntegrity
    , fsDisableResourceVersioning
    , fsName
    , fsLabels
    , fsEnableHistoryImport

    -- ** SegmentFields
    , SegmentFields
    , segmentFields
    , sfAddtional

    -- ** DataSet
    , DataSet
    , dataSet
    , dsName
    , dsTimeZone

    -- ** GoogleCloudHealthcareV1beta1FhirRestGcsSource
    , GoogleCloudHealthcareV1beta1FhirRestGcsSource
    , googleCloudHealthcareV1beta1FhirRestGcsSource
    , gchvfrgsURI

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

    -- ** ImageConfig
    , ImageConfig
    , imageConfig
    , icTextRedactionMode

    -- ** Empty
    , Empty
    , empty

    -- ** ImportDicomDataRequest
    , ImportDicomDataRequest
    , importDicomDataRequest
    , iddrGcsSource

    -- ** Hl7V2Store
    , Hl7V2Store
    , hl7V2Store
    , hvsNotificationConfig
    , hvsName
    , hvsParserConfig
    , hvsLabels

    -- ** GoogleCloudHealthcareV1beta1FhirRestGcsDestination
    , GoogleCloudHealthcareV1beta1FhirRestGcsDestination
    , googleCloudHealthcareV1beta1FhirRestGcsDestination
    , gchvfrgdURIPrefix

    -- ** StatusDetailsItem
    , StatusDetailsItem
    , statusDetailsItem
    , sdiAddtional

    -- ** SchemaConfig
    , SchemaConfig
    , schemaConfig
    , scRecursiveStructureDepth
    , scSchemaType

    -- ** ImageConfigTextRedactionMode
    , ImageConfigTextRedactionMode (..)

    -- ** GoogleCloudHealthcareV1beta1FhirRestImportResourcesErrorDetails
    , GoogleCloudHealthcareV1beta1FhirRestImportResourcesErrorDetails
    , googleCloudHealthcareV1beta1FhirRestImportResourcesErrorDetails
    , gchvfriredFhirStore
    , gchvfriredErrorCount
    , gchvfriredSuccessCount
    , gchvfriredInputSize

    -- ** DateShiftConfig
    , DateShiftConfig
    , dateShiftConfig
    , dscCryptoKey

    -- ** SetIAMPolicyRequest
    , SetIAMPolicyRequest
    , setIAMPolicyRequest
    , siprUpdateMask
    , siprPolicy

    -- ** DeidentifySummary
    , DeidentifySummary
    , deidentifySummary
    , dsSuccessStoreCount
    , dsSuccessResourceCount

    -- ** ProgressCounter
    , ProgressCounter
    , progressCounter
    , pcPending
    , pcSuccess
    , pcFailure

    -- ** ImportResourcesRequestContentStructure
    , ImportResourcesRequestContentStructure (..)

    -- ** FieldMetadataAction
    , FieldMetadataAction (..)

    -- ** FieldMetadata
    , FieldMetadata
    , fieldMetadata
    , fmAction
    , fmPaths

    -- ** DeidentifyConfig
    , DeidentifyConfig
    , deidentifyConfig
    , dcDicom
    , dcImage
    , dcFhir
    , dcText

    -- ** FhirStoreLabels
    , FhirStoreLabels
    , fhirStoreLabels
    , fslAddtional

    -- ** AuditLogConfigLogType
    , AuditLogConfigLogType (..)

    -- ** GoogleCloudHealthcareV1beta1FhirBigQueryDestination
    , GoogleCloudHealthcareV1beta1FhirBigQueryDestination
    , googleCloudHealthcareV1beta1FhirBigQueryDestination
    , gchvfbqdSchemaConfig
    , gchvfbqdDataSetURI

    -- ** ReplaceWithInfoTypeConfig
    , ReplaceWithInfoTypeConfig
    , replaceWithInfoTypeConfig

    -- ** IngestMessageResponse
    , IngestMessageResponse
    , ingestMessageResponse
    , imrHl7Ack
    , imrMessage

    -- ** Xgafv
    , Xgafv (..)

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

    -- ** DicomConfigFilterProFile
    , DicomConfigFilterProFile (..)

    -- ** ImportResourcesRequest
    , ImportResourcesRequest
    , importResourcesRequest
    , irrGcsSource
    , irrContentStructure

    -- ** Hl7V2StoreLabels
    , Hl7V2StoreLabels
    , hl7V2StoreLabels
    , hvslAddtional

    -- ** ParserConfig
    , ParserConfig
    , parserConfig
    , pcSegmentTerminator
    , pcAllowNullHeader

    -- ** HTTPBody
    , HTTPBody
    , hTTPBody
    , httpbExtensions
    , httpbData
    , httpbContentType

    -- ** TagFilterList
    , TagFilterList
    , tagFilterList
    , tflTags

    -- ** TestIAMPermissionsResponse
    , TestIAMPermissionsResponse
    , testIAMPermissionsResponse
    , tiamprPermissions

    -- ** ListDataSetsResponse
    , ListDataSetsResponse
    , listDataSetsResponse
    , ldsrNextPageToken
    , ldsrDataSets

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

    -- ** GoogleCloudHealthcareV1beta1DicomGcsSource
    , GoogleCloudHealthcareV1beta1DicomGcsSource
    , googleCloudHealthcareV1beta1DicomGcsSource
    , gchvdgsURI

    -- ** CryptoHashConfig
    , CryptoHashConfig
    , cryptoHashConfig
    , chcCryptoKey

    -- ** DicomStore
    , DicomStore
    , dicomStore
    , dNotificationConfig
    , dName
    , dLabels

    -- ** ImportDicomDataErrorDetails
    , ImportDicomDataErrorDetails
    , importDicomDataErrorDetails
    , iddedSampleErrors

    -- ** AuditLogConfig
    , AuditLogConfig
    , auditLogConfig
    , alcLogType
    , alcExemptedMembers

    -- ** GoogleCloudHealthcareV1beta1DicomBigQueryDestination
    , GoogleCloudHealthcareV1beta1DicomBigQueryDestination
    , googleCloudHealthcareV1beta1DicomBigQueryDestination
    , gchvdbqdForce
    , gchvdbqdTableURI

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

    -- ** GoogleCloudHealthcareV1beta1FhirRestExportResourcesResponse
    , GoogleCloudHealthcareV1beta1FhirRestExportResourcesResponse
    , googleCloudHealthcareV1beta1FhirRestExportResourcesResponse
    , gchvfrerrFhirStore
    , gchvfrerrResourceCount

    -- ** DicomConfig
    , DicomConfig
    , dicomConfig
    , dcKeepList
    , dcRemoveList
    , dcFilterProFile

    -- ** OperationResponse
    , OperationResponse
    , operationResponse
    , orAddtional

    -- ** CreateMessageRequest
    , CreateMessageRequest
    , createMessageRequest
    , cmrMessage

    -- ** DicomStoreLabels
    , DicomStoreLabels
    , dicomStoreLabels
    , dslAddtional

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

    -- ** Binding
    , Binding
    , binding
    , bMembers
    , bRole
    , bCondition

    -- ** ExportDicomDataRequest
    , ExportDicomDataRequest
    , exportDicomDataRequest
    , eddrBigQueryDestination
    , eddrGcsDestination

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
import           Network.Google.Resource.Healthcare.Projects.Locations.DataSets.Create
import           Network.Google.Resource.Healthcare.Projects.Locations.DataSets.Deidentify
import           Network.Google.Resource.Healthcare.Projects.Locations.DataSets.Delete
import           Network.Google.Resource.Healthcare.Projects.Locations.DataSets.DicomStores.Create
import           Network.Google.Resource.Healthcare.Projects.Locations.DataSets.DicomStores.Delete
import           Network.Google.Resource.Healthcare.Projects.Locations.DataSets.DicomStores.Export
import           Network.Google.Resource.Healthcare.Projects.Locations.DataSets.DicomStores.Get
import           Network.Google.Resource.Healthcare.Projects.Locations.DataSets.DicomStores.GetIAMPolicy
import           Network.Google.Resource.Healthcare.Projects.Locations.DataSets.DicomStores.Import
import           Network.Google.Resource.Healthcare.Projects.Locations.DataSets.DicomStores.List
import           Network.Google.Resource.Healthcare.Projects.Locations.DataSets.DicomStores.Patch
import           Network.Google.Resource.Healthcare.Projects.Locations.DataSets.DicomStores.SearchForInstances
import           Network.Google.Resource.Healthcare.Projects.Locations.DataSets.DicomStores.SearchForSeries
import           Network.Google.Resource.Healthcare.Projects.Locations.DataSets.DicomStores.SearchForStudies
import           Network.Google.Resource.Healthcare.Projects.Locations.DataSets.DicomStores.SetIAMPolicy
import           Network.Google.Resource.Healthcare.Projects.Locations.DataSets.DicomStores.StoreInstances
import           Network.Google.Resource.Healthcare.Projects.Locations.DataSets.DicomStores.Studies.Delete
import           Network.Google.Resource.Healthcare.Projects.Locations.DataSets.DicomStores.Studies.RetrieveMetadata
import           Network.Google.Resource.Healthcare.Projects.Locations.DataSets.DicomStores.Studies.RetrieveStudy
import           Network.Google.Resource.Healthcare.Projects.Locations.DataSets.DicomStores.Studies.SearchForInstances
import           Network.Google.Resource.Healthcare.Projects.Locations.DataSets.DicomStores.Studies.SearchForSeries
import           Network.Google.Resource.Healthcare.Projects.Locations.DataSets.DicomStores.Studies.Series.Delete
import           Network.Google.Resource.Healthcare.Projects.Locations.DataSets.DicomStores.Studies.Series.Instances.Delete
import           Network.Google.Resource.Healthcare.Projects.Locations.DataSets.DicomStores.Studies.Series.Instances.Frames.RetrieveFrames
import           Network.Google.Resource.Healthcare.Projects.Locations.DataSets.DicomStores.Studies.Series.Instances.Frames.RetrieveRendered
import           Network.Google.Resource.Healthcare.Projects.Locations.DataSets.DicomStores.Studies.Series.Instances.RetrieveInstance
import           Network.Google.Resource.Healthcare.Projects.Locations.DataSets.DicomStores.Studies.Series.Instances.RetrieveMetadata
import           Network.Google.Resource.Healthcare.Projects.Locations.DataSets.DicomStores.Studies.Series.Instances.RetrieveRendered
import           Network.Google.Resource.Healthcare.Projects.Locations.DataSets.DicomStores.Studies.Series.RetrieveMetadata
import           Network.Google.Resource.Healthcare.Projects.Locations.DataSets.DicomStores.Studies.Series.RetrieveSeries
import           Network.Google.Resource.Healthcare.Projects.Locations.DataSets.DicomStores.Studies.Series.SearchForInstances
import           Network.Google.Resource.Healthcare.Projects.Locations.DataSets.DicomStores.Studies.StoreInstances
import           Network.Google.Resource.Healthcare.Projects.Locations.DataSets.DicomStores.TestIAMPermissions
import           Network.Google.Resource.Healthcare.Projects.Locations.DataSets.FhirStores.Create
import           Network.Google.Resource.Healthcare.Projects.Locations.DataSets.FhirStores.Delete
import           Network.Google.Resource.Healthcare.Projects.Locations.DataSets.FhirStores.Export
import           Network.Google.Resource.Healthcare.Projects.Locations.DataSets.FhirStores.Fhir.Capabilities
import           Network.Google.Resource.Healthcare.Projects.Locations.DataSets.FhirStores.Fhir.ConditionalDelete
import           Network.Google.Resource.Healthcare.Projects.Locations.DataSets.FhirStores.Fhir.ConditionalPatch
import           Network.Google.Resource.Healthcare.Projects.Locations.DataSets.FhirStores.Fhir.ConditionalUpdate
import           Network.Google.Resource.Healthcare.Projects.Locations.DataSets.FhirStores.Fhir.Create
import           Network.Google.Resource.Healthcare.Projects.Locations.DataSets.FhirStores.Fhir.Delete
import           Network.Google.Resource.Healthcare.Projects.Locations.DataSets.FhirStores.Fhir.ExecuteBundle
import           Network.Google.Resource.Healthcare.Projects.Locations.DataSets.FhirStores.Fhir.History
import           Network.Google.Resource.Healthcare.Projects.Locations.DataSets.FhirStores.Fhir.ObservationLastn
import           Network.Google.Resource.Healthcare.Projects.Locations.DataSets.FhirStores.Fhir.Patch
import           Network.Google.Resource.Healthcare.Projects.Locations.DataSets.FhirStores.Fhir.PatientEverything
import           Network.Google.Resource.Healthcare.Projects.Locations.DataSets.FhirStores.Fhir.Read
import           Network.Google.Resource.Healthcare.Projects.Locations.DataSets.FhirStores.Fhir.ResourcePurge
import           Network.Google.Resource.Healthcare.Projects.Locations.DataSets.FhirStores.Fhir.Search
import           Network.Google.Resource.Healthcare.Projects.Locations.DataSets.FhirStores.Fhir.Update
import           Network.Google.Resource.Healthcare.Projects.Locations.DataSets.FhirStores.Fhir.Vread
import           Network.Google.Resource.Healthcare.Projects.Locations.DataSets.FhirStores.Get
import           Network.Google.Resource.Healthcare.Projects.Locations.DataSets.FhirStores.GetIAMPolicy
import           Network.Google.Resource.Healthcare.Projects.Locations.DataSets.FhirStores.Import
import           Network.Google.Resource.Healthcare.Projects.Locations.DataSets.FhirStores.List
import           Network.Google.Resource.Healthcare.Projects.Locations.DataSets.FhirStores.Patch
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
     ProjectsLocationsDataSetsDicomStoresStudiesSeriesInstancesFramesRetrieveRenderedResource
       :<|>
       ProjectsLocationsDataSetsDicomStoresStudiesSeriesInstancesFramesRetrieveFramesResource
       :<|>
       ProjectsLocationsDataSetsDicomStoresStudiesSeriesInstancesRetrieveRenderedResource
       :<|>
       ProjectsLocationsDataSetsDicomStoresStudiesSeriesInstancesRetrieveInstanceResource
       :<|>
       ProjectsLocationsDataSetsDicomStoresStudiesSeriesInstancesRetrieveMetadataResource
       :<|>
       ProjectsLocationsDataSetsDicomStoresStudiesSeriesInstancesDeleteResource
       :<|>
       ProjectsLocationsDataSetsDicomStoresStudiesSeriesRetrieveSeriesResource
       :<|>
       ProjectsLocationsDataSetsDicomStoresStudiesSeriesSearchForInstancesResource
       :<|>
       ProjectsLocationsDataSetsDicomStoresStudiesSeriesRetrieveMetadataResource
       :<|>
       ProjectsLocationsDataSetsDicomStoresStudiesSeriesDeleteResource
       :<|>
       ProjectsLocationsDataSetsDicomStoresStudiesSearchForSeriesResource
       :<|>
       ProjectsLocationsDataSetsDicomStoresStudiesSearchForInstancesResource
       :<|>
       ProjectsLocationsDataSetsDicomStoresStudiesStoreInstancesResource
       :<|>
       ProjectsLocationsDataSetsDicomStoresStudiesRetrieveMetadataResource
       :<|>
       ProjectsLocationsDataSetsDicomStoresStudiesDeleteResource
       :<|>
       ProjectsLocationsDataSetsDicomStoresStudiesRetrieveStudyResource
       :<|>
       ProjectsLocationsDataSetsDicomStoresSearchForStudiesResource
       :<|>
       ProjectsLocationsDataSetsDicomStoresExportResource
       :<|> ProjectsLocationsDataSetsDicomStoresListResource
       :<|>
       ProjectsLocationsDataSetsDicomStoresGetIAMPolicyResource
       :<|>
       ProjectsLocationsDataSetsDicomStoresSearchForSeriesResource
       :<|>
       ProjectsLocationsDataSetsDicomStoresPatchResource
       :<|> ProjectsLocationsDataSetsDicomStoresGetResource
       :<|>
       ProjectsLocationsDataSetsDicomStoresCreateResource
       :<|>
       ProjectsLocationsDataSetsDicomStoresSetIAMPolicyResource
       :<|>
       ProjectsLocationsDataSetsDicomStoresSearchForInstancesResource
       :<|>
       ProjectsLocationsDataSetsDicomStoresImportResource
       :<|>
       ProjectsLocationsDataSetsDicomStoresStoreInstancesResource
       :<|>
       ProjectsLocationsDataSetsDicomStoresTestIAMPermissionsResource
       :<|>
       ProjectsLocationsDataSetsDicomStoresDeleteResource
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
       ProjectsLocationsDataSetsFhirStoresFhirVreadResource
       :<|>
       ProjectsLocationsDataSetsFhirStoresFhirReadResource
       :<|>
       ProjectsLocationsDataSetsFhirStoresFhirHistoryResource
       :<|>
       ProjectsLocationsDataSetsFhirStoresFhirObservationLastnResource
       :<|>
       ProjectsLocationsDataSetsFhirStoresFhirPatchResource
       :<|>
       ProjectsLocationsDataSetsFhirStoresFhirCreateResource
       :<|>
       ProjectsLocationsDataSetsFhirStoresFhirPatientEverythingResource
       :<|>
       ProjectsLocationsDataSetsFhirStoresFhirConditionalDeleteResource
       :<|>
       ProjectsLocationsDataSetsFhirStoresFhirConditionalUpdateResource
       :<|>
       ProjectsLocationsDataSetsFhirStoresFhirResourcePurgeResource
       :<|>
       ProjectsLocationsDataSetsFhirStoresFhirConditionalPatchResource
       :<|>
       ProjectsLocationsDataSetsFhirStoresFhirExecuteBundleResource
       :<|>
       ProjectsLocationsDataSetsFhirStoresFhirCapabilitiesResource
       :<|>
       ProjectsLocationsDataSetsFhirStoresFhirSearchResource
       :<|>
       ProjectsLocationsDataSetsFhirStoresFhirDeleteResource
       :<|>
       ProjectsLocationsDataSetsFhirStoresFhirUpdateResource
       :<|>
       ProjectsLocationsDataSetsFhirStoresExportResource
       :<|> ProjectsLocationsDataSetsFhirStoresListResource
       :<|>
       ProjectsLocationsDataSetsFhirStoresGetIAMPolicyResource
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
