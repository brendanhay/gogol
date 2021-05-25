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

    -- ** healthcare.projects.locations.datasets.consentStores.attributeDefinitions.create
    , module Network.Google.Resource.Healthcare.Projects.Locations.DataSets.ConsentStores.AttributeDefinitions.Create

    -- ** healthcare.projects.locations.datasets.consentStores.attributeDefinitions.delete
    , module Network.Google.Resource.Healthcare.Projects.Locations.DataSets.ConsentStores.AttributeDefinitions.Delete

    -- ** healthcare.projects.locations.datasets.consentStores.attributeDefinitions.get
    , module Network.Google.Resource.Healthcare.Projects.Locations.DataSets.ConsentStores.AttributeDefinitions.Get

    -- ** healthcare.projects.locations.datasets.consentStores.attributeDefinitions.list
    , module Network.Google.Resource.Healthcare.Projects.Locations.DataSets.ConsentStores.AttributeDefinitions.List

    -- ** healthcare.projects.locations.datasets.consentStores.attributeDefinitions.patch
    , module Network.Google.Resource.Healthcare.Projects.Locations.DataSets.ConsentStores.AttributeDefinitions.Patch

    -- ** healthcare.projects.locations.datasets.consentStores.checkDataAccess
    , module Network.Google.Resource.Healthcare.Projects.Locations.DataSets.ConsentStores.CheckDataAccess

    -- ** healthcare.projects.locations.datasets.consentStores.consentArtifacts.create
    , module Network.Google.Resource.Healthcare.Projects.Locations.DataSets.ConsentStores.ConsentArtifacts.Create

    -- ** healthcare.projects.locations.datasets.consentStores.consentArtifacts.delete
    , module Network.Google.Resource.Healthcare.Projects.Locations.DataSets.ConsentStores.ConsentArtifacts.Delete

    -- ** healthcare.projects.locations.datasets.consentStores.consentArtifacts.get
    , module Network.Google.Resource.Healthcare.Projects.Locations.DataSets.ConsentStores.ConsentArtifacts.Get

    -- ** healthcare.projects.locations.datasets.consentStores.consentArtifacts.list
    , module Network.Google.Resource.Healthcare.Projects.Locations.DataSets.ConsentStores.ConsentArtifacts.List

    -- ** healthcare.projects.locations.datasets.consentStores.consents.activate
    , module Network.Google.Resource.Healthcare.Projects.Locations.DataSets.ConsentStores.Consents.Activate

    -- ** healthcare.projects.locations.datasets.consentStores.consents.create
    , module Network.Google.Resource.Healthcare.Projects.Locations.DataSets.ConsentStores.Consents.Create

    -- ** healthcare.projects.locations.datasets.consentStores.consents.delete
    , module Network.Google.Resource.Healthcare.Projects.Locations.DataSets.ConsentStores.Consents.Delete

    -- ** healthcare.projects.locations.datasets.consentStores.consents.deleteRevision
    , module Network.Google.Resource.Healthcare.Projects.Locations.DataSets.ConsentStores.Consents.DeleteRevision

    -- ** healthcare.projects.locations.datasets.consentStores.consents.get
    , module Network.Google.Resource.Healthcare.Projects.Locations.DataSets.ConsentStores.Consents.Get

    -- ** healthcare.projects.locations.datasets.consentStores.consents.list
    , module Network.Google.Resource.Healthcare.Projects.Locations.DataSets.ConsentStores.Consents.List

    -- ** healthcare.projects.locations.datasets.consentStores.consents.listRevisions
    , module Network.Google.Resource.Healthcare.Projects.Locations.DataSets.ConsentStores.Consents.ListRevisions

    -- ** healthcare.projects.locations.datasets.consentStores.consents.patch
    , module Network.Google.Resource.Healthcare.Projects.Locations.DataSets.ConsentStores.Consents.Patch

    -- ** healthcare.projects.locations.datasets.consentStores.consents.reject
    , module Network.Google.Resource.Healthcare.Projects.Locations.DataSets.ConsentStores.Consents.Reject

    -- ** healthcare.projects.locations.datasets.consentStores.consents.revoke
    , module Network.Google.Resource.Healthcare.Projects.Locations.DataSets.ConsentStores.Consents.Revoke

    -- ** healthcare.projects.locations.datasets.consentStores.create
    , module Network.Google.Resource.Healthcare.Projects.Locations.DataSets.ConsentStores.Create

    -- ** healthcare.projects.locations.datasets.consentStores.delete
    , module Network.Google.Resource.Healthcare.Projects.Locations.DataSets.ConsentStores.Delete

    -- ** healthcare.projects.locations.datasets.consentStores.evaluateUserConsents
    , module Network.Google.Resource.Healthcare.Projects.Locations.DataSets.ConsentStores.EvaluateUserConsents

    -- ** healthcare.projects.locations.datasets.consentStores.get
    , module Network.Google.Resource.Healthcare.Projects.Locations.DataSets.ConsentStores.Get

    -- ** healthcare.projects.locations.datasets.consentStores.getIamPolicy
    , module Network.Google.Resource.Healthcare.Projects.Locations.DataSets.ConsentStores.GetIAMPolicy

    -- ** healthcare.projects.locations.datasets.consentStores.list
    , module Network.Google.Resource.Healthcare.Projects.Locations.DataSets.ConsentStores.List

    -- ** healthcare.projects.locations.datasets.consentStores.patch
    , module Network.Google.Resource.Healthcare.Projects.Locations.DataSets.ConsentStores.Patch

    -- ** healthcare.projects.locations.datasets.consentStores.queryAccessibleData
    , module Network.Google.Resource.Healthcare.Projects.Locations.DataSets.ConsentStores.QueryAccessibleData

    -- ** healthcare.projects.locations.datasets.consentStores.setIamPolicy
    , module Network.Google.Resource.Healthcare.Projects.Locations.DataSets.ConsentStores.SetIAMPolicy

    -- ** healthcare.projects.locations.datasets.consentStores.testIamPermissions
    , module Network.Google.Resource.Healthcare.Projects.Locations.DataSets.ConsentStores.TestIAMPermissions

    -- ** healthcare.projects.locations.datasets.consentStores.userDataMappings.archive
    , module Network.Google.Resource.Healthcare.Projects.Locations.DataSets.ConsentStores.UserDataMAppings.Archive

    -- ** healthcare.projects.locations.datasets.consentStores.userDataMappings.create
    , module Network.Google.Resource.Healthcare.Projects.Locations.DataSets.ConsentStores.UserDataMAppings.Create

    -- ** healthcare.projects.locations.datasets.consentStores.userDataMappings.delete
    , module Network.Google.Resource.Healthcare.Projects.Locations.DataSets.ConsentStores.UserDataMAppings.Delete

    -- ** healthcare.projects.locations.datasets.consentStores.userDataMappings.get
    , module Network.Google.Resource.Healthcare.Projects.Locations.DataSets.ConsentStores.UserDataMAppings.Get

    -- ** healthcare.projects.locations.datasets.consentStores.userDataMappings.list
    , module Network.Google.Resource.Healthcare.Projects.Locations.DataSets.ConsentStores.UserDataMAppings.List

    -- ** healthcare.projects.locations.datasets.consentStores.userDataMappings.patch
    , module Network.Google.Resource.Healthcare.Projects.Locations.DataSets.ConsentStores.UserDataMAppings.Patch

    -- ** healthcare.projects.locations.datasets.create
    , module Network.Google.Resource.Healthcare.Projects.Locations.DataSets.Create

    -- ** healthcare.projects.locations.datasets.deidentify
    , module Network.Google.Resource.Healthcare.Projects.Locations.DataSets.Deidentify

    -- ** healthcare.projects.locations.datasets.delete
    , module Network.Google.Resource.Healthcare.Projects.Locations.DataSets.Delete

    -- ** healthcare.projects.locations.datasets.dicomStores.create
    , module Network.Google.Resource.Healthcare.Projects.Locations.DataSets.DicomStores.Create

    -- ** healthcare.projects.locations.datasets.dicomStores.deidentify
    , module Network.Google.Resource.Healthcare.Projects.Locations.DataSets.DicomStores.Deidentify

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

    -- ** healthcare.projects.locations.datasets.fhirStores.deidentify
    , module Network.Google.Resource.Healthcare.Projects.Locations.DataSets.FhirStores.Deidentify

    -- ** healthcare.projects.locations.datasets.fhirStores.delete
    , module Network.Google.Resource.Healthcare.Projects.Locations.DataSets.FhirStores.Delete

    -- ** healthcare.projects.locations.datasets.fhirStores.export
    , module Network.Google.Resource.Healthcare.Projects.Locations.DataSets.FhirStores.Export

    -- ** healthcare.projects.locations.datasets.fhirStores.fhir.Patient-everything
    , module Network.Google.Resource.Healthcare.Projects.Locations.DataSets.FhirStores.Fhir.PatientEverything

    -- ** healthcare.projects.locations.datasets.fhirStores.fhir.Resource-purge
    , module Network.Google.Resource.Healthcare.Projects.Locations.DataSets.FhirStores.Fhir.ResourcePurge

    -- ** healthcare.projects.locations.datasets.fhirStores.fhir.capabilities
    , module Network.Google.Resource.Healthcare.Projects.Locations.DataSets.FhirStores.Fhir.Capabilities

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

    -- ** healthcare.projects.locations.datasets.fhirStores.fhir.search-type
    , module Network.Google.Resource.Healthcare.Projects.Locations.DataSets.FhirStores.Fhir.SearchType

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

    -- ** healthcare.projects.locations.datasets.operations.cancel
    , module Network.Google.Resource.Healthcare.Projects.Locations.DataSets.Operations.Cancel

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

    -- ** Attribute
    , Attribute
    , attribute
    , aValues
    , aAttributeDefinitionId

    -- ** Signature
    , Signature
    , signature
    , sImage
    , sSignatureTime
    , sUserId
    , sMetadata

    -- ** ListConsentsResponse
    , ListConsentsResponse
    , listConsentsResponse
    , lcrNextPageToken
    , lcrConsents

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

    -- ** ListUserDataMAppingsResponse
    , ListUserDataMAppingsResponse
    , listUserDataMAppingsResponse
    , ludmarNextPageToken
    , ludmarUserDataMAppings

    -- ** ListConsentRevisionsResponse
    , ListConsentRevisionsResponse
    , listConsentRevisionsResponse
    , lcrrNextPageToken
    , lcrrConsents

    -- ** RedactConfig
    , RedactConfig
    , redactConfig

    -- ** Image
    , Image
    , image
    , iRawBytes
    , iGcsURI

    -- ** NotificationConfig
    , NotificationConfig
    , notificationConfig
    , ncPubsubTopic

    -- ** ImportResourcesResponse
    , ImportResourcesResponse
    , importResourcesResponse

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

    -- ** VersionSource
    , VersionSource
    , versionSource
    , vsValue
    , vsMshField

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

    -- ** CancelOperationRequest
    , CancelOperationRequest
    , cancelOperationRequest

    -- ** Hl7TypesConfig
    , Hl7TypesConfig
    , hl7TypesConfig
    , htcVersion
    , htcType

    -- ** FhirStore
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

    -- ** SegmentFields
    , SegmentFields
    , segmentFields
    , sfAddtional

    -- ** DataSet
    , DataSet
    , dataSet
    , dsName
    , dsTimeZone

    -- ** ImportDicomDataResponse
    , ImportDicomDataResponse
    , importDicomDataResponse

    -- ** Field
    , Field
    , field
    , fMaxOccurs
    , fName
    , fType
    , fTable
    , fMinOccurs

    -- ** SchemaSegment
    , SchemaSegment
    , schemaSegment
    , ssMaxOccurs
    , ssType
    , ssMinOccurs

    -- ** UserDataMApping
    , UserDataMApping
    , userDataMApping
    , udmaResourceAttributes
    , udmaUserId
    , udmaName
    , udmaArchiveTime
    , udmaDataId
    , udmaArchived

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

    -- ** ResultConsentDetails
    , ResultConsentDetails
    , resultConsentDetails
    , rcdAddtional

    -- ** QueryAccessibleDataRequest
    , QueryAccessibleDataRequest
    , queryAccessibleDataRequest
    , qadrResourceAttributes
    , qadrGcsDestination
    , qadrRequestAttributes

    -- ** RejectConsentRequest
    , RejectConsentRequest
    , rejectConsentRequest
    , rcrConsentArtifact

    -- ** ImportDicomDataRequest
    , ImportDicomDataRequest
    , importDicomDataRequest
    , iddrGcsSource

    -- ** QueryAccessibleDataRequestResourceAttributes
    , QueryAccessibleDataRequestResourceAttributes
    , queryAccessibleDataRequestResourceAttributes
    , qadrraAddtional

    -- ** GoogleCloudHealthcareV1DicomBigQueryDestination
    , GoogleCloudHealthcareV1DicomBigQueryDestination
    , googleCloudHealthcareV1DicomBigQueryDestination
    , gchvdbqdForce
    , gchvdbqdTableURI

    -- ** Hl7V2Store
    , Hl7V2Store
    , hl7V2Store
    , hvsNotificationConfigs
    , hvsRejectDuplicateMessage
    , hvsName
    , hvsParserConfig
    , hvsLabels

    -- ** EvaluateUserConsentsRequestResponseView
    , EvaluateUserConsentsRequestResponseView (..)

    -- ** GoogleCloudHealthcareV1DicomGcsSource
    , GoogleCloudHealthcareV1DicomGcsSource
    , googleCloudHealthcareV1DicomGcsSource
    , gchvdgsURI

    -- ** Hl7V2NotificationConfig
    , Hl7V2NotificationConfig
    , hl7V2NotificationConfig
    , hvncPubsubTopic
    , hvncFilter

    -- ** ConsentArtifact
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

    -- ** GoogleCloudHealthcareV1DeidentifyDeidentifyFhirStoreSummary
    , GoogleCloudHealthcareV1DeidentifyDeidentifyFhirStoreSummary
    , googleCloudHealthcareV1DeidentifyDeidentifyFhirStoreSummary

    -- ** GoogleCloudHealthcareV1FhirGcsDestination
    , GoogleCloudHealthcareV1FhirGcsDestination
    , googleCloudHealthcareV1FhirGcsDestination
    , gchvfgdURIPrefix

    -- ** GoogleCloudHealthcareV1ConsentPolicy
    , GoogleCloudHealthcareV1ConsentPolicy
    , googleCloudHealthcareV1ConsentPolicy
    , gchvcpResourceAttributes
    , gchvcpAuthorizationRule

    -- ** ConsentMetadata
    , ConsentMetadata
    , consentMetadata
    , cmAddtional

    -- ** SchemaPackage
    , SchemaPackage
    , schemaPackage
    , spSchemas
    , spTypes
    , spSchematizedParsingType
    , spIgnoreMinOccurs

    -- ** ExportDicomDataResponse
    , ExportDicomDataResponse
    , exportDicomDataResponse

    -- ** CheckDataAccessRequest
    , CheckDataAccessRequest
    , checkDataAccessRequest
    , cdarResponseView
    , cdarConsentList
    , cdarDataId
    , cdarRequestAttributes

    -- ** ListAttributeDefinitionsResponse
    , ListAttributeDefinitionsResponse
    , listAttributeDefinitionsResponse
    , ladrNextPageToken
    , ladrAttributeDefinitions

    -- ** ListConsentStoresResponse
    , ListConsentStoresResponse
    , listConsentStoresResponse
    , lcsrNextPageToken
    , lcsrConsentStores

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

    -- ** Consent
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

    -- ** EvaluateUserConsentsRequest
    , EvaluateUserConsentsRequest
    , evaluateUserConsentsRequest
    , eucrResourceAttributes
    , eucrResponseView
    , eucrUserId
    , eucrConsentList
    , eucrPageToken
    , eucrRequestAttributes
    , eucrPageSize

    -- ** DateShiftConfig
    , DateShiftConfig
    , dateShiftConfig
    , dscCryptoKey

    -- ** SchemaGroup
    , SchemaGroup
    , schemaGroup
    , sgMaxOccurs
    , sgMembers
    , sgName
    , sgChoice
    , sgMinOccurs

    -- ** ArchiveUserDataMAppingRequest
    , ArchiveUserDataMAppingRequest
    , archiveUserDataMAppingRequest

    -- ** SetIAMPolicyRequest
    , SetIAMPolicyRequest
    , setIAMPolicyRequest
    , siprUpdateMask
    , siprPolicy

    -- ** DicomFilterConfig
    , DicomFilterConfig
    , dicomFilterConfig
    , dfcResourcePathsGcsURI

    -- ** DeidentifySummary
    , DeidentifySummary
    , deidentifySummary

    -- ** GoogleCloudHealthcareV1DicomGcsDestination
    , GoogleCloudHealthcareV1DicomGcsDestination
    , googleCloudHealthcareV1DicomGcsDestination
    , gchvdgdURIPrefix
    , gchvdgdMimeType

    -- ** Result
    , Result
    , result
    , rConsentDetails
    , rConsented
    , rDataId

    -- ** Resources
    , Resources
    , resources
    , rResources

    -- ** ProgressCounter
    , ProgressCounter
    , progressCounter
    , pcPending
    , pcSuccess
    , pcFailure

    -- ** AttributeDefinitionCategory
    , AttributeDefinitionCategory (..)

    -- ** ProjectsLocationsDataSetsHl7V2StoresMessagesGetView
    , ProjectsLocationsDataSetsHl7V2StoresMessagesGetView (..)

    -- ** ImportResourcesRequestContentStructure
    , ImportResourcesRequestContentStructure (..)

    -- ** TypePrimitive
    , TypePrimitive (..)

    -- ** AttributeDefinition
    , AttributeDefinition
    , attributeDefinition
    , adDataMAppingDefaultValue
    , adCategory
    , adName
    , adConsentDefaultValues
    , adAllowedValues
    , adDescription

    -- ** GroupOrSegment
    , GroupOrSegment
    , groupOrSegment
    , gosGroup
    , gosSegment

    -- ** GoogleCloudHealthcareV1DeidentifyDeidentifyDicomStoreSummary
    , GoogleCloudHealthcareV1DeidentifyDeidentifyDicomStoreSummary
    , googleCloudHealthcareV1DeidentifyDeidentifyDicomStoreSummary

    -- ** FieldMetadataAction
    , FieldMetadataAction (..)

    -- ** ConsentStore
    , ConsentStore
    , consentStore
    , csName
    , csLabels
    , csEnableConsentCreateOnUpdate
    , csDefaultConsentTtl

    -- ** ConsentList
    , ConsentList
    , consentList
    , clConsents

    -- ** EvaluateUserConsentsResponse
    , EvaluateUserConsentsResponse
    , evaluateUserConsentsResponse
    , eucrNextPageToken
    , eucrResults

    -- ** ArchiveUserDataMAppingResponse
    , ArchiveUserDataMAppingResponse
    , archiveUserDataMAppingResponse

    -- ** ConsentStoreLabels
    , ConsentStoreLabels
    , consentStoreLabels
    , cslAddtional

    -- ** SchemaPackageSchematizedParsingType
    , SchemaPackageSchematizedParsingType (..)

    -- ** ConsentEvaluationEvaluationResult
    , ConsentEvaluationEvaluationResult (..)

    -- ** SchematizedData
    , SchematizedData
    , schematizedData
    , sdData
    , sdError

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

    -- ** QueryAccessibleDataResponse
    , QueryAccessibleDataResponse
    , queryAccessibleDataResponse
    , qadrGcsURIs

    -- ** RevokeConsentRequest
    , RevokeConsentRequest
    , revokeConsentRequest
    , rConsentArtifact

    -- ** FhirStoreLabels
    , FhirStoreLabels
    , fhirStoreLabels
    , fslAddtional

    -- ** DeidentifyDicomStoreRequest
    , DeidentifyDicomStoreRequest
    , deidentifyDicomStoreRequest
    , ddsrConfig
    , ddsrFilterConfig
    , ddsrDestinationStore

    -- ** AuditLogConfigLogType
    , AuditLogConfigLogType (..)

    -- ** ReplaceWithInfoTypeConfig
    , ReplaceWithInfoTypeConfig
    , replaceWithInfoTypeConfig

    -- ** ListConsentArtifactsResponse
    , ListConsentArtifactsResponse
    , listConsentArtifactsResponse
    , lcarNextPageToken
    , lcarConsentArtifacts

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

    -- ** CheckDataAccessResponseConsentDetails
    , CheckDataAccessResponseConsentDetails
    , checkDataAccessResponseConsentDetails
    , cdarcdAddtional

    -- ** ConsentArtifactMetadata
    , ConsentArtifactMetadata
    , consentArtifactMetadata
    , camAddtional

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

    -- ** FhirFilter
    , FhirFilter
    , fhirFilter
    , ffResources

    -- ** CheckDataAccessRequestResponseView
    , CheckDataAccessRequestResponseView (..)

    -- ** ParserConfig
    , ParserConfig
    , parserConfig
    , pcSegmentTerminator
    , pcSchema
    , pcAllowNullHeader

    -- ** ProjectsLocationsDataSetsHl7V2StoresMessagesListView
    , ProjectsLocationsDataSetsHl7V2StoresMessagesListView (..)

    -- ** CheckDataAccessRequestRequestAttributes
    , CheckDataAccessRequestRequestAttributes
    , checkDataAccessRequestRequestAttributes
    , cdarraAddtional

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

    -- ** Hl7SchemaConfig
    , Hl7SchemaConfig
    , hl7SchemaConfig
    , hscMessageSchemaConfigs
    , hscVersion

    -- ** FhirStoreVersion
    , FhirStoreVersion (..)

    -- ** ConsentEvaluation
    , ConsentEvaluation
    , consentEvaluation
    , ceEvaluationResult

    -- ** EvaluateUserConsentsRequestRequestAttributes
    , EvaluateUserConsentsRequestRequestAttributes
    , evaluateUserConsentsRequestRequestAttributes
    , eucrraAddtional

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

    -- ** Type
    , Type
    , type'
    , tName
    , tPrimitive
    , tFields

    -- ** LocationMetadata
    , LocationMetadata
    , locationMetadata
    , lmAddtional

    -- ** OperationMetadata
    , OperationMetadata
    , operationMetadata
    , omLogsURL
    , omCounter
    , omEndTime
    , omAPIMethodName
    , omCancelRequested
    , omCreateTime

    -- ** Message
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

    -- ** Hl7SchemaConfigMessageSchemaConfigs
    , Hl7SchemaConfigMessageSchemaConfigs
    , hl7SchemaConfigMessageSchemaConfigs
    , hscmscAddtional

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

    -- ** GoogleCloudHealthcareV1ConsentGcsDestination
    , GoogleCloudHealthcareV1ConsentGcsDestination
    , googleCloudHealthcareV1ConsentGcsDestination
    , gchvcgdURIPrefix

    -- ** QueryAccessibleDataRequestRequestAttributes
    , QueryAccessibleDataRequestRequestAttributes
    , queryAccessibleDataRequestRequestAttributes
    , qAddtional

    -- ** AuditLogConfig
    , AuditLogConfig
    , auditLogConfig
    , alcLogType
    , alcExemptedMembers

    -- ** EvaluateUserConsentsRequestResourceAttributes
    , EvaluateUserConsentsRequestResourceAttributes
    , evaluateUserConsentsRequestResourceAttributes
    , eAddtional

    -- ** GoogleCloudHealthcareV1FhirBigQueryDestinationWriteDisPosition
    , GoogleCloudHealthcareV1FhirBigQueryDestinationWriteDisPosition (..)

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
    , dConfig
    , dDestinationDataSet

    -- ** ExportResourcesResponse
    , ExportResourcesResponse
    , exportResourcesResponse

    -- ** PatientId
    , PatientId
    , patientId
    , piValue
    , piType

    -- ** DicomConfig
    , DicomConfig
    , dicomConfig
    , dcSkipIdRedaction
    , dcKeepList
    , dcRemoveList
    , dcFilterProFile

    -- ** StreamConfig
    , StreamConfig
    , streamConfig
    , scBigQueryDestination
    , scResourceTypes

    -- ** OperationResponse
    , OperationResponse
    , operationResponse
    , orAddtional

    -- ** CreateMessageRequest
    , CreateMessageRequest
    , createMessageRequest
    , cmrMessage

    -- ** DeidentifyFhirStoreRequest
    , DeidentifyFhirStoreRequest
    , deidentifyFhirStoreRequest
    , dfsrResourceFilter
    , dfsrConfig
    , dfsrDestinationStore

    -- ** ActivateConsentRequest
    , ActivateConsentRequest
    , activateConsentRequest
    , acrTtl
    , acrConsentArtifact
    , acrExpireTime

    -- ** DicomStoreLabels
    , DicomStoreLabels
    , dicomStoreLabels
    , dslAddtional

    -- ** ListMessagesResponse
    , ListMessagesResponse
    , listMessagesResponse
    , lmrNextPageToken
    , lmrHl7V2Messages

    -- ** GoogleCloudHealthcareV1FhirBigQueryDestination
    , GoogleCloudHealthcareV1FhirBigQueryDestination
    , googleCloudHealthcareV1FhirBigQueryDestination
    , gchvfbqdWriteDisPosition
    , gchvfbqdForce
    , gchvfbqdSchemaConfig
    , gchvfbqdDataSetURI

    -- ** CheckDataAccessResponse
    , CheckDataAccessResponse
    , checkDataAccessResponse
    , cdarConsentDetails
    , cdarConsented

    -- ** GoogleCloudHealthcareV1FhirGcsSource
    , GoogleCloudHealthcareV1FhirGcsSource
    , googleCloudHealthcareV1FhirGcsSource
    , gchvfgsURI

    -- ** ListDicomStoresResponse
    , ListDicomStoresResponse
    , listDicomStoresResponse
    , lNextPageToken
    , lDicomStores

    -- ** ConsentState
    , ConsentState (..)

    -- ** SignatureMetadata
    , SignatureMetadata
    , signatureMetadata
    , smAddtional

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
    ) where

import Network.Google.Prelude
import Network.Google.Healthcare.Types
import Network.Google.Resource.Healthcare.Projects.Locations.DataSets.ConsentStores.AttributeDefinitions.Create
import Network.Google.Resource.Healthcare.Projects.Locations.DataSets.ConsentStores.AttributeDefinitions.Delete
import Network.Google.Resource.Healthcare.Projects.Locations.DataSets.ConsentStores.AttributeDefinitions.Get
import Network.Google.Resource.Healthcare.Projects.Locations.DataSets.ConsentStores.AttributeDefinitions.List
import Network.Google.Resource.Healthcare.Projects.Locations.DataSets.ConsentStores.AttributeDefinitions.Patch
import Network.Google.Resource.Healthcare.Projects.Locations.DataSets.ConsentStores.CheckDataAccess
import Network.Google.Resource.Healthcare.Projects.Locations.DataSets.ConsentStores.ConsentArtifacts.Create
import Network.Google.Resource.Healthcare.Projects.Locations.DataSets.ConsentStores.ConsentArtifacts.Delete
import Network.Google.Resource.Healthcare.Projects.Locations.DataSets.ConsentStores.ConsentArtifacts.Get
import Network.Google.Resource.Healthcare.Projects.Locations.DataSets.ConsentStores.ConsentArtifacts.List
import Network.Google.Resource.Healthcare.Projects.Locations.DataSets.ConsentStores.Consents.Activate
import Network.Google.Resource.Healthcare.Projects.Locations.DataSets.ConsentStores.Consents.Create
import Network.Google.Resource.Healthcare.Projects.Locations.DataSets.ConsentStores.Consents.Delete
import Network.Google.Resource.Healthcare.Projects.Locations.DataSets.ConsentStores.Consents.DeleteRevision
import Network.Google.Resource.Healthcare.Projects.Locations.DataSets.ConsentStores.Consents.Get
import Network.Google.Resource.Healthcare.Projects.Locations.DataSets.ConsentStores.Consents.List
import Network.Google.Resource.Healthcare.Projects.Locations.DataSets.ConsentStores.Consents.ListRevisions
import Network.Google.Resource.Healthcare.Projects.Locations.DataSets.ConsentStores.Consents.Patch
import Network.Google.Resource.Healthcare.Projects.Locations.DataSets.ConsentStores.Consents.Reject
import Network.Google.Resource.Healthcare.Projects.Locations.DataSets.ConsentStores.Consents.Revoke
import Network.Google.Resource.Healthcare.Projects.Locations.DataSets.ConsentStores.Create
import Network.Google.Resource.Healthcare.Projects.Locations.DataSets.ConsentStores.Delete
import Network.Google.Resource.Healthcare.Projects.Locations.DataSets.ConsentStores.EvaluateUserConsents
import Network.Google.Resource.Healthcare.Projects.Locations.DataSets.ConsentStores.Get
import Network.Google.Resource.Healthcare.Projects.Locations.DataSets.ConsentStores.GetIAMPolicy
import Network.Google.Resource.Healthcare.Projects.Locations.DataSets.ConsentStores.List
import Network.Google.Resource.Healthcare.Projects.Locations.DataSets.ConsentStores.Patch
import Network.Google.Resource.Healthcare.Projects.Locations.DataSets.ConsentStores.QueryAccessibleData
import Network.Google.Resource.Healthcare.Projects.Locations.DataSets.ConsentStores.SetIAMPolicy
import Network.Google.Resource.Healthcare.Projects.Locations.DataSets.ConsentStores.TestIAMPermissions
import Network.Google.Resource.Healthcare.Projects.Locations.DataSets.ConsentStores.UserDataMAppings.Archive
import Network.Google.Resource.Healthcare.Projects.Locations.DataSets.ConsentStores.UserDataMAppings.Create
import Network.Google.Resource.Healthcare.Projects.Locations.DataSets.ConsentStores.UserDataMAppings.Delete
import Network.Google.Resource.Healthcare.Projects.Locations.DataSets.ConsentStores.UserDataMAppings.Get
import Network.Google.Resource.Healthcare.Projects.Locations.DataSets.ConsentStores.UserDataMAppings.List
import Network.Google.Resource.Healthcare.Projects.Locations.DataSets.ConsentStores.UserDataMAppings.Patch
import Network.Google.Resource.Healthcare.Projects.Locations.DataSets.Create
import Network.Google.Resource.Healthcare.Projects.Locations.DataSets.Deidentify
import Network.Google.Resource.Healthcare.Projects.Locations.DataSets.Delete
import Network.Google.Resource.Healthcare.Projects.Locations.DataSets.DicomStores.Create
import Network.Google.Resource.Healthcare.Projects.Locations.DataSets.DicomStores.Deidentify
import Network.Google.Resource.Healthcare.Projects.Locations.DataSets.DicomStores.Delete
import Network.Google.Resource.Healthcare.Projects.Locations.DataSets.DicomStores.Export
import Network.Google.Resource.Healthcare.Projects.Locations.DataSets.DicomStores.Get
import Network.Google.Resource.Healthcare.Projects.Locations.DataSets.DicomStores.GetIAMPolicy
import Network.Google.Resource.Healthcare.Projects.Locations.DataSets.DicomStores.Import
import Network.Google.Resource.Healthcare.Projects.Locations.DataSets.DicomStores.List
import Network.Google.Resource.Healthcare.Projects.Locations.DataSets.DicomStores.Patch
import Network.Google.Resource.Healthcare.Projects.Locations.DataSets.DicomStores.SearchForInstances
import Network.Google.Resource.Healthcare.Projects.Locations.DataSets.DicomStores.SearchForSeries
import Network.Google.Resource.Healthcare.Projects.Locations.DataSets.DicomStores.SearchForStudies
import Network.Google.Resource.Healthcare.Projects.Locations.DataSets.DicomStores.SetIAMPolicy
import Network.Google.Resource.Healthcare.Projects.Locations.DataSets.DicomStores.StoreInstances
import Network.Google.Resource.Healthcare.Projects.Locations.DataSets.DicomStores.Studies.Delete
import Network.Google.Resource.Healthcare.Projects.Locations.DataSets.DicomStores.Studies.RetrieveMetadata
import Network.Google.Resource.Healthcare.Projects.Locations.DataSets.DicomStores.Studies.RetrieveStudy
import Network.Google.Resource.Healthcare.Projects.Locations.DataSets.DicomStores.Studies.SearchForInstances
import Network.Google.Resource.Healthcare.Projects.Locations.DataSets.DicomStores.Studies.SearchForSeries
import Network.Google.Resource.Healthcare.Projects.Locations.DataSets.DicomStores.Studies.Series.Delete
import Network.Google.Resource.Healthcare.Projects.Locations.DataSets.DicomStores.Studies.Series.Instances.Delete
import Network.Google.Resource.Healthcare.Projects.Locations.DataSets.DicomStores.Studies.Series.Instances.Frames.RetrieveFrames
import Network.Google.Resource.Healthcare.Projects.Locations.DataSets.DicomStores.Studies.Series.Instances.Frames.RetrieveRendered
import Network.Google.Resource.Healthcare.Projects.Locations.DataSets.DicomStores.Studies.Series.Instances.RetrieveInstance
import Network.Google.Resource.Healthcare.Projects.Locations.DataSets.DicomStores.Studies.Series.Instances.RetrieveMetadata
import Network.Google.Resource.Healthcare.Projects.Locations.DataSets.DicomStores.Studies.Series.Instances.RetrieveRendered
import Network.Google.Resource.Healthcare.Projects.Locations.DataSets.DicomStores.Studies.Series.RetrieveMetadata
import Network.Google.Resource.Healthcare.Projects.Locations.DataSets.DicomStores.Studies.Series.RetrieveSeries
import Network.Google.Resource.Healthcare.Projects.Locations.DataSets.DicomStores.Studies.Series.SearchForInstances
import Network.Google.Resource.Healthcare.Projects.Locations.DataSets.DicomStores.Studies.StoreInstances
import Network.Google.Resource.Healthcare.Projects.Locations.DataSets.DicomStores.TestIAMPermissions
import Network.Google.Resource.Healthcare.Projects.Locations.DataSets.FhirStores.Create
import Network.Google.Resource.Healthcare.Projects.Locations.DataSets.FhirStores.Deidentify
import Network.Google.Resource.Healthcare.Projects.Locations.DataSets.FhirStores.Delete
import Network.Google.Resource.Healthcare.Projects.Locations.DataSets.FhirStores.Export
import Network.Google.Resource.Healthcare.Projects.Locations.DataSets.FhirStores.Fhir.Capabilities
import Network.Google.Resource.Healthcare.Projects.Locations.DataSets.FhirStores.Fhir.Create
import Network.Google.Resource.Healthcare.Projects.Locations.DataSets.FhirStores.Fhir.Delete
import Network.Google.Resource.Healthcare.Projects.Locations.DataSets.FhirStores.Fhir.ExecuteBundle
import Network.Google.Resource.Healthcare.Projects.Locations.DataSets.FhirStores.Fhir.History
import Network.Google.Resource.Healthcare.Projects.Locations.DataSets.FhirStores.Fhir.Patch
import Network.Google.Resource.Healthcare.Projects.Locations.DataSets.FhirStores.Fhir.PatientEverything
import Network.Google.Resource.Healthcare.Projects.Locations.DataSets.FhirStores.Fhir.Read
import Network.Google.Resource.Healthcare.Projects.Locations.DataSets.FhirStores.Fhir.ResourcePurge
import Network.Google.Resource.Healthcare.Projects.Locations.DataSets.FhirStores.Fhir.Search
import Network.Google.Resource.Healthcare.Projects.Locations.DataSets.FhirStores.Fhir.SearchType
import Network.Google.Resource.Healthcare.Projects.Locations.DataSets.FhirStores.Fhir.Update
import Network.Google.Resource.Healthcare.Projects.Locations.DataSets.FhirStores.Fhir.Vread
import Network.Google.Resource.Healthcare.Projects.Locations.DataSets.FhirStores.Get
import Network.Google.Resource.Healthcare.Projects.Locations.DataSets.FhirStores.GetIAMPolicy
import Network.Google.Resource.Healthcare.Projects.Locations.DataSets.FhirStores.Import
import Network.Google.Resource.Healthcare.Projects.Locations.DataSets.FhirStores.List
import Network.Google.Resource.Healthcare.Projects.Locations.DataSets.FhirStores.Patch
import Network.Google.Resource.Healthcare.Projects.Locations.DataSets.FhirStores.SetIAMPolicy
import Network.Google.Resource.Healthcare.Projects.Locations.DataSets.FhirStores.TestIAMPermissions
import Network.Google.Resource.Healthcare.Projects.Locations.DataSets.Get
import Network.Google.Resource.Healthcare.Projects.Locations.DataSets.GetIAMPolicy
import Network.Google.Resource.Healthcare.Projects.Locations.DataSets.Hl7V2Stores.Create
import Network.Google.Resource.Healthcare.Projects.Locations.DataSets.Hl7V2Stores.Delete
import Network.Google.Resource.Healthcare.Projects.Locations.DataSets.Hl7V2Stores.Get
import Network.Google.Resource.Healthcare.Projects.Locations.DataSets.Hl7V2Stores.GetIAMPolicy
import Network.Google.Resource.Healthcare.Projects.Locations.DataSets.Hl7V2Stores.List
import Network.Google.Resource.Healthcare.Projects.Locations.DataSets.Hl7V2Stores.Messages.Create
import Network.Google.Resource.Healthcare.Projects.Locations.DataSets.Hl7V2Stores.Messages.Delete
import Network.Google.Resource.Healthcare.Projects.Locations.DataSets.Hl7V2Stores.Messages.Get
import Network.Google.Resource.Healthcare.Projects.Locations.DataSets.Hl7V2Stores.Messages.Ingest
import Network.Google.Resource.Healthcare.Projects.Locations.DataSets.Hl7V2Stores.Messages.List
import Network.Google.Resource.Healthcare.Projects.Locations.DataSets.Hl7V2Stores.Messages.Patch
import Network.Google.Resource.Healthcare.Projects.Locations.DataSets.Hl7V2Stores.Patch
import Network.Google.Resource.Healthcare.Projects.Locations.DataSets.Hl7V2Stores.SetIAMPolicy
import Network.Google.Resource.Healthcare.Projects.Locations.DataSets.Hl7V2Stores.TestIAMPermissions
import Network.Google.Resource.Healthcare.Projects.Locations.DataSets.List
import Network.Google.Resource.Healthcare.Projects.Locations.DataSets.Operations.Cancel
import Network.Google.Resource.Healthcare.Projects.Locations.DataSets.Operations.Get
import Network.Google.Resource.Healthcare.Projects.Locations.DataSets.Operations.List
import Network.Google.Resource.Healthcare.Projects.Locations.DataSets.Patch
import Network.Google.Resource.Healthcare.Projects.Locations.DataSets.SetIAMPolicy
import Network.Google.Resource.Healthcare.Projects.Locations.DataSets.TestIAMPermissions
import Network.Google.Resource.Healthcare.Projects.Locations.Get
import Network.Google.Resource.Healthcare.Projects.Locations.List

{- $resources
TODO
-}

-- | Represents the entirety of the methods and resources available for the Cloud Healthcare API service.
type HealthcareAPI =
     ProjectsLocationsDataSetsConsentStoresAttributeDefinitionsListResource
       :<|>
       ProjectsLocationsDataSetsConsentStoresAttributeDefinitionsPatchResource
       :<|>
       ProjectsLocationsDataSetsConsentStoresAttributeDefinitionsGetResource
       :<|>
       ProjectsLocationsDataSetsConsentStoresAttributeDefinitionsCreateResource
       :<|>
       ProjectsLocationsDataSetsConsentStoresAttributeDefinitionsDeleteResource
       :<|>
       ProjectsLocationsDataSetsConsentStoresConsentsRejectResource
       :<|>
       ProjectsLocationsDataSetsConsentStoresConsentsListResource
       :<|>
       ProjectsLocationsDataSetsConsentStoresConsentsDeleteRevisionResource
       :<|>
       ProjectsLocationsDataSetsConsentStoresConsentsPatchResource
       :<|>
       ProjectsLocationsDataSetsConsentStoresConsentsGetResource
       :<|>
       ProjectsLocationsDataSetsConsentStoresConsentsActivateResource
       :<|>
       ProjectsLocationsDataSetsConsentStoresConsentsCreateResource
       :<|>
       ProjectsLocationsDataSetsConsentStoresConsentsListRevisionsResource
       :<|>
       ProjectsLocationsDataSetsConsentStoresConsentsRevokeResource
       :<|>
       ProjectsLocationsDataSetsConsentStoresConsentsDeleteResource
       :<|>
       ProjectsLocationsDataSetsConsentStoresConsentArtifactsListResource
       :<|>
       ProjectsLocationsDataSetsConsentStoresConsentArtifactsGetResource
       :<|>
       ProjectsLocationsDataSetsConsentStoresConsentArtifactsCreateResource
       :<|>
       ProjectsLocationsDataSetsConsentStoresConsentArtifactsDeleteResource
       :<|>
       ProjectsLocationsDataSetsConsentStoresUserDataMAppingsListResource
       :<|>
       ProjectsLocationsDataSetsConsentStoresUserDataMAppingsPatchResource
       :<|>
       ProjectsLocationsDataSetsConsentStoresUserDataMAppingsGetResource
       :<|>
       ProjectsLocationsDataSetsConsentStoresUserDataMAppingsCreateResource
       :<|>
       ProjectsLocationsDataSetsConsentStoresUserDataMAppingsArchiveResource
       :<|>
       ProjectsLocationsDataSetsConsentStoresUserDataMAppingsDeleteResource
       :<|>
       ProjectsLocationsDataSetsConsentStoresListResource
       :<|>
       ProjectsLocationsDataSetsConsentStoresGetIAMPolicyResource
       :<|>
       ProjectsLocationsDataSetsConsentStoresPatchResource
       :<|>
       ProjectsLocationsDataSetsConsentStoresGetResource
       :<|>
       ProjectsLocationsDataSetsConsentStoresCreateResource
       :<|>
       ProjectsLocationsDataSetsConsentStoresQueryAccessibleDataResource
       :<|>
       ProjectsLocationsDataSetsConsentStoresSetIAMPolicyResource
       :<|>
       ProjectsLocationsDataSetsConsentStoresEvaluateUserConsentsResource
       :<|>
       ProjectsLocationsDataSetsConsentStoresCheckDataAccessResource
       :<|>
       ProjectsLocationsDataSetsConsentStoresTestIAMPermissionsResource
       :<|>
       ProjectsLocationsDataSetsConsentStoresDeleteResource
       :<|>
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
       ProjectsLocationsDataSetsDicomStoresDeidentifyResource
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
       ProjectsLocationsDataSetsOperationsCancelResource
       :<|>
       ProjectsLocationsDataSetsFhirStoresFhirVreadResource
       :<|>
       ProjectsLocationsDataSetsFhirStoresFhirReadResource
       :<|>
       ProjectsLocationsDataSetsFhirStoresFhirHistoryResource
       :<|>
       ProjectsLocationsDataSetsFhirStoresFhirPatchResource
       :<|>
       ProjectsLocationsDataSetsFhirStoresFhirCreateResource
       :<|>
       ProjectsLocationsDataSetsFhirStoresFhirPatientEverythingResource
       :<|>
       ProjectsLocationsDataSetsFhirStoresFhirResourcePurgeResource
       :<|>
       ProjectsLocationsDataSetsFhirStoresFhirSearchTypeResource
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
       ProjectsLocationsDataSetsFhirStoresDeidentifyResource
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
