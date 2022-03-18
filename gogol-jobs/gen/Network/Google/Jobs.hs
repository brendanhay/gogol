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
-- Module      : Network.Google.Jobs
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Cloud Talent Solution provides the capability to create, read, update, and delete job postings, as well as search jobs based on keywords and filters.
--
-- /See:/ <https://cloud.google.com/talent-solution/job-search/docs/ Cloud Talent Solution API Reference>
module Network.Google.Jobs
  ( -- * Configuration
    jobsService,

    -- * OAuth Scopes
    cloudPlatformScope,
    jobsScope,

    -- * Resources

    -- ** jobs.projects.operations.get
    JobsProjectsOperationsGetResource,
    newJobsProjectsOperationsGet,
    JobsProjectsOperationsGet,

    -- ** jobs.projects.tenants.clientEvents.create
    JobsProjectsTenantsClientEventsCreateResource,
    newJobsProjectsTenantsClientEventsCreate,
    JobsProjectsTenantsClientEventsCreate,

    -- ** jobs.projects.tenants.companies.create
    JobsProjectsTenantsCompaniesCreateResource,
    newJobsProjectsTenantsCompaniesCreate,
    JobsProjectsTenantsCompaniesCreate,

    -- ** jobs.projects.tenants.companies.delete
    JobsProjectsTenantsCompaniesDeleteResource,
    newJobsProjectsTenantsCompaniesDelete,
    JobsProjectsTenantsCompaniesDelete,

    -- ** jobs.projects.tenants.companies.get
    JobsProjectsTenantsCompaniesGetResource,
    newJobsProjectsTenantsCompaniesGet,
    JobsProjectsTenantsCompaniesGet,

    -- ** jobs.projects.tenants.companies.list
    JobsProjectsTenantsCompaniesListResource,
    newJobsProjectsTenantsCompaniesList,
    JobsProjectsTenantsCompaniesList,

    -- ** jobs.projects.tenants.companies.patch
    JobsProjectsTenantsCompaniesPatchResource,
    newJobsProjectsTenantsCompaniesPatch,
    JobsProjectsTenantsCompaniesPatch,

    -- ** jobs.projects.tenants.completeQuery
    JobsProjectsTenantsCompleteQueryResource,
    newJobsProjectsTenantsCompleteQuery,
    JobsProjectsTenantsCompleteQuery,

    -- ** jobs.projects.tenants.create
    JobsProjectsTenantsCreateResource,
    newJobsProjectsTenantsCreate,
    JobsProjectsTenantsCreate,

    -- ** jobs.projects.tenants.delete
    JobsProjectsTenantsDeleteResource,
    newJobsProjectsTenantsDelete,
    JobsProjectsTenantsDelete,

    -- ** jobs.projects.tenants.get
    JobsProjectsTenantsGetResource,
    newJobsProjectsTenantsGet,
    JobsProjectsTenantsGet,

    -- ** jobs.projects.tenants.jobs.batchCreate
    JobsProjectsTenantsJobsBatchCreateResource,
    newJobsProjectsTenantsJobsBatchCreate,
    JobsProjectsTenantsJobsBatchCreate,

    -- ** jobs.projects.tenants.jobs.batchDelete
    JobsProjectsTenantsJobsBatchDeleteResource,
    newJobsProjectsTenantsJobsBatchDelete,
    JobsProjectsTenantsJobsBatchDelete,

    -- ** jobs.projects.tenants.jobs.batchUpdate
    JobsProjectsTenantsJobsBatchUpdateResource,
    newJobsProjectsTenantsJobsBatchUpdate,
    JobsProjectsTenantsJobsBatchUpdate,

    -- ** jobs.projects.tenants.jobs.create
    JobsProjectsTenantsJobsCreateResource,
    newJobsProjectsTenantsJobsCreate,
    JobsProjectsTenantsJobsCreate,

    -- ** jobs.projects.tenants.jobs.delete
    JobsProjectsTenantsJobsDeleteResource,
    newJobsProjectsTenantsJobsDelete,
    JobsProjectsTenantsJobsDelete,

    -- ** jobs.projects.tenants.jobs.get
    JobsProjectsTenantsJobsGetResource,
    newJobsProjectsTenantsJobsGet,
    JobsProjectsTenantsJobsGet,

    -- ** jobs.projects.tenants.jobs.list
    JobsProjectsTenantsJobsListResource,
    newJobsProjectsTenantsJobsList,
    JobsProjectsTenantsJobsList,

    -- ** jobs.projects.tenants.jobs.patch
    JobsProjectsTenantsJobsPatchResource,
    newJobsProjectsTenantsJobsPatch,
    JobsProjectsTenantsJobsPatch,

    -- ** jobs.projects.tenants.jobs.search
    JobsProjectsTenantsJobsSearchResource,
    newJobsProjectsTenantsJobsSearch,
    JobsProjectsTenantsJobsSearch,

    -- ** jobs.projects.tenants.jobs.searchForAlert
    JobsProjectsTenantsJobsSearchForAlertResource,
    newJobsProjectsTenantsJobsSearchForAlert,
    JobsProjectsTenantsJobsSearchForAlert,

    -- ** jobs.projects.tenants.list
    JobsProjectsTenantsListResource,
    newJobsProjectsTenantsList,
    JobsProjectsTenantsList,

    -- ** jobs.projects.tenants.patch
    JobsProjectsTenantsPatchResource,
    newJobsProjectsTenantsPatch,
    JobsProjectsTenantsPatch,

    -- * Types

    -- ** Xgafv
    Xgafv (..),

    -- ** ApplicationInfo
    ApplicationInfo (..),
    newApplicationInfo,

    -- ** BatchCreateJobsRequest
    BatchCreateJobsRequest (..),
    newBatchCreateJobsRequest,

    -- ** BatchCreateJobsResponse
    BatchCreateJobsResponse (..),
    newBatchCreateJobsResponse,

    -- ** BatchDeleteJobsRequest
    BatchDeleteJobsRequest (..),
    newBatchDeleteJobsRequest,

    -- ** BatchDeleteJobsResponse
    BatchDeleteJobsResponse (..),
    newBatchDeleteJobsResponse,

    -- ** BatchOperationMetadata
    BatchOperationMetadata (..),
    newBatchOperationMetadata,

    -- ** BatchOperationMetadata_State
    BatchOperationMetadata_State (..),

    -- ** BatchUpdateJobsRequest
    BatchUpdateJobsRequest (..),
    newBatchUpdateJobsRequest,

    -- ** BatchUpdateJobsResponse
    BatchUpdateJobsResponse (..),
    newBatchUpdateJobsResponse,

    -- ** ClientEvent
    ClientEvent (..),
    newClientEvent,

    -- ** CommuteFilter
    CommuteFilter (..),
    newCommuteFilter,

    -- ** CommuteFilter_CommuteMethod
    CommuteFilter_CommuteMethod (..),

    -- ** CommuteFilter_RoadTraffic
    CommuteFilter_RoadTraffic (..),

    -- ** CommuteInfo
    CommuteInfo (..),
    newCommuteInfo,

    -- ** Company
    Company (..),
    newCompany,

    -- ** Company_Size
    Company_Size (..),

    -- ** CompanyDerivedInfo
    CompanyDerivedInfo (..),
    newCompanyDerivedInfo,

    -- ** CompensationEntry
    CompensationEntry (..),
    newCompensationEntry,

    -- ** CompensationEntry_Type
    CompensationEntry_Type (..),

    -- ** CompensationEntry_Unit
    CompensationEntry_Unit (..),

    -- ** CompensationFilter
    CompensationFilter (..),
    newCompensationFilter,

    -- ** CompensationFilter_Type
    CompensationFilter_Type (..),

    -- ** CompensationFilter_UnitsItem
    CompensationFilter_UnitsItem (..),

    -- ** CompensationInfo
    CompensationInfo (..),
    newCompensationInfo,

    -- ** CompensationRange
    CompensationRange (..),
    newCompensationRange,

    -- ** CompleteQueryResponse
    CompleteQueryResponse (..),
    newCompleteQueryResponse,

    -- ** CompletionResult
    CompletionResult (..),
    newCompletionResult,

    -- ** CompletionResult_Type
    CompletionResult_Type (..),

    -- ** CustomAttribute
    CustomAttribute (..),
    newCustomAttribute,

    -- ** CustomRankingInfo
    CustomRankingInfo (..),
    newCustomRankingInfo,

    -- ** CustomRankingInfo_ImportanceLevel
    CustomRankingInfo_ImportanceLevel (..),

    -- ** DeviceInfo
    DeviceInfo (..),
    newDeviceInfo,

    -- ** DeviceInfo_DeviceType
    DeviceInfo_DeviceType (..),

    -- ** Empty
    Empty (..),
    newEmpty,

    -- ** HistogramQuery
    HistogramQuery (..),
    newHistogramQuery,

    -- ** HistogramQueryResult
    HistogramQueryResult (..),
    newHistogramQueryResult,

    -- ** HistogramQueryResult_Histogram
    HistogramQueryResult_Histogram (..),
    newHistogramQueryResult_Histogram,

    -- ** Job
    Job (..),
    newJob,

    -- ** Job_CustomAttributes
    Job_CustomAttributes (..),
    newJob_CustomAttributes,

    -- ** Job_DegreeTypesItem
    Job_DegreeTypesItem (..),

    -- ** Job_EmploymentTypesItem
    Job_EmploymentTypesItem (..),

    -- ** Job_JobBenefitsItem
    Job_JobBenefitsItem (..),

    -- ** Job_JobLevel
    Job_JobLevel (..),

    -- ** Job_PostingRegion
    Job_PostingRegion (..),

    -- ** Job_Visibility
    Job_Visibility (..),

    -- ** JobDerivedInfo
    JobDerivedInfo (..),
    newJobDerivedInfo,

    -- ** JobDerivedInfo_JobCategoriesItem
    JobDerivedInfo_JobCategoriesItem (..),

    -- ** JobEvent
    JobEvent (..),
    newJobEvent,

    -- ** JobEvent_Type
    JobEvent_Type (..),

    -- ** JobQuery
    JobQuery (..),
    newJobQuery,

    -- ** JobQuery_EmploymentTypesItem
    JobQuery_EmploymentTypesItem (..),

    -- ** JobQuery_JobCategoriesItem
    JobQuery_JobCategoriesItem (..),

    -- ** JobResult
    JobResult (..),
    newJobResult,

    -- ** LatLng
    LatLng (..),
    newLatLng,

    -- ** ListCompaniesResponse
    ListCompaniesResponse (..),
    newListCompaniesResponse,

    -- ** ListJobsResponse
    ListJobsResponse (..),
    newListJobsResponse,

    -- ** ListTenantsResponse
    ListTenantsResponse (..),
    newListTenantsResponse,

    -- ** Location
    Location (..),
    newLocation,

    -- ** Location_LocationType
    Location_LocationType (..),

    -- ** LocationFilter
    LocationFilter (..),
    newLocationFilter,

    -- ** LocationFilter_TelecommutePreference
    LocationFilter_TelecommutePreference (..),

    -- ** MatchingJob
    MatchingJob (..),
    newMatchingJob,

    -- ** MendelDebugInput
    MendelDebugInput (..),
    newMendelDebugInput,

    -- ** MendelDebugInput_NamespacedDebugInput
    MendelDebugInput_NamespacedDebugInput (..),
    newMendelDebugInput_NamespacedDebugInput,

    -- ** Money
    Money (..),
    newMoney,

    -- ** NamespacedDebugInput
    NamespacedDebugInput (..),
    newNamespacedDebugInput,

    -- ** NamespacedDebugInput_ForcedFlags
    NamespacedDebugInput_ForcedFlags (..),
    newNamespacedDebugInput_ForcedFlags,

    -- ** NamespacedDebugInput_ForcedRollouts
    NamespacedDebugInput_ForcedRollouts (..),
    newNamespacedDebugInput_ForcedRollouts,

    -- ** Operation
    Operation (..),
    newOperation,

    -- ** Operation_Metadata
    Operation_Metadata (..),
    newOperation_Metadata,

    -- ** Operation_Response
    Operation_Response (..),
    newOperation_Response,

    -- ** PostalAddress
    PostalAddress (..),
    newPostalAddress,

    -- ** ProcessingOptions
    ProcessingOptions (..),
    newProcessingOptions,

    -- ** ProcessingOptions_HtmlSanitization
    ProcessingOptions_HtmlSanitization (..),

    -- ** RequestMetadata
    RequestMetadata (..),
    newRequestMetadata,

    -- ** ResponseMetadata
    ResponseMetadata (..),
    newResponseMetadata,

    -- ** SearchJobsRequest
    SearchJobsRequest (..),
    newSearchJobsRequest,

    -- ** SearchJobsRequest_DiversificationLevel
    SearchJobsRequest_DiversificationLevel (..),

    -- ** SearchJobsRequest_JobView
    SearchJobsRequest_JobView (..),

    -- ** SearchJobsRequest_KeywordMatchMode
    SearchJobsRequest_KeywordMatchMode (..),

    -- ** SearchJobsRequest_SearchMode
    SearchJobsRequest_SearchMode (..),

    -- ** SearchJobsResponse
    SearchJobsResponse (..),
    newSearchJobsResponse,

    -- ** SpellingCorrection
    SpellingCorrection (..),
    newSpellingCorrection,

    -- ** Status
    Status (..),
    newStatus,

    -- ** Status_DetailsItem
    Status_DetailsItem (..),
    newStatus_DetailsItem,

    -- ** Tenant
    Tenant (..),
    newTenant,

    -- ** TimeOfDay'
    TimeOfDay' (..),
    newTimeOfDay,

    -- ** TimestampRange
    TimestampRange (..),
    newTimestampRange,

    -- ** ProjectsTenantsCompleteQueryScope
    ProjectsTenantsCompleteQueryScope (..),

    -- ** ProjectsTenantsCompleteQueryType
    ProjectsTenantsCompleteQueryType (..),

    -- ** ProjectsTenantsJobsListJobView
    ProjectsTenantsJobsListJobView (..),
  )
where

import Network.Google.Jobs.Projects.Operations.Get
import Network.Google.Jobs.Projects.Tenants.ClientEvents.Create
import Network.Google.Jobs.Projects.Tenants.Companies.Create
import Network.Google.Jobs.Projects.Tenants.Companies.Delete
import Network.Google.Jobs.Projects.Tenants.Companies.Get
import Network.Google.Jobs.Projects.Tenants.Companies.List
import Network.Google.Jobs.Projects.Tenants.Companies.Patch
import Network.Google.Jobs.Projects.Tenants.CompleteQuery
import Network.Google.Jobs.Projects.Tenants.Create
import Network.Google.Jobs.Projects.Tenants.Delete
import Network.Google.Jobs.Projects.Tenants.Get
import Network.Google.Jobs.Projects.Tenants.Jobs.BatchCreate
import Network.Google.Jobs.Projects.Tenants.Jobs.BatchDelete
import Network.Google.Jobs.Projects.Tenants.Jobs.BatchUpdate
import Network.Google.Jobs.Projects.Tenants.Jobs.Create
import Network.Google.Jobs.Projects.Tenants.Jobs.Delete
import Network.Google.Jobs.Projects.Tenants.Jobs.Get
import Network.Google.Jobs.Projects.Tenants.Jobs.List
import Network.Google.Jobs.Projects.Tenants.Jobs.Patch
import Network.Google.Jobs.Projects.Tenants.Jobs.Search
import Network.Google.Jobs.Projects.Tenants.Jobs.SearchForAlert
import Network.Google.Jobs.Projects.Tenants.List
import Network.Google.Jobs.Projects.Tenants.Patch
import Network.Google.Jobs.Types
