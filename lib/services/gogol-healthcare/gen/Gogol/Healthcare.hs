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
-- Module      : Gogol.Healthcare
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Manage, store, and access healthcare data in Google Cloud Platform.
--
-- /See:/ <https://cloud.google.com/healthcare Cloud Healthcare API Reference>
module Gogol.Healthcare
  ( -- * Configuration
    healthcareService,

    -- * OAuth Scopes
    CloudPlatform'FullControl,

    -- * Resources

    -- ** healthcare.projects.locations.datasets.consentStores.attributeDefinitions.create
    HealthcareProjectsLocationsDatasetsConsentStoresAttributeDefinitionsCreateResource,
    newHealthcareProjectsLocationsDatasetsConsentStoresAttributeDefinitionsCreate,
    HealthcareProjectsLocationsDatasetsConsentStoresAttributeDefinitionsCreate,

    -- ** healthcare.projects.locations.datasets.consentStores.attributeDefinitions.delete
    HealthcareProjectsLocationsDatasetsConsentStoresAttributeDefinitionsDeleteResource,
    newHealthcareProjectsLocationsDatasetsConsentStoresAttributeDefinitionsDelete,
    HealthcareProjectsLocationsDatasetsConsentStoresAttributeDefinitionsDelete,

    -- ** healthcare.projects.locations.datasets.consentStores.attributeDefinitions.get
    HealthcareProjectsLocationsDatasetsConsentStoresAttributeDefinitionsGetResource,
    newHealthcareProjectsLocationsDatasetsConsentStoresAttributeDefinitionsGet,
    HealthcareProjectsLocationsDatasetsConsentStoresAttributeDefinitionsGet,

    -- ** healthcare.projects.locations.datasets.consentStores.attributeDefinitions.list
    HealthcareProjectsLocationsDatasetsConsentStoresAttributeDefinitionsListResource,
    newHealthcareProjectsLocationsDatasetsConsentStoresAttributeDefinitionsList,
    HealthcareProjectsLocationsDatasetsConsentStoresAttributeDefinitionsList,

    -- ** healthcare.projects.locations.datasets.consentStores.attributeDefinitions.patch
    HealthcareProjectsLocationsDatasetsConsentStoresAttributeDefinitionsPatchResource,
    newHealthcareProjectsLocationsDatasetsConsentStoresAttributeDefinitionsPatch,
    HealthcareProjectsLocationsDatasetsConsentStoresAttributeDefinitionsPatch,

    -- ** healthcare.projects.locations.datasets.consentStores.checkDataAccess
    HealthcareProjectsLocationsDatasetsConsentStoresCheckDataAccessResource,
    newHealthcareProjectsLocationsDatasetsConsentStoresCheckDataAccess,
    HealthcareProjectsLocationsDatasetsConsentStoresCheckDataAccess,

    -- ** healthcare.projects.locations.datasets.consentStores.consentArtifacts.create
    HealthcareProjectsLocationsDatasetsConsentStoresConsentArtifactsCreateResource,
    newHealthcareProjectsLocationsDatasetsConsentStoresConsentArtifactsCreate,
    HealthcareProjectsLocationsDatasetsConsentStoresConsentArtifactsCreate,

    -- ** healthcare.projects.locations.datasets.consentStores.consentArtifacts.delete
    HealthcareProjectsLocationsDatasetsConsentStoresConsentArtifactsDeleteResource,
    newHealthcareProjectsLocationsDatasetsConsentStoresConsentArtifactsDelete,
    HealthcareProjectsLocationsDatasetsConsentStoresConsentArtifactsDelete,

    -- ** healthcare.projects.locations.datasets.consentStores.consentArtifacts.get
    HealthcareProjectsLocationsDatasetsConsentStoresConsentArtifactsGetResource,
    newHealthcareProjectsLocationsDatasetsConsentStoresConsentArtifactsGet,
    HealthcareProjectsLocationsDatasetsConsentStoresConsentArtifactsGet,

    -- ** healthcare.projects.locations.datasets.consentStores.consentArtifacts.list
    HealthcareProjectsLocationsDatasetsConsentStoresConsentArtifactsListResource,
    newHealthcareProjectsLocationsDatasetsConsentStoresConsentArtifactsList,
    HealthcareProjectsLocationsDatasetsConsentStoresConsentArtifactsList,

    -- ** healthcare.projects.locations.datasets.consentStores.consents.activate
    HealthcareProjectsLocationsDatasetsConsentStoresConsentsActivateResource,
    newHealthcareProjectsLocationsDatasetsConsentStoresConsentsActivate,
    HealthcareProjectsLocationsDatasetsConsentStoresConsentsActivate,

    -- ** healthcare.projects.locations.datasets.consentStores.consents.create
    HealthcareProjectsLocationsDatasetsConsentStoresConsentsCreateResource,
    newHealthcareProjectsLocationsDatasetsConsentStoresConsentsCreate,
    HealthcareProjectsLocationsDatasetsConsentStoresConsentsCreate,

    -- ** healthcare.projects.locations.datasets.consentStores.consents.delete
    HealthcareProjectsLocationsDatasetsConsentStoresConsentsDeleteResource,
    newHealthcareProjectsLocationsDatasetsConsentStoresConsentsDelete,
    HealthcareProjectsLocationsDatasetsConsentStoresConsentsDelete,

    -- ** healthcare.projects.locations.datasets.consentStores.consents.deleteRevision
    HealthcareProjectsLocationsDatasetsConsentStoresConsentsDeleteRevisionResource,
    newHealthcareProjectsLocationsDatasetsConsentStoresConsentsDeleteRevision,
    HealthcareProjectsLocationsDatasetsConsentStoresConsentsDeleteRevision,

    -- ** healthcare.projects.locations.datasets.consentStores.consents.get
    HealthcareProjectsLocationsDatasetsConsentStoresConsentsGetResource,
    newHealthcareProjectsLocationsDatasetsConsentStoresConsentsGet,
    HealthcareProjectsLocationsDatasetsConsentStoresConsentsGet,

    -- ** healthcare.projects.locations.datasets.consentStores.consents.list
    HealthcareProjectsLocationsDatasetsConsentStoresConsentsListResource,
    newHealthcareProjectsLocationsDatasetsConsentStoresConsentsList,
    HealthcareProjectsLocationsDatasetsConsentStoresConsentsList,

    -- ** healthcare.projects.locations.datasets.consentStores.consents.listRevisions
    HealthcareProjectsLocationsDatasetsConsentStoresConsentsListRevisionsResource,
    newHealthcareProjectsLocationsDatasetsConsentStoresConsentsListRevisions,
    HealthcareProjectsLocationsDatasetsConsentStoresConsentsListRevisions,

    -- ** healthcare.projects.locations.datasets.consentStores.consents.patch
    HealthcareProjectsLocationsDatasetsConsentStoresConsentsPatchResource,
    newHealthcareProjectsLocationsDatasetsConsentStoresConsentsPatch,
    HealthcareProjectsLocationsDatasetsConsentStoresConsentsPatch,

    -- ** healthcare.projects.locations.datasets.consentStores.consents.reject
    HealthcareProjectsLocationsDatasetsConsentStoresConsentsRejectResource,
    newHealthcareProjectsLocationsDatasetsConsentStoresConsentsReject,
    HealthcareProjectsLocationsDatasetsConsentStoresConsentsReject,

    -- ** healthcare.projects.locations.datasets.consentStores.consents.revoke
    HealthcareProjectsLocationsDatasetsConsentStoresConsentsRevokeResource,
    newHealthcareProjectsLocationsDatasetsConsentStoresConsentsRevoke,
    HealthcareProjectsLocationsDatasetsConsentStoresConsentsRevoke,

    -- ** healthcare.projects.locations.datasets.consentStores.create
    HealthcareProjectsLocationsDatasetsConsentStoresCreateResource,
    newHealthcareProjectsLocationsDatasetsConsentStoresCreate,
    HealthcareProjectsLocationsDatasetsConsentStoresCreate,

    -- ** healthcare.projects.locations.datasets.consentStores.delete
    HealthcareProjectsLocationsDatasetsConsentStoresDeleteResource,
    newHealthcareProjectsLocationsDatasetsConsentStoresDelete,
    HealthcareProjectsLocationsDatasetsConsentStoresDelete,

    -- ** healthcare.projects.locations.datasets.consentStores.evaluateUserConsents
    HealthcareProjectsLocationsDatasetsConsentStoresEvaluateUserConsentsResource,
    newHealthcareProjectsLocationsDatasetsConsentStoresEvaluateUserConsents,
    HealthcareProjectsLocationsDatasetsConsentStoresEvaluateUserConsents,

    -- ** healthcare.projects.locations.datasets.consentStores.get
    HealthcareProjectsLocationsDatasetsConsentStoresGetResource,
    newHealthcareProjectsLocationsDatasetsConsentStoresGet,
    HealthcareProjectsLocationsDatasetsConsentStoresGet,

    -- ** healthcare.projects.locations.datasets.consentStores.getIamPolicy
    HealthcareProjectsLocationsDatasetsConsentStoresGetIamPolicyResource,
    newHealthcareProjectsLocationsDatasetsConsentStoresGetIamPolicy,
    HealthcareProjectsLocationsDatasetsConsentStoresGetIamPolicy,

    -- ** healthcare.projects.locations.datasets.consentStores.list
    HealthcareProjectsLocationsDatasetsConsentStoresListResource,
    newHealthcareProjectsLocationsDatasetsConsentStoresList,
    HealthcareProjectsLocationsDatasetsConsentStoresList,

    -- ** healthcare.projects.locations.datasets.consentStores.patch
    HealthcareProjectsLocationsDatasetsConsentStoresPatchResource,
    newHealthcareProjectsLocationsDatasetsConsentStoresPatch,
    HealthcareProjectsLocationsDatasetsConsentStoresPatch,

    -- ** healthcare.projects.locations.datasets.consentStores.queryAccessibleData
    HealthcareProjectsLocationsDatasetsConsentStoresQueryAccessibleDataResource,
    newHealthcareProjectsLocationsDatasetsConsentStoresQueryAccessibleData,
    HealthcareProjectsLocationsDatasetsConsentStoresQueryAccessibleData,

    -- ** healthcare.projects.locations.datasets.consentStores.setIamPolicy
    HealthcareProjectsLocationsDatasetsConsentStoresSetIamPolicyResource,
    newHealthcareProjectsLocationsDatasetsConsentStoresSetIamPolicy,
    HealthcareProjectsLocationsDatasetsConsentStoresSetIamPolicy,

    -- ** healthcare.projects.locations.datasets.consentStores.testIamPermissions
    HealthcareProjectsLocationsDatasetsConsentStoresTestIamPermissionsResource,
    newHealthcareProjectsLocationsDatasetsConsentStoresTestIamPermissions,
    HealthcareProjectsLocationsDatasetsConsentStoresTestIamPermissions,

    -- ** healthcare.projects.locations.datasets.consentStores.userDataMappings.archive
    HealthcareProjectsLocationsDatasetsConsentStoresUserDataMappingsArchiveResource,
    newHealthcareProjectsLocationsDatasetsConsentStoresUserDataMappingsArchive,
    HealthcareProjectsLocationsDatasetsConsentStoresUserDataMappingsArchive,

    -- ** healthcare.projects.locations.datasets.consentStores.userDataMappings.create
    HealthcareProjectsLocationsDatasetsConsentStoresUserDataMappingsCreateResource,
    newHealthcareProjectsLocationsDatasetsConsentStoresUserDataMappingsCreate,
    HealthcareProjectsLocationsDatasetsConsentStoresUserDataMappingsCreate,

    -- ** healthcare.projects.locations.datasets.consentStores.userDataMappings.delete
    HealthcareProjectsLocationsDatasetsConsentStoresUserDataMappingsDeleteResource,
    newHealthcareProjectsLocationsDatasetsConsentStoresUserDataMappingsDelete,
    HealthcareProjectsLocationsDatasetsConsentStoresUserDataMappingsDelete,

    -- ** healthcare.projects.locations.datasets.consentStores.userDataMappings.get
    HealthcareProjectsLocationsDatasetsConsentStoresUserDataMappingsGetResource,
    newHealthcareProjectsLocationsDatasetsConsentStoresUserDataMappingsGet,
    HealthcareProjectsLocationsDatasetsConsentStoresUserDataMappingsGet,

    -- ** healthcare.projects.locations.datasets.consentStores.userDataMappings.list
    HealthcareProjectsLocationsDatasetsConsentStoresUserDataMappingsListResource,
    newHealthcareProjectsLocationsDatasetsConsentStoresUserDataMappingsList,
    HealthcareProjectsLocationsDatasetsConsentStoresUserDataMappingsList,

    -- ** healthcare.projects.locations.datasets.consentStores.userDataMappings.patch
    HealthcareProjectsLocationsDatasetsConsentStoresUserDataMappingsPatchResource,
    newHealthcareProjectsLocationsDatasetsConsentStoresUserDataMappingsPatch,
    HealthcareProjectsLocationsDatasetsConsentStoresUserDataMappingsPatch,

    -- ** healthcare.projects.locations.datasets.create
    HealthcareProjectsLocationsDatasetsCreateResource,
    newHealthcareProjectsLocationsDatasetsCreate,
    HealthcareProjectsLocationsDatasetsCreate,

    -- ** healthcare.projects.locations.datasets.deidentify
    HealthcareProjectsLocationsDatasetsDeidentifyResource,
    newHealthcareProjectsLocationsDatasetsDeidentify,
    HealthcareProjectsLocationsDatasetsDeidentify,

    -- ** healthcare.projects.locations.datasets.delete
    HealthcareProjectsLocationsDatasetsDeleteResource,
    newHealthcareProjectsLocationsDatasetsDelete,
    HealthcareProjectsLocationsDatasetsDelete,

    -- ** healthcare.projects.locations.datasets.dicomStores.create
    HealthcareProjectsLocationsDatasetsDicomStoresCreateResource,
    newHealthcareProjectsLocationsDatasetsDicomStoresCreate,
    HealthcareProjectsLocationsDatasetsDicomStoresCreate,

    -- ** healthcare.projects.locations.datasets.dicomStores.deidentify
    HealthcareProjectsLocationsDatasetsDicomStoresDeidentifyResource,
    newHealthcareProjectsLocationsDatasetsDicomStoresDeidentify,
    HealthcareProjectsLocationsDatasetsDicomStoresDeidentify,

    -- ** healthcare.projects.locations.datasets.dicomStores.delete
    HealthcareProjectsLocationsDatasetsDicomStoresDeleteResource,
    newHealthcareProjectsLocationsDatasetsDicomStoresDelete,
    HealthcareProjectsLocationsDatasetsDicomStoresDelete,

    -- ** healthcare.projects.locations.datasets.dicomStores.export
    HealthcareProjectsLocationsDatasetsDicomStoresExportResource,
    newHealthcareProjectsLocationsDatasetsDicomStoresExport,
    HealthcareProjectsLocationsDatasetsDicomStoresExport,

    -- ** healthcare.projects.locations.datasets.dicomStores.get
    HealthcareProjectsLocationsDatasetsDicomStoresGetResource,
    newHealthcareProjectsLocationsDatasetsDicomStoresGet,
    HealthcareProjectsLocationsDatasetsDicomStoresGet,

    -- ** healthcare.projects.locations.datasets.dicomStores.getIamPolicy
    HealthcareProjectsLocationsDatasetsDicomStoresGetIamPolicyResource,
    newHealthcareProjectsLocationsDatasetsDicomStoresGetIamPolicy,
    HealthcareProjectsLocationsDatasetsDicomStoresGetIamPolicy,

    -- ** healthcare.projects.locations.datasets.dicomStores.import
    HealthcareProjectsLocationsDatasetsDicomStoresImportResource,
    newHealthcareProjectsLocationsDatasetsDicomStoresImport,
    HealthcareProjectsLocationsDatasetsDicomStoresImport,

    -- ** healthcare.projects.locations.datasets.dicomStores.list
    HealthcareProjectsLocationsDatasetsDicomStoresListResource,
    newHealthcareProjectsLocationsDatasetsDicomStoresList,
    HealthcareProjectsLocationsDatasetsDicomStoresList,

    -- ** healthcare.projects.locations.datasets.dicomStores.patch
    HealthcareProjectsLocationsDatasetsDicomStoresPatchResource,
    newHealthcareProjectsLocationsDatasetsDicomStoresPatch,
    HealthcareProjectsLocationsDatasetsDicomStoresPatch,

    -- ** healthcare.projects.locations.datasets.dicomStores.searchForInstances
    HealthcareProjectsLocationsDatasetsDicomStoresSearchForInstancesResource,
    newHealthcareProjectsLocationsDatasetsDicomStoresSearchForInstances,
    HealthcareProjectsLocationsDatasetsDicomStoresSearchForInstances,

    -- ** healthcare.projects.locations.datasets.dicomStores.searchForSeries
    HealthcareProjectsLocationsDatasetsDicomStoresSearchForSeriesResource,
    newHealthcareProjectsLocationsDatasetsDicomStoresSearchForSeries,
    HealthcareProjectsLocationsDatasetsDicomStoresSearchForSeries,

    -- ** healthcare.projects.locations.datasets.dicomStores.searchForStudies
    HealthcareProjectsLocationsDatasetsDicomStoresSearchForStudiesResource,
    newHealthcareProjectsLocationsDatasetsDicomStoresSearchForStudies,
    HealthcareProjectsLocationsDatasetsDicomStoresSearchForStudies,

    -- ** healthcare.projects.locations.datasets.dicomStores.setIamPolicy
    HealthcareProjectsLocationsDatasetsDicomStoresSetIamPolicyResource,
    newHealthcareProjectsLocationsDatasetsDicomStoresSetIamPolicy,
    HealthcareProjectsLocationsDatasetsDicomStoresSetIamPolicy,

    -- ** healthcare.projects.locations.datasets.dicomStores.storeInstances
    HealthcareProjectsLocationsDatasetsDicomStoresStoreInstancesResource,
    newHealthcareProjectsLocationsDatasetsDicomStoresStoreInstances,
    HealthcareProjectsLocationsDatasetsDicomStoresStoreInstances,

    -- ** healthcare.projects.locations.datasets.dicomStores.studies.delete
    HealthcareProjectsLocationsDatasetsDicomStoresStudiesDeleteResource,
    newHealthcareProjectsLocationsDatasetsDicomStoresStudiesDelete,
    HealthcareProjectsLocationsDatasetsDicomStoresStudiesDelete,

    -- ** healthcare.projects.locations.datasets.dicomStores.studies.retrieveMetadata
    HealthcareProjectsLocationsDatasetsDicomStoresStudiesRetrieveMetadataResource,
    newHealthcareProjectsLocationsDatasetsDicomStoresStudiesRetrieveMetadata,
    HealthcareProjectsLocationsDatasetsDicomStoresStudiesRetrieveMetadata,

    -- ** healthcare.projects.locations.datasets.dicomStores.studies.retrieveStudy
    HealthcareProjectsLocationsDatasetsDicomStoresStudiesRetrieveStudyResource,
    newHealthcareProjectsLocationsDatasetsDicomStoresStudiesRetrieveStudy,
    HealthcareProjectsLocationsDatasetsDicomStoresStudiesRetrieveStudy,

    -- ** healthcare.projects.locations.datasets.dicomStores.studies.searchForInstances
    HealthcareProjectsLocationsDatasetsDicomStoresStudiesSearchForInstancesResource,
    newHealthcareProjectsLocationsDatasetsDicomStoresStudiesSearchForInstances,
    HealthcareProjectsLocationsDatasetsDicomStoresStudiesSearchForInstances,

    -- ** healthcare.projects.locations.datasets.dicomStores.studies.searchForSeries
    HealthcareProjectsLocationsDatasetsDicomStoresStudiesSearchForSeriesResource,
    newHealthcareProjectsLocationsDatasetsDicomStoresStudiesSearchForSeries,
    HealthcareProjectsLocationsDatasetsDicomStoresStudiesSearchForSeries,

    -- ** healthcare.projects.locations.datasets.dicomStores.studies.series.delete
    HealthcareProjectsLocationsDatasetsDicomStoresStudiesSeriesDeleteResource,
    newHealthcareProjectsLocationsDatasetsDicomStoresStudiesSeriesDelete,
    HealthcareProjectsLocationsDatasetsDicomStoresStudiesSeriesDelete,

    -- ** healthcare.projects.locations.datasets.dicomStores.studies.series.instances.delete
    HealthcareProjectsLocationsDatasetsDicomStoresStudiesSeriesInstancesDeleteResource,
    newHealthcareProjectsLocationsDatasetsDicomStoresStudiesSeriesInstancesDelete,
    HealthcareProjectsLocationsDatasetsDicomStoresStudiesSeriesInstancesDelete,

    -- ** healthcare.projects.locations.datasets.dicomStores.studies.series.instances.frames.retrieveFrames
    HealthcareProjectsLocationsDatasetsDicomStoresStudiesSeriesInstancesFramesRetrieveFramesResource,
    newHealthcareProjectsLocationsDatasetsDicomStoresStudiesSeriesInstancesFramesRetrieveFrames,
    HealthcareProjectsLocationsDatasetsDicomStoresStudiesSeriesInstancesFramesRetrieveFrames,

    -- ** healthcare.projects.locations.datasets.dicomStores.studies.series.instances.frames.retrieveRendered
    HealthcareProjectsLocationsDatasetsDicomStoresStudiesSeriesInstancesFramesRetrieveRenderedResource,
    newHealthcareProjectsLocationsDatasetsDicomStoresStudiesSeriesInstancesFramesRetrieveRendered,
    HealthcareProjectsLocationsDatasetsDicomStoresStudiesSeriesInstancesFramesRetrieveRendered,

    -- ** healthcare.projects.locations.datasets.dicomStores.studies.series.instances.retrieveInstance
    HealthcareProjectsLocationsDatasetsDicomStoresStudiesSeriesInstancesRetrieveInstanceResource,
    newHealthcareProjectsLocationsDatasetsDicomStoresStudiesSeriesInstancesRetrieveInstance,
    HealthcareProjectsLocationsDatasetsDicomStoresStudiesSeriesInstancesRetrieveInstance,

    -- ** healthcare.projects.locations.datasets.dicomStores.studies.series.instances.retrieveMetadata
    HealthcareProjectsLocationsDatasetsDicomStoresStudiesSeriesInstancesRetrieveMetadataResource,
    newHealthcareProjectsLocationsDatasetsDicomStoresStudiesSeriesInstancesRetrieveMetadata,
    HealthcareProjectsLocationsDatasetsDicomStoresStudiesSeriesInstancesRetrieveMetadata,

    -- ** healthcare.projects.locations.datasets.dicomStores.studies.series.instances.retrieveRendered
    HealthcareProjectsLocationsDatasetsDicomStoresStudiesSeriesInstancesRetrieveRenderedResource,
    newHealthcareProjectsLocationsDatasetsDicomStoresStudiesSeriesInstancesRetrieveRendered,
    HealthcareProjectsLocationsDatasetsDicomStoresStudiesSeriesInstancesRetrieveRendered,

    -- ** healthcare.projects.locations.datasets.dicomStores.studies.series.retrieveMetadata
    HealthcareProjectsLocationsDatasetsDicomStoresStudiesSeriesRetrieveMetadataResource,
    newHealthcareProjectsLocationsDatasetsDicomStoresStudiesSeriesRetrieveMetadata,
    HealthcareProjectsLocationsDatasetsDicomStoresStudiesSeriesRetrieveMetadata,

    -- ** healthcare.projects.locations.datasets.dicomStores.studies.series.retrieveSeries
    HealthcareProjectsLocationsDatasetsDicomStoresStudiesSeriesRetrieveSeriesResource,
    newHealthcareProjectsLocationsDatasetsDicomStoresStudiesSeriesRetrieveSeries,
    HealthcareProjectsLocationsDatasetsDicomStoresStudiesSeriesRetrieveSeries,

    -- ** healthcare.projects.locations.datasets.dicomStores.studies.series.searchForInstances
    HealthcareProjectsLocationsDatasetsDicomStoresStudiesSeriesSearchForInstancesResource,
    newHealthcareProjectsLocationsDatasetsDicomStoresStudiesSeriesSearchForInstances,
    HealthcareProjectsLocationsDatasetsDicomStoresStudiesSeriesSearchForInstances,

    -- ** healthcare.projects.locations.datasets.dicomStores.studies.storeInstances
    HealthcareProjectsLocationsDatasetsDicomStoresStudiesStoreInstancesResource,
    newHealthcareProjectsLocationsDatasetsDicomStoresStudiesStoreInstances,
    HealthcareProjectsLocationsDatasetsDicomStoresStudiesStoreInstances,

    -- ** healthcare.projects.locations.datasets.dicomStores.testIamPermissions
    HealthcareProjectsLocationsDatasetsDicomStoresTestIamPermissionsResource,
    newHealthcareProjectsLocationsDatasetsDicomStoresTestIamPermissions,
    HealthcareProjectsLocationsDatasetsDicomStoresTestIamPermissions,

    -- ** healthcare.projects.locations.datasets.fhirStores.create
    HealthcareProjectsLocationsDatasetsFhirStoresCreateResource,
    newHealthcareProjectsLocationsDatasetsFhirStoresCreate,
    HealthcareProjectsLocationsDatasetsFhirStoresCreate,

    -- ** healthcare.projects.locations.datasets.fhirStores.deidentify
    HealthcareProjectsLocationsDatasetsFhirStoresDeidentifyResource,
    newHealthcareProjectsLocationsDatasetsFhirStoresDeidentify,
    HealthcareProjectsLocationsDatasetsFhirStoresDeidentify,

    -- ** healthcare.projects.locations.datasets.fhirStores.delete
    HealthcareProjectsLocationsDatasetsFhirStoresDeleteResource,
    newHealthcareProjectsLocationsDatasetsFhirStoresDelete,
    HealthcareProjectsLocationsDatasetsFhirStoresDelete,

    -- ** healthcare.projects.locations.datasets.fhirStores.export
    HealthcareProjectsLocationsDatasetsFhirStoresExportResource,
    newHealthcareProjectsLocationsDatasetsFhirStoresExport,
    HealthcareProjectsLocationsDatasetsFhirStoresExport,

    -- ** healthcare.projects.locations.datasets.fhirStores.fhir.Patienteverything
    HealthcareProjectsLocationsDatasetsFhirStoresFhirPatienteverythingResource,
    newHealthcareProjectsLocationsDatasetsFhirStoresFhirPatienteverything,
    HealthcareProjectsLocationsDatasetsFhirStoresFhirPatienteverything,

    -- ** healthcare.projects.locations.datasets.fhirStores.fhir.Resourcepurge
    HealthcareProjectsLocationsDatasetsFhirStoresFhirResourcepurgeResource,
    newHealthcareProjectsLocationsDatasetsFhirStoresFhirResourcepurge,
    HealthcareProjectsLocationsDatasetsFhirStoresFhirResourcepurge,

    -- ** healthcare.projects.locations.datasets.fhirStores.fhir.Resourcevalidate
    HealthcareProjectsLocationsDatasetsFhirStoresFhirResourcevalidateResource,
    newHealthcareProjectsLocationsDatasetsFhirStoresFhirResourcevalidate,
    HealthcareProjectsLocationsDatasetsFhirStoresFhirResourcevalidate,

    -- ** healthcare.projects.locations.datasets.fhirStores.fhir.capabilities
    HealthcareProjectsLocationsDatasetsFhirStoresFhirCapabilitiesResource,
    newHealthcareProjectsLocationsDatasetsFhirStoresFhirCapabilities,
    HealthcareProjectsLocationsDatasetsFhirStoresFhirCapabilities,

    -- ** healthcare.projects.locations.datasets.fhirStores.fhir.create
    HealthcareProjectsLocationsDatasetsFhirStoresFhirCreateResource,
    newHealthcareProjectsLocationsDatasetsFhirStoresFhirCreate,
    HealthcareProjectsLocationsDatasetsFhirStoresFhirCreate,

    -- ** healthcare.projects.locations.datasets.fhirStores.fhir.delete
    HealthcareProjectsLocationsDatasetsFhirStoresFhirDeleteResource,
    newHealthcareProjectsLocationsDatasetsFhirStoresFhirDelete,
    HealthcareProjectsLocationsDatasetsFhirStoresFhirDelete,

    -- ** healthcare.projects.locations.datasets.fhirStores.fhir.executeBundle
    HealthcareProjectsLocationsDatasetsFhirStoresFhirExecuteBundleResource,
    newHealthcareProjectsLocationsDatasetsFhirStoresFhirExecuteBundle,
    HealthcareProjectsLocationsDatasetsFhirStoresFhirExecuteBundle,

    -- ** healthcare.projects.locations.datasets.fhirStores.fhir.history
    HealthcareProjectsLocationsDatasetsFhirStoresFhirHistoryResource,
    newHealthcareProjectsLocationsDatasetsFhirStoresFhirHistory,
    HealthcareProjectsLocationsDatasetsFhirStoresFhirHistory,

    -- ** healthcare.projects.locations.datasets.fhirStores.fhir.patch
    HealthcareProjectsLocationsDatasetsFhirStoresFhirPatchResource,
    newHealthcareProjectsLocationsDatasetsFhirStoresFhirPatch,
    HealthcareProjectsLocationsDatasetsFhirStoresFhirPatch,

    -- ** healthcare.projects.locations.datasets.fhirStores.fhir.read
    HealthcareProjectsLocationsDatasetsFhirStoresFhirReadResource,
    newHealthcareProjectsLocationsDatasetsFhirStoresFhirRead,
    HealthcareProjectsLocationsDatasetsFhirStoresFhirRead,

    -- ** healthcare.projects.locations.datasets.fhirStores.fhir.search
    HealthcareProjectsLocationsDatasetsFhirStoresFhirSearchResource,
    newHealthcareProjectsLocationsDatasetsFhirStoresFhirSearch,
    HealthcareProjectsLocationsDatasetsFhirStoresFhirSearch,

    -- ** healthcare.projects.locations.datasets.fhirStores.fhir.searchtype
    HealthcareProjectsLocationsDatasetsFhirStoresFhirSearchtypeResource,
    newHealthcareProjectsLocationsDatasetsFhirStoresFhirSearchtype,
    HealthcareProjectsLocationsDatasetsFhirStoresFhirSearchtype,

    -- ** healthcare.projects.locations.datasets.fhirStores.fhir.update
    HealthcareProjectsLocationsDatasetsFhirStoresFhirUpdateResource,
    newHealthcareProjectsLocationsDatasetsFhirStoresFhirUpdate,
    HealthcareProjectsLocationsDatasetsFhirStoresFhirUpdate,

    -- ** healthcare.projects.locations.datasets.fhirStores.fhir.vread
    HealthcareProjectsLocationsDatasetsFhirStoresFhirVreadResource,
    newHealthcareProjectsLocationsDatasetsFhirStoresFhirVread,
    HealthcareProjectsLocationsDatasetsFhirStoresFhirVread,

    -- ** healthcare.projects.locations.datasets.fhirStores.get
    HealthcareProjectsLocationsDatasetsFhirStoresGetResource,
    newHealthcareProjectsLocationsDatasetsFhirStoresGet,
    HealthcareProjectsLocationsDatasetsFhirStoresGet,

    -- ** healthcare.projects.locations.datasets.fhirStores.getIamPolicy
    HealthcareProjectsLocationsDatasetsFhirStoresGetIamPolicyResource,
    newHealthcareProjectsLocationsDatasetsFhirStoresGetIamPolicy,
    HealthcareProjectsLocationsDatasetsFhirStoresGetIamPolicy,

    -- ** healthcare.projects.locations.datasets.fhirStores.import
    HealthcareProjectsLocationsDatasetsFhirStoresImportResource,
    newHealthcareProjectsLocationsDatasetsFhirStoresImport,
    HealthcareProjectsLocationsDatasetsFhirStoresImport,

    -- ** healthcare.projects.locations.datasets.fhirStores.list
    HealthcareProjectsLocationsDatasetsFhirStoresListResource,
    newHealthcareProjectsLocationsDatasetsFhirStoresList,
    HealthcareProjectsLocationsDatasetsFhirStoresList,

    -- ** healthcare.projects.locations.datasets.fhirStores.patch
    HealthcareProjectsLocationsDatasetsFhirStoresPatchResource,
    newHealthcareProjectsLocationsDatasetsFhirStoresPatch,
    HealthcareProjectsLocationsDatasetsFhirStoresPatch,

    -- ** healthcare.projects.locations.datasets.fhirStores.setIamPolicy
    HealthcareProjectsLocationsDatasetsFhirStoresSetIamPolicyResource,
    newHealthcareProjectsLocationsDatasetsFhirStoresSetIamPolicy,
    HealthcareProjectsLocationsDatasetsFhirStoresSetIamPolicy,

    -- ** healthcare.projects.locations.datasets.fhirStores.testIamPermissions
    HealthcareProjectsLocationsDatasetsFhirStoresTestIamPermissionsResource,
    newHealthcareProjectsLocationsDatasetsFhirStoresTestIamPermissions,
    HealthcareProjectsLocationsDatasetsFhirStoresTestIamPermissions,

    -- ** healthcare.projects.locations.datasets.get
    HealthcareProjectsLocationsDatasetsGetResource,
    newHealthcareProjectsLocationsDatasetsGet,
    HealthcareProjectsLocationsDatasetsGet,

    -- ** healthcare.projects.locations.datasets.getIamPolicy
    HealthcareProjectsLocationsDatasetsGetIamPolicyResource,
    newHealthcareProjectsLocationsDatasetsGetIamPolicy,
    HealthcareProjectsLocationsDatasetsGetIamPolicy,

    -- ** healthcare.projects.locations.datasets.hl7V2Stores.create
    HealthcareProjectsLocationsDatasetsHl7V2StoresCreateResource,
    newHealthcareProjectsLocationsDatasetsHl7V2StoresCreate,
    HealthcareProjectsLocationsDatasetsHl7V2StoresCreate,

    -- ** healthcare.projects.locations.datasets.hl7V2Stores.delete
    HealthcareProjectsLocationsDatasetsHl7V2StoresDeleteResource,
    newHealthcareProjectsLocationsDatasetsHl7V2StoresDelete,
    HealthcareProjectsLocationsDatasetsHl7V2StoresDelete,

    -- ** healthcare.projects.locations.datasets.hl7V2Stores.export
    HealthcareProjectsLocationsDatasetsHl7V2StoresExportResource,
    newHealthcareProjectsLocationsDatasetsHl7V2StoresExport,
    HealthcareProjectsLocationsDatasetsHl7V2StoresExport,

    -- ** healthcare.projects.locations.datasets.hl7V2Stores.get
    HealthcareProjectsLocationsDatasetsHl7V2StoresGetResource,
    newHealthcareProjectsLocationsDatasetsHl7V2StoresGet,
    HealthcareProjectsLocationsDatasetsHl7V2StoresGet,

    -- ** healthcare.projects.locations.datasets.hl7V2Stores.getIamPolicy
    HealthcareProjectsLocationsDatasetsHl7V2StoresGetIamPolicyResource,
    newHealthcareProjectsLocationsDatasetsHl7V2StoresGetIamPolicy,
    HealthcareProjectsLocationsDatasetsHl7V2StoresGetIamPolicy,

    -- ** healthcare.projects.locations.datasets.hl7V2Stores.import
    HealthcareProjectsLocationsDatasetsHl7V2StoresImportResource,
    newHealthcareProjectsLocationsDatasetsHl7V2StoresImport,
    HealthcareProjectsLocationsDatasetsHl7V2StoresImport,

    -- ** healthcare.projects.locations.datasets.hl7V2Stores.list
    HealthcareProjectsLocationsDatasetsHl7V2StoresListResource,
    newHealthcareProjectsLocationsDatasetsHl7V2StoresList,
    HealthcareProjectsLocationsDatasetsHl7V2StoresList,

    -- ** healthcare.projects.locations.datasets.hl7V2Stores.messages.create
    HealthcareProjectsLocationsDatasetsHl7V2StoresMessagesCreateResource,
    newHealthcareProjectsLocationsDatasetsHl7V2StoresMessagesCreate,
    HealthcareProjectsLocationsDatasetsHl7V2StoresMessagesCreate,

    -- ** healthcare.projects.locations.datasets.hl7V2Stores.messages.delete
    HealthcareProjectsLocationsDatasetsHl7V2StoresMessagesDeleteResource,
    newHealthcareProjectsLocationsDatasetsHl7V2StoresMessagesDelete,
    HealthcareProjectsLocationsDatasetsHl7V2StoresMessagesDelete,

    -- ** healthcare.projects.locations.datasets.hl7V2Stores.messages.get
    HealthcareProjectsLocationsDatasetsHl7V2StoresMessagesGetResource,
    newHealthcareProjectsLocationsDatasetsHl7V2StoresMessagesGet,
    HealthcareProjectsLocationsDatasetsHl7V2StoresMessagesGet,

    -- ** healthcare.projects.locations.datasets.hl7V2Stores.messages.ingest
    HealthcareProjectsLocationsDatasetsHl7V2StoresMessagesIngestResource,
    newHealthcareProjectsLocationsDatasetsHl7V2StoresMessagesIngest,
    HealthcareProjectsLocationsDatasetsHl7V2StoresMessagesIngest,

    -- ** healthcare.projects.locations.datasets.hl7V2Stores.messages.list
    HealthcareProjectsLocationsDatasetsHl7V2StoresMessagesListResource,
    newHealthcareProjectsLocationsDatasetsHl7V2StoresMessagesList,
    HealthcareProjectsLocationsDatasetsHl7V2StoresMessagesList,

    -- ** healthcare.projects.locations.datasets.hl7V2Stores.messages.patch
    HealthcareProjectsLocationsDatasetsHl7V2StoresMessagesPatchResource,
    newHealthcareProjectsLocationsDatasetsHl7V2StoresMessagesPatch,
    HealthcareProjectsLocationsDatasetsHl7V2StoresMessagesPatch,

    -- ** healthcare.projects.locations.datasets.hl7V2Stores.patch
    HealthcareProjectsLocationsDatasetsHl7V2StoresPatchResource,
    newHealthcareProjectsLocationsDatasetsHl7V2StoresPatch,
    HealthcareProjectsLocationsDatasetsHl7V2StoresPatch,

    -- ** healthcare.projects.locations.datasets.hl7V2Stores.setIamPolicy
    HealthcareProjectsLocationsDatasetsHl7V2StoresSetIamPolicyResource,
    newHealthcareProjectsLocationsDatasetsHl7V2StoresSetIamPolicy,
    HealthcareProjectsLocationsDatasetsHl7V2StoresSetIamPolicy,

    -- ** healthcare.projects.locations.datasets.hl7V2Stores.testIamPermissions
    HealthcareProjectsLocationsDatasetsHl7V2StoresTestIamPermissionsResource,
    newHealthcareProjectsLocationsDatasetsHl7V2StoresTestIamPermissions,
    HealthcareProjectsLocationsDatasetsHl7V2StoresTestIamPermissions,

    -- ** healthcare.projects.locations.datasets.list
    HealthcareProjectsLocationsDatasetsListResource,
    newHealthcareProjectsLocationsDatasetsList,
    HealthcareProjectsLocationsDatasetsList,

    -- ** healthcare.projects.locations.datasets.operations.cancel
    HealthcareProjectsLocationsDatasetsOperationsCancelResource,
    newHealthcareProjectsLocationsDatasetsOperationsCancel,
    HealthcareProjectsLocationsDatasetsOperationsCancel,

    -- ** healthcare.projects.locations.datasets.operations.get
    HealthcareProjectsLocationsDatasetsOperationsGetResource,
    newHealthcareProjectsLocationsDatasetsOperationsGet,
    HealthcareProjectsLocationsDatasetsOperationsGet,

    -- ** healthcare.projects.locations.datasets.operations.list
    HealthcareProjectsLocationsDatasetsOperationsListResource,
    newHealthcareProjectsLocationsDatasetsOperationsList,
    HealthcareProjectsLocationsDatasetsOperationsList,

    -- ** healthcare.projects.locations.datasets.patch
    HealthcareProjectsLocationsDatasetsPatchResource,
    newHealthcareProjectsLocationsDatasetsPatch,
    HealthcareProjectsLocationsDatasetsPatch,

    -- ** healthcare.projects.locations.datasets.setIamPolicy
    HealthcareProjectsLocationsDatasetsSetIamPolicyResource,
    newHealthcareProjectsLocationsDatasetsSetIamPolicy,
    HealthcareProjectsLocationsDatasetsSetIamPolicy,

    -- ** healthcare.projects.locations.datasets.testIamPermissions
    HealthcareProjectsLocationsDatasetsTestIamPermissionsResource,
    newHealthcareProjectsLocationsDatasetsTestIamPermissions,
    HealthcareProjectsLocationsDatasetsTestIamPermissions,

    -- ** healthcare.projects.locations.get
    HealthcareProjectsLocationsGetResource,
    newHealthcareProjectsLocationsGet,
    HealthcareProjectsLocationsGet,

    -- ** healthcare.projects.locations.list
    HealthcareProjectsLocationsListResource,
    newHealthcareProjectsLocationsList,
    HealthcareProjectsLocationsList,

    -- ** healthcare.projects.locations.services.nlp.analyzeEntities
    HealthcareProjectsLocationsServicesNlpAnalyzeEntitiesResource,
    newHealthcareProjectsLocationsServicesNlpAnalyzeEntities,
    HealthcareProjectsLocationsServicesNlpAnalyzeEntities,

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

    -- ** FhirStore_Labels
    FhirStore_Labels (..),
    newFhirStore_Labels,

    -- ** FhirStore_Version
    FhirStore_Version (..),

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

import Gogol.Healthcare.Projects.Locations.Datasets.ConsentStores.AttributeDefinitions.Create
import Gogol.Healthcare.Projects.Locations.Datasets.ConsentStores.AttributeDefinitions.Delete
import Gogol.Healthcare.Projects.Locations.Datasets.ConsentStores.AttributeDefinitions.Get
import Gogol.Healthcare.Projects.Locations.Datasets.ConsentStores.AttributeDefinitions.List
import Gogol.Healthcare.Projects.Locations.Datasets.ConsentStores.AttributeDefinitions.Patch
import Gogol.Healthcare.Projects.Locations.Datasets.ConsentStores.CheckDataAccess
import Gogol.Healthcare.Projects.Locations.Datasets.ConsentStores.ConsentArtifacts.Create
import Gogol.Healthcare.Projects.Locations.Datasets.ConsentStores.ConsentArtifacts.Delete
import Gogol.Healthcare.Projects.Locations.Datasets.ConsentStores.ConsentArtifacts.Get
import Gogol.Healthcare.Projects.Locations.Datasets.ConsentStores.ConsentArtifacts.List
import Gogol.Healthcare.Projects.Locations.Datasets.ConsentStores.Consents.Activate
import Gogol.Healthcare.Projects.Locations.Datasets.ConsentStores.Consents.Create
import Gogol.Healthcare.Projects.Locations.Datasets.ConsentStores.Consents.Delete
import Gogol.Healthcare.Projects.Locations.Datasets.ConsentStores.Consents.DeleteRevision
import Gogol.Healthcare.Projects.Locations.Datasets.ConsentStores.Consents.Get
import Gogol.Healthcare.Projects.Locations.Datasets.ConsentStores.Consents.List
import Gogol.Healthcare.Projects.Locations.Datasets.ConsentStores.Consents.ListRevisions
import Gogol.Healthcare.Projects.Locations.Datasets.ConsentStores.Consents.Patch
import Gogol.Healthcare.Projects.Locations.Datasets.ConsentStores.Consents.Reject
import Gogol.Healthcare.Projects.Locations.Datasets.ConsentStores.Consents.Revoke
import Gogol.Healthcare.Projects.Locations.Datasets.ConsentStores.Create
import Gogol.Healthcare.Projects.Locations.Datasets.ConsentStores.Delete
import Gogol.Healthcare.Projects.Locations.Datasets.ConsentStores.EvaluateUserConsents
import Gogol.Healthcare.Projects.Locations.Datasets.ConsentStores.Get
import Gogol.Healthcare.Projects.Locations.Datasets.ConsentStores.GetIamPolicy
import Gogol.Healthcare.Projects.Locations.Datasets.ConsentStores.List
import Gogol.Healthcare.Projects.Locations.Datasets.ConsentStores.Patch
import Gogol.Healthcare.Projects.Locations.Datasets.ConsentStores.QueryAccessibleData
import Gogol.Healthcare.Projects.Locations.Datasets.ConsentStores.SetIamPolicy
import Gogol.Healthcare.Projects.Locations.Datasets.ConsentStores.TestIamPermissions
import Gogol.Healthcare.Projects.Locations.Datasets.ConsentStores.UserDataMappings.Archive
import Gogol.Healthcare.Projects.Locations.Datasets.ConsentStores.UserDataMappings.Create
import Gogol.Healthcare.Projects.Locations.Datasets.ConsentStores.UserDataMappings.Delete
import Gogol.Healthcare.Projects.Locations.Datasets.ConsentStores.UserDataMappings.Get
import Gogol.Healthcare.Projects.Locations.Datasets.ConsentStores.UserDataMappings.List
import Gogol.Healthcare.Projects.Locations.Datasets.ConsentStores.UserDataMappings.Patch
import Gogol.Healthcare.Projects.Locations.Datasets.Create
import Gogol.Healthcare.Projects.Locations.Datasets.Deidentify
import Gogol.Healthcare.Projects.Locations.Datasets.Delete
import Gogol.Healthcare.Projects.Locations.Datasets.DicomStores.Create
import Gogol.Healthcare.Projects.Locations.Datasets.DicomStores.Deidentify
import Gogol.Healthcare.Projects.Locations.Datasets.DicomStores.Delete
import Gogol.Healthcare.Projects.Locations.Datasets.DicomStores.Export
import Gogol.Healthcare.Projects.Locations.Datasets.DicomStores.Get
import Gogol.Healthcare.Projects.Locations.Datasets.DicomStores.GetIamPolicy
import Gogol.Healthcare.Projects.Locations.Datasets.DicomStores.Import
import Gogol.Healthcare.Projects.Locations.Datasets.DicomStores.List
import Gogol.Healthcare.Projects.Locations.Datasets.DicomStores.Patch
import Gogol.Healthcare.Projects.Locations.Datasets.DicomStores.SearchForInstances
import Gogol.Healthcare.Projects.Locations.Datasets.DicomStores.SearchForSeries
import Gogol.Healthcare.Projects.Locations.Datasets.DicomStores.SearchForStudies
import Gogol.Healthcare.Projects.Locations.Datasets.DicomStores.SetIamPolicy
import Gogol.Healthcare.Projects.Locations.Datasets.DicomStores.StoreInstances
import Gogol.Healthcare.Projects.Locations.Datasets.DicomStores.Studies.Delete
import Gogol.Healthcare.Projects.Locations.Datasets.DicomStores.Studies.RetrieveMetadata
import Gogol.Healthcare.Projects.Locations.Datasets.DicomStores.Studies.RetrieveStudy
import Gogol.Healthcare.Projects.Locations.Datasets.DicomStores.Studies.SearchForInstances
import Gogol.Healthcare.Projects.Locations.Datasets.DicomStores.Studies.SearchForSeries
import Gogol.Healthcare.Projects.Locations.Datasets.DicomStores.Studies.Series.Delete
import Gogol.Healthcare.Projects.Locations.Datasets.DicomStores.Studies.Series.Instances.Delete
import Gogol.Healthcare.Projects.Locations.Datasets.DicomStores.Studies.Series.Instances.Frames.RetrieveFrames
import Gogol.Healthcare.Projects.Locations.Datasets.DicomStores.Studies.Series.Instances.Frames.RetrieveRendered
import Gogol.Healthcare.Projects.Locations.Datasets.DicomStores.Studies.Series.Instances.RetrieveInstance
import Gogol.Healthcare.Projects.Locations.Datasets.DicomStores.Studies.Series.Instances.RetrieveMetadata
import Gogol.Healthcare.Projects.Locations.Datasets.DicomStores.Studies.Series.Instances.RetrieveRendered
import Gogol.Healthcare.Projects.Locations.Datasets.DicomStores.Studies.Series.RetrieveMetadata
import Gogol.Healthcare.Projects.Locations.Datasets.DicomStores.Studies.Series.RetrieveSeries
import Gogol.Healthcare.Projects.Locations.Datasets.DicomStores.Studies.Series.SearchForInstances
import Gogol.Healthcare.Projects.Locations.Datasets.DicomStores.Studies.StoreInstances
import Gogol.Healthcare.Projects.Locations.Datasets.DicomStores.TestIamPermissions
import Gogol.Healthcare.Projects.Locations.Datasets.FhirStores.Create
import Gogol.Healthcare.Projects.Locations.Datasets.FhirStores.Deidentify
import Gogol.Healthcare.Projects.Locations.Datasets.FhirStores.Delete
import Gogol.Healthcare.Projects.Locations.Datasets.FhirStores.Export
import Gogol.Healthcare.Projects.Locations.Datasets.FhirStores.Fhir.Capabilities
import Gogol.Healthcare.Projects.Locations.Datasets.FhirStores.Fhir.Create
import Gogol.Healthcare.Projects.Locations.Datasets.FhirStores.Fhir.Delete
import Gogol.Healthcare.Projects.Locations.Datasets.FhirStores.Fhir.ExecuteBundle
import Gogol.Healthcare.Projects.Locations.Datasets.FhirStores.Fhir.History
import Gogol.Healthcare.Projects.Locations.Datasets.FhirStores.Fhir.Patch
import Gogol.Healthcare.Projects.Locations.Datasets.FhirStores.Fhir.Patienteverything
import Gogol.Healthcare.Projects.Locations.Datasets.FhirStores.Fhir.Read
import Gogol.Healthcare.Projects.Locations.Datasets.FhirStores.Fhir.Resourcepurge
import Gogol.Healthcare.Projects.Locations.Datasets.FhirStores.Fhir.Resourcevalidate
import Gogol.Healthcare.Projects.Locations.Datasets.FhirStores.Fhir.Search
import Gogol.Healthcare.Projects.Locations.Datasets.FhirStores.Fhir.Searchtype
import Gogol.Healthcare.Projects.Locations.Datasets.FhirStores.Fhir.Update
import Gogol.Healthcare.Projects.Locations.Datasets.FhirStores.Fhir.Vread
import Gogol.Healthcare.Projects.Locations.Datasets.FhirStores.Get
import Gogol.Healthcare.Projects.Locations.Datasets.FhirStores.GetIamPolicy
import Gogol.Healthcare.Projects.Locations.Datasets.FhirStores.Import
import Gogol.Healthcare.Projects.Locations.Datasets.FhirStores.List
import Gogol.Healthcare.Projects.Locations.Datasets.FhirStores.Patch
import Gogol.Healthcare.Projects.Locations.Datasets.FhirStores.SetIamPolicy
import Gogol.Healthcare.Projects.Locations.Datasets.FhirStores.TestIamPermissions
import Gogol.Healthcare.Projects.Locations.Datasets.Get
import Gogol.Healthcare.Projects.Locations.Datasets.GetIamPolicy
import Gogol.Healthcare.Projects.Locations.Datasets.Hl7V2Stores.Create
import Gogol.Healthcare.Projects.Locations.Datasets.Hl7V2Stores.Delete
import Gogol.Healthcare.Projects.Locations.Datasets.Hl7V2Stores.Export
import Gogol.Healthcare.Projects.Locations.Datasets.Hl7V2Stores.Get
import Gogol.Healthcare.Projects.Locations.Datasets.Hl7V2Stores.GetIamPolicy
import Gogol.Healthcare.Projects.Locations.Datasets.Hl7V2Stores.Import
import Gogol.Healthcare.Projects.Locations.Datasets.Hl7V2Stores.List
import Gogol.Healthcare.Projects.Locations.Datasets.Hl7V2Stores.Messages.Create
import Gogol.Healthcare.Projects.Locations.Datasets.Hl7V2Stores.Messages.Delete
import Gogol.Healthcare.Projects.Locations.Datasets.Hl7V2Stores.Messages.Get
import Gogol.Healthcare.Projects.Locations.Datasets.Hl7V2Stores.Messages.Ingest
import Gogol.Healthcare.Projects.Locations.Datasets.Hl7V2Stores.Messages.List
import Gogol.Healthcare.Projects.Locations.Datasets.Hl7V2Stores.Messages.Patch
import Gogol.Healthcare.Projects.Locations.Datasets.Hl7V2Stores.Patch
import Gogol.Healthcare.Projects.Locations.Datasets.Hl7V2Stores.SetIamPolicy
import Gogol.Healthcare.Projects.Locations.Datasets.Hl7V2Stores.TestIamPermissions
import Gogol.Healthcare.Projects.Locations.Datasets.List
import Gogol.Healthcare.Projects.Locations.Datasets.Operations.Cancel
import Gogol.Healthcare.Projects.Locations.Datasets.Operations.Get
import Gogol.Healthcare.Projects.Locations.Datasets.Operations.List
import Gogol.Healthcare.Projects.Locations.Datasets.Patch
import Gogol.Healthcare.Projects.Locations.Datasets.SetIamPolicy
import Gogol.Healthcare.Projects.Locations.Datasets.TestIamPermissions
import Gogol.Healthcare.Projects.Locations.Get
import Gogol.Healthcare.Projects.Locations.List
import Gogol.Healthcare.Projects.Locations.Services.Nlp.AnalyzeEntities
import Gogol.Healthcare.Types
