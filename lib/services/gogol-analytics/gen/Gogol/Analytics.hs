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
-- Module      : Gogol.Analytics
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Views and manages your Google Analytics data.
--
-- /See:/ <https://developers.google.com/analytics/ Google Analytics API Reference>
module Gogol.Analytics
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

    -- * Resources

    -- ** analytics.data.ga.get
    AnalyticsDataGaGetResource,
    AnalyticsDataGaGet (..),
    newAnalyticsDataGaGet,

    -- ** analytics.data.mcf.get
    AnalyticsDataMcfGetResource,
    AnalyticsDataMcfGet (..),
    newAnalyticsDataMcfGet,

    -- ** analytics.data.realtime.get
    AnalyticsDataRealtimeGetResource,
    AnalyticsDataRealtimeGet (..),
    newAnalyticsDataRealtimeGet,

    -- ** analytics.management.accountSummaries.list
    AnalyticsManagementAccountSummariesListResource,
    AnalyticsManagementAccountSummariesList (..),
    newAnalyticsManagementAccountSummariesList,

    -- ** analytics.management.accountUserLinks.delete
    AnalyticsManagementAccountUserLinksDeleteResource,
    AnalyticsManagementAccountUserLinksDelete (..),
    newAnalyticsManagementAccountUserLinksDelete,

    -- ** analytics.management.accountUserLinks.insert
    AnalyticsManagementAccountUserLinksInsertResource,
    AnalyticsManagementAccountUserLinksInsert (..),
    newAnalyticsManagementAccountUserLinksInsert,

    -- ** analytics.management.accountUserLinks.list
    AnalyticsManagementAccountUserLinksListResource,
    AnalyticsManagementAccountUserLinksList (..),
    newAnalyticsManagementAccountUserLinksList,

    -- ** analytics.management.accountUserLinks.update
    AnalyticsManagementAccountUserLinksUpdateResource,
    AnalyticsManagementAccountUserLinksUpdate (..),
    newAnalyticsManagementAccountUserLinksUpdate,

    -- ** analytics.management.accounts.list
    AnalyticsManagementAccountsListResource,
    AnalyticsManagementAccountsList (..),
    newAnalyticsManagementAccountsList,

    -- ** analytics.management.clientId.hashClientId
    AnalyticsManagementClientIdHashClientIdResource,
    AnalyticsManagementClientIdHashClientId (..),
    newAnalyticsManagementClientIdHashClientId,

    -- ** analytics.management.customDataSources.list
    AnalyticsManagementCustomDataSourcesListResource,
    AnalyticsManagementCustomDataSourcesList (..),
    newAnalyticsManagementCustomDataSourcesList,

    -- ** analytics.management.customDimensions.get
    AnalyticsManagementCustomDimensionsGetResource,
    AnalyticsManagementCustomDimensionsGet (..),
    newAnalyticsManagementCustomDimensionsGet,

    -- ** analytics.management.customDimensions.insert
    AnalyticsManagementCustomDimensionsInsertResource,
    AnalyticsManagementCustomDimensionsInsert (..),
    newAnalyticsManagementCustomDimensionsInsert,

    -- ** analytics.management.customDimensions.list
    AnalyticsManagementCustomDimensionsListResource,
    AnalyticsManagementCustomDimensionsList (..),
    newAnalyticsManagementCustomDimensionsList,

    -- ** analytics.management.customDimensions.patch
    AnalyticsManagementCustomDimensionsPatchResource,
    AnalyticsManagementCustomDimensionsPatch (..),
    newAnalyticsManagementCustomDimensionsPatch,

    -- ** analytics.management.customDimensions.update
    AnalyticsManagementCustomDimensionsUpdateResource,
    AnalyticsManagementCustomDimensionsUpdate (..),
    newAnalyticsManagementCustomDimensionsUpdate,

    -- ** analytics.management.customMetrics.get
    AnalyticsManagementCustomMetricsGetResource,
    AnalyticsManagementCustomMetricsGet (..),
    newAnalyticsManagementCustomMetricsGet,

    -- ** analytics.management.customMetrics.insert
    AnalyticsManagementCustomMetricsInsertResource,
    AnalyticsManagementCustomMetricsInsert (..),
    newAnalyticsManagementCustomMetricsInsert,

    -- ** analytics.management.customMetrics.list
    AnalyticsManagementCustomMetricsListResource,
    AnalyticsManagementCustomMetricsList (..),
    newAnalyticsManagementCustomMetricsList,

    -- ** analytics.management.customMetrics.patch
    AnalyticsManagementCustomMetricsPatchResource,
    AnalyticsManagementCustomMetricsPatch (..),
    newAnalyticsManagementCustomMetricsPatch,

    -- ** analytics.management.customMetrics.update
    AnalyticsManagementCustomMetricsUpdateResource,
    AnalyticsManagementCustomMetricsUpdate (..),
    newAnalyticsManagementCustomMetricsUpdate,

    -- ** analytics.management.experiments.delete
    AnalyticsManagementExperimentsDeleteResource,
    AnalyticsManagementExperimentsDelete (..),
    newAnalyticsManagementExperimentsDelete,

    -- ** analytics.management.experiments.get
    AnalyticsManagementExperimentsGetResource,
    AnalyticsManagementExperimentsGet (..),
    newAnalyticsManagementExperimentsGet,

    -- ** analytics.management.experiments.insert
    AnalyticsManagementExperimentsInsertResource,
    AnalyticsManagementExperimentsInsert (..),
    newAnalyticsManagementExperimentsInsert,

    -- ** analytics.management.experiments.list
    AnalyticsManagementExperimentsListResource,
    AnalyticsManagementExperimentsList (..),
    newAnalyticsManagementExperimentsList,

    -- ** analytics.management.experiments.patch
    AnalyticsManagementExperimentsPatchResource,
    AnalyticsManagementExperimentsPatch (..),
    newAnalyticsManagementExperimentsPatch,

    -- ** analytics.management.experiments.update
    AnalyticsManagementExperimentsUpdateResource,
    AnalyticsManagementExperimentsUpdate (..),
    newAnalyticsManagementExperimentsUpdate,

    -- ** analytics.management.filters.delete
    AnalyticsManagementFiltersDeleteResource,
    AnalyticsManagementFiltersDelete (..),
    newAnalyticsManagementFiltersDelete,

    -- ** analytics.management.filters.get
    AnalyticsManagementFiltersGetResource,
    AnalyticsManagementFiltersGet (..),
    newAnalyticsManagementFiltersGet,

    -- ** analytics.management.filters.insert
    AnalyticsManagementFiltersInsertResource,
    AnalyticsManagementFiltersInsert (..),
    newAnalyticsManagementFiltersInsert,

    -- ** analytics.management.filters.list
    AnalyticsManagementFiltersListResource,
    AnalyticsManagementFiltersList (..),
    newAnalyticsManagementFiltersList,

    -- ** analytics.management.filters.patch
    AnalyticsManagementFiltersPatchResource,
    AnalyticsManagementFiltersPatch (..),
    newAnalyticsManagementFiltersPatch,

    -- ** analytics.management.filters.update
    AnalyticsManagementFiltersUpdateResource,
    AnalyticsManagementFiltersUpdate (..),
    newAnalyticsManagementFiltersUpdate,

    -- ** analytics.management.goals.get
    AnalyticsManagementGoalsGetResource,
    AnalyticsManagementGoalsGet (..),
    newAnalyticsManagementGoalsGet,

    -- ** analytics.management.goals.insert
    AnalyticsManagementGoalsInsertResource,
    AnalyticsManagementGoalsInsert (..),
    newAnalyticsManagementGoalsInsert,

    -- ** analytics.management.goals.list
    AnalyticsManagementGoalsListResource,
    AnalyticsManagementGoalsList (..),
    newAnalyticsManagementGoalsList,

    -- ** analytics.management.goals.patch
    AnalyticsManagementGoalsPatchResource,
    AnalyticsManagementGoalsPatch (..),
    newAnalyticsManagementGoalsPatch,

    -- ** analytics.management.goals.update
    AnalyticsManagementGoalsUpdateResource,
    AnalyticsManagementGoalsUpdate (..),
    newAnalyticsManagementGoalsUpdate,

    -- ** analytics.management.profileFilterLinks.delete
    AnalyticsManagementProfileFilterLinksDeleteResource,
    AnalyticsManagementProfileFilterLinksDelete (..),
    newAnalyticsManagementProfileFilterLinksDelete,

    -- ** analytics.management.profileFilterLinks.get
    AnalyticsManagementProfileFilterLinksGetResource,
    AnalyticsManagementProfileFilterLinksGet (..),
    newAnalyticsManagementProfileFilterLinksGet,

    -- ** analytics.management.profileFilterLinks.insert
    AnalyticsManagementProfileFilterLinksInsertResource,
    AnalyticsManagementProfileFilterLinksInsert (..),
    newAnalyticsManagementProfileFilterLinksInsert,

    -- ** analytics.management.profileFilterLinks.list
    AnalyticsManagementProfileFilterLinksListResource,
    AnalyticsManagementProfileFilterLinksList (..),
    newAnalyticsManagementProfileFilterLinksList,

    -- ** analytics.management.profileFilterLinks.patch
    AnalyticsManagementProfileFilterLinksPatchResource,
    AnalyticsManagementProfileFilterLinksPatch (..),
    newAnalyticsManagementProfileFilterLinksPatch,

    -- ** analytics.management.profileFilterLinks.update
    AnalyticsManagementProfileFilterLinksUpdateResource,
    AnalyticsManagementProfileFilterLinksUpdate (..),
    newAnalyticsManagementProfileFilterLinksUpdate,

    -- ** analytics.management.profileUserLinks.delete
    AnalyticsManagementProfileUserLinksDeleteResource,
    AnalyticsManagementProfileUserLinksDelete (..),
    newAnalyticsManagementProfileUserLinksDelete,

    -- ** analytics.management.profileUserLinks.insert
    AnalyticsManagementProfileUserLinksInsertResource,
    AnalyticsManagementProfileUserLinksInsert (..),
    newAnalyticsManagementProfileUserLinksInsert,

    -- ** analytics.management.profileUserLinks.list
    AnalyticsManagementProfileUserLinksListResource,
    AnalyticsManagementProfileUserLinksList (..),
    newAnalyticsManagementProfileUserLinksList,

    -- ** analytics.management.profileUserLinks.update
    AnalyticsManagementProfileUserLinksUpdateResource,
    AnalyticsManagementProfileUserLinksUpdate (..),
    newAnalyticsManagementProfileUserLinksUpdate,

    -- ** analytics.management.profiles.delete
    AnalyticsManagementProfilesDeleteResource,
    AnalyticsManagementProfilesDelete (..),
    newAnalyticsManagementProfilesDelete,

    -- ** analytics.management.profiles.get
    AnalyticsManagementProfilesGetResource,
    AnalyticsManagementProfilesGet (..),
    newAnalyticsManagementProfilesGet,

    -- ** analytics.management.profiles.insert
    AnalyticsManagementProfilesInsertResource,
    AnalyticsManagementProfilesInsert (..),
    newAnalyticsManagementProfilesInsert,

    -- ** analytics.management.profiles.list
    AnalyticsManagementProfilesListResource,
    AnalyticsManagementProfilesList (..),
    newAnalyticsManagementProfilesList,

    -- ** analytics.management.profiles.patch
    AnalyticsManagementProfilesPatchResource,
    AnalyticsManagementProfilesPatch (..),
    newAnalyticsManagementProfilesPatch,

    -- ** analytics.management.profiles.update
    AnalyticsManagementProfilesUpdateResource,
    AnalyticsManagementProfilesUpdate (..),
    newAnalyticsManagementProfilesUpdate,

    -- ** analytics.management.remarketingAudience.delete
    AnalyticsManagementRemarketingAudienceDeleteResource,
    AnalyticsManagementRemarketingAudienceDelete (..),
    newAnalyticsManagementRemarketingAudienceDelete,

    -- ** analytics.management.remarketingAudience.get
    AnalyticsManagementRemarketingAudienceGetResource,
    AnalyticsManagementRemarketingAudienceGet (..),
    newAnalyticsManagementRemarketingAudienceGet,

    -- ** analytics.management.remarketingAudience.insert
    AnalyticsManagementRemarketingAudienceInsertResource,
    AnalyticsManagementRemarketingAudienceInsert (..),
    newAnalyticsManagementRemarketingAudienceInsert,

    -- ** analytics.management.remarketingAudience.list
    AnalyticsManagementRemarketingAudienceListResource,
    AnalyticsManagementRemarketingAudienceList (..),
    newAnalyticsManagementRemarketingAudienceList,

    -- ** analytics.management.remarketingAudience.patch
    AnalyticsManagementRemarketingAudiencePatchResource,
    AnalyticsManagementRemarketingAudiencePatch (..),
    newAnalyticsManagementRemarketingAudiencePatch,

    -- ** analytics.management.remarketingAudience.update
    AnalyticsManagementRemarketingAudienceUpdateResource,
    AnalyticsManagementRemarketingAudienceUpdate (..),
    newAnalyticsManagementRemarketingAudienceUpdate,

    -- ** analytics.management.segments.list
    AnalyticsManagementSegmentsListResource,
    AnalyticsManagementSegmentsList (..),
    newAnalyticsManagementSegmentsList,

    -- ** analytics.management.unsampledReports.delete
    AnalyticsManagementUnsampledReportsDeleteResource,
    AnalyticsManagementUnsampledReportsDelete (..),
    newAnalyticsManagementUnsampledReportsDelete,

    -- ** analytics.management.unsampledReports.get
    AnalyticsManagementUnsampledReportsGetResource,
    AnalyticsManagementUnsampledReportsGet (..),
    newAnalyticsManagementUnsampledReportsGet,

    -- ** analytics.management.unsampledReports.insert
    AnalyticsManagementUnsampledReportsInsertResource,
    AnalyticsManagementUnsampledReportsInsert (..),
    newAnalyticsManagementUnsampledReportsInsert,

    -- ** analytics.management.unsampledReports.list
    AnalyticsManagementUnsampledReportsListResource,
    AnalyticsManagementUnsampledReportsList (..),
    newAnalyticsManagementUnsampledReportsList,

    -- ** analytics.management.uploads.deleteUploadData
    AnalyticsManagementUploadsDeleteUploadDataResource,
    AnalyticsManagementUploadsDeleteUploadData (..),
    newAnalyticsManagementUploadsDeleteUploadData,

    -- ** analytics.management.uploads.get
    AnalyticsManagementUploadsGetResource,
    AnalyticsManagementUploadsGet (..),
    newAnalyticsManagementUploadsGet,

    -- ** analytics.management.uploads.list
    AnalyticsManagementUploadsListResource,
    AnalyticsManagementUploadsList (..),
    newAnalyticsManagementUploadsList,

    -- ** analytics.management.uploads.uploadData
    AnalyticsManagementUploadsUploadDataResource,
    AnalyticsManagementUploadsUploadData (..),
    newAnalyticsManagementUploadsUploadData,

    -- ** analytics.management.webPropertyAdWordsLinks.delete
    AnalyticsManagementWebPropertyAdWordsLinksDeleteResource,
    AnalyticsManagementWebPropertyAdWordsLinksDelete (..),
    newAnalyticsManagementWebPropertyAdWordsLinksDelete,

    -- ** analytics.management.webPropertyAdWordsLinks.get
    AnalyticsManagementWebPropertyAdWordsLinksGetResource,
    AnalyticsManagementWebPropertyAdWordsLinksGet (..),
    newAnalyticsManagementWebPropertyAdWordsLinksGet,

    -- ** analytics.management.webPropertyAdWordsLinks.insert
    AnalyticsManagementWebPropertyAdWordsLinksInsertResource,
    AnalyticsManagementWebPropertyAdWordsLinksInsert (..),
    newAnalyticsManagementWebPropertyAdWordsLinksInsert,

    -- ** analytics.management.webPropertyAdWordsLinks.list
    AnalyticsManagementWebPropertyAdWordsLinksListResource,
    AnalyticsManagementWebPropertyAdWordsLinksList (..),
    newAnalyticsManagementWebPropertyAdWordsLinksList,

    -- ** analytics.management.webPropertyAdWordsLinks.patch
    AnalyticsManagementWebPropertyAdWordsLinksPatchResource,
    AnalyticsManagementWebPropertyAdWordsLinksPatch (..),
    newAnalyticsManagementWebPropertyAdWordsLinksPatch,

    -- ** analytics.management.webPropertyAdWordsLinks.update
    AnalyticsManagementWebPropertyAdWordsLinksUpdateResource,
    AnalyticsManagementWebPropertyAdWordsLinksUpdate (..),
    newAnalyticsManagementWebPropertyAdWordsLinksUpdate,

    -- ** analytics.management.webproperties.get
    AnalyticsManagementWebpropertiesGetResource,
    AnalyticsManagementWebpropertiesGet (..),
    newAnalyticsManagementWebpropertiesGet,

    -- ** analytics.management.webproperties.insert
    AnalyticsManagementWebpropertiesInsertResource,
    AnalyticsManagementWebpropertiesInsert (..),
    newAnalyticsManagementWebpropertiesInsert,

    -- ** analytics.management.webproperties.list
    AnalyticsManagementWebpropertiesListResource,
    AnalyticsManagementWebpropertiesList (..),
    newAnalyticsManagementWebpropertiesList,

    -- ** analytics.management.webproperties.patch
    AnalyticsManagementWebpropertiesPatchResource,
    AnalyticsManagementWebpropertiesPatch (..),
    newAnalyticsManagementWebpropertiesPatch,

    -- ** analytics.management.webproperties.update
    AnalyticsManagementWebpropertiesUpdateResource,
    AnalyticsManagementWebpropertiesUpdate (..),
    newAnalyticsManagementWebpropertiesUpdate,

    -- ** analytics.management.webpropertyUserLinks.delete
    AnalyticsManagementWebpropertyUserLinksDeleteResource,
    AnalyticsManagementWebpropertyUserLinksDelete (..),
    newAnalyticsManagementWebpropertyUserLinksDelete,

    -- ** analytics.management.webpropertyUserLinks.insert
    AnalyticsManagementWebpropertyUserLinksInsertResource,
    AnalyticsManagementWebpropertyUserLinksInsert (..),
    newAnalyticsManagementWebpropertyUserLinksInsert,

    -- ** analytics.management.webpropertyUserLinks.list
    AnalyticsManagementWebpropertyUserLinksListResource,
    AnalyticsManagementWebpropertyUserLinksList (..),
    newAnalyticsManagementWebpropertyUserLinksList,

    -- ** analytics.management.webpropertyUserLinks.update
    AnalyticsManagementWebpropertyUserLinksUpdateResource,
    AnalyticsManagementWebpropertyUserLinksUpdate (..),
    newAnalyticsManagementWebpropertyUserLinksUpdate,

    -- ** analytics.metadata.columns.list
    AnalyticsMetadataColumnsListResource,
    AnalyticsMetadataColumnsList (..),
    newAnalyticsMetadataColumnsList,

    -- ** analytics.provisioning.createAccountTicket
    AnalyticsProvisioningCreateAccountTicketResource,
    AnalyticsProvisioningCreateAccountTicket (..),
    newAnalyticsProvisioningCreateAccountTicket,

    -- ** analytics.provisioning.createAccountTree
    AnalyticsProvisioningCreateAccountTreeResource,
    AnalyticsProvisioningCreateAccountTree (..),
    newAnalyticsProvisioningCreateAccountTree,

    -- ** analytics.userDeletion.userDeletionRequest.upsert
    AnalyticsUserDeletionUserDeletionRequestUpsertResource,
    AnalyticsUserDeletionUserDeletionRequestUpsert (..),
    newAnalyticsUserDeletionUserDeletionRequestUpsert,

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

import Gogol.Analytics.Data.Ga.Get
import Gogol.Analytics.Data.Mcf.Get
import Gogol.Analytics.Data.Realtime.Get
import Gogol.Analytics.Management.AccountSummaries.List
import Gogol.Analytics.Management.AccountUserLinks.Delete
import Gogol.Analytics.Management.AccountUserLinks.Insert
import Gogol.Analytics.Management.AccountUserLinks.List
import Gogol.Analytics.Management.AccountUserLinks.Update
import Gogol.Analytics.Management.Accounts.List
import Gogol.Analytics.Management.ClientId.HashClientId
import Gogol.Analytics.Management.CustomDataSources.List
import Gogol.Analytics.Management.CustomDimensions.Get
import Gogol.Analytics.Management.CustomDimensions.Insert
import Gogol.Analytics.Management.CustomDimensions.List
import Gogol.Analytics.Management.CustomDimensions.Patch
import Gogol.Analytics.Management.CustomDimensions.Update
import Gogol.Analytics.Management.CustomMetrics.Get
import Gogol.Analytics.Management.CustomMetrics.Insert
import Gogol.Analytics.Management.CustomMetrics.List
import Gogol.Analytics.Management.CustomMetrics.Patch
import Gogol.Analytics.Management.CustomMetrics.Update
import Gogol.Analytics.Management.Experiments.Delete
import Gogol.Analytics.Management.Experiments.Get
import Gogol.Analytics.Management.Experiments.Insert
import Gogol.Analytics.Management.Experiments.List
import Gogol.Analytics.Management.Experiments.Patch
import Gogol.Analytics.Management.Experiments.Update
import Gogol.Analytics.Management.Filters.Delete
import Gogol.Analytics.Management.Filters.Get
import Gogol.Analytics.Management.Filters.Insert
import Gogol.Analytics.Management.Filters.List
import Gogol.Analytics.Management.Filters.Patch
import Gogol.Analytics.Management.Filters.Update
import Gogol.Analytics.Management.Goals.Get
import Gogol.Analytics.Management.Goals.Insert
import Gogol.Analytics.Management.Goals.List
import Gogol.Analytics.Management.Goals.Patch
import Gogol.Analytics.Management.Goals.Update
import Gogol.Analytics.Management.ProfileFilterLinks.Delete
import Gogol.Analytics.Management.ProfileFilterLinks.Get
import Gogol.Analytics.Management.ProfileFilterLinks.Insert
import Gogol.Analytics.Management.ProfileFilterLinks.List
import Gogol.Analytics.Management.ProfileFilterLinks.Patch
import Gogol.Analytics.Management.ProfileFilterLinks.Update
import Gogol.Analytics.Management.ProfileUserLinks.Delete
import Gogol.Analytics.Management.ProfileUserLinks.Insert
import Gogol.Analytics.Management.ProfileUserLinks.List
import Gogol.Analytics.Management.ProfileUserLinks.Update
import Gogol.Analytics.Management.Profiles.Delete
import Gogol.Analytics.Management.Profiles.Get
import Gogol.Analytics.Management.Profiles.Insert
import Gogol.Analytics.Management.Profiles.List
import Gogol.Analytics.Management.Profiles.Patch
import Gogol.Analytics.Management.Profiles.Update
import Gogol.Analytics.Management.RemarketingAudience.Delete
import Gogol.Analytics.Management.RemarketingAudience.Get
import Gogol.Analytics.Management.RemarketingAudience.Insert
import Gogol.Analytics.Management.RemarketingAudience.List
import Gogol.Analytics.Management.RemarketingAudience.Patch
import Gogol.Analytics.Management.RemarketingAudience.Update
import Gogol.Analytics.Management.Segments.List
import Gogol.Analytics.Management.UnsampledReports.Delete
import Gogol.Analytics.Management.UnsampledReports.Get
import Gogol.Analytics.Management.UnsampledReports.Insert
import Gogol.Analytics.Management.UnsampledReports.List
import Gogol.Analytics.Management.Uploads.DeleteUploadData
import Gogol.Analytics.Management.Uploads.Get
import Gogol.Analytics.Management.Uploads.List
import Gogol.Analytics.Management.Uploads.UploadData
import Gogol.Analytics.Management.WebPropertyAdWordsLinks.Delete
import Gogol.Analytics.Management.WebPropertyAdWordsLinks.Get
import Gogol.Analytics.Management.WebPropertyAdWordsLinks.Insert
import Gogol.Analytics.Management.WebPropertyAdWordsLinks.List
import Gogol.Analytics.Management.WebPropertyAdWordsLinks.Patch
import Gogol.Analytics.Management.WebPropertyAdWordsLinks.Update
import Gogol.Analytics.Management.Webproperties.Get
import Gogol.Analytics.Management.Webproperties.Insert
import Gogol.Analytics.Management.Webproperties.List
import Gogol.Analytics.Management.Webproperties.Patch
import Gogol.Analytics.Management.Webproperties.Update
import Gogol.Analytics.Management.WebpropertyUserLinks.Delete
import Gogol.Analytics.Management.WebpropertyUserLinks.Insert
import Gogol.Analytics.Management.WebpropertyUserLinks.List
import Gogol.Analytics.Management.WebpropertyUserLinks.Update
import Gogol.Analytics.Metadata.Columns.List
import Gogol.Analytics.Provisioning.CreateAccountTicket
import Gogol.Analytics.Provisioning.CreateAccountTree
import Gogol.Analytics.Types
import Gogol.Analytics.UserDeletion.UserDeletionRequest.Upsert
