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
-- Module      : Gogol.Jobs.Types
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Gogol.Jobs.Types
  ( -- * Configuration
    jobsService,

    -- * OAuth Scopes
    cloudPlatformScope,
    jobsScope,

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

import Gogol.Jobs.Internal.Product
import Gogol.Jobs.Internal.Sum
import qualified Gogol.Prelude as Core

-- | Default request referring to version @v4@ of the Cloud Talent Solution API. This contains the host and root path used as a starting point for constructing service requests.
jobsService :: Core.ServiceConfig
jobsService =
  Core.defaultService
    (Core.ServiceId "jobs:v4")
    "jobs.googleapis.com"

-- | See, edit, configure, and delete your Google Cloud data and see the email address for your Google Account.
cloudPlatformScope :: Core.Proxy '["https://www.googleapis.com/auth/cloud-platform"]
cloudPlatformScope = Core.Proxy

-- | Manage job postings
jobsScope :: Core.Proxy '["https://www.googleapis.com/auth/jobs"]
jobsScope = Core.Proxy
