{-# LANGUAGE StrictData #-}
{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.Analytics
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Views and manages your Google Analytics data.
--
-- /See:/ <https://developers.google.com/analytics/ Google Analytics API Reference>
module Gogol.Analytics
    (
    -- * Configuration
      analyticsService

    -- * OAuth Scopes
    , analyticsScope
    , analyticsEditScope
    , analyticsManageUsersScope
    , analyticsManageUsersReadOnlyScope
    , analyticsProvisionScope
    , analyticsReadOnlyScope
    , analyticsUserDeletionScope

    -- * Resources

    -- ** analytics.data.ga.get
    , AnalyticsDataGaGetResource
    , newAnalyticsDataGaGet
    , AnalyticsDataGaGet

    -- ** analytics.data.mcf.get
    , AnalyticsDataMcfGetResource
    , newAnalyticsDataMcfGet
    , AnalyticsDataMcfGet

    -- ** analytics.data.realtime.get
    , AnalyticsDataRealtimeGetResource
    , newAnalyticsDataRealtimeGet
    , AnalyticsDataRealtimeGet

    -- ** analytics.management.accountSummaries.list
    , AnalyticsManagementAccountSummariesListResource
    , newAnalyticsManagementAccountSummariesList
    , AnalyticsManagementAccountSummariesList

    -- ** analytics.management.accountUserLinks.delete
    , AnalyticsManagementAccountUserLinksDeleteResource
    , newAnalyticsManagementAccountUserLinksDelete
    , AnalyticsManagementAccountUserLinksDelete

    -- ** analytics.management.accountUserLinks.insert
    , AnalyticsManagementAccountUserLinksInsertResource
    , newAnalyticsManagementAccountUserLinksInsert
    , AnalyticsManagementAccountUserLinksInsert

    -- ** analytics.management.accountUserLinks.list
    , AnalyticsManagementAccountUserLinksListResource
    , newAnalyticsManagementAccountUserLinksList
    , AnalyticsManagementAccountUserLinksList

    -- ** analytics.management.accountUserLinks.update
    , AnalyticsManagementAccountUserLinksUpdateResource
    , newAnalyticsManagementAccountUserLinksUpdate
    , AnalyticsManagementAccountUserLinksUpdate

    -- ** analytics.management.accounts.list
    , AnalyticsManagementAccountsListResource
    , newAnalyticsManagementAccountsList
    , AnalyticsManagementAccountsList

    -- ** analytics.management.clientId.hashClientId
    , AnalyticsManagementClientIdHashClientIdResource
    , newAnalyticsManagementClientIdHashClientId
    , AnalyticsManagementClientIdHashClientId

    -- ** analytics.management.customDataSources.list
    , AnalyticsManagementCustomDataSourcesListResource
    , newAnalyticsManagementCustomDataSourcesList
    , AnalyticsManagementCustomDataSourcesList

    -- ** analytics.management.customDimensions.get
    , AnalyticsManagementCustomDimensionsGetResource
    , newAnalyticsManagementCustomDimensionsGet
    , AnalyticsManagementCustomDimensionsGet

    -- ** analytics.management.customDimensions.insert
    , AnalyticsManagementCustomDimensionsInsertResource
    , newAnalyticsManagementCustomDimensionsInsert
    , AnalyticsManagementCustomDimensionsInsert

    -- ** analytics.management.customDimensions.list
    , AnalyticsManagementCustomDimensionsListResource
    , newAnalyticsManagementCustomDimensionsList
    , AnalyticsManagementCustomDimensionsList

    -- ** analytics.management.customDimensions.patch
    , AnalyticsManagementCustomDimensionsPatchResource
    , newAnalyticsManagementCustomDimensionsPatch
    , AnalyticsManagementCustomDimensionsPatch

    -- ** analytics.management.customDimensions.update
    , AnalyticsManagementCustomDimensionsUpdateResource
    , newAnalyticsManagementCustomDimensionsUpdate
    , AnalyticsManagementCustomDimensionsUpdate

    -- ** analytics.management.customMetrics.get
    , AnalyticsManagementCustomMetricsGetResource
    , newAnalyticsManagementCustomMetricsGet
    , AnalyticsManagementCustomMetricsGet

    -- ** analytics.management.customMetrics.insert
    , AnalyticsManagementCustomMetricsInsertResource
    , newAnalyticsManagementCustomMetricsInsert
    , AnalyticsManagementCustomMetricsInsert

    -- ** analytics.management.customMetrics.list
    , AnalyticsManagementCustomMetricsListResource
    , newAnalyticsManagementCustomMetricsList
    , AnalyticsManagementCustomMetricsList

    -- ** analytics.management.customMetrics.patch
    , AnalyticsManagementCustomMetricsPatchResource
    , newAnalyticsManagementCustomMetricsPatch
    , AnalyticsManagementCustomMetricsPatch

    -- ** analytics.management.customMetrics.update
    , AnalyticsManagementCustomMetricsUpdateResource
    , newAnalyticsManagementCustomMetricsUpdate
    , AnalyticsManagementCustomMetricsUpdate

    -- ** analytics.management.experiments.delete
    , AnalyticsManagementExperimentsDeleteResource
    , newAnalyticsManagementExperimentsDelete
    , AnalyticsManagementExperimentsDelete

    -- ** analytics.management.experiments.get
    , AnalyticsManagementExperimentsGetResource
    , newAnalyticsManagementExperimentsGet
    , AnalyticsManagementExperimentsGet

    -- ** analytics.management.experiments.insert
    , AnalyticsManagementExperimentsInsertResource
    , newAnalyticsManagementExperimentsInsert
    , AnalyticsManagementExperimentsInsert

    -- ** analytics.management.experiments.list
    , AnalyticsManagementExperimentsListResource
    , newAnalyticsManagementExperimentsList
    , AnalyticsManagementExperimentsList

    -- ** analytics.management.experiments.patch
    , AnalyticsManagementExperimentsPatchResource
    , newAnalyticsManagementExperimentsPatch
    , AnalyticsManagementExperimentsPatch

    -- ** analytics.management.experiments.update
    , AnalyticsManagementExperimentsUpdateResource
    , newAnalyticsManagementExperimentsUpdate
    , AnalyticsManagementExperimentsUpdate

    -- ** analytics.management.filters.delete
    , AnalyticsManagementFiltersDeleteResource
    , newAnalyticsManagementFiltersDelete
    , AnalyticsManagementFiltersDelete

    -- ** analytics.management.filters.get
    , AnalyticsManagementFiltersGetResource
    , newAnalyticsManagementFiltersGet
    , AnalyticsManagementFiltersGet

    -- ** analytics.management.filters.insert
    , AnalyticsManagementFiltersInsertResource
    , newAnalyticsManagementFiltersInsert
    , AnalyticsManagementFiltersInsert

    -- ** analytics.management.filters.list
    , AnalyticsManagementFiltersListResource
    , newAnalyticsManagementFiltersList
    , AnalyticsManagementFiltersList

    -- ** analytics.management.filters.patch
    , AnalyticsManagementFiltersPatchResource
    , newAnalyticsManagementFiltersPatch
    , AnalyticsManagementFiltersPatch

    -- ** analytics.management.filters.update
    , AnalyticsManagementFiltersUpdateResource
    , newAnalyticsManagementFiltersUpdate
    , AnalyticsManagementFiltersUpdate

    -- ** analytics.management.goals.get
    , AnalyticsManagementGoalsGetResource
    , newAnalyticsManagementGoalsGet
    , AnalyticsManagementGoalsGet

    -- ** analytics.management.goals.insert
    , AnalyticsManagementGoalsInsertResource
    , newAnalyticsManagementGoalsInsert
    , AnalyticsManagementGoalsInsert

    -- ** analytics.management.goals.list
    , AnalyticsManagementGoalsListResource
    , newAnalyticsManagementGoalsList
    , AnalyticsManagementGoalsList

    -- ** analytics.management.goals.patch
    , AnalyticsManagementGoalsPatchResource
    , newAnalyticsManagementGoalsPatch
    , AnalyticsManagementGoalsPatch

    -- ** analytics.management.goals.update
    , AnalyticsManagementGoalsUpdateResource
    , newAnalyticsManagementGoalsUpdate
    , AnalyticsManagementGoalsUpdate

    -- ** analytics.management.profileFilterLinks.delete
    , AnalyticsManagementProfileFilterLinksDeleteResource
    , newAnalyticsManagementProfileFilterLinksDelete
    , AnalyticsManagementProfileFilterLinksDelete

    -- ** analytics.management.profileFilterLinks.get
    , AnalyticsManagementProfileFilterLinksGetResource
    , newAnalyticsManagementProfileFilterLinksGet
    , AnalyticsManagementProfileFilterLinksGet

    -- ** analytics.management.profileFilterLinks.insert
    , AnalyticsManagementProfileFilterLinksInsertResource
    , newAnalyticsManagementProfileFilterLinksInsert
    , AnalyticsManagementProfileFilterLinksInsert

    -- ** analytics.management.profileFilterLinks.list
    , AnalyticsManagementProfileFilterLinksListResource
    , newAnalyticsManagementProfileFilterLinksList
    , AnalyticsManagementProfileFilterLinksList

    -- ** analytics.management.profileFilterLinks.patch
    , AnalyticsManagementProfileFilterLinksPatchResource
    , newAnalyticsManagementProfileFilterLinksPatch
    , AnalyticsManagementProfileFilterLinksPatch

    -- ** analytics.management.profileFilterLinks.update
    , AnalyticsManagementProfileFilterLinksUpdateResource
    , newAnalyticsManagementProfileFilterLinksUpdate
    , AnalyticsManagementProfileFilterLinksUpdate

    -- ** analytics.management.profileUserLinks.delete
    , AnalyticsManagementProfileUserLinksDeleteResource
    , newAnalyticsManagementProfileUserLinksDelete
    , AnalyticsManagementProfileUserLinksDelete

    -- ** analytics.management.profileUserLinks.insert
    , AnalyticsManagementProfileUserLinksInsertResource
    , newAnalyticsManagementProfileUserLinksInsert
    , AnalyticsManagementProfileUserLinksInsert

    -- ** analytics.management.profileUserLinks.list
    , AnalyticsManagementProfileUserLinksListResource
    , newAnalyticsManagementProfileUserLinksList
    , AnalyticsManagementProfileUserLinksList

    -- ** analytics.management.profileUserLinks.update
    , AnalyticsManagementProfileUserLinksUpdateResource
    , newAnalyticsManagementProfileUserLinksUpdate
    , AnalyticsManagementProfileUserLinksUpdate

    -- ** analytics.management.profiles.delete
    , AnalyticsManagementProfilesDeleteResource
    , newAnalyticsManagementProfilesDelete
    , AnalyticsManagementProfilesDelete

    -- ** analytics.management.profiles.get
    , AnalyticsManagementProfilesGetResource
    , newAnalyticsManagementProfilesGet
    , AnalyticsManagementProfilesGet

    -- ** analytics.management.profiles.insert
    , AnalyticsManagementProfilesInsertResource
    , newAnalyticsManagementProfilesInsert
    , AnalyticsManagementProfilesInsert

    -- ** analytics.management.profiles.list
    , AnalyticsManagementProfilesListResource
    , newAnalyticsManagementProfilesList
    , AnalyticsManagementProfilesList

    -- ** analytics.management.profiles.patch
    , AnalyticsManagementProfilesPatchResource
    , newAnalyticsManagementProfilesPatch
    , AnalyticsManagementProfilesPatch

    -- ** analytics.management.profiles.update
    , AnalyticsManagementProfilesUpdateResource
    , newAnalyticsManagementProfilesUpdate
    , AnalyticsManagementProfilesUpdate

    -- ** analytics.management.remarketingAudience.delete
    , AnalyticsManagementRemarketingAudienceDeleteResource
    , newAnalyticsManagementRemarketingAudienceDelete
    , AnalyticsManagementRemarketingAudienceDelete

    -- ** analytics.management.remarketingAudience.get
    , AnalyticsManagementRemarketingAudienceGetResource
    , newAnalyticsManagementRemarketingAudienceGet
    , AnalyticsManagementRemarketingAudienceGet

    -- ** analytics.management.remarketingAudience.insert
    , AnalyticsManagementRemarketingAudienceInsertResource
    , newAnalyticsManagementRemarketingAudienceInsert
    , AnalyticsManagementRemarketingAudienceInsert

    -- ** analytics.management.remarketingAudience.list
    , AnalyticsManagementRemarketingAudienceListResource
    , newAnalyticsManagementRemarketingAudienceList
    , AnalyticsManagementRemarketingAudienceList

    -- ** analytics.management.remarketingAudience.patch
    , AnalyticsManagementRemarketingAudiencePatchResource
    , newAnalyticsManagementRemarketingAudiencePatch
    , AnalyticsManagementRemarketingAudiencePatch

    -- ** analytics.management.remarketingAudience.update
    , AnalyticsManagementRemarketingAudienceUpdateResource
    , newAnalyticsManagementRemarketingAudienceUpdate
    , AnalyticsManagementRemarketingAudienceUpdate

    -- ** analytics.management.segments.list
    , AnalyticsManagementSegmentsListResource
    , newAnalyticsManagementSegmentsList
    , AnalyticsManagementSegmentsList

    -- ** analytics.management.unsampledReports.delete
    , AnalyticsManagementUnsampledReportsDeleteResource
    , newAnalyticsManagementUnsampledReportsDelete
    , AnalyticsManagementUnsampledReportsDelete

    -- ** analytics.management.unsampledReports.get
    , AnalyticsManagementUnsampledReportsGetResource
    , newAnalyticsManagementUnsampledReportsGet
    , AnalyticsManagementUnsampledReportsGet

    -- ** analytics.management.unsampledReports.insert
    , AnalyticsManagementUnsampledReportsInsertResource
    , newAnalyticsManagementUnsampledReportsInsert
    , AnalyticsManagementUnsampledReportsInsert

    -- ** analytics.management.unsampledReports.list
    , AnalyticsManagementUnsampledReportsListResource
    , newAnalyticsManagementUnsampledReportsList
    , AnalyticsManagementUnsampledReportsList

    -- ** analytics.management.uploads.deleteUploadData
    , AnalyticsManagementUploadsDeleteUploadDataResource
    , newAnalyticsManagementUploadsDeleteUploadData
    , AnalyticsManagementUploadsDeleteUploadData

    -- ** analytics.management.uploads.get
    , AnalyticsManagementUploadsGetResource
    , newAnalyticsManagementUploadsGet
    , AnalyticsManagementUploadsGet

    -- ** analytics.management.uploads.list
    , AnalyticsManagementUploadsListResource
    , newAnalyticsManagementUploadsList
    , AnalyticsManagementUploadsList

    -- ** analytics.management.uploads.uploadData
    , AnalyticsManagementUploadsUploadDataResource
    , newAnalyticsManagementUploadsUploadData
    , AnalyticsManagementUploadsUploadData

    -- ** analytics.management.webPropertyAdWordsLinks.delete
    , AnalyticsManagementWebPropertyAdWordsLinksDeleteResource
    , newAnalyticsManagementWebPropertyAdWordsLinksDelete
    , AnalyticsManagementWebPropertyAdWordsLinksDelete

    -- ** analytics.management.webPropertyAdWordsLinks.get
    , AnalyticsManagementWebPropertyAdWordsLinksGetResource
    , newAnalyticsManagementWebPropertyAdWordsLinksGet
    , AnalyticsManagementWebPropertyAdWordsLinksGet

    -- ** analytics.management.webPropertyAdWordsLinks.insert
    , AnalyticsManagementWebPropertyAdWordsLinksInsertResource
    , newAnalyticsManagementWebPropertyAdWordsLinksInsert
    , AnalyticsManagementWebPropertyAdWordsLinksInsert

    -- ** analytics.management.webPropertyAdWordsLinks.list
    , AnalyticsManagementWebPropertyAdWordsLinksListResource
    , newAnalyticsManagementWebPropertyAdWordsLinksList
    , AnalyticsManagementWebPropertyAdWordsLinksList

    -- ** analytics.management.webPropertyAdWordsLinks.patch
    , AnalyticsManagementWebPropertyAdWordsLinksPatchResource
    , newAnalyticsManagementWebPropertyAdWordsLinksPatch
    , AnalyticsManagementWebPropertyAdWordsLinksPatch

    -- ** analytics.management.webPropertyAdWordsLinks.update
    , AnalyticsManagementWebPropertyAdWordsLinksUpdateResource
    , newAnalyticsManagementWebPropertyAdWordsLinksUpdate
    , AnalyticsManagementWebPropertyAdWordsLinksUpdate

    -- ** analytics.management.webproperties.get
    , AnalyticsManagementWebpropertiesGetResource
    , newAnalyticsManagementWebpropertiesGet
    , AnalyticsManagementWebpropertiesGet

    -- ** analytics.management.webproperties.insert
    , AnalyticsManagementWebpropertiesInsertResource
    , newAnalyticsManagementWebpropertiesInsert
    , AnalyticsManagementWebpropertiesInsert

    -- ** analytics.management.webproperties.list
    , AnalyticsManagementWebpropertiesListResource
    , newAnalyticsManagementWebpropertiesList
    , AnalyticsManagementWebpropertiesList

    -- ** analytics.management.webproperties.patch
    , AnalyticsManagementWebpropertiesPatchResource
    , newAnalyticsManagementWebpropertiesPatch
    , AnalyticsManagementWebpropertiesPatch

    -- ** analytics.management.webproperties.update
    , AnalyticsManagementWebpropertiesUpdateResource
    , newAnalyticsManagementWebpropertiesUpdate
    , AnalyticsManagementWebpropertiesUpdate

    -- ** analytics.management.webpropertyUserLinks.delete
    , AnalyticsManagementWebpropertyUserLinksDeleteResource
    , newAnalyticsManagementWebpropertyUserLinksDelete
    , AnalyticsManagementWebpropertyUserLinksDelete

    -- ** analytics.management.webpropertyUserLinks.insert
    , AnalyticsManagementWebpropertyUserLinksInsertResource
    , newAnalyticsManagementWebpropertyUserLinksInsert
    , AnalyticsManagementWebpropertyUserLinksInsert

    -- ** analytics.management.webpropertyUserLinks.list
    , AnalyticsManagementWebpropertyUserLinksListResource
    , newAnalyticsManagementWebpropertyUserLinksList
    , AnalyticsManagementWebpropertyUserLinksList

    -- ** analytics.management.webpropertyUserLinks.update
    , AnalyticsManagementWebpropertyUserLinksUpdateResource
    , newAnalyticsManagementWebpropertyUserLinksUpdate
    , AnalyticsManagementWebpropertyUserLinksUpdate

    -- ** analytics.metadata.columns.list
    , AnalyticsMetadataColumnsListResource
    , newAnalyticsMetadataColumnsList
    , AnalyticsMetadataColumnsList

    -- ** analytics.provisioning.createAccountTicket
    , AnalyticsProvisioningCreateAccountTicketResource
    , newAnalyticsProvisioningCreateAccountTicket
    , AnalyticsProvisioningCreateAccountTicket

    -- ** analytics.provisioning.createAccountTree
    , AnalyticsProvisioningCreateAccountTreeResource
    , newAnalyticsProvisioningCreateAccountTree
    , AnalyticsProvisioningCreateAccountTree

    -- ** analytics.userDeletion.userDeletionRequest.upsert
    , AnalyticsUserDeletionUserDeletionRequestUpsertResource
    , newAnalyticsUserDeletionUserDeletionRequestUpsert
    , AnalyticsUserDeletionUserDeletionRequestUpsert

    -- * Types

    -- ** Account
    , Account (..)
    , newAccount

    -- ** Account_ChildLink
    , Account_ChildLink (..)
    , newAccount_ChildLink

    -- ** Account_Permissions
    , Account_Permissions (..)
    , newAccount_Permissions

    -- ** AccountRef
    , AccountRef (..)
    , newAccountRef

    -- ** AccountSummaries
    , AccountSummaries (..)
    , newAccountSummaries

    -- ** AccountSummary
    , AccountSummary (..)
    , newAccountSummary

    -- ** AccountTicket
    , AccountTicket (..)
    , newAccountTicket

    -- ** AccountTreeRequest
    , AccountTreeRequest (..)
    , newAccountTreeRequest

    -- ** AccountTreeResponse
    , AccountTreeResponse (..)
    , newAccountTreeResponse

    -- ** Accounts
    , Accounts (..)
    , newAccounts

    -- ** AdWordsAccount
    , AdWordsAccount (..)
    , newAdWordsAccount

    -- ** AnalyticsDataimportDeleteUploadDataRequest
    , AnalyticsDataimportDeleteUploadDataRequest (..)
    , newAnalyticsDataimportDeleteUploadDataRequest

    -- ** Column
    , Column (..)
    , newColumn

    -- ** Column_Attributes
    , Column_Attributes (..)
    , newColumn_Attributes

    -- ** Columns
    , Columns (..)
    , newColumns

    -- ** CustomDataSource
    , CustomDataSource (..)
    , newCustomDataSource

    -- ** CustomDataSource_ChildLink
    , CustomDataSource_ChildLink (..)
    , newCustomDataSource_ChildLink

    -- ** CustomDataSource_ParentLink
    , CustomDataSource_ParentLink (..)
    , newCustomDataSource_ParentLink

    -- ** CustomDataSources
    , CustomDataSources (..)
    , newCustomDataSources

    -- ** CustomDimension
    , CustomDimension (..)
    , newCustomDimension

    -- ** CustomDimension_ParentLink
    , CustomDimension_ParentLink (..)
    , newCustomDimension_ParentLink

    -- ** CustomDimensions
    , CustomDimensions (..)
    , newCustomDimensions

    -- ** CustomMetric
    , CustomMetric (..)
    , newCustomMetric

    -- ** CustomMetric_ParentLink
    , CustomMetric_ParentLink (..)
    , newCustomMetric_ParentLink

    -- ** CustomMetrics
    , CustomMetrics (..)
    , newCustomMetrics

    -- ** EntityAdWordsLink
    , EntityAdWordsLink (..)
    , newEntityAdWordsLink

    -- ** EntityAdWordsLink_Entity
    , EntityAdWordsLink_Entity (..)
    , newEntityAdWordsLink_Entity

    -- ** EntityAdWordsLinks
    , EntityAdWordsLinks (..)
    , newEntityAdWordsLinks

    -- ** EntityUserLink
    , EntityUserLink (..)
    , newEntityUserLink

    -- ** EntityUserLink_Entity
    , EntityUserLink_Entity (..)
    , newEntityUserLink_Entity

    -- ** EntityUserLink_Permissions
    , EntityUserLink_Permissions (..)
    , newEntityUserLink_Permissions

    -- ** EntityUserLinks
    , EntityUserLinks (..)
    , newEntityUserLinks

    -- ** Experiment
    , Experiment (..)
    , newExperiment

    -- ** Experiment_ParentLink
    , Experiment_ParentLink (..)
    , newExperiment_ParentLink

    -- ** Experiment_VariationsItem
    , Experiment_VariationsItem (..)
    , newExperiment_VariationsItem

    -- ** Experiments
    , Experiments (..)
    , newExperiments

    -- ** Filter
    , Filter (..)
    , newFilter

    -- ** Filter_AdvancedDetails
    , Filter_AdvancedDetails (..)
    , newFilter_AdvancedDetails

    -- ** Filter_LowercaseDetails
    , Filter_LowercaseDetails (..)
    , newFilter_LowercaseDetails

    -- ** Filter_ParentLink
    , Filter_ParentLink (..)
    , newFilter_ParentLink

    -- ** Filter_SearchAndReplaceDetails
    , Filter_SearchAndReplaceDetails (..)
    , newFilter_SearchAndReplaceDetails

    -- ** Filter_UppercaseDetails
    , Filter_UppercaseDetails (..)
    , newFilter_UppercaseDetails

    -- ** FilterExpression
    , FilterExpression (..)
    , newFilterExpression

    -- ** FilterRef
    , FilterRef (..)
    , newFilterRef

    -- ** Filters
    , Filters (..)
    , newFilters

    -- ** GaData
    , GaData (..)
    , newGaData

    -- ** GaData_ColumnHeadersItem
    , GaData_ColumnHeadersItem (..)
    , newGaData_ColumnHeadersItem

    -- ** GaData_DataTable
    , GaData_DataTable (..)
    , newGaData_DataTable

    -- ** GaData_DataTable_ColsItem
    , GaData_DataTable_ColsItem (..)
    , newGaData_DataTable_ColsItem

    -- ** GaData_DataTable_RowsItem
    , GaData_DataTable_RowsItem (..)
    , newGaData_DataTable_RowsItem

    -- ** GaData_DataTable_RowsItem_CItem
    , GaData_DataTable_RowsItem_CItem (..)
    , newGaData_DataTable_RowsItem_CItem

    -- ** GaData_ProfileInfo
    , GaData_ProfileInfo (..)
    , newGaData_ProfileInfo

    -- ** GaData_Query
    , GaData_Query (..)
    , newGaData_Query

    -- ** GaData_TotalsForAllResults
    , GaData_TotalsForAllResults (..)
    , newGaData_TotalsForAllResults

    -- ** Goal
    , Goal (..)
    , newGoal

    -- ** Goal_EventDetails
    , Goal_EventDetails (..)
    , newGoal_EventDetails

    -- ** Goal_EventDetails_EventConditionsItem
    , Goal_EventDetails_EventConditionsItem (..)
    , newGoal_EventDetails_EventConditionsItem

    -- ** Goal_ParentLink
    , Goal_ParentLink (..)
    , newGoal_ParentLink

    -- ** Goal_UrlDestinationDetails
    , Goal_UrlDestinationDetails (..)
    , newGoal_UrlDestinationDetails

    -- ** Goal_UrlDestinationDetails_StepsItem
    , Goal_UrlDestinationDetails_StepsItem (..)
    , newGoal_UrlDestinationDetails_StepsItem

    -- ** Goal_VisitNumPagesDetails
    , Goal_VisitNumPagesDetails (..)
    , newGoal_VisitNumPagesDetails

    -- ** Goal_VisitTimeOnSiteDetails
    , Goal_VisitTimeOnSiteDetails (..)
    , newGoal_VisitTimeOnSiteDetails

    -- ** Goals
    , Goals (..)
    , newGoals

    -- ** HashClientIdRequest
    , HashClientIdRequest (..)
    , newHashClientIdRequest

    -- ** HashClientIdResponse
    , HashClientIdResponse (..)
    , newHashClientIdResponse

    -- ** IncludeConditions
    , IncludeConditions (..)
    , newIncludeConditions

    -- ** LinkedForeignAccount
    , LinkedForeignAccount (..)
    , newLinkedForeignAccount

    -- ** McfData
    , McfData (..)
    , newMcfData

    -- ** McfData_ColumnHeadersItem
    , McfData_ColumnHeadersItem (..)
    , newMcfData_ColumnHeadersItem

    -- ** McfData_ProfileInfo
    , McfData_ProfileInfo (..)
    , newMcfData_ProfileInfo

    -- ** McfData_Query
    , McfData_Query (..)
    , newMcfData_Query

    -- ** McfData_RowsItemItem
    , McfData_RowsItemItem (..)
    , newMcfData_RowsItemItem

    -- ** McfData_RowsItemItem_ConversionPathValueItem
    , McfData_RowsItemItem_ConversionPathValueItem (..)
    , newMcfData_RowsItemItem_ConversionPathValueItem

    -- ** McfData_TotalsForAllResults
    , McfData_TotalsForAllResults (..)
    , newMcfData_TotalsForAllResults

    -- ** Profile
    , Profile (..)
    , newProfile

    -- ** Profile_ChildLink
    , Profile_ChildLink (..)
    , newProfile_ChildLink

    -- ** Profile_ParentLink
    , Profile_ParentLink (..)
    , newProfile_ParentLink

    -- ** Profile_Permissions
    , Profile_Permissions (..)
    , newProfile_Permissions

    -- ** ProfileFilterLink
    , ProfileFilterLink (..)
    , newProfileFilterLink

    -- ** ProfileFilterLinks
    , ProfileFilterLinks (..)
    , newProfileFilterLinks

    -- ** ProfileRef
    , ProfileRef (..)
    , newProfileRef

    -- ** ProfileSummary
    , ProfileSummary (..)
    , newProfileSummary

    -- ** Profiles
    , Profiles (..)
    , newProfiles

    -- ** RealtimeData
    , RealtimeData (..)
    , newRealtimeData

    -- ** RealtimeData_ColumnHeadersItem
    , RealtimeData_ColumnHeadersItem (..)
    , newRealtimeData_ColumnHeadersItem

    -- ** RealtimeData_ProfileInfo
    , RealtimeData_ProfileInfo (..)
    , newRealtimeData_ProfileInfo

    -- ** RealtimeData_Query
    , RealtimeData_Query (..)
    , newRealtimeData_Query

    -- ** RealtimeData_TotalsForAllResults
    , RealtimeData_TotalsForAllResults (..)
    , newRealtimeData_TotalsForAllResults

    -- ** RemarketingAudience
    , RemarketingAudience (..)
    , newRemarketingAudience

    -- ** RemarketingAudience_AudienceDefinition
    , RemarketingAudience_AudienceDefinition (..)
    , newRemarketingAudience_AudienceDefinition

    -- ** RemarketingAudience_StateBasedAudienceDefinition
    , RemarketingAudience_StateBasedAudienceDefinition (..)
    , newRemarketingAudience_StateBasedAudienceDefinition

    -- ** RemarketingAudience_StateBasedAudienceDefinition_ExcludeConditions
    , RemarketingAudience_StateBasedAudienceDefinition_ExcludeConditions (..)
    , newRemarketingAudience_StateBasedAudienceDefinition_ExcludeConditions

    -- ** RemarketingAudiences
    , RemarketingAudiences (..)
    , newRemarketingAudiences

    -- ** Segment
    , Segment (..)
    , newSegment

    -- ** Segments
    , Segments (..)
    , newSegments

    -- ** UnsampledReport
    , UnsampledReport (..)
    , newUnsampledReport

    -- ** UnsampledReport_CloudStorageDownloadDetails
    , UnsampledReport_CloudStorageDownloadDetails (..)
    , newUnsampledReport_CloudStorageDownloadDetails

    -- ** UnsampledReport_DriveDownloadDetails
    , UnsampledReport_DriveDownloadDetails (..)
    , newUnsampledReport_DriveDownloadDetails

    -- ** UnsampledReports
    , UnsampledReports (..)
    , newUnsampledReports

    -- ** Upload
    , Upload (..)
    , newUpload

    -- ** Uploads
    , Uploads (..)
    , newUploads

    -- ** UserDeletionRequest
    , UserDeletionRequest (..)
    , newUserDeletionRequest

    -- ** UserDeletionRequest_Id
    , UserDeletionRequest_Id (..)
    , newUserDeletionRequest_Id

    -- ** UserRef
    , UserRef (..)
    , newUserRef

    -- ** WebPropertyRef
    , WebPropertyRef (..)
    , newWebPropertyRef

    -- ** WebPropertySummary
    , WebPropertySummary (..)
    , newWebPropertySummary

    -- ** Webproperties
    , Webproperties (..)
    , newWebproperties

    -- ** Webproperty
    , Webproperty (..)
    , newWebproperty

    -- ** Webproperty_ChildLink
    , Webproperty_ChildLink (..)
    , newWebproperty_ChildLink

    -- ** Webproperty_ParentLink
    , Webproperty_ParentLink (..)
    , newWebproperty_ParentLink

    -- ** Webproperty_Permissions
    , Webproperty_Permissions (..)
    , newWebproperty_Permissions

    -- ** DataGaGetOutput
    , DataGaGetOutput (..)

    -- ** DataGaGetSamplingLevel
    , DataGaGetSamplingLevel (..)

    -- ** DataMcfGetSamplingLevel
    , DataMcfGetSamplingLevel (..)
    ) where

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
