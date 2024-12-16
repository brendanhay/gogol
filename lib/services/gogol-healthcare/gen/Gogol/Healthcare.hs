{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}

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
    (
    -- * Configuration
      healthcareService

    -- * OAuth Scopes
    , CloudHealthcare'FullControl
    , CloudPlatform'FullControl

    -- * Resources

    -- ** healthcare.projects.locations.datasets.consentStores.attributeDefinitions.create
    , HealthcareProjectsLocationsDatasetsConsentStoresAttributeDefinitionsCreateResource
    , HealthcareProjectsLocationsDatasetsConsentStoresAttributeDefinitionsCreate (..)
    , newHealthcareProjectsLocationsDatasetsConsentStoresAttributeDefinitionsCreate

    -- ** healthcare.projects.locations.datasets.consentStores.attributeDefinitions.delete
    , HealthcareProjectsLocationsDatasetsConsentStoresAttributeDefinitionsDeleteResource
    , HealthcareProjectsLocationsDatasetsConsentStoresAttributeDefinitionsDelete (..)
    , newHealthcareProjectsLocationsDatasetsConsentStoresAttributeDefinitionsDelete

    -- ** healthcare.projects.locations.datasets.consentStores.attributeDefinitions.get
    , HealthcareProjectsLocationsDatasetsConsentStoresAttributeDefinitionsGetResource
    , HealthcareProjectsLocationsDatasetsConsentStoresAttributeDefinitionsGet (..)
    , newHealthcareProjectsLocationsDatasetsConsentStoresAttributeDefinitionsGet

    -- ** healthcare.projects.locations.datasets.consentStores.attributeDefinitions.list
    , HealthcareProjectsLocationsDatasetsConsentStoresAttributeDefinitionsListResource
    , HealthcareProjectsLocationsDatasetsConsentStoresAttributeDefinitionsList (..)
    , newHealthcareProjectsLocationsDatasetsConsentStoresAttributeDefinitionsList

    -- ** healthcare.projects.locations.datasets.consentStores.attributeDefinitions.patch
    , HealthcareProjectsLocationsDatasetsConsentStoresAttributeDefinitionsPatchResource
    , HealthcareProjectsLocationsDatasetsConsentStoresAttributeDefinitionsPatch (..)
    , newHealthcareProjectsLocationsDatasetsConsentStoresAttributeDefinitionsPatch

    -- ** healthcare.projects.locations.datasets.consentStores.checkDataAccess
    , HealthcareProjectsLocationsDatasetsConsentStoresCheckDataAccessResource
    , HealthcareProjectsLocationsDatasetsConsentStoresCheckDataAccess (..)
    , newHealthcareProjectsLocationsDatasetsConsentStoresCheckDataAccess

    -- ** healthcare.projects.locations.datasets.consentStores.consentArtifacts.create
    , HealthcareProjectsLocationsDatasetsConsentStoresConsentArtifactsCreateResource
    , HealthcareProjectsLocationsDatasetsConsentStoresConsentArtifactsCreate (..)
    , newHealthcareProjectsLocationsDatasetsConsentStoresConsentArtifactsCreate

    -- ** healthcare.projects.locations.datasets.consentStores.consentArtifacts.delete
    , HealthcareProjectsLocationsDatasetsConsentStoresConsentArtifactsDeleteResource
    , HealthcareProjectsLocationsDatasetsConsentStoresConsentArtifactsDelete (..)
    , newHealthcareProjectsLocationsDatasetsConsentStoresConsentArtifactsDelete

    -- ** healthcare.projects.locations.datasets.consentStores.consentArtifacts.get
    , HealthcareProjectsLocationsDatasetsConsentStoresConsentArtifactsGetResource
    , HealthcareProjectsLocationsDatasetsConsentStoresConsentArtifactsGet (..)
    , newHealthcareProjectsLocationsDatasetsConsentStoresConsentArtifactsGet

    -- ** healthcare.projects.locations.datasets.consentStores.consentArtifacts.list
    , HealthcareProjectsLocationsDatasetsConsentStoresConsentArtifactsListResource
    , HealthcareProjectsLocationsDatasetsConsentStoresConsentArtifactsList (..)
    , newHealthcareProjectsLocationsDatasetsConsentStoresConsentArtifactsList

    -- ** healthcare.projects.locations.datasets.consentStores.consents.activate
    , HealthcareProjectsLocationsDatasetsConsentStoresConsentsActivateResource
    , HealthcareProjectsLocationsDatasetsConsentStoresConsentsActivate (..)
    , newHealthcareProjectsLocationsDatasetsConsentStoresConsentsActivate

    -- ** healthcare.projects.locations.datasets.consentStores.consents.create
    , HealthcareProjectsLocationsDatasetsConsentStoresConsentsCreateResource
    , HealthcareProjectsLocationsDatasetsConsentStoresConsentsCreate (..)
    , newHealthcareProjectsLocationsDatasetsConsentStoresConsentsCreate

    -- ** healthcare.projects.locations.datasets.consentStores.consents.delete
    , HealthcareProjectsLocationsDatasetsConsentStoresConsentsDeleteResource
    , HealthcareProjectsLocationsDatasetsConsentStoresConsentsDelete (..)
    , newHealthcareProjectsLocationsDatasetsConsentStoresConsentsDelete

    -- ** healthcare.projects.locations.datasets.consentStores.consents.deleteRevision
    , HealthcareProjectsLocationsDatasetsConsentStoresConsentsDeleteRevisionResource
    , HealthcareProjectsLocationsDatasetsConsentStoresConsentsDeleteRevision (..)
    , newHealthcareProjectsLocationsDatasetsConsentStoresConsentsDeleteRevision

    -- ** healthcare.projects.locations.datasets.consentStores.consents.get
    , HealthcareProjectsLocationsDatasetsConsentStoresConsentsGetResource
    , HealthcareProjectsLocationsDatasetsConsentStoresConsentsGet (..)
    , newHealthcareProjectsLocationsDatasetsConsentStoresConsentsGet

    -- ** healthcare.projects.locations.datasets.consentStores.consents.list
    , HealthcareProjectsLocationsDatasetsConsentStoresConsentsListResource
    , HealthcareProjectsLocationsDatasetsConsentStoresConsentsList (..)
    , newHealthcareProjectsLocationsDatasetsConsentStoresConsentsList

    -- ** healthcare.projects.locations.datasets.consentStores.consents.listRevisions
    , HealthcareProjectsLocationsDatasetsConsentStoresConsentsListRevisionsResource
    , HealthcareProjectsLocationsDatasetsConsentStoresConsentsListRevisions (..)
    , newHealthcareProjectsLocationsDatasetsConsentStoresConsentsListRevisions

    -- ** healthcare.projects.locations.datasets.consentStores.consents.patch
    , HealthcareProjectsLocationsDatasetsConsentStoresConsentsPatchResource
    , HealthcareProjectsLocationsDatasetsConsentStoresConsentsPatch (..)
    , newHealthcareProjectsLocationsDatasetsConsentStoresConsentsPatch

    -- ** healthcare.projects.locations.datasets.consentStores.consents.reject
    , HealthcareProjectsLocationsDatasetsConsentStoresConsentsRejectResource
    , HealthcareProjectsLocationsDatasetsConsentStoresConsentsReject (..)
    , newHealthcareProjectsLocationsDatasetsConsentStoresConsentsReject

    -- ** healthcare.projects.locations.datasets.consentStores.consents.revoke
    , HealthcareProjectsLocationsDatasetsConsentStoresConsentsRevokeResource
    , HealthcareProjectsLocationsDatasetsConsentStoresConsentsRevoke (..)
    , newHealthcareProjectsLocationsDatasetsConsentStoresConsentsRevoke

    -- ** healthcare.projects.locations.datasets.consentStores.create
    , HealthcareProjectsLocationsDatasetsConsentStoresCreateResource
    , HealthcareProjectsLocationsDatasetsConsentStoresCreate (..)
    , newHealthcareProjectsLocationsDatasetsConsentStoresCreate

    -- ** healthcare.projects.locations.datasets.consentStores.delete
    , HealthcareProjectsLocationsDatasetsConsentStoresDeleteResource
    , HealthcareProjectsLocationsDatasetsConsentStoresDelete (..)
    , newHealthcareProjectsLocationsDatasetsConsentStoresDelete

    -- ** healthcare.projects.locations.datasets.consentStores.evaluateUserConsents
    , HealthcareProjectsLocationsDatasetsConsentStoresEvaluateUserConsentsResource
    , HealthcareProjectsLocationsDatasetsConsentStoresEvaluateUserConsents (..)
    , newHealthcareProjectsLocationsDatasetsConsentStoresEvaluateUserConsents

    -- ** healthcare.projects.locations.datasets.consentStores.get
    , HealthcareProjectsLocationsDatasetsConsentStoresGetResource
    , HealthcareProjectsLocationsDatasetsConsentStoresGet (..)
    , newHealthcareProjectsLocationsDatasetsConsentStoresGet

    -- ** healthcare.projects.locations.datasets.consentStores.getIamPolicy
    , HealthcareProjectsLocationsDatasetsConsentStoresGetIamPolicyResource
    , HealthcareProjectsLocationsDatasetsConsentStoresGetIamPolicy (..)
    , newHealthcareProjectsLocationsDatasetsConsentStoresGetIamPolicy

    -- ** healthcare.projects.locations.datasets.consentStores.list
    , HealthcareProjectsLocationsDatasetsConsentStoresListResource
    , HealthcareProjectsLocationsDatasetsConsentStoresList (..)
    , newHealthcareProjectsLocationsDatasetsConsentStoresList

    -- ** healthcare.projects.locations.datasets.consentStores.patch
    , HealthcareProjectsLocationsDatasetsConsentStoresPatchResource
    , HealthcareProjectsLocationsDatasetsConsentStoresPatch (..)
    , newHealthcareProjectsLocationsDatasetsConsentStoresPatch

    -- ** healthcare.projects.locations.datasets.consentStores.queryAccessibleData
    , HealthcareProjectsLocationsDatasetsConsentStoresQueryAccessibleDataResource
    , HealthcareProjectsLocationsDatasetsConsentStoresQueryAccessibleData (..)
    , newHealthcareProjectsLocationsDatasetsConsentStoresQueryAccessibleData

    -- ** healthcare.projects.locations.datasets.consentStores.setIamPolicy
    , HealthcareProjectsLocationsDatasetsConsentStoresSetIamPolicyResource
    , HealthcareProjectsLocationsDatasetsConsentStoresSetIamPolicy (..)
    , newHealthcareProjectsLocationsDatasetsConsentStoresSetIamPolicy

    -- ** healthcare.projects.locations.datasets.consentStores.testIamPermissions
    , HealthcareProjectsLocationsDatasetsConsentStoresTestIamPermissionsResource
    , HealthcareProjectsLocationsDatasetsConsentStoresTestIamPermissions (..)
    , newHealthcareProjectsLocationsDatasetsConsentStoresTestIamPermissions

    -- ** healthcare.projects.locations.datasets.consentStores.userDataMappings.archive
    , HealthcareProjectsLocationsDatasetsConsentStoresUserDataMappingsArchiveResource
    , HealthcareProjectsLocationsDatasetsConsentStoresUserDataMappingsArchive (..)
    , newHealthcareProjectsLocationsDatasetsConsentStoresUserDataMappingsArchive

    -- ** healthcare.projects.locations.datasets.consentStores.userDataMappings.create
    , HealthcareProjectsLocationsDatasetsConsentStoresUserDataMappingsCreateResource
    , HealthcareProjectsLocationsDatasetsConsentStoresUserDataMappingsCreate (..)
    , newHealthcareProjectsLocationsDatasetsConsentStoresUserDataMappingsCreate

    -- ** healthcare.projects.locations.datasets.consentStores.userDataMappings.delete
    , HealthcareProjectsLocationsDatasetsConsentStoresUserDataMappingsDeleteResource
    , HealthcareProjectsLocationsDatasetsConsentStoresUserDataMappingsDelete (..)
    , newHealthcareProjectsLocationsDatasetsConsentStoresUserDataMappingsDelete

    -- ** healthcare.projects.locations.datasets.consentStores.userDataMappings.get
    , HealthcareProjectsLocationsDatasetsConsentStoresUserDataMappingsGetResource
    , HealthcareProjectsLocationsDatasetsConsentStoresUserDataMappingsGet (..)
    , newHealthcareProjectsLocationsDatasetsConsentStoresUserDataMappingsGet

    -- ** healthcare.projects.locations.datasets.consentStores.userDataMappings.list
    , HealthcareProjectsLocationsDatasetsConsentStoresUserDataMappingsListResource
    , HealthcareProjectsLocationsDatasetsConsentStoresUserDataMappingsList (..)
    , newHealthcareProjectsLocationsDatasetsConsentStoresUserDataMappingsList

    -- ** healthcare.projects.locations.datasets.consentStores.userDataMappings.patch
    , HealthcareProjectsLocationsDatasetsConsentStoresUserDataMappingsPatchResource
    , HealthcareProjectsLocationsDatasetsConsentStoresUserDataMappingsPatch (..)
    , newHealthcareProjectsLocationsDatasetsConsentStoresUserDataMappingsPatch

    -- ** healthcare.projects.locations.datasets.create
    , HealthcareProjectsLocationsDatasetsCreateResource
    , HealthcareProjectsLocationsDatasetsCreate (..)
    , newHealthcareProjectsLocationsDatasetsCreate

    -- ** healthcare.projects.locations.datasets.dataMapperWorkspaces.getIamPolicy
    , HealthcareProjectsLocationsDatasetsDataMapperWorkspacesGetIamPolicyResource
    , HealthcareProjectsLocationsDatasetsDataMapperWorkspacesGetIamPolicy (..)
    , newHealthcareProjectsLocationsDatasetsDataMapperWorkspacesGetIamPolicy

    -- ** healthcare.projects.locations.datasets.dataMapperWorkspaces.setIamPolicy
    , HealthcareProjectsLocationsDatasetsDataMapperWorkspacesSetIamPolicyResource
    , HealthcareProjectsLocationsDatasetsDataMapperWorkspacesSetIamPolicy (..)
    , newHealthcareProjectsLocationsDatasetsDataMapperWorkspacesSetIamPolicy

    -- ** healthcare.projects.locations.datasets.dataMapperWorkspaces.testIamPermissions
    , HealthcareProjectsLocationsDatasetsDataMapperWorkspacesTestIamPermissionsResource
    , HealthcareProjectsLocationsDatasetsDataMapperWorkspacesTestIamPermissions (..)
    , newHealthcareProjectsLocationsDatasetsDataMapperWorkspacesTestIamPermissions

    -- ** healthcare.projects.locations.datasets.deidentify
    , HealthcareProjectsLocationsDatasetsDeidentifyResource
    , HealthcareProjectsLocationsDatasetsDeidentify (..)
    , newHealthcareProjectsLocationsDatasetsDeidentify

    -- ** healthcare.projects.locations.datasets.delete
    , HealthcareProjectsLocationsDatasetsDeleteResource
    , HealthcareProjectsLocationsDatasetsDelete (..)
    , newHealthcareProjectsLocationsDatasetsDelete

    -- ** healthcare.projects.locations.datasets.dicomStores.create
    , HealthcareProjectsLocationsDatasetsDicomStoresCreateResource
    , HealthcareProjectsLocationsDatasetsDicomStoresCreate (..)
    , newHealthcareProjectsLocationsDatasetsDicomStoresCreate

    -- ** healthcare.projects.locations.datasets.dicomStores.deidentify
    , HealthcareProjectsLocationsDatasetsDicomStoresDeidentifyResource
    , HealthcareProjectsLocationsDatasetsDicomStoresDeidentify (..)
    , newHealthcareProjectsLocationsDatasetsDicomStoresDeidentify

    -- ** healthcare.projects.locations.datasets.dicomStores.delete
    , HealthcareProjectsLocationsDatasetsDicomStoresDeleteResource
    , HealthcareProjectsLocationsDatasetsDicomStoresDelete (..)
    , newHealthcareProjectsLocationsDatasetsDicomStoresDelete

    -- ** healthcare.projects.locations.datasets.dicomStores.dicomWeb.studies.getStudyMetrics
    , HealthcareProjectsLocationsDatasetsDicomStoresDicomWebStudiesGetStudyMetricsResource
    , HealthcareProjectsLocationsDatasetsDicomStoresDicomWebStudiesGetStudyMetrics (..)
    , newHealthcareProjectsLocationsDatasetsDicomStoresDicomWebStudiesGetStudyMetrics

    -- ** healthcare.projects.locations.datasets.dicomStores.dicomWeb.studies.series.getSeriesMetrics
    , HealthcareProjectsLocationsDatasetsDicomStoresDicomWebStudiesSeriesGetSeriesMetricsResource
    , HealthcareProjectsLocationsDatasetsDicomStoresDicomWebStudiesSeriesGetSeriesMetrics (..)
    , newHealthcareProjectsLocationsDatasetsDicomStoresDicomWebStudiesSeriesGetSeriesMetrics

    -- ** healthcare.projects.locations.datasets.dicomStores.dicomWeb.studies.series.instances.getStorageInfo
    , HealthcareProjectsLocationsDatasetsDicomStoresDicomWebStudiesSeriesInstancesGetStorageInfoResource
    , HealthcareProjectsLocationsDatasetsDicomStoresDicomWebStudiesSeriesInstancesGetStorageInfo (..)
    , newHealthcareProjectsLocationsDatasetsDicomStoresDicomWebStudiesSeriesInstancesGetStorageInfo

    -- ** healthcare.projects.locations.datasets.dicomStores.dicomWeb.studies.setBlobStorageSettings
    , HealthcareProjectsLocationsDatasetsDicomStoresDicomWebStudiesSetBlobStorageSettingsResource
    , HealthcareProjectsLocationsDatasetsDicomStoresDicomWebStudiesSetBlobStorageSettings (..)
    , newHealthcareProjectsLocationsDatasetsDicomStoresDicomWebStudiesSetBlobStorageSettings

    -- ** healthcare.projects.locations.datasets.dicomStores.export
    , HealthcareProjectsLocationsDatasetsDicomStoresExportResource
    , HealthcareProjectsLocationsDatasetsDicomStoresExport (..)
    , newHealthcareProjectsLocationsDatasetsDicomStoresExport

    -- ** healthcare.projects.locations.datasets.dicomStores.get
    , HealthcareProjectsLocationsDatasetsDicomStoresGetResource
    , HealthcareProjectsLocationsDatasetsDicomStoresGet (..)
    , newHealthcareProjectsLocationsDatasetsDicomStoresGet

    -- ** healthcare.projects.locations.datasets.dicomStores.getDICOMStoreMetrics
    , HealthcareProjectsLocationsDatasetsDicomStoresGetDICOMStoreMetricsResource
    , HealthcareProjectsLocationsDatasetsDicomStoresGetDICOMStoreMetrics (..)
    , newHealthcareProjectsLocationsDatasetsDicomStoresGetDICOMStoreMetrics

    -- ** healthcare.projects.locations.datasets.dicomStores.getIamPolicy
    , HealthcareProjectsLocationsDatasetsDicomStoresGetIamPolicyResource
    , HealthcareProjectsLocationsDatasetsDicomStoresGetIamPolicy (..)
    , newHealthcareProjectsLocationsDatasetsDicomStoresGetIamPolicy

    -- ** healthcare.projects.locations.datasets.dicomStores.import
    , HealthcareProjectsLocationsDatasetsDicomStoresImportResource
    , HealthcareProjectsLocationsDatasetsDicomStoresImport (..)
    , newHealthcareProjectsLocationsDatasetsDicomStoresImport

    -- ** healthcare.projects.locations.datasets.dicomStores.list
    , HealthcareProjectsLocationsDatasetsDicomStoresListResource
    , HealthcareProjectsLocationsDatasetsDicomStoresList (..)
    , newHealthcareProjectsLocationsDatasetsDicomStoresList

    -- ** healthcare.projects.locations.datasets.dicomStores.patch
    , HealthcareProjectsLocationsDatasetsDicomStoresPatchResource
    , HealthcareProjectsLocationsDatasetsDicomStoresPatch (..)
    , newHealthcareProjectsLocationsDatasetsDicomStoresPatch

    -- ** healthcare.projects.locations.datasets.dicomStores.searchForInstances
    , HealthcareProjectsLocationsDatasetsDicomStoresSearchForInstancesResource
    , HealthcareProjectsLocationsDatasetsDicomStoresSearchForInstances (..)
    , newHealthcareProjectsLocationsDatasetsDicomStoresSearchForInstances

    -- ** healthcare.projects.locations.datasets.dicomStores.searchForSeries
    , HealthcareProjectsLocationsDatasetsDicomStoresSearchForSeriesResource
    , HealthcareProjectsLocationsDatasetsDicomStoresSearchForSeries (..)
    , newHealthcareProjectsLocationsDatasetsDicomStoresSearchForSeries

    -- ** healthcare.projects.locations.datasets.dicomStores.searchForStudies
    , HealthcareProjectsLocationsDatasetsDicomStoresSearchForStudiesResource
    , HealthcareProjectsLocationsDatasetsDicomStoresSearchForStudies (..)
    , newHealthcareProjectsLocationsDatasetsDicomStoresSearchForStudies

    -- ** healthcare.projects.locations.datasets.dicomStores.setBlobStorageSettings
    , HealthcareProjectsLocationsDatasetsDicomStoresSetBlobStorageSettingsResource
    , HealthcareProjectsLocationsDatasetsDicomStoresSetBlobStorageSettings (..)
    , newHealthcareProjectsLocationsDatasetsDicomStoresSetBlobStorageSettings

    -- ** healthcare.projects.locations.datasets.dicomStores.setIamPolicy
    , HealthcareProjectsLocationsDatasetsDicomStoresSetIamPolicyResource
    , HealthcareProjectsLocationsDatasetsDicomStoresSetIamPolicy (..)
    , newHealthcareProjectsLocationsDatasetsDicomStoresSetIamPolicy

    -- ** healthcare.projects.locations.datasets.dicomStores.storeInstances
    , HealthcareProjectsLocationsDatasetsDicomStoresStoreInstancesResource
    , HealthcareProjectsLocationsDatasetsDicomStoresStoreInstances (..)
    , newHealthcareProjectsLocationsDatasetsDicomStoresStoreInstances

    -- ** healthcare.projects.locations.datasets.dicomStores.studies.delete
    , HealthcareProjectsLocationsDatasetsDicomStoresStudiesDeleteResource
    , HealthcareProjectsLocationsDatasetsDicomStoresStudiesDelete (..)
    , newHealthcareProjectsLocationsDatasetsDicomStoresStudiesDelete

    -- ** healthcare.projects.locations.datasets.dicomStores.studies.retrieveMetadata
    , HealthcareProjectsLocationsDatasetsDicomStoresStudiesRetrieveMetadataResource
    , HealthcareProjectsLocationsDatasetsDicomStoresStudiesRetrieveMetadata (..)
    , newHealthcareProjectsLocationsDatasetsDicomStoresStudiesRetrieveMetadata

    -- ** healthcare.projects.locations.datasets.dicomStores.studies.retrieveStudy
    , HealthcareProjectsLocationsDatasetsDicomStoresStudiesRetrieveStudyResource
    , HealthcareProjectsLocationsDatasetsDicomStoresStudiesRetrieveStudy (..)
    , newHealthcareProjectsLocationsDatasetsDicomStoresStudiesRetrieveStudy

    -- ** healthcare.projects.locations.datasets.dicomStores.studies.searchForInstances
    , HealthcareProjectsLocationsDatasetsDicomStoresStudiesSearchForInstancesResource
    , HealthcareProjectsLocationsDatasetsDicomStoresStudiesSearchForInstances (..)
    , newHealthcareProjectsLocationsDatasetsDicomStoresStudiesSearchForInstances

    -- ** healthcare.projects.locations.datasets.dicomStores.studies.searchForSeries
    , HealthcareProjectsLocationsDatasetsDicomStoresStudiesSearchForSeriesResource
    , HealthcareProjectsLocationsDatasetsDicomStoresStudiesSearchForSeries (..)
    , newHealthcareProjectsLocationsDatasetsDicomStoresStudiesSearchForSeries

    -- ** healthcare.projects.locations.datasets.dicomStores.studies.series.delete
    , HealthcareProjectsLocationsDatasetsDicomStoresStudiesSeriesDeleteResource
    , HealthcareProjectsLocationsDatasetsDicomStoresStudiesSeriesDelete (..)
    , newHealthcareProjectsLocationsDatasetsDicomStoresStudiesSeriesDelete

    -- ** healthcare.projects.locations.datasets.dicomStores.studies.series.instances.delete
    , HealthcareProjectsLocationsDatasetsDicomStoresStudiesSeriesInstancesDeleteResource
    , HealthcareProjectsLocationsDatasetsDicomStoresStudiesSeriesInstancesDelete (..)
    , newHealthcareProjectsLocationsDatasetsDicomStoresStudiesSeriesInstancesDelete

    -- ** healthcare.projects.locations.datasets.dicomStores.studies.series.instances.frames.retrieveFrames
    , HealthcareProjectsLocationsDatasetsDicomStoresStudiesSeriesInstancesFramesRetrieveFramesResource
    , HealthcareProjectsLocationsDatasetsDicomStoresStudiesSeriesInstancesFramesRetrieveFrames (..)
    , newHealthcareProjectsLocationsDatasetsDicomStoresStudiesSeriesInstancesFramesRetrieveFrames

    -- ** healthcare.projects.locations.datasets.dicomStores.studies.series.instances.frames.retrieveRendered
    , HealthcareProjectsLocationsDatasetsDicomStoresStudiesSeriesInstancesFramesRetrieveRenderedResource
    , HealthcareProjectsLocationsDatasetsDicomStoresStudiesSeriesInstancesFramesRetrieveRendered (..)
    , newHealthcareProjectsLocationsDatasetsDicomStoresStudiesSeriesInstancesFramesRetrieveRendered

    -- ** healthcare.projects.locations.datasets.dicomStores.studies.series.instances.retrieveInstance
    , HealthcareProjectsLocationsDatasetsDicomStoresStudiesSeriesInstancesRetrieveInstanceResource
    , HealthcareProjectsLocationsDatasetsDicomStoresStudiesSeriesInstancesRetrieveInstance (..)
    , newHealthcareProjectsLocationsDatasetsDicomStoresStudiesSeriesInstancesRetrieveInstance

    -- ** healthcare.projects.locations.datasets.dicomStores.studies.series.instances.retrieveMetadata
    , HealthcareProjectsLocationsDatasetsDicomStoresStudiesSeriesInstancesRetrieveMetadataResource
    , HealthcareProjectsLocationsDatasetsDicomStoresStudiesSeriesInstancesRetrieveMetadata (..)
    , newHealthcareProjectsLocationsDatasetsDicomStoresStudiesSeriesInstancesRetrieveMetadata

    -- ** healthcare.projects.locations.datasets.dicomStores.studies.series.instances.retrieveRendered
    , HealthcareProjectsLocationsDatasetsDicomStoresStudiesSeriesInstancesRetrieveRenderedResource
    , HealthcareProjectsLocationsDatasetsDicomStoresStudiesSeriesInstancesRetrieveRendered (..)
    , newHealthcareProjectsLocationsDatasetsDicomStoresStudiesSeriesInstancesRetrieveRendered

    -- ** healthcare.projects.locations.datasets.dicomStores.studies.series.retrieveMetadata
    , HealthcareProjectsLocationsDatasetsDicomStoresStudiesSeriesRetrieveMetadataResource
    , HealthcareProjectsLocationsDatasetsDicomStoresStudiesSeriesRetrieveMetadata (..)
    , newHealthcareProjectsLocationsDatasetsDicomStoresStudiesSeriesRetrieveMetadata

    -- ** healthcare.projects.locations.datasets.dicomStores.studies.series.retrieveSeries
    , HealthcareProjectsLocationsDatasetsDicomStoresStudiesSeriesRetrieveSeriesResource
    , HealthcareProjectsLocationsDatasetsDicomStoresStudiesSeriesRetrieveSeries (..)
    , newHealthcareProjectsLocationsDatasetsDicomStoresStudiesSeriesRetrieveSeries

    -- ** healthcare.projects.locations.datasets.dicomStores.studies.series.searchForInstances
    , HealthcareProjectsLocationsDatasetsDicomStoresStudiesSeriesSearchForInstancesResource
    , HealthcareProjectsLocationsDatasetsDicomStoresStudiesSeriesSearchForInstances (..)
    , newHealthcareProjectsLocationsDatasetsDicomStoresStudiesSeriesSearchForInstances

    -- ** healthcare.projects.locations.datasets.dicomStores.studies.storeInstances
    , HealthcareProjectsLocationsDatasetsDicomStoresStudiesStoreInstancesResource
    , HealthcareProjectsLocationsDatasetsDicomStoresStudiesStoreInstances (..)
    , newHealthcareProjectsLocationsDatasetsDicomStoresStudiesStoreInstances

    -- ** healthcare.projects.locations.datasets.dicomStores.testIamPermissions
    , HealthcareProjectsLocationsDatasetsDicomStoresTestIamPermissionsResource
    , HealthcareProjectsLocationsDatasetsDicomStoresTestIamPermissions (..)
    , newHealthcareProjectsLocationsDatasetsDicomStoresTestIamPermissions

    -- ** healthcare.projects.locations.datasets.fhirStores.applyAdminConsents
    , HealthcareProjectsLocationsDatasetsFhirStoresApplyAdminConsentsResource
    , HealthcareProjectsLocationsDatasetsFhirStoresApplyAdminConsents (..)
    , newHealthcareProjectsLocationsDatasetsFhirStoresApplyAdminConsents

    -- ** healthcare.projects.locations.datasets.fhirStores.applyConsents
    , HealthcareProjectsLocationsDatasetsFhirStoresApplyConsentsResource
    , HealthcareProjectsLocationsDatasetsFhirStoresApplyConsents (..)
    , newHealthcareProjectsLocationsDatasetsFhirStoresApplyConsents

    -- ** healthcare.projects.locations.datasets.fhirStores.create
    , HealthcareProjectsLocationsDatasetsFhirStoresCreateResource
    , HealthcareProjectsLocationsDatasetsFhirStoresCreate (..)
    , newHealthcareProjectsLocationsDatasetsFhirStoresCreate

    -- ** healthcare.projects.locations.datasets.fhirStores.deidentify
    , HealthcareProjectsLocationsDatasetsFhirStoresDeidentifyResource
    , HealthcareProjectsLocationsDatasetsFhirStoresDeidentify (..)
    , newHealthcareProjectsLocationsDatasetsFhirStoresDeidentify

    -- ** healthcare.projects.locations.datasets.fhirStores.delete
    , HealthcareProjectsLocationsDatasetsFhirStoresDeleteResource
    , HealthcareProjectsLocationsDatasetsFhirStoresDelete (..)
    , newHealthcareProjectsLocationsDatasetsFhirStoresDelete

    -- ** healthcare.projects.locations.datasets.fhirStores.explainDataAccess
    , HealthcareProjectsLocationsDatasetsFhirStoresExplainDataAccessResource
    , HealthcareProjectsLocationsDatasetsFhirStoresExplainDataAccess (..)
    , newHealthcareProjectsLocationsDatasetsFhirStoresExplainDataAccess

    -- ** healthcare.projects.locations.datasets.fhirStores.export
    , HealthcareProjectsLocationsDatasetsFhirStoresExportResource
    , HealthcareProjectsLocationsDatasetsFhirStoresExport (..)
    , newHealthcareProjectsLocationsDatasetsFhirStoresExport

    -- ** healthcare.projects.locations.datasets.fhirStores.fhir.Binarycreate
    , HealthcareProjectsLocationsDatasetsFhirStoresFhirBinarycreateResource
    , HealthcareProjectsLocationsDatasetsFhirStoresFhirBinarycreate (..)
    , newHealthcareProjectsLocationsDatasetsFhirStoresFhirBinarycreate

    -- ** healthcare.projects.locations.datasets.fhirStores.fhir.Binaryread
    , HealthcareProjectsLocationsDatasetsFhirStoresFhirBinaryreadResource
    , HealthcareProjectsLocationsDatasetsFhirStoresFhirBinaryread (..)
    , newHealthcareProjectsLocationsDatasetsFhirStoresFhirBinaryread

    -- ** healthcare.projects.locations.datasets.fhirStores.fhir.Binaryupdate
    , HealthcareProjectsLocationsDatasetsFhirStoresFhirBinaryupdateResource
    , HealthcareProjectsLocationsDatasetsFhirStoresFhirBinaryupdate (..)
    , newHealthcareProjectsLocationsDatasetsFhirStoresFhirBinaryupdate

    -- ** healthcare.projects.locations.datasets.fhirStores.fhir.Binaryvread
    , HealthcareProjectsLocationsDatasetsFhirStoresFhirBinaryvreadResource
    , HealthcareProjectsLocationsDatasetsFhirStoresFhirBinaryvread (..)
    , newHealthcareProjectsLocationsDatasetsFhirStoresFhirBinaryvread

    -- ** healthcare.projects.locations.datasets.fhirStores.fhir.Consentenforcementstatus
    , HealthcareProjectsLocationsDatasetsFhirStoresFhirConsentenforcementstatusResource
    , HealthcareProjectsLocationsDatasetsFhirStoresFhirConsentenforcementstatus (..)
    , newHealthcareProjectsLocationsDatasetsFhirStoresFhirConsentenforcementstatus

    -- ** healthcare.projects.locations.datasets.fhirStores.fhir.Patientconsentenforcementstatus
    , HealthcareProjectsLocationsDatasetsFhirStoresFhirPatientconsentenforcementstatusResource
    , HealthcareProjectsLocationsDatasetsFhirStoresFhirPatientconsentenforcementstatus (..)
    , newHealthcareProjectsLocationsDatasetsFhirStoresFhirPatientconsentenforcementstatus

    -- ** healthcare.projects.locations.datasets.fhirStores.fhir.Patienteverything
    , HealthcareProjectsLocationsDatasetsFhirStoresFhirPatienteverythingResource
    , HealthcareProjectsLocationsDatasetsFhirStoresFhirPatienteverything (..)
    , newHealthcareProjectsLocationsDatasetsFhirStoresFhirPatienteverything

    -- ** healthcare.projects.locations.datasets.fhirStores.fhir.Resourcepurge
    , HealthcareProjectsLocationsDatasetsFhirStoresFhirResourcepurgeResource
    , HealthcareProjectsLocationsDatasetsFhirStoresFhirResourcepurge (..)
    , newHealthcareProjectsLocationsDatasetsFhirStoresFhirResourcepurge

    -- ** healthcare.projects.locations.datasets.fhirStores.fhir.Resourcevalidate
    , HealthcareProjectsLocationsDatasetsFhirStoresFhirResourcevalidateResource
    , HealthcareProjectsLocationsDatasetsFhirStoresFhirResourcevalidate (..)
    , newHealthcareProjectsLocationsDatasetsFhirStoresFhirResourcevalidate

    -- ** healthcare.projects.locations.datasets.fhirStores.fhir.capabilities
    , HealthcareProjectsLocationsDatasetsFhirStoresFhirCapabilitiesResource
    , HealthcareProjectsLocationsDatasetsFhirStoresFhirCapabilities (..)
    , newHealthcareProjectsLocationsDatasetsFhirStoresFhirCapabilities

    -- ** healthcare.projects.locations.datasets.fhirStores.fhir.conditionalDelete
    , HealthcareProjectsLocationsDatasetsFhirStoresFhirConditionalDeleteResource
    , HealthcareProjectsLocationsDatasetsFhirStoresFhirConditionalDelete (..)
    , newHealthcareProjectsLocationsDatasetsFhirStoresFhirConditionalDelete

    -- ** healthcare.projects.locations.datasets.fhirStores.fhir.conditionalPatch
    , HealthcareProjectsLocationsDatasetsFhirStoresFhirConditionalPatchResource
    , HealthcareProjectsLocationsDatasetsFhirStoresFhirConditionalPatch (..)
    , newHealthcareProjectsLocationsDatasetsFhirStoresFhirConditionalPatch

    -- ** healthcare.projects.locations.datasets.fhirStores.fhir.conditionalUpdate
    , HealthcareProjectsLocationsDatasetsFhirStoresFhirConditionalUpdateResource
    , HealthcareProjectsLocationsDatasetsFhirStoresFhirConditionalUpdate (..)
    , newHealthcareProjectsLocationsDatasetsFhirStoresFhirConditionalUpdate

    -- ** healthcare.projects.locations.datasets.fhirStores.fhir.create
    , HealthcareProjectsLocationsDatasetsFhirStoresFhirCreateResource
    , HealthcareProjectsLocationsDatasetsFhirStoresFhirCreate (..)
    , newHealthcareProjectsLocationsDatasetsFhirStoresFhirCreate

    -- ** healthcare.projects.locations.datasets.fhirStores.fhir.delete
    , HealthcareProjectsLocationsDatasetsFhirStoresFhirDeleteResource
    , HealthcareProjectsLocationsDatasetsFhirStoresFhirDelete (..)
    , newHealthcareProjectsLocationsDatasetsFhirStoresFhirDelete

    -- ** healthcare.projects.locations.datasets.fhirStores.fhir.executeBundle
    , HealthcareProjectsLocationsDatasetsFhirStoresFhirExecuteBundleResource
    , HealthcareProjectsLocationsDatasetsFhirStoresFhirExecuteBundle (..)
    , newHealthcareProjectsLocationsDatasetsFhirStoresFhirExecuteBundle

    -- ** healthcare.projects.locations.datasets.fhirStores.fhir.history
    , HealthcareProjectsLocationsDatasetsFhirStoresFhirHistoryResource
    , HealthcareProjectsLocationsDatasetsFhirStoresFhirHistory (..)
    , newHealthcareProjectsLocationsDatasetsFhirStoresFhirHistory

    -- ** healthcare.projects.locations.datasets.fhirStores.fhir.patch
    , HealthcareProjectsLocationsDatasetsFhirStoresFhirPatchResource
    , HealthcareProjectsLocationsDatasetsFhirStoresFhirPatch (..)
    , newHealthcareProjectsLocationsDatasetsFhirStoresFhirPatch

    -- ** healthcare.projects.locations.datasets.fhirStores.fhir.read
    , HealthcareProjectsLocationsDatasetsFhirStoresFhirReadResource
    , HealthcareProjectsLocationsDatasetsFhirStoresFhirRead (..)
    , newHealthcareProjectsLocationsDatasetsFhirStoresFhirRead

    -- ** healthcare.projects.locations.datasets.fhirStores.fhir.search
    , HealthcareProjectsLocationsDatasetsFhirStoresFhirSearchResource
    , HealthcareProjectsLocationsDatasetsFhirStoresFhirSearch (..)
    , newHealthcareProjectsLocationsDatasetsFhirStoresFhirSearch

    -- ** healthcare.projects.locations.datasets.fhirStores.fhir.searchtype
    , HealthcareProjectsLocationsDatasetsFhirStoresFhirSearchtypeResource
    , HealthcareProjectsLocationsDatasetsFhirStoresFhirSearchtype (..)
    , newHealthcareProjectsLocationsDatasetsFhirStoresFhirSearchtype

    -- ** healthcare.projects.locations.datasets.fhirStores.fhir.update
    , HealthcareProjectsLocationsDatasetsFhirStoresFhirUpdateResource
    , HealthcareProjectsLocationsDatasetsFhirStoresFhirUpdate (..)
    , newHealthcareProjectsLocationsDatasetsFhirStoresFhirUpdate

    -- ** healthcare.projects.locations.datasets.fhirStores.fhir.vread
    , HealthcareProjectsLocationsDatasetsFhirStoresFhirVreadResource
    , HealthcareProjectsLocationsDatasetsFhirStoresFhirVread (..)
    , newHealthcareProjectsLocationsDatasetsFhirStoresFhirVread

    -- ** healthcare.projects.locations.datasets.fhirStores.get
    , HealthcareProjectsLocationsDatasetsFhirStoresGetResource
    , HealthcareProjectsLocationsDatasetsFhirStoresGet (..)
    , newHealthcareProjectsLocationsDatasetsFhirStoresGet

    -- ** healthcare.projects.locations.datasets.fhirStores.getFHIRStoreMetrics
    , HealthcareProjectsLocationsDatasetsFhirStoresGetFHIRStoreMetricsResource
    , HealthcareProjectsLocationsDatasetsFhirStoresGetFHIRStoreMetrics (..)
    , newHealthcareProjectsLocationsDatasetsFhirStoresGetFHIRStoreMetrics

    -- ** healthcare.projects.locations.datasets.fhirStores.getIamPolicy
    , HealthcareProjectsLocationsDatasetsFhirStoresGetIamPolicyResource
    , HealthcareProjectsLocationsDatasetsFhirStoresGetIamPolicy (..)
    , newHealthcareProjectsLocationsDatasetsFhirStoresGetIamPolicy

    -- ** healthcare.projects.locations.datasets.fhirStores.import
    , HealthcareProjectsLocationsDatasetsFhirStoresImportResource
    , HealthcareProjectsLocationsDatasetsFhirStoresImport (..)
    , newHealthcareProjectsLocationsDatasetsFhirStoresImport

    -- ** healthcare.projects.locations.datasets.fhirStores.list
    , HealthcareProjectsLocationsDatasetsFhirStoresListResource
    , HealthcareProjectsLocationsDatasetsFhirStoresList (..)
    , newHealthcareProjectsLocationsDatasetsFhirStoresList

    -- ** healthcare.projects.locations.datasets.fhirStores.patch
    , HealthcareProjectsLocationsDatasetsFhirStoresPatchResource
    , HealthcareProjectsLocationsDatasetsFhirStoresPatch (..)
    , newHealthcareProjectsLocationsDatasetsFhirStoresPatch

    -- ** healthcare.projects.locations.datasets.fhirStores.rollback
    , HealthcareProjectsLocationsDatasetsFhirStoresRollbackResource
    , HealthcareProjectsLocationsDatasetsFhirStoresRollback (..)
    , newHealthcareProjectsLocationsDatasetsFhirStoresRollback

    -- ** healthcare.projects.locations.datasets.fhirStores.setIamPolicy
    , HealthcareProjectsLocationsDatasetsFhirStoresSetIamPolicyResource
    , HealthcareProjectsLocationsDatasetsFhirStoresSetIamPolicy (..)
    , newHealthcareProjectsLocationsDatasetsFhirStoresSetIamPolicy

    -- ** healthcare.projects.locations.datasets.fhirStores.testIamPermissions
    , HealthcareProjectsLocationsDatasetsFhirStoresTestIamPermissionsResource
    , HealthcareProjectsLocationsDatasetsFhirStoresTestIamPermissions (..)
    , newHealthcareProjectsLocationsDatasetsFhirStoresTestIamPermissions

    -- ** healthcare.projects.locations.datasets.get
    , HealthcareProjectsLocationsDatasetsGetResource
    , HealthcareProjectsLocationsDatasetsGet (..)
    , newHealthcareProjectsLocationsDatasetsGet

    -- ** healthcare.projects.locations.datasets.getIamPolicy
    , HealthcareProjectsLocationsDatasetsGetIamPolicyResource
    , HealthcareProjectsLocationsDatasetsGetIamPolicy (..)
    , newHealthcareProjectsLocationsDatasetsGetIamPolicy

    -- ** healthcare.projects.locations.datasets.hl7V2Stores.create
    , HealthcareProjectsLocationsDatasetsHl7V2StoresCreateResource
    , HealthcareProjectsLocationsDatasetsHl7V2StoresCreate (..)
    , newHealthcareProjectsLocationsDatasetsHl7V2StoresCreate

    -- ** healthcare.projects.locations.datasets.hl7V2Stores.delete
    , HealthcareProjectsLocationsDatasetsHl7V2StoresDeleteResource
    , HealthcareProjectsLocationsDatasetsHl7V2StoresDelete (..)
    , newHealthcareProjectsLocationsDatasetsHl7V2StoresDelete

    -- ** healthcare.projects.locations.datasets.hl7V2Stores.export
    , HealthcareProjectsLocationsDatasetsHl7V2StoresExportResource
    , HealthcareProjectsLocationsDatasetsHl7V2StoresExport (..)
    , newHealthcareProjectsLocationsDatasetsHl7V2StoresExport

    -- ** healthcare.projects.locations.datasets.hl7V2Stores.get
    , HealthcareProjectsLocationsDatasetsHl7V2StoresGetResource
    , HealthcareProjectsLocationsDatasetsHl7V2StoresGet (..)
    , newHealthcareProjectsLocationsDatasetsHl7V2StoresGet

    -- ** healthcare.projects.locations.datasets.hl7V2Stores.getHL7v2StoreMetrics
    , HealthcareProjectsLocationsDatasetsHl7V2StoresGetHL7v2StoreMetricsResource
    , HealthcareProjectsLocationsDatasetsHl7V2StoresGetHL7v2StoreMetrics (..)
    , newHealthcareProjectsLocationsDatasetsHl7V2StoresGetHL7v2StoreMetrics

    -- ** healthcare.projects.locations.datasets.hl7V2Stores.getIamPolicy
    , HealthcareProjectsLocationsDatasetsHl7V2StoresGetIamPolicyResource
    , HealthcareProjectsLocationsDatasetsHl7V2StoresGetIamPolicy (..)
    , newHealthcareProjectsLocationsDatasetsHl7V2StoresGetIamPolicy

    -- ** healthcare.projects.locations.datasets.hl7V2Stores.import
    , HealthcareProjectsLocationsDatasetsHl7V2StoresImportResource
    , HealthcareProjectsLocationsDatasetsHl7V2StoresImport (..)
    , newHealthcareProjectsLocationsDatasetsHl7V2StoresImport

    -- ** healthcare.projects.locations.datasets.hl7V2Stores.list
    , HealthcareProjectsLocationsDatasetsHl7V2StoresListResource
    , HealthcareProjectsLocationsDatasetsHl7V2StoresList (..)
    , newHealthcareProjectsLocationsDatasetsHl7V2StoresList

    -- ** healthcare.projects.locations.datasets.hl7V2Stores.messages.create
    , HealthcareProjectsLocationsDatasetsHl7V2StoresMessagesCreateResource
    , HealthcareProjectsLocationsDatasetsHl7V2StoresMessagesCreate (..)
    , newHealthcareProjectsLocationsDatasetsHl7V2StoresMessagesCreate

    -- ** healthcare.projects.locations.datasets.hl7V2Stores.messages.delete
    , HealthcareProjectsLocationsDatasetsHl7V2StoresMessagesDeleteResource
    , HealthcareProjectsLocationsDatasetsHl7V2StoresMessagesDelete (..)
    , newHealthcareProjectsLocationsDatasetsHl7V2StoresMessagesDelete

    -- ** healthcare.projects.locations.datasets.hl7V2Stores.messages.get
    , HealthcareProjectsLocationsDatasetsHl7V2StoresMessagesGetResource
    , HealthcareProjectsLocationsDatasetsHl7V2StoresMessagesGet (..)
    , newHealthcareProjectsLocationsDatasetsHl7V2StoresMessagesGet

    -- ** healthcare.projects.locations.datasets.hl7V2Stores.messages.ingest
    , HealthcareProjectsLocationsDatasetsHl7V2StoresMessagesIngestResource
    , HealthcareProjectsLocationsDatasetsHl7V2StoresMessagesIngest (..)
    , newHealthcareProjectsLocationsDatasetsHl7V2StoresMessagesIngest

    -- ** healthcare.projects.locations.datasets.hl7V2Stores.messages.list
    , HealthcareProjectsLocationsDatasetsHl7V2StoresMessagesListResource
    , HealthcareProjectsLocationsDatasetsHl7V2StoresMessagesList (..)
    , newHealthcareProjectsLocationsDatasetsHl7V2StoresMessagesList

    -- ** healthcare.projects.locations.datasets.hl7V2Stores.messages.patch
    , HealthcareProjectsLocationsDatasetsHl7V2StoresMessagesPatchResource
    , HealthcareProjectsLocationsDatasetsHl7V2StoresMessagesPatch (..)
    , newHealthcareProjectsLocationsDatasetsHl7V2StoresMessagesPatch

    -- ** healthcare.projects.locations.datasets.hl7V2Stores.patch
    , HealthcareProjectsLocationsDatasetsHl7V2StoresPatchResource
    , HealthcareProjectsLocationsDatasetsHl7V2StoresPatch (..)
    , newHealthcareProjectsLocationsDatasetsHl7V2StoresPatch

    -- ** healthcare.projects.locations.datasets.hl7V2Stores.rollback
    , HealthcareProjectsLocationsDatasetsHl7V2StoresRollbackResource
    , HealthcareProjectsLocationsDatasetsHl7V2StoresRollback (..)
    , newHealthcareProjectsLocationsDatasetsHl7V2StoresRollback

    -- ** healthcare.projects.locations.datasets.hl7V2Stores.setIamPolicy
    , HealthcareProjectsLocationsDatasetsHl7V2StoresSetIamPolicyResource
    , HealthcareProjectsLocationsDatasetsHl7V2StoresSetIamPolicy (..)
    , newHealthcareProjectsLocationsDatasetsHl7V2StoresSetIamPolicy

    -- ** healthcare.projects.locations.datasets.hl7V2Stores.testIamPermissions
    , HealthcareProjectsLocationsDatasetsHl7V2StoresTestIamPermissionsResource
    , HealthcareProjectsLocationsDatasetsHl7V2StoresTestIamPermissions (..)
    , newHealthcareProjectsLocationsDatasetsHl7V2StoresTestIamPermissions

    -- ** healthcare.projects.locations.datasets.list
    , HealthcareProjectsLocationsDatasetsListResource
    , HealthcareProjectsLocationsDatasetsList (..)
    , newHealthcareProjectsLocationsDatasetsList

    -- ** healthcare.projects.locations.datasets.operations.cancel
    , HealthcareProjectsLocationsDatasetsOperationsCancelResource
    , HealthcareProjectsLocationsDatasetsOperationsCancel (..)
    , newHealthcareProjectsLocationsDatasetsOperationsCancel

    -- ** healthcare.projects.locations.datasets.operations.get
    , HealthcareProjectsLocationsDatasetsOperationsGetResource
    , HealthcareProjectsLocationsDatasetsOperationsGet (..)
    , newHealthcareProjectsLocationsDatasetsOperationsGet

    -- ** healthcare.projects.locations.datasets.operations.list
    , HealthcareProjectsLocationsDatasetsOperationsListResource
    , HealthcareProjectsLocationsDatasetsOperationsList (..)
    , newHealthcareProjectsLocationsDatasetsOperationsList

    -- ** healthcare.projects.locations.datasets.patch
    , HealthcareProjectsLocationsDatasetsPatchResource
    , HealthcareProjectsLocationsDatasetsPatch (..)
    , newHealthcareProjectsLocationsDatasetsPatch

    -- ** healthcare.projects.locations.datasets.setIamPolicy
    , HealthcareProjectsLocationsDatasetsSetIamPolicyResource
    , HealthcareProjectsLocationsDatasetsSetIamPolicy (..)
    , newHealthcareProjectsLocationsDatasetsSetIamPolicy

    -- ** healthcare.projects.locations.datasets.testIamPermissions
    , HealthcareProjectsLocationsDatasetsTestIamPermissionsResource
    , HealthcareProjectsLocationsDatasetsTestIamPermissions (..)
    , newHealthcareProjectsLocationsDatasetsTestIamPermissions

    -- ** healthcare.projects.locations.get
    , HealthcareProjectsLocationsGetResource
    , HealthcareProjectsLocationsGet (..)
    , newHealthcareProjectsLocationsGet

    -- ** healthcare.projects.locations.list
    , HealthcareProjectsLocationsListResource
    , HealthcareProjectsLocationsList (..)
    , newHealthcareProjectsLocationsList

    -- ** healthcare.projects.locations.services.nlp.analyzeEntities
    , HealthcareProjectsLocationsServicesNlpAnalyzeEntitiesResource
    , HealthcareProjectsLocationsServicesNlpAnalyzeEntities (..)
    , newHealthcareProjectsLocationsServicesNlpAnalyzeEntities

    -- * Types

    -- ** Xgafv
    , Xgafv (..)

    -- ** AccessDeterminationLogConfig
    , AccessDeterminationLogConfig (..)
    , newAccessDeterminationLogConfig

    -- ** AccessDeterminationLogConfig_LogLevel
    , AccessDeterminationLogConfig_LogLevel (..)

    -- ** ActivateConsentRequest
    , ActivateConsentRequest (..)
    , newActivateConsentRequest

    -- ** AdminConsents
    , AdminConsents (..)
    , newAdminConsents

    -- ** AnalyzeEntitiesRequest
    , AnalyzeEntitiesRequest (..)
    , newAnalyzeEntitiesRequest

    -- ** AnalyzeEntitiesRequest_AlternativeOutputFormat
    , AnalyzeEntitiesRequest_AlternativeOutputFormat (..)

    -- ** AnalyzeEntitiesRequest_LicensedVocabulariesItem
    , AnalyzeEntitiesRequest_LicensedVocabulariesItem (..)

    -- ** AnalyzeEntitiesResponse
    , AnalyzeEntitiesResponse (..)
    , newAnalyzeEntitiesResponse

    -- ** ApplyAdminConsentsErrorDetail
    , ApplyAdminConsentsErrorDetail (..)
    , newApplyAdminConsentsErrorDetail

    -- ** ApplyAdminConsentsRequest
    , ApplyAdminConsentsRequest (..)
    , newApplyAdminConsentsRequest

    -- ** ApplyAdminConsentsResponse
    , ApplyAdminConsentsResponse (..)
    , newApplyAdminConsentsResponse

    -- ** ApplyConsentsRequest
    , ApplyConsentsRequest (..)
    , newApplyConsentsRequest

    -- ** ApplyConsentsResponse
    , ApplyConsentsResponse (..)
    , newApplyConsentsResponse

    -- ** ArchiveUserDataMappingRequest
    , ArchiveUserDataMappingRequest (..)
    , newArchiveUserDataMappingRequest

    -- ** ArchiveUserDataMappingResponse
    , ArchiveUserDataMappingResponse (..)
    , newArchiveUserDataMappingResponse

    -- ** Attribute
    , Attribute (..)
    , newAttribute

    -- ** AttributeDefinition
    , AttributeDefinition (..)
    , newAttributeDefinition

    -- ** AttributeDefinition_Category
    , AttributeDefinition_Category (..)

    -- ** AuditConfig
    , AuditConfig (..)
    , newAuditConfig

    -- ** AuditLogConfig
    , AuditLogConfig (..)
    , newAuditLogConfig

    -- ** AuditLogConfig_LogType
    , AuditLogConfig_LogType (..)

    -- ** Binding
    , Binding (..)
    , newBinding

    -- ** BlobStorageInfo
    , BlobStorageInfo (..)
    , newBlobStorageInfo

    -- ** BlobStorageInfo_StorageClass
    , BlobStorageInfo_StorageClass (..)

    -- ** BlobStorageSettings
    , BlobStorageSettings (..)
    , newBlobStorageSettings

    -- ** BlobStorageSettings_BlobStorageClass
    , BlobStorageSettings_BlobStorageClass (..)

    -- ** CancelOperationRequest
    , CancelOperationRequest (..)
    , newCancelOperationRequest

    -- ** CharacterMaskConfig
    , CharacterMaskConfig (..)
    , newCharacterMaskConfig

    -- ** CheckDataAccessRequest
    , CheckDataAccessRequest (..)
    , newCheckDataAccessRequest

    -- ** CheckDataAccessRequest_RequestAttributes
    , CheckDataAccessRequest_RequestAttributes (..)
    , newCheckDataAccessRequest_RequestAttributes

    -- ** CheckDataAccessRequest_ResponseView
    , CheckDataAccessRequest_ResponseView (..)

    -- ** CheckDataAccessResponse
    , CheckDataAccessResponse (..)
    , newCheckDataAccessResponse

    -- ** CheckDataAccessResponse_ConsentDetails
    , CheckDataAccessResponse_ConsentDetails (..)
    , newCheckDataAccessResponse_ConsentDetails

    -- ** Consent
    , Consent (..)
    , newConsent

    -- ** Consent_Metadata
    , Consent_Metadata (..)
    , newConsent_Metadata

    -- ** Consent_State
    , Consent_State (..)

    -- ** ConsentAccessorScope
    , ConsentAccessorScope (..)
    , newConsentAccessorScope

    -- ** ConsentArtifact
    , ConsentArtifact (..)
    , newConsentArtifact

    -- ** ConsentArtifact_Metadata
    , ConsentArtifact_Metadata (..)
    , newConsentArtifact_Metadata

    -- ** ConsentConfig
    , ConsentConfig (..)
    , newConsentConfig

    -- ** ConsentConfig_Version
    , ConsentConfig_Version (..)

    -- ** ConsentErrors
    , ConsentErrors (..)
    , newConsentErrors

    -- ** ConsentEvaluation
    , ConsentEvaluation (..)
    , newConsentEvaluation

    -- ** ConsentEvaluation_EvaluationResult
    , ConsentEvaluation_EvaluationResult (..)

    -- ** ConsentHeaderHandling
    , ConsentHeaderHandling (..)
    , newConsentHeaderHandling

    -- ** ConsentHeaderHandling_Profile
    , ConsentHeaderHandling_Profile (..)

    -- ** ConsentList
    , ConsentList (..)
    , newConsentList

    -- ** ConsentStore
    , ConsentStore (..)
    , newConsentStore

    -- ** ConsentStore_Labels
    , ConsentStore_Labels (..)
    , newConsentStore_Labels

    -- ** CreateMessageRequest
    , CreateMessageRequest (..)
    , newCreateMessageRequest

    -- ** CryptoHashConfig
    , CryptoHashConfig (..)
    , newCryptoHashConfig

    -- ** Dataset
    , Dataset (..)
    , newDataset

    -- ** DateShiftConfig
    , DateShiftConfig (..)
    , newDateShiftConfig

    -- ** DeidentifiedStoreDestination
    , DeidentifiedStoreDestination (..)
    , newDeidentifiedStoreDestination

    -- ** DeidentifyConfig
    , DeidentifyConfig (..)
    , newDeidentifyConfig

    -- ** DeidentifyDatasetRequest
    , DeidentifyDatasetRequest (..)
    , newDeidentifyDatasetRequest

    -- ** DeidentifyDicomStoreRequest
    , DeidentifyDicomStoreRequest (..)
    , newDeidentifyDicomStoreRequest

    -- ** DeidentifyFhirStoreRequest
    , DeidentifyFhirStoreRequest (..)
    , newDeidentifyFhirStoreRequest

    -- ** DeidentifySummary
    , DeidentifySummary (..)
    , newDeidentifySummary

    -- ** DicomConfig
    , DicomConfig (..)
    , newDicomConfig

    -- ** DicomConfig_FilterProfile
    , DicomConfig_FilterProfile (..)

    -- ** DicomFilterConfig
    , DicomFilterConfig (..)
    , newDicomFilterConfig

    -- ** DicomStore
    , DicomStore (..)
    , newDicomStore

    -- ** DicomStore_Labels
    , DicomStore_Labels (..)
    , newDicomStore_Labels

    -- ** DicomStoreMetrics
    , DicomStoreMetrics (..)
    , newDicomStoreMetrics

    -- ** Empty
    , Empty (..)
    , newEmpty

    -- ** EncryptionSpec
    , EncryptionSpec (..)
    , newEncryptionSpec

    -- ** Entity
    , Entity (..)
    , newEntity

    -- ** EntityMention
    , EntityMention (..)
    , newEntityMention

    -- ** EntityMentionRelationship
    , EntityMentionRelationship (..)
    , newEntityMentionRelationship

    -- ** EvaluateUserConsentsRequest
    , EvaluateUserConsentsRequest (..)
    , newEvaluateUserConsentsRequest

    -- ** EvaluateUserConsentsRequest_RequestAttributes
    , EvaluateUserConsentsRequest_RequestAttributes (..)
    , newEvaluateUserConsentsRequest_RequestAttributes

    -- ** EvaluateUserConsentsRequest_ResourceAttributes
    , EvaluateUserConsentsRequest_ResourceAttributes (..)
    , newEvaluateUserConsentsRequest_ResourceAttributes

    -- ** EvaluateUserConsentsRequest_ResponseView
    , EvaluateUserConsentsRequest_ResponseView (..)

    -- ** EvaluateUserConsentsResponse
    , EvaluateUserConsentsResponse (..)
    , newEvaluateUserConsentsResponse

    -- ** ExplainDataAccessConsentInfo
    , ExplainDataAccessConsentInfo (..)
    , newExplainDataAccessConsentInfo

    -- ** ExplainDataAccessConsentInfo_Type
    , ExplainDataAccessConsentInfo_Type (..)

    -- ** ExplainDataAccessConsentInfo_VariantsItem
    , ExplainDataAccessConsentInfo_VariantsItem (..)

    -- ** ExplainDataAccessConsentScope
    , ExplainDataAccessConsentScope (..)
    , newExplainDataAccessConsentScope

    -- ** ExplainDataAccessConsentScope_Decision
    , ExplainDataAccessConsentScope_Decision (..)

    -- ** ExplainDataAccessResponse
    , ExplainDataAccessResponse (..)
    , newExplainDataAccessResponse

    -- ** ExportDicomDataRequest
    , ExportDicomDataRequest (..)
    , newExportDicomDataRequest

    -- ** ExportDicomDataResponse
    , ExportDicomDataResponse (..)
    , newExportDicomDataResponse

    -- ** ExportMessagesRequest
    , ExportMessagesRequest (..)
    , newExportMessagesRequest

    -- ** ExportMessagesResponse
    , ExportMessagesResponse (..)
    , newExportMessagesResponse

    -- ** ExportResourcesRequest
    , ExportResourcesRequest (..)
    , newExportResourcesRequest

    -- ** ExportResourcesResponse
    , ExportResourcesResponse (..)
    , newExportResourcesResponse

    -- ** Expr
    , Expr (..)
    , newExpr

    -- ** Feature
    , Feature (..)
    , newFeature

    -- ** FhirConfig
    , FhirConfig (..)
    , newFhirConfig

    -- ** FhirFilter
    , FhirFilter (..)
    , newFhirFilter

    -- ** FhirNotificationConfig
    , FhirNotificationConfig (..)
    , newFhirNotificationConfig

    -- ** FhirStore
    , FhirStore (..)
    , newFhirStore

    -- ** FhirStore_ComplexDataTypeReferenceParsing
    , FhirStore_ComplexDataTypeReferenceParsing (..)

    -- ** FhirStore_Labels
    , FhirStore_Labels (..)
    , newFhirStore_Labels

    -- ** FhirStore_Version
    , FhirStore_Version (..)

    -- ** FhirStoreMetric
    , FhirStoreMetric (..)
    , newFhirStoreMetric

    -- ** FhirStoreMetrics
    , FhirStoreMetrics (..)
    , newFhirStoreMetrics

    -- ** Field
    , Field (..)
    , newField

    -- ** FieldMetadata
    , FieldMetadata (..)
    , newFieldMetadata

    -- ** FieldMetadata_Action
    , FieldMetadata_Action (..)

    -- ** GcsDestination
    , GcsDestination (..)
    , newGcsDestination

    -- ** GcsDestination_ContentStructure
    , GcsDestination_ContentStructure (..)

    -- ** GcsDestination_MessageView
    , GcsDestination_MessageView (..)

    -- ** GcsSource
    , GcsSource (..)
    , newGcsSource

    -- ** GoogleCloudHealthcareV1ConsentGcsDestination
    , GoogleCloudHealthcareV1ConsentGcsDestination (..)
    , newGoogleCloudHealthcareV1ConsentGcsDestination

    -- ** GoogleCloudHealthcareV1ConsentPolicy
    , GoogleCloudHealthcareV1ConsentPolicy (..)
    , newGoogleCloudHealthcareV1ConsentPolicy

    -- ** GoogleCloudHealthcareV1DeidentifyDeidentifyDicomStoreSummary
    , GoogleCloudHealthcareV1DeidentifyDeidentifyDicomStoreSummary (..)
    , newGoogleCloudHealthcareV1DeidentifyDeidentifyDicomStoreSummary

    -- ** GoogleCloudHealthcareV1DeidentifyDeidentifyFhirStoreSummary
    , GoogleCloudHealthcareV1DeidentifyDeidentifyFhirStoreSummary (..)
    , newGoogleCloudHealthcareV1DeidentifyDeidentifyFhirStoreSummary

    -- ** GoogleCloudHealthcareV1DicomBigQueryDestination
    , GoogleCloudHealthcareV1DicomBigQueryDestination (..)
    , newGoogleCloudHealthcareV1DicomBigQueryDestination

    -- ** GoogleCloudHealthcareV1DicomBigQueryDestination_WriteDisposition
    , GoogleCloudHealthcareV1DicomBigQueryDestination_WriteDisposition (..)

    -- ** GoogleCloudHealthcareV1DicomGcsDestination
    , GoogleCloudHealthcareV1DicomGcsDestination (..)
    , newGoogleCloudHealthcareV1DicomGcsDestination

    -- ** GoogleCloudHealthcareV1DicomGcsSource
    , GoogleCloudHealthcareV1DicomGcsSource (..)
    , newGoogleCloudHealthcareV1DicomGcsSource

    -- ** GoogleCloudHealthcareV1DicomStreamConfig
    , GoogleCloudHealthcareV1DicomStreamConfig (..)
    , newGoogleCloudHealthcareV1DicomStreamConfig

    -- ** GoogleCloudHealthcareV1FhirBigQueryDestination
    , GoogleCloudHealthcareV1FhirBigQueryDestination (..)
    , newGoogleCloudHealthcareV1FhirBigQueryDestination

    -- ** GoogleCloudHealthcareV1FhirBigQueryDestination_WriteDisposition
    , GoogleCloudHealthcareV1FhirBigQueryDestination_WriteDisposition (..)

    -- ** GoogleCloudHealthcareV1FhirGcsDestination
    , GoogleCloudHealthcareV1FhirGcsDestination (..)
    , newGoogleCloudHealthcareV1FhirGcsDestination

    -- ** GoogleCloudHealthcareV1FhirGcsSource
    , GoogleCloudHealthcareV1FhirGcsSource (..)
    , newGoogleCloudHealthcareV1FhirGcsSource

    -- ** GroupOrSegment
    , GroupOrSegment (..)
    , newGroupOrSegment

    -- ** Hl7SchemaConfig
    , Hl7SchemaConfig (..)
    , newHl7SchemaConfig

    -- ** Hl7SchemaConfig_MessageSchemaConfigs
    , Hl7SchemaConfig_MessageSchemaConfigs (..)
    , newHl7SchemaConfig_MessageSchemaConfigs

    -- ** Hl7TypesConfig
    , Hl7TypesConfig (..)
    , newHl7TypesConfig

    -- ** Hl7V2NotificationConfig
    , Hl7V2NotificationConfig (..)
    , newHl7V2NotificationConfig

    -- ** Hl7V2Store
    , Hl7V2Store (..)
    , newHl7V2Store

    -- ** Hl7V2Store_Labels
    , Hl7V2Store_Labels (..)
    , newHl7V2Store_Labels

    -- ** Hl7V2StoreMetric
    , Hl7V2StoreMetric (..)
    , newHl7V2StoreMetric

    -- ** Hl7V2StoreMetrics
    , Hl7V2StoreMetrics (..)
    , newHl7V2StoreMetrics

    -- ** HttpBody
    , HttpBody (..)
    , newHttpBody

    -- ** HttpBody_ExtensionsItem
    , HttpBody_ExtensionsItem (..)
    , newHttpBody_ExtensionsItem

    -- ** Image
    , Image (..)
    , newImage

    -- ** ImageConfig
    , ImageConfig (..)
    , newImageConfig

    -- ** ImageConfig_TextRedactionMode
    , ImageConfig_TextRedactionMode (..)

    -- ** ImportDicomDataRequest
    , ImportDicomDataRequest (..)
    , newImportDicomDataRequest

    -- ** ImportDicomDataResponse
    , ImportDicomDataResponse (..)
    , newImportDicomDataResponse

    -- ** ImportMessagesRequest
    , ImportMessagesRequest (..)
    , newImportMessagesRequest

    -- ** ImportMessagesResponse
    , ImportMessagesResponse (..)
    , newImportMessagesResponse

    -- ** ImportResourcesRequest
    , ImportResourcesRequest (..)
    , newImportResourcesRequest

    -- ** ImportResourcesRequest_ContentStructure
    , ImportResourcesRequest_ContentStructure (..)

    -- ** ImportResourcesResponse
    , ImportResourcesResponse (..)
    , newImportResourcesResponse

    -- ** InfoTypeTransformation
    , InfoTypeTransformation (..)
    , newInfoTypeTransformation

    -- ** IngestMessageRequest
    , IngestMessageRequest (..)
    , newIngestMessageRequest

    -- ** IngestMessageResponse
    , IngestMessageResponse (..)
    , newIngestMessageResponse

    -- ** KmsWrappedCryptoKey
    , KmsWrappedCryptoKey (..)
    , newKmsWrappedCryptoKey

    -- ** LinkedEntity
    , LinkedEntity (..)
    , newLinkedEntity

    -- ** ListAttributeDefinitionsResponse
    , ListAttributeDefinitionsResponse (..)
    , newListAttributeDefinitionsResponse

    -- ** ListConsentArtifactsResponse
    , ListConsentArtifactsResponse (..)
    , newListConsentArtifactsResponse

    -- ** ListConsentRevisionsResponse
    , ListConsentRevisionsResponse (..)
    , newListConsentRevisionsResponse

    -- ** ListConsentStoresResponse
    , ListConsentStoresResponse (..)
    , newListConsentStoresResponse

    -- ** ListConsentsResponse
    , ListConsentsResponse (..)
    , newListConsentsResponse

    -- ** ListDatasetsResponse
    , ListDatasetsResponse (..)
    , newListDatasetsResponse

    -- ** ListDicomStoresResponse
    , ListDicomStoresResponse (..)
    , newListDicomStoresResponse

    -- ** ListFhirStoresResponse
    , ListFhirStoresResponse (..)
    , newListFhirStoresResponse

    -- ** ListHl7V2StoresResponse
    , ListHl7V2StoresResponse (..)
    , newListHl7V2StoresResponse

    -- ** ListLocationsResponse
    , ListLocationsResponse (..)
    , newListLocationsResponse

    -- ** ListMessagesResponse
    , ListMessagesResponse (..)
    , newListMessagesResponse

    -- ** ListOperationsResponse
    , ListOperationsResponse (..)
    , newListOperationsResponse

    -- ** ListUserDataMappingsResponse
    , ListUserDataMappingsResponse (..)
    , newListUserDataMappingsResponse

    -- ** Location
    , Location (..)
    , newLocation

    -- ** Location_Labels
    , Location_Labels (..)
    , newLocation_Labels

    -- ** Location_Metadata
    , Location_Metadata (..)
    , newLocation_Metadata

    -- ** Message
    , Message (..)
    , newMessage

    -- ** Message_Labels
    , Message_Labels (..)
    , newMessage_Labels

    -- ** NotificationConfig
    , NotificationConfig (..)
    , newNotificationConfig

    -- ** Operation
    , Operation (..)
    , newOperation

    -- ** Operation_Metadata
    , Operation_Metadata (..)
    , newOperation_Metadata

    -- ** Operation_Response
    , Operation_Response (..)
    , newOperation_Response

    -- ** OperationMetadata
    , OperationMetadata (..)
    , newOperationMetadata

    -- ** ParsedData
    , ParsedData (..)
    , newParsedData

    -- ** ParserConfig
    , ParserConfig (..)
    , newParserConfig

    -- ** ParserConfig_Version
    , ParserConfig_Version (..)

    -- ** PatientId
    , PatientId (..)
    , newPatientId

    -- ** PatientScope
    , PatientScope (..)
    , newPatientScope

    -- ** Policy
    , Policy (..)
    , newPolicy

    -- ** ProgressCounter
    , ProgressCounter (..)
    , newProgressCounter

    -- ** PubsubDestination
    , PubsubDestination (..)
    , newPubsubDestination

    -- ** QueryAccessibleDataRequest
    , QueryAccessibleDataRequest (..)
    , newQueryAccessibleDataRequest

    -- ** QueryAccessibleDataRequest_RequestAttributes
    , QueryAccessibleDataRequest_RequestAttributes (..)
    , newQueryAccessibleDataRequest_RequestAttributes

    -- ** QueryAccessibleDataRequest_ResourceAttributes
    , QueryAccessibleDataRequest_ResourceAttributes (..)
    , newQueryAccessibleDataRequest_ResourceAttributes

    -- ** QueryAccessibleDataResponse
    , QueryAccessibleDataResponse (..)
    , newQueryAccessibleDataResponse

    -- ** RedactConfig
    , RedactConfig (..)
    , newRedactConfig

    -- ** RejectConsentRequest
    , RejectConsentRequest (..)
    , newRejectConsentRequest

    -- ** ReplaceWithInfoTypeConfig
    , ReplaceWithInfoTypeConfig (..)
    , newReplaceWithInfoTypeConfig

    -- ** Resources
    , Resources (..)
    , newResources

    -- ** Result
    , Result (..)
    , newResult

    -- ** Result_ConsentDetails
    , Result_ConsentDetails (..)
    , newResult_ConsentDetails

    -- ** RevokeConsentRequest
    , RevokeConsentRequest (..)
    , newRevokeConsentRequest

    -- ** RollbackFhirResourceFilteringFields
    , RollbackFhirResourceFilteringFields (..)
    , newRollbackFhirResourceFilteringFields

    -- ** RollbackFhirResourcesRequest
    , RollbackFhirResourcesRequest (..)
    , newRollbackFhirResourcesRequest

    -- ** RollbackFhirResourcesRequest_ChangeType
    , RollbackFhirResourcesRequest_ChangeType (..)

    -- ** RollbackFhirResourcesResponse
    , RollbackFhirResourcesResponse (..)
    , newRollbackFhirResourcesResponse

    -- ** RollbackHL7MessagesFilteringFields
    , RollbackHL7MessagesFilteringFields (..)
    , newRollbackHL7MessagesFilteringFields

    -- ** RollbackHl7V2MessagesRequest
    , RollbackHl7V2MessagesRequest (..)
    , newRollbackHl7V2MessagesRequest

    -- ** RollbackHl7V2MessagesRequest_ChangeType
    , RollbackHl7V2MessagesRequest_ChangeType (..)

    -- ** RollbackHl7V2MessagesResponse
    , RollbackHl7V2MessagesResponse (..)
    , newRollbackHl7V2MessagesResponse

    -- ** SchemaConfig
    , SchemaConfig (..)
    , newSchemaConfig

    -- ** SchemaConfig_SchemaType
    , SchemaConfig_SchemaType (..)

    -- ** SchemaGroup
    , SchemaGroup (..)
    , newSchemaGroup

    -- ** SchemaPackage
    , SchemaPackage (..)
    , newSchemaPackage

    -- ** SchemaPackage_SchematizedParsingType
    , SchemaPackage_SchematizedParsingType (..)

    -- ** SchemaPackage_UnexpectedSegmentHandling
    , SchemaPackage_UnexpectedSegmentHandling (..)

    -- ** SchemaSegment
    , SchemaSegment (..)
    , newSchemaSegment

    -- ** SchematizedData
    , SchematizedData (..)
    , newSchematizedData

    -- ** SearchResourcesRequest
    , SearchResourcesRequest (..)
    , newSearchResourcesRequest

    -- ** Segment
    , Segment (..)
    , newSegment

    -- ** Segment_Fields
    , Segment_Fields (..)
    , newSegment_Fields

    -- ** SeriesMetrics
    , SeriesMetrics (..)
    , newSeriesMetrics

    -- ** SetBlobStorageSettingsRequest
    , SetBlobStorageSettingsRequest (..)
    , newSetBlobStorageSettingsRequest

    -- ** SetBlobStorageSettingsResponse
    , SetBlobStorageSettingsResponse (..)
    , newSetBlobStorageSettingsResponse

    -- ** SetIamPolicyRequest
    , SetIamPolicyRequest (..)
    , newSetIamPolicyRequest

    -- ** Signature
    , Signature (..)
    , newSignature

    -- ** Signature_Metadata
    , Signature_Metadata (..)
    , newSignature_Metadata

    -- ** Status
    , Status (..)
    , newStatus

    -- ** Status_DetailsItem
    , Status_DetailsItem (..)
    , newStatus_DetailsItem

    -- ** StorageInfo
    , StorageInfo (..)
    , newStorageInfo

    -- ** StreamConfig
    , StreamConfig (..)
    , newStreamConfig

    -- ** StructuredStorageInfo
    , StructuredStorageInfo (..)
    , newStructuredStorageInfo

    -- ** StudyMetrics
    , StudyMetrics (..)
    , newStudyMetrics

    -- ** TagFilterList
    , TagFilterList (..)
    , newTagFilterList

    -- ** TestIamPermissionsRequest
    , TestIamPermissionsRequest (..)
    , newTestIamPermissionsRequest

    -- ** TestIamPermissionsResponse
    , TestIamPermissionsResponse (..)
    , newTestIamPermissionsResponse

    -- ** TextConfig
    , TextConfig (..)
    , newTextConfig

    -- ** TextSpan
    , TextSpan (..)
    , newTextSpan

    -- ** TimePartitioning
    , TimePartitioning (..)
    , newTimePartitioning

    -- ** TimePartitioning_Type
    , TimePartitioning_Type (..)

    -- ** TimeRange
    , TimeRange (..)
    , newTimeRange

    -- ** Type
    , Type (..)
    , newType

    -- ** Type_Primitive
    , Type_Primitive (..)

    -- ** UserDataMapping
    , UserDataMapping (..)
    , newUserDataMapping

    -- ** ValidationConfig
    , ValidationConfig (..)
    , newValidationConfig

    -- ** VersionSource
    , VersionSource (..)
    , newVersionSource

    -- ** ProjectsLocationsDatasetsHl7V2StoresMessagesGetView
    , ProjectsLocationsDatasetsHl7V2StoresMessagesGetView (..)

    -- ** ProjectsLocationsDatasetsHl7V2StoresMessagesListView
    , ProjectsLocationsDatasetsHl7V2StoresMessagesListView (..)
    ) where

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
import Gogol.Healthcare.Projects.Locations.Datasets.DataMapperWorkspaces.GetIamPolicy
import Gogol.Healthcare.Projects.Locations.Datasets.DataMapperWorkspaces.SetIamPolicy
import Gogol.Healthcare.Projects.Locations.Datasets.DataMapperWorkspaces.TestIamPermissions
import Gogol.Healthcare.Projects.Locations.Datasets.Deidentify
import Gogol.Healthcare.Projects.Locations.Datasets.Delete
import Gogol.Healthcare.Projects.Locations.Datasets.DicomStores.Create
import Gogol.Healthcare.Projects.Locations.Datasets.DicomStores.Deidentify
import Gogol.Healthcare.Projects.Locations.Datasets.DicomStores.Delete
import Gogol.Healthcare.Projects.Locations.Datasets.DicomStores.DicomWeb.Studies.GetStudyMetrics
import Gogol.Healthcare.Projects.Locations.Datasets.DicomStores.DicomWeb.Studies.Series.GetSeriesMetrics
import Gogol.Healthcare.Projects.Locations.Datasets.DicomStores.DicomWeb.Studies.Series.Instances.GetStorageInfo
import Gogol.Healthcare.Projects.Locations.Datasets.DicomStores.DicomWeb.Studies.SetBlobStorageSettings
import Gogol.Healthcare.Projects.Locations.Datasets.DicomStores.Export
import Gogol.Healthcare.Projects.Locations.Datasets.DicomStores.Get
import Gogol.Healthcare.Projects.Locations.Datasets.DicomStores.GetDICOMStoreMetrics
import Gogol.Healthcare.Projects.Locations.Datasets.DicomStores.GetIamPolicy
import Gogol.Healthcare.Projects.Locations.Datasets.DicomStores.Import
import Gogol.Healthcare.Projects.Locations.Datasets.DicomStores.List
import Gogol.Healthcare.Projects.Locations.Datasets.DicomStores.Patch
import Gogol.Healthcare.Projects.Locations.Datasets.DicomStores.SearchForInstances
import Gogol.Healthcare.Projects.Locations.Datasets.DicomStores.SearchForSeries
import Gogol.Healthcare.Projects.Locations.Datasets.DicomStores.SearchForStudies
import Gogol.Healthcare.Projects.Locations.Datasets.DicomStores.SetBlobStorageSettings
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
import Gogol.Healthcare.Projects.Locations.Datasets.FhirStores.ApplyAdminConsents
import Gogol.Healthcare.Projects.Locations.Datasets.FhirStores.ApplyConsents
import Gogol.Healthcare.Projects.Locations.Datasets.FhirStores.Create
import Gogol.Healthcare.Projects.Locations.Datasets.FhirStores.Deidentify
import Gogol.Healthcare.Projects.Locations.Datasets.FhirStores.Delete
import Gogol.Healthcare.Projects.Locations.Datasets.FhirStores.ExplainDataAccess
import Gogol.Healthcare.Projects.Locations.Datasets.FhirStores.Export
import Gogol.Healthcare.Projects.Locations.Datasets.FhirStores.Fhir.Binarycreate
import Gogol.Healthcare.Projects.Locations.Datasets.FhirStores.Fhir.Binaryread
import Gogol.Healthcare.Projects.Locations.Datasets.FhirStores.Fhir.Binaryupdate
import Gogol.Healthcare.Projects.Locations.Datasets.FhirStores.Fhir.Binaryvread
import Gogol.Healthcare.Projects.Locations.Datasets.FhirStores.Fhir.Capabilities
import Gogol.Healthcare.Projects.Locations.Datasets.FhirStores.Fhir.ConditionalDelete
import Gogol.Healthcare.Projects.Locations.Datasets.FhirStores.Fhir.ConditionalPatch
import Gogol.Healthcare.Projects.Locations.Datasets.FhirStores.Fhir.ConditionalUpdate
import Gogol.Healthcare.Projects.Locations.Datasets.FhirStores.Fhir.Consentenforcementstatus
import Gogol.Healthcare.Projects.Locations.Datasets.FhirStores.Fhir.Create
import Gogol.Healthcare.Projects.Locations.Datasets.FhirStores.Fhir.Delete
import Gogol.Healthcare.Projects.Locations.Datasets.FhirStores.Fhir.ExecuteBundle
import Gogol.Healthcare.Projects.Locations.Datasets.FhirStores.Fhir.History
import Gogol.Healthcare.Projects.Locations.Datasets.FhirStores.Fhir.Patch
import Gogol.Healthcare.Projects.Locations.Datasets.FhirStores.Fhir.Patientconsentenforcementstatus
import Gogol.Healthcare.Projects.Locations.Datasets.FhirStores.Fhir.Patienteverything
import Gogol.Healthcare.Projects.Locations.Datasets.FhirStores.Fhir.Read
import Gogol.Healthcare.Projects.Locations.Datasets.FhirStores.Fhir.Resourcepurge
import Gogol.Healthcare.Projects.Locations.Datasets.FhirStores.Fhir.Resourcevalidate
import Gogol.Healthcare.Projects.Locations.Datasets.FhirStores.Fhir.Search
import Gogol.Healthcare.Projects.Locations.Datasets.FhirStores.Fhir.Searchtype
import Gogol.Healthcare.Projects.Locations.Datasets.FhirStores.Fhir.Update
import Gogol.Healthcare.Projects.Locations.Datasets.FhirStores.Fhir.Vread
import Gogol.Healthcare.Projects.Locations.Datasets.FhirStores.Get
import Gogol.Healthcare.Projects.Locations.Datasets.FhirStores.GetFHIRStoreMetrics
import Gogol.Healthcare.Projects.Locations.Datasets.FhirStores.GetIamPolicy
import Gogol.Healthcare.Projects.Locations.Datasets.FhirStores.Import
import Gogol.Healthcare.Projects.Locations.Datasets.FhirStores.List
import Gogol.Healthcare.Projects.Locations.Datasets.FhirStores.Patch
import Gogol.Healthcare.Projects.Locations.Datasets.FhirStores.Rollback
import Gogol.Healthcare.Projects.Locations.Datasets.FhirStores.SetIamPolicy
import Gogol.Healthcare.Projects.Locations.Datasets.FhirStores.TestIamPermissions
import Gogol.Healthcare.Projects.Locations.Datasets.Get
import Gogol.Healthcare.Projects.Locations.Datasets.GetIamPolicy
import Gogol.Healthcare.Projects.Locations.Datasets.Hl7V2Stores.Create
import Gogol.Healthcare.Projects.Locations.Datasets.Hl7V2Stores.Delete
import Gogol.Healthcare.Projects.Locations.Datasets.Hl7V2Stores.Export
import Gogol.Healthcare.Projects.Locations.Datasets.Hl7V2Stores.Get
import Gogol.Healthcare.Projects.Locations.Datasets.Hl7V2Stores.GetHL7v2StoreMetrics
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
import Gogol.Healthcare.Projects.Locations.Datasets.Hl7V2Stores.Rollback
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
