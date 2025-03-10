{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE ImportQualifiedPost #-}
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
-- Module      : Gogol.Analytics.Types
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Gogol.Analytics.Types
  ( -- * Configuration
    analyticsService,

    -- * OAuth Scopes
    Analytics'FullControl,
    Analytics'Edit,
    Analytics'Manage'Users,
    Analytics'Manage'Users'Readonly,
    Analytics'Provision,
    Analytics'Readonly,
    Analytics'User'Deletion,

    -- * Types

    -- ** Account
    Account (..),
    newAccount,

    -- ** Account_ChildLink
    Account_ChildLink (..),
    newAccount_ChildLink,

    -- ** Account_Permissions
    Account_Permissions (..),
    newAccount_Permissions,

    -- ** AccountRef
    AccountRef (..),
    newAccountRef,

    -- ** AccountSummaries
    AccountSummaries (..),
    newAccountSummaries,

    -- ** AccountSummary
    AccountSummary (..),
    newAccountSummary,

    -- ** AccountTicket
    AccountTicket (..),
    newAccountTicket,

    -- ** AccountTreeRequest
    AccountTreeRequest (..),
    newAccountTreeRequest,

    -- ** AccountTreeResponse
    AccountTreeResponse (..),
    newAccountTreeResponse,

    -- ** Accounts
    Accounts (..),
    newAccounts,

    -- ** AdWordsAccount
    AdWordsAccount (..),
    newAdWordsAccount,

    -- ** AnalyticsDataimportDeleteUploadDataRequest
    AnalyticsDataimportDeleteUploadDataRequest (..),
    newAnalyticsDataimportDeleteUploadDataRequest,

    -- ** Column
    Column (..),
    newColumn,

    -- ** Column_Attributes
    Column_Attributes (..),
    newColumn_Attributes,

    -- ** Columns
    Columns (..),
    newColumns,

    -- ** CustomDataSource
    CustomDataSource (..),
    newCustomDataSource,

    -- ** CustomDataSource_ChildLink
    CustomDataSource_ChildLink (..),
    newCustomDataSource_ChildLink,

    -- ** CustomDataSource_ParentLink
    CustomDataSource_ParentLink (..),
    newCustomDataSource_ParentLink,

    -- ** CustomDataSources
    CustomDataSources (..),
    newCustomDataSources,

    -- ** CustomDimension
    CustomDimension (..),
    newCustomDimension,

    -- ** CustomDimension_ParentLink
    CustomDimension_ParentLink (..),
    newCustomDimension_ParentLink,

    -- ** CustomDimensions
    CustomDimensions (..),
    newCustomDimensions,

    -- ** CustomMetric
    CustomMetric (..),
    newCustomMetric,

    -- ** CustomMetric_ParentLink
    CustomMetric_ParentLink (..),
    newCustomMetric_ParentLink,

    -- ** CustomMetrics
    CustomMetrics (..),
    newCustomMetrics,

    -- ** EntityAdWordsLink
    EntityAdWordsLink (..),
    newEntityAdWordsLink,

    -- ** EntityAdWordsLink_Entity
    EntityAdWordsLink_Entity (..),
    newEntityAdWordsLink_Entity,

    -- ** EntityAdWordsLinks
    EntityAdWordsLinks (..),
    newEntityAdWordsLinks,

    -- ** EntityUserLink
    EntityUserLink (..),
    newEntityUserLink,

    -- ** EntityUserLink_Entity
    EntityUserLink_Entity (..),
    newEntityUserLink_Entity,

    -- ** EntityUserLink_Permissions
    EntityUserLink_Permissions (..),
    newEntityUserLink_Permissions,

    -- ** EntityUserLinks
    EntityUserLinks (..),
    newEntityUserLinks,

    -- ** Experiment
    Experiment (..),
    newExperiment,

    -- ** Experiment_ParentLink
    Experiment_ParentLink (..),
    newExperiment_ParentLink,

    -- ** Experiment_VariationsItem
    Experiment_VariationsItem (..),
    newExperiment_VariationsItem,

    -- ** Experiments
    Experiments (..),
    newExperiments,

    -- ** Filter
    Filter (..),
    newFilter,

    -- ** Filter_AdvancedDetails
    Filter_AdvancedDetails (..),
    newFilter_AdvancedDetails,

    -- ** Filter_LowercaseDetails
    Filter_LowercaseDetails (..),
    newFilter_LowercaseDetails,

    -- ** Filter_ParentLink
    Filter_ParentLink (..),
    newFilter_ParentLink,

    -- ** Filter_SearchAndReplaceDetails
    Filter_SearchAndReplaceDetails (..),
    newFilter_SearchAndReplaceDetails,

    -- ** Filter_UppercaseDetails
    Filter_UppercaseDetails (..),
    newFilter_UppercaseDetails,

    -- ** FilterExpression
    FilterExpression (..),
    newFilterExpression,

    -- ** FilterRef
    FilterRef (..),
    newFilterRef,

    -- ** Filters
    Filters (..),
    newFilters,

    -- ** GaData
    GaData (..),
    newGaData,

    -- ** GaData_ColumnHeadersItem
    GaData_ColumnHeadersItem (..),
    newGaData_ColumnHeadersItem,

    -- ** GaData_DataTable
    GaData_DataTable (..),
    newGaData_DataTable,

    -- ** GaData_DataTable_ColsItem
    GaData_DataTable_ColsItem (..),
    newGaData_DataTable_ColsItem,

    -- ** GaData_DataTable_RowsItem
    GaData_DataTable_RowsItem (..),
    newGaData_DataTable_RowsItem,

    -- ** GaData_DataTable_RowsItem_CItem
    GaData_DataTable_RowsItem_CItem (..),
    newGaData_DataTable_RowsItem_CItem,

    -- ** GaData_ProfileInfo
    GaData_ProfileInfo (..),
    newGaData_ProfileInfo,

    -- ** GaData_Query
    GaData_Query (..),
    newGaData_Query,

    -- ** GaData_TotalsForAllResults
    GaData_TotalsForAllResults (..),
    newGaData_TotalsForAllResults,

    -- ** Goal
    Goal (..),
    newGoal,

    -- ** Goal_EventDetails
    Goal_EventDetails (..),
    newGoal_EventDetails,

    -- ** Goal_EventDetails_EventConditionsItem
    Goal_EventDetails_EventConditionsItem (..),
    newGoal_EventDetails_EventConditionsItem,

    -- ** Goal_ParentLink
    Goal_ParentLink (..),
    newGoal_ParentLink,

    -- ** Goal_UrlDestinationDetails
    Goal_UrlDestinationDetails (..),
    newGoal_UrlDestinationDetails,

    -- ** Goal_UrlDestinationDetails_StepsItem
    Goal_UrlDestinationDetails_StepsItem (..),
    newGoal_UrlDestinationDetails_StepsItem,

    -- ** Goal_VisitNumPagesDetails
    Goal_VisitNumPagesDetails (..),
    newGoal_VisitNumPagesDetails,

    -- ** Goal_VisitTimeOnSiteDetails
    Goal_VisitTimeOnSiteDetails (..),
    newGoal_VisitTimeOnSiteDetails,

    -- ** Goals
    Goals (..),
    newGoals,

    -- ** HashClientIdRequest
    HashClientIdRequest (..),
    newHashClientIdRequest,

    -- ** HashClientIdResponse
    HashClientIdResponse (..),
    newHashClientIdResponse,

    -- ** IncludeConditions
    IncludeConditions (..),
    newIncludeConditions,

    -- ** LinkedForeignAccount
    LinkedForeignAccount (..),
    newLinkedForeignAccount,

    -- ** McfData
    McfData (..),
    newMcfData,

    -- ** McfData_ColumnHeadersItem
    McfData_ColumnHeadersItem (..),
    newMcfData_ColumnHeadersItem,

    -- ** McfData_ProfileInfo
    McfData_ProfileInfo (..),
    newMcfData_ProfileInfo,

    -- ** McfData_Query
    McfData_Query (..),
    newMcfData_Query,

    -- ** McfData_RowsItemItem
    McfData_RowsItemItem (..),
    newMcfData_RowsItemItem,

    -- ** McfData_RowsItemItem_ConversionPathValueItem
    McfData_RowsItemItem_ConversionPathValueItem (..),
    newMcfData_RowsItemItem_ConversionPathValueItem,

    -- ** McfData_TotalsForAllResults
    McfData_TotalsForAllResults (..),
    newMcfData_TotalsForAllResults,

    -- ** Profile
    Profile (..),
    newProfile,

    -- ** Profile_ChildLink
    Profile_ChildLink (..),
    newProfile_ChildLink,

    -- ** Profile_ParentLink
    Profile_ParentLink (..),
    newProfile_ParentLink,

    -- ** Profile_Permissions
    Profile_Permissions (..),
    newProfile_Permissions,

    -- ** ProfileFilterLink
    ProfileFilterLink (..),
    newProfileFilterLink,

    -- ** ProfileFilterLinks
    ProfileFilterLinks (..),
    newProfileFilterLinks,

    -- ** ProfileRef
    ProfileRef (..),
    newProfileRef,

    -- ** ProfileSummary
    ProfileSummary (..),
    newProfileSummary,

    -- ** Profiles
    Profiles (..),
    newProfiles,

    -- ** RealtimeData
    RealtimeData (..),
    newRealtimeData,

    -- ** RealtimeData_ColumnHeadersItem
    RealtimeData_ColumnHeadersItem (..),
    newRealtimeData_ColumnHeadersItem,

    -- ** RealtimeData_ProfileInfo
    RealtimeData_ProfileInfo (..),
    newRealtimeData_ProfileInfo,

    -- ** RealtimeData_Query
    RealtimeData_Query (..),
    newRealtimeData_Query,

    -- ** RealtimeData_TotalsForAllResults
    RealtimeData_TotalsForAllResults (..),
    newRealtimeData_TotalsForAllResults,

    -- ** RemarketingAudience
    RemarketingAudience (..),
    newRemarketingAudience,

    -- ** RemarketingAudience_AudienceDefinition
    RemarketingAudience_AudienceDefinition (..),
    newRemarketingAudience_AudienceDefinition,

    -- ** RemarketingAudience_StateBasedAudienceDefinition
    RemarketingAudience_StateBasedAudienceDefinition (..),
    newRemarketingAudience_StateBasedAudienceDefinition,

    -- ** RemarketingAudience_StateBasedAudienceDefinition_ExcludeConditions
    RemarketingAudience_StateBasedAudienceDefinition_ExcludeConditions (..),
    newRemarketingAudience_StateBasedAudienceDefinition_ExcludeConditions,

    -- ** RemarketingAudiences
    RemarketingAudiences (..),
    newRemarketingAudiences,

    -- ** Segment
    Segment (..),
    newSegment,

    -- ** Segments
    Segments (..),
    newSegments,

    -- ** UnsampledReport
    UnsampledReport (..),
    newUnsampledReport,

    -- ** UnsampledReport_CloudStorageDownloadDetails
    UnsampledReport_CloudStorageDownloadDetails (..),
    newUnsampledReport_CloudStorageDownloadDetails,

    -- ** UnsampledReport_DriveDownloadDetails
    UnsampledReport_DriveDownloadDetails (..),
    newUnsampledReport_DriveDownloadDetails,

    -- ** UnsampledReports
    UnsampledReports (..),
    newUnsampledReports,

    -- ** Upload
    Upload (..),
    newUpload,

    -- ** Uploads
    Uploads (..),
    newUploads,

    -- ** UserDeletionRequest
    UserDeletionRequest (..),
    newUserDeletionRequest,

    -- ** UserDeletionRequest_Id
    UserDeletionRequest_Id (..),
    newUserDeletionRequest_Id,

    -- ** UserRef
    UserRef (..),
    newUserRef,

    -- ** WebPropertyRef
    WebPropertyRef (..),
    newWebPropertyRef,

    -- ** WebPropertySummary
    WebPropertySummary (..),
    newWebPropertySummary,

    -- ** Webproperties
    Webproperties (..),
    newWebproperties,

    -- ** Webproperty
    Webproperty (..),
    newWebproperty,

    -- ** Webproperty_ChildLink
    Webproperty_ChildLink (..),
    newWebproperty_ChildLink,

    -- ** Webproperty_ParentLink
    Webproperty_ParentLink (..),
    newWebproperty_ParentLink,

    -- ** Webproperty_Permissions
    Webproperty_Permissions (..),
    newWebproperty_Permissions,

    -- ** DataGaGetOutput
    DataGaGetOutput (..),

    -- ** DataGaGetSamplingLevel
    DataGaGetSamplingLevel (..),

    -- ** DataMcfGetSamplingLevel
    DataMcfGetSamplingLevel (..),
  )
where

import Gogol.Analytics.Internal.Product
import Gogol.Analytics.Internal.Sum
import Gogol.Prelude qualified as Core

-- | Default request referring to version @v3@ of the Google Analytics API. This contains the host and root path used as a starting point for constructing service requests.
analyticsService :: Core.ServiceConfig
analyticsService =
  Core.defaultService
    (Core.ServiceId "analytics:v3")
    "analytics.googleapis.com"

-- | View and manage your Google Analytics data
type Analytics'FullControl =
  "https://www.googleapis.com/auth/analytics"

-- | Edit Google Analytics management entities
type Analytics'Edit =
  "https://www.googleapis.com/auth/analytics.edit"

-- | Manage Google Analytics Account users by email address
type Analytics'Manage'Users =
  "https://www.googleapis.com/auth/analytics.manage.users"

-- | View Google Analytics user permissions
type Analytics'Manage'Users'Readonly =
  "https://www.googleapis.com/auth/analytics.manage.users.readonly"

-- | Create a new Google Analytics account along with its default property and view
type Analytics'Provision =
  "https://www.googleapis.com/auth/analytics.provision"

-- | View your Google Analytics data
type Analytics'Readonly =
  "https://www.googleapis.com/auth/analytics.readonly"

-- | Manage Google Analytics user deletion requests
type Analytics'User'Deletion =
  "https://www.googleapis.com/auth/analytics.user.deletion"
