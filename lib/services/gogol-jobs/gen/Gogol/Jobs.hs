{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.Jobs
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Cloud Talent Solution provides the capability to create, read, update, and delete job postings, as well as search jobs based on keywords and filters.
--
-- /See:/ <https://cloud.google.com/talent-solution/job-search/docs/ Cloud Talent Solution API Reference>
module Gogol.Jobs
  ( -- * Configuration
    jobsService,

    -- * OAuth Scopes
    CloudPlatform'FullControl,
    Jobs'FullControl,

    -- * Resources

    -- ** jobs.projects.operations.get
    JobsProjectsOperationsGetResource,
    JobsProjectsOperationsGet (..),
    newJobsProjectsOperationsGet,

    -- ** jobs.projects.tenants.clientEvents.create
    JobsProjectsTenantsClientEventsCreateResource,
    JobsProjectsTenantsClientEventsCreate (..),
    newJobsProjectsTenantsClientEventsCreate,

    -- ** jobs.projects.tenants.companies.create
    JobsProjectsTenantsCompaniesCreateResource,
    JobsProjectsTenantsCompaniesCreate (..),
    newJobsProjectsTenantsCompaniesCreate,

    -- ** jobs.projects.tenants.companies.delete
    JobsProjectsTenantsCompaniesDeleteResource,
    JobsProjectsTenantsCompaniesDelete (..),
    newJobsProjectsTenantsCompaniesDelete,

    -- ** jobs.projects.tenants.companies.get
    JobsProjectsTenantsCompaniesGetResource,
    JobsProjectsTenantsCompaniesGet (..),
    newJobsProjectsTenantsCompaniesGet,

    -- ** jobs.projects.tenants.companies.list
    JobsProjectsTenantsCompaniesListResource,
    JobsProjectsTenantsCompaniesList (..),
    newJobsProjectsTenantsCompaniesList,

    -- ** jobs.projects.tenants.companies.patch
    JobsProjectsTenantsCompaniesPatchResource,
    JobsProjectsTenantsCompaniesPatch (..),
    newJobsProjectsTenantsCompaniesPatch,

    -- ** jobs.projects.tenants.completeQuery
    JobsProjectsTenantsCompleteQueryResource,
    JobsProjectsTenantsCompleteQuery (..),
    newJobsProjectsTenantsCompleteQuery,

    -- ** jobs.projects.tenants.create
    JobsProjectsTenantsCreateResource,
    JobsProjectsTenantsCreate (..),
    newJobsProjectsTenantsCreate,

    -- ** jobs.projects.tenants.delete
    JobsProjectsTenantsDeleteResource,
    JobsProjectsTenantsDelete (..),
    newJobsProjectsTenantsDelete,

    -- ** jobs.projects.tenants.get
    JobsProjectsTenantsGetResource,
    JobsProjectsTenantsGet (..),
    newJobsProjectsTenantsGet,

    -- ** jobs.projects.tenants.jobs.batchCreate
    JobsProjectsTenantsJobsBatchCreateResource,
    JobsProjectsTenantsJobsBatchCreate (..),
    newJobsProjectsTenantsJobsBatchCreate,

    -- ** jobs.projects.tenants.jobs.batchDelete
    JobsProjectsTenantsJobsBatchDeleteResource,
    JobsProjectsTenantsJobsBatchDelete (..),
    newJobsProjectsTenantsJobsBatchDelete,

    -- ** jobs.projects.tenants.jobs.batchUpdate
    JobsProjectsTenantsJobsBatchUpdateResource,
    JobsProjectsTenantsJobsBatchUpdate (..),
    newJobsProjectsTenantsJobsBatchUpdate,

    -- ** jobs.projects.tenants.jobs.create
    JobsProjectsTenantsJobsCreateResource,
    JobsProjectsTenantsJobsCreate (..),
    newJobsProjectsTenantsJobsCreate,

    -- ** jobs.projects.tenants.jobs.delete
    JobsProjectsTenantsJobsDeleteResource,
    JobsProjectsTenantsJobsDelete (..),
    newJobsProjectsTenantsJobsDelete,

    -- ** jobs.projects.tenants.jobs.get
    JobsProjectsTenantsJobsGetResource,
    JobsProjectsTenantsJobsGet (..),
    newJobsProjectsTenantsJobsGet,

    -- ** jobs.projects.tenants.jobs.list
    JobsProjectsTenantsJobsListResource,
    JobsProjectsTenantsJobsList (..),
    newJobsProjectsTenantsJobsList,

    -- ** jobs.projects.tenants.jobs.patch
    JobsProjectsTenantsJobsPatchResource,
    JobsProjectsTenantsJobsPatch (..),
    newJobsProjectsTenantsJobsPatch,

    -- ** jobs.projects.tenants.jobs.search
    JobsProjectsTenantsJobsSearchResource,
    JobsProjectsTenantsJobsSearch (..),
    newJobsProjectsTenantsJobsSearch,

    -- ** jobs.projects.tenants.jobs.searchForAlert
    JobsProjectsTenantsJobsSearchForAlertResource,
    JobsProjectsTenantsJobsSearchForAlert (..),
    newJobsProjectsTenantsJobsSearchForAlert,

    -- ** jobs.projects.tenants.list
    JobsProjectsTenantsListResource,
    JobsProjectsTenantsList (..),
    newJobsProjectsTenantsList,

    -- ** jobs.projects.tenants.patch
    JobsProjectsTenantsPatchResource,
    JobsProjectsTenantsPatch (..),
    newJobsProjectsTenantsPatch,

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

    -- ** Money
    Money (..),
    newMoney,

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

import Gogol.Jobs.Projects.Operations.Get
import Gogol.Jobs.Projects.Tenants.ClientEvents.Create
import Gogol.Jobs.Projects.Tenants.Companies.Create
import Gogol.Jobs.Projects.Tenants.Companies.Delete
import Gogol.Jobs.Projects.Tenants.Companies.Get
import Gogol.Jobs.Projects.Tenants.Companies.List
import Gogol.Jobs.Projects.Tenants.Companies.Patch
import Gogol.Jobs.Projects.Tenants.CompleteQuery
import Gogol.Jobs.Projects.Tenants.Create
import Gogol.Jobs.Projects.Tenants.Delete
import Gogol.Jobs.Projects.Tenants.Get
import Gogol.Jobs.Projects.Tenants.Jobs.BatchCreate
import Gogol.Jobs.Projects.Tenants.Jobs.BatchDelete
import Gogol.Jobs.Projects.Tenants.Jobs.BatchUpdate
import Gogol.Jobs.Projects.Tenants.Jobs.Create
import Gogol.Jobs.Projects.Tenants.Jobs.Delete
import Gogol.Jobs.Projects.Tenants.Jobs.Get
import Gogol.Jobs.Projects.Tenants.Jobs.List
import Gogol.Jobs.Projects.Tenants.Jobs.Patch
import Gogol.Jobs.Projects.Tenants.Jobs.Search
import Gogol.Jobs.Projects.Tenants.Jobs.SearchForAlert
import Gogol.Jobs.Projects.Tenants.List
import Gogol.Jobs.Projects.Tenants.Patch
import Gogol.Jobs.Types
