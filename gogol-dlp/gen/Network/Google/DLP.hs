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
-- Module      : Network.Google.DLP
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Provides methods for detection, risk analysis, and de-identification of privacy-sensitive fragments in text, images, and Google Cloud Platform storage repositories.
--
-- /See:/ <https://cloud.google.com/dlp/docs/ Cloud Data Loss Prevention (DLP) API Reference>
module Network.Google.DLP
  ( -- * Configuration
    dLPService,

    -- * OAuth Scopes
    cloudPlatformScope,

    -- * Resources

    -- ** dlp.infoTypes.list
    DLPInfoTypesListResource,
    newDLPInfoTypesList,
    DLPInfoTypesList,

    -- ** dlp.locations.infoTypes.list
    DLPLocationsInfoTypesListResource,
    newDLPLocationsInfoTypesList,
    DLPLocationsInfoTypesList,

    -- ** dlp.organizations.deidentifyTemplates.create
    DLPOrganizationsDeidentifyTemplatesCreateResource,
    newDLPOrganizationsDeidentifyTemplatesCreate,
    DLPOrganizationsDeidentifyTemplatesCreate,

    -- ** dlp.organizations.deidentifyTemplates.delete
    DLPOrganizationsDeidentifyTemplatesDeleteResource,
    newDLPOrganizationsDeidentifyTemplatesDelete,
    DLPOrganizationsDeidentifyTemplatesDelete,

    -- ** dlp.organizations.deidentifyTemplates.get
    DLPOrganizationsDeidentifyTemplatesGetResource,
    newDLPOrganizationsDeidentifyTemplatesGet,
    DLPOrganizationsDeidentifyTemplatesGet,

    -- ** dlp.organizations.deidentifyTemplates.list
    DLPOrganizationsDeidentifyTemplatesListResource,
    newDLPOrganizationsDeidentifyTemplatesList,
    DLPOrganizationsDeidentifyTemplatesList,

    -- ** dlp.organizations.deidentifyTemplates.patch
    DLPOrganizationsDeidentifyTemplatesPatchResource,
    newDLPOrganizationsDeidentifyTemplatesPatch,
    DLPOrganizationsDeidentifyTemplatesPatch,

    -- ** dlp.organizations.inspectTemplates.create
    DLPOrganizationsInspectTemplatesCreateResource,
    newDLPOrganizationsInspectTemplatesCreate,
    DLPOrganizationsInspectTemplatesCreate,

    -- ** dlp.organizations.inspectTemplates.delete
    DLPOrganizationsInspectTemplatesDeleteResource,
    newDLPOrganizationsInspectTemplatesDelete,
    DLPOrganizationsInspectTemplatesDelete,

    -- ** dlp.organizations.inspectTemplates.get
    DLPOrganizationsInspectTemplatesGetResource,
    newDLPOrganizationsInspectTemplatesGet,
    DLPOrganizationsInspectTemplatesGet,

    -- ** dlp.organizations.inspectTemplates.list
    DLPOrganizationsInspectTemplatesListResource,
    newDLPOrganizationsInspectTemplatesList,
    DLPOrganizationsInspectTemplatesList,

    -- ** dlp.organizations.inspectTemplates.patch
    DLPOrganizationsInspectTemplatesPatchResource,
    newDLPOrganizationsInspectTemplatesPatch,
    DLPOrganizationsInspectTemplatesPatch,

    -- ** dlp.organizations.locations.deidentifyTemplates.create
    DLPOrganizationsLocationsDeidentifyTemplatesCreateResource,
    newDLPOrganizationsLocationsDeidentifyTemplatesCreate,
    DLPOrganizationsLocationsDeidentifyTemplatesCreate,

    -- ** dlp.organizations.locations.deidentifyTemplates.delete
    DLPOrganizationsLocationsDeidentifyTemplatesDeleteResource,
    newDLPOrganizationsLocationsDeidentifyTemplatesDelete,
    DLPOrganizationsLocationsDeidentifyTemplatesDelete,

    -- ** dlp.organizations.locations.deidentifyTemplates.get
    DLPOrganizationsLocationsDeidentifyTemplatesGetResource,
    newDLPOrganizationsLocationsDeidentifyTemplatesGet,
    DLPOrganizationsLocationsDeidentifyTemplatesGet,

    -- ** dlp.organizations.locations.deidentifyTemplates.list
    DLPOrganizationsLocationsDeidentifyTemplatesListResource,
    newDLPOrganizationsLocationsDeidentifyTemplatesList,
    DLPOrganizationsLocationsDeidentifyTemplatesList,

    -- ** dlp.organizations.locations.deidentifyTemplates.patch
    DLPOrganizationsLocationsDeidentifyTemplatesPatchResource,
    newDLPOrganizationsLocationsDeidentifyTemplatesPatch,
    DLPOrganizationsLocationsDeidentifyTemplatesPatch,

    -- ** dlp.organizations.locations.dlpJobs.list
    DLPOrganizationsLocationsDlpJobsListResource,
    newDLPOrganizationsLocationsDlpJobsList,
    DLPOrganizationsLocationsDlpJobsList,

    -- ** dlp.organizations.locations.inspectTemplates.create
    DLPOrganizationsLocationsInspectTemplatesCreateResource,
    newDLPOrganizationsLocationsInspectTemplatesCreate,
    DLPOrganizationsLocationsInspectTemplatesCreate,

    -- ** dlp.organizations.locations.inspectTemplates.delete
    DLPOrganizationsLocationsInspectTemplatesDeleteResource,
    newDLPOrganizationsLocationsInspectTemplatesDelete,
    DLPOrganizationsLocationsInspectTemplatesDelete,

    -- ** dlp.organizations.locations.inspectTemplates.get
    DLPOrganizationsLocationsInspectTemplatesGetResource,
    newDLPOrganizationsLocationsInspectTemplatesGet,
    DLPOrganizationsLocationsInspectTemplatesGet,

    -- ** dlp.organizations.locations.inspectTemplates.list
    DLPOrganizationsLocationsInspectTemplatesListResource,
    newDLPOrganizationsLocationsInspectTemplatesList,
    DLPOrganizationsLocationsInspectTemplatesList,

    -- ** dlp.organizations.locations.inspectTemplates.patch
    DLPOrganizationsLocationsInspectTemplatesPatchResource,
    newDLPOrganizationsLocationsInspectTemplatesPatch,
    DLPOrganizationsLocationsInspectTemplatesPatch,

    -- ** dlp.organizations.locations.jobTriggers.create
    DLPOrganizationsLocationsJobTriggersCreateResource,
    newDLPOrganizationsLocationsJobTriggersCreate,
    DLPOrganizationsLocationsJobTriggersCreate,

    -- ** dlp.organizations.locations.jobTriggers.delete
    DLPOrganizationsLocationsJobTriggersDeleteResource,
    newDLPOrganizationsLocationsJobTriggersDelete,
    DLPOrganizationsLocationsJobTriggersDelete,

    -- ** dlp.organizations.locations.jobTriggers.get
    DLPOrganizationsLocationsJobTriggersGetResource,
    newDLPOrganizationsLocationsJobTriggersGet,
    DLPOrganizationsLocationsJobTriggersGet,

    -- ** dlp.organizations.locations.jobTriggers.list
    DLPOrganizationsLocationsJobTriggersListResource,
    newDLPOrganizationsLocationsJobTriggersList,
    DLPOrganizationsLocationsJobTriggersList,

    -- ** dlp.organizations.locations.jobTriggers.patch
    DLPOrganizationsLocationsJobTriggersPatchResource,
    newDLPOrganizationsLocationsJobTriggersPatch,
    DLPOrganizationsLocationsJobTriggersPatch,

    -- ** dlp.organizations.locations.storedInfoTypes.create
    DLPOrganizationsLocationsStoredInfoTypesCreateResource,
    newDLPOrganizationsLocationsStoredInfoTypesCreate,
    DLPOrganizationsLocationsStoredInfoTypesCreate,

    -- ** dlp.organizations.locations.storedInfoTypes.delete
    DLPOrganizationsLocationsStoredInfoTypesDeleteResource,
    newDLPOrganizationsLocationsStoredInfoTypesDelete,
    DLPOrganizationsLocationsStoredInfoTypesDelete,

    -- ** dlp.organizations.locations.storedInfoTypes.get
    DLPOrganizationsLocationsStoredInfoTypesGetResource,
    newDLPOrganizationsLocationsStoredInfoTypesGet,
    DLPOrganizationsLocationsStoredInfoTypesGet,

    -- ** dlp.organizations.locations.storedInfoTypes.list
    DLPOrganizationsLocationsStoredInfoTypesListResource,
    newDLPOrganizationsLocationsStoredInfoTypesList,
    DLPOrganizationsLocationsStoredInfoTypesList,

    -- ** dlp.organizations.locations.storedInfoTypes.patch
    DLPOrganizationsLocationsStoredInfoTypesPatchResource,
    newDLPOrganizationsLocationsStoredInfoTypesPatch,
    DLPOrganizationsLocationsStoredInfoTypesPatch,

    -- ** dlp.organizations.storedInfoTypes.create
    DLPOrganizationsStoredInfoTypesCreateResource,
    newDLPOrganizationsStoredInfoTypesCreate,
    DLPOrganizationsStoredInfoTypesCreate,

    -- ** dlp.organizations.storedInfoTypes.delete
    DLPOrganizationsStoredInfoTypesDeleteResource,
    newDLPOrganizationsStoredInfoTypesDelete,
    DLPOrganizationsStoredInfoTypesDelete,

    -- ** dlp.organizations.storedInfoTypes.get
    DLPOrganizationsStoredInfoTypesGetResource,
    newDLPOrganizationsStoredInfoTypesGet,
    DLPOrganizationsStoredInfoTypesGet,

    -- ** dlp.organizations.storedInfoTypes.list
    DLPOrganizationsStoredInfoTypesListResource,
    newDLPOrganizationsStoredInfoTypesList,
    DLPOrganizationsStoredInfoTypesList,

    -- ** dlp.organizations.storedInfoTypes.patch
    DLPOrganizationsStoredInfoTypesPatchResource,
    newDLPOrganizationsStoredInfoTypesPatch,
    DLPOrganizationsStoredInfoTypesPatch,

    -- ** dlp.projects.content.deidentify
    DLPProjectsContentDeidentifyResource,
    newDLPProjectsContentDeidentify,
    DLPProjectsContentDeidentify,

    -- ** dlp.projects.content.inspect
    DLPProjectsContentInspectResource,
    newDLPProjectsContentInspect,
    DLPProjectsContentInspect,

    -- ** dlp.projects.content.reidentify
    DLPProjectsContentReidentifyResource,
    newDLPProjectsContentReidentify,
    DLPProjectsContentReidentify,

    -- ** dlp.projects.deidentifyTemplates.create
    DLPProjectsDeidentifyTemplatesCreateResource,
    newDLPProjectsDeidentifyTemplatesCreate,
    DLPProjectsDeidentifyTemplatesCreate,

    -- ** dlp.projects.deidentifyTemplates.delete
    DLPProjectsDeidentifyTemplatesDeleteResource,
    newDLPProjectsDeidentifyTemplatesDelete,
    DLPProjectsDeidentifyTemplatesDelete,

    -- ** dlp.projects.deidentifyTemplates.get
    DLPProjectsDeidentifyTemplatesGetResource,
    newDLPProjectsDeidentifyTemplatesGet,
    DLPProjectsDeidentifyTemplatesGet,

    -- ** dlp.projects.deidentifyTemplates.list
    DLPProjectsDeidentifyTemplatesListResource,
    newDLPProjectsDeidentifyTemplatesList,
    DLPProjectsDeidentifyTemplatesList,

    -- ** dlp.projects.deidentifyTemplates.patch
    DLPProjectsDeidentifyTemplatesPatchResource,
    newDLPProjectsDeidentifyTemplatesPatch,
    DLPProjectsDeidentifyTemplatesPatch,

    -- ** dlp.projects.dlpJobs.cancel
    DLPProjectsDlpJobsCancelResource,
    newDLPProjectsDlpJobsCancel,
    DLPProjectsDlpJobsCancel,

    -- ** dlp.projects.dlpJobs.create
    DLPProjectsDlpJobsCreateResource,
    newDLPProjectsDlpJobsCreate,
    DLPProjectsDlpJobsCreate,

    -- ** dlp.projects.dlpJobs.delete
    DLPProjectsDlpJobsDeleteResource,
    newDLPProjectsDlpJobsDelete,
    DLPProjectsDlpJobsDelete,

    -- ** dlp.projects.dlpJobs.get
    DLPProjectsDlpJobsGetResource,
    newDLPProjectsDlpJobsGet,
    DLPProjectsDlpJobsGet,

    -- ** dlp.projects.dlpJobs.list
    DLPProjectsDlpJobsListResource,
    newDLPProjectsDlpJobsList,
    DLPProjectsDlpJobsList,

    -- ** dlp.projects.image.redact
    DLPProjectsImageRedactResource,
    newDLPProjectsImageRedact,
    DLPProjectsImageRedact,

    -- ** dlp.projects.inspectTemplates.create
    DLPProjectsInspectTemplatesCreateResource,
    newDLPProjectsInspectTemplatesCreate,
    DLPProjectsInspectTemplatesCreate,

    -- ** dlp.projects.inspectTemplates.delete
    DLPProjectsInspectTemplatesDeleteResource,
    newDLPProjectsInspectTemplatesDelete,
    DLPProjectsInspectTemplatesDelete,

    -- ** dlp.projects.inspectTemplates.get
    DLPProjectsInspectTemplatesGetResource,
    newDLPProjectsInspectTemplatesGet,
    DLPProjectsInspectTemplatesGet,

    -- ** dlp.projects.inspectTemplates.list
    DLPProjectsInspectTemplatesListResource,
    newDLPProjectsInspectTemplatesList,
    DLPProjectsInspectTemplatesList,

    -- ** dlp.projects.inspectTemplates.patch
    DLPProjectsInspectTemplatesPatchResource,
    newDLPProjectsInspectTemplatesPatch,
    DLPProjectsInspectTemplatesPatch,

    -- ** dlp.projects.jobTriggers.activate
    DLPProjectsJobTriggersActivateResource,
    newDLPProjectsJobTriggersActivate,
    DLPProjectsJobTriggersActivate,

    -- ** dlp.projects.jobTriggers.create
    DLPProjectsJobTriggersCreateResource,
    newDLPProjectsJobTriggersCreate,
    DLPProjectsJobTriggersCreate,

    -- ** dlp.projects.jobTriggers.delete
    DLPProjectsJobTriggersDeleteResource,
    newDLPProjectsJobTriggersDelete,
    DLPProjectsJobTriggersDelete,

    -- ** dlp.projects.jobTriggers.get
    DLPProjectsJobTriggersGetResource,
    newDLPProjectsJobTriggersGet,
    DLPProjectsJobTriggersGet,

    -- ** dlp.projects.jobTriggers.list
    DLPProjectsJobTriggersListResource,
    newDLPProjectsJobTriggersList,
    DLPProjectsJobTriggersList,

    -- ** dlp.projects.jobTriggers.patch
    DLPProjectsJobTriggersPatchResource,
    newDLPProjectsJobTriggersPatch,
    DLPProjectsJobTriggersPatch,

    -- ** dlp.projects.locations.content.deidentify
    DLPProjectsLocationsContentDeidentifyResource,
    newDLPProjectsLocationsContentDeidentify,
    DLPProjectsLocationsContentDeidentify,

    -- ** dlp.projects.locations.content.inspect
    DLPProjectsLocationsContentInspectResource,
    newDLPProjectsLocationsContentInspect,
    DLPProjectsLocationsContentInspect,

    -- ** dlp.projects.locations.content.reidentify
    DLPProjectsLocationsContentReidentifyResource,
    newDLPProjectsLocationsContentReidentify,
    DLPProjectsLocationsContentReidentify,

    -- ** dlp.projects.locations.deidentifyTemplates.create
    DLPProjectsLocationsDeidentifyTemplatesCreateResource,
    newDLPProjectsLocationsDeidentifyTemplatesCreate,
    DLPProjectsLocationsDeidentifyTemplatesCreate,

    -- ** dlp.projects.locations.deidentifyTemplates.delete
    DLPProjectsLocationsDeidentifyTemplatesDeleteResource,
    newDLPProjectsLocationsDeidentifyTemplatesDelete,
    DLPProjectsLocationsDeidentifyTemplatesDelete,

    -- ** dlp.projects.locations.deidentifyTemplates.get
    DLPProjectsLocationsDeidentifyTemplatesGetResource,
    newDLPProjectsLocationsDeidentifyTemplatesGet,
    DLPProjectsLocationsDeidentifyTemplatesGet,

    -- ** dlp.projects.locations.deidentifyTemplates.list
    DLPProjectsLocationsDeidentifyTemplatesListResource,
    newDLPProjectsLocationsDeidentifyTemplatesList,
    DLPProjectsLocationsDeidentifyTemplatesList,

    -- ** dlp.projects.locations.deidentifyTemplates.patch
    DLPProjectsLocationsDeidentifyTemplatesPatchResource,
    newDLPProjectsLocationsDeidentifyTemplatesPatch,
    DLPProjectsLocationsDeidentifyTemplatesPatch,

    -- ** dlp.projects.locations.dlpJobs.cancel
    DLPProjectsLocationsDlpJobsCancelResource,
    newDLPProjectsLocationsDlpJobsCancel,
    DLPProjectsLocationsDlpJobsCancel,

    -- ** dlp.projects.locations.dlpJobs.create
    DLPProjectsLocationsDlpJobsCreateResource,
    newDLPProjectsLocationsDlpJobsCreate,
    DLPProjectsLocationsDlpJobsCreate,

    -- ** dlp.projects.locations.dlpJobs.delete
    DLPProjectsLocationsDlpJobsDeleteResource,
    newDLPProjectsLocationsDlpJobsDelete,
    DLPProjectsLocationsDlpJobsDelete,

    -- ** dlp.projects.locations.dlpJobs.finish
    DLPProjectsLocationsDlpJobsFinishResource,
    newDLPProjectsLocationsDlpJobsFinish,
    DLPProjectsLocationsDlpJobsFinish,

    -- ** dlp.projects.locations.dlpJobs.get
    DLPProjectsLocationsDlpJobsGetResource,
    newDLPProjectsLocationsDlpJobsGet,
    DLPProjectsLocationsDlpJobsGet,

    -- ** dlp.projects.locations.dlpJobs.hybridInspect
    DLPProjectsLocationsDlpJobsHybridInspectResource,
    newDLPProjectsLocationsDlpJobsHybridInspect,
    DLPProjectsLocationsDlpJobsHybridInspect,

    -- ** dlp.projects.locations.dlpJobs.list
    DLPProjectsLocationsDlpJobsListResource,
    newDLPProjectsLocationsDlpJobsList,
    DLPProjectsLocationsDlpJobsList,

    -- ** dlp.projects.locations.image.redact
    DLPProjectsLocationsImageRedactResource,
    newDLPProjectsLocationsImageRedact,
    DLPProjectsLocationsImageRedact,

    -- ** dlp.projects.locations.inspectTemplates.create
    DLPProjectsLocationsInspectTemplatesCreateResource,
    newDLPProjectsLocationsInspectTemplatesCreate,
    DLPProjectsLocationsInspectTemplatesCreate,

    -- ** dlp.projects.locations.inspectTemplates.delete
    DLPProjectsLocationsInspectTemplatesDeleteResource,
    newDLPProjectsLocationsInspectTemplatesDelete,
    DLPProjectsLocationsInspectTemplatesDelete,

    -- ** dlp.projects.locations.inspectTemplates.get
    DLPProjectsLocationsInspectTemplatesGetResource,
    newDLPProjectsLocationsInspectTemplatesGet,
    DLPProjectsLocationsInspectTemplatesGet,

    -- ** dlp.projects.locations.inspectTemplates.list
    DLPProjectsLocationsInspectTemplatesListResource,
    newDLPProjectsLocationsInspectTemplatesList,
    DLPProjectsLocationsInspectTemplatesList,

    -- ** dlp.projects.locations.inspectTemplates.patch
    DLPProjectsLocationsInspectTemplatesPatchResource,
    newDLPProjectsLocationsInspectTemplatesPatch,
    DLPProjectsLocationsInspectTemplatesPatch,

    -- ** dlp.projects.locations.jobTriggers.activate
    DLPProjectsLocationsJobTriggersActivateResource,
    newDLPProjectsLocationsJobTriggersActivate,
    DLPProjectsLocationsJobTriggersActivate,

    -- ** dlp.projects.locations.jobTriggers.create
    DLPProjectsLocationsJobTriggersCreateResource,
    newDLPProjectsLocationsJobTriggersCreate,
    DLPProjectsLocationsJobTriggersCreate,

    -- ** dlp.projects.locations.jobTriggers.delete
    DLPProjectsLocationsJobTriggersDeleteResource,
    newDLPProjectsLocationsJobTriggersDelete,
    DLPProjectsLocationsJobTriggersDelete,

    -- ** dlp.projects.locations.jobTriggers.get
    DLPProjectsLocationsJobTriggersGetResource,
    newDLPProjectsLocationsJobTriggersGet,
    DLPProjectsLocationsJobTriggersGet,

    -- ** dlp.projects.locations.jobTriggers.hybridInspect
    DLPProjectsLocationsJobTriggersHybridInspectResource,
    newDLPProjectsLocationsJobTriggersHybridInspect,
    DLPProjectsLocationsJobTriggersHybridInspect,

    -- ** dlp.projects.locations.jobTriggers.list
    DLPProjectsLocationsJobTriggersListResource,
    newDLPProjectsLocationsJobTriggersList,
    DLPProjectsLocationsJobTriggersList,

    -- ** dlp.projects.locations.jobTriggers.patch
    DLPProjectsLocationsJobTriggersPatchResource,
    newDLPProjectsLocationsJobTriggersPatch,
    DLPProjectsLocationsJobTriggersPatch,

    -- ** dlp.projects.locations.storedInfoTypes.create
    DLPProjectsLocationsStoredInfoTypesCreateResource,
    newDLPProjectsLocationsStoredInfoTypesCreate,
    DLPProjectsLocationsStoredInfoTypesCreate,

    -- ** dlp.projects.locations.storedInfoTypes.delete
    DLPProjectsLocationsStoredInfoTypesDeleteResource,
    newDLPProjectsLocationsStoredInfoTypesDelete,
    DLPProjectsLocationsStoredInfoTypesDelete,

    -- ** dlp.projects.locations.storedInfoTypes.get
    DLPProjectsLocationsStoredInfoTypesGetResource,
    newDLPProjectsLocationsStoredInfoTypesGet,
    DLPProjectsLocationsStoredInfoTypesGet,

    -- ** dlp.projects.locations.storedInfoTypes.list
    DLPProjectsLocationsStoredInfoTypesListResource,
    newDLPProjectsLocationsStoredInfoTypesList,
    DLPProjectsLocationsStoredInfoTypesList,

    -- ** dlp.projects.locations.storedInfoTypes.patch
    DLPProjectsLocationsStoredInfoTypesPatchResource,
    newDLPProjectsLocationsStoredInfoTypesPatch,
    DLPProjectsLocationsStoredInfoTypesPatch,

    -- ** dlp.projects.storedInfoTypes.create
    DLPProjectsStoredInfoTypesCreateResource,
    newDLPProjectsStoredInfoTypesCreate,
    DLPProjectsStoredInfoTypesCreate,

    -- ** dlp.projects.storedInfoTypes.delete
    DLPProjectsStoredInfoTypesDeleteResource,
    newDLPProjectsStoredInfoTypesDelete,
    DLPProjectsStoredInfoTypesDelete,

    -- ** dlp.projects.storedInfoTypes.get
    DLPProjectsStoredInfoTypesGetResource,
    newDLPProjectsStoredInfoTypesGet,
    DLPProjectsStoredInfoTypesGet,

    -- ** dlp.projects.storedInfoTypes.list
    DLPProjectsStoredInfoTypesListResource,
    newDLPProjectsStoredInfoTypesList,
    DLPProjectsStoredInfoTypesList,

    -- ** dlp.projects.storedInfoTypes.patch
    DLPProjectsStoredInfoTypesPatchResource,
    newDLPProjectsStoredInfoTypesPatch,
    DLPProjectsStoredInfoTypesPatch,

    -- * Types

    -- ** Xgafv
    Xgafv (..),

    -- ** GooglePrivacyDlpV2Action
    GooglePrivacyDlpV2Action (..),
    newGooglePrivacyDlpV2Action,

    -- ** GooglePrivacyDlpV2ActivateJobTriggerRequest
    GooglePrivacyDlpV2ActivateJobTriggerRequest (..),
    newGooglePrivacyDlpV2ActivateJobTriggerRequest,

    -- ** GooglePrivacyDlpV2AnalyzeDataSourceRiskDetails
    GooglePrivacyDlpV2AnalyzeDataSourceRiskDetails (..),
    newGooglePrivacyDlpV2AnalyzeDataSourceRiskDetails,

    -- ** GooglePrivacyDlpV2AuxiliaryTable
    GooglePrivacyDlpV2AuxiliaryTable (..),
    newGooglePrivacyDlpV2AuxiliaryTable,

    -- ** GooglePrivacyDlpV2BigQueryField
    GooglePrivacyDlpV2BigQueryField (..),
    newGooglePrivacyDlpV2BigQueryField,

    -- ** GooglePrivacyDlpV2BigQueryKey
    GooglePrivacyDlpV2BigQueryKey (..),
    newGooglePrivacyDlpV2BigQueryKey,

    -- ** GooglePrivacyDlpV2BigQueryOptions
    GooglePrivacyDlpV2BigQueryOptions (..),
    newGooglePrivacyDlpV2BigQueryOptions,

    -- ** GooglePrivacyDlpV2BigQueryOptions_SampleMethod
    GooglePrivacyDlpV2BigQueryOptions_SampleMethod (..),

    -- ** GooglePrivacyDlpV2BigQueryTable
    GooglePrivacyDlpV2BigQueryTable (..),
    newGooglePrivacyDlpV2BigQueryTable,

    -- ** GooglePrivacyDlpV2BoundingBox
    GooglePrivacyDlpV2BoundingBox (..),
    newGooglePrivacyDlpV2BoundingBox,

    -- ** GooglePrivacyDlpV2Bucket
    GooglePrivacyDlpV2Bucket (..),
    newGooglePrivacyDlpV2Bucket,

    -- ** GooglePrivacyDlpV2BucketingConfig
    GooglePrivacyDlpV2BucketingConfig (..),
    newGooglePrivacyDlpV2BucketingConfig,

    -- ** GooglePrivacyDlpV2ByteContentItem
    GooglePrivacyDlpV2ByteContentItem (..),
    newGooglePrivacyDlpV2ByteContentItem,

    -- ** GooglePrivacyDlpV2ByteContentItem_Type
    GooglePrivacyDlpV2ByteContentItem_Type (..),

    -- ** GooglePrivacyDlpV2CancelDlpJobRequest
    GooglePrivacyDlpV2CancelDlpJobRequest (..),
    newGooglePrivacyDlpV2CancelDlpJobRequest,

    -- ** GooglePrivacyDlpV2CategoricalStatsConfig
    GooglePrivacyDlpV2CategoricalStatsConfig (..),
    newGooglePrivacyDlpV2CategoricalStatsConfig,

    -- ** GooglePrivacyDlpV2CategoricalStatsHistogramBucket
    GooglePrivacyDlpV2CategoricalStatsHistogramBucket (..),
    newGooglePrivacyDlpV2CategoricalStatsHistogramBucket,

    -- ** GooglePrivacyDlpV2CategoricalStatsResult
    GooglePrivacyDlpV2CategoricalStatsResult (..),
    newGooglePrivacyDlpV2CategoricalStatsResult,

    -- ** GooglePrivacyDlpV2CharacterMaskConfig
    GooglePrivacyDlpV2CharacterMaskConfig (..),
    newGooglePrivacyDlpV2CharacterMaskConfig,

    -- ** GooglePrivacyDlpV2CharsToIgnore
    GooglePrivacyDlpV2CharsToIgnore (..),
    newGooglePrivacyDlpV2CharsToIgnore,

    -- ** GooglePrivacyDlpV2CharsToIgnore_CommonCharactersToIgnore
    GooglePrivacyDlpV2CharsToIgnore_CommonCharactersToIgnore (..),

    -- ** GooglePrivacyDlpV2CloudStorageFileSet
    GooglePrivacyDlpV2CloudStorageFileSet (..),
    newGooglePrivacyDlpV2CloudStorageFileSet,

    -- ** GooglePrivacyDlpV2CloudStorageOptions
    GooglePrivacyDlpV2CloudStorageOptions (..),
    newGooglePrivacyDlpV2CloudStorageOptions,

    -- ** GooglePrivacyDlpV2CloudStorageOptions_FileTypesItem
    GooglePrivacyDlpV2CloudStorageOptions_FileTypesItem (..),

    -- ** GooglePrivacyDlpV2CloudStorageOptions_SampleMethod
    GooglePrivacyDlpV2CloudStorageOptions_SampleMethod (..),

    -- ** GooglePrivacyDlpV2CloudStoragePath
    GooglePrivacyDlpV2CloudStoragePath (..),
    newGooglePrivacyDlpV2CloudStoragePath,

    -- ** GooglePrivacyDlpV2CloudStorageRegexFileSet
    GooglePrivacyDlpV2CloudStorageRegexFileSet (..),
    newGooglePrivacyDlpV2CloudStorageRegexFileSet,

    -- ** GooglePrivacyDlpV2Color
    GooglePrivacyDlpV2Color (..),
    newGooglePrivacyDlpV2Color,

    -- ** GooglePrivacyDlpV2Condition
    GooglePrivacyDlpV2Condition (..),
    newGooglePrivacyDlpV2Condition,

    -- ** GooglePrivacyDlpV2Condition_Operator
    GooglePrivacyDlpV2Condition_Operator (..),

    -- ** GooglePrivacyDlpV2Conditions
    GooglePrivacyDlpV2Conditions (..),
    newGooglePrivacyDlpV2Conditions,

    -- ** GooglePrivacyDlpV2Container
    GooglePrivacyDlpV2Container (..),
    newGooglePrivacyDlpV2Container,

    -- ** GooglePrivacyDlpV2ContentItem
    GooglePrivacyDlpV2ContentItem (..),
    newGooglePrivacyDlpV2ContentItem,

    -- ** GooglePrivacyDlpV2ContentLocation
    GooglePrivacyDlpV2ContentLocation (..),
    newGooglePrivacyDlpV2ContentLocation,

    -- ** GooglePrivacyDlpV2CreateDeidentifyTemplateRequest
    GooglePrivacyDlpV2CreateDeidentifyTemplateRequest (..),
    newGooglePrivacyDlpV2CreateDeidentifyTemplateRequest,

    -- ** GooglePrivacyDlpV2CreateDlpJobRequest
    GooglePrivacyDlpV2CreateDlpJobRequest (..),
    newGooglePrivacyDlpV2CreateDlpJobRequest,

    -- ** GooglePrivacyDlpV2CreateInspectTemplateRequest
    GooglePrivacyDlpV2CreateInspectTemplateRequest (..),
    newGooglePrivacyDlpV2CreateInspectTemplateRequest,

    -- ** GooglePrivacyDlpV2CreateJobTriggerRequest
    GooglePrivacyDlpV2CreateJobTriggerRequest (..),
    newGooglePrivacyDlpV2CreateJobTriggerRequest,

    -- ** GooglePrivacyDlpV2CreateStoredInfoTypeRequest
    GooglePrivacyDlpV2CreateStoredInfoTypeRequest (..),
    newGooglePrivacyDlpV2CreateStoredInfoTypeRequest,

    -- ** GooglePrivacyDlpV2CryptoDeterministicConfig
    GooglePrivacyDlpV2CryptoDeterministicConfig (..),
    newGooglePrivacyDlpV2CryptoDeterministicConfig,

    -- ** GooglePrivacyDlpV2CryptoHashConfig
    GooglePrivacyDlpV2CryptoHashConfig (..),
    newGooglePrivacyDlpV2CryptoHashConfig,

    -- ** GooglePrivacyDlpV2CryptoKey
    GooglePrivacyDlpV2CryptoKey (..),
    newGooglePrivacyDlpV2CryptoKey,

    -- ** GooglePrivacyDlpV2CryptoReplaceFfxFpeConfig
    GooglePrivacyDlpV2CryptoReplaceFfxFpeConfig (..),
    newGooglePrivacyDlpV2CryptoReplaceFfxFpeConfig,

    -- ** GooglePrivacyDlpV2CryptoReplaceFfxFpeConfig_CommonAlphabet
    GooglePrivacyDlpV2CryptoReplaceFfxFpeConfig_CommonAlphabet (..),

    -- ** GooglePrivacyDlpV2CustomInfoType
    GooglePrivacyDlpV2CustomInfoType (..),
    newGooglePrivacyDlpV2CustomInfoType,

    -- ** GooglePrivacyDlpV2CustomInfoType_ExclusionType
    GooglePrivacyDlpV2CustomInfoType_ExclusionType (..),

    -- ** GooglePrivacyDlpV2CustomInfoType_Likelihood
    GooglePrivacyDlpV2CustomInfoType_Likelihood (..),

    -- ** GooglePrivacyDlpV2DatastoreKey
    GooglePrivacyDlpV2DatastoreKey (..),
    newGooglePrivacyDlpV2DatastoreKey,

    -- ** GooglePrivacyDlpV2DatastoreOptions
    GooglePrivacyDlpV2DatastoreOptions (..),
    newGooglePrivacyDlpV2DatastoreOptions,

    -- ** GooglePrivacyDlpV2DateShiftConfig
    GooglePrivacyDlpV2DateShiftConfig (..),
    newGooglePrivacyDlpV2DateShiftConfig,

    -- ** GooglePrivacyDlpV2DateTime
    GooglePrivacyDlpV2DateTime (..),
    newGooglePrivacyDlpV2DateTime,

    -- ** GooglePrivacyDlpV2DateTime_DayOfWeek
    GooglePrivacyDlpV2DateTime_DayOfWeek (..),

    -- ** GooglePrivacyDlpV2DeidentifyConfig
    GooglePrivacyDlpV2DeidentifyConfig (..),
    newGooglePrivacyDlpV2DeidentifyConfig,

    -- ** GooglePrivacyDlpV2DeidentifyContentRequest
    GooglePrivacyDlpV2DeidentifyContentRequest (..),
    newGooglePrivacyDlpV2DeidentifyContentRequest,

    -- ** GooglePrivacyDlpV2DeidentifyContentResponse
    GooglePrivacyDlpV2DeidentifyContentResponse (..),
    newGooglePrivacyDlpV2DeidentifyContentResponse,

    -- ** GooglePrivacyDlpV2DeidentifyTemplate
    GooglePrivacyDlpV2DeidentifyTemplate (..),
    newGooglePrivacyDlpV2DeidentifyTemplate,

    -- ** GooglePrivacyDlpV2DeltaPresenceEstimationConfig
    GooglePrivacyDlpV2DeltaPresenceEstimationConfig (..),
    newGooglePrivacyDlpV2DeltaPresenceEstimationConfig,

    -- ** GooglePrivacyDlpV2DeltaPresenceEstimationHistogramBucket
    GooglePrivacyDlpV2DeltaPresenceEstimationHistogramBucket (..),
    newGooglePrivacyDlpV2DeltaPresenceEstimationHistogramBucket,

    -- ** GooglePrivacyDlpV2DeltaPresenceEstimationQuasiIdValues
    GooglePrivacyDlpV2DeltaPresenceEstimationQuasiIdValues (..),
    newGooglePrivacyDlpV2DeltaPresenceEstimationQuasiIdValues,

    -- ** GooglePrivacyDlpV2DeltaPresenceEstimationResult
    GooglePrivacyDlpV2DeltaPresenceEstimationResult (..),
    newGooglePrivacyDlpV2DeltaPresenceEstimationResult,

    -- ** GooglePrivacyDlpV2DetectionRule
    GooglePrivacyDlpV2DetectionRule (..),
    newGooglePrivacyDlpV2DetectionRule,

    -- ** GooglePrivacyDlpV2Dictionary
    GooglePrivacyDlpV2Dictionary (..),
    newGooglePrivacyDlpV2Dictionary,

    -- ** GooglePrivacyDlpV2DlpJob
    GooglePrivacyDlpV2DlpJob (..),
    newGooglePrivacyDlpV2DlpJob,

    -- ** GooglePrivacyDlpV2DlpJob_State
    GooglePrivacyDlpV2DlpJob_State (..),

    -- ** GooglePrivacyDlpV2DlpJob_Type
    GooglePrivacyDlpV2DlpJob_Type (..),

    -- ** GooglePrivacyDlpV2DocumentLocation
    GooglePrivacyDlpV2DocumentLocation (..),
    newGooglePrivacyDlpV2DocumentLocation,

    -- ** GooglePrivacyDlpV2EntityId
    GooglePrivacyDlpV2EntityId (..),
    newGooglePrivacyDlpV2EntityId,

    -- ** GooglePrivacyDlpV2Error
    GooglePrivacyDlpV2Error (..),
    newGooglePrivacyDlpV2Error,

    -- ** GooglePrivacyDlpV2ExcludeInfoTypes
    GooglePrivacyDlpV2ExcludeInfoTypes (..),
    newGooglePrivacyDlpV2ExcludeInfoTypes,

    -- ** GooglePrivacyDlpV2ExclusionRule
    GooglePrivacyDlpV2ExclusionRule (..),
    newGooglePrivacyDlpV2ExclusionRule,

    -- ** GooglePrivacyDlpV2ExclusionRule_MatchingType
    GooglePrivacyDlpV2ExclusionRule_MatchingType (..),

    -- ** GooglePrivacyDlpV2Expressions
    GooglePrivacyDlpV2Expressions (..),
    newGooglePrivacyDlpV2Expressions,

    -- ** GooglePrivacyDlpV2Expressions_LogicalOperator
    GooglePrivacyDlpV2Expressions_LogicalOperator (..),

    -- ** GooglePrivacyDlpV2FieldId
    GooglePrivacyDlpV2FieldId (..),
    newGooglePrivacyDlpV2FieldId,

    -- ** GooglePrivacyDlpV2FieldTransformation
    GooglePrivacyDlpV2FieldTransformation (..),
    newGooglePrivacyDlpV2FieldTransformation,

    -- ** GooglePrivacyDlpV2FileSet
    GooglePrivacyDlpV2FileSet (..),
    newGooglePrivacyDlpV2FileSet,

    -- ** GooglePrivacyDlpV2Finding
    GooglePrivacyDlpV2Finding (..),
    newGooglePrivacyDlpV2Finding,

    -- ** GooglePrivacyDlpV2Finding_Labels
    GooglePrivacyDlpV2Finding_Labels (..),
    newGooglePrivacyDlpV2Finding_Labels,

    -- ** GooglePrivacyDlpV2Finding_Likelihood
    GooglePrivacyDlpV2Finding_Likelihood (..),

    -- ** GooglePrivacyDlpV2FindingLimits
    GooglePrivacyDlpV2FindingLimits (..),
    newGooglePrivacyDlpV2FindingLimits,

    -- ** GooglePrivacyDlpV2FinishDlpJobRequest
    GooglePrivacyDlpV2FinishDlpJobRequest (..),
    newGooglePrivacyDlpV2FinishDlpJobRequest,

    -- ** GooglePrivacyDlpV2FixedSizeBucketingConfig
    GooglePrivacyDlpV2FixedSizeBucketingConfig (..),
    newGooglePrivacyDlpV2FixedSizeBucketingConfig,

    -- ** GooglePrivacyDlpV2HotwordRule
    GooglePrivacyDlpV2HotwordRule (..),
    newGooglePrivacyDlpV2HotwordRule,

    -- ** GooglePrivacyDlpV2HybridContentItem
    GooglePrivacyDlpV2HybridContentItem (..),
    newGooglePrivacyDlpV2HybridContentItem,

    -- ** GooglePrivacyDlpV2HybridFindingDetails
    GooglePrivacyDlpV2HybridFindingDetails (..),
    newGooglePrivacyDlpV2HybridFindingDetails,

    -- ** GooglePrivacyDlpV2HybridFindingDetails_Labels
    GooglePrivacyDlpV2HybridFindingDetails_Labels (..),
    newGooglePrivacyDlpV2HybridFindingDetails_Labels,

    -- ** GooglePrivacyDlpV2HybridInspectDlpJobRequest
    GooglePrivacyDlpV2HybridInspectDlpJobRequest (..),
    newGooglePrivacyDlpV2HybridInspectDlpJobRequest,

    -- ** GooglePrivacyDlpV2HybridInspectJobTriggerRequest
    GooglePrivacyDlpV2HybridInspectJobTriggerRequest (..),
    newGooglePrivacyDlpV2HybridInspectJobTriggerRequest,

    -- ** GooglePrivacyDlpV2HybridInspectResponse
    GooglePrivacyDlpV2HybridInspectResponse (..),
    newGooglePrivacyDlpV2HybridInspectResponse,

    -- ** GooglePrivacyDlpV2HybridInspectStatistics
    GooglePrivacyDlpV2HybridInspectStatistics (..),
    newGooglePrivacyDlpV2HybridInspectStatistics,

    -- ** GooglePrivacyDlpV2HybridOptions
    GooglePrivacyDlpV2HybridOptions (..),
    newGooglePrivacyDlpV2HybridOptions,

    -- ** GooglePrivacyDlpV2HybridOptions_Labels
    GooglePrivacyDlpV2HybridOptions_Labels (..),
    newGooglePrivacyDlpV2HybridOptions_Labels,

    -- ** GooglePrivacyDlpV2ImageLocation
    GooglePrivacyDlpV2ImageLocation (..),
    newGooglePrivacyDlpV2ImageLocation,

    -- ** GooglePrivacyDlpV2ImageRedactionConfig
    GooglePrivacyDlpV2ImageRedactionConfig (..),
    newGooglePrivacyDlpV2ImageRedactionConfig,

    -- ** GooglePrivacyDlpV2InfoType
    GooglePrivacyDlpV2InfoType (..),
    newGooglePrivacyDlpV2InfoType,

    -- ** GooglePrivacyDlpV2InfoTypeDescription
    GooglePrivacyDlpV2InfoTypeDescription (..),
    newGooglePrivacyDlpV2InfoTypeDescription,

    -- ** GooglePrivacyDlpV2InfoTypeDescription_SupportedByItem
    GooglePrivacyDlpV2InfoTypeDescription_SupportedByItem (..),

    -- ** GooglePrivacyDlpV2InfoTypeLimit
    GooglePrivacyDlpV2InfoTypeLimit (..),
    newGooglePrivacyDlpV2InfoTypeLimit,

    -- ** GooglePrivacyDlpV2InfoTypeStats
    GooglePrivacyDlpV2InfoTypeStats (..),
    newGooglePrivacyDlpV2InfoTypeStats,

    -- ** GooglePrivacyDlpV2InfoTypeTransformation
    GooglePrivacyDlpV2InfoTypeTransformation (..),
    newGooglePrivacyDlpV2InfoTypeTransformation,

    -- ** GooglePrivacyDlpV2InfoTypeTransformations
    GooglePrivacyDlpV2InfoTypeTransformations (..),
    newGooglePrivacyDlpV2InfoTypeTransformations,

    -- ** GooglePrivacyDlpV2InspectConfig
    GooglePrivacyDlpV2InspectConfig (..),
    newGooglePrivacyDlpV2InspectConfig,

    -- ** GooglePrivacyDlpV2InspectConfig_ContentOptionsItem
    GooglePrivacyDlpV2InspectConfig_ContentOptionsItem (..),

    -- ** GooglePrivacyDlpV2InspectConfig_MinLikelihood
    GooglePrivacyDlpV2InspectConfig_MinLikelihood (..),

    -- ** GooglePrivacyDlpV2InspectContentRequest
    GooglePrivacyDlpV2InspectContentRequest (..),
    newGooglePrivacyDlpV2InspectContentRequest,

    -- ** GooglePrivacyDlpV2InspectContentResponse
    GooglePrivacyDlpV2InspectContentResponse (..),
    newGooglePrivacyDlpV2InspectContentResponse,

    -- ** GooglePrivacyDlpV2InspectDataSourceDetails
    GooglePrivacyDlpV2InspectDataSourceDetails (..),
    newGooglePrivacyDlpV2InspectDataSourceDetails,

    -- ** GooglePrivacyDlpV2InspectJobConfig
    GooglePrivacyDlpV2InspectJobConfig (..),
    newGooglePrivacyDlpV2InspectJobConfig,

    -- ** GooglePrivacyDlpV2InspectResult
    GooglePrivacyDlpV2InspectResult (..),
    newGooglePrivacyDlpV2InspectResult,

    -- ** GooglePrivacyDlpV2InspectTemplate
    GooglePrivacyDlpV2InspectTemplate (..),
    newGooglePrivacyDlpV2InspectTemplate,

    -- ** GooglePrivacyDlpV2InspectionRule
    GooglePrivacyDlpV2InspectionRule (..),
    newGooglePrivacyDlpV2InspectionRule,

    -- ** GooglePrivacyDlpV2InspectionRuleSet
    GooglePrivacyDlpV2InspectionRuleSet (..),
    newGooglePrivacyDlpV2InspectionRuleSet,

    -- ** GooglePrivacyDlpV2JobNotificationEmails
    GooglePrivacyDlpV2JobNotificationEmails (..),
    newGooglePrivacyDlpV2JobNotificationEmails,

    -- ** GooglePrivacyDlpV2JobTrigger
    GooglePrivacyDlpV2JobTrigger (..),
    newGooglePrivacyDlpV2JobTrigger,

    -- ** GooglePrivacyDlpV2JobTrigger_Status
    GooglePrivacyDlpV2JobTrigger_Status (..),

    -- ** GooglePrivacyDlpV2KAnonymityConfig
    GooglePrivacyDlpV2KAnonymityConfig (..),
    newGooglePrivacyDlpV2KAnonymityConfig,

    -- ** GooglePrivacyDlpV2KAnonymityEquivalenceClass
    GooglePrivacyDlpV2KAnonymityEquivalenceClass (..),
    newGooglePrivacyDlpV2KAnonymityEquivalenceClass,

    -- ** GooglePrivacyDlpV2KAnonymityHistogramBucket
    GooglePrivacyDlpV2KAnonymityHistogramBucket (..),
    newGooglePrivacyDlpV2KAnonymityHistogramBucket,

    -- ** GooglePrivacyDlpV2KAnonymityResult
    GooglePrivacyDlpV2KAnonymityResult (..),
    newGooglePrivacyDlpV2KAnonymityResult,

    -- ** GooglePrivacyDlpV2KMapEstimationConfig
    GooglePrivacyDlpV2KMapEstimationConfig (..),
    newGooglePrivacyDlpV2KMapEstimationConfig,

    -- ** GooglePrivacyDlpV2KMapEstimationHistogramBucket
    GooglePrivacyDlpV2KMapEstimationHistogramBucket (..),
    newGooglePrivacyDlpV2KMapEstimationHistogramBucket,

    -- ** GooglePrivacyDlpV2KMapEstimationQuasiIdValues
    GooglePrivacyDlpV2KMapEstimationQuasiIdValues (..),
    newGooglePrivacyDlpV2KMapEstimationQuasiIdValues,

    -- ** GooglePrivacyDlpV2KMapEstimationResult
    GooglePrivacyDlpV2KMapEstimationResult (..),
    newGooglePrivacyDlpV2KMapEstimationResult,

    -- ** GooglePrivacyDlpV2Key
    GooglePrivacyDlpV2Key (..),
    newGooglePrivacyDlpV2Key,

    -- ** GooglePrivacyDlpV2KindExpression
    GooglePrivacyDlpV2KindExpression (..),
    newGooglePrivacyDlpV2KindExpression,

    -- ** GooglePrivacyDlpV2KmsWrappedCryptoKey
    GooglePrivacyDlpV2KmsWrappedCryptoKey (..),
    newGooglePrivacyDlpV2KmsWrappedCryptoKey,

    -- ** GooglePrivacyDlpV2LDiversityConfig
    GooglePrivacyDlpV2LDiversityConfig (..),
    newGooglePrivacyDlpV2LDiversityConfig,

    -- ** GooglePrivacyDlpV2LDiversityEquivalenceClass
    GooglePrivacyDlpV2LDiversityEquivalenceClass (..),
    newGooglePrivacyDlpV2LDiversityEquivalenceClass,

    -- ** GooglePrivacyDlpV2LDiversityHistogramBucket
    GooglePrivacyDlpV2LDiversityHistogramBucket (..),
    newGooglePrivacyDlpV2LDiversityHistogramBucket,

    -- ** GooglePrivacyDlpV2LDiversityResult
    GooglePrivacyDlpV2LDiversityResult (..),
    newGooglePrivacyDlpV2LDiversityResult,

    -- ** GooglePrivacyDlpV2LargeCustomDictionaryConfig
    GooglePrivacyDlpV2LargeCustomDictionaryConfig (..),
    newGooglePrivacyDlpV2LargeCustomDictionaryConfig,

    -- ** GooglePrivacyDlpV2LargeCustomDictionaryStats
    GooglePrivacyDlpV2LargeCustomDictionaryStats (..),
    newGooglePrivacyDlpV2LargeCustomDictionaryStats,

    -- ** GooglePrivacyDlpV2LeaveUntransformed
    GooglePrivacyDlpV2LeaveUntransformed (..),
    newGooglePrivacyDlpV2LeaveUntransformed,

    -- ** GooglePrivacyDlpV2LikelihoodAdjustment
    GooglePrivacyDlpV2LikelihoodAdjustment (..),
    newGooglePrivacyDlpV2LikelihoodAdjustment,

    -- ** GooglePrivacyDlpV2LikelihoodAdjustment_FixedLikelihood
    GooglePrivacyDlpV2LikelihoodAdjustment_FixedLikelihood (..),

    -- ** GooglePrivacyDlpV2ListDeidentifyTemplatesResponse
    GooglePrivacyDlpV2ListDeidentifyTemplatesResponse (..),
    newGooglePrivacyDlpV2ListDeidentifyTemplatesResponse,

    -- ** GooglePrivacyDlpV2ListDlpJobsResponse
    GooglePrivacyDlpV2ListDlpJobsResponse (..),
    newGooglePrivacyDlpV2ListDlpJobsResponse,

    -- ** GooglePrivacyDlpV2ListInfoTypesResponse
    GooglePrivacyDlpV2ListInfoTypesResponse (..),
    newGooglePrivacyDlpV2ListInfoTypesResponse,

    -- ** GooglePrivacyDlpV2ListInspectTemplatesResponse
    GooglePrivacyDlpV2ListInspectTemplatesResponse (..),
    newGooglePrivacyDlpV2ListInspectTemplatesResponse,

    -- ** GooglePrivacyDlpV2ListJobTriggersResponse
    GooglePrivacyDlpV2ListJobTriggersResponse (..),
    newGooglePrivacyDlpV2ListJobTriggersResponse,

    -- ** GooglePrivacyDlpV2ListStoredInfoTypesResponse
    GooglePrivacyDlpV2ListStoredInfoTypesResponse (..),
    newGooglePrivacyDlpV2ListStoredInfoTypesResponse,

    -- ** GooglePrivacyDlpV2Location
    GooglePrivacyDlpV2Location (..),
    newGooglePrivacyDlpV2Location,

    -- ** GooglePrivacyDlpV2Manual
    GooglePrivacyDlpV2Manual (..),
    newGooglePrivacyDlpV2Manual,

    -- ** GooglePrivacyDlpV2MetadataLocation
    GooglePrivacyDlpV2MetadataLocation (..),
    newGooglePrivacyDlpV2MetadataLocation,

    -- ** GooglePrivacyDlpV2MetadataLocation_Type
    GooglePrivacyDlpV2MetadataLocation_Type (..),

    -- ** GooglePrivacyDlpV2NumericalStatsConfig
    GooglePrivacyDlpV2NumericalStatsConfig (..),
    newGooglePrivacyDlpV2NumericalStatsConfig,

    -- ** GooglePrivacyDlpV2NumericalStatsResult
    GooglePrivacyDlpV2NumericalStatsResult (..),
    newGooglePrivacyDlpV2NumericalStatsResult,

    -- ** GooglePrivacyDlpV2OutputStorageConfig
    GooglePrivacyDlpV2OutputStorageConfig (..),
    newGooglePrivacyDlpV2OutputStorageConfig,

    -- ** GooglePrivacyDlpV2OutputStorageConfig_OutputSchema
    GooglePrivacyDlpV2OutputStorageConfig_OutputSchema (..),

    -- ** GooglePrivacyDlpV2PartitionId
    GooglePrivacyDlpV2PartitionId (..),
    newGooglePrivacyDlpV2PartitionId,

    -- ** GooglePrivacyDlpV2PathElement
    GooglePrivacyDlpV2PathElement (..),
    newGooglePrivacyDlpV2PathElement,

    -- ** GooglePrivacyDlpV2PrimitiveTransformation
    GooglePrivacyDlpV2PrimitiveTransformation (..),
    newGooglePrivacyDlpV2PrimitiveTransformation,

    -- ** GooglePrivacyDlpV2PrivacyMetric
    GooglePrivacyDlpV2PrivacyMetric (..),
    newGooglePrivacyDlpV2PrivacyMetric,

    -- ** GooglePrivacyDlpV2Proximity
    GooglePrivacyDlpV2Proximity (..),
    newGooglePrivacyDlpV2Proximity,

    -- ** GooglePrivacyDlpV2PublishFindingsToCloudDataCatalog
    GooglePrivacyDlpV2PublishFindingsToCloudDataCatalog (..),
    newGooglePrivacyDlpV2PublishFindingsToCloudDataCatalog,

    -- ** GooglePrivacyDlpV2PublishSummaryToCscc
    GooglePrivacyDlpV2PublishSummaryToCscc (..),
    newGooglePrivacyDlpV2PublishSummaryToCscc,

    -- ** GooglePrivacyDlpV2PublishToPubSub
    GooglePrivacyDlpV2PublishToPubSub (..),
    newGooglePrivacyDlpV2PublishToPubSub,

    -- ** GooglePrivacyDlpV2PublishToStackdriver
    GooglePrivacyDlpV2PublishToStackdriver (..),
    newGooglePrivacyDlpV2PublishToStackdriver,

    -- ** GooglePrivacyDlpV2QuasiId
    GooglePrivacyDlpV2QuasiId (..),
    newGooglePrivacyDlpV2QuasiId,

    -- ** GooglePrivacyDlpV2QuasiIdField
    GooglePrivacyDlpV2QuasiIdField (..),
    newGooglePrivacyDlpV2QuasiIdField,

    -- ** GooglePrivacyDlpV2QuasiIdentifierField
    GooglePrivacyDlpV2QuasiIdentifierField (..),
    newGooglePrivacyDlpV2QuasiIdentifierField,

    -- ** GooglePrivacyDlpV2QuoteInfo
    GooglePrivacyDlpV2QuoteInfo (..),
    newGooglePrivacyDlpV2QuoteInfo,

    -- ** GooglePrivacyDlpV2Range
    GooglePrivacyDlpV2Range (..),
    newGooglePrivacyDlpV2Range,

    -- ** GooglePrivacyDlpV2RecordCondition
    GooglePrivacyDlpV2RecordCondition (..),
    newGooglePrivacyDlpV2RecordCondition,

    -- ** GooglePrivacyDlpV2RecordKey
    GooglePrivacyDlpV2RecordKey (..),
    newGooglePrivacyDlpV2RecordKey,

    -- ** GooglePrivacyDlpV2RecordLocation
    GooglePrivacyDlpV2RecordLocation (..),
    newGooglePrivacyDlpV2RecordLocation,

    -- ** GooglePrivacyDlpV2RecordSuppression
    GooglePrivacyDlpV2RecordSuppression (..),
    newGooglePrivacyDlpV2RecordSuppression,

    -- ** GooglePrivacyDlpV2RecordTransformations
    GooglePrivacyDlpV2RecordTransformations (..),
    newGooglePrivacyDlpV2RecordTransformations,

    -- ** GooglePrivacyDlpV2RedactConfig
    GooglePrivacyDlpV2RedactConfig (..),
    newGooglePrivacyDlpV2RedactConfig,

    -- ** GooglePrivacyDlpV2RedactImageRequest
    GooglePrivacyDlpV2RedactImageRequest (..),
    newGooglePrivacyDlpV2RedactImageRequest,

    -- ** GooglePrivacyDlpV2RedactImageResponse
    GooglePrivacyDlpV2RedactImageResponse (..),
    newGooglePrivacyDlpV2RedactImageResponse,

    -- ** GooglePrivacyDlpV2Regex
    GooglePrivacyDlpV2Regex (..),
    newGooglePrivacyDlpV2Regex,

    -- ** GooglePrivacyDlpV2ReidentifyContentRequest
    GooglePrivacyDlpV2ReidentifyContentRequest (..),
    newGooglePrivacyDlpV2ReidentifyContentRequest,

    -- ** GooglePrivacyDlpV2ReidentifyContentResponse
    GooglePrivacyDlpV2ReidentifyContentResponse (..),
    newGooglePrivacyDlpV2ReidentifyContentResponse,

    -- ** GooglePrivacyDlpV2ReplaceDictionaryConfig
    GooglePrivacyDlpV2ReplaceDictionaryConfig (..),
    newGooglePrivacyDlpV2ReplaceDictionaryConfig,

    -- ** GooglePrivacyDlpV2ReplaceValueConfig
    GooglePrivacyDlpV2ReplaceValueConfig (..),
    newGooglePrivacyDlpV2ReplaceValueConfig,

    -- ** GooglePrivacyDlpV2ReplaceWithInfoTypeConfig
    GooglePrivacyDlpV2ReplaceWithInfoTypeConfig (..),
    newGooglePrivacyDlpV2ReplaceWithInfoTypeConfig,

    -- ** GooglePrivacyDlpV2RequestedOptions
    GooglePrivacyDlpV2RequestedOptions (..),
    newGooglePrivacyDlpV2RequestedOptions,

    -- ** GooglePrivacyDlpV2RequestedRiskAnalysisOptions
    GooglePrivacyDlpV2RequestedRiskAnalysisOptions (..),
    newGooglePrivacyDlpV2RequestedRiskAnalysisOptions,

    -- ** GooglePrivacyDlpV2Result
    GooglePrivacyDlpV2Result (..),
    newGooglePrivacyDlpV2Result,

    -- ** GooglePrivacyDlpV2RiskAnalysisJobConfig
    GooglePrivacyDlpV2RiskAnalysisJobConfig (..),
    newGooglePrivacyDlpV2RiskAnalysisJobConfig,

    -- ** GooglePrivacyDlpV2Row
    GooglePrivacyDlpV2Row (..),
    newGooglePrivacyDlpV2Row,

    -- ** GooglePrivacyDlpV2SaveFindings
    GooglePrivacyDlpV2SaveFindings (..),
    newGooglePrivacyDlpV2SaveFindings,

    -- ** GooglePrivacyDlpV2Schedule
    GooglePrivacyDlpV2Schedule (..),
    newGooglePrivacyDlpV2Schedule,

    -- ** GooglePrivacyDlpV2StatisticalTable
    GooglePrivacyDlpV2StatisticalTable (..),
    newGooglePrivacyDlpV2StatisticalTable,

    -- ** GooglePrivacyDlpV2StorageConfig
    GooglePrivacyDlpV2StorageConfig (..),
    newGooglePrivacyDlpV2StorageConfig,

    -- ** GooglePrivacyDlpV2StorageMetadataLabel
    GooglePrivacyDlpV2StorageMetadataLabel (..),
    newGooglePrivacyDlpV2StorageMetadataLabel,

    -- ** GooglePrivacyDlpV2StoredInfoType
    GooglePrivacyDlpV2StoredInfoType (..),
    newGooglePrivacyDlpV2StoredInfoType,

    -- ** GooglePrivacyDlpV2StoredInfoTypeConfig
    GooglePrivacyDlpV2StoredInfoTypeConfig (..),
    newGooglePrivacyDlpV2StoredInfoTypeConfig,

    -- ** GooglePrivacyDlpV2StoredInfoTypeStats
    GooglePrivacyDlpV2StoredInfoTypeStats (..),
    newGooglePrivacyDlpV2StoredInfoTypeStats,

    -- ** GooglePrivacyDlpV2StoredInfoTypeVersion
    GooglePrivacyDlpV2StoredInfoTypeVersion (..),
    newGooglePrivacyDlpV2StoredInfoTypeVersion,

    -- ** GooglePrivacyDlpV2StoredInfoTypeVersion_State
    GooglePrivacyDlpV2StoredInfoTypeVersion_State (..),

    -- ** GooglePrivacyDlpV2StoredType
    GooglePrivacyDlpV2StoredType (..),
    newGooglePrivacyDlpV2StoredType,

    -- ** GooglePrivacyDlpV2SummaryResult
    GooglePrivacyDlpV2SummaryResult (..),
    newGooglePrivacyDlpV2SummaryResult,

    -- ** GooglePrivacyDlpV2SummaryResult_Code
    GooglePrivacyDlpV2SummaryResult_Code (..),

    -- ** GooglePrivacyDlpV2SurrogateType
    GooglePrivacyDlpV2SurrogateType (..),
    newGooglePrivacyDlpV2SurrogateType,

    -- ** GooglePrivacyDlpV2Table
    GooglePrivacyDlpV2Table (..),
    newGooglePrivacyDlpV2Table,

    -- ** GooglePrivacyDlpV2TableLocation
    GooglePrivacyDlpV2TableLocation (..),
    newGooglePrivacyDlpV2TableLocation,

    -- ** GooglePrivacyDlpV2TableOptions
    GooglePrivacyDlpV2TableOptions (..),
    newGooglePrivacyDlpV2TableOptions,

    -- ** GooglePrivacyDlpV2TaggedField
    GooglePrivacyDlpV2TaggedField (..),
    newGooglePrivacyDlpV2TaggedField,

    -- ** GooglePrivacyDlpV2ThrowError
    GooglePrivacyDlpV2ThrowError (..),
    newGooglePrivacyDlpV2ThrowError,

    -- ** GooglePrivacyDlpV2TimePartConfig
    GooglePrivacyDlpV2TimePartConfig (..),
    newGooglePrivacyDlpV2TimePartConfig,

    -- ** GooglePrivacyDlpV2TimePartConfig_PartToExtract
    GooglePrivacyDlpV2TimePartConfig_PartToExtract (..),

    -- ** GooglePrivacyDlpV2TimeZone
    GooglePrivacyDlpV2TimeZone (..),
    newGooglePrivacyDlpV2TimeZone,

    -- ** GooglePrivacyDlpV2TimespanConfig
    GooglePrivacyDlpV2TimespanConfig (..),
    newGooglePrivacyDlpV2TimespanConfig,

    -- ** GooglePrivacyDlpV2TransformationErrorHandling
    GooglePrivacyDlpV2TransformationErrorHandling (..),
    newGooglePrivacyDlpV2TransformationErrorHandling,

    -- ** GooglePrivacyDlpV2TransformationOverview
    GooglePrivacyDlpV2TransformationOverview (..),
    newGooglePrivacyDlpV2TransformationOverview,

    -- ** GooglePrivacyDlpV2TransformationSummary
    GooglePrivacyDlpV2TransformationSummary (..),
    newGooglePrivacyDlpV2TransformationSummary,

    -- ** GooglePrivacyDlpV2TransientCryptoKey
    GooglePrivacyDlpV2TransientCryptoKey (..),
    newGooglePrivacyDlpV2TransientCryptoKey,

    -- ** GooglePrivacyDlpV2Trigger
    GooglePrivacyDlpV2Trigger (..),
    newGooglePrivacyDlpV2Trigger,

    -- ** GooglePrivacyDlpV2UnwrappedCryptoKey
    GooglePrivacyDlpV2UnwrappedCryptoKey (..),
    newGooglePrivacyDlpV2UnwrappedCryptoKey,

    -- ** GooglePrivacyDlpV2UpdateDeidentifyTemplateRequest
    GooglePrivacyDlpV2UpdateDeidentifyTemplateRequest (..),
    newGooglePrivacyDlpV2UpdateDeidentifyTemplateRequest,

    -- ** GooglePrivacyDlpV2UpdateInspectTemplateRequest
    GooglePrivacyDlpV2UpdateInspectTemplateRequest (..),
    newGooglePrivacyDlpV2UpdateInspectTemplateRequest,

    -- ** GooglePrivacyDlpV2UpdateJobTriggerRequest
    GooglePrivacyDlpV2UpdateJobTriggerRequest (..),
    newGooglePrivacyDlpV2UpdateJobTriggerRequest,

    -- ** GooglePrivacyDlpV2UpdateStoredInfoTypeRequest
    GooglePrivacyDlpV2UpdateStoredInfoTypeRequest (..),
    newGooglePrivacyDlpV2UpdateStoredInfoTypeRequest,

    -- ** GooglePrivacyDlpV2Value
    GooglePrivacyDlpV2Value (..),
    newGooglePrivacyDlpV2Value,

    -- ** GooglePrivacyDlpV2Value_DayOfWeekValue
    GooglePrivacyDlpV2Value_DayOfWeekValue (..),

    -- ** GooglePrivacyDlpV2ValueFrequency
    GooglePrivacyDlpV2ValueFrequency (..),
    newGooglePrivacyDlpV2ValueFrequency,

    -- ** GooglePrivacyDlpV2WordList
    GooglePrivacyDlpV2WordList (..),
    newGooglePrivacyDlpV2WordList,

    -- ** GoogleProtobufEmpty
    GoogleProtobufEmpty (..),
    newGoogleProtobufEmpty,

    -- ** GoogleRpcStatus
    GoogleRpcStatus (..),
    newGoogleRpcStatus,

    -- ** GoogleRpcStatus_DetailsItem
    GoogleRpcStatus_DetailsItem (..),
    newGoogleRpcStatus_DetailsItem,

    -- ** GoogleTypeDate
    GoogleTypeDate (..),
    newGoogleTypeDate,

    -- ** GoogleTypeTimeOfDay
    GoogleTypeTimeOfDay (..),
    newGoogleTypeTimeOfDay,

    -- ** OrganizationsLocationsDlpJobsListType
    OrganizationsLocationsDlpJobsListType (..),

    -- ** OrganizationsLocationsJobTriggersListType
    OrganizationsLocationsJobTriggersListType (..),

    -- ** ProjectsDlpJobsListType
    ProjectsDlpJobsListType (..),

    -- ** ProjectsJobTriggersListType
    ProjectsJobTriggersListType (..),

    -- ** ProjectsLocationsDlpJobsListType
    ProjectsLocationsDlpJobsListType (..),

    -- ** ProjectsLocationsJobTriggersListType
    ProjectsLocationsJobTriggersListType (..),
  )
where

import Network.Google.DLP.InfoTypes.List
import Network.Google.DLP.Locations.InfoTypes.List
import Network.Google.DLP.Organizations.DeidentifyTemplates.Create
import Network.Google.DLP.Organizations.DeidentifyTemplates.Delete
import Network.Google.DLP.Organizations.DeidentifyTemplates.Get
import Network.Google.DLP.Organizations.DeidentifyTemplates.List
import Network.Google.DLP.Organizations.DeidentifyTemplates.Patch
import Network.Google.DLP.Organizations.InspectTemplates.Create
import Network.Google.DLP.Organizations.InspectTemplates.Delete
import Network.Google.DLP.Organizations.InspectTemplates.Get
import Network.Google.DLP.Organizations.InspectTemplates.List
import Network.Google.DLP.Organizations.InspectTemplates.Patch
import Network.Google.DLP.Organizations.Locations.DeidentifyTemplates.Create
import Network.Google.DLP.Organizations.Locations.DeidentifyTemplates.Delete
import Network.Google.DLP.Organizations.Locations.DeidentifyTemplates.Get
import Network.Google.DLP.Organizations.Locations.DeidentifyTemplates.List
import Network.Google.DLP.Organizations.Locations.DeidentifyTemplates.Patch
import Network.Google.DLP.Organizations.Locations.DlpJobs.List
import Network.Google.DLP.Organizations.Locations.InspectTemplates.Create
import Network.Google.DLP.Organizations.Locations.InspectTemplates.Delete
import Network.Google.DLP.Organizations.Locations.InspectTemplates.Get
import Network.Google.DLP.Organizations.Locations.InspectTemplates.List
import Network.Google.DLP.Organizations.Locations.InspectTemplates.Patch
import Network.Google.DLP.Organizations.Locations.JobTriggers.Create
import Network.Google.DLP.Organizations.Locations.JobTriggers.Delete
import Network.Google.DLP.Organizations.Locations.JobTriggers.Get
import Network.Google.DLP.Organizations.Locations.JobTriggers.List
import Network.Google.DLP.Organizations.Locations.JobTriggers.Patch
import Network.Google.DLP.Organizations.Locations.StoredInfoTypes.Create
import Network.Google.DLP.Organizations.Locations.StoredInfoTypes.Delete
import Network.Google.DLP.Organizations.Locations.StoredInfoTypes.Get
import Network.Google.DLP.Organizations.Locations.StoredInfoTypes.List
import Network.Google.DLP.Organizations.Locations.StoredInfoTypes.Patch
import Network.Google.DLP.Organizations.StoredInfoTypes.Create
import Network.Google.DLP.Organizations.StoredInfoTypes.Delete
import Network.Google.DLP.Organizations.StoredInfoTypes.Get
import Network.Google.DLP.Organizations.StoredInfoTypes.List
import Network.Google.DLP.Organizations.StoredInfoTypes.Patch
import Network.Google.DLP.Projects.Content.Deidentify
import Network.Google.DLP.Projects.Content.Inspect
import Network.Google.DLP.Projects.Content.Reidentify
import Network.Google.DLP.Projects.DeidentifyTemplates.Create
import Network.Google.DLP.Projects.DeidentifyTemplates.Delete
import Network.Google.DLP.Projects.DeidentifyTemplates.Get
import Network.Google.DLP.Projects.DeidentifyTemplates.List
import Network.Google.DLP.Projects.DeidentifyTemplates.Patch
import Network.Google.DLP.Projects.DlpJobs.Cancel
import Network.Google.DLP.Projects.DlpJobs.Create
import Network.Google.DLP.Projects.DlpJobs.Delete
import Network.Google.DLP.Projects.DlpJobs.Get
import Network.Google.DLP.Projects.DlpJobs.List
import Network.Google.DLP.Projects.Image.Redact
import Network.Google.DLP.Projects.InspectTemplates.Create
import Network.Google.DLP.Projects.InspectTemplates.Delete
import Network.Google.DLP.Projects.InspectTemplates.Get
import Network.Google.DLP.Projects.InspectTemplates.List
import Network.Google.DLP.Projects.InspectTemplates.Patch
import Network.Google.DLP.Projects.JobTriggers.Activate
import Network.Google.DLP.Projects.JobTriggers.Create
import Network.Google.DLP.Projects.JobTriggers.Delete
import Network.Google.DLP.Projects.JobTriggers.Get
import Network.Google.DLP.Projects.JobTriggers.List
import Network.Google.DLP.Projects.JobTriggers.Patch
import Network.Google.DLP.Projects.Locations.Content.Deidentify
import Network.Google.DLP.Projects.Locations.Content.Inspect
import Network.Google.DLP.Projects.Locations.Content.Reidentify
import Network.Google.DLP.Projects.Locations.DeidentifyTemplates.Create
import Network.Google.DLP.Projects.Locations.DeidentifyTemplates.Delete
import Network.Google.DLP.Projects.Locations.DeidentifyTemplates.Get
import Network.Google.DLP.Projects.Locations.DeidentifyTemplates.List
import Network.Google.DLP.Projects.Locations.DeidentifyTemplates.Patch
import Network.Google.DLP.Projects.Locations.DlpJobs.Cancel
import Network.Google.DLP.Projects.Locations.DlpJobs.Create
import Network.Google.DLP.Projects.Locations.DlpJobs.Delete
import Network.Google.DLP.Projects.Locations.DlpJobs.Finish
import Network.Google.DLP.Projects.Locations.DlpJobs.Get
import Network.Google.DLP.Projects.Locations.DlpJobs.HybridInspect
import Network.Google.DLP.Projects.Locations.DlpJobs.List
import Network.Google.DLP.Projects.Locations.Image.Redact
import Network.Google.DLP.Projects.Locations.InspectTemplates.Create
import Network.Google.DLP.Projects.Locations.InspectTemplates.Delete
import Network.Google.DLP.Projects.Locations.InspectTemplates.Get
import Network.Google.DLP.Projects.Locations.InspectTemplates.List
import Network.Google.DLP.Projects.Locations.InspectTemplates.Patch
import Network.Google.DLP.Projects.Locations.JobTriggers.Activate
import Network.Google.DLP.Projects.Locations.JobTriggers.Create
import Network.Google.DLP.Projects.Locations.JobTriggers.Delete
import Network.Google.DLP.Projects.Locations.JobTriggers.Get
import Network.Google.DLP.Projects.Locations.JobTriggers.HybridInspect
import Network.Google.DLP.Projects.Locations.JobTriggers.List
import Network.Google.DLP.Projects.Locations.JobTriggers.Patch
import Network.Google.DLP.Projects.Locations.StoredInfoTypes.Create
import Network.Google.DLP.Projects.Locations.StoredInfoTypes.Delete
import Network.Google.DLP.Projects.Locations.StoredInfoTypes.Get
import Network.Google.DLP.Projects.Locations.StoredInfoTypes.List
import Network.Google.DLP.Projects.Locations.StoredInfoTypes.Patch
import Network.Google.DLP.Projects.StoredInfoTypes.Create
import Network.Google.DLP.Projects.StoredInfoTypes.Delete
import Network.Google.DLP.Projects.StoredInfoTypes.Get
import Network.Google.DLP.Projects.StoredInfoTypes.List
import Network.Google.DLP.Projects.StoredInfoTypes.Patch
import Network.Google.DLP.Types
