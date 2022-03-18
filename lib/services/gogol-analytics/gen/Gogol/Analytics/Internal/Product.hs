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
-- Module      : Gogol.Analytics.Internal.Product
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Gogol.Analytics.Internal.Product
  ( -- * Account
    Account (..),
    newAccount,

    -- * Account_ChildLink
    Account_ChildLink (..),
    newAccount_ChildLink,

    -- * Account_Permissions
    Account_Permissions (..),
    newAccount_Permissions,

    -- * AccountRef
    AccountRef (..),
    newAccountRef,

    -- * AccountSummaries
    AccountSummaries (..),
    newAccountSummaries,

    -- * AccountSummary
    AccountSummary (..),
    newAccountSummary,

    -- * AccountTicket
    AccountTicket (..),
    newAccountTicket,

    -- * AccountTreeRequest
    AccountTreeRequest (..),
    newAccountTreeRequest,

    -- * AccountTreeResponse
    AccountTreeResponse (..),
    newAccountTreeResponse,

    -- * Accounts
    Accounts (..),
    newAccounts,

    -- * AdWordsAccount
    AdWordsAccount (..),
    newAdWordsAccount,

    -- * AnalyticsDataimportDeleteUploadDataRequest
    AnalyticsDataimportDeleteUploadDataRequest (..),
    newAnalyticsDataimportDeleteUploadDataRequest,

    -- * Column
    Column (..),
    newColumn,

    -- * Column_Attributes
    Column_Attributes (..),
    newColumn_Attributes,

    -- * Columns
    Columns (..),
    newColumns,

    -- * CustomDataSource
    CustomDataSource (..),
    newCustomDataSource,

    -- * CustomDataSource_ChildLink
    CustomDataSource_ChildLink (..),
    newCustomDataSource_ChildLink,

    -- * CustomDataSource_ParentLink
    CustomDataSource_ParentLink (..),
    newCustomDataSource_ParentLink,

    -- * CustomDataSources
    CustomDataSources (..),
    newCustomDataSources,

    -- * CustomDimension
    CustomDimension (..),
    newCustomDimension,

    -- * CustomDimension_ParentLink
    CustomDimension_ParentLink (..),
    newCustomDimension_ParentLink,

    -- * CustomDimensions
    CustomDimensions (..),
    newCustomDimensions,

    -- * CustomMetric
    CustomMetric (..),
    newCustomMetric,

    -- * CustomMetric_ParentLink
    CustomMetric_ParentLink (..),
    newCustomMetric_ParentLink,

    -- * CustomMetrics
    CustomMetrics (..),
    newCustomMetrics,

    -- * EntityAdWordsLink
    EntityAdWordsLink (..),
    newEntityAdWordsLink,

    -- * EntityAdWordsLink_Entity
    EntityAdWordsLink_Entity (..),
    newEntityAdWordsLink_Entity,

    -- * EntityAdWordsLinks
    EntityAdWordsLinks (..),
    newEntityAdWordsLinks,

    -- * EntityUserLink
    EntityUserLink (..),
    newEntityUserLink,

    -- * EntityUserLink_Entity
    EntityUserLink_Entity (..),
    newEntityUserLink_Entity,

    -- * EntityUserLink_Permissions
    EntityUserLink_Permissions (..),
    newEntityUserLink_Permissions,

    -- * EntityUserLinks
    EntityUserLinks (..),
    newEntityUserLinks,

    -- * Experiment
    Experiment (..),
    newExperiment,

    -- * Experiment_ParentLink
    Experiment_ParentLink (..),
    newExperiment_ParentLink,

    -- * Experiment_VariationsItem
    Experiment_VariationsItem (..),
    newExperiment_VariationsItem,

    -- * Experiments
    Experiments (..),
    newExperiments,

    -- * Filter
    Filter (..),
    newFilter,

    -- * Filter_AdvancedDetails
    Filter_AdvancedDetails (..),
    newFilter_AdvancedDetails,

    -- * Filter_LowercaseDetails
    Filter_LowercaseDetails (..),
    newFilter_LowercaseDetails,

    -- * Filter_ParentLink
    Filter_ParentLink (..),
    newFilter_ParentLink,

    -- * Filter_SearchAndReplaceDetails
    Filter_SearchAndReplaceDetails (..),
    newFilter_SearchAndReplaceDetails,

    -- * Filter_UppercaseDetails
    Filter_UppercaseDetails (..),
    newFilter_UppercaseDetails,

    -- * FilterExpression
    FilterExpression (..),
    newFilterExpression,

    -- * FilterRef
    FilterRef (..),
    newFilterRef,

    -- * Filters
    Filters (..),
    newFilters,

    -- * GaData
    GaData (..),
    newGaData,

    -- * GaData_ColumnHeadersItem
    GaData_ColumnHeadersItem (..),
    newGaData_ColumnHeadersItem,

    -- * GaData_DataTable
    GaData_DataTable (..),
    newGaData_DataTable,

    -- * GaData_DataTable_ColsItem
    GaData_DataTable_ColsItem (..),
    newGaData_DataTable_ColsItem,

    -- * GaData_DataTable_RowsItem
    GaData_DataTable_RowsItem (..),
    newGaData_DataTable_RowsItem,

    -- * GaData_DataTable_RowsItem_CItem
    GaData_DataTable_RowsItem_CItem (..),
    newGaData_DataTable_RowsItem_CItem,

    -- * GaData_ProfileInfo
    GaData_ProfileInfo (..),
    newGaData_ProfileInfo,

    -- * GaData_Query
    GaData_Query (..),
    newGaData_Query,

    -- * GaData_TotalsForAllResults
    GaData_TotalsForAllResults (..),
    newGaData_TotalsForAllResults,

    -- * Goal
    Goal (..),
    newGoal,

    -- * Goal_EventDetails
    Goal_EventDetails (..),
    newGoal_EventDetails,

    -- * Goal_EventDetails_EventConditionsItem
    Goal_EventDetails_EventConditionsItem (..),
    newGoal_EventDetails_EventConditionsItem,

    -- * Goal_ParentLink
    Goal_ParentLink (..),
    newGoal_ParentLink,

    -- * Goal_UrlDestinationDetails
    Goal_UrlDestinationDetails (..),
    newGoal_UrlDestinationDetails,

    -- * Goal_UrlDestinationDetails_StepsItem
    Goal_UrlDestinationDetails_StepsItem (..),
    newGoal_UrlDestinationDetails_StepsItem,

    -- * Goal_VisitNumPagesDetails
    Goal_VisitNumPagesDetails (..),
    newGoal_VisitNumPagesDetails,

    -- * Goal_VisitTimeOnSiteDetails
    Goal_VisitTimeOnSiteDetails (..),
    newGoal_VisitTimeOnSiteDetails,

    -- * Goals
    Goals (..),
    newGoals,

    -- * HashClientIdRequest
    HashClientIdRequest (..),
    newHashClientIdRequest,

    -- * HashClientIdResponse
    HashClientIdResponse (..),
    newHashClientIdResponse,

    -- * IncludeConditions
    IncludeConditions (..),
    newIncludeConditions,

    -- * LinkedForeignAccount
    LinkedForeignAccount (..),
    newLinkedForeignAccount,

    -- * McfData
    McfData (..),
    newMcfData,

    -- * McfData_ColumnHeadersItem
    McfData_ColumnHeadersItem (..),
    newMcfData_ColumnHeadersItem,

    -- * McfData_ProfileInfo
    McfData_ProfileInfo (..),
    newMcfData_ProfileInfo,

    -- * McfData_Query
    McfData_Query (..),
    newMcfData_Query,

    -- * McfData_RowsItemItem
    McfData_RowsItemItem (..),
    newMcfData_RowsItemItem,

    -- * McfData_RowsItemItem_ConversionPathValueItem
    McfData_RowsItemItem_ConversionPathValueItem (..),
    newMcfData_RowsItemItem_ConversionPathValueItem,

    -- * McfData_TotalsForAllResults
    McfData_TotalsForAllResults (..),
    newMcfData_TotalsForAllResults,

    -- * Profile
    Profile (..),
    newProfile,

    -- * Profile_ChildLink
    Profile_ChildLink (..),
    newProfile_ChildLink,

    -- * Profile_ParentLink
    Profile_ParentLink (..),
    newProfile_ParentLink,

    -- * Profile_Permissions
    Profile_Permissions (..),
    newProfile_Permissions,

    -- * ProfileFilterLink
    ProfileFilterLink (..),
    newProfileFilterLink,

    -- * ProfileFilterLinks
    ProfileFilterLinks (..),
    newProfileFilterLinks,

    -- * ProfileRef
    ProfileRef (..),
    newProfileRef,

    -- * ProfileSummary
    ProfileSummary (..),
    newProfileSummary,

    -- * Profiles
    Profiles (..),
    newProfiles,

    -- * RealtimeData
    RealtimeData (..),
    newRealtimeData,

    -- * RealtimeData_ColumnHeadersItem
    RealtimeData_ColumnHeadersItem (..),
    newRealtimeData_ColumnHeadersItem,

    -- * RealtimeData_ProfileInfo
    RealtimeData_ProfileInfo (..),
    newRealtimeData_ProfileInfo,

    -- * RealtimeData_Query
    RealtimeData_Query (..),
    newRealtimeData_Query,

    -- * RealtimeData_TotalsForAllResults
    RealtimeData_TotalsForAllResults (..),
    newRealtimeData_TotalsForAllResults,

    -- * RemarketingAudience
    RemarketingAudience (..),
    newRemarketingAudience,

    -- * RemarketingAudience_AudienceDefinition
    RemarketingAudience_AudienceDefinition (..),
    newRemarketingAudience_AudienceDefinition,

    -- * RemarketingAudience_StateBasedAudienceDefinition
    RemarketingAudience_StateBasedAudienceDefinition (..),
    newRemarketingAudience_StateBasedAudienceDefinition,

    -- * RemarketingAudience_StateBasedAudienceDefinition_ExcludeConditions
    RemarketingAudience_StateBasedAudienceDefinition_ExcludeConditions (..),
    newRemarketingAudience_StateBasedAudienceDefinition_ExcludeConditions,

    -- * RemarketingAudiences
    RemarketingAudiences (..),
    newRemarketingAudiences,

    -- * Segment
    Segment (..),
    newSegment,

    -- * Segments
    Segments (..),
    newSegments,

    -- * UnsampledReport
    UnsampledReport (..),
    newUnsampledReport,

    -- * UnsampledReport_CloudStorageDownloadDetails
    UnsampledReport_CloudStorageDownloadDetails (..),
    newUnsampledReport_CloudStorageDownloadDetails,

    -- * UnsampledReport_DriveDownloadDetails
    UnsampledReport_DriveDownloadDetails (..),
    newUnsampledReport_DriveDownloadDetails,

    -- * UnsampledReports
    UnsampledReports (..),
    newUnsampledReports,

    -- * Upload
    Upload (..),
    newUpload,

    -- * Uploads
    Uploads (..),
    newUploads,

    -- * UserDeletionRequest
    UserDeletionRequest (..),
    newUserDeletionRequest,

    -- * UserDeletionRequest_Id
    UserDeletionRequest_Id (..),
    newUserDeletionRequest_Id,

    -- * UserRef
    UserRef (..),
    newUserRef,

    -- * WebPropertyRef
    WebPropertyRef (..),
    newWebPropertyRef,

    -- * WebPropertySummary
    WebPropertySummary (..),
    newWebPropertySummary,

    -- * Webproperties
    Webproperties (..),
    newWebproperties,

    -- * Webproperty
    Webproperty (..),
    newWebproperty,

    -- * Webproperty_ChildLink
    Webproperty_ChildLink (..),
    newWebproperty_ChildLink,

    -- * Webproperty_ParentLink
    Webproperty_ParentLink (..),
    newWebproperty_ParentLink,

    -- * Webproperty_Permissions
    Webproperty_Permissions (..),
    newWebproperty_Permissions,
  )
where

import Gogol.Analytics.Internal.Sum
import qualified Gogol.Prelude as Core

-- | JSON template for Analytics account entry.
--
-- /See:/ 'newAccount' smart constructor.
data Account = Account
  { -- | Child link for an account entry. Points to the list of web properties for this account.
    childLink :: (Core.Maybe Account_ChildLink),
    -- | Time the account was created.
    created :: (Core.Maybe Core.DateTime'),
    -- | Account ID.
    id :: (Core.Maybe Core.Text),
    -- | Resource type for Analytics account.
    kind :: Core.Text,
    -- | Account name.
    name :: (Core.Maybe Core.Text),
    -- | Permissions the user has for this account.
    permissions :: (Core.Maybe Account_Permissions),
    -- | Link for this account.
    selfLink :: (Core.Maybe Core.Text),
    -- | Indicates whether this account is starred or not.
    starred :: (Core.Maybe Core.Bool),
    -- | Time the account was last modified.
    updated :: (Core.Maybe Core.DateTime')
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Account' with the minimum fields required to make a request.
newAccount ::
  Account
newAccount =
  Account
    { childLink = Core.Nothing,
      created = Core.Nothing,
      id = Core.Nothing,
      kind = "analytics#account",
      name = Core.Nothing,
      permissions = Core.Nothing,
      selfLink = Core.Nothing,
      starred = Core.Nothing,
      updated = Core.Nothing
    }

instance Core.FromJSON Account where
  parseJSON =
    Core.withObject
      "Account"
      ( \o ->
          Account
            Core.<$> (o Core..:? "childLink")
            Core.<*> (o Core..:? "created")
            Core.<*> (o Core..:? "id")
            Core.<*> (o Core..:? "kind" Core..!= "analytics#account")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "permissions")
            Core.<*> (o Core..:? "selfLink")
            Core.<*> (o Core..:? "starred")
            Core.<*> (o Core..:? "updated")
      )

instance Core.ToJSON Account where
  toJSON Account {..} =
    Core.object
      ( Core.catMaybes
          [ ("childLink" Core..=) Core.<$> childLink,
            ("created" Core..=) Core.<$> created,
            ("id" Core..=) Core.<$> id,
            Core.Just ("kind" Core..= kind),
            ("name" Core..=) Core.<$> name,
            ("permissions" Core..=) Core.<$> permissions,
            ("selfLink" Core..=) Core.<$> selfLink,
            ("starred" Core..=) Core.<$> starred,
            ("updated" Core..=) Core.<$> updated
          ]
      )

-- | Child link for an account entry. Points to the list of web properties for this account.
--
-- /See:/ 'newAccount_ChildLink' smart constructor.
data Account_ChildLink = Account_ChildLink
  { -- | Link to the list of web properties for this account.
    href :: (Core.Maybe Core.Text),
    -- | Type of the child link. Its value is \"analytics#webproperties\".
    type' :: Core.Text
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Account_ChildLink' with the minimum fields required to make a request.
newAccount_ChildLink ::
  Account_ChildLink
newAccount_ChildLink =
  Account_ChildLink {href = Core.Nothing, type' = "analytics#webproperties"}

instance Core.FromJSON Account_ChildLink where
  parseJSON =
    Core.withObject
      "Account_ChildLink"
      ( \o ->
          Account_ChildLink
            Core.<$> (o Core..:? "href")
            Core.<*> ( o Core..:? "type"
                         Core..!= "analytics#webproperties"
                     )
      )

instance Core.ToJSON Account_ChildLink where
  toJSON Account_ChildLink {..} =
    Core.object
      ( Core.catMaybes
          [ ("href" Core..=) Core.<$> href,
            Core.Just ("type" Core..= type')
          ]
      )

-- | Permissions the user has for this account.
--
-- /See:/ 'newAccount_Permissions' smart constructor.
newtype Account_Permissions = Account_Permissions
  { -- | All the permissions that the user has for this account. These include any implied permissions (e.g., EDIT implies VIEW).
    effective :: (Core.Maybe [Core.Text])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Account_Permissions' with the minimum fields required to make a request.
newAccount_Permissions ::
  Account_Permissions
newAccount_Permissions = Account_Permissions {effective = Core.Nothing}

instance Core.FromJSON Account_Permissions where
  parseJSON =
    Core.withObject
      "Account_Permissions"
      ( \o ->
          Account_Permissions
            Core.<$> (o Core..:? "effective" Core..!= Core.mempty)
      )

instance Core.ToJSON Account_Permissions where
  toJSON Account_Permissions {..} =
    Core.object
      ( Core.catMaybes
          [("effective" Core..=) Core.<$> effective]
      )

-- | JSON template for a linked account.
--
-- /See:/ 'newAccountRef' smart constructor.
data AccountRef = AccountRef
  { -- | Link for this account.
    href :: (Core.Maybe Core.Text),
    -- | Account ID.
    id :: (Core.Maybe Core.Text),
    -- | Analytics account reference.
    kind :: Core.Text,
    -- | Account name.
    name :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AccountRef' with the minimum fields required to make a request.
newAccountRef ::
  AccountRef
newAccountRef =
  AccountRef
    { href = Core.Nothing,
      id = Core.Nothing,
      kind = "analytics#accountRef",
      name = Core.Nothing
    }

instance Core.FromJSON AccountRef where
  parseJSON =
    Core.withObject
      "AccountRef"
      ( \o ->
          AccountRef
            Core.<$> (o Core..:? "href")
            Core.<*> (o Core..:? "id")
            Core.<*> (o Core..:? "kind" Core..!= "analytics#accountRef")
            Core.<*> (o Core..:? "name")
      )

instance Core.ToJSON AccountRef where
  toJSON AccountRef {..} =
    Core.object
      ( Core.catMaybes
          [ ("href" Core..=) Core.<$> href,
            ("id" Core..=) Core.<$> id,
            Core.Just ("kind" Core..= kind),
            ("name" Core..=) Core.<$> name
          ]
      )

-- | An AccountSummary collection lists a summary of accounts, properties and views (profiles) to which the user has access. Each resource in the collection corresponds to a single AccountSummary.
--
-- /See:/ 'newAccountSummaries' smart constructor.
data AccountSummaries = AccountSummaries
  { -- | A list of AccountSummaries.
    items :: (Core.Maybe [AccountSummary]),
    -- | The maximum number of resources the response can contain, regardless of the actual number of resources returned. Its value ranges from 1 to 1000 with a value of 1000 by default, or otherwise specified by the max-results query parameter.
    itemsPerPage :: (Core.Maybe Core.Int32),
    -- | Collection type.
    kind :: Core.Text,
    -- | Link to next page for this AccountSummary collection.
    nextLink :: (Core.Maybe Core.Text),
    -- | Link to previous page for this AccountSummary collection.
    previousLink :: (Core.Maybe Core.Text),
    -- | The starting index of the resources, which is 1 by default or otherwise specified by the start-index query parameter.
    startIndex :: (Core.Maybe Core.Int32),
    -- | The total number of results for the query, regardless of the number of results in the response.
    totalResults :: (Core.Maybe Core.Int32),
    -- | Email ID of the authenticated user
    username :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AccountSummaries' with the minimum fields required to make a request.
newAccountSummaries ::
  AccountSummaries
newAccountSummaries =
  AccountSummaries
    { items = Core.Nothing,
      itemsPerPage = Core.Nothing,
      kind = "analytics#accountSummaries",
      nextLink = Core.Nothing,
      previousLink = Core.Nothing,
      startIndex = Core.Nothing,
      totalResults = Core.Nothing,
      username = Core.Nothing
    }

instance Core.FromJSON AccountSummaries where
  parseJSON =
    Core.withObject
      "AccountSummaries"
      ( \o ->
          AccountSummaries
            Core.<$> (o Core..:? "items" Core..!= Core.mempty)
            Core.<*> (o Core..:? "itemsPerPage")
            Core.<*> ( o Core..:? "kind"
                         Core..!= "analytics#accountSummaries"
                     )
            Core.<*> (o Core..:? "nextLink")
            Core.<*> (o Core..:? "previousLink")
            Core.<*> (o Core..:? "startIndex")
            Core.<*> (o Core..:? "totalResults")
            Core.<*> (o Core..:? "username")
      )

instance Core.ToJSON AccountSummaries where
  toJSON AccountSummaries {..} =
    Core.object
      ( Core.catMaybes
          [ ("items" Core..=) Core.<$> items,
            ("itemsPerPage" Core..=) Core.<$> itemsPerPage,
            Core.Just ("kind" Core..= kind),
            ("nextLink" Core..=) Core.<$> nextLink,
            ("previousLink" Core..=) Core.<$> previousLink,
            ("startIndex" Core..=) Core.<$> startIndex,
            ("totalResults" Core..=) Core.<$> totalResults,
            ("username" Core..=) Core.<$> username
          ]
      )

-- | JSON template for an Analytics AccountSummary. An AccountSummary is a lightweight tree comprised of properties\/profiles.
--
-- /See:/ 'newAccountSummary' smart constructor.
data AccountSummary = AccountSummary
  { -- | Account ID.
    id :: (Core.Maybe Core.Text),
    -- | Resource type for Analytics AccountSummary.
    kind :: Core.Text,
    -- | Account name.
    name :: (Core.Maybe Core.Text),
    -- | Indicates whether this account is starred or not.
    starred :: (Core.Maybe Core.Bool),
    -- | List of web properties under this account.
    webProperties :: (Core.Maybe [WebPropertySummary])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AccountSummary' with the minimum fields required to make a request.
newAccountSummary ::
  AccountSummary
newAccountSummary =
  AccountSummary
    { id = Core.Nothing,
      kind = "analytics#accountSummary",
      name = Core.Nothing,
      starred = Core.Nothing,
      webProperties = Core.Nothing
    }

instance Core.FromJSON AccountSummary where
  parseJSON =
    Core.withObject
      "AccountSummary"
      ( \o ->
          AccountSummary
            Core.<$> (o Core..:? "id")
            Core.<*> ( o Core..:? "kind"
                         Core..!= "analytics#accountSummary"
                     )
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "starred")
            Core.<*> (o Core..:? "webProperties" Core..!= Core.mempty)
      )

instance Core.ToJSON AccountSummary where
  toJSON AccountSummary {..} =
    Core.object
      ( Core.catMaybes
          [ ("id" Core..=) Core.<$> id,
            Core.Just ("kind" Core..= kind),
            ("name" Core..=) Core.<$> name,
            ("starred" Core..=) Core.<$> starred,
            ("webProperties" Core..=) Core.<$> webProperties
          ]
      )

-- | JSON template for an Analytics account ticket. The account ticket consists of the ticket ID and the basic information for the account, property and profile.
--
-- /See:/ 'newAccountTicket' smart constructor.
data AccountTicket = AccountTicket
  { -- | Account for this ticket.
    account :: (Core.Maybe Account),
    -- | Account ticket ID used to access the account ticket.
    id :: (Core.Maybe Core.Text),
    -- | Resource type for account ticket.
    kind :: Core.Text,
    -- | View (Profile) for the account.
    profile :: (Core.Maybe Profile),
    -- | Redirect URI where the user will be sent after accepting Terms of Service. Must be configured in APIs console as a callback URL.
    redirectUri :: (Core.Maybe Core.Text),
    -- | Web property for the account.
    webproperty :: (Core.Maybe Webproperty)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AccountTicket' with the minimum fields required to make a request.
newAccountTicket ::
  AccountTicket
newAccountTicket =
  AccountTicket
    { account = Core.Nothing,
      id = Core.Nothing,
      kind = "analytics#accountTicket",
      profile = Core.Nothing,
      redirectUri = Core.Nothing,
      webproperty = Core.Nothing
    }

instance Core.FromJSON AccountTicket where
  parseJSON =
    Core.withObject
      "AccountTicket"
      ( \o ->
          AccountTicket
            Core.<$> (o Core..:? "account")
            Core.<*> (o Core..:? "id")
            Core.<*> ( o Core..:? "kind"
                         Core..!= "analytics#accountTicket"
                     )
            Core.<*> (o Core..:? "profile")
            Core.<*> (o Core..:? "redirectUri")
            Core.<*> (o Core..:? "webproperty")
      )

instance Core.ToJSON AccountTicket where
  toJSON AccountTicket {..} =
    Core.object
      ( Core.catMaybes
          [ ("account" Core..=) Core.<$> account,
            ("id" Core..=) Core.<$> id,
            Core.Just ("kind" Core..= kind),
            ("profile" Core..=) Core.<$> profile,
            ("redirectUri" Core..=) Core.<$> redirectUri,
            ("webproperty" Core..=) Core.<$> webproperty
          ]
      )

-- | JSON template for an Analytics account tree requests. The account tree request is used in the provisioning api to create an account, property, and view (profile). It contains the basic information required to make these fields.
--
-- /See:/ 'newAccountTreeRequest' smart constructor.
data AccountTreeRequest = AccountTreeRequest
  { -- |
    accountName :: (Core.Maybe Core.Text),
    -- | Resource type for account ticket.
    kind :: Core.Text,
    -- |
    profileName :: (Core.Maybe Core.Text),
    -- |
    timezone :: (Core.Maybe Core.Text),
    -- |
    webpropertyName :: (Core.Maybe Core.Text),
    -- |
    websiteUrl :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AccountTreeRequest' with the minimum fields required to make a request.
newAccountTreeRequest ::
  AccountTreeRequest
newAccountTreeRequest =
  AccountTreeRequest
    { accountName = Core.Nothing,
      kind = "analytics#accountTreeRequest",
      profileName = Core.Nothing,
      timezone = Core.Nothing,
      webpropertyName = Core.Nothing,
      websiteUrl = Core.Nothing
    }

instance Core.FromJSON AccountTreeRequest where
  parseJSON =
    Core.withObject
      "AccountTreeRequest"
      ( \o ->
          AccountTreeRequest
            Core.<$> (o Core..:? "accountName")
            Core.<*> ( o Core..:? "kind"
                         Core..!= "analytics#accountTreeRequest"
                     )
            Core.<*> (o Core..:? "profileName")
            Core.<*> (o Core..:? "timezone")
            Core.<*> (o Core..:? "webpropertyName")
            Core.<*> (o Core..:? "websiteUrl")
      )

instance Core.ToJSON AccountTreeRequest where
  toJSON AccountTreeRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("accountName" Core..=) Core.<$> accountName,
            Core.Just ("kind" Core..= kind),
            ("profileName" Core..=) Core.<$> profileName,
            ("timezone" Core..=) Core.<$> timezone,
            ("webpropertyName" Core..=) Core.<$> webpropertyName,
            ("websiteUrl" Core..=) Core.<$> websiteUrl
          ]
      )

-- | JSON template for an Analytics account tree response. The account tree response is used in the provisioning api to return the result of creating an account, property, and view (profile).
--
-- /See:/ 'newAccountTreeResponse' smart constructor.
data AccountTreeResponse = AccountTreeResponse
  { -- | The account created.
    account :: (Core.Maybe Account),
    -- | Resource type for account ticket.
    kind :: Core.Text,
    -- | View (Profile) for the account.
    profile :: (Core.Maybe Profile),
    -- | Web property for the account.
    webproperty :: (Core.Maybe Webproperty)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AccountTreeResponse' with the minimum fields required to make a request.
newAccountTreeResponse ::
  AccountTreeResponse
newAccountTreeResponse =
  AccountTreeResponse
    { account = Core.Nothing,
      kind = "analytics#accountTreeResponse",
      profile = Core.Nothing,
      webproperty = Core.Nothing
    }

instance Core.FromJSON AccountTreeResponse where
  parseJSON =
    Core.withObject
      "AccountTreeResponse"
      ( \o ->
          AccountTreeResponse
            Core.<$> (o Core..:? "account")
            Core.<*> ( o Core..:? "kind"
                         Core..!= "analytics#accountTreeResponse"
                     )
            Core.<*> (o Core..:? "profile")
            Core.<*> (o Core..:? "webproperty")
      )

instance Core.ToJSON AccountTreeResponse where
  toJSON AccountTreeResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("account" Core..=) Core.<$> account,
            Core.Just ("kind" Core..= kind),
            ("profile" Core..=) Core.<$> profile,
            ("webproperty" Core..=) Core.<$> webproperty
          ]
      )

-- | An account collection provides a list of Analytics accounts to which a user has access. The account collection is the entry point to all management information. Each resource in the collection corresponds to a single Analytics account.
--
-- /See:/ 'newAccounts' smart constructor.
data Accounts = Accounts
  { -- | A list of accounts.
    items :: (Core.Maybe [Account]),
    -- | The maximum number of entries the response can contain, regardless of the actual number of entries returned. Its value ranges from 1 to 1000 with a value of 1000 by default, or otherwise specified by the max-results query parameter.
    itemsPerPage :: (Core.Maybe Core.Int32),
    -- | Collection type.
    kind :: Core.Text,
    -- | Next link for this account collection.
    nextLink :: (Core.Maybe Core.Text),
    -- | Previous link for this account collection.
    previousLink :: (Core.Maybe Core.Text),
    -- | The starting index of the entries, which is 1 by default or otherwise specified by the start-index query parameter.
    startIndex :: (Core.Maybe Core.Int32),
    -- | The total number of results for the query, regardless of the number of results in the response.
    totalResults :: (Core.Maybe Core.Int32),
    -- | Email ID of the authenticated user
    username :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Accounts' with the minimum fields required to make a request.
newAccounts ::
  Accounts
newAccounts =
  Accounts
    { items = Core.Nothing,
      itemsPerPage = Core.Nothing,
      kind = "analytics#accounts",
      nextLink = Core.Nothing,
      previousLink = Core.Nothing,
      startIndex = Core.Nothing,
      totalResults = Core.Nothing,
      username = Core.Nothing
    }

instance Core.FromJSON Accounts where
  parseJSON =
    Core.withObject
      "Accounts"
      ( \o ->
          Accounts
            Core.<$> (o Core..:? "items" Core..!= Core.mempty)
            Core.<*> (o Core..:? "itemsPerPage")
            Core.<*> (o Core..:? "kind" Core..!= "analytics#accounts")
            Core.<*> (o Core..:? "nextLink")
            Core.<*> (o Core..:? "previousLink")
            Core.<*> (o Core..:? "startIndex")
            Core.<*> (o Core..:? "totalResults")
            Core.<*> (o Core..:? "username")
      )

instance Core.ToJSON Accounts where
  toJSON Accounts {..} =
    Core.object
      ( Core.catMaybes
          [ ("items" Core..=) Core.<$> items,
            ("itemsPerPage" Core..=) Core.<$> itemsPerPage,
            Core.Just ("kind" Core..= kind),
            ("nextLink" Core..=) Core.<$> nextLink,
            ("previousLink" Core..=) Core.<$> previousLink,
            ("startIndex" Core..=) Core.<$> startIndex,
            ("totalResults" Core..=) Core.<$> totalResults,
            ("username" Core..=) Core.<$> username
          ]
      )

-- | JSON template for an Google Ads account.
--
-- /See:/ 'newAdWordsAccount' smart constructor.
data AdWordsAccount = AdWordsAccount
  { -- | True if auto-tagging is enabled on the Google Ads account. Read-only after the insert operation.
    autoTaggingEnabled :: (Core.Maybe Core.Bool),
    -- | Customer ID. This field is required when creating a Google Ads link.
    customerId :: (Core.Maybe Core.Text),
    -- | Resource type for Google Ads account.
    kind :: Core.Text
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AdWordsAccount' with the minimum fields required to make a request.
newAdWordsAccount ::
  AdWordsAccount
newAdWordsAccount =
  AdWordsAccount
    { autoTaggingEnabled = Core.Nothing,
      customerId = Core.Nothing,
      kind = "analytics#adWordsAccount"
    }

instance Core.FromJSON AdWordsAccount where
  parseJSON =
    Core.withObject
      "AdWordsAccount"
      ( \o ->
          AdWordsAccount
            Core.<$> (o Core..:? "autoTaggingEnabled")
            Core.<*> (o Core..:? "customerId")
            Core.<*> ( o Core..:? "kind"
                         Core..!= "analytics#adWordsAccount"
                     )
      )

instance Core.ToJSON AdWordsAccount where
  toJSON AdWordsAccount {..} =
    Core.object
      ( Core.catMaybes
          [ ("autoTaggingEnabled" Core..=)
              Core.<$> autoTaggingEnabled,
            ("customerId" Core..=) Core.<$> customerId,
            Core.Just ("kind" Core..= kind)
          ]
      )

-- | Request template for the delete upload data request.
--
-- /See:/ 'newAnalyticsDataimportDeleteUploadDataRequest' smart constructor.
newtype AnalyticsDataimportDeleteUploadDataRequest = AnalyticsDataimportDeleteUploadDataRequest
  { -- | A list of upload UIDs.
    customDataImportUids :: (Core.Maybe [Core.Text])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AnalyticsDataimportDeleteUploadDataRequest' with the minimum fields required to make a request.
newAnalyticsDataimportDeleteUploadDataRequest ::
  AnalyticsDataimportDeleteUploadDataRequest
newAnalyticsDataimportDeleteUploadDataRequest =
  AnalyticsDataimportDeleteUploadDataRequest
    { customDataImportUids = Core.Nothing
    }

instance
  Core.FromJSON
    AnalyticsDataimportDeleteUploadDataRequest
  where
  parseJSON =
    Core.withObject
      "AnalyticsDataimportDeleteUploadDataRequest"
      ( \o ->
          AnalyticsDataimportDeleteUploadDataRequest
            Core.<$> ( o Core..:? "customDataImportUids"
                         Core..!= Core.mempty
                     )
      )

instance
  Core.ToJSON
    AnalyticsDataimportDeleteUploadDataRequest
  where
  toJSON AnalyticsDataimportDeleteUploadDataRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("customDataImportUids" Core..=)
              Core.<$> customDataImportUids
          ]
      )

-- | JSON template for a metadata column.
--
-- /See:/ 'newColumn' smart constructor.
data Column = Column
  { -- | Map of attribute name and value for this column.
    attributes :: (Core.Maybe Column_Attributes),
    -- | Column id.
    id :: (Core.Maybe Core.Text),
    -- | Resource type for Analytics column.
    kind :: Core.Text
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Column' with the minimum fields required to make a request.
newColumn ::
  Column
newColumn =
  Column
    { attributes = Core.Nothing,
      id = Core.Nothing,
      kind = "analytics#column"
    }

instance Core.FromJSON Column where
  parseJSON =
    Core.withObject
      "Column"
      ( \o ->
          Column
            Core.<$> (o Core..:? "attributes")
            Core.<*> (o Core..:? "id")
            Core.<*> (o Core..:? "kind" Core..!= "analytics#column")
      )

instance Core.ToJSON Column where
  toJSON Column {..} =
    Core.object
      ( Core.catMaybes
          [ ("attributes" Core..=) Core.<$> attributes,
            ("id" Core..=) Core.<$> id,
            Core.Just ("kind" Core..= kind)
          ]
      )

-- | Map of attribute name and value for this column.
--
-- /See:/ 'newColumn_Attributes' smart constructor.
newtype Column_Attributes = Column_Attributes
  { -- | The name of the attribute.
    addtional :: (Core.HashMap Core.Text Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Column_Attributes' with the minimum fields required to make a request.
newColumn_Attributes ::
  -- |  The name of the attribute. See 'addtional'.
  Core.HashMap Core.Text Core.Text ->
  Column_Attributes
newColumn_Attributes addtional = Column_Attributes {addtional = addtional}

instance Core.FromJSON Column_Attributes where
  parseJSON =
    Core.withObject
      "Column_Attributes"
      ( \o ->
          Column_Attributes Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON Column_Attributes where
  toJSON Column_Attributes {..} = Core.toJSON addtional

-- | Lists columns (dimensions and metrics) for a particular report type.
--
-- /See:/ 'newColumns' smart constructor.
data Columns = Columns
  { -- | List of attributes names returned by columns.
    attributeNames :: (Core.Maybe [Core.Text]),
    -- | Etag of collection. This etag can be compared with the last response etag to check if response has changed.
    etag :: (Core.Maybe Core.Text),
    -- | List of columns for a report type.
    items :: (Core.Maybe [Column]),
    -- | Collection type.
    kind :: Core.Text,
    -- | Total number of columns returned in the response.
    totalResults :: (Core.Maybe Core.Int32)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Columns' with the minimum fields required to make a request.
newColumns ::
  Columns
newColumns =
  Columns
    { attributeNames = Core.Nothing,
      etag = Core.Nothing,
      items = Core.Nothing,
      kind = "analytics#columns",
      totalResults = Core.Nothing
    }

instance Core.FromJSON Columns where
  parseJSON =
    Core.withObject
      "Columns"
      ( \o ->
          Columns
            Core.<$> (o Core..:? "attributeNames" Core..!= Core.mempty)
            Core.<*> (o Core..:? "etag")
            Core.<*> (o Core..:? "items" Core..!= Core.mempty)
            Core.<*> (o Core..:? "kind" Core..!= "analytics#columns")
            Core.<*> (o Core..:? "totalResults")
      )

instance Core.ToJSON Columns where
  toJSON Columns {..} =
    Core.object
      ( Core.catMaybes
          [ ("attributeNames" Core..=) Core.<$> attributeNames,
            ("etag" Core..=) Core.<$> etag,
            ("items" Core..=) Core.<$> items,
            Core.Just ("kind" Core..= kind),
            ("totalResults" Core..=) Core.<$> totalResults
          ]
      )

-- | JSON template for an Analytics custom data source.
--
-- /See:/ 'newCustomDataSource' smart constructor.
data CustomDataSource = CustomDataSource
  { -- | Account ID to which this custom data source belongs.
    accountId :: (Core.Maybe Core.Text),
    -- |
    childLink :: (Core.Maybe CustomDataSource_ChildLink),
    -- | Time this custom data source was created.
    created :: (Core.Maybe Core.DateTime'),
    -- | Description of custom data source.
    description :: (Core.Maybe Core.Text),
    -- | Custom data source ID.
    id :: (Core.Maybe Core.Text),
    -- |
    importBehavior :: (Core.Maybe Core.Text),
    -- | Resource type for Analytics custom data source.
    kind :: Core.Text,
    -- | Name of this custom data source.
    name :: (Core.Maybe Core.Text),
    -- | Parent link for this custom data source. Points to the web property to which this custom data source belongs.
    parentLink :: (Core.Maybe CustomDataSource_ParentLink),
    -- | IDs of views (profiles) linked to the custom data source.
    profilesLinked :: (Core.Maybe [Core.Text]),
    -- | Collection of schema headers of the custom data source.
    schema :: (Core.Maybe [Core.Text]),
    -- | Link for this Analytics custom data source.
    selfLink :: (Core.Maybe Core.Text),
    -- | Type of the custom data source.
    type' :: (Core.Maybe Core.Text),
    -- | Time this custom data source was last modified.
    updated :: (Core.Maybe Core.DateTime'),
    -- | Upload type of the custom data source.
    uploadType :: (Core.Maybe Core.Text),
    -- | Web property ID of the form UA-XXXXX-YY to which this custom data source belongs.
    webPropertyId :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CustomDataSource' with the minimum fields required to make a request.
newCustomDataSource ::
  CustomDataSource
newCustomDataSource =
  CustomDataSource
    { accountId = Core.Nothing,
      childLink = Core.Nothing,
      created = Core.Nothing,
      description = Core.Nothing,
      id = Core.Nothing,
      importBehavior = Core.Nothing,
      kind = "analytics#customDataSource",
      name = Core.Nothing,
      parentLink = Core.Nothing,
      profilesLinked = Core.Nothing,
      schema = Core.Nothing,
      selfLink = Core.Nothing,
      type' = Core.Nothing,
      updated = Core.Nothing,
      uploadType = Core.Nothing,
      webPropertyId = Core.Nothing
    }

instance Core.FromJSON CustomDataSource where
  parseJSON =
    Core.withObject
      "CustomDataSource"
      ( \o ->
          CustomDataSource
            Core.<$> (o Core..:? "accountId")
            Core.<*> (o Core..:? "childLink")
            Core.<*> (o Core..:? "created")
            Core.<*> (o Core..:? "description")
            Core.<*> (o Core..:? "id")
            Core.<*> (o Core..:? "importBehavior")
            Core.<*> ( o Core..:? "kind"
                         Core..!= "analytics#customDataSource"
                     )
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "parentLink")
            Core.<*> (o Core..:? "profilesLinked" Core..!= Core.mempty)
            Core.<*> (o Core..:? "schema" Core..!= Core.mempty)
            Core.<*> (o Core..:? "selfLink")
            Core.<*> (o Core..:? "type")
            Core.<*> (o Core..:? "updated")
            Core.<*> (o Core..:? "uploadType")
            Core.<*> (o Core..:? "webPropertyId")
      )

instance Core.ToJSON CustomDataSource where
  toJSON CustomDataSource {..} =
    Core.object
      ( Core.catMaybes
          [ ("accountId" Core..=) Core.<$> accountId,
            ("childLink" Core..=) Core.<$> childLink,
            ("created" Core..=) Core.<$> created,
            ("description" Core..=) Core.<$> description,
            ("id" Core..=) Core.<$> id,
            ("importBehavior" Core..=) Core.<$> importBehavior,
            Core.Just ("kind" Core..= kind),
            ("name" Core..=) Core.<$> name,
            ("parentLink" Core..=) Core.<$> parentLink,
            ("profilesLinked" Core..=) Core.<$> profilesLinked,
            ("schema" Core..=) Core.<$> schema,
            ("selfLink" Core..=) Core.<$> selfLink,
            ("type" Core..=) Core.<$> type',
            ("updated" Core..=) Core.<$> updated,
            ("uploadType" Core..=) Core.<$> uploadType,
            ("webPropertyId" Core..=) Core.<$> webPropertyId
          ]
      )

--
-- /See:/ 'newCustomDataSource_ChildLink' smart constructor.
data CustomDataSource_ChildLink = CustomDataSource_ChildLink
  { -- | Link to the list of daily uploads for this custom data source. Link to the list of uploads for this custom data source.
    href :: (Core.Maybe Core.Text),
    -- | Value is \"analytics#dailyUploads\". Value is \"analytics#uploads\".
    type' :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CustomDataSource_ChildLink' with the minimum fields required to make a request.
newCustomDataSource_ChildLink ::
  CustomDataSource_ChildLink
newCustomDataSource_ChildLink =
  CustomDataSource_ChildLink {href = Core.Nothing, type' = Core.Nothing}

instance Core.FromJSON CustomDataSource_ChildLink where
  parseJSON =
    Core.withObject
      "CustomDataSource_ChildLink"
      ( \o ->
          CustomDataSource_ChildLink
            Core.<$> (o Core..:? "href") Core.<*> (o Core..:? "type")
      )

instance Core.ToJSON CustomDataSource_ChildLink where
  toJSON CustomDataSource_ChildLink {..} =
    Core.object
      ( Core.catMaybes
          [ ("href" Core..=) Core.<$> href,
            ("type" Core..=) Core.<$> type'
          ]
      )

-- | Parent link for this custom data source. Points to the web property to which this custom data source belongs.
--
-- /See:/ 'newCustomDataSource_ParentLink' smart constructor.
data CustomDataSource_ParentLink = CustomDataSource_ParentLink
  { -- | Link to the web property to which this custom data source belongs.
    href :: (Core.Maybe Core.Text),
    -- | Value is \"analytics#webproperty\".
    type' :: Core.Text
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CustomDataSource_ParentLink' with the minimum fields required to make a request.
newCustomDataSource_ParentLink ::
  CustomDataSource_ParentLink
newCustomDataSource_ParentLink =
  CustomDataSource_ParentLink
    { href = Core.Nothing,
      type' = "analytics#webproperty"
    }

instance Core.FromJSON CustomDataSource_ParentLink where
  parseJSON =
    Core.withObject
      "CustomDataSource_ParentLink"
      ( \o ->
          CustomDataSource_ParentLink
            Core.<$> (o Core..:? "href")
            Core.<*> (o Core..:? "type" Core..!= "analytics#webproperty")
      )

instance Core.ToJSON CustomDataSource_ParentLink where
  toJSON CustomDataSource_ParentLink {..} =
    Core.object
      ( Core.catMaybes
          [ ("href" Core..=) Core.<$> href,
            Core.Just ("type" Core..= type')
          ]
      )

-- | Lists Analytics custom data sources to which the user has access. Each resource in the collection corresponds to a single Analytics custom data source.
--
-- /See:/ 'newCustomDataSources' smart constructor.
data CustomDataSources = CustomDataSources
  { -- | Collection of custom data sources.
    items :: (Core.Maybe [CustomDataSource]),
    -- | The maximum number of resources the response can contain, regardless of the actual number of resources returned. Its value ranges from 1 to 1000 with a value of 1000 by default, or otherwise specified by the max-results query parameter.
    itemsPerPage :: (Core.Maybe Core.Int32),
    -- | Collection type.
    kind :: Core.Text,
    -- | Link to next page for this custom data source collection.
    nextLink :: (Core.Maybe Core.Text),
    -- | Link to previous page for this custom data source collection.
    previousLink :: (Core.Maybe Core.Text),
    -- | The starting index of the resources, which is 1 by default or otherwise specified by the start-index query parameter.
    startIndex :: (Core.Maybe Core.Int32),
    -- | The total number of results for the query, regardless of the number of results in the response.
    totalResults :: (Core.Maybe Core.Int32),
    -- | Email ID of the authenticated user
    username :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CustomDataSources' with the minimum fields required to make a request.
newCustomDataSources ::
  CustomDataSources
newCustomDataSources =
  CustomDataSources
    { items = Core.Nothing,
      itemsPerPage = Core.Nothing,
      kind = "analytics#customDataSources",
      nextLink = Core.Nothing,
      previousLink = Core.Nothing,
      startIndex = Core.Nothing,
      totalResults = Core.Nothing,
      username = Core.Nothing
    }

instance Core.FromJSON CustomDataSources where
  parseJSON =
    Core.withObject
      "CustomDataSources"
      ( \o ->
          CustomDataSources
            Core.<$> (o Core..:? "items" Core..!= Core.mempty)
            Core.<*> (o Core..:? "itemsPerPage")
            Core.<*> ( o Core..:? "kind"
                         Core..!= "analytics#customDataSources"
                     )
            Core.<*> (o Core..:? "nextLink")
            Core.<*> (o Core..:? "previousLink")
            Core.<*> (o Core..:? "startIndex")
            Core.<*> (o Core..:? "totalResults")
            Core.<*> (o Core..:? "username")
      )

instance Core.ToJSON CustomDataSources where
  toJSON CustomDataSources {..} =
    Core.object
      ( Core.catMaybes
          [ ("items" Core..=) Core.<$> items,
            ("itemsPerPage" Core..=) Core.<$> itemsPerPage,
            Core.Just ("kind" Core..= kind),
            ("nextLink" Core..=) Core.<$> nextLink,
            ("previousLink" Core..=) Core.<$> previousLink,
            ("startIndex" Core..=) Core.<$> startIndex,
            ("totalResults" Core..=) Core.<$> totalResults,
            ("username" Core..=) Core.<$> username
          ]
      )

-- | JSON template for Analytics Custom Dimension.
--
-- /See:/ 'newCustomDimension' smart constructor.
data CustomDimension = CustomDimension
  { -- | Account ID.
    accountId :: (Core.Maybe Core.Text),
    -- | Boolean indicating whether the custom dimension is active.
    active :: (Core.Maybe Core.Bool),
    -- | Time the custom dimension was created.
    created :: (Core.Maybe Core.DateTime'),
    -- | Custom dimension ID.
    id :: (Core.Maybe Core.Text),
    -- | Index of the custom dimension.
    index :: (Core.Maybe Core.Int32),
    -- | Kind value for a custom dimension. Set to \"analytics#customDimension\". It is a read-only field.
    kind :: Core.Text,
    -- | Name of the custom dimension.
    name :: (Core.Maybe Core.Text),
    -- | Parent link for the custom dimension. Points to the property to which the custom dimension belongs.
    parentLink :: (Core.Maybe CustomDimension_ParentLink),
    -- | Scope of the custom dimension: HIT, SESSION, USER or PRODUCT.
    scope :: (Core.Maybe Core.Text),
    -- | Link for the custom dimension
    selfLink :: (Core.Maybe Core.Text),
    -- | Time the custom dimension was last modified.
    updated :: (Core.Maybe Core.DateTime'),
    -- | Property ID.
    webPropertyId :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CustomDimension' with the minimum fields required to make a request.
newCustomDimension ::
  CustomDimension
newCustomDimension =
  CustomDimension
    { accountId = Core.Nothing,
      active = Core.Nothing,
      created = Core.Nothing,
      id = Core.Nothing,
      index = Core.Nothing,
      kind = "analytics#customDimension",
      name = Core.Nothing,
      parentLink = Core.Nothing,
      scope = Core.Nothing,
      selfLink = Core.Nothing,
      updated = Core.Nothing,
      webPropertyId = Core.Nothing
    }

instance Core.FromJSON CustomDimension where
  parseJSON =
    Core.withObject
      "CustomDimension"
      ( \o ->
          CustomDimension
            Core.<$> (o Core..:? "accountId")
            Core.<*> (o Core..:? "active")
            Core.<*> (o Core..:? "created")
            Core.<*> (o Core..:? "id")
            Core.<*> (o Core..:? "index")
            Core.<*> ( o Core..:? "kind"
                         Core..!= "analytics#customDimension"
                     )
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "parentLink")
            Core.<*> (o Core..:? "scope")
            Core.<*> (o Core..:? "selfLink")
            Core.<*> (o Core..:? "updated")
            Core.<*> (o Core..:? "webPropertyId")
      )

instance Core.ToJSON CustomDimension where
  toJSON CustomDimension {..} =
    Core.object
      ( Core.catMaybes
          [ ("accountId" Core..=) Core.<$> accountId,
            ("active" Core..=) Core.<$> active,
            ("created" Core..=) Core.<$> created,
            ("id" Core..=) Core.<$> id,
            ("index" Core..=) Core.<$> index,
            Core.Just ("kind" Core..= kind),
            ("name" Core..=) Core.<$> name,
            ("parentLink" Core..=) Core.<$> parentLink,
            ("scope" Core..=) Core.<$> scope,
            ("selfLink" Core..=) Core.<$> selfLink,
            ("updated" Core..=) Core.<$> updated,
            ("webPropertyId" Core..=) Core.<$> webPropertyId
          ]
      )

-- | Parent link for the custom dimension. Points to the property to which the custom dimension belongs.
--
-- /See:/ 'newCustomDimension_ParentLink' smart constructor.
data CustomDimension_ParentLink = CustomDimension_ParentLink
  { -- | Link to the property to which the custom dimension belongs.
    href :: (Core.Maybe Core.Text),
    -- | Type of the parent link. Set to \"analytics#webproperty\".
    type' :: Core.Text
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CustomDimension_ParentLink' with the minimum fields required to make a request.
newCustomDimension_ParentLink ::
  CustomDimension_ParentLink
newCustomDimension_ParentLink =
  CustomDimension_ParentLink
    { href = Core.Nothing,
      type' = "analytics#webproperty"
    }

instance Core.FromJSON CustomDimension_ParentLink where
  parseJSON =
    Core.withObject
      "CustomDimension_ParentLink"
      ( \o ->
          CustomDimension_ParentLink
            Core.<$> (o Core..:? "href")
            Core.<*> (o Core..:? "type" Core..!= "analytics#webproperty")
      )

instance Core.ToJSON CustomDimension_ParentLink where
  toJSON CustomDimension_ParentLink {..} =
    Core.object
      ( Core.catMaybes
          [ ("href" Core..=) Core.<$> href,
            Core.Just ("type" Core..= type')
          ]
      )

-- | A custom dimension collection lists Analytics custom dimensions to which the user has access. Each resource in the collection corresponds to a single Analytics custom dimension.
--
-- /See:/ 'newCustomDimensions' smart constructor.
data CustomDimensions = CustomDimensions
  { -- | Collection of custom dimensions.
    items :: (Core.Maybe [CustomDimension]),
    -- | The maximum number of resources the response can contain, regardless of the actual number of resources returned. Its value ranges from 1 to 1000 with a value of 1000 by default, or otherwise specified by the max-results query parameter.
    itemsPerPage :: (Core.Maybe Core.Int32),
    -- | Collection type.
    kind :: Core.Text,
    -- | Link to next page for this custom dimension collection.
    nextLink :: (Core.Maybe Core.Text),
    -- | Link to previous page for this custom dimension collection.
    previousLink :: (Core.Maybe Core.Text),
    -- | The starting index of the resources, which is 1 by default or otherwise specified by the start-index query parameter.
    startIndex :: (Core.Maybe Core.Int32),
    -- | The total number of results for the query, regardless of the number of results in the response.
    totalResults :: (Core.Maybe Core.Int32),
    -- | Email ID of the authenticated user
    username :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CustomDimensions' with the minimum fields required to make a request.
newCustomDimensions ::
  CustomDimensions
newCustomDimensions =
  CustomDimensions
    { items = Core.Nothing,
      itemsPerPage = Core.Nothing,
      kind = "analytics#customDimensions",
      nextLink = Core.Nothing,
      previousLink = Core.Nothing,
      startIndex = Core.Nothing,
      totalResults = Core.Nothing,
      username = Core.Nothing
    }

instance Core.FromJSON CustomDimensions where
  parseJSON =
    Core.withObject
      "CustomDimensions"
      ( \o ->
          CustomDimensions
            Core.<$> (o Core..:? "items" Core..!= Core.mempty)
            Core.<*> (o Core..:? "itemsPerPage")
            Core.<*> ( o Core..:? "kind"
                         Core..!= "analytics#customDimensions"
                     )
            Core.<*> (o Core..:? "nextLink")
            Core.<*> (o Core..:? "previousLink")
            Core.<*> (o Core..:? "startIndex")
            Core.<*> (o Core..:? "totalResults")
            Core.<*> (o Core..:? "username")
      )

instance Core.ToJSON CustomDimensions where
  toJSON CustomDimensions {..} =
    Core.object
      ( Core.catMaybes
          [ ("items" Core..=) Core.<$> items,
            ("itemsPerPage" Core..=) Core.<$> itemsPerPage,
            Core.Just ("kind" Core..= kind),
            ("nextLink" Core..=) Core.<$> nextLink,
            ("previousLink" Core..=) Core.<$> previousLink,
            ("startIndex" Core..=) Core.<$> startIndex,
            ("totalResults" Core..=) Core.<$> totalResults,
            ("username" Core..=) Core.<$> username
          ]
      )

-- | JSON template for Analytics Custom Metric.
--
-- /See:/ 'newCustomMetric' smart constructor.
data CustomMetric = CustomMetric
  { -- | Account ID.
    accountId :: (Core.Maybe Core.Text),
    -- | Boolean indicating whether the custom metric is active.
    active :: (Core.Maybe Core.Bool),
    -- | Time the custom metric was created.
    created :: (Core.Maybe Core.DateTime'),
    -- | Custom metric ID.
    id :: (Core.Maybe Core.Text),
    -- | Index of the custom metric.
    index :: (Core.Maybe Core.Int32),
    -- | Kind value for a custom metric. Set to \"analytics#customMetric\". It is a read-only field.
    kind :: Core.Text,
    -- | Max value of custom metric.
    maxValue :: (Core.Maybe Core.Text),
    -- | Min value of custom metric.
    minValue :: (Core.Maybe Core.Text),
    -- | Name of the custom metric.
    name :: (Core.Maybe Core.Text),
    -- | Parent link for the custom metric. Points to the property to which the custom metric belongs.
    parentLink :: (Core.Maybe CustomMetric_ParentLink),
    -- | Scope of the custom metric: HIT or PRODUCT.
    scope :: (Core.Maybe Core.Text),
    -- | Link for the custom metric
    selfLink :: (Core.Maybe Core.Text),
    -- | Data type of custom metric.
    type' :: (Core.Maybe Core.Text),
    -- | Time the custom metric was last modified.
    updated :: (Core.Maybe Core.DateTime'),
    -- | Property ID.
    webPropertyId :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CustomMetric' with the minimum fields required to make a request.
newCustomMetric ::
  CustomMetric
newCustomMetric =
  CustomMetric
    { accountId = Core.Nothing,
      active = Core.Nothing,
      created = Core.Nothing,
      id = Core.Nothing,
      index = Core.Nothing,
      kind = "analytics#customMetric",
      maxValue = Core.Nothing,
      minValue = Core.Nothing,
      name = Core.Nothing,
      parentLink = Core.Nothing,
      scope = Core.Nothing,
      selfLink = Core.Nothing,
      type' = Core.Nothing,
      updated = Core.Nothing,
      webPropertyId = Core.Nothing
    }

instance Core.FromJSON CustomMetric where
  parseJSON =
    Core.withObject
      "CustomMetric"
      ( \o ->
          CustomMetric
            Core.<$> (o Core..:? "accountId")
            Core.<*> (o Core..:? "active")
            Core.<*> (o Core..:? "created")
            Core.<*> (o Core..:? "id")
            Core.<*> (o Core..:? "index")
            Core.<*> (o Core..:? "kind" Core..!= "analytics#customMetric")
            Core.<*> (o Core..:? "max_value")
            Core.<*> (o Core..:? "min_value")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "parentLink")
            Core.<*> (o Core..:? "scope")
            Core.<*> (o Core..:? "selfLink")
            Core.<*> (o Core..:? "type")
            Core.<*> (o Core..:? "updated")
            Core.<*> (o Core..:? "webPropertyId")
      )

instance Core.ToJSON CustomMetric where
  toJSON CustomMetric {..} =
    Core.object
      ( Core.catMaybes
          [ ("accountId" Core..=) Core.<$> accountId,
            ("active" Core..=) Core.<$> active,
            ("created" Core..=) Core.<$> created,
            ("id" Core..=) Core.<$> id,
            ("index" Core..=) Core.<$> index,
            Core.Just ("kind" Core..= kind),
            ("max_value" Core..=) Core.<$> maxValue,
            ("min_value" Core..=) Core.<$> minValue,
            ("name" Core..=) Core.<$> name,
            ("parentLink" Core..=) Core.<$> parentLink,
            ("scope" Core..=) Core.<$> scope,
            ("selfLink" Core..=) Core.<$> selfLink,
            ("type" Core..=) Core.<$> type',
            ("updated" Core..=) Core.<$> updated,
            ("webPropertyId" Core..=) Core.<$> webPropertyId
          ]
      )

-- | Parent link for the custom metric. Points to the property to which the custom metric belongs.
--
-- /See:/ 'newCustomMetric_ParentLink' smart constructor.
data CustomMetric_ParentLink = CustomMetric_ParentLink
  { -- | Link to the property to which the custom metric belongs.
    href :: (Core.Maybe Core.Text),
    -- | Type of the parent link. Set to \"analytics#webproperty\".
    type' :: Core.Text
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CustomMetric_ParentLink' with the minimum fields required to make a request.
newCustomMetric_ParentLink ::
  CustomMetric_ParentLink
newCustomMetric_ParentLink =
  CustomMetric_ParentLink {href = Core.Nothing, type' = "analytics#webproperty"}

instance Core.FromJSON CustomMetric_ParentLink where
  parseJSON =
    Core.withObject
      "CustomMetric_ParentLink"
      ( \o ->
          CustomMetric_ParentLink
            Core.<$> (o Core..:? "href")
            Core.<*> (o Core..:? "type" Core..!= "analytics#webproperty")
      )

instance Core.ToJSON CustomMetric_ParentLink where
  toJSON CustomMetric_ParentLink {..} =
    Core.object
      ( Core.catMaybes
          [ ("href" Core..=) Core.<$> href,
            Core.Just ("type" Core..= type')
          ]
      )

-- | A custom metric collection lists Analytics custom metrics to which the user has access. Each resource in the collection corresponds to a single Analytics custom metric.
--
-- /See:/ 'newCustomMetrics' smart constructor.
data CustomMetrics = CustomMetrics
  { -- | Collection of custom metrics.
    items :: (Core.Maybe [CustomMetric]),
    -- | The maximum number of resources the response can contain, regardless of the actual number of resources returned. Its value ranges from 1 to 1000 with a value of 1000 by default, or otherwise specified by the max-results query parameter.
    itemsPerPage :: (Core.Maybe Core.Int32),
    -- | Collection type.
    kind :: Core.Text,
    -- | Link to next page for this custom metric collection.
    nextLink :: (Core.Maybe Core.Text),
    -- | Link to previous page for this custom metric collection.
    previousLink :: (Core.Maybe Core.Text),
    -- | The starting index of the resources, which is 1 by default or otherwise specified by the start-index query parameter.
    startIndex :: (Core.Maybe Core.Int32),
    -- | The total number of results for the query, regardless of the number of results in the response.
    totalResults :: (Core.Maybe Core.Int32),
    -- | Email ID of the authenticated user
    username :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CustomMetrics' with the minimum fields required to make a request.
newCustomMetrics ::
  CustomMetrics
newCustomMetrics =
  CustomMetrics
    { items = Core.Nothing,
      itemsPerPage = Core.Nothing,
      kind = "analytics#customMetrics",
      nextLink = Core.Nothing,
      previousLink = Core.Nothing,
      startIndex = Core.Nothing,
      totalResults = Core.Nothing,
      username = Core.Nothing
    }

instance Core.FromJSON CustomMetrics where
  parseJSON =
    Core.withObject
      "CustomMetrics"
      ( \o ->
          CustomMetrics
            Core.<$> (o Core..:? "items" Core..!= Core.mempty)
            Core.<*> (o Core..:? "itemsPerPage")
            Core.<*> ( o Core..:? "kind"
                         Core..!= "analytics#customMetrics"
                     )
            Core.<*> (o Core..:? "nextLink")
            Core.<*> (o Core..:? "previousLink")
            Core.<*> (o Core..:? "startIndex")
            Core.<*> (o Core..:? "totalResults")
            Core.<*> (o Core..:? "username")
      )

instance Core.ToJSON CustomMetrics where
  toJSON CustomMetrics {..} =
    Core.object
      ( Core.catMaybes
          [ ("items" Core..=) Core.<$> items,
            ("itemsPerPage" Core..=) Core.<$> itemsPerPage,
            Core.Just ("kind" Core..= kind),
            ("nextLink" Core..=) Core.<$> nextLink,
            ("previousLink" Core..=) Core.<$> previousLink,
            ("startIndex" Core..=) Core.<$> startIndex,
            ("totalResults" Core..=) Core.<$> totalResults,
            ("username" Core..=) Core.<$> username
          ]
      )

-- | JSON template for Analytics Entity Google Ads Link.
--
-- /See:/ 'newEntityAdWordsLink' smart constructor.
data EntityAdWordsLink = EntityAdWordsLink
  { -- | A list of Google Ads client accounts. These cannot be MCC accounts. This field is required when creating a Google Ads link. It cannot be empty.
    adWordsAccounts :: (Core.Maybe [AdWordsAccount]),
    -- | Web property being linked.
    entity :: (Core.Maybe EntityAdWordsLink_Entity),
    -- | Entity Google Ads link ID
    id :: (Core.Maybe Core.Text),
    -- | Resource type for entity Google Ads link.
    kind :: Core.Text,
    -- | Name of the link. This field is required when creating a Google Ads link.
    name :: (Core.Maybe Core.Text),
    -- | IDs of linked Views (Profiles) represented as strings.
    profileIds :: (Core.Maybe [Core.Text]),
    -- | URL link for this Google Analytics - Google Ads link.
    selfLink :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'EntityAdWordsLink' with the minimum fields required to make a request.
newEntityAdWordsLink ::
  EntityAdWordsLink
newEntityAdWordsLink =
  EntityAdWordsLink
    { adWordsAccounts = Core.Nothing,
      entity = Core.Nothing,
      id = Core.Nothing,
      kind = "analytics#entityAdWordsLink",
      name = Core.Nothing,
      profileIds = Core.Nothing,
      selfLink = Core.Nothing
    }

instance Core.FromJSON EntityAdWordsLink where
  parseJSON =
    Core.withObject
      "EntityAdWordsLink"
      ( \o ->
          EntityAdWordsLink
            Core.<$> (o Core..:? "adWordsAccounts" Core..!= Core.mempty)
            Core.<*> (o Core..:? "entity")
            Core.<*> (o Core..:? "id")
            Core.<*> ( o Core..:? "kind"
                         Core..!= "analytics#entityAdWordsLink"
                     )
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "profileIds" Core..!= Core.mempty)
            Core.<*> (o Core..:? "selfLink")
      )

instance Core.ToJSON EntityAdWordsLink where
  toJSON EntityAdWordsLink {..} =
    Core.object
      ( Core.catMaybes
          [ ("adWordsAccounts" Core..=)
              Core.<$> adWordsAccounts,
            ("entity" Core..=) Core.<$> entity,
            ("id" Core..=) Core.<$> id,
            Core.Just ("kind" Core..= kind),
            ("name" Core..=) Core.<$> name,
            ("profileIds" Core..=) Core.<$> profileIds,
            ("selfLink" Core..=) Core.<$> selfLink
          ]
      )

-- | Web property being linked.
--
-- /See:/ 'newEntityAdWordsLink_Entity' smart constructor.
newtype EntityAdWordsLink_Entity = EntityAdWordsLink_Entity
  { -- |
    webPropertyRef :: (Core.Maybe WebPropertyRef)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'EntityAdWordsLink_Entity' with the minimum fields required to make a request.
newEntityAdWordsLink_Entity ::
  EntityAdWordsLink_Entity
newEntityAdWordsLink_Entity =
  EntityAdWordsLink_Entity {webPropertyRef = Core.Nothing}

instance Core.FromJSON EntityAdWordsLink_Entity where
  parseJSON =
    Core.withObject
      "EntityAdWordsLink_Entity"
      ( \o ->
          EntityAdWordsLink_Entity
            Core.<$> (o Core..:? "webPropertyRef")
      )

instance Core.ToJSON EntityAdWordsLink_Entity where
  toJSON EntityAdWordsLink_Entity {..} =
    Core.object
      ( Core.catMaybes
          [("webPropertyRef" Core..=) Core.<$> webPropertyRef]
      )

-- | An entity Google Ads link collection provides a list of GA-Google Ads links Each resource in this collection corresponds to a single link.
--
-- /See:/ 'newEntityAdWordsLinks' smart constructor.
data EntityAdWordsLinks = EntityAdWordsLinks
  { -- | A list of entity Google Ads links.
    items :: (Core.Maybe [EntityAdWordsLink]),
    -- | The maximum number of entries the response can contain, regardless of the actual number of entries returned. Its value ranges from 1 to 1000 with a value of 1000 by default, or otherwise specified by the max-results query parameter.
    itemsPerPage :: (Core.Maybe Core.Int32),
    -- | Collection type.
    kind :: Core.Text,
    -- | Next link for this Google Ads link collection.
    nextLink :: (Core.Maybe Core.Text),
    -- | Previous link for this Google Ads link collection.
    previousLink :: (Core.Maybe Core.Text),
    -- | The starting index of the entries, which is 1 by default or otherwise specified by the start-index query parameter.
    startIndex :: (Core.Maybe Core.Int32),
    -- | The total number of results for the query, regardless of the number of results in the response.
    totalResults :: (Core.Maybe Core.Int32)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'EntityAdWordsLinks' with the minimum fields required to make a request.
newEntityAdWordsLinks ::
  EntityAdWordsLinks
newEntityAdWordsLinks =
  EntityAdWordsLinks
    { items = Core.Nothing,
      itemsPerPage = Core.Nothing,
      kind = "analytics#entityAdWordsLinks",
      nextLink = Core.Nothing,
      previousLink = Core.Nothing,
      startIndex = Core.Nothing,
      totalResults = Core.Nothing
    }

instance Core.FromJSON EntityAdWordsLinks where
  parseJSON =
    Core.withObject
      "EntityAdWordsLinks"
      ( \o ->
          EntityAdWordsLinks
            Core.<$> (o Core..:? "items" Core..!= Core.mempty)
            Core.<*> (o Core..:? "itemsPerPage")
            Core.<*> ( o Core..:? "kind"
                         Core..!= "analytics#entityAdWordsLinks"
                     )
            Core.<*> (o Core..:? "nextLink")
            Core.<*> (o Core..:? "previousLink")
            Core.<*> (o Core..:? "startIndex")
            Core.<*> (o Core..:? "totalResults")
      )

instance Core.ToJSON EntityAdWordsLinks where
  toJSON EntityAdWordsLinks {..} =
    Core.object
      ( Core.catMaybes
          [ ("items" Core..=) Core.<$> items,
            ("itemsPerPage" Core..=) Core.<$> itemsPerPage,
            Core.Just ("kind" Core..= kind),
            ("nextLink" Core..=) Core.<$> nextLink,
            ("previousLink" Core..=) Core.<$> previousLink,
            ("startIndex" Core..=) Core.<$> startIndex,
            ("totalResults" Core..=) Core.<$> totalResults
          ]
      )

-- | JSON template for an Analytics Entity-User Link. Returns permissions that a user has for an entity.
--
-- /See:/ 'newEntityUserLink' smart constructor.
data EntityUserLink = EntityUserLink
  { -- | Entity for this link. It can be an account, a web property, or a view (profile).
    entity :: (Core.Maybe EntityUserLink_Entity),
    -- | Entity user link ID
    id :: (Core.Maybe Core.Text),
    -- | Resource type for entity user link.
    kind :: Core.Text,
    -- | Permissions the user has for this entity.
    permissions :: (Core.Maybe EntityUserLink_Permissions),
    -- | Self link for this resource.
    selfLink :: (Core.Maybe Core.Text),
    -- | User reference.
    userRef :: (Core.Maybe UserRef)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'EntityUserLink' with the minimum fields required to make a request.
newEntityUserLink ::
  EntityUserLink
newEntityUserLink =
  EntityUserLink
    { entity = Core.Nothing,
      id = Core.Nothing,
      kind = "analytics#entityUserLink",
      permissions = Core.Nothing,
      selfLink = Core.Nothing,
      userRef = Core.Nothing
    }

instance Core.FromJSON EntityUserLink where
  parseJSON =
    Core.withObject
      "EntityUserLink"
      ( \o ->
          EntityUserLink
            Core.<$> (o Core..:? "entity")
            Core.<*> (o Core..:? "id")
            Core.<*> ( o Core..:? "kind"
                         Core..!= "analytics#entityUserLink"
                     )
            Core.<*> (o Core..:? "permissions")
            Core.<*> (o Core..:? "selfLink")
            Core.<*> (o Core..:? "userRef")
      )

instance Core.ToJSON EntityUserLink where
  toJSON EntityUserLink {..} =
    Core.object
      ( Core.catMaybes
          [ ("entity" Core..=) Core.<$> entity,
            ("id" Core..=) Core.<$> id,
            Core.Just ("kind" Core..= kind),
            ("permissions" Core..=) Core.<$> permissions,
            ("selfLink" Core..=) Core.<$> selfLink,
            ("userRef" Core..=) Core.<$> userRef
          ]
      )

-- | Entity for this link. It can be an account, a web property, or a view (profile).
--
-- /See:/ 'newEntityUserLink_Entity' smart constructor.
data EntityUserLink_Entity = EntityUserLink_Entity
  { -- | Account for this link.
    accountRef :: (Core.Maybe AccountRef),
    -- | View (Profile) for this link.
    profileRef :: (Core.Maybe ProfileRef),
    -- | Web property for this link.
    webPropertyRef :: (Core.Maybe WebPropertyRef)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'EntityUserLink_Entity' with the minimum fields required to make a request.
newEntityUserLink_Entity ::
  EntityUserLink_Entity
newEntityUserLink_Entity =
  EntityUserLink_Entity
    { accountRef = Core.Nothing,
      profileRef = Core.Nothing,
      webPropertyRef = Core.Nothing
    }

instance Core.FromJSON EntityUserLink_Entity where
  parseJSON =
    Core.withObject
      "EntityUserLink_Entity"
      ( \o ->
          EntityUserLink_Entity
            Core.<$> (o Core..:? "accountRef")
            Core.<*> (o Core..:? "profileRef")
            Core.<*> (o Core..:? "webPropertyRef")
      )

instance Core.ToJSON EntityUserLink_Entity where
  toJSON EntityUserLink_Entity {..} =
    Core.object
      ( Core.catMaybes
          [ ("accountRef" Core..=) Core.<$> accountRef,
            ("profileRef" Core..=) Core.<$> profileRef,
            ("webPropertyRef" Core..=) Core.<$> webPropertyRef
          ]
      )

-- | Permissions the user has for this entity.
--
-- /See:/ 'newEntityUserLink_Permissions' smart constructor.
data EntityUserLink_Permissions = EntityUserLink_Permissions
  { -- | Effective permissions represent all the permissions that a user has for this entity. These include any implied permissions (e.g., EDIT implies VIEW) or inherited permissions from the parent entity. Effective permissions are read-only.
    effective :: (Core.Maybe [Core.Text]),
    -- | Permissions that a user has been assigned at this very level. Does not include any implied or inherited permissions. Local permissions are modifiable.
    local :: (Core.Maybe [Core.Text])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'EntityUserLink_Permissions' with the minimum fields required to make a request.
newEntityUserLink_Permissions ::
  EntityUserLink_Permissions
newEntityUserLink_Permissions =
  EntityUserLink_Permissions {effective = Core.Nothing, local = Core.Nothing}

instance Core.FromJSON EntityUserLink_Permissions where
  parseJSON =
    Core.withObject
      "EntityUserLink_Permissions"
      ( \o ->
          EntityUserLink_Permissions
            Core.<$> (o Core..:? "effective" Core..!= Core.mempty)
            Core.<*> (o Core..:? "local" Core..!= Core.mempty)
      )

instance Core.ToJSON EntityUserLink_Permissions where
  toJSON EntityUserLink_Permissions {..} =
    Core.object
      ( Core.catMaybes
          [ ("effective" Core..=) Core.<$> effective,
            ("local" Core..=) Core.<$> local
          ]
      )

-- | An entity user link collection provides a list of Analytics ACL links Each resource in this collection corresponds to a single link.
--
-- /See:/ 'newEntityUserLinks' smart constructor.
data EntityUserLinks = EntityUserLinks
  { -- | A list of entity user links.
    items :: (Core.Maybe [EntityUserLink]),
    -- | The maximum number of entries the response can contain, regardless of the actual number of entries returned. Its value ranges from 1 to 1000 with a value of 1000 by default, or otherwise specified by the max-results query parameter.
    itemsPerPage :: (Core.Maybe Core.Int32),
    -- | Collection type.
    kind :: Core.Text,
    -- | Next link for this account collection.
    nextLink :: (Core.Maybe Core.Text),
    -- | Previous link for this account collection.
    previousLink :: (Core.Maybe Core.Text),
    -- | The starting index of the entries, which is 1 by default or otherwise specified by the start-index query parameter.
    startIndex :: (Core.Maybe Core.Int32),
    -- | The total number of results for the query, regardless of the number of results in the response.
    totalResults :: (Core.Maybe Core.Int32)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'EntityUserLinks' with the minimum fields required to make a request.
newEntityUserLinks ::
  EntityUserLinks
newEntityUserLinks =
  EntityUserLinks
    { items = Core.Nothing,
      itemsPerPage = Core.Nothing,
      kind = "analytics#entityUserLinks",
      nextLink = Core.Nothing,
      previousLink = Core.Nothing,
      startIndex = Core.Nothing,
      totalResults = Core.Nothing
    }

instance Core.FromJSON EntityUserLinks where
  parseJSON =
    Core.withObject
      "EntityUserLinks"
      ( \o ->
          EntityUserLinks
            Core.<$> (o Core..:? "items" Core..!= Core.mempty)
            Core.<*> (o Core..:? "itemsPerPage")
            Core.<*> ( o Core..:? "kind"
                         Core..!= "analytics#entityUserLinks"
                     )
            Core.<*> (o Core..:? "nextLink")
            Core.<*> (o Core..:? "previousLink")
            Core.<*> (o Core..:? "startIndex")
            Core.<*> (o Core..:? "totalResults")
      )

instance Core.ToJSON EntityUserLinks where
  toJSON EntityUserLinks {..} =
    Core.object
      ( Core.catMaybes
          [ ("items" Core..=) Core.<$> items,
            ("itemsPerPage" Core..=) Core.<$> itemsPerPage,
            Core.Just ("kind" Core..= kind),
            ("nextLink" Core..=) Core.<$> nextLink,
            ("previousLink" Core..=) Core.<$> previousLink,
            ("startIndex" Core..=) Core.<$> startIndex,
            ("totalResults" Core..=) Core.<$> totalResults
          ]
      )

-- | JSON template for Analytics experiment resource.
--
-- /See:/ 'newExperiment' smart constructor.
data Experiment = Experiment
  { -- | Account ID to which this experiment belongs. This field is read-only.
    accountId :: (Core.Maybe Core.Text),
    -- | Time the experiment was created. This field is read-only.
    created :: (Core.Maybe Core.DateTime'),
    -- | Notes about this experiment.
    description :: (Core.Maybe Core.Text),
    -- | If true, the end user will be able to edit the experiment via the Google Analytics user interface.
    editableInGaUi :: (Core.Maybe Core.Bool),
    -- | The ending time of the experiment (the time the status changed from RUNNING to ENDED). This field is present only if the experiment has ended. This field is read-only.
    endTime :: (Core.Maybe Core.DateTime'),
    -- | Boolean specifying whether to distribute traffic evenly across all variations. If the value is False, content experiments follows the default behavior of adjusting traffic dynamically based on variation performance. Optional -- defaults to False. This field may not be changed for an experiment whose status is ENDED.
    equalWeighting :: (Core.Maybe Core.Bool),
    -- | Experiment ID. Required for patch and update. Disallowed for create.
    id :: (Core.Maybe Core.Text),
    -- | Internal ID for the web property to which this experiment belongs. This field is read-only.
    internalWebPropertyId :: (Core.Maybe Core.Text),
    -- | Resource type for an Analytics experiment. This field is read-only.
    kind :: Core.Text,
    -- | An integer number in [3, 90]. Specifies the minimum length of the experiment. Can be changed for a running experiment. This field may not be changed for an experiments whose status is ENDED.
    minimumExperimentLengthInDays :: (Core.Maybe Core.Int32),
    -- | Experiment name. This field may not be changed for an experiment whose status is ENDED. This field is required when creating an experiment.
    name :: (Core.Maybe Core.Text),
    -- | The metric that the experiment is optimizing. Valid values: \"ga:goal(n)Completions\", \"ga:adsenseAdsClicks\", \"ga:adsenseAdsViewed\", \"ga:adsenseRevenue\", \"ga:bounces\", \"ga:pageviews\", \"ga:sessionDuration\", \"ga:transactions\", \"ga:transactionRevenue\". This field is required if status is \"RUNNING\" and servingFramework is one of \"REDIRECT\" or \"API\".
    objectiveMetric :: (Core.Maybe Core.Text),
    -- | Whether the objectiveMetric should be minimized or maximized. Possible values: \"MAXIMUM\", \"MINIMUM\". Optional--defaults to \"MAXIMUM\". Cannot be specified without objectiveMetric. Cannot be modified when status is \"RUNNING\" or \"ENDED\".
    optimizationType :: (Core.Maybe Core.Text),
    -- | Parent link for an experiment. Points to the view (profile) to which this experiment belongs.
    parentLink :: (Core.Maybe Experiment_ParentLink),
    -- | View (Profile) ID to which this experiment belongs. This field is read-only.
    profileId :: (Core.Maybe Core.Text),
    -- | Why the experiment ended. Possible values: \"STOPPED/BY/USER\", \"WINNER/FOUND\", \"EXPERIMENT/EXPIRED\", \"ENDED/WITH/NO/WINNER\", \"GOAL/OBJECTIVE/CHANGED\". \"ENDED/WITH/NO/WINNER\" means that the experiment didn\'t expire but no winner was projected to be found. If the experiment status is changed via the API to ENDED this field is set to STOPPED/BY/USER. This field is read-only.
    reasonExperimentEnded :: (Core.Maybe Core.Text),
    -- | Boolean specifying whether variations URLS are rewritten to match those of the original. This field may not be changed for an experiments whose status is ENDED.
    rewriteVariationUrlsAsOriginal :: (Core.Maybe Core.Bool),
    -- | Link for this experiment. This field is read-only.
    selfLink :: (Core.Maybe Core.Text),
    -- | The framework used to serve the experiment variations and evaluate the results. One of:
    -- - REDIRECT: Google Analytics redirects traffic to different variation pages, reports the chosen variation and evaluates the results. - API: Google Analytics chooses and reports the variation to serve and evaluates the results; the caller is responsible for serving the selected variation. - EXTERNAL: The variations will be served externally and the chosen variation reported to Google Analytics. The caller is responsible for serving the selected variation and evaluating the results.
    servingFramework :: (Core.Maybe Core.Text),
    -- | The snippet of code to include on the control page(s). This field is read-only.
    snippet :: (Core.Maybe Core.Text),
    -- | The starting time of the experiment (the time the status changed from READY/TO/RUN to RUNNING). This field is present only if the experiment has started. This field is read-only.
    startTime :: (Core.Maybe Core.DateTime'),
    -- | Experiment status. Possible values: \"DRAFT\", \"READY/TO/RUN\", \"RUNNING\", \"ENDED\". Experiments can be created in the \"DRAFT\", \"READY/TO/RUN\" or \"RUNNING\" state. This field is required when creating an experiment.
    status :: (Core.Maybe Core.Text),
    -- | A floating-point number in (0, 1]. Specifies the fraction of the traffic that participates in the experiment. Can be changed for a running experiment. This field may not be changed for an experiments whose status is ENDED.
    trafficCoverage :: (Core.Maybe Core.Double),
    -- | Time the experiment was last modified. This field is read-only.
    updated :: (Core.Maybe Core.DateTime'),
    -- | Array of variations. The first variation in the array is the original. The number of variations may not change once an experiment is in the RUNNING state. At least two variations are required before status can be set to RUNNING.
    variations :: (Core.Maybe [Experiment_VariationsItem]),
    -- | Web property ID to which this experiment belongs. The web property ID is of the form UA-XXXXX-YY. This field is read-only.
    webPropertyId :: (Core.Maybe Core.Text),
    -- | A floating-point number in (0, 1). Specifies the necessary confidence level to choose a winner. This field may not be changed for an experiments whose status is ENDED.
    winnerConfidenceLevel :: (Core.Maybe Core.Double),
    -- | Boolean specifying whether a winner has been found for this experiment. This field is read-only.
    winnerFound :: (Core.Maybe Core.Bool)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Experiment' with the minimum fields required to make a request.
newExperiment ::
  Experiment
newExperiment =
  Experiment
    { accountId = Core.Nothing,
      created = Core.Nothing,
      description = Core.Nothing,
      editableInGaUi = Core.Nothing,
      endTime = Core.Nothing,
      equalWeighting = Core.Nothing,
      id = Core.Nothing,
      internalWebPropertyId = Core.Nothing,
      kind = "analytics#experiment",
      minimumExperimentLengthInDays = Core.Nothing,
      name = Core.Nothing,
      objectiveMetric = Core.Nothing,
      optimizationType = Core.Nothing,
      parentLink = Core.Nothing,
      profileId = Core.Nothing,
      reasonExperimentEnded = Core.Nothing,
      rewriteVariationUrlsAsOriginal = Core.Nothing,
      selfLink = Core.Nothing,
      servingFramework = Core.Nothing,
      snippet = Core.Nothing,
      startTime = Core.Nothing,
      status = Core.Nothing,
      trafficCoverage = Core.Nothing,
      updated = Core.Nothing,
      variations = Core.Nothing,
      webPropertyId = Core.Nothing,
      winnerConfidenceLevel = Core.Nothing,
      winnerFound = Core.Nothing
    }

instance Core.FromJSON Experiment where
  parseJSON =
    Core.withObject
      "Experiment"
      ( \o ->
          Experiment
            Core.<$> (o Core..:? "accountId")
            Core.<*> (o Core..:? "created")
            Core.<*> (o Core..:? "description")
            Core.<*> (o Core..:? "editableInGaUi")
            Core.<*> (o Core..:? "endTime")
            Core.<*> (o Core..:? "equalWeighting")
            Core.<*> (o Core..:? "id")
            Core.<*> (o Core..:? "internalWebPropertyId")
            Core.<*> (o Core..:? "kind" Core..!= "analytics#experiment")
            Core.<*> (o Core..:? "minimumExperimentLengthInDays")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "objectiveMetric")
            Core.<*> (o Core..:? "optimizationType")
            Core.<*> (o Core..:? "parentLink")
            Core.<*> (o Core..:? "profileId")
            Core.<*> (o Core..:? "reasonExperimentEnded")
            Core.<*> (o Core..:? "rewriteVariationUrlsAsOriginal")
            Core.<*> (o Core..:? "selfLink")
            Core.<*> (o Core..:? "servingFramework")
            Core.<*> (o Core..:? "snippet")
            Core.<*> (o Core..:? "startTime")
            Core.<*> (o Core..:? "status")
            Core.<*> (o Core..:? "trafficCoverage")
            Core.<*> (o Core..:? "updated")
            Core.<*> (o Core..:? "variations" Core..!= Core.mempty)
            Core.<*> (o Core..:? "webPropertyId")
            Core.<*> (o Core..:? "winnerConfidenceLevel")
            Core.<*> (o Core..:? "winnerFound")
      )

instance Core.ToJSON Experiment where
  toJSON Experiment {..} =
    Core.object
      ( Core.catMaybes
          [ ("accountId" Core..=) Core.<$> accountId,
            ("created" Core..=) Core.<$> created,
            ("description" Core..=) Core.<$> description,
            ("editableInGaUi" Core..=) Core.<$> editableInGaUi,
            ("endTime" Core..=) Core.<$> endTime,
            ("equalWeighting" Core..=) Core.<$> equalWeighting,
            ("id" Core..=) Core.<$> id,
            ("internalWebPropertyId" Core..=)
              Core.<$> internalWebPropertyId,
            Core.Just ("kind" Core..= kind),
            ("minimumExperimentLengthInDays" Core..=)
              Core.<$> minimumExperimentLengthInDays,
            ("name" Core..=) Core.<$> name,
            ("objectiveMetric" Core..=) Core.<$> objectiveMetric,
            ("optimizationType" Core..=)
              Core.<$> optimizationType,
            ("parentLink" Core..=) Core.<$> parentLink,
            ("profileId" Core..=) Core.<$> profileId,
            ("reasonExperimentEnded" Core..=)
              Core.<$> reasonExperimentEnded,
            ("rewriteVariationUrlsAsOriginal" Core..=)
              Core.<$> rewriteVariationUrlsAsOriginal,
            ("selfLink" Core..=) Core.<$> selfLink,
            ("servingFramework" Core..=)
              Core.<$> servingFramework,
            ("snippet" Core..=) Core.<$> snippet,
            ("startTime" Core..=) Core.<$> startTime,
            ("status" Core..=) Core.<$> status,
            ("trafficCoverage" Core..=) Core.<$> trafficCoverage,
            ("updated" Core..=) Core.<$> updated,
            ("variations" Core..=) Core.<$> variations,
            ("webPropertyId" Core..=) Core.<$> webPropertyId,
            ("winnerConfidenceLevel" Core..=)
              Core.<$> winnerConfidenceLevel,
            ("winnerFound" Core..=) Core.<$> winnerFound
          ]
      )

-- | Parent link for an experiment. Points to the view (profile) to which this experiment belongs.
--
-- /See:/ 'newExperiment_ParentLink' smart constructor.
data Experiment_ParentLink = Experiment_ParentLink
  { -- | Link to the view (profile) to which this experiment belongs. This field is read-only.
    href :: (Core.Maybe Core.Text),
    -- | Value is \"analytics#profile\". This field is read-only.
    type' :: Core.Text
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Experiment_ParentLink' with the minimum fields required to make a request.
newExperiment_ParentLink ::
  Experiment_ParentLink
newExperiment_ParentLink =
  Experiment_ParentLink {href = Core.Nothing, type' = "analytics#profile"}

instance Core.FromJSON Experiment_ParentLink where
  parseJSON =
    Core.withObject
      "Experiment_ParentLink"
      ( \o ->
          Experiment_ParentLink
            Core.<$> (o Core..:? "href")
            Core.<*> (o Core..:? "type" Core..!= "analytics#profile")
      )

instance Core.ToJSON Experiment_ParentLink where
  toJSON Experiment_ParentLink {..} =
    Core.object
      ( Core.catMaybes
          [ ("href" Core..=) Core.<$> href,
            Core.Just ("type" Core..= type')
          ]
      )

--
-- /See:/ 'newExperiment_VariationsItem' smart constructor.
data Experiment_VariationsItem = Experiment_VariationsItem
  { -- | The name of the variation. This field is required when creating an experiment. This field may not be changed for an experiment whose status is ENDED.
    name :: (Core.Maybe Core.Text),
    -- | Status of the variation. Possible values: \"ACTIVE\", \"INACTIVE\". INACTIVE variations are not served. This field may not be changed for an experiment whose status is ENDED.
    status :: (Core.Maybe Core.Text),
    -- | The URL of the variation. This field may not be changed for an experiment whose status is RUNNING or ENDED.
    url :: (Core.Maybe Core.Text),
    -- | Weight that this variation should receive. Only present if the experiment is running. This field is read-only.
    weight :: (Core.Maybe Core.Double),
    -- | True if the experiment has ended and this variation performed (statistically) significantly better than the original. This field is read-only.
    won :: (Core.Maybe Core.Bool)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Experiment_VariationsItem' with the minimum fields required to make a request.
newExperiment_VariationsItem ::
  Experiment_VariationsItem
newExperiment_VariationsItem =
  Experiment_VariationsItem
    { name = Core.Nothing,
      status = Core.Nothing,
      url = Core.Nothing,
      weight = Core.Nothing,
      won = Core.Nothing
    }

instance Core.FromJSON Experiment_VariationsItem where
  parseJSON =
    Core.withObject
      "Experiment_VariationsItem"
      ( \o ->
          Experiment_VariationsItem
            Core.<$> (o Core..:? "name")
            Core.<*> (o Core..:? "status")
            Core.<*> (o Core..:? "url")
            Core.<*> (o Core..:? "weight")
            Core.<*> (o Core..:? "won")
      )

instance Core.ToJSON Experiment_VariationsItem where
  toJSON Experiment_VariationsItem {..} =
    Core.object
      ( Core.catMaybes
          [ ("name" Core..=) Core.<$> name,
            ("status" Core..=) Core.<$> status,
            ("url" Core..=) Core.<$> url,
            ("weight" Core..=) Core.<$> weight,
            ("won" Core..=) Core.<$> won
          ]
      )

-- | An experiment collection lists Analytics experiments to which the user has access. Each view (profile) can have a set of experiments. Each resource in the Experiment collection corresponds to a single Analytics experiment.
--
-- /See:/ 'newExperiments' smart constructor.
data Experiments = Experiments
  { -- | A list of experiments.
    items :: (Core.Maybe [Experiment]),
    -- | The maximum number of resources the response can contain, regardless of the actual number of resources returned. Its value ranges from 1 to 1000 with a value of 1000 by default, or otherwise specified by the max-results query parameter.
    itemsPerPage :: (Core.Maybe Core.Int32),
    -- | Collection type.
    kind :: Core.Text,
    -- | Link to next page for this experiment collection.
    nextLink :: (Core.Maybe Core.Text),
    -- | Link to previous page for this experiment collection.
    previousLink :: (Core.Maybe Core.Text),
    -- | The starting index of the resources, which is 1 by default or otherwise specified by the start-index query parameter.
    startIndex :: (Core.Maybe Core.Int32),
    -- | The total number of results for the query, regardless of the number of resources in the result.
    totalResults :: (Core.Maybe Core.Int32),
    -- | Email ID of the authenticated user
    username :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Experiments' with the minimum fields required to make a request.
newExperiments ::
  Experiments
newExperiments =
  Experiments
    { items = Core.Nothing,
      itemsPerPage = Core.Nothing,
      kind = "analytics#experiments",
      nextLink = Core.Nothing,
      previousLink = Core.Nothing,
      startIndex = Core.Nothing,
      totalResults = Core.Nothing,
      username = Core.Nothing
    }

instance Core.FromJSON Experiments where
  parseJSON =
    Core.withObject
      "Experiments"
      ( \o ->
          Experiments
            Core.<$> (o Core..:? "items" Core..!= Core.mempty)
            Core.<*> (o Core..:? "itemsPerPage")
            Core.<*> (o Core..:? "kind" Core..!= "analytics#experiments")
            Core.<*> (o Core..:? "nextLink")
            Core.<*> (o Core..:? "previousLink")
            Core.<*> (o Core..:? "startIndex")
            Core.<*> (o Core..:? "totalResults")
            Core.<*> (o Core..:? "username")
      )

instance Core.ToJSON Experiments where
  toJSON Experiments {..} =
    Core.object
      ( Core.catMaybes
          [ ("items" Core..=) Core.<$> items,
            ("itemsPerPage" Core..=) Core.<$> itemsPerPage,
            Core.Just ("kind" Core..= kind),
            ("nextLink" Core..=) Core.<$> nextLink,
            ("previousLink" Core..=) Core.<$> previousLink,
            ("startIndex" Core..=) Core.<$> startIndex,
            ("totalResults" Core..=) Core.<$> totalResults,
            ("username" Core..=) Core.<$> username
          ]
      )

-- | JSON template for an Analytics account filter.
--
-- /See:/ 'newFilter' smart constructor.
data Filter = Filter
  { -- | Account ID to which this filter belongs.
    accountId :: (Core.Maybe Core.Text),
    -- | Details for the filter of the type ADVANCED.
    advancedDetails :: (Core.Maybe Filter_AdvancedDetails),
    -- | Time this filter was created.
    created :: (Core.Maybe Core.DateTime'),
    -- | Details for the filter of the type EXCLUDE.
    excludeDetails :: (Core.Maybe FilterExpression),
    -- | Filter ID.
    id :: (Core.Maybe Core.Text),
    -- | Details for the filter of the type INCLUDE.
    includeDetails :: (Core.Maybe FilterExpression),
    -- | Resource type for Analytics filter.
    kind :: Core.Text,
    -- | Details for the filter of the type LOWER.
    lowercaseDetails :: (Core.Maybe Filter_LowercaseDetails),
    -- | Name of this filter.
    name :: (Core.Maybe Core.Text),
    -- | Parent link for this filter. Points to the account to which this filter belongs.
    parentLink :: (Core.Maybe Filter_ParentLink),
    -- | Details for the filter of the type SEARCH/AND/REPLACE.
    searchAndReplaceDetails :: (Core.Maybe Filter_SearchAndReplaceDetails),
    -- | Link for this filter.
    selfLink :: (Core.Maybe Core.Text),
    -- | Type of this filter. Possible values are INCLUDE, EXCLUDE, LOWERCASE, UPPERCASE, SEARCH/AND/REPLACE and ADVANCED.
    type' :: (Core.Maybe Core.Text),
    -- | Time this filter was last modified.
    updated :: (Core.Maybe Core.DateTime'),
    -- | Details for the filter of the type UPPER.
    uppercaseDetails :: (Core.Maybe Filter_UppercaseDetails)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Filter' with the minimum fields required to make a request.
newFilter ::
  Filter
newFilter =
  Filter
    { accountId = Core.Nothing,
      advancedDetails = Core.Nothing,
      created = Core.Nothing,
      excludeDetails = Core.Nothing,
      id = Core.Nothing,
      includeDetails = Core.Nothing,
      kind = "analytics#filter",
      lowercaseDetails = Core.Nothing,
      name = Core.Nothing,
      parentLink = Core.Nothing,
      searchAndReplaceDetails = Core.Nothing,
      selfLink = Core.Nothing,
      type' = Core.Nothing,
      updated = Core.Nothing,
      uppercaseDetails = Core.Nothing
    }

instance Core.FromJSON Filter where
  parseJSON =
    Core.withObject
      "Filter"
      ( \o ->
          Filter
            Core.<$> (o Core..:? "accountId")
            Core.<*> (o Core..:? "advancedDetails")
            Core.<*> (o Core..:? "created")
            Core.<*> (o Core..:? "excludeDetails")
            Core.<*> (o Core..:? "id")
            Core.<*> (o Core..:? "includeDetails")
            Core.<*> (o Core..:? "kind" Core..!= "analytics#filter")
            Core.<*> (o Core..:? "lowercaseDetails")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "parentLink")
            Core.<*> (o Core..:? "searchAndReplaceDetails")
            Core.<*> (o Core..:? "selfLink")
            Core.<*> (o Core..:? "type")
            Core.<*> (o Core..:? "updated")
            Core.<*> (o Core..:? "uppercaseDetails")
      )

instance Core.ToJSON Filter where
  toJSON Filter {..} =
    Core.object
      ( Core.catMaybes
          [ ("accountId" Core..=) Core.<$> accountId,
            ("advancedDetails" Core..=) Core.<$> advancedDetails,
            ("created" Core..=) Core.<$> created,
            ("excludeDetails" Core..=) Core.<$> excludeDetails,
            ("id" Core..=) Core.<$> id,
            ("includeDetails" Core..=) Core.<$> includeDetails,
            Core.Just ("kind" Core..= kind),
            ("lowercaseDetails" Core..=)
              Core.<$> lowercaseDetails,
            ("name" Core..=) Core.<$> name,
            ("parentLink" Core..=) Core.<$> parentLink,
            ("searchAndReplaceDetails" Core..=)
              Core.<$> searchAndReplaceDetails,
            ("selfLink" Core..=) Core.<$> selfLink,
            ("type" Core..=) Core.<$> type',
            ("updated" Core..=) Core.<$> updated,
            ("uppercaseDetails" Core..=)
              Core.<$> uppercaseDetails
          ]
      )

-- | Details for the filter of the type ADVANCED.
--
-- /See:/ 'newFilter_AdvancedDetails' smart constructor.
data Filter_AdvancedDetails = Filter_AdvancedDetails
  { -- | Indicates if the filter expressions are case sensitive.
    caseSensitive :: (Core.Maybe Core.Bool),
    -- | Expression to extract from field A.
    extractA :: (Core.Maybe Core.Text),
    -- | Expression to extract from field B.
    extractB :: (Core.Maybe Core.Text),
    -- | Field A.
    fieldA :: (Core.Maybe Core.Text),
    -- | The Index of the custom dimension. Required if field is a CUSTOM_DIMENSION.
    fieldAIndex :: (Core.Maybe Core.Int32),
    -- | Indicates if field A is required to match.
    fieldARequired :: (Core.Maybe Core.Bool),
    -- | Field B.
    fieldB :: (Core.Maybe Core.Text),
    -- | The Index of the custom dimension. Required if field is a CUSTOM_DIMENSION.
    fieldBIndex :: (Core.Maybe Core.Int32),
    -- | Indicates if field B is required to match.
    fieldBRequired :: (Core.Maybe Core.Bool),
    -- | Expression used to construct the output value.
    outputConstructor :: (Core.Maybe Core.Text),
    -- | Output field.
    outputToField :: (Core.Maybe Core.Text),
    -- | The Index of the custom dimension. Required if field is a CUSTOM_DIMENSION.
    outputToFieldIndex :: (Core.Maybe Core.Int32),
    -- | Indicates if the existing value of the output field, if any, should be overridden by the output expression.
    overrideOutputField :: (Core.Maybe Core.Bool)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Filter_AdvancedDetails' with the minimum fields required to make a request.
newFilter_AdvancedDetails ::
  Filter_AdvancedDetails
newFilter_AdvancedDetails =
  Filter_AdvancedDetails
    { caseSensitive = Core.Nothing,
      extractA = Core.Nothing,
      extractB = Core.Nothing,
      fieldA = Core.Nothing,
      fieldAIndex = Core.Nothing,
      fieldARequired = Core.Nothing,
      fieldB = Core.Nothing,
      fieldBIndex = Core.Nothing,
      fieldBRequired = Core.Nothing,
      outputConstructor = Core.Nothing,
      outputToField = Core.Nothing,
      outputToFieldIndex = Core.Nothing,
      overrideOutputField = Core.Nothing
    }

instance Core.FromJSON Filter_AdvancedDetails where
  parseJSON =
    Core.withObject
      "Filter_AdvancedDetails"
      ( \o ->
          Filter_AdvancedDetails
            Core.<$> (o Core..:? "caseSensitive")
            Core.<*> (o Core..:? "extractA")
            Core.<*> (o Core..:? "extractB")
            Core.<*> (o Core..:? "fieldA")
            Core.<*> (o Core..:? "fieldAIndex")
            Core.<*> (o Core..:? "fieldARequired")
            Core.<*> (o Core..:? "fieldB")
            Core.<*> (o Core..:? "fieldBIndex")
            Core.<*> (o Core..:? "fieldBRequired")
            Core.<*> (o Core..:? "outputConstructor")
            Core.<*> (o Core..:? "outputToField")
            Core.<*> (o Core..:? "outputToFieldIndex")
            Core.<*> (o Core..:? "overrideOutputField")
      )

instance Core.ToJSON Filter_AdvancedDetails where
  toJSON Filter_AdvancedDetails {..} =
    Core.object
      ( Core.catMaybes
          [ ("caseSensitive" Core..=) Core.<$> caseSensitive,
            ("extractA" Core..=) Core.<$> extractA,
            ("extractB" Core..=) Core.<$> extractB,
            ("fieldA" Core..=) Core.<$> fieldA,
            ("fieldAIndex" Core..=) Core.<$> fieldAIndex,
            ("fieldARequired" Core..=) Core.<$> fieldARequired,
            ("fieldB" Core..=) Core.<$> fieldB,
            ("fieldBIndex" Core..=) Core.<$> fieldBIndex,
            ("fieldBRequired" Core..=) Core.<$> fieldBRequired,
            ("outputConstructor" Core..=)
              Core.<$> outputConstructor,
            ("outputToField" Core..=) Core.<$> outputToField,
            ("outputToFieldIndex" Core..=)
              Core.<$> outputToFieldIndex,
            ("overrideOutputField" Core..=)
              Core.<$> overrideOutputField
          ]
      )

-- | Details for the filter of the type LOWER.
--
-- /See:/ 'newFilter_LowercaseDetails' smart constructor.
data Filter_LowercaseDetails = Filter_LowercaseDetails
  { -- | Field to use in the filter.
    field :: (Core.Maybe Core.Text),
    -- | The Index of the custom dimension. Required if field is a CUSTOM_DIMENSION.
    fieldIndex :: (Core.Maybe Core.Int32)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Filter_LowercaseDetails' with the minimum fields required to make a request.
newFilter_LowercaseDetails ::
  Filter_LowercaseDetails
newFilter_LowercaseDetails =
  Filter_LowercaseDetails {field = Core.Nothing, fieldIndex = Core.Nothing}

instance Core.FromJSON Filter_LowercaseDetails where
  parseJSON =
    Core.withObject
      "Filter_LowercaseDetails"
      ( \o ->
          Filter_LowercaseDetails
            Core.<$> (o Core..:? "field")
            Core.<*> (o Core..:? "fieldIndex")
      )

instance Core.ToJSON Filter_LowercaseDetails where
  toJSON Filter_LowercaseDetails {..} =
    Core.object
      ( Core.catMaybes
          [ ("field" Core..=) Core.<$> field,
            ("fieldIndex" Core..=) Core.<$> fieldIndex
          ]
      )

-- | Parent link for this filter. Points to the account to which this filter belongs.
--
-- /See:/ 'newFilter_ParentLink' smart constructor.
data Filter_ParentLink = Filter_ParentLink
  { -- | Link to the account to which this filter belongs.
    href :: (Core.Maybe Core.Text),
    -- | Value is \"analytics#account\".
    type' :: Core.Text
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Filter_ParentLink' with the minimum fields required to make a request.
newFilter_ParentLink ::
  Filter_ParentLink
newFilter_ParentLink =
  Filter_ParentLink {href = Core.Nothing, type' = "analytics#account"}

instance Core.FromJSON Filter_ParentLink where
  parseJSON =
    Core.withObject
      "Filter_ParentLink"
      ( \o ->
          Filter_ParentLink
            Core.<$> (o Core..:? "href")
            Core.<*> (o Core..:? "type" Core..!= "analytics#account")
      )

instance Core.ToJSON Filter_ParentLink where
  toJSON Filter_ParentLink {..} =
    Core.object
      ( Core.catMaybes
          [ ("href" Core..=) Core.<$> href,
            Core.Just ("type" Core..= type')
          ]
      )

-- | Details for the filter of the type SEARCH/AND/REPLACE.
--
-- /See:/ 'newFilter_SearchAndReplaceDetails' smart constructor.
data Filter_SearchAndReplaceDetails = Filter_SearchAndReplaceDetails
  { -- | Determines if the filter is case sensitive.
    caseSensitive :: (Core.Maybe Core.Bool),
    -- | Field to use in the filter.
    field :: (Core.Maybe Core.Text),
    -- | The Index of the custom dimension. Required if field is a CUSTOM_DIMENSION.
    fieldIndex :: (Core.Maybe Core.Int32),
    -- | Term to replace the search term with.
    replaceString :: (Core.Maybe Core.Text),
    -- | Term to search.
    searchString :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Filter_SearchAndReplaceDetails' with the minimum fields required to make a request.
newFilter_SearchAndReplaceDetails ::
  Filter_SearchAndReplaceDetails
newFilter_SearchAndReplaceDetails =
  Filter_SearchAndReplaceDetails
    { caseSensitive = Core.Nothing,
      field = Core.Nothing,
      fieldIndex = Core.Nothing,
      replaceString = Core.Nothing,
      searchString = Core.Nothing
    }

instance Core.FromJSON Filter_SearchAndReplaceDetails where
  parseJSON =
    Core.withObject
      "Filter_SearchAndReplaceDetails"
      ( \o ->
          Filter_SearchAndReplaceDetails
            Core.<$> (o Core..:? "caseSensitive")
            Core.<*> (o Core..:? "field")
            Core.<*> (o Core..:? "fieldIndex")
            Core.<*> (o Core..:? "replaceString")
            Core.<*> (o Core..:? "searchString")
      )

instance Core.ToJSON Filter_SearchAndReplaceDetails where
  toJSON Filter_SearchAndReplaceDetails {..} =
    Core.object
      ( Core.catMaybes
          [ ("caseSensitive" Core..=) Core.<$> caseSensitive,
            ("field" Core..=) Core.<$> field,
            ("fieldIndex" Core..=) Core.<$> fieldIndex,
            ("replaceString" Core..=) Core.<$> replaceString,
            ("searchString" Core..=) Core.<$> searchString
          ]
      )

-- | Details for the filter of the type UPPER.
--
-- /See:/ 'newFilter_UppercaseDetails' smart constructor.
data Filter_UppercaseDetails = Filter_UppercaseDetails
  { -- | Field to use in the filter.
    field :: (Core.Maybe Core.Text),
    -- | The Index of the custom dimension. Required if field is a CUSTOM_DIMENSION.
    fieldIndex :: (Core.Maybe Core.Int32)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Filter_UppercaseDetails' with the minimum fields required to make a request.
newFilter_UppercaseDetails ::
  Filter_UppercaseDetails
newFilter_UppercaseDetails =
  Filter_UppercaseDetails {field = Core.Nothing, fieldIndex = Core.Nothing}

instance Core.FromJSON Filter_UppercaseDetails where
  parseJSON =
    Core.withObject
      "Filter_UppercaseDetails"
      ( \o ->
          Filter_UppercaseDetails
            Core.<$> (o Core..:? "field")
            Core.<*> (o Core..:? "fieldIndex")
      )

instance Core.ToJSON Filter_UppercaseDetails where
  toJSON Filter_UppercaseDetails {..} =
    Core.object
      ( Core.catMaybes
          [ ("field" Core..=) Core.<$> field,
            ("fieldIndex" Core..=) Core.<$> fieldIndex
          ]
      )

-- | JSON template for an Analytics filter expression.
--
-- /See:/ 'newFilterExpression' smart constructor.
data FilterExpression = FilterExpression
  { -- | Determines if the filter is case sensitive.
    caseSensitive :: (Core.Maybe Core.Bool),
    -- | Filter expression value
    expressionValue :: (Core.Maybe Core.Text),
    -- | Field to filter. Possible values:
    -- - Content and Traffic
    -- - PAGE/REQUEST/URI, - PAGE/HOSTNAME, - PAGE/TITLE, - REFERRAL, - COST/DATA/URI (Campaign target URL), - HIT/TYPE, - INTERNAL/SEARCH/TERM, - INTERNAL/SEARCH/TYPE, - SOURCE/PROPERTY/TRACKING/ID,
    -- - Campaign or AdGroup
    -- - CAMPAIGN/SOURCE, - CAMPAIGN/MEDIUM, - CAMPAIGN/NAME, - CAMPAIGN/AD/GROUP, - CAMPAIGN/TERM, - CAMPAIGN/CONTENT, - CAMPAIGN/CODE, - CAMPAIGN/REFERRAL/PATH,
    -- - E-Commerce
    -- - TRANSACTION/COUNTRY, - TRANSACTION/REGION, - TRANSACTION/CITY, - TRANSACTION/AFFILIATION (Store or order location), - ITEM/NAME, - ITEM/CODE, - ITEM/VARIATION, - TRANSACTION/ID, - TRANSACTION/CURRENCY/CODE, - PRODUCT/ACTION/TYPE,
    -- - Audience\/Users
    -- - BROWSER, - BROWSER/VERSION, - BROWSER/SIZE, - PLATFORM, - PLATFORM/VERSION, - LANGUAGE, - SCREEN/RESOLUTION, - SCREEN/COLORS, - JAVA/ENABLED (Boolean Field), - FLASH/VERSION, - GEO/SPEED (Connection speed), - VISITOR/TYPE, - GEO/ORGANIZATION (ISP organization), - GEO/DOMAIN, - GEO/IP/ADDRESS, - GEO/IP/VERSION,
    -- - Location
    -- - GEO/COUNTRY, - GEO/REGION, - GEO/CITY,
    -- - Event
    -- - EVENT/CATEGORY, - EVENT/ACTION, - EVENT/LABEL,
    -- - Other
    -- - CUSTOM/FIELD/1, - CUSTOM/FIELD/2, - USER/DEFINED/VALUE,
    -- - Application
    -- - APP/ID, - APP/INSTALLER/ID, - APP/NAME, - APP/VERSION, - SCREEN, - IS/APP (Boolean Field), - IS/FATAL/EXCEPTION (Boolean Field), - EXCEPTION/DESCRIPTION,
    -- - Mobile device
    -- - IS/MOBILE (Boolean Field, Deprecated. Use DEVICE/CATEGORY=mobile), - IS/TABLET (Boolean Field, Deprecated. Use DEVICE/CATEGORY=tablet), - DEVICE/CATEGORY, - MOBILE/HAS/QWERTY/KEYBOARD (Boolean Field), - MOBILE/HAS/NFC/SUPPORT (Boolean Field), - MOBILE/HAS/CELLULAR/RADIO (Boolean Field), - MOBILE/HAS/WIFI/SUPPORT (Boolean Field), - MOBILE/BRAND/NAME, - MOBILE/MODEL/NAME, - MOBILE/MARKETING/NAME, - MOBILE/POINTING/METHOD,
    -- - Social
    -- - SOCIAL/NETWORK, - SOCIAL/ACTION, - SOCIAL/ACTION/TARGET,
    -- - Custom dimension
    -- - CUSTOM/DIMENSION (See accompanying field index),
    field :: (Core.Maybe Core.Text),
    -- | The Index of the custom dimension. Set only if the field is a is CUSTOM_DIMENSION.
    fieldIndex :: (Core.Maybe Core.Int32),
    -- | Kind value for filter expression
    kind :: Core.Text,
    -- | Match type for this filter. Possible values are BEGINS/WITH, EQUAL, ENDS/WITH, CONTAINS, or MATCHES. GEO/DOMAIN, GEO/IP/ADDRESS, PAGE/REQUEST/URI, or PAGE/HOSTNAME filters can use any match type; all other filters must use MATCHES.
    matchType :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'FilterExpression' with the minimum fields required to make a request.
newFilterExpression ::
  FilterExpression
newFilterExpression =
  FilterExpression
    { caseSensitive = Core.Nothing,
      expressionValue = Core.Nothing,
      field = Core.Nothing,
      fieldIndex = Core.Nothing,
      kind = "analytics#filterExpression",
      matchType = Core.Nothing
    }

instance Core.FromJSON FilterExpression where
  parseJSON =
    Core.withObject
      "FilterExpression"
      ( \o ->
          FilterExpression
            Core.<$> (o Core..:? "caseSensitive")
            Core.<*> (o Core..:? "expressionValue")
            Core.<*> (o Core..:? "field")
            Core.<*> (o Core..:? "fieldIndex")
            Core.<*> ( o Core..:? "kind"
                         Core..!= "analytics#filterExpression"
                     )
            Core.<*> (o Core..:? "matchType")
      )

instance Core.ToJSON FilterExpression where
  toJSON FilterExpression {..} =
    Core.object
      ( Core.catMaybes
          [ ("caseSensitive" Core..=) Core.<$> caseSensitive,
            ("expressionValue" Core..=) Core.<$> expressionValue,
            ("field" Core..=) Core.<$> field,
            ("fieldIndex" Core..=) Core.<$> fieldIndex,
            Core.Just ("kind" Core..= kind),
            ("matchType" Core..=) Core.<$> matchType
          ]
      )

-- | JSON template for a profile filter link.
--
-- /See:/ 'newFilterRef' smart constructor.
data FilterRef = FilterRef
  { -- | Account ID to which this filter belongs.
    accountId :: (Core.Maybe Core.Text),
    -- | Link for this filter.
    href :: (Core.Maybe Core.Text),
    -- | Filter ID.
    id :: (Core.Maybe Core.Text),
    -- | Kind value for filter reference.
    kind :: Core.Text,
    -- | Name of this filter.
    name :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'FilterRef' with the minimum fields required to make a request.
newFilterRef ::
  FilterRef
newFilterRef =
  FilterRef
    { accountId = Core.Nothing,
      href = Core.Nothing,
      id = Core.Nothing,
      kind = "analytics#filterRef",
      name = Core.Nothing
    }

instance Core.FromJSON FilterRef where
  parseJSON =
    Core.withObject
      "FilterRef"
      ( \o ->
          FilterRef
            Core.<$> (o Core..:? "accountId")
            Core.<*> (o Core..:? "href")
            Core.<*> (o Core..:? "id")
            Core.<*> (o Core..:? "kind" Core..!= "analytics#filterRef")
            Core.<*> (o Core..:? "name")
      )

instance Core.ToJSON FilterRef where
  toJSON FilterRef {..} =
    Core.object
      ( Core.catMaybes
          [ ("accountId" Core..=) Core.<$> accountId,
            ("href" Core..=) Core.<$> href,
            ("id" Core..=) Core.<$> id,
            Core.Just ("kind" Core..= kind),
            ("name" Core..=) Core.<$> name
          ]
      )

-- | A filter collection lists filters created by users in an Analytics account. Each resource in the collection corresponds to a filter.
--
-- /See:/ 'newFilters' smart constructor.
data Filters = Filters
  { -- | A list of filters.
    items :: (Core.Maybe [Filter]),
    -- | The maximum number of resources the response can contain, regardless of the actual number of resources returned. Its value ranges from 1 to 1,000 with a value of 1000 by default, or otherwise specified by the max-results query parameter.
    itemsPerPage :: (Core.Maybe Core.Int32),
    -- | Collection type.
    kind :: Core.Text,
    -- | Link to next page for this filter collection.
    nextLink :: (Core.Maybe Core.Text),
    -- | Link to previous page for this filter collection.
    previousLink :: (Core.Maybe Core.Text),
    -- | The starting index of the resources, which is 1 by default or otherwise specified by the start-index query parameter.
    startIndex :: (Core.Maybe Core.Int32),
    -- | The total number of results for the query, regardless of the number of results in the response.
    totalResults :: (Core.Maybe Core.Int32),
    -- | Email ID of the authenticated user
    username :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Filters' with the minimum fields required to make a request.
newFilters ::
  Filters
newFilters =
  Filters
    { items = Core.Nothing,
      itemsPerPage = Core.Nothing,
      kind = "analytics#filters",
      nextLink = Core.Nothing,
      previousLink = Core.Nothing,
      startIndex = Core.Nothing,
      totalResults = Core.Nothing,
      username = Core.Nothing
    }

instance Core.FromJSON Filters where
  parseJSON =
    Core.withObject
      "Filters"
      ( \o ->
          Filters
            Core.<$> (o Core..:? "items" Core..!= Core.mempty)
            Core.<*> (o Core..:? "itemsPerPage")
            Core.<*> (o Core..:? "kind" Core..!= "analytics#filters")
            Core.<*> (o Core..:? "nextLink")
            Core.<*> (o Core..:? "previousLink")
            Core.<*> (o Core..:? "startIndex")
            Core.<*> (o Core..:? "totalResults")
            Core.<*> (o Core..:? "username")
      )

instance Core.ToJSON Filters where
  toJSON Filters {..} =
    Core.object
      ( Core.catMaybes
          [ ("items" Core..=) Core.<$> items,
            ("itemsPerPage" Core..=) Core.<$> itemsPerPage,
            Core.Just ("kind" Core..= kind),
            ("nextLink" Core..=) Core.<$> nextLink,
            ("previousLink" Core..=) Core.<$> previousLink,
            ("startIndex" Core..=) Core.<$> startIndex,
            ("totalResults" Core..=) Core.<$> totalResults,
            ("username" Core..=) Core.<$> username
          ]
      )

-- | Analytics data for a given view (profile).
--
-- /See:/ 'newGaData' smart constructor.
data GaData = GaData
  { -- | Column headers that list dimension names followed by the metric names. The order of dimensions and metrics is same as specified in the request.
    columnHeaders :: (Core.Maybe [GaData_ColumnHeadersItem]),
    -- | Determines if Analytics data contains samples.
    containsSampledData :: (Core.Maybe Core.Bool),
    -- | The last refreshed time in seconds for Analytics data.
    dataLastRefreshed :: (Core.Maybe Core.Int64),
    -- |
    dataTable :: (Core.Maybe GaData_DataTable),
    -- | Unique ID for this data response.
    id :: (Core.Maybe Core.Text),
    -- | The maximum number of rows the response can contain, regardless of the actual number of rows returned. Its value ranges from 1 to 10,000 with a value of 1000 by default, or otherwise specified by the max-results query parameter.
    itemsPerPage :: (Core.Maybe Core.Int32),
    -- | Resource type.
    kind :: Core.Text,
    -- | Link to next page for this Analytics data query.
    nextLink :: (Core.Maybe Core.Text),
    -- | Link to previous page for this Analytics data query.
    previousLink :: (Core.Maybe Core.Text),
    -- | Information for the view (profile), for which the Analytics data was requested.
    profileInfo :: (Core.Maybe GaData_ProfileInfo),
    -- | Analytics data request query parameters.
    query :: (Core.Maybe GaData_Query),
    -- | Analytics data rows, where each row contains a list of dimension values followed by the metric values. The order of dimensions and metrics is same as specified in the request.
    rows :: (Core.Maybe [[Core.Text]]),
    -- | The number of samples used to calculate the result.
    sampleSize :: (Core.Maybe Core.Int64),
    -- | Total size of the sample space from which the samples were selected.
    sampleSpace :: (Core.Maybe Core.Int64),
    -- | Link to this page.
    selfLink :: (Core.Maybe Core.Text),
    -- | The total number of rows for the query, regardless of the number of rows in the response.
    totalResults :: (Core.Maybe Core.Int32),
    -- | Total values for the requested metrics over all the results, not just the results returned in this response. The order of the metric totals is same as the metric order specified in the request.
    totalsForAllResults :: (Core.Maybe GaData_TotalsForAllResults)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GaData' with the minimum fields required to make a request.
newGaData ::
  GaData
newGaData =
  GaData
    { columnHeaders = Core.Nothing,
      containsSampledData = Core.Nothing,
      dataLastRefreshed = Core.Nothing,
      dataTable = Core.Nothing,
      id = Core.Nothing,
      itemsPerPage = Core.Nothing,
      kind = "analytics#gaData",
      nextLink = Core.Nothing,
      previousLink = Core.Nothing,
      profileInfo = Core.Nothing,
      query = Core.Nothing,
      rows = Core.Nothing,
      sampleSize = Core.Nothing,
      sampleSpace = Core.Nothing,
      selfLink = Core.Nothing,
      totalResults = Core.Nothing,
      totalsForAllResults = Core.Nothing
    }

instance Core.FromJSON GaData where
  parseJSON =
    Core.withObject
      "GaData"
      ( \o ->
          GaData
            Core.<$> (o Core..:? "columnHeaders" Core..!= Core.mempty)
            Core.<*> (o Core..:? "containsSampledData")
            Core.<*> (o Core..:? "dataLastRefreshed")
            Core.<*> (o Core..:? "dataTable")
            Core.<*> (o Core..:? "id")
            Core.<*> (o Core..:? "itemsPerPage")
            Core.<*> (o Core..:? "kind" Core..!= "analytics#gaData")
            Core.<*> (o Core..:? "nextLink")
            Core.<*> (o Core..:? "previousLink")
            Core.<*> (o Core..:? "profileInfo")
            Core.<*> (o Core..:? "query")
            Core.<*> (o Core..:? "rows" Core..!= Core.mempty)
            Core.<*> (o Core..:? "sampleSize")
            Core.<*> (o Core..:? "sampleSpace")
            Core.<*> (o Core..:? "selfLink")
            Core.<*> (o Core..:? "totalResults")
            Core.<*> (o Core..:? "totalsForAllResults")
      )

instance Core.ToJSON GaData where
  toJSON GaData {..} =
    Core.object
      ( Core.catMaybes
          [ ("columnHeaders" Core..=) Core.<$> columnHeaders,
            ("containsSampledData" Core..=)
              Core.<$> containsSampledData,
            ("dataLastRefreshed" Core..=) Core.. Core.AsText
              Core.<$> dataLastRefreshed,
            ("dataTable" Core..=) Core.<$> dataTable,
            ("id" Core..=) Core.<$> id,
            ("itemsPerPage" Core..=) Core.<$> itemsPerPage,
            Core.Just ("kind" Core..= kind),
            ("nextLink" Core..=) Core.<$> nextLink,
            ("previousLink" Core..=) Core.<$> previousLink,
            ("profileInfo" Core..=) Core.<$> profileInfo,
            ("query" Core..=) Core.<$> query,
            ("rows" Core..=) Core.<$> rows,
            ("sampleSize" Core..=) Core.. Core.AsText
              Core.<$> sampleSize,
            ("sampleSpace" Core..=) Core.. Core.AsText
              Core.<$> sampleSpace,
            ("selfLink" Core..=) Core.<$> selfLink,
            ("totalResults" Core..=) Core.<$> totalResults,
            ("totalsForAllResults" Core..=)
              Core.<$> totalsForAllResults
          ]
      )

--
-- /See:/ 'newGaData_ColumnHeadersItem' smart constructor.
data GaData_ColumnHeadersItem = GaData_ColumnHeadersItem
  { -- | Column Type. Either DIMENSION or METRIC.
    columnType :: (Core.Maybe Core.Text),
    -- | Data type. Dimension column headers have only STRING as the data type. Metric column headers have data types for metric values such as INTEGER, DOUBLE, CURRENCY etc.
    dataType :: (Core.Maybe Core.Text),
    -- | Column name.
    name :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GaData_ColumnHeadersItem' with the minimum fields required to make a request.
newGaData_ColumnHeadersItem ::
  GaData_ColumnHeadersItem
newGaData_ColumnHeadersItem =
  GaData_ColumnHeadersItem
    { columnType = Core.Nothing,
      dataType = Core.Nothing,
      name = Core.Nothing
    }

instance Core.FromJSON GaData_ColumnHeadersItem where
  parseJSON =
    Core.withObject
      "GaData_ColumnHeadersItem"
      ( \o ->
          GaData_ColumnHeadersItem
            Core.<$> (o Core..:? "columnType")
            Core.<*> (o Core..:? "dataType")
            Core.<*> (o Core..:? "name")
      )

instance Core.ToJSON GaData_ColumnHeadersItem where
  toJSON GaData_ColumnHeadersItem {..} =
    Core.object
      ( Core.catMaybes
          [ ("columnType" Core..=) Core.<$> columnType,
            ("dataType" Core..=) Core.<$> dataType,
            ("name" Core..=) Core.<$> name
          ]
      )

--
-- /See:/ 'newGaData_DataTable' smart constructor.
data GaData_DataTable = GaData_DataTable
  { -- |
    cols :: (Core.Maybe [GaData_DataTable_ColsItem]),
    -- |
    rows :: (Core.Maybe [GaData_DataTable_RowsItem])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GaData_DataTable' with the minimum fields required to make a request.
newGaData_DataTable ::
  GaData_DataTable
newGaData_DataTable =
  GaData_DataTable {cols = Core.Nothing, rows = Core.Nothing}

instance Core.FromJSON GaData_DataTable where
  parseJSON =
    Core.withObject
      "GaData_DataTable"
      ( \o ->
          GaData_DataTable
            Core.<$> (o Core..:? "cols" Core..!= Core.mempty)
            Core.<*> (o Core..:? "rows" Core..!= Core.mempty)
      )

instance Core.ToJSON GaData_DataTable where
  toJSON GaData_DataTable {..} =
    Core.object
      ( Core.catMaybes
          [ ("cols" Core..=) Core.<$> cols,
            ("rows" Core..=) Core.<$> rows
          ]
      )

--
-- /See:/ 'newGaData_DataTable_ColsItem' smart constructor.
data GaData_DataTable_ColsItem = GaData_DataTable_ColsItem
  { -- |
    id :: (Core.Maybe Core.Text),
    -- |
    label :: (Core.Maybe Core.Text),
    -- |
    type' :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GaData_DataTable_ColsItem' with the minimum fields required to make a request.
newGaData_DataTable_ColsItem ::
  GaData_DataTable_ColsItem
newGaData_DataTable_ColsItem =
  GaData_DataTable_ColsItem
    { id = Core.Nothing,
      label = Core.Nothing,
      type' = Core.Nothing
    }

instance Core.FromJSON GaData_DataTable_ColsItem where
  parseJSON =
    Core.withObject
      "GaData_DataTable_ColsItem"
      ( \o ->
          GaData_DataTable_ColsItem
            Core.<$> (o Core..:? "id")
            Core.<*> (o Core..:? "label")
            Core.<*> (o Core..:? "type")
      )

instance Core.ToJSON GaData_DataTable_ColsItem where
  toJSON GaData_DataTable_ColsItem {..} =
    Core.object
      ( Core.catMaybes
          [ ("id" Core..=) Core.<$> id,
            ("label" Core..=) Core.<$> label,
            ("type" Core..=) Core.<$> type'
          ]
      )

--
-- /See:/ 'newGaData_DataTable_RowsItem' smart constructor.
newtype GaData_DataTable_RowsItem = GaData_DataTable_RowsItem
  { -- |
    c :: (Core.Maybe [GaData_DataTable_RowsItem_CItem])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GaData_DataTable_RowsItem' with the minimum fields required to make a request.
newGaData_DataTable_RowsItem ::
  GaData_DataTable_RowsItem
newGaData_DataTable_RowsItem = GaData_DataTable_RowsItem {c = Core.Nothing}

instance Core.FromJSON GaData_DataTable_RowsItem where
  parseJSON =
    Core.withObject
      "GaData_DataTable_RowsItem"
      ( \o ->
          GaData_DataTable_RowsItem
            Core.<$> (o Core..:? "c" Core..!= Core.mempty)
      )

instance Core.ToJSON GaData_DataTable_RowsItem where
  toJSON GaData_DataTable_RowsItem {..} =
    Core.object
      (Core.catMaybes [("c" Core..=) Core.<$> c])

--
-- /See:/ 'newGaData_DataTable_RowsItem_CItem' smart constructor.
newtype GaData_DataTable_RowsItem_CItem = GaData_DataTable_RowsItem_CItem
  { -- |
    v :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GaData_DataTable_RowsItem_CItem' with the minimum fields required to make a request.
newGaData_DataTable_RowsItem_CItem ::
  GaData_DataTable_RowsItem_CItem
newGaData_DataTable_RowsItem_CItem =
  GaData_DataTable_RowsItem_CItem {v = Core.Nothing}

instance
  Core.FromJSON
    GaData_DataTable_RowsItem_CItem
  where
  parseJSON =
    Core.withObject
      "GaData_DataTable_RowsItem_CItem"
      ( \o ->
          GaData_DataTable_RowsItem_CItem
            Core.<$> (o Core..:? "v")
      )

instance Core.ToJSON GaData_DataTable_RowsItem_CItem where
  toJSON GaData_DataTable_RowsItem_CItem {..} =
    Core.object
      (Core.catMaybes [("v" Core..=) Core.<$> v])

-- | Information for the view (profile), for which the Analytics data was requested.
--
-- /See:/ 'newGaData_ProfileInfo' smart constructor.
data GaData_ProfileInfo = GaData_ProfileInfo
  { -- | Account ID to which this view (profile) belongs.
    accountId :: (Core.Maybe Core.Text),
    -- | Internal ID for the web property to which this view (profile) belongs.
    internalWebPropertyId :: (Core.Maybe Core.Text),
    -- | View (Profile) ID.
    profileId :: (Core.Maybe Core.Text),
    -- | View (Profile) name.
    profileName :: (Core.Maybe Core.Text),
    -- | Table ID for view (profile).
    tableId :: (Core.Maybe Core.Text),
    -- | Web Property ID to which this view (profile) belongs.
    webPropertyId :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GaData_ProfileInfo' with the minimum fields required to make a request.
newGaData_ProfileInfo ::
  GaData_ProfileInfo
newGaData_ProfileInfo =
  GaData_ProfileInfo
    { accountId = Core.Nothing,
      internalWebPropertyId = Core.Nothing,
      profileId = Core.Nothing,
      profileName = Core.Nothing,
      tableId = Core.Nothing,
      webPropertyId = Core.Nothing
    }

instance Core.FromJSON GaData_ProfileInfo where
  parseJSON =
    Core.withObject
      "GaData_ProfileInfo"
      ( \o ->
          GaData_ProfileInfo
            Core.<$> (o Core..:? "accountId")
            Core.<*> (o Core..:? "internalWebPropertyId")
            Core.<*> (o Core..:? "profileId")
            Core.<*> (o Core..:? "profileName")
            Core.<*> (o Core..:? "tableId")
            Core.<*> (o Core..:? "webPropertyId")
      )

instance Core.ToJSON GaData_ProfileInfo where
  toJSON GaData_ProfileInfo {..} =
    Core.object
      ( Core.catMaybes
          [ ("accountId" Core..=) Core.<$> accountId,
            ("internalWebPropertyId" Core..=)
              Core.<$> internalWebPropertyId,
            ("profileId" Core..=) Core.<$> profileId,
            ("profileName" Core..=) Core.<$> profileName,
            ("tableId" Core..=) Core.<$> tableId,
            ("webPropertyId" Core..=) Core.<$> webPropertyId
          ]
      )

-- | Analytics data request query parameters.
--
-- /See:/ 'newGaData_Query' smart constructor.
data GaData_Query = GaData_Query
  { -- | List of analytics dimensions.
    dimensions :: (Core.Maybe Core.Text),
    -- | End date.
    endDate :: (Core.Maybe Core.Text),
    -- | Comma-separated list of dimension or metric filters.
    filters :: (Core.Maybe Core.Text),
    -- | Unique table ID.
    ids :: (Core.Maybe Core.Text),
    -- | Maximum results per page.
    maxResults :: (Core.Maybe Core.Int32),
    -- | List of analytics metrics.
    metrics :: (Core.Maybe [Core.Text]),
    -- | Desired sampling level
    samplingLevel :: (Core.Maybe Core.Text),
    -- | Analytics advanced segment.
    segment :: (Core.Maybe Core.Text),
    -- | List of dimensions or metrics based on which Analytics data is sorted.
    sort :: (Core.Maybe [Core.Text]),
    -- | Start date.
    startDate :: (Core.Maybe Core.Text),
    -- | Start index.
    startIndex :: (Core.Maybe Core.Int32)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GaData_Query' with the minimum fields required to make a request.
newGaData_Query ::
  GaData_Query
newGaData_Query =
  GaData_Query
    { dimensions = Core.Nothing,
      endDate = Core.Nothing,
      filters = Core.Nothing,
      ids = Core.Nothing,
      maxResults = Core.Nothing,
      metrics = Core.Nothing,
      samplingLevel = Core.Nothing,
      segment = Core.Nothing,
      sort = Core.Nothing,
      startDate = Core.Nothing,
      startIndex = Core.Nothing
    }

instance Core.FromJSON GaData_Query where
  parseJSON =
    Core.withObject
      "GaData_Query"
      ( \o ->
          GaData_Query
            Core.<$> (o Core..:? "dimensions")
            Core.<*> (o Core..:? "end-date")
            Core.<*> (o Core..:? "filters")
            Core.<*> (o Core..:? "ids")
            Core.<*> (o Core..:? "max-results")
            Core.<*> (o Core..:? "metrics" Core..!= Core.mempty)
            Core.<*> (o Core..:? "samplingLevel")
            Core.<*> (o Core..:? "segment")
            Core.<*> (o Core..:? "sort" Core..!= Core.mempty)
            Core.<*> (o Core..:? "start-date")
            Core.<*> (o Core..:? "start-index")
      )

instance Core.ToJSON GaData_Query where
  toJSON GaData_Query {..} =
    Core.object
      ( Core.catMaybes
          [ ("dimensions" Core..=) Core.<$> dimensions,
            ("end-date" Core..=) Core.<$> endDate,
            ("filters" Core..=) Core.<$> filters,
            ("ids" Core..=) Core.<$> ids,
            ("max-results" Core..=) Core.<$> maxResults,
            ("metrics" Core..=) Core.<$> metrics,
            ("samplingLevel" Core..=) Core.<$> samplingLevel,
            ("segment" Core..=) Core.<$> segment,
            ("sort" Core..=) Core.<$> sort,
            ("start-date" Core..=) Core.<$> startDate,
            ("start-index" Core..=) Core.<$> startIndex
          ]
      )

-- | Total values for the requested metrics over all the results, not just the results returned in this response. The order of the metric totals is same as the metric order specified in the request.
--
-- /See:/ 'newGaData_TotalsForAllResults' smart constructor.
newtype GaData_TotalsForAllResults = GaData_TotalsForAllResults
  { -- | Key-value pair for the total value of a metric. Key is the metric name and the value is the total value for that metric.
    addtional :: (Core.HashMap Core.Text Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GaData_TotalsForAllResults' with the minimum fields required to make a request.
newGaData_TotalsForAllResults ::
  -- |  Key-value pair for the total value of a metric. Key is the metric name and the value is the total value for that metric. See 'addtional'.
  Core.HashMap Core.Text Core.Text ->
  GaData_TotalsForAllResults
newGaData_TotalsForAllResults addtional =
  GaData_TotalsForAllResults {addtional = addtional}

instance Core.FromJSON GaData_TotalsForAllResults where
  parseJSON =
    Core.withObject
      "GaData_TotalsForAllResults"
      ( \o ->
          GaData_TotalsForAllResults
            Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON GaData_TotalsForAllResults where
  toJSON GaData_TotalsForAllResults {..} =
    Core.toJSON addtional

-- | JSON template for Analytics goal resource.
--
-- /See:/ 'newGoal' smart constructor.
data Goal = Goal
  { -- | Account ID to which this goal belongs.
    accountId :: (Core.Maybe Core.Text),
    -- | Determines whether this goal is active.
    active :: (Core.Maybe Core.Bool),
    -- | Time this goal was created.
    created :: (Core.Maybe Core.DateTime'),
    -- | Details for the goal of the type EVENT.
    eventDetails :: (Core.Maybe Goal_EventDetails),
    -- | Goal ID.
    id :: (Core.Maybe Core.Text),
    -- | Internal ID for the web property to which this goal belongs.
    internalWebPropertyId :: (Core.Maybe Core.Text),
    -- | Resource type for an Analytics goal.
    kind :: Core.Text,
    -- | Goal name.
    name :: (Core.Maybe Core.Text),
    -- | Parent link for a goal. Points to the view (profile) to which this goal belongs.
    parentLink :: (Core.Maybe Goal_ParentLink),
    -- | View (Profile) ID to which this goal belongs.
    profileId :: (Core.Maybe Core.Text),
    -- | Link for this goal.
    selfLink :: (Core.Maybe Core.Text),
    -- | Goal type. Possible values are URL/DESTINATION, VISIT/TIME/ON/SITE, VISIT/NUM/PAGES, AND EVENT.
    type' :: (Core.Maybe Core.Text),
    -- | Time this goal was last modified.
    updated :: (Core.Maybe Core.DateTime'),
    -- | Details for the goal of the type URL_DESTINATION.
    urlDestinationDetails :: (Core.Maybe Goal_UrlDestinationDetails),
    -- | Goal value.
    value :: (Core.Maybe Core.Double),
    -- | Details for the goal of the type VISIT/NUM/PAGES.
    visitNumPagesDetails :: (Core.Maybe Goal_VisitNumPagesDetails),
    -- | Details for the goal of the type VISIT/TIME/ON_SITE.
    visitTimeOnSiteDetails :: (Core.Maybe Goal_VisitTimeOnSiteDetails),
    -- | Web property ID to which this goal belongs. The web property ID is of the form UA-XXXXX-YY.
    webPropertyId :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Goal' with the minimum fields required to make a request.
newGoal ::
  Goal
newGoal =
  Goal
    { accountId = Core.Nothing,
      active = Core.Nothing,
      created = Core.Nothing,
      eventDetails = Core.Nothing,
      id = Core.Nothing,
      internalWebPropertyId = Core.Nothing,
      kind = "analytics#goal",
      name = Core.Nothing,
      parentLink = Core.Nothing,
      profileId = Core.Nothing,
      selfLink = Core.Nothing,
      type' = Core.Nothing,
      updated = Core.Nothing,
      urlDestinationDetails = Core.Nothing,
      value = Core.Nothing,
      visitNumPagesDetails = Core.Nothing,
      visitTimeOnSiteDetails = Core.Nothing,
      webPropertyId = Core.Nothing
    }

instance Core.FromJSON Goal where
  parseJSON =
    Core.withObject
      "Goal"
      ( \o ->
          Goal
            Core.<$> (o Core..:? "accountId")
            Core.<*> (o Core..:? "active")
            Core.<*> (o Core..:? "created")
            Core.<*> (o Core..:? "eventDetails")
            Core.<*> (o Core..:? "id")
            Core.<*> (o Core..:? "internalWebPropertyId")
            Core.<*> (o Core..:? "kind" Core..!= "analytics#goal")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "parentLink")
            Core.<*> (o Core..:? "profileId")
            Core.<*> (o Core..:? "selfLink")
            Core.<*> (o Core..:? "type")
            Core.<*> (o Core..:? "updated")
            Core.<*> (o Core..:? "urlDestinationDetails")
            Core.<*> (o Core..:? "value")
            Core.<*> (o Core..:? "visitNumPagesDetails")
            Core.<*> (o Core..:? "visitTimeOnSiteDetails")
            Core.<*> (o Core..:? "webPropertyId")
      )

instance Core.ToJSON Goal where
  toJSON Goal {..} =
    Core.object
      ( Core.catMaybes
          [ ("accountId" Core..=) Core.<$> accountId,
            ("active" Core..=) Core.<$> active,
            ("created" Core..=) Core.<$> created,
            ("eventDetails" Core..=) Core.<$> eventDetails,
            ("id" Core..=) Core.<$> id,
            ("internalWebPropertyId" Core..=)
              Core.<$> internalWebPropertyId,
            Core.Just ("kind" Core..= kind),
            ("name" Core..=) Core.<$> name,
            ("parentLink" Core..=) Core.<$> parentLink,
            ("profileId" Core..=) Core.<$> profileId,
            ("selfLink" Core..=) Core.<$> selfLink,
            ("type" Core..=) Core.<$> type',
            ("updated" Core..=) Core.<$> updated,
            ("urlDestinationDetails" Core..=)
              Core.<$> urlDestinationDetails,
            ("value" Core..=) Core.<$> value,
            ("visitNumPagesDetails" Core..=)
              Core.<$> visitNumPagesDetails,
            ("visitTimeOnSiteDetails" Core..=)
              Core.<$> visitTimeOnSiteDetails,
            ("webPropertyId" Core..=) Core.<$> webPropertyId
          ]
      )

-- | Details for the goal of the type EVENT.
--
-- /See:/ 'newGoal_EventDetails' smart constructor.
data Goal_EventDetails = Goal_EventDetails
  { -- | List of event conditions.
    eventConditions :: (Core.Maybe [Goal_EventDetails_EventConditionsItem]),
    -- | Determines if the event value should be used as the value for this goal.
    useEventValue :: (Core.Maybe Core.Bool)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Goal_EventDetails' with the minimum fields required to make a request.
newGoal_EventDetails ::
  Goal_EventDetails
newGoal_EventDetails =
  Goal_EventDetails
    { eventConditions = Core.Nothing,
      useEventValue = Core.Nothing
    }

instance Core.FromJSON Goal_EventDetails where
  parseJSON =
    Core.withObject
      "Goal_EventDetails"
      ( \o ->
          Goal_EventDetails
            Core.<$> (o Core..:? "eventConditions" Core..!= Core.mempty)
            Core.<*> (o Core..:? "useEventValue")
      )

instance Core.ToJSON Goal_EventDetails where
  toJSON Goal_EventDetails {..} =
    Core.object
      ( Core.catMaybes
          [ ("eventConditions" Core..=)
              Core.<$> eventConditions,
            ("useEventValue" Core..=) Core.<$> useEventValue
          ]
      )

--
-- /See:/ 'newGoal_EventDetails_EventConditionsItem' smart constructor.
data Goal_EventDetails_EventConditionsItem = Goal_EventDetails_EventConditionsItem
  { -- | Type of comparison. Possible values are LESS/THAN, GREATER/THAN or EQUAL.
    comparisonType :: (Core.Maybe Core.Text),
    -- | Value used for this comparison.
    comparisonValue :: (Core.Maybe Core.Int64),
    -- | Expression used for this match.
    expression :: (Core.Maybe Core.Text),
    -- | Type of the match to be performed. Possible values are REGEXP, BEGINS_WITH, or EXACT.
    matchType :: (Core.Maybe Core.Text),
    -- | Type of this event condition. Possible values are CATEGORY, ACTION, LABEL, or VALUE.
    type' :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Goal_EventDetails_EventConditionsItem' with the minimum fields required to make a request.
newGoal_EventDetails_EventConditionsItem ::
  Goal_EventDetails_EventConditionsItem
newGoal_EventDetails_EventConditionsItem =
  Goal_EventDetails_EventConditionsItem
    { comparisonType = Core.Nothing,
      comparisonValue = Core.Nothing,
      expression = Core.Nothing,
      matchType = Core.Nothing,
      type' = Core.Nothing
    }

instance
  Core.FromJSON
    Goal_EventDetails_EventConditionsItem
  where
  parseJSON =
    Core.withObject
      "Goal_EventDetails_EventConditionsItem"
      ( \o ->
          Goal_EventDetails_EventConditionsItem
            Core.<$> (o Core..:? "comparisonType")
            Core.<*> (o Core..:? "comparisonValue")
            Core.<*> (o Core..:? "expression")
            Core.<*> (o Core..:? "matchType")
            Core.<*> (o Core..:? "type")
      )

instance
  Core.ToJSON
    Goal_EventDetails_EventConditionsItem
  where
  toJSON Goal_EventDetails_EventConditionsItem {..} =
    Core.object
      ( Core.catMaybes
          [ ("comparisonType" Core..=) Core.<$> comparisonType,
            ("comparisonValue" Core..=) Core.. Core.AsText
              Core.<$> comparisonValue,
            ("expression" Core..=) Core.<$> expression,
            ("matchType" Core..=) Core.<$> matchType,
            ("type" Core..=) Core.<$> type'
          ]
      )

-- | Parent link for a goal. Points to the view (profile) to which this goal belongs.
--
-- /See:/ 'newGoal_ParentLink' smart constructor.
data Goal_ParentLink = Goal_ParentLink
  { -- | Link to the view (profile) to which this goal belongs.
    href :: (Core.Maybe Core.Text),
    -- | Value is \"analytics#profile\".
    type' :: Core.Text
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Goal_ParentLink' with the minimum fields required to make a request.
newGoal_ParentLink ::
  Goal_ParentLink
newGoal_ParentLink =
  Goal_ParentLink {href = Core.Nothing, type' = "analytics#profile"}

instance Core.FromJSON Goal_ParentLink where
  parseJSON =
    Core.withObject
      "Goal_ParentLink"
      ( \o ->
          Goal_ParentLink
            Core.<$> (o Core..:? "href")
            Core.<*> (o Core..:? "type" Core..!= "analytics#profile")
      )

instance Core.ToJSON Goal_ParentLink where
  toJSON Goal_ParentLink {..} =
    Core.object
      ( Core.catMaybes
          [ ("href" Core..=) Core.<$> href,
            Core.Just ("type" Core..= type')
          ]
      )

-- | Details for the goal of the type URL_DESTINATION.
--
-- /See:/ 'newGoal_UrlDestinationDetails' smart constructor.
data Goal_UrlDestinationDetails = Goal_UrlDestinationDetails
  { -- | Determines if the goal URL must exactly match the capitalization of visited URLs.
    caseSensitive :: (Core.Maybe Core.Bool),
    -- | Determines if the first step in this goal is required.
    firstStepRequired :: (Core.Maybe Core.Bool),
    -- | Match type for the goal URL. Possible values are HEAD, EXACT, or REGEX.
    matchType :: (Core.Maybe Core.Text),
    -- | List of steps configured for this goal funnel.
    steps :: (Core.Maybe [Goal_UrlDestinationDetails_StepsItem]),
    -- | URL for this goal.
    url :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Goal_UrlDestinationDetails' with the minimum fields required to make a request.
newGoal_UrlDestinationDetails ::
  Goal_UrlDestinationDetails
newGoal_UrlDestinationDetails =
  Goal_UrlDestinationDetails
    { caseSensitive = Core.Nothing,
      firstStepRequired = Core.Nothing,
      matchType = Core.Nothing,
      steps = Core.Nothing,
      url = Core.Nothing
    }

instance Core.FromJSON Goal_UrlDestinationDetails where
  parseJSON =
    Core.withObject
      "Goal_UrlDestinationDetails"
      ( \o ->
          Goal_UrlDestinationDetails
            Core.<$> (o Core..:? "caseSensitive")
            Core.<*> (o Core..:? "firstStepRequired")
            Core.<*> (o Core..:? "matchType")
            Core.<*> (o Core..:? "steps" Core..!= Core.mempty)
            Core.<*> (o Core..:? "url")
      )

instance Core.ToJSON Goal_UrlDestinationDetails where
  toJSON Goal_UrlDestinationDetails {..} =
    Core.object
      ( Core.catMaybes
          [ ("caseSensitive" Core..=) Core.<$> caseSensitive,
            ("firstStepRequired" Core..=)
              Core.<$> firstStepRequired,
            ("matchType" Core..=) Core.<$> matchType,
            ("steps" Core..=) Core.<$> steps,
            ("url" Core..=) Core.<$> url
          ]
      )

--
-- /See:/ 'newGoal_UrlDestinationDetails_StepsItem' smart constructor.
data Goal_UrlDestinationDetails_StepsItem = Goal_UrlDestinationDetails_StepsItem
  { -- | Step name.
    name :: (Core.Maybe Core.Text),
    -- | Step number.
    number :: (Core.Maybe Core.Int32),
    -- | URL for this step.
    url :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Goal_UrlDestinationDetails_StepsItem' with the minimum fields required to make a request.
newGoal_UrlDestinationDetails_StepsItem ::
  Goal_UrlDestinationDetails_StepsItem
newGoal_UrlDestinationDetails_StepsItem =
  Goal_UrlDestinationDetails_StepsItem
    { name = Core.Nothing,
      number = Core.Nothing,
      url = Core.Nothing
    }

instance
  Core.FromJSON
    Goal_UrlDestinationDetails_StepsItem
  where
  parseJSON =
    Core.withObject
      "Goal_UrlDestinationDetails_StepsItem"
      ( \o ->
          Goal_UrlDestinationDetails_StepsItem
            Core.<$> (o Core..:? "name")
            Core.<*> (o Core..:? "number")
            Core.<*> (o Core..:? "url")
      )

instance
  Core.ToJSON
    Goal_UrlDestinationDetails_StepsItem
  where
  toJSON Goal_UrlDestinationDetails_StepsItem {..} =
    Core.object
      ( Core.catMaybes
          [ ("name" Core..=) Core.<$> name,
            ("number" Core..=) Core.<$> number,
            ("url" Core..=) Core.<$> url
          ]
      )

-- | Details for the goal of the type VISIT/NUM/PAGES.
--
-- /See:/ 'newGoal_VisitNumPagesDetails' smart constructor.
data Goal_VisitNumPagesDetails = Goal_VisitNumPagesDetails
  { -- | Type of comparison. Possible values are LESS/THAN, GREATER/THAN, or EQUAL.
    comparisonType :: (Core.Maybe Core.Text),
    -- | Value used for this comparison.
    comparisonValue :: (Core.Maybe Core.Int64)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Goal_VisitNumPagesDetails' with the minimum fields required to make a request.
newGoal_VisitNumPagesDetails ::
  Goal_VisitNumPagesDetails
newGoal_VisitNumPagesDetails =
  Goal_VisitNumPagesDetails
    { comparisonType = Core.Nothing,
      comparisonValue = Core.Nothing
    }

instance Core.FromJSON Goal_VisitNumPagesDetails where
  parseJSON =
    Core.withObject
      "Goal_VisitNumPagesDetails"
      ( \o ->
          Goal_VisitNumPagesDetails
            Core.<$> (o Core..:? "comparisonType")
            Core.<*> (o Core..:? "comparisonValue")
      )

instance Core.ToJSON Goal_VisitNumPagesDetails where
  toJSON Goal_VisitNumPagesDetails {..} =
    Core.object
      ( Core.catMaybes
          [ ("comparisonType" Core..=) Core.<$> comparisonType,
            ("comparisonValue" Core..=) Core.. Core.AsText
              Core.<$> comparisonValue
          ]
      )

-- | Details for the goal of the type VISIT/TIME/ON_SITE.
--
-- /See:/ 'newGoal_VisitTimeOnSiteDetails' smart constructor.
data Goal_VisitTimeOnSiteDetails = Goal_VisitTimeOnSiteDetails
  { -- | Type of comparison. Possible values are LESS/THAN or GREATER/THAN.
    comparisonType :: (Core.Maybe Core.Text),
    -- | Value used for this comparison.
    comparisonValue :: (Core.Maybe Core.Int64)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Goal_VisitTimeOnSiteDetails' with the minimum fields required to make a request.
newGoal_VisitTimeOnSiteDetails ::
  Goal_VisitTimeOnSiteDetails
newGoal_VisitTimeOnSiteDetails =
  Goal_VisitTimeOnSiteDetails
    { comparisonType = Core.Nothing,
      comparisonValue = Core.Nothing
    }

instance Core.FromJSON Goal_VisitTimeOnSiteDetails where
  parseJSON =
    Core.withObject
      "Goal_VisitTimeOnSiteDetails"
      ( \o ->
          Goal_VisitTimeOnSiteDetails
            Core.<$> (o Core..:? "comparisonType")
            Core.<*> (o Core..:? "comparisonValue")
      )

instance Core.ToJSON Goal_VisitTimeOnSiteDetails where
  toJSON Goal_VisitTimeOnSiteDetails {..} =
    Core.object
      ( Core.catMaybes
          [ ("comparisonType" Core..=) Core.<$> comparisonType,
            ("comparisonValue" Core..=) Core.. Core.AsText
              Core.<$> comparisonValue
          ]
      )

-- | A goal collection lists Analytics goals to which the user has access. Each view (profile) can have a set of goals. Each resource in the Goal collection corresponds to a single Analytics goal.
--
-- /See:/ 'newGoals' smart constructor.
data Goals = Goals
  { -- | A list of goals.
    items :: (Core.Maybe [Goal]),
    -- | The maximum number of resources the response can contain, regardless of the actual number of resources returned. Its value ranges from 1 to 1000 with a value of 1000 by default, or otherwise specified by the max-results query parameter.
    itemsPerPage :: (Core.Maybe Core.Int32),
    -- | Collection type.
    kind :: Core.Text,
    -- | Link to next page for this goal collection.
    nextLink :: (Core.Maybe Core.Text),
    -- | Link to previous page for this goal collection.
    previousLink :: (Core.Maybe Core.Text),
    -- | The starting index of the resources, which is 1 by default or otherwise specified by the start-index query parameter.
    startIndex :: (Core.Maybe Core.Int32),
    -- | The total number of results for the query, regardless of the number of resources in the result.
    totalResults :: (Core.Maybe Core.Int32),
    -- | Email ID of the authenticated user
    username :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Goals' with the minimum fields required to make a request.
newGoals ::
  Goals
newGoals =
  Goals
    { items = Core.Nothing,
      itemsPerPage = Core.Nothing,
      kind = "analytics#goals",
      nextLink = Core.Nothing,
      previousLink = Core.Nothing,
      startIndex = Core.Nothing,
      totalResults = Core.Nothing,
      username = Core.Nothing
    }

instance Core.FromJSON Goals where
  parseJSON =
    Core.withObject
      "Goals"
      ( \o ->
          Goals
            Core.<$> (o Core..:? "items" Core..!= Core.mempty)
            Core.<*> (o Core..:? "itemsPerPage")
            Core.<*> (o Core..:? "kind" Core..!= "analytics#goals")
            Core.<*> (o Core..:? "nextLink")
            Core.<*> (o Core..:? "previousLink")
            Core.<*> (o Core..:? "startIndex")
            Core.<*> (o Core..:? "totalResults")
            Core.<*> (o Core..:? "username")
      )

instance Core.ToJSON Goals where
  toJSON Goals {..} =
    Core.object
      ( Core.catMaybes
          [ ("items" Core..=) Core.<$> items,
            ("itemsPerPage" Core..=) Core.<$> itemsPerPage,
            Core.Just ("kind" Core..= kind),
            ("nextLink" Core..=) Core.<$> nextLink,
            ("previousLink" Core..=) Core.<$> previousLink,
            ("startIndex" Core..=) Core.<$> startIndex,
            ("totalResults" Core..=) Core.<$> totalResults,
            ("username" Core..=) Core.<$> username
          ]
      )

-- | JSON template for a hash Client Id request resource.
--
-- /See:/ 'newHashClientIdRequest' smart constructor.
data HashClientIdRequest = HashClientIdRequest
  { -- |
    clientId :: (Core.Maybe Core.Text),
    -- |
    kind :: Core.Text,
    -- |
    webPropertyId :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'HashClientIdRequest' with the minimum fields required to make a request.
newHashClientIdRequest ::
  HashClientIdRequest
newHashClientIdRequest =
  HashClientIdRequest
    { clientId = Core.Nothing,
      kind = "analytics#hashClientIdRequest",
      webPropertyId = Core.Nothing
    }

instance Core.FromJSON HashClientIdRequest where
  parseJSON =
    Core.withObject
      "HashClientIdRequest"
      ( \o ->
          HashClientIdRequest
            Core.<$> (o Core..:? "clientId")
            Core.<*> ( o Core..:? "kind"
                         Core..!= "analytics#hashClientIdRequest"
                     )
            Core.<*> (o Core..:? "webPropertyId")
      )

instance Core.ToJSON HashClientIdRequest where
  toJSON HashClientIdRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("clientId" Core..=) Core.<$> clientId,
            Core.Just ("kind" Core..= kind),
            ("webPropertyId" Core..=) Core.<$> webPropertyId
          ]
      )

-- | JSON template for a hash Client Id response resource.
--
-- /See:/ 'newHashClientIdResponse' smart constructor.
data HashClientIdResponse = HashClientIdResponse
  { -- |
    clientId :: (Core.Maybe Core.Text),
    -- |
    hashedClientId :: (Core.Maybe Core.Text),
    -- |
    kind :: Core.Text,
    -- |
    webPropertyId :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'HashClientIdResponse' with the minimum fields required to make a request.
newHashClientIdResponse ::
  HashClientIdResponse
newHashClientIdResponse =
  HashClientIdResponse
    { clientId = Core.Nothing,
      hashedClientId = Core.Nothing,
      kind = "analytics#hashClientIdResponse",
      webPropertyId = Core.Nothing
    }

instance Core.FromJSON HashClientIdResponse where
  parseJSON =
    Core.withObject
      "HashClientIdResponse"
      ( \o ->
          HashClientIdResponse
            Core.<$> (o Core..:? "clientId")
            Core.<*> (o Core..:? "hashedClientId")
            Core.<*> ( o Core..:? "kind"
                         Core..!= "analytics#hashClientIdResponse"
                     )
            Core.<*> (o Core..:? "webPropertyId")
      )

instance Core.ToJSON HashClientIdResponse where
  toJSON HashClientIdResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("clientId" Core..=) Core.<$> clientId,
            ("hashedClientId" Core..=) Core.<$> hashedClientId,
            Core.Just ("kind" Core..= kind),
            ("webPropertyId" Core..=) Core.<$> webPropertyId
          ]
      )

-- | JSON template for an Analytics Remarketing Include Conditions.
--
-- /See:/ 'newIncludeConditions' smart constructor.
data IncludeConditions = IncludeConditions
  { -- | The look-back window lets you specify a time frame for evaluating the behavior that qualifies users for your audience. For example, if your filters include users from Central Asia, and Transactions Greater than 2, and you set the look-back window to 14 days, then any user from Central Asia whose cumulative transactions exceed 2 during the last 14 days is added to the audience.
    daysToLookBack :: (Core.Maybe Core.Int32),
    -- | Boolean indicating whether this segment is a smart list. https:\/\/support.google.com\/analytics\/answer\/4628577
    isSmartList :: (Core.Maybe Core.Bool),
    -- | Resource type for include conditions.
    kind :: Core.Text,
    -- | Number of days (in the range 1 to 540) a user remains in the audience.
    membershipDurationDays :: (Core.Maybe Core.Int32),
    -- | The segment condition that will cause a user to be added to an audience.
    segment :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'IncludeConditions' with the minimum fields required to make a request.
newIncludeConditions ::
  IncludeConditions
newIncludeConditions =
  IncludeConditions
    { daysToLookBack = Core.Nothing,
      isSmartList = Core.Nothing,
      kind = "analytics#includeConditions",
      membershipDurationDays = Core.Nothing,
      segment = Core.Nothing
    }

instance Core.FromJSON IncludeConditions where
  parseJSON =
    Core.withObject
      "IncludeConditions"
      ( \o ->
          IncludeConditions
            Core.<$> (o Core..:? "daysToLookBack")
            Core.<*> (o Core..:? "isSmartList")
            Core.<*> ( o Core..:? "kind"
                         Core..!= "analytics#includeConditions"
                     )
            Core.<*> (o Core..:? "membershipDurationDays")
            Core.<*> (o Core..:? "segment")
      )

instance Core.ToJSON IncludeConditions where
  toJSON IncludeConditions {..} =
    Core.object
      ( Core.catMaybes
          [ ("daysToLookBack" Core..=) Core.<$> daysToLookBack,
            ("isSmartList" Core..=) Core.<$> isSmartList,
            Core.Just ("kind" Core..= kind),
            ("membershipDurationDays" Core..=)
              Core.<$> membershipDurationDays,
            ("segment" Core..=) Core.<$> segment
          ]
      )

-- | JSON template for an Analytics Remarketing Audience Foreign Link.
--
-- /See:/ 'newLinkedForeignAccount' smart constructor.
data LinkedForeignAccount = LinkedForeignAccount
  { -- | Account ID to which this linked foreign account belongs.
    accountId :: (Core.Maybe Core.Text),
    -- | Boolean indicating whether this is eligible for search.
    eligibleForSearch :: (Core.Maybe Core.Bool),
    -- | Entity ad account link ID.
    id :: (Core.Maybe Core.Text),
    -- | Internal ID for the web property to which this linked foreign account belongs.
    internalWebPropertyId :: (Core.Maybe Core.Text),
    -- | Resource type for linked foreign account.
    kind :: Core.Text,
    -- | The foreign account ID. For example the an Google Ads @linkedAccountId@ has the following format XXX-XXX-XXXX.
    linkedAccountId :: (Core.Maybe Core.Text),
    -- | Remarketing audience ID to which this linked foreign account belongs.
    remarketingAudienceId :: (Core.Maybe Core.Text),
    -- | The status of this foreign account link.
    status :: (Core.Maybe Core.Text),
    -- | The type of the foreign account. For example, @ADWORDS_LINKS@, @DBM_LINKS@, @MCC_LINKS@ or @OPTIMIZE@.
    type' :: (Core.Maybe Core.Text),
    -- | Web property ID of the form UA-XXXXX-YY to which this linked foreign account belongs.
    webPropertyId :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'LinkedForeignAccount' with the minimum fields required to make a request.
newLinkedForeignAccount ::
  LinkedForeignAccount
newLinkedForeignAccount =
  LinkedForeignAccount
    { accountId = Core.Nothing,
      eligibleForSearch = Core.Nothing,
      id = Core.Nothing,
      internalWebPropertyId = Core.Nothing,
      kind = "analytics#linkedForeignAccount",
      linkedAccountId = Core.Nothing,
      remarketingAudienceId = Core.Nothing,
      status = Core.Nothing,
      type' = Core.Nothing,
      webPropertyId = Core.Nothing
    }

instance Core.FromJSON LinkedForeignAccount where
  parseJSON =
    Core.withObject
      "LinkedForeignAccount"
      ( \o ->
          LinkedForeignAccount
            Core.<$> (o Core..:? "accountId")
            Core.<*> (o Core..:? "eligibleForSearch")
            Core.<*> (o Core..:? "id")
            Core.<*> (o Core..:? "internalWebPropertyId")
            Core.<*> ( o Core..:? "kind"
                         Core..!= "analytics#linkedForeignAccount"
                     )
            Core.<*> (o Core..:? "linkedAccountId")
            Core.<*> (o Core..:? "remarketingAudienceId")
            Core.<*> (o Core..:? "status")
            Core.<*> (o Core..:? "type")
            Core.<*> (o Core..:? "webPropertyId")
      )

instance Core.ToJSON LinkedForeignAccount where
  toJSON LinkedForeignAccount {..} =
    Core.object
      ( Core.catMaybes
          [ ("accountId" Core..=) Core.<$> accountId,
            ("eligibleForSearch" Core..=)
              Core.<$> eligibleForSearch,
            ("id" Core..=) Core.<$> id,
            ("internalWebPropertyId" Core..=)
              Core.<$> internalWebPropertyId,
            Core.Just ("kind" Core..= kind),
            ("linkedAccountId" Core..=) Core.<$> linkedAccountId,
            ("remarketingAudienceId" Core..=)
              Core.<$> remarketingAudienceId,
            ("status" Core..=) Core.<$> status,
            ("type" Core..=) Core.<$> type',
            ("webPropertyId" Core..=) Core.<$> webPropertyId
          ]
      )

-- | Multi-Channel Funnels data for a given view (profile).
--
-- /See:/ 'newMcfData' smart constructor.
data McfData = McfData
  { -- | Column headers that list dimension names followed by the metric names. The order of dimensions and metrics is same as specified in the request.
    columnHeaders :: (Core.Maybe [McfData_ColumnHeadersItem]),
    -- | Determines if the Analytics data contains sampled data.
    containsSampledData :: (Core.Maybe Core.Bool),
    -- | Unique ID for this data response.
    id :: (Core.Maybe Core.Text),
    -- | The maximum number of rows the response can contain, regardless of the actual number of rows returned. Its value ranges from 1 to 10,000 with a value of 1000 by default, or otherwise specified by the max-results query parameter.
    itemsPerPage :: (Core.Maybe Core.Int32),
    -- | Resource type.
    kind :: Core.Text,
    -- | Link to next page for this Analytics data query.
    nextLink :: (Core.Maybe Core.Text),
    -- | Link to previous page for this Analytics data query.
    previousLink :: (Core.Maybe Core.Text),
    -- | Information for the view (profile), for which the Analytics data was requested.
    profileInfo :: (Core.Maybe McfData_ProfileInfo),
    -- | Analytics data request query parameters.
    query :: (Core.Maybe McfData_Query),
    -- | Analytics data rows, where each row contains a list of dimension values followed by the metric values. The order of dimensions and metrics is same as specified in the request.
    rows :: (Core.Maybe [[McfData_RowsItemItem]]),
    -- | The number of samples used to calculate the result.
    sampleSize :: (Core.Maybe Core.Int64),
    -- | Total size of the sample space from which the samples were selected.
    sampleSpace :: (Core.Maybe Core.Int64),
    -- | Link to this page.
    selfLink :: (Core.Maybe Core.Text),
    -- | The total number of rows for the query, regardless of the number of rows in the response.
    totalResults :: (Core.Maybe Core.Int32),
    -- | Total values for the requested metrics over all the results, not just the results returned in this response. The order of the metric totals is same as the metric order specified in the request.
    totalsForAllResults :: (Core.Maybe McfData_TotalsForAllResults)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'McfData' with the minimum fields required to make a request.
newMcfData ::
  McfData
newMcfData =
  McfData
    { columnHeaders = Core.Nothing,
      containsSampledData = Core.Nothing,
      id = Core.Nothing,
      itemsPerPage = Core.Nothing,
      kind = "analytics#mcfData",
      nextLink = Core.Nothing,
      previousLink = Core.Nothing,
      profileInfo = Core.Nothing,
      query = Core.Nothing,
      rows = Core.Nothing,
      sampleSize = Core.Nothing,
      sampleSpace = Core.Nothing,
      selfLink = Core.Nothing,
      totalResults = Core.Nothing,
      totalsForAllResults = Core.Nothing
    }

instance Core.FromJSON McfData where
  parseJSON =
    Core.withObject
      "McfData"
      ( \o ->
          McfData
            Core.<$> (o Core..:? "columnHeaders" Core..!= Core.mempty)
            Core.<*> (o Core..:? "containsSampledData")
            Core.<*> (o Core..:? "id")
            Core.<*> (o Core..:? "itemsPerPage")
            Core.<*> (o Core..:? "kind" Core..!= "analytics#mcfData")
            Core.<*> (o Core..:? "nextLink")
            Core.<*> (o Core..:? "previousLink")
            Core.<*> (o Core..:? "profileInfo")
            Core.<*> (o Core..:? "query")
            Core.<*> (o Core..:? "rows" Core..!= Core.mempty)
            Core.<*> (o Core..:? "sampleSize")
            Core.<*> (o Core..:? "sampleSpace")
            Core.<*> (o Core..:? "selfLink")
            Core.<*> (o Core..:? "totalResults")
            Core.<*> (o Core..:? "totalsForAllResults")
      )

instance Core.ToJSON McfData where
  toJSON McfData {..} =
    Core.object
      ( Core.catMaybes
          [ ("columnHeaders" Core..=) Core.<$> columnHeaders,
            ("containsSampledData" Core..=)
              Core.<$> containsSampledData,
            ("id" Core..=) Core.<$> id,
            ("itemsPerPage" Core..=) Core.<$> itemsPerPage,
            Core.Just ("kind" Core..= kind),
            ("nextLink" Core..=) Core.<$> nextLink,
            ("previousLink" Core..=) Core.<$> previousLink,
            ("profileInfo" Core..=) Core.<$> profileInfo,
            ("query" Core..=) Core.<$> query,
            ("rows" Core..=) Core.<$> rows,
            ("sampleSize" Core..=) Core.. Core.AsText
              Core.<$> sampleSize,
            ("sampleSpace" Core..=) Core.. Core.AsText
              Core.<$> sampleSpace,
            ("selfLink" Core..=) Core.<$> selfLink,
            ("totalResults" Core..=) Core.<$> totalResults,
            ("totalsForAllResults" Core..=)
              Core.<$> totalsForAllResults
          ]
      )

--
-- /See:/ 'newMcfData_ColumnHeadersItem' smart constructor.
data McfData_ColumnHeadersItem = McfData_ColumnHeadersItem
  { -- | Column Type. Either DIMENSION or METRIC.
    columnType :: (Core.Maybe Core.Text),
    -- | Data type. Dimension and metric values data types such as INTEGER, DOUBLE, CURRENCY, MCF_SEQUENCE etc.
    dataType :: (Core.Maybe Core.Text),
    -- | Column name.
    name :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'McfData_ColumnHeadersItem' with the minimum fields required to make a request.
newMcfData_ColumnHeadersItem ::
  McfData_ColumnHeadersItem
newMcfData_ColumnHeadersItem =
  McfData_ColumnHeadersItem
    { columnType = Core.Nothing,
      dataType = Core.Nothing,
      name = Core.Nothing
    }

instance Core.FromJSON McfData_ColumnHeadersItem where
  parseJSON =
    Core.withObject
      "McfData_ColumnHeadersItem"
      ( \o ->
          McfData_ColumnHeadersItem
            Core.<$> (o Core..:? "columnType")
            Core.<*> (o Core..:? "dataType")
            Core.<*> (o Core..:? "name")
      )

instance Core.ToJSON McfData_ColumnHeadersItem where
  toJSON McfData_ColumnHeadersItem {..} =
    Core.object
      ( Core.catMaybes
          [ ("columnType" Core..=) Core.<$> columnType,
            ("dataType" Core..=) Core.<$> dataType,
            ("name" Core..=) Core.<$> name
          ]
      )

-- | Information for the view (profile), for which the Analytics data was requested.
--
-- /See:/ 'newMcfData_ProfileInfo' smart constructor.
data McfData_ProfileInfo = McfData_ProfileInfo
  { -- | Account ID to which this view (profile) belongs.
    accountId :: (Core.Maybe Core.Text),
    -- | Internal ID for the web property to which this view (profile) belongs.
    internalWebPropertyId :: (Core.Maybe Core.Text),
    -- | View (Profile) ID.
    profileId :: (Core.Maybe Core.Text),
    -- | View (Profile) name.
    profileName :: (Core.Maybe Core.Text),
    -- | Table ID for view (profile).
    tableId :: (Core.Maybe Core.Text),
    -- | Web Property ID to which this view (profile) belongs.
    webPropertyId :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'McfData_ProfileInfo' with the minimum fields required to make a request.
newMcfData_ProfileInfo ::
  McfData_ProfileInfo
newMcfData_ProfileInfo =
  McfData_ProfileInfo
    { accountId = Core.Nothing,
      internalWebPropertyId = Core.Nothing,
      profileId = Core.Nothing,
      profileName = Core.Nothing,
      tableId = Core.Nothing,
      webPropertyId = Core.Nothing
    }

instance Core.FromJSON McfData_ProfileInfo where
  parseJSON =
    Core.withObject
      "McfData_ProfileInfo"
      ( \o ->
          McfData_ProfileInfo
            Core.<$> (o Core..:? "accountId")
            Core.<*> (o Core..:? "internalWebPropertyId")
            Core.<*> (o Core..:? "profileId")
            Core.<*> (o Core..:? "profileName")
            Core.<*> (o Core..:? "tableId")
            Core.<*> (o Core..:? "webPropertyId")
      )

instance Core.ToJSON McfData_ProfileInfo where
  toJSON McfData_ProfileInfo {..} =
    Core.object
      ( Core.catMaybes
          [ ("accountId" Core..=) Core.<$> accountId,
            ("internalWebPropertyId" Core..=)
              Core.<$> internalWebPropertyId,
            ("profileId" Core..=) Core.<$> profileId,
            ("profileName" Core..=) Core.<$> profileName,
            ("tableId" Core..=) Core.<$> tableId,
            ("webPropertyId" Core..=) Core.<$> webPropertyId
          ]
      )

-- | Analytics data request query parameters.
--
-- /See:/ 'newMcfData_Query' smart constructor.
data McfData_Query = McfData_Query
  { -- | List of analytics dimensions.
    dimensions :: (Core.Maybe Core.Text),
    -- | End date.
    endDate :: (Core.Maybe Core.Text),
    -- | Comma-separated list of dimension or metric filters.
    filters :: (Core.Maybe Core.Text),
    -- | Unique table ID.
    ids :: (Core.Maybe Core.Text),
    -- | Maximum results per page.
    maxResults :: (Core.Maybe Core.Int32),
    -- | List of analytics metrics.
    metrics :: (Core.Maybe [Core.Text]),
    -- | Desired sampling level
    samplingLevel :: (Core.Maybe Core.Text),
    -- | Analytics advanced segment.
    segment :: (Core.Maybe Core.Text),
    -- | List of dimensions or metrics based on which Analytics data is sorted.
    sort :: (Core.Maybe [Core.Text]),
    -- | Start date.
    startDate :: (Core.Maybe Core.Text),
    -- | Start index.
    startIndex :: (Core.Maybe Core.Int32)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'McfData_Query' with the minimum fields required to make a request.
newMcfData_Query ::
  McfData_Query
newMcfData_Query =
  McfData_Query
    { dimensions = Core.Nothing,
      endDate = Core.Nothing,
      filters = Core.Nothing,
      ids = Core.Nothing,
      maxResults = Core.Nothing,
      metrics = Core.Nothing,
      samplingLevel = Core.Nothing,
      segment = Core.Nothing,
      sort = Core.Nothing,
      startDate = Core.Nothing,
      startIndex = Core.Nothing
    }

instance Core.FromJSON McfData_Query where
  parseJSON =
    Core.withObject
      "McfData_Query"
      ( \o ->
          McfData_Query
            Core.<$> (o Core..:? "dimensions")
            Core.<*> (o Core..:? "end-date")
            Core.<*> (o Core..:? "filters")
            Core.<*> (o Core..:? "ids")
            Core.<*> (o Core..:? "max-results")
            Core.<*> (o Core..:? "metrics" Core..!= Core.mempty)
            Core.<*> (o Core..:? "samplingLevel")
            Core.<*> (o Core..:? "segment")
            Core.<*> (o Core..:? "sort" Core..!= Core.mempty)
            Core.<*> (o Core..:? "start-date")
            Core.<*> (o Core..:? "start-index")
      )

instance Core.ToJSON McfData_Query where
  toJSON McfData_Query {..} =
    Core.object
      ( Core.catMaybes
          [ ("dimensions" Core..=) Core.<$> dimensions,
            ("end-date" Core..=) Core.<$> endDate,
            ("filters" Core..=) Core.<$> filters,
            ("ids" Core..=) Core.<$> ids,
            ("max-results" Core..=) Core.<$> maxResults,
            ("metrics" Core..=) Core.<$> metrics,
            ("samplingLevel" Core..=) Core.<$> samplingLevel,
            ("segment" Core..=) Core.<$> segment,
            ("sort" Core..=) Core.<$> sort,
            ("start-date" Core..=) Core.<$> startDate,
            ("start-index" Core..=) Core.<$> startIndex
          ]
      )

-- | A union object representing a dimension or metric value. Only one of \"primitiveValue\" or \"conversionPathValue\" attribute will be populated.
--
-- /See:/ 'newMcfData_RowsItemItem' smart constructor.
data McfData_RowsItemItem = McfData_RowsItemItem
  { -- | A conversion path dimension value, containing a list of interactions with their attributes.
    conversionPathValue :: (Core.Maybe [McfData_RowsItemItem_ConversionPathValueItem]),
    -- | A primitive dimension value. A primitive metric value.
    primitiveValue :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'McfData_RowsItemItem' with the minimum fields required to make a request.
newMcfData_RowsItemItem ::
  McfData_RowsItemItem
newMcfData_RowsItemItem =
  McfData_RowsItemItem
    { conversionPathValue = Core.Nothing,
      primitiveValue = Core.Nothing
    }

instance Core.FromJSON McfData_RowsItemItem where
  parseJSON =
    Core.withObject
      "McfData_RowsItemItem"
      ( \o ->
          McfData_RowsItemItem
            Core.<$> ( o Core..:? "conversionPathValue"
                         Core..!= Core.mempty
                     )
            Core.<*> (o Core..:? "primitiveValue")
      )

instance Core.ToJSON McfData_RowsItemItem where
  toJSON McfData_RowsItemItem {..} =
    Core.object
      ( Core.catMaybes
          [ ("conversionPathValue" Core..=)
              Core.<$> conversionPathValue,
            ("primitiveValue" Core..=) Core.<$> primitiveValue
          ]
      )

--
-- /See:/ 'newMcfData_RowsItemItem_ConversionPathValueItem' smart constructor.
data McfData_RowsItemItem_ConversionPathValueItem = McfData_RowsItemItem_ConversionPathValueItem
  { -- | Type of an interaction on conversion path. Such as CLICK, IMPRESSION etc.
    interactionType :: (Core.Maybe Core.Text),
    -- | Node value of an interaction on conversion path. Such as source, medium etc.
    nodeValue :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'McfData_RowsItemItem_ConversionPathValueItem' with the minimum fields required to make a request.
newMcfData_RowsItemItem_ConversionPathValueItem ::
  McfData_RowsItemItem_ConversionPathValueItem
newMcfData_RowsItemItem_ConversionPathValueItem =
  McfData_RowsItemItem_ConversionPathValueItem
    { interactionType = Core.Nothing,
      nodeValue = Core.Nothing
    }

instance
  Core.FromJSON
    McfData_RowsItemItem_ConversionPathValueItem
  where
  parseJSON =
    Core.withObject
      "McfData_RowsItemItem_ConversionPathValueItem"
      ( \o ->
          McfData_RowsItemItem_ConversionPathValueItem
            Core.<$> (o Core..:? "interactionType")
            Core.<*> (o Core..:? "nodeValue")
      )

instance
  Core.ToJSON
    McfData_RowsItemItem_ConversionPathValueItem
  where
  toJSON
    McfData_RowsItemItem_ConversionPathValueItem {..} =
      Core.object
        ( Core.catMaybes
            [ ("interactionType" Core..=)
                Core.<$> interactionType,
              ("nodeValue" Core..=) Core.<$> nodeValue
            ]
        )

-- | Total values for the requested metrics over all the results, not just the results returned in this response. The order of the metric totals is same as the metric order specified in the request.
--
-- /See:/ 'newMcfData_TotalsForAllResults' smart constructor.
newtype McfData_TotalsForAllResults = McfData_TotalsForAllResults
  { -- | Key-value pair for the total value of a metric. Key is the metric name and the value is the total value for that metric.
    addtional :: (Core.HashMap Core.Text Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'McfData_TotalsForAllResults' with the minimum fields required to make a request.
newMcfData_TotalsForAllResults ::
  -- |  Key-value pair for the total value of a metric. Key is the metric name and the value is the total value for that metric. See 'addtional'.
  Core.HashMap Core.Text Core.Text ->
  McfData_TotalsForAllResults
newMcfData_TotalsForAllResults addtional =
  McfData_TotalsForAllResults {addtional = addtional}

instance Core.FromJSON McfData_TotalsForAllResults where
  parseJSON =
    Core.withObject
      "McfData_TotalsForAllResults"
      ( \o ->
          McfData_TotalsForAllResults
            Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON McfData_TotalsForAllResults where
  toJSON McfData_TotalsForAllResults {..} =
    Core.toJSON addtional

-- | JSON template for an Analytics view (profile).
--
-- /See:/ 'newProfile' smart constructor.
data Profile = Profile
  { -- | Account ID to which this view (profile) belongs.
    accountId :: (Core.Maybe Core.Text),
    -- | Indicates whether bot filtering is enabled for this view (profile).
    botFilteringEnabled :: (Core.Maybe Core.Bool),
    -- | Child link for this view (profile). Points to the list of goals for this view (profile).
    childLink :: (Core.Maybe Profile_ChildLink),
    -- | Time this view (profile) was created.
    created :: (Core.Maybe Core.DateTime'),
    -- | The currency type associated with this view (profile), defaults to USD. The supported values are: USD, JPY, EUR, GBP, AUD, KRW, BRL, CNY, DKK, RUB, SEK, NOK, PLN, TRY, TWD, HKD, THB, IDR, ARS, MXN, VND, PHP, INR, CHF, CAD, CZK, NZD, HUF, BGN, LTL, ZAR, UAH, AED, BOB, CLP, COP, EGP, HRK, ILS, MAD, MYR, PEN, PKR, RON, RSD, SAR, SGD, VEF, LVL
    currency :: (Core.Maybe Core.Text),
    -- | Default page for this view (profile).
    defaultPage :: (Core.Maybe Core.Text),
    -- | Indicates whether ecommerce tracking is enabled for this view (profile).
    eCommerceTracking :: (Core.Maybe Core.Bool),
    -- | Indicates whether enhanced ecommerce tracking is enabled for this view (profile). This property can only be enabled if ecommerce tracking is enabled.
    enhancedECommerceTracking :: (Core.Maybe Core.Bool),
    -- | The query parameters that are excluded from this view (profile).
    excludeQueryParameters :: (Core.Maybe Core.Text),
    -- | View (Profile) ID.
    id :: (Core.Maybe Core.Text),
    -- | Internal ID for the web property to which this view (profile) belongs.
    internalWebPropertyId :: (Core.Maybe Core.Text),
    -- | Resource type for Analytics view (profile).
    kind :: Core.Text,
    -- | Name of this view (profile).
    name :: (Core.Maybe Core.Text),
    -- | Parent link for this view (profile). Points to the web property to which this view (profile) belongs.
    parentLink :: (Core.Maybe Profile_ParentLink),
    -- | Permissions the user has for this view (profile).
    permissions :: (Core.Maybe Profile_Permissions),
    -- | Link for this view (profile).
    selfLink :: (Core.Maybe Core.Text),
    -- | Site search category parameters for this view (profile).
    siteSearchCategoryParameters :: (Core.Maybe Core.Text),
    -- | The site search query parameters for this view (profile).
    siteSearchQueryParameters :: (Core.Maybe Core.Text),
    -- | Indicates whether this view (profile) is starred or not.
    starred :: (Core.Maybe Core.Bool),
    -- | Whether or not Analytics will strip search category parameters from the URLs in your reports.
    stripSiteSearchCategoryParameters :: (Core.Maybe Core.Bool),
    -- | Whether or not Analytics will strip search query parameters from the URLs in your reports.
    stripSiteSearchQueryParameters :: (Core.Maybe Core.Bool),
    -- | Time zone for which this view (profile) has been configured. Time zones are identified by strings from the TZ database.
    timezone :: (Core.Maybe Core.Text),
    -- | View (Profile) type. Supported types: WEB or APP.
    type' :: (Core.Maybe Core.Text),
    -- | Time this view (profile) was last modified.
    updated :: (Core.Maybe Core.DateTime'),
    -- | Web property ID of the form UA-XXXXX-YY to which this view (profile) belongs.
    webPropertyId :: (Core.Maybe Core.Text),
    -- | Website URL for this view (profile).
    websiteUrl :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Profile' with the minimum fields required to make a request.
newProfile ::
  Profile
newProfile =
  Profile
    { accountId = Core.Nothing,
      botFilteringEnabled = Core.Nothing,
      childLink = Core.Nothing,
      created = Core.Nothing,
      currency = Core.Nothing,
      defaultPage = Core.Nothing,
      eCommerceTracking = Core.Nothing,
      enhancedECommerceTracking = Core.Nothing,
      excludeQueryParameters = Core.Nothing,
      id = Core.Nothing,
      internalWebPropertyId = Core.Nothing,
      kind = "analytics#profile",
      name = Core.Nothing,
      parentLink = Core.Nothing,
      permissions = Core.Nothing,
      selfLink = Core.Nothing,
      siteSearchCategoryParameters = Core.Nothing,
      siteSearchQueryParameters = Core.Nothing,
      starred = Core.Nothing,
      stripSiteSearchCategoryParameters = Core.Nothing,
      stripSiteSearchQueryParameters = Core.Nothing,
      timezone = Core.Nothing,
      type' = Core.Nothing,
      updated = Core.Nothing,
      webPropertyId = Core.Nothing,
      websiteUrl = Core.Nothing
    }

instance Core.FromJSON Profile where
  parseJSON =
    Core.withObject
      "Profile"
      ( \o ->
          Profile
            Core.<$> (o Core..:? "accountId")
            Core.<*> (o Core..:? "botFilteringEnabled")
            Core.<*> (o Core..:? "childLink")
            Core.<*> (o Core..:? "created")
            Core.<*> (o Core..:? "currency")
            Core.<*> (o Core..:? "defaultPage")
            Core.<*> (o Core..:? "eCommerceTracking")
            Core.<*> (o Core..:? "enhancedECommerceTracking")
            Core.<*> (o Core..:? "excludeQueryParameters")
            Core.<*> (o Core..:? "id")
            Core.<*> (o Core..:? "internalWebPropertyId")
            Core.<*> (o Core..:? "kind" Core..!= "analytics#profile")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "parentLink")
            Core.<*> (o Core..:? "permissions")
            Core.<*> (o Core..:? "selfLink")
            Core.<*> (o Core..:? "siteSearchCategoryParameters")
            Core.<*> (o Core..:? "siteSearchQueryParameters")
            Core.<*> (o Core..:? "starred")
            Core.<*> (o Core..:? "stripSiteSearchCategoryParameters")
            Core.<*> (o Core..:? "stripSiteSearchQueryParameters")
            Core.<*> (o Core..:? "timezone")
            Core.<*> (o Core..:? "type")
            Core.<*> (o Core..:? "updated")
            Core.<*> (o Core..:? "webPropertyId")
            Core.<*> (o Core..:? "websiteUrl")
      )

instance Core.ToJSON Profile where
  toJSON Profile {..} =
    Core.object
      ( Core.catMaybes
          [ ("accountId" Core..=) Core.<$> accountId,
            ("botFilteringEnabled" Core..=)
              Core.<$> botFilteringEnabled,
            ("childLink" Core..=) Core.<$> childLink,
            ("created" Core..=) Core.<$> created,
            ("currency" Core..=) Core.<$> currency,
            ("defaultPage" Core..=) Core.<$> defaultPage,
            ("eCommerceTracking" Core..=)
              Core.<$> eCommerceTracking,
            ("enhancedECommerceTracking" Core..=)
              Core.<$> enhancedECommerceTracking,
            ("excludeQueryParameters" Core..=)
              Core.<$> excludeQueryParameters,
            ("id" Core..=) Core.<$> id,
            ("internalWebPropertyId" Core..=)
              Core.<$> internalWebPropertyId,
            Core.Just ("kind" Core..= kind),
            ("name" Core..=) Core.<$> name,
            ("parentLink" Core..=) Core.<$> parentLink,
            ("permissions" Core..=) Core.<$> permissions,
            ("selfLink" Core..=) Core.<$> selfLink,
            ("siteSearchCategoryParameters" Core..=)
              Core.<$> siteSearchCategoryParameters,
            ("siteSearchQueryParameters" Core..=)
              Core.<$> siteSearchQueryParameters,
            ("starred" Core..=) Core.<$> starred,
            ("stripSiteSearchCategoryParameters" Core..=)
              Core.<$> stripSiteSearchCategoryParameters,
            ("stripSiteSearchQueryParameters" Core..=)
              Core.<$> stripSiteSearchQueryParameters,
            ("timezone" Core..=) Core.<$> timezone,
            ("type" Core..=) Core.<$> type',
            ("updated" Core..=) Core.<$> updated,
            ("webPropertyId" Core..=) Core.<$> webPropertyId,
            ("websiteUrl" Core..=) Core.<$> websiteUrl
          ]
      )

-- | Child link for this view (profile). Points to the list of goals for this view (profile).
--
-- /See:/ 'newProfile_ChildLink' smart constructor.
data Profile_ChildLink = Profile_ChildLink
  { -- | Link to the list of goals for this view (profile).
    href :: (Core.Maybe Core.Text),
    -- | Value is \"analytics#goals\".
    type' :: Core.Text
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Profile_ChildLink' with the minimum fields required to make a request.
newProfile_ChildLink ::
  Profile_ChildLink
newProfile_ChildLink =
  Profile_ChildLink {href = Core.Nothing, type' = "analytics#goals"}

instance Core.FromJSON Profile_ChildLink where
  parseJSON =
    Core.withObject
      "Profile_ChildLink"
      ( \o ->
          Profile_ChildLink
            Core.<$> (o Core..:? "href")
            Core.<*> (o Core..:? "type" Core..!= "analytics#goals")
      )

instance Core.ToJSON Profile_ChildLink where
  toJSON Profile_ChildLink {..} =
    Core.object
      ( Core.catMaybes
          [ ("href" Core..=) Core.<$> href,
            Core.Just ("type" Core..= type')
          ]
      )

-- | Parent link for this view (profile). Points to the web property to which this view (profile) belongs.
--
-- /See:/ 'newProfile_ParentLink' smart constructor.
data Profile_ParentLink = Profile_ParentLink
  { -- | Link to the web property to which this view (profile) belongs.
    href :: (Core.Maybe Core.Text),
    -- | Value is \"analytics#webproperty\".
    type' :: Core.Text
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Profile_ParentLink' with the minimum fields required to make a request.
newProfile_ParentLink ::
  Profile_ParentLink
newProfile_ParentLink =
  Profile_ParentLink {href = Core.Nothing, type' = "analytics#webproperty"}

instance Core.FromJSON Profile_ParentLink where
  parseJSON =
    Core.withObject
      "Profile_ParentLink"
      ( \o ->
          Profile_ParentLink
            Core.<$> (o Core..:? "href")
            Core.<*> (o Core..:? "type" Core..!= "analytics#webproperty")
      )

instance Core.ToJSON Profile_ParentLink where
  toJSON Profile_ParentLink {..} =
    Core.object
      ( Core.catMaybes
          [ ("href" Core..=) Core.<$> href,
            Core.Just ("type" Core..= type')
          ]
      )

-- | Permissions the user has for this view (profile).
--
-- /See:/ 'newProfile_Permissions' smart constructor.
newtype Profile_Permissions = Profile_Permissions
  { -- | All the permissions that the user has for this view (profile). These include any implied permissions (e.g., EDIT implies VIEW) or inherited permissions from the parent web property.
    effective :: (Core.Maybe [Core.Text])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Profile_Permissions' with the minimum fields required to make a request.
newProfile_Permissions ::
  Profile_Permissions
newProfile_Permissions = Profile_Permissions {effective = Core.Nothing}

instance Core.FromJSON Profile_Permissions where
  parseJSON =
    Core.withObject
      "Profile_Permissions"
      ( \o ->
          Profile_Permissions
            Core.<$> (o Core..:? "effective" Core..!= Core.mempty)
      )

instance Core.ToJSON Profile_Permissions where
  toJSON Profile_Permissions {..} =
    Core.object
      ( Core.catMaybes
          [("effective" Core..=) Core.<$> effective]
      )

-- | JSON template for an Analytics profile filter link.
--
-- /See:/ 'newProfileFilterLink' smart constructor.
data ProfileFilterLink = ProfileFilterLink
  { -- | Filter for this link.
    filterRef :: (Core.Maybe FilterRef),
    -- | Profile filter link ID.
    id :: (Core.Maybe Core.Text),
    -- | Resource type for Analytics filter.
    kind :: Core.Text,
    -- | View (Profile) for this link.
    profileRef :: (Core.Maybe ProfileRef),
    -- | The rank of this profile filter link relative to the other filters linked to the same profile. For readonly (i.e., list and get) operations, the rank always starts at 1. For write (i.e., create, update, or delete) operations, you may specify a value between 0 and 255 inclusively, [0, 255]. In order to insert a link at the end of the list, either don\'t specify a rank or set a rank to a number greater than the largest rank in the list. In order to insert a link to the beginning of the list specify a rank that is less than or equal to 1. The new link will move all existing filters with the same or lower rank down the list. After the link is inserted\/updated\/deleted all profile filter links will be renumbered starting at 1.
    rank :: (Core.Maybe Core.Int32),
    -- | Link for this profile filter link.
    selfLink :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ProfileFilterLink' with the minimum fields required to make a request.
newProfileFilterLink ::
  ProfileFilterLink
newProfileFilterLink =
  ProfileFilterLink
    { filterRef = Core.Nothing,
      id = Core.Nothing,
      kind = "analytics#profileFilterLink",
      profileRef = Core.Nothing,
      rank = Core.Nothing,
      selfLink = Core.Nothing
    }

instance Core.FromJSON ProfileFilterLink where
  parseJSON =
    Core.withObject
      "ProfileFilterLink"
      ( \o ->
          ProfileFilterLink
            Core.<$> (o Core..:? "filterRef")
            Core.<*> (o Core..:? "id")
            Core.<*> ( o Core..:? "kind"
                         Core..!= "analytics#profileFilterLink"
                     )
            Core.<*> (o Core..:? "profileRef")
            Core.<*> (o Core..:? "rank")
            Core.<*> (o Core..:? "selfLink")
      )

instance Core.ToJSON ProfileFilterLink where
  toJSON ProfileFilterLink {..} =
    Core.object
      ( Core.catMaybes
          [ ("filterRef" Core..=) Core.<$> filterRef,
            ("id" Core..=) Core.<$> id,
            Core.Just ("kind" Core..= kind),
            ("profileRef" Core..=) Core.<$> profileRef,
            ("rank" Core..=) Core.<$> rank,
            ("selfLink" Core..=) Core.<$> selfLink
          ]
      )

-- | A profile filter link collection lists profile filter links between profiles and filters. Each resource in the collection corresponds to a profile filter link.
--
-- /See:/ 'newProfileFilterLinks' smart constructor.
data ProfileFilterLinks = ProfileFilterLinks
  { -- | A list of profile filter links.
    items :: (Core.Maybe [ProfileFilterLink]),
    -- | The maximum number of resources the response can contain, regardless of the actual number of resources returned. Its value ranges from 1 to 1,000 with a value of 1000 by default, or otherwise specified by the max-results query parameter.
    itemsPerPage :: (Core.Maybe Core.Int32),
    -- | Collection type.
    kind :: Core.Text,
    -- | Link to next page for this profile filter link collection.
    nextLink :: (Core.Maybe Core.Text),
    -- | Link to previous page for this profile filter link collection.
    previousLink :: (Core.Maybe Core.Text),
    -- | The starting index of the resources, which is 1 by default or otherwise specified by the start-index query parameter.
    startIndex :: (Core.Maybe Core.Int32),
    -- | The total number of results for the query, regardless of the number of results in the response.
    totalResults :: (Core.Maybe Core.Int32),
    -- | Email ID of the authenticated user
    username :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ProfileFilterLinks' with the minimum fields required to make a request.
newProfileFilterLinks ::
  ProfileFilterLinks
newProfileFilterLinks =
  ProfileFilterLinks
    { items = Core.Nothing,
      itemsPerPage = Core.Nothing,
      kind = "analytics#profileFilterLinks",
      nextLink = Core.Nothing,
      previousLink = Core.Nothing,
      startIndex = Core.Nothing,
      totalResults = Core.Nothing,
      username = Core.Nothing
    }

instance Core.FromJSON ProfileFilterLinks where
  parseJSON =
    Core.withObject
      "ProfileFilterLinks"
      ( \o ->
          ProfileFilterLinks
            Core.<$> (o Core..:? "items" Core..!= Core.mempty)
            Core.<*> (o Core..:? "itemsPerPage")
            Core.<*> ( o Core..:? "kind"
                         Core..!= "analytics#profileFilterLinks"
                     )
            Core.<*> (o Core..:? "nextLink")
            Core.<*> (o Core..:? "previousLink")
            Core.<*> (o Core..:? "startIndex")
            Core.<*> (o Core..:? "totalResults")
            Core.<*> (o Core..:? "username")
      )

instance Core.ToJSON ProfileFilterLinks where
  toJSON ProfileFilterLinks {..} =
    Core.object
      ( Core.catMaybes
          [ ("items" Core..=) Core.<$> items,
            ("itemsPerPage" Core..=) Core.<$> itemsPerPage,
            Core.Just ("kind" Core..= kind),
            ("nextLink" Core..=) Core.<$> nextLink,
            ("previousLink" Core..=) Core.<$> previousLink,
            ("startIndex" Core..=) Core.<$> startIndex,
            ("totalResults" Core..=) Core.<$> totalResults,
            ("username" Core..=) Core.<$> username
          ]
      )

-- | JSON template for a linked view (profile).
--
-- /See:/ 'newProfileRef' smart constructor.
data ProfileRef = ProfileRef
  { -- | Account ID to which this view (profile) belongs.
    accountId :: (Core.Maybe Core.Text),
    -- | Link for this view (profile).
    href :: (Core.Maybe Core.Text),
    -- | View (Profile) ID.
    id :: (Core.Maybe Core.Text),
    -- | Internal ID for the web property to which this view (profile) belongs.
    internalWebPropertyId :: (Core.Maybe Core.Text),
    -- | Analytics view (profile) reference.
    kind :: Core.Text,
    -- | Name of this view (profile).
    name :: (Core.Maybe Core.Text),
    -- | Web property ID of the form UA-XXXXX-YY to which this view (profile) belongs.
    webPropertyId :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ProfileRef' with the minimum fields required to make a request.
newProfileRef ::
  ProfileRef
newProfileRef =
  ProfileRef
    { accountId = Core.Nothing,
      href = Core.Nothing,
      id = Core.Nothing,
      internalWebPropertyId = Core.Nothing,
      kind = "analytics#profileRef",
      name = Core.Nothing,
      webPropertyId = Core.Nothing
    }

instance Core.FromJSON ProfileRef where
  parseJSON =
    Core.withObject
      "ProfileRef"
      ( \o ->
          ProfileRef
            Core.<$> (o Core..:? "accountId")
            Core.<*> (o Core..:? "href")
            Core.<*> (o Core..:? "id")
            Core.<*> (o Core..:? "internalWebPropertyId")
            Core.<*> (o Core..:? "kind" Core..!= "analytics#profileRef")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "webPropertyId")
      )

instance Core.ToJSON ProfileRef where
  toJSON ProfileRef {..} =
    Core.object
      ( Core.catMaybes
          [ ("accountId" Core..=) Core.<$> accountId,
            ("href" Core..=) Core.<$> href,
            ("id" Core..=) Core.<$> id,
            ("internalWebPropertyId" Core..=)
              Core.<$> internalWebPropertyId,
            Core.Just ("kind" Core..= kind),
            ("name" Core..=) Core.<$> name,
            ("webPropertyId" Core..=) Core.<$> webPropertyId
          ]
      )

-- | JSON template for an Analytics ProfileSummary. ProfileSummary returns basic information (i.e., summary) for a profile.
--
-- /See:/ 'newProfileSummary' smart constructor.
data ProfileSummary = ProfileSummary
  { -- | View (profile) ID.
    id :: (Core.Maybe Core.Text),
    -- | Resource type for Analytics ProfileSummary.
    kind :: Core.Text,
    -- | View (profile) name.
    name :: (Core.Maybe Core.Text),
    -- | Indicates whether this view (profile) is starred or not.
    starred :: (Core.Maybe Core.Bool),
    -- | View (Profile) type. Supported types: WEB or APP.
    type' :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ProfileSummary' with the minimum fields required to make a request.
newProfileSummary ::
  ProfileSummary
newProfileSummary =
  ProfileSummary
    { id = Core.Nothing,
      kind = "analytics#profileSummary",
      name = Core.Nothing,
      starred = Core.Nothing,
      type' = Core.Nothing
    }

instance Core.FromJSON ProfileSummary where
  parseJSON =
    Core.withObject
      "ProfileSummary"
      ( \o ->
          ProfileSummary
            Core.<$> (o Core..:? "id")
            Core.<*> ( o Core..:? "kind"
                         Core..!= "analytics#profileSummary"
                     )
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "starred")
            Core.<*> (o Core..:? "type")
      )

instance Core.ToJSON ProfileSummary where
  toJSON ProfileSummary {..} =
    Core.object
      ( Core.catMaybes
          [ ("id" Core..=) Core.<$> id,
            Core.Just ("kind" Core..= kind),
            ("name" Core..=) Core.<$> name,
            ("starred" Core..=) Core.<$> starred,
            ("type" Core..=) Core.<$> type'
          ]
      )

-- | A view (profile) collection lists Analytics views (profiles) to which the user has access. Each resource in the collection corresponds to a single Analytics view (profile).
--
-- /See:/ 'newProfiles' smart constructor.
data Profiles = Profiles
  { -- | A list of views (profiles).
    items :: (Core.Maybe [Profile]),
    -- | The maximum number of resources the response can contain, regardless of the actual number of resources returned. Its value ranges from 1 to 1000 with a value of 1000 by default, or otherwise specified by the max-results query parameter.
    itemsPerPage :: (Core.Maybe Core.Int32),
    -- | Collection type.
    kind :: Core.Text,
    -- | Link to next page for this view (profile) collection.
    nextLink :: (Core.Maybe Core.Text),
    -- | Link to previous page for this view (profile) collection.
    previousLink :: (Core.Maybe Core.Text),
    -- | The starting index of the resources, which is 1 by default or otherwise specified by the start-index query parameter.
    startIndex :: (Core.Maybe Core.Int32),
    -- | The total number of results for the query, regardless of the number of results in the response.
    totalResults :: (Core.Maybe Core.Int32),
    -- | Email ID of the authenticated user
    username :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Profiles' with the minimum fields required to make a request.
newProfiles ::
  Profiles
newProfiles =
  Profiles
    { items = Core.Nothing,
      itemsPerPage = Core.Nothing,
      kind = "analytics#profiles",
      nextLink = Core.Nothing,
      previousLink = Core.Nothing,
      startIndex = Core.Nothing,
      totalResults = Core.Nothing,
      username = Core.Nothing
    }

instance Core.FromJSON Profiles where
  parseJSON =
    Core.withObject
      "Profiles"
      ( \o ->
          Profiles
            Core.<$> (o Core..:? "items" Core..!= Core.mempty)
            Core.<*> (o Core..:? "itemsPerPage")
            Core.<*> (o Core..:? "kind" Core..!= "analytics#profiles")
            Core.<*> (o Core..:? "nextLink")
            Core.<*> (o Core..:? "previousLink")
            Core.<*> (o Core..:? "startIndex")
            Core.<*> (o Core..:? "totalResults")
            Core.<*> (o Core..:? "username")
      )

instance Core.ToJSON Profiles where
  toJSON Profiles {..} =
    Core.object
      ( Core.catMaybes
          [ ("items" Core..=) Core.<$> items,
            ("itemsPerPage" Core..=) Core.<$> itemsPerPage,
            Core.Just ("kind" Core..= kind),
            ("nextLink" Core..=) Core.<$> nextLink,
            ("previousLink" Core..=) Core.<$> previousLink,
            ("startIndex" Core..=) Core.<$> startIndex,
            ("totalResults" Core..=) Core.<$> totalResults,
            ("username" Core..=) Core.<$> username
          ]
      )

-- | Real time data for a given view (profile).
--
-- /See:/ 'newRealtimeData' smart constructor.
data RealtimeData = RealtimeData
  { -- | Column headers that list dimension names followed by the metric names. The order of dimensions and metrics is same as specified in the request.
    columnHeaders :: (Core.Maybe [RealtimeData_ColumnHeadersItem]),
    -- | Unique ID for this data response.
    id :: (Core.Maybe Core.Text),
    -- | Resource type.
    kind :: Core.Text,
    -- | Information for the view (profile), for which the real time data was requested.
    profileInfo :: (Core.Maybe RealtimeData_ProfileInfo),
    -- | Real time data request query parameters.
    query :: (Core.Maybe RealtimeData_Query),
    -- | Real time data rows, where each row contains a list of dimension values followed by the metric values. The order of dimensions and metrics is same as specified in the request.
    rows :: (Core.Maybe [[Core.Text]]),
    -- | Link to this page.
    selfLink :: (Core.Maybe Core.Text),
    -- | The total number of rows for the query, regardless of the number of rows in the response.
    totalResults :: (Core.Maybe Core.Int32),
    -- | Total values for the requested metrics over all the results, not just the results returned in this response. The order of the metric totals is same as the metric order specified in the request.
    totalsForAllResults :: (Core.Maybe RealtimeData_TotalsForAllResults)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'RealtimeData' with the minimum fields required to make a request.
newRealtimeData ::
  RealtimeData
newRealtimeData =
  RealtimeData
    { columnHeaders = Core.Nothing,
      id = Core.Nothing,
      kind = "analytics#realtimeData",
      profileInfo = Core.Nothing,
      query = Core.Nothing,
      rows = Core.Nothing,
      selfLink = Core.Nothing,
      totalResults = Core.Nothing,
      totalsForAllResults = Core.Nothing
    }

instance Core.FromJSON RealtimeData where
  parseJSON =
    Core.withObject
      "RealtimeData"
      ( \o ->
          RealtimeData
            Core.<$> (o Core..:? "columnHeaders" Core..!= Core.mempty)
            Core.<*> (o Core..:? "id")
            Core.<*> (o Core..:? "kind" Core..!= "analytics#realtimeData")
            Core.<*> (o Core..:? "profileInfo")
            Core.<*> (o Core..:? "query")
            Core.<*> (o Core..:? "rows" Core..!= Core.mempty)
            Core.<*> (o Core..:? "selfLink")
            Core.<*> (o Core..:? "totalResults")
            Core.<*> (o Core..:? "totalsForAllResults")
      )

instance Core.ToJSON RealtimeData where
  toJSON RealtimeData {..} =
    Core.object
      ( Core.catMaybes
          [ ("columnHeaders" Core..=) Core.<$> columnHeaders,
            ("id" Core..=) Core.<$> id,
            Core.Just ("kind" Core..= kind),
            ("profileInfo" Core..=) Core.<$> profileInfo,
            ("query" Core..=) Core.<$> query,
            ("rows" Core..=) Core.<$> rows,
            ("selfLink" Core..=) Core.<$> selfLink,
            ("totalResults" Core..=) Core.<$> totalResults,
            ("totalsForAllResults" Core..=)
              Core.<$> totalsForAllResults
          ]
      )

--
-- /See:/ 'newRealtimeData_ColumnHeadersItem' smart constructor.
data RealtimeData_ColumnHeadersItem = RealtimeData_ColumnHeadersItem
  { -- | Column Type. Either DIMENSION or METRIC.
    columnType :: (Core.Maybe Core.Text),
    -- | Data type. Dimension column headers have only STRING as the data type. Metric column headers have data types for metric values such as INTEGER, DOUBLE, CURRENCY etc.
    dataType :: (Core.Maybe Core.Text),
    -- | Column name.
    name :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'RealtimeData_ColumnHeadersItem' with the minimum fields required to make a request.
newRealtimeData_ColumnHeadersItem ::
  RealtimeData_ColumnHeadersItem
newRealtimeData_ColumnHeadersItem =
  RealtimeData_ColumnHeadersItem
    { columnType = Core.Nothing,
      dataType = Core.Nothing,
      name = Core.Nothing
    }

instance Core.FromJSON RealtimeData_ColumnHeadersItem where
  parseJSON =
    Core.withObject
      "RealtimeData_ColumnHeadersItem"
      ( \o ->
          RealtimeData_ColumnHeadersItem
            Core.<$> (o Core..:? "columnType")
            Core.<*> (o Core..:? "dataType")
            Core.<*> (o Core..:? "name")
      )

instance Core.ToJSON RealtimeData_ColumnHeadersItem where
  toJSON RealtimeData_ColumnHeadersItem {..} =
    Core.object
      ( Core.catMaybes
          [ ("columnType" Core..=) Core.<$> columnType,
            ("dataType" Core..=) Core.<$> dataType,
            ("name" Core..=) Core.<$> name
          ]
      )

-- | Information for the view (profile), for which the real time data was requested.
--
-- /See:/ 'newRealtimeData_ProfileInfo' smart constructor.
data RealtimeData_ProfileInfo = RealtimeData_ProfileInfo
  { -- | Account ID to which this view (profile) belongs.
    accountId :: (Core.Maybe Core.Text),
    -- | Internal ID for the web property to which this view (profile) belongs.
    internalWebPropertyId :: (Core.Maybe Core.Text),
    -- | View (Profile) ID.
    profileId :: (Core.Maybe Core.Text),
    -- | View (Profile) name.
    profileName :: (Core.Maybe Core.Text),
    -- | Table ID for view (profile).
    tableId :: (Core.Maybe Core.Text),
    -- | Web Property ID to which this view (profile) belongs.
    webPropertyId :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'RealtimeData_ProfileInfo' with the minimum fields required to make a request.
newRealtimeData_ProfileInfo ::
  RealtimeData_ProfileInfo
newRealtimeData_ProfileInfo =
  RealtimeData_ProfileInfo
    { accountId = Core.Nothing,
      internalWebPropertyId = Core.Nothing,
      profileId = Core.Nothing,
      profileName = Core.Nothing,
      tableId = Core.Nothing,
      webPropertyId = Core.Nothing
    }

instance Core.FromJSON RealtimeData_ProfileInfo where
  parseJSON =
    Core.withObject
      "RealtimeData_ProfileInfo"
      ( \o ->
          RealtimeData_ProfileInfo
            Core.<$> (o Core..:? "accountId")
            Core.<*> (o Core..:? "internalWebPropertyId")
            Core.<*> (o Core..:? "profileId")
            Core.<*> (o Core..:? "profileName")
            Core.<*> (o Core..:? "tableId")
            Core.<*> (o Core..:? "webPropertyId")
      )

instance Core.ToJSON RealtimeData_ProfileInfo where
  toJSON RealtimeData_ProfileInfo {..} =
    Core.object
      ( Core.catMaybes
          [ ("accountId" Core..=) Core.<$> accountId,
            ("internalWebPropertyId" Core..=)
              Core.<$> internalWebPropertyId,
            ("profileId" Core..=) Core.<$> profileId,
            ("profileName" Core..=) Core.<$> profileName,
            ("tableId" Core..=) Core.<$> tableId,
            ("webPropertyId" Core..=) Core.<$> webPropertyId
          ]
      )

-- | Real time data request query parameters.
--
-- /See:/ 'newRealtimeData_Query' smart constructor.
data RealtimeData_Query = RealtimeData_Query
  { -- | List of real time dimensions.
    dimensions :: (Core.Maybe Core.Text),
    -- | Comma-separated list of dimension or metric filters.
    filters :: (Core.Maybe Core.Text),
    -- | Unique table ID.
    ids :: (Core.Maybe Core.Text),
    -- | Maximum results per page.
    maxResults :: (Core.Maybe Core.Int32),
    -- | List of real time metrics.
    metrics :: (Core.Maybe [Core.Text]),
    -- | List of dimensions or metrics based on which real time data is sorted.
    sort :: (Core.Maybe [Core.Text])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'RealtimeData_Query' with the minimum fields required to make a request.
newRealtimeData_Query ::
  RealtimeData_Query
newRealtimeData_Query =
  RealtimeData_Query
    { dimensions = Core.Nothing,
      filters = Core.Nothing,
      ids = Core.Nothing,
      maxResults = Core.Nothing,
      metrics = Core.Nothing,
      sort = Core.Nothing
    }

instance Core.FromJSON RealtimeData_Query where
  parseJSON =
    Core.withObject
      "RealtimeData_Query"
      ( \o ->
          RealtimeData_Query
            Core.<$> (o Core..:? "dimensions")
            Core.<*> (o Core..:? "filters")
            Core.<*> (o Core..:? "ids")
            Core.<*> (o Core..:? "max-results")
            Core.<*> (o Core..:? "metrics" Core..!= Core.mempty)
            Core.<*> (o Core..:? "sort" Core..!= Core.mempty)
      )

instance Core.ToJSON RealtimeData_Query where
  toJSON RealtimeData_Query {..} =
    Core.object
      ( Core.catMaybes
          [ ("dimensions" Core..=) Core.<$> dimensions,
            ("filters" Core..=) Core.<$> filters,
            ("ids" Core..=) Core.<$> ids,
            ("max-results" Core..=) Core.<$> maxResults,
            ("metrics" Core..=) Core.<$> metrics,
            ("sort" Core..=) Core.<$> sort
          ]
      )

-- | Total values for the requested metrics over all the results, not just the results returned in this response. The order of the metric totals is same as the metric order specified in the request.
--
-- /See:/ 'newRealtimeData_TotalsForAllResults' smart constructor.
newtype RealtimeData_TotalsForAllResults = RealtimeData_TotalsForAllResults
  { -- | Key-value pair for the total value of a metric. Key is the metric name and the value is the total value for that metric.
    addtional :: (Core.HashMap Core.Text Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'RealtimeData_TotalsForAllResults' with the minimum fields required to make a request.
newRealtimeData_TotalsForAllResults ::
  -- |  Key-value pair for the total value of a metric. Key is the metric name and the value is the total value for that metric. See 'addtional'.
  Core.HashMap Core.Text Core.Text ->
  RealtimeData_TotalsForAllResults
newRealtimeData_TotalsForAllResults addtional =
  RealtimeData_TotalsForAllResults {addtional = addtional}

instance
  Core.FromJSON
    RealtimeData_TotalsForAllResults
  where
  parseJSON =
    Core.withObject
      "RealtimeData_TotalsForAllResults"
      ( \o ->
          RealtimeData_TotalsForAllResults
            Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON RealtimeData_TotalsForAllResults where
  toJSON RealtimeData_TotalsForAllResults {..} =
    Core.toJSON addtional

-- | JSON template for an Analytics remarketing audience.
--
-- /See:/ 'newRemarketingAudience' smart constructor.
data RemarketingAudience = RemarketingAudience
  { -- | Account ID to which this remarketing audience belongs.
    accountId :: (Core.Maybe Core.Text),
    -- | The simple audience definition that will cause a user to be added to an audience.
    audienceDefinition :: (Core.Maybe RemarketingAudience_AudienceDefinition),
    -- | The type of audience, either SIMPLE or STATE_BASED.
    audienceType :: (Core.Maybe Core.Text),
    -- | Time this remarketing audience was created.
    created :: (Core.Maybe Core.DateTime'),
    -- | The description of this remarketing audience.
    description :: (Core.Maybe Core.Text),
    -- | Remarketing Audience ID.
    id :: (Core.Maybe Core.Text),
    -- | Internal ID for the web property to which this remarketing audience belongs.
    internalWebPropertyId :: (Core.Maybe Core.Text),
    -- | Collection type.
    kind :: Core.Text,
    -- | The linked ad accounts associated with this remarketing audience. A remarketing audience can have only one linkedAdAccount currently.
    linkedAdAccounts :: (Core.Maybe [LinkedForeignAccount]),
    -- | The views (profiles) that this remarketing audience is linked to.
    linkedViews :: (Core.Maybe [Core.Text]),
    -- | The name of this remarketing audience.
    name :: (Core.Maybe Core.Text),
    -- | A state based audience definition that will cause a user to be added or removed from an audience.
    stateBasedAudienceDefinition :: (Core.Maybe RemarketingAudience_StateBasedAudienceDefinition),
    -- | Time this remarketing audience was last modified.
    updated :: (Core.Maybe Core.DateTime'),
    -- | Web property ID of the form UA-XXXXX-YY to which this remarketing audience belongs.
    webPropertyId :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'RemarketingAudience' with the minimum fields required to make a request.
newRemarketingAudience ::
  RemarketingAudience
newRemarketingAudience =
  RemarketingAudience
    { accountId = Core.Nothing,
      audienceDefinition = Core.Nothing,
      audienceType = Core.Nothing,
      created = Core.Nothing,
      description = Core.Nothing,
      id = Core.Nothing,
      internalWebPropertyId = Core.Nothing,
      kind = "analytics#remarketingAudience",
      linkedAdAccounts = Core.Nothing,
      linkedViews = Core.Nothing,
      name = Core.Nothing,
      stateBasedAudienceDefinition = Core.Nothing,
      updated = Core.Nothing,
      webPropertyId = Core.Nothing
    }

instance Core.FromJSON RemarketingAudience where
  parseJSON =
    Core.withObject
      "RemarketingAudience"
      ( \o ->
          RemarketingAudience
            Core.<$> (o Core..:? "accountId")
            Core.<*> (o Core..:? "audienceDefinition")
            Core.<*> (o Core..:? "audienceType")
            Core.<*> (o Core..:? "created")
            Core.<*> (o Core..:? "description")
            Core.<*> (o Core..:? "id")
            Core.<*> (o Core..:? "internalWebPropertyId")
            Core.<*> ( o Core..:? "kind"
                         Core..!= "analytics#remarketingAudience"
                     )
            Core.<*> (o Core..:? "linkedAdAccounts" Core..!= Core.mempty)
            Core.<*> (o Core..:? "linkedViews" Core..!= Core.mempty)
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "stateBasedAudienceDefinition")
            Core.<*> (o Core..:? "updated")
            Core.<*> (o Core..:? "webPropertyId")
      )

instance Core.ToJSON RemarketingAudience where
  toJSON RemarketingAudience {..} =
    Core.object
      ( Core.catMaybes
          [ ("accountId" Core..=) Core.<$> accountId,
            ("audienceDefinition" Core..=)
              Core.<$> audienceDefinition,
            ("audienceType" Core..=) Core.<$> audienceType,
            ("created" Core..=) Core.<$> created,
            ("description" Core..=) Core.<$> description,
            ("id" Core..=) Core.<$> id,
            ("internalWebPropertyId" Core..=)
              Core.<$> internalWebPropertyId,
            Core.Just ("kind" Core..= kind),
            ("linkedAdAccounts" Core..=)
              Core.<$> linkedAdAccounts,
            ("linkedViews" Core..=) Core.<$> linkedViews,
            ("name" Core..=) Core.<$> name,
            ("stateBasedAudienceDefinition" Core..=)
              Core.<$> stateBasedAudienceDefinition,
            ("updated" Core..=) Core.<$> updated,
            ("webPropertyId" Core..=) Core.<$> webPropertyId
          ]
      )

-- | The simple audience definition that will cause a user to be added to an audience.
--
-- /See:/ 'newRemarketingAudience_AudienceDefinition' smart constructor.
newtype RemarketingAudience_AudienceDefinition = RemarketingAudience_AudienceDefinition
  { -- | Defines the conditions to include users to the audience.
    includeConditions :: (Core.Maybe IncludeConditions)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'RemarketingAudience_AudienceDefinition' with the minimum fields required to make a request.
newRemarketingAudience_AudienceDefinition ::
  RemarketingAudience_AudienceDefinition
newRemarketingAudience_AudienceDefinition =
  RemarketingAudience_AudienceDefinition {includeConditions = Core.Nothing}

instance
  Core.FromJSON
    RemarketingAudience_AudienceDefinition
  where
  parseJSON =
    Core.withObject
      "RemarketingAudience_AudienceDefinition"
      ( \o ->
          RemarketingAudience_AudienceDefinition
            Core.<$> (o Core..:? "includeConditions")
      )

instance
  Core.ToJSON
    RemarketingAudience_AudienceDefinition
  where
  toJSON RemarketingAudience_AudienceDefinition {..} =
    Core.object
      ( Core.catMaybes
          [ ("includeConditions" Core..=)
              Core.<$> includeConditions
          ]
      )

-- | A state based audience definition that will cause a user to be added or removed from an audience.
--
-- /See:/ 'newRemarketingAudience_StateBasedAudienceDefinition' smart constructor.
data RemarketingAudience_StateBasedAudienceDefinition = RemarketingAudience_StateBasedAudienceDefinition
  { -- | Defines the conditions to exclude users from the audience.
    excludeConditions ::
      ( Core.Maybe
          RemarketingAudience_StateBasedAudienceDefinition_ExcludeConditions
      ),
    -- | Defines the conditions to include users to the audience.
    includeConditions :: (Core.Maybe IncludeConditions)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'RemarketingAudience_StateBasedAudienceDefinition' with the minimum fields required to make a request.
newRemarketingAudience_StateBasedAudienceDefinition ::
  RemarketingAudience_StateBasedAudienceDefinition
newRemarketingAudience_StateBasedAudienceDefinition =
  RemarketingAudience_StateBasedAudienceDefinition
    { excludeConditions = Core.Nothing,
      includeConditions = Core.Nothing
    }

instance
  Core.FromJSON
    RemarketingAudience_StateBasedAudienceDefinition
  where
  parseJSON =
    Core.withObject
      "RemarketingAudience_StateBasedAudienceDefinition"
      ( \o ->
          RemarketingAudience_StateBasedAudienceDefinition
            Core.<$> (o Core..:? "excludeConditions")
              Core.<*> (o Core..:? "includeConditions")
      )

instance
  Core.ToJSON
    RemarketingAudience_StateBasedAudienceDefinition
  where
  toJSON
    RemarketingAudience_StateBasedAudienceDefinition {..} =
      Core.object
        ( Core.catMaybes
            [ ("excludeConditions" Core..=)
                Core.<$> excludeConditions,
              ("includeConditions" Core..=)
                Core.<$> includeConditions
            ]
        )

-- | Defines the conditions to exclude users from the audience.
--
-- /See:/ 'newRemarketingAudience_StateBasedAudienceDefinition_ExcludeConditions' smart constructor.
data RemarketingAudience_StateBasedAudienceDefinition_ExcludeConditions = RemarketingAudience_StateBasedAudienceDefinition_ExcludeConditions
  { -- | Whether to make the exclusion TEMPORARY or PERMANENT.
    exclusionDuration :: (Core.Maybe Core.Text),
    -- | The segment condition that will cause a user to be removed from an audience.
    segment :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'RemarketingAudience_StateBasedAudienceDefinition_ExcludeConditions' with the minimum fields required to make a request.
newRemarketingAudience_StateBasedAudienceDefinition_ExcludeConditions ::
  RemarketingAudience_StateBasedAudienceDefinition_ExcludeConditions
newRemarketingAudience_StateBasedAudienceDefinition_ExcludeConditions =
  RemarketingAudience_StateBasedAudienceDefinition_ExcludeConditions
    { exclusionDuration = Core.Nothing,
      segment = Core.Nothing
    }

instance
  Core.FromJSON
    RemarketingAudience_StateBasedAudienceDefinition_ExcludeConditions
  where
  parseJSON =
    Core.withObject
      "RemarketingAudience_StateBasedAudienceDefinition_ExcludeConditions"
      ( \o ->
          RemarketingAudience_StateBasedAudienceDefinition_ExcludeConditions
            Core.<$> (o Core..:? "exclusionDuration")
              Core.<*> (o Core..:? "segment")
      )

instance
  Core.ToJSON
    RemarketingAudience_StateBasedAudienceDefinition_ExcludeConditions
  where
  toJSON
    RemarketingAudience_StateBasedAudienceDefinition_ExcludeConditions {..} =
      Core.object
        ( Core.catMaybes
            [ ("exclusionDuration" Core..=)
                Core.<$> exclusionDuration,
              ("segment" Core..=) Core.<$> segment
            ]
        )

-- | A remarketing audience collection lists Analytics remarketing audiences to which the user has access. Each resource in the collection corresponds to a single Analytics remarketing audience.
--
-- /See:/ 'newRemarketingAudiences' smart constructor.
data RemarketingAudiences = RemarketingAudiences
  { -- | A list of remarketing audiences.
    items :: (Core.Maybe [RemarketingAudience]),
    -- | The maximum number of resources the response can contain, regardless of the actual number of resources returned. Its value ranges from 1 to 1000 with a value of 1000 by default, or otherwise specified by the max-results query parameter.
    itemsPerPage :: (Core.Maybe Core.Int32),
    -- | Collection type.
    kind :: Core.Text,
    -- | Link to next page for this remarketing audience collection.
    nextLink :: (Core.Maybe Core.Text),
    -- | Link to previous page for this view (profile) collection.
    previousLink :: (Core.Maybe Core.Text),
    -- | The starting index of the resources, which is 1 by default or otherwise specified by the start-index query parameter.
    startIndex :: (Core.Maybe Core.Int32),
    -- | The total number of results for the query, regardless of the number of results in the response.
    totalResults :: (Core.Maybe Core.Int32),
    -- | Email ID of the authenticated user
    username :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'RemarketingAudiences' with the minimum fields required to make a request.
newRemarketingAudiences ::
  RemarketingAudiences
newRemarketingAudiences =
  RemarketingAudiences
    { items = Core.Nothing,
      itemsPerPage = Core.Nothing,
      kind = "analytics#remarketingAudiences",
      nextLink = Core.Nothing,
      previousLink = Core.Nothing,
      startIndex = Core.Nothing,
      totalResults = Core.Nothing,
      username = Core.Nothing
    }

instance Core.FromJSON RemarketingAudiences where
  parseJSON =
    Core.withObject
      "RemarketingAudiences"
      ( \o ->
          RemarketingAudiences
            Core.<$> (o Core..:? "items" Core..!= Core.mempty)
            Core.<*> (o Core..:? "itemsPerPage")
            Core.<*> ( o Core..:? "kind"
                         Core..!= "analytics#remarketingAudiences"
                     )
            Core.<*> (o Core..:? "nextLink")
            Core.<*> (o Core..:? "previousLink")
            Core.<*> (o Core..:? "startIndex")
            Core.<*> (o Core..:? "totalResults")
            Core.<*> (o Core..:? "username")
      )

instance Core.ToJSON RemarketingAudiences where
  toJSON RemarketingAudiences {..} =
    Core.object
      ( Core.catMaybes
          [ ("items" Core..=) Core.<$> items,
            ("itemsPerPage" Core..=) Core.<$> itemsPerPage,
            Core.Just ("kind" Core..= kind),
            ("nextLink" Core..=) Core.<$> nextLink,
            ("previousLink" Core..=) Core.<$> previousLink,
            ("startIndex" Core..=) Core.<$> startIndex,
            ("totalResults" Core..=) Core.<$> totalResults,
            ("username" Core..=) Core.<$> username
          ]
      )

-- | JSON template for an Analytics segment.
--
-- /See:/ 'newSegment' smart constructor.
data Segment = Segment
  { -- | Time the segment was created.
    created :: (Core.Maybe Core.DateTime'),
    -- | Segment definition.
    definition :: (Core.Maybe Core.Text),
    -- | Segment ID.
    id :: (Core.Maybe Core.Text),
    -- | Resource type for Analytics segment.
    kind :: Core.Text,
    -- | Segment name.
    name :: (Core.Maybe Core.Text),
    -- | Segment ID. Can be used with the \'segment\' parameter in Core Reporting API.
    segmentId :: (Core.Maybe Core.Text),
    -- | Link for this segment.
    selfLink :: (Core.Maybe Core.Text),
    -- | Type for a segment. Possible values are \"BUILT_IN\" or \"CUSTOM\".
    type' :: (Core.Maybe Core.Text),
    -- | Time the segment was last modified.
    updated :: (Core.Maybe Core.DateTime')
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Segment' with the minimum fields required to make a request.
newSegment ::
  Segment
newSegment =
  Segment
    { created = Core.Nothing,
      definition = Core.Nothing,
      id = Core.Nothing,
      kind = "analytics#segment",
      name = Core.Nothing,
      segmentId = Core.Nothing,
      selfLink = Core.Nothing,
      type' = Core.Nothing,
      updated = Core.Nothing
    }

instance Core.FromJSON Segment where
  parseJSON =
    Core.withObject
      "Segment"
      ( \o ->
          Segment
            Core.<$> (o Core..:? "created")
            Core.<*> (o Core..:? "definition")
            Core.<*> (o Core..:? "id")
            Core.<*> (o Core..:? "kind" Core..!= "analytics#segment")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "segmentId")
            Core.<*> (o Core..:? "selfLink")
            Core.<*> (o Core..:? "type")
            Core.<*> (o Core..:? "updated")
      )

instance Core.ToJSON Segment where
  toJSON Segment {..} =
    Core.object
      ( Core.catMaybes
          [ ("created" Core..=) Core.<$> created,
            ("definition" Core..=) Core.<$> definition,
            ("id" Core..=) Core.<$> id,
            Core.Just ("kind" Core..= kind),
            ("name" Core..=) Core.<$> name,
            ("segmentId" Core..=) Core.<$> segmentId,
            ("selfLink" Core..=) Core.<$> selfLink,
            ("type" Core..=) Core.<$> type',
            ("updated" Core..=) Core.<$> updated
          ]
      )

-- | An segment collection lists Analytics segments that the user has access to. Each resource in the collection corresponds to a single Analytics segment.
--
-- /See:/ 'newSegments' smart constructor.
data Segments = Segments
  { -- | A list of segments.
    items :: (Core.Maybe [Segment]),
    -- | The maximum number of resources the response can contain, regardless of the actual number of resources returned. Its value ranges from 1 to 1000 with a value of 1000 by default, or otherwise specified by the max-results query parameter.
    itemsPerPage :: (Core.Maybe Core.Int32),
    -- | Collection type for segments.
    kind :: Core.Text,
    -- | Link to next page for this segment collection.
    nextLink :: (Core.Maybe Core.Text),
    -- | Link to previous page for this segment collection.
    previousLink :: (Core.Maybe Core.Text),
    -- | The starting index of the resources, which is 1 by default or otherwise specified by the start-index query parameter.
    startIndex :: (Core.Maybe Core.Int32),
    -- | The total number of results for the query, regardless of the number of results in the response.
    totalResults :: (Core.Maybe Core.Int32),
    -- | Email ID of the authenticated user
    username :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Segments' with the minimum fields required to make a request.
newSegments ::
  Segments
newSegments =
  Segments
    { items = Core.Nothing,
      itemsPerPage = Core.Nothing,
      kind = "analytics#segments",
      nextLink = Core.Nothing,
      previousLink = Core.Nothing,
      startIndex = Core.Nothing,
      totalResults = Core.Nothing,
      username = Core.Nothing
    }

instance Core.FromJSON Segments where
  parseJSON =
    Core.withObject
      "Segments"
      ( \o ->
          Segments
            Core.<$> (o Core..:? "items" Core..!= Core.mempty)
            Core.<*> (o Core..:? "itemsPerPage")
            Core.<*> (o Core..:? "kind" Core..!= "analytics#segments")
            Core.<*> (o Core..:? "nextLink")
            Core.<*> (o Core..:? "previousLink")
            Core.<*> (o Core..:? "startIndex")
            Core.<*> (o Core..:? "totalResults")
            Core.<*> (o Core..:? "username")
      )

instance Core.ToJSON Segments where
  toJSON Segments {..} =
    Core.object
      ( Core.catMaybes
          [ ("items" Core..=) Core.<$> items,
            ("itemsPerPage" Core..=) Core.<$> itemsPerPage,
            Core.Just ("kind" Core..= kind),
            ("nextLink" Core..=) Core.<$> nextLink,
            ("previousLink" Core..=) Core.<$> previousLink,
            ("startIndex" Core..=) Core.<$> startIndex,
            ("totalResults" Core..=) Core.<$> totalResults,
            ("username" Core..=) Core.<$> username
          ]
      )

-- | JSON template for Analytics unsampled report resource.
--
-- /See:/ 'newUnsampledReport' smart constructor.
data UnsampledReport = UnsampledReport
  { -- | Account ID to which this unsampled report belongs.
    accountId :: (Core.Maybe Core.Text),
    -- | Download details for a file stored in Google Cloud Storage.
    cloudStorageDownloadDetails :: (Core.Maybe UnsampledReport_CloudStorageDownloadDetails),
    -- | Time this unsampled report was created.
    created :: (Core.Maybe Core.DateTime'),
    -- | The dimensions for the unsampled report.
    dimensions :: (Core.Maybe Core.Text),
    -- | The type of download you need to use for the report data file. Possible values include @GOOGLE_DRIVE@ and @GOOGLE_CLOUD_STORAGE@. If the value is @GOOGLE_DRIVE@, see the @driveDownloadDetails@ field. If the value is @GOOGLE_CLOUD_STORAGE@, see the @cloudStorageDownloadDetails@ field.
    downloadType :: (Core.Maybe Core.Text),
    -- | Download details for a file stored in Google Drive.
    driveDownloadDetails :: (Core.Maybe UnsampledReport_DriveDownloadDetails),
    -- | The end date for the unsampled report.
    endDate :: (Core.Maybe Core.Text),
    -- | The filters for the unsampled report.
    filters :: (Core.Maybe Core.Text),
    -- | Unsampled report ID.
    id :: (Core.Maybe Core.Text),
    -- | Resource type for an Analytics unsampled report.
    kind :: Core.Text,
    -- | The metrics for the unsampled report.
    metrics :: (Core.Maybe Core.Text),
    -- | View (Profile) ID to which this unsampled report belongs.
    profileId :: (Core.Maybe Core.Text),
    -- | The segment for the unsampled report.
    segment :: (Core.Maybe Core.Text),
    -- | Link for this unsampled report.
    selfLink :: (Core.Maybe Core.Text),
    -- | The start date for the unsampled report.
    startDate :: (Core.Maybe Core.Text),
    -- | Status of this unsampled report. Possible values are PENDING, COMPLETED, or FAILED.
    status :: (Core.Maybe Core.Text),
    -- | Title of the unsampled report.
    title :: (Core.Maybe Core.Text),
    -- | Time this unsampled report was last modified.
    updated :: (Core.Maybe Core.DateTime'),
    -- | Web property ID to which this unsampled report belongs. The web property ID is of the form UA-XXXXX-YY.
    webPropertyId :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'UnsampledReport' with the minimum fields required to make a request.
newUnsampledReport ::
  UnsampledReport
newUnsampledReport =
  UnsampledReport
    { accountId = Core.Nothing,
      cloudStorageDownloadDetails = Core.Nothing,
      created = Core.Nothing,
      dimensions = Core.Nothing,
      downloadType = Core.Nothing,
      driveDownloadDetails = Core.Nothing,
      endDate = Core.Nothing,
      filters = Core.Nothing,
      id = Core.Nothing,
      kind = "analytics#unsampledReport",
      metrics = Core.Nothing,
      profileId = Core.Nothing,
      segment = Core.Nothing,
      selfLink = Core.Nothing,
      startDate = Core.Nothing,
      status = Core.Nothing,
      title = Core.Nothing,
      updated = Core.Nothing,
      webPropertyId = Core.Nothing
    }

instance Core.FromJSON UnsampledReport where
  parseJSON =
    Core.withObject
      "UnsampledReport"
      ( \o ->
          UnsampledReport
            Core.<$> (o Core..:? "accountId")
            Core.<*> (o Core..:? "cloudStorageDownloadDetails")
            Core.<*> (o Core..:? "created")
            Core.<*> (o Core..:? "dimensions")
            Core.<*> (o Core..:? "downloadType")
            Core.<*> (o Core..:? "driveDownloadDetails")
            Core.<*> (o Core..:? "end-date")
            Core.<*> (o Core..:? "filters")
            Core.<*> (o Core..:? "id")
            Core.<*> ( o Core..:? "kind"
                         Core..!= "analytics#unsampledReport"
                     )
            Core.<*> (o Core..:? "metrics")
            Core.<*> (o Core..:? "profileId")
            Core.<*> (o Core..:? "segment")
            Core.<*> (o Core..:? "selfLink")
            Core.<*> (o Core..:? "start-date")
            Core.<*> (o Core..:? "status")
            Core.<*> (o Core..:? "title")
            Core.<*> (o Core..:? "updated")
            Core.<*> (o Core..:? "webPropertyId")
      )

instance Core.ToJSON UnsampledReport where
  toJSON UnsampledReport {..} =
    Core.object
      ( Core.catMaybes
          [ ("accountId" Core..=) Core.<$> accountId,
            ("cloudStorageDownloadDetails" Core..=)
              Core.<$> cloudStorageDownloadDetails,
            ("created" Core..=) Core.<$> created,
            ("dimensions" Core..=) Core.<$> dimensions,
            ("downloadType" Core..=) Core.<$> downloadType,
            ("driveDownloadDetails" Core..=)
              Core.<$> driveDownloadDetails,
            ("end-date" Core..=) Core.<$> endDate,
            ("filters" Core..=) Core.<$> filters,
            ("id" Core..=) Core.<$> id,
            Core.Just ("kind" Core..= kind),
            ("metrics" Core..=) Core.<$> metrics,
            ("profileId" Core..=) Core.<$> profileId,
            ("segment" Core..=) Core.<$> segment,
            ("selfLink" Core..=) Core.<$> selfLink,
            ("start-date" Core..=) Core.<$> startDate,
            ("status" Core..=) Core.<$> status,
            ("title" Core..=) Core.<$> title,
            ("updated" Core..=) Core.<$> updated,
            ("webPropertyId" Core..=) Core.<$> webPropertyId
          ]
      )

-- | Download details for a file stored in Google Cloud Storage.
--
-- /See:/ 'newUnsampledReport_CloudStorageDownloadDetails' smart constructor.
data UnsampledReport_CloudStorageDownloadDetails = UnsampledReport_CloudStorageDownloadDetails
  { -- | Id of the bucket the file object is stored in.
    bucketId :: (Core.Maybe Core.Text),
    -- | Id of the file object containing the report data.
    objectId :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'UnsampledReport_CloudStorageDownloadDetails' with the minimum fields required to make a request.
newUnsampledReport_CloudStorageDownloadDetails ::
  UnsampledReport_CloudStorageDownloadDetails
newUnsampledReport_CloudStorageDownloadDetails =
  UnsampledReport_CloudStorageDownloadDetails
    { bucketId = Core.Nothing,
      objectId = Core.Nothing
    }

instance
  Core.FromJSON
    UnsampledReport_CloudStorageDownloadDetails
  where
  parseJSON =
    Core.withObject
      "UnsampledReport_CloudStorageDownloadDetails"
      ( \o ->
          UnsampledReport_CloudStorageDownloadDetails
            Core.<$> (o Core..:? "bucketId")
            Core.<*> (o Core..:? "objectId")
      )

instance
  Core.ToJSON
    UnsampledReport_CloudStorageDownloadDetails
  where
  toJSON
    UnsampledReport_CloudStorageDownloadDetails {..} =
      Core.object
        ( Core.catMaybes
            [ ("bucketId" Core..=) Core.<$> bucketId,
              ("objectId" Core..=) Core.<$> objectId
            ]
        )

-- | Download details for a file stored in Google Drive.
--
-- /See:/ 'newUnsampledReport_DriveDownloadDetails' smart constructor.
newtype UnsampledReport_DriveDownloadDetails = UnsampledReport_DriveDownloadDetails
  { -- | Id of the document\/file containing the report data.
    documentId :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'UnsampledReport_DriveDownloadDetails' with the minimum fields required to make a request.
newUnsampledReport_DriveDownloadDetails ::
  UnsampledReport_DriveDownloadDetails
newUnsampledReport_DriveDownloadDetails =
  UnsampledReport_DriveDownloadDetails {documentId = Core.Nothing}

instance
  Core.FromJSON
    UnsampledReport_DriveDownloadDetails
  where
  parseJSON =
    Core.withObject
      "UnsampledReport_DriveDownloadDetails"
      ( \o ->
          UnsampledReport_DriveDownloadDetails
            Core.<$> (o Core..:? "documentId")
      )

instance
  Core.ToJSON
    UnsampledReport_DriveDownloadDetails
  where
  toJSON UnsampledReport_DriveDownloadDetails {..} =
    Core.object
      ( Core.catMaybes
          [("documentId" Core..=) Core.<$> documentId]
      )

-- | An unsampled report collection lists Analytics unsampled reports to which the user has access. Each view (profile) can have a set of unsampled reports. Each resource in the unsampled report collection corresponds to a single Analytics unsampled report.
--
-- /See:/ 'newUnsampledReports' smart constructor.
data UnsampledReports = UnsampledReports
  { -- | A list of unsampled reports.
    items :: (Core.Maybe [UnsampledReport]),
    -- | The maximum number of resources the response can contain, regardless of the actual number of resources returned. Its value ranges from 1 to 1000 with a value of 1000 by default, or otherwise specified by the max-results query parameter.
    itemsPerPage :: (Core.Maybe Core.Int32),
    -- | Collection type.
    kind :: Core.Text,
    -- | Link to next page for this unsampled report collection.
    nextLink :: (Core.Maybe Core.Text),
    -- | Link to previous page for this unsampled report collection.
    previousLink :: (Core.Maybe Core.Text),
    -- | The starting index of the resources, which is 1 by default or otherwise specified by the start-index query parameter.
    startIndex :: (Core.Maybe Core.Int32),
    -- | The total number of results for the query, regardless of the number of resources in the result.
    totalResults :: (Core.Maybe Core.Int32),
    -- | Email ID of the authenticated user
    username :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'UnsampledReports' with the minimum fields required to make a request.
newUnsampledReports ::
  UnsampledReports
newUnsampledReports =
  UnsampledReports
    { items = Core.Nothing,
      itemsPerPage = Core.Nothing,
      kind = "analytics#unsampledReports",
      nextLink = Core.Nothing,
      previousLink = Core.Nothing,
      startIndex = Core.Nothing,
      totalResults = Core.Nothing,
      username = Core.Nothing
    }

instance Core.FromJSON UnsampledReports where
  parseJSON =
    Core.withObject
      "UnsampledReports"
      ( \o ->
          UnsampledReports
            Core.<$> (o Core..:? "items" Core..!= Core.mempty)
            Core.<*> (o Core..:? "itemsPerPage")
            Core.<*> ( o Core..:? "kind"
                         Core..!= "analytics#unsampledReports"
                     )
            Core.<*> (o Core..:? "nextLink")
            Core.<*> (o Core..:? "previousLink")
            Core.<*> (o Core..:? "startIndex")
            Core.<*> (o Core..:? "totalResults")
            Core.<*> (o Core..:? "username")
      )

instance Core.ToJSON UnsampledReports where
  toJSON UnsampledReports {..} =
    Core.object
      ( Core.catMaybes
          [ ("items" Core..=) Core.<$> items,
            ("itemsPerPage" Core..=) Core.<$> itemsPerPage,
            Core.Just ("kind" Core..= kind),
            ("nextLink" Core..=) Core.<$> nextLink,
            ("previousLink" Core..=) Core.<$> previousLink,
            ("startIndex" Core..=) Core.<$> startIndex,
            ("totalResults" Core..=) Core.<$> totalResults,
            ("username" Core..=) Core.<$> username
          ]
      )

-- | Metadata returned for an upload operation.
--
-- /See:/ 'newUpload' smart constructor.
data Upload = Upload
  { -- | Account Id to which this upload belongs.
    accountId :: (Core.Maybe Core.Int64),
    -- | Custom data source Id to which this data import belongs.
    customDataSourceId :: (Core.Maybe Core.Text),
    -- | Data import errors collection.
    errors :: (Core.Maybe [Core.Text]),
    -- | A unique ID for this upload.
    id :: (Core.Maybe Core.Text),
    -- | Resource type for Analytics upload.
    kind :: Core.Text,
    -- | Upload status. Possible values: PENDING, COMPLETED, FAILED, DELETING, DELETED.
    status :: (Core.Maybe Core.Text),
    -- | Time this file is uploaded.
    uploadTime :: (Core.Maybe Core.DateTime')
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Upload' with the minimum fields required to make a request.
newUpload ::
  Upload
newUpload =
  Upload
    { accountId = Core.Nothing,
      customDataSourceId = Core.Nothing,
      errors = Core.Nothing,
      id = Core.Nothing,
      kind = "analytics#upload",
      status = Core.Nothing,
      uploadTime = Core.Nothing
    }

instance Core.FromJSON Upload where
  parseJSON =
    Core.withObject
      "Upload"
      ( \o ->
          Upload
            Core.<$> (o Core..:? "accountId")
            Core.<*> (o Core..:? "customDataSourceId")
            Core.<*> (o Core..:? "errors" Core..!= Core.mempty)
            Core.<*> (o Core..:? "id")
            Core.<*> (o Core..:? "kind" Core..!= "analytics#upload")
            Core.<*> (o Core..:? "status")
            Core.<*> (o Core..:? "uploadTime")
      )

instance Core.ToJSON Upload where
  toJSON Upload {..} =
    Core.object
      ( Core.catMaybes
          [ ("accountId" Core..=) Core.. Core.AsText
              Core.<$> accountId,
            ("customDataSourceId" Core..=)
              Core.<$> customDataSourceId,
            ("errors" Core..=) Core.<$> errors,
            ("id" Core..=) Core.<$> id,
            Core.Just ("kind" Core..= kind),
            ("status" Core..=) Core.<$> status,
            ("uploadTime" Core..=) Core.<$> uploadTime
          ]
      )

-- | Upload collection lists Analytics uploads to which the user has access. Each custom data source can have a set of uploads. Each resource in the upload collection corresponds to a single Analytics data upload.
--
-- /See:/ 'newUploads' smart constructor.
data Uploads = Uploads
  { -- | A list of uploads.
    items :: (Core.Maybe [Upload]),
    -- | The maximum number of resources the response can contain, regardless of the actual number of resources returned. Its value ranges from 1 to 1000 with a value of 1000 by default, or otherwise specified by the max-results query parameter.
    itemsPerPage :: (Core.Maybe Core.Int32),
    -- | Collection type.
    kind :: Core.Text,
    -- | Link to next page for this upload collection.
    nextLink :: (Core.Maybe Core.Text),
    -- | Link to previous page for this upload collection.
    previousLink :: (Core.Maybe Core.Text),
    -- | The starting index of the resources, which is 1 by default or otherwise specified by the start-index query parameter.
    startIndex :: (Core.Maybe Core.Int32),
    -- | The total number of results for the query, regardless of the number of resources in the result.
    totalResults :: (Core.Maybe Core.Int32)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Uploads' with the minimum fields required to make a request.
newUploads ::
  Uploads
newUploads =
  Uploads
    { items = Core.Nothing,
      itemsPerPage = Core.Nothing,
      kind = "analytics#uploads",
      nextLink = Core.Nothing,
      previousLink = Core.Nothing,
      startIndex = Core.Nothing,
      totalResults = Core.Nothing
    }

instance Core.FromJSON Uploads where
  parseJSON =
    Core.withObject
      "Uploads"
      ( \o ->
          Uploads
            Core.<$> (o Core..:? "items" Core..!= Core.mempty)
            Core.<*> (o Core..:? "itemsPerPage")
            Core.<*> (o Core..:? "kind" Core..!= "analytics#uploads")
            Core.<*> (o Core..:? "nextLink")
            Core.<*> (o Core..:? "previousLink")
            Core.<*> (o Core..:? "startIndex")
            Core.<*> (o Core..:? "totalResults")
      )

instance Core.ToJSON Uploads where
  toJSON Uploads {..} =
    Core.object
      ( Core.catMaybes
          [ ("items" Core..=) Core.<$> items,
            ("itemsPerPage" Core..=) Core.<$> itemsPerPage,
            Core.Just ("kind" Core..= kind),
            ("nextLink" Core..=) Core.<$> nextLink,
            ("previousLink" Core..=) Core.<$> previousLink,
            ("startIndex" Core..=) Core.<$> startIndex,
            ("totalResults" Core..=) Core.<$> totalResults
          ]
      )

-- | JSON template for a user deletion request resource.
--
-- /See:/ 'newUserDeletionRequest' smart constructor.
data UserDeletionRequest = UserDeletionRequest
  { -- | This marks the point in time for which all user data before should be deleted
    deletionRequestTime :: (Core.Maybe Core.DateTime'),
    -- | Firebase Project Id
    firebaseProjectId :: (Core.Maybe Core.Text),
    -- | User ID.
    id :: (Core.Maybe UserDeletionRequest_Id),
    -- | Value is \"analytics#userDeletionRequest\".
    kind :: Core.Text,
    -- | Property ID
    propertyId :: (Core.Maybe Core.Text),
    -- | Web property ID of the form UA-XXXXX-YY.
    webPropertyId :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'UserDeletionRequest' with the minimum fields required to make a request.
newUserDeletionRequest ::
  UserDeletionRequest
newUserDeletionRequest =
  UserDeletionRequest
    { deletionRequestTime = Core.Nothing,
      firebaseProjectId = Core.Nothing,
      id = Core.Nothing,
      kind = "analytics#userDeletionRequest",
      propertyId = Core.Nothing,
      webPropertyId = Core.Nothing
    }

instance Core.FromJSON UserDeletionRequest where
  parseJSON =
    Core.withObject
      "UserDeletionRequest"
      ( \o ->
          UserDeletionRequest
            Core.<$> (o Core..:? "deletionRequestTime")
            Core.<*> (o Core..:? "firebaseProjectId")
            Core.<*> (o Core..:? "id")
            Core.<*> ( o Core..:? "kind"
                         Core..!= "analytics#userDeletionRequest"
                     )
            Core.<*> (o Core..:? "propertyId")
            Core.<*> (o Core..:? "webPropertyId")
      )

instance Core.ToJSON UserDeletionRequest where
  toJSON UserDeletionRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("deletionRequestTime" Core..=)
              Core.<$> deletionRequestTime,
            ("firebaseProjectId" Core..=)
              Core.<$> firebaseProjectId,
            ("id" Core..=) Core.<$> id,
            Core.Just ("kind" Core..= kind),
            ("propertyId" Core..=) Core.<$> propertyId,
            ("webPropertyId" Core..=) Core.<$> webPropertyId
          ]
      )

-- | User ID.
--
-- /See:/ 'newUserDeletionRequest_Id' smart constructor.
data UserDeletionRequest_Id = UserDeletionRequest_Id
  { -- | Type of user
    type' :: (Core.Maybe Core.Text),
    -- | The User\'s id
    userId :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'UserDeletionRequest_Id' with the minimum fields required to make a request.
newUserDeletionRequest_Id ::
  UserDeletionRequest_Id
newUserDeletionRequest_Id =
  UserDeletionRequest_Id {type' = Core.Nothing, userId = Core.Nothing}

instance Core.FromJSON UserDeletionRequest_Id where
  parseJSON =
    Core.withObject
      "UserDeletionRequest_Id"
      ( \o ->
          UserDeletionRequest_Id
            Core.<$> (o Core..:? "type") Core.<*> (o Core..:? "userId")
      )

instance Core.ToJSON UserDeletionRequest_Id where
  toJSON UserDeletionRequest_Id {..} =
    Core.object
      ( Core.catMaybes
          [ ("type" Core..=) Core.<$> type',
            ("userId" Core..=) Core.<$> userId
          ]
      )

-- | JSON template for a user reference.
--
-- /See:/ 'newUserRef' smart constructor.
data UserRef = UserRef
  { -- | Email ID of this user.
    email :: (Core.Maybe Core.Text),
    -- | User ID.
    id :: (Core.Maybe Core.Text),
    -- |
    kind :: Core.Text
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'UserRef' with the minimum fields required to make a request.
newUserRef ::
  UserRef
newUserRef =
  UserRef {email = Core.Nothing, id = Core.Nothing, kind = "analytics#userRef"}

instance Core.FromJSON UserRef where
  parseJSON =
    Core.withObject
      "UserRef"
      ( \o ->
          UserRef
            Core.<$> (o Core..:? "email")
            Core.<*> (o Core..:? "id")
            Core.<*> (o Core..:? "kind" Core..!= "analytics#userRef")
      )

instance Core.ToJSON UserRef where
  toJSON UserRef {..} =
    Core.object
      ( Core.catMaybes
          [ ("email" Core..=) Core.<$> email,
            ("id" Core..=) Core.<$> id,
            Core.Just ("kind" Core..= kind)
          ]
      )

-- | JSON template for a web property reference.
--
-- /See:/ 'newWebPropertyRef' smart constructor.
data WebPropertyRef = WebPropertyRef
  { -- | Account ID to which this web property belongs.
    accountId :: (Core.Maybe Core.Text),
    -- | Link for this web property.
    href :: (Core.Maybe Core.Text),
    -- | Web property ID of the form UA-XXXXX-YY.
    id :: (Core.Maybe Core.Text),
    -- | Internal ID for this web property.
    internalWebPropertyId :: (Core.Maybe Core.Text),
    -- | Analytics web property reference.
    kind :: Core.Text,
    -- | Name of this web property.
    name :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'WebPropertyRef' with the minimum fields required to make a request.
newWebPropertyRef ::
  WebPropertyRef
newWebPropertyRef =
  WebPropertyRef
    { accountId = Core.Nothing,
      href = Core.Nothing,
      id = Core.Nothing,
      internalWebPropertyId = Core.Nothing,
      kind = "analytics#webPropertyRef",
      name = Core.Nothing
    }

instance Core.FromJSON WebPropertyRef where
  parseJSON =
    Core.withObject
      "WebPropertyRef"
      ( \o ->
          WebPropertyRef
            Core.<$> (o Core..:? "accountId")
            Core.<*> (o Core..:? "href")
            Core.<*> (o Core..:? "id")
            Core.<*> (o Core..:? "internalWebPropertyId")
            Core.<*> ( o Core..:? "kind"
                         Core..!= "analytics#webPropertyRef"
                     )
            Core.<*> (o Core..:? "name")
      )

instance Core.ToJSON WebPropertyRef where
  toJSON WebPropertyRef {..} =
    Core.object
      ( Core.catMaybes
          [ ("accountId" Core..=) Core.<$> accountId,
            ("href" Core..=) Core.<$> href,
            ("id" Core..=) Core.<$> id,
            ("internalWebPropertyId" Core..=)
              Core.<$> internalWebPropertyId,
            Core.Just ("kind" Core..= kind),
            ("name" Core..=) Core.<$> name
          ]
      )

-- | JSON template for an Analytics WebPropertySummary. WebPropertySummary returns basic information (i.e., summary) for a web property.
--
-- /See:/ 'newWebPropertySummary' smart constructor.
data WebPropertySummary = WebPropertySummary
  { -- | Web property ID of the form UA-XXXXX-YY.
    id :: (Core.Maybe Core.Text),
    -- | Internal ID for this web property.
    internalWebPropertyId :: (Core.Maybe Core.Text),
    -- | Resource type for Analytics WebPropertySummary.
    kind :: Core.Text,
    -- | Level for this web property. Possible values are STANDARD or PREMIUM.
    level :: (Core.Maybe Core.Text),
    -- | Web property name.
    name :: (Core.Maybe Core.Text),
    -- | List of profiles under this web property.
    profiles :: (Core.Maybe [ProfileSummary]),
    -- | Indicates whether this web property is starred or not.
    starred :: (Core.Maybe Core.Bool),
    -- | Website url for this web property.
    websiteUrl :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'WebPropertySummary' with the minimum fields required to make a request.
newWebPropertySummary ::
  WebPropertySummary
newWebPropertySummary =
  WebPropertySummary
    { id = Core.Nothing,
      internalWebPropertyId = Core.Nothing,
      kind = "analytics#webPropertySummary",
      level = Core.Nothing,
      name = Core.Nothing,
      profiles = Core.Nothing,
      starred = Core.Nothing,
      websiteUrl = Core.Nothing
    }

instance Core.FromJSON WebPropertySummary where
  parseJSON =
    Core.withObject
      "WebPropertySummary"
      ( \o ->
          WebPropertySummary
            Core.<$> (o Core..:? "id")
            Core.<*> (o Core..:? "internalWebPropertyId")
            Core.<*> ( o Core..:? "kind"
                         Core..!= "analytics#webPropertySummary"
                     )
            Core.<*> (o Core..:? "level")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "profiles" Core..!= Core.mempty)
            Core.<*> (o Core..:? "starred")
            Core.<*> (o Core..:? "websiteUrl")
      )

instance Core.ToJSON WebPropertySummary where
  toJSON WebPropertySummary {..} =
    Core.object
      ( Core.catMaybes
          [ ("id" Core..=) Core.<$> id,
            ("internalWebPropertyId" Core..=)
              Core.<$> internalWebPropertyId,
            Core.Just ("kind" Core..= kind),
            ("level" Core..=) Core.<$> level,
            ("name" Core..=) Core.<$> name,
            ("profiles" Core..=) Core.<$> profiles,
            ("starred" Core..=) Core.<$> starred,
            ("websiteUrl" Core..=) Core.<$> websiteUrl
          ]
      )

-- | A web property collection lists Analytics web properties to which the user has access. Each resource in the collection corresponds to a single Analytics web property.
--
-- /See:/ 'newWebproperties' smart constructor.
data Webproperties = Webproperties
  { -- | A list of web properties.
    items :: (Core.Maybe [Webproperty]),
    -- | The maximum number of resources the response can contain, regardless of the actual number of resources returned. Its value ranges from 1 to 1000 with a value of 1000 by default, or otherwise specified by the max-results query parameter.
    itemsPerPage :: (Core.Maybe Core.Int32),
    -- | Collection type.
    kind :: Core.Text,
    -- | Link to next page for this web property collection.
    nextLink :: (Core.Maybe Core.Text),
    -- | Link to previous page for this web property collection.
    previousLink :: (Core.Maybe Core.Text),
    -- | The starting index of the resources, which is 1 by default or otherwise specified by the start-index query parameter.
    startIndex :: (Core.Maybe Core.Int32),
    -- | The total number of results for the query, regardless of the number of results in the response.
    totalResults :: (Core.Maybe Core.Int32),
    -- | Email ID of the authenticated user
    username :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Webproperties' with the minimum fields required to make a request.
newWebproperties ::
  Webproperties
newWebproperties =
  Webproperties
    { items = Core.Nothing,
      itemsPerPage = Core.Nothing,
      kind = "analytics#webproperties",
      nextLink = Core.Nothing,
      previousLink = Core.Nothing,
      startIndex = Core.Nothing,
      totalResults = Core.Nothing,
      username = Core.Nothing
    }

instance Core.FromJSON Webproperties where
  parseJSON =
    Core.withObject
      "Webproperties"
      ( \o ->
          Webproperties
            Core.<$> (o Core..:? "items" Core..!= Core.mempty)
            Core.<*> (o Core..:? "itemsPerPage")
            Core.<*> ( o Core..:? "kind"
                         Core..!= "analytics#webproperties"
                     )
            Core.<*> (o Core..:? "nextLink")
            Core.<*> (o Core..:? "previousLink")
            Core.<*> (o Core..:? "startIndex")
            Core.<*> (o Core..:? "totalResults")
            Core.<*> (o Core..:? "username")
      )

instance Core.ToJSON Webproperties where
  toJSON Webproperties {..} =
    Core.object
      ( Core.catMaybes
          [ ("items" Core..=) Core.<$> items,
            ("itemsPerPage" Core..=) Core.<$> itemsPerPage,
            Core.Just ("kind" Core..= kind),
            ("nextLink" Core..=) Core.<$> nextLink,
            ("previousLink" Core..=) Core.<$> previousLink,
            ("startIndex" Core..=) Core.<$> startIndex,
            ("totalResults" Core..=) Core.<$> totalResults,
            ("username" Core..=) Core.<$> username
          ]
      )

-- | JSON template for an Analytics web property.
--
-- /See:/ 'newWebproperty' smart constructor.
data Webproperty = Webproperty
  { -- | Account ID to which this web property belongs.
    accountId :: (Core.Maybe Core.Text),
    -- | Child link for this web property. Points to the list of views (profiles) for this web property.
    childLink :: (Core.Maybe Webproperty_ChildLink),
    -- | Time this web property was created.
    created :: (Core.Maybe Core.DateTime'),
    -- | Set to true to reset the retention period of the user identifier with each new event from that user (thus setting the expiration date to current time plus retention period). Set to false to delete data associated with the user identifier automatically after the rentention period. This property cannot be set on insert.
    dataRetentionResetOnNewActivity :: (Core.Maybe Core.Bool),
    -- | The length of time for which user and event data is retained. This property cannot be set on insert.
    dataRetentionTtl :: (Core.Maybe Core.Text),
    -- | Default view (profile) ID.
    defaultProfileId :: (Core.Maybe Core.Int64),
    -- | Web property ID of the form UA-XXXXX-YY.
    id :: (Core.Maybe Core.Text),
    -- | The industry vertical\/category selected for this web property.
    industryVertical :: (Core.Maybe Core.Text),
    -- | Internal ID for this web property.
    internalWebPropertyId :: (Core.Maybe Core.Text),
    -- | Resource type for Analytics WebProperty.
    kind :: Core.Text,
    -- | Level for this web property. Possible values are STANDARD or PREMIUM.
    level :: (Core.Maybe Core.Text),
    -- | Name of this web property.
    name :: (Core.Maybe Core.Text),
    -- | Parent link for this web property. Points to the account to which this web property belongs.
    parentLink :: (Core.Maybe Webproperty_ParentLink),
    -- | Permissions the user has for this web property.
    permissions :: (Core.Maybe Webproperty_Permissions),
    -- | View (Profile) count for this web property.
    profileCount :: (Core.Maybe Core.Int32),
    -- | Link for this web property.
    selfLink :: (Core.Maybe Core.Text),
    -- | Indicates whether this web property is starred or not.
    starred :: (Core.Maybe Core.Bool),
    -- | Time this web property was last modified.
    updated :: (Core.Maybe Core.DateTime'),
    -- | Website url for this web property.
    websiteUrl :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Webproperty' with the minimum fields required to make a request.
newWebproperty ::
  Webproperty
newWebproperty =
  Webproperty
    { accountId = Core.Nothing,
      childLink = Core.Nothing,
      created = Core.Nothing,
      dataRetentionResetOnNewActivity = Core.Nothing,
      dataRetentionTtl = Core.Nothing,
      defaultProfileId = Core.Nothing,
      id = Core.Nothing,
      industryVertical = Core.Nothing,
      internalWebPropertyId = Core.Nothing,
      kind = "analytics#webproperty",
      level = Core.Nothing,
      name = Core.Nothing,
      parentLink = Core.Nothing,
      permissions = Core.Nothing,
      profileCount = Core.Nothing,
      selfLink = Core.Nothing,
      starred = Core.Nothing,
      updated = Core.Nothing,
      websiteUrl = Core.Nothing
    }

instance Core.FromJSON Webproperty where
  parseJSON =
    Core.withObject
      "Webproperty"
      ( \o ->
          Webproperty
            Core.<$> (o Core..:? "accountId")
            Core.<*> (o Core..:? "childLink")
            Core.<*> (o Core..:? "created")
            Core.<*> (o Core..:? "dataRetentionResetOnNewActivity")
            Core.<*> (o Core..:? "dataRetentionTtl")
            Core.<*> (o Core..:? "defaultProfileId")
            Core.<*> (o Core..:? "id")
            Core.<*> (o Core..:? "industryVertical")
            Core.<*> (o Core..:? "internalWebPropertyId")
            Core.<*> (o Core..:? "kind" Core..!= "analytics#webproperty")
            Core.<*> (o Core..:? "level")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "parentLink")
            Core.<*> (o Core..:? "permissions")
            Core.<*> (o Core..:? "profileCount")
            Core.<*> (o Core..:? "selfLink")
            Core.<*> (o Core..:? "starred")
            Core.<*> (o Core..:? "updated")
            Core.<*> (o Core..:? "websiteUrl")
      )

instance Core.ToJSON Webproperty where
  toJSON Webproperty {..} =
    Core.object
      ( Core.catMaybes
          [ ("accountId" Core..=) Core.<$> accountId,
            ("childLink" Core..=) Core.<$> childLink,
            ("created" Core..=) Core.<$> created,
            ("dataRetentionResetOnNewActivity" Core..=)
              Core.<$> dataRetentionResetOnNewActivity,
            ("dataRetentionTtl" Core..=)
              Core.<$> dataRetentionTtl,
            ("defaultProfileId" Core..=) Core.. Core.AsText
              Core.<$> defaultProfileId,
            ("id" Core..=) Core.<$> id,
            ("industryVertical" Core..=)
              Core.<$> industryVertical,
            ("internalWebPropertyId" Core..=)
              Core.<$> internalWebPropertyId,
            Core.Just ("kind" Core..= kind),
            ("level" Core..=) Core.<$> level,
            ("name" Core..=) Core.<$> name,
            ("parentLink" Core..=) Core.<$> parentLink,
            ("permissions" Core..=) Core.<$> permissions,
            ("profileCount" Core..=) Core.<$> profileCount,
            ("selfLink" Core..=) Core.<$> selfLink,
            ("starred" Core..=) Core.<$> starred,
            ("updated" Core..=) Core.<$> updated,
            ("websiteUrl" Core..=) Core.<$> websiteUrl
          ]
      )

-- | Child link for this web property. Points to the list of views (profiles) for this web property.
--
-- /See:/ 'newWebproperty_ChildLink' smart constructor.
data Webproperty_ChildLink = Webproperty_ChildLink
  { -- | Link to the list of views (profiles) for this web property.
    href :: (Core.Maybe Core.Text),
    -- | Type of the parent link. Its value is \"analytics#profiles\".
    type' :: Core.Text
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Webproperty_ChildLink' with the minimum fields required to make a request.
newWebproperty_ChildLink ::
  Webproperty_ChildLink
newWebproperty_ChildLink =
  Webproperty_ChildLink {href = Core.Nothing, type' = "analytics#profiles"}

instance Core.FromJSON Webproperty_ChildLink where
  parseJSON =
    Core.withObject
      "Webproperty_ChildLink"
      ( \o ->
          Webproperty_ChildLink
            Core.<$> (o Core..:? "href")
            Core.<*> (o Core..:? "type" Core..!= "analytics#profiles")
      )

instance Core.ToJSON Webproperty_ChildLink where
  toJSON Webproperty_ChildLink {..} =
    Core.object
      ( Core.catMaybes
          [ ("href" Core..=) Core.<$> href,
            Core.Just ("type" Core..= type')
          ]
      )

-- | Parent link for this web property. Points to the account to which this web property belongs.
--
-- /See:/ 'newWebproperty_ParentLink' smart constructor.
data Webproperty_ParentLink = Webproperty_ParentLink
  { -- | Link to the account for this web property.
    href :: (Core.Maybe Core.Text),
    -- | Type of the parent link. Its value is \"analytics#account\".
    type' :: Core.Text
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Webproperty_ParentLink' with the minimum fields required to make a request.
newWebproperty_ParentLink ::
  Webproperty_ParentLink
newWebproperty_ParentLink =
  Webproperty_ParentLink {href = Core.Nothing, type' = "analytics#account"}

instance Core.FromJSON Webproperty_ParentLink where
  parseJSON =
    Core.withObject
      "Webproperty_ParentLink"
      ( \o ->
          Webproperty_ParentLink
            Core.<$> (o Core..:? "href")
            Core.<*> (o Core..:? "type" Core..!= "analytics#account")
      )

instance Core.ToJSON Webproperty_ParentLink where
  toJSON Webproperty_ParentLink {..} =
    Core.object
      ( Core.catMaybes
          [ ("href" Core..=) Core.<$> href,
            Core.Just ("type" Core..= type')
          ]
      )

-- | Permissions the user has for this web property.
--
-- /See:/ 'newWebproperty_Permissions' smart constructor.
newtype Webproperty_Permissions = Webproperty_Permissions
  { -- | All the permissions that the user has for this web property. These include any implied permissions (e.g., EDIT implies VIEW) or inherited permissions from the parent account.
    effective :: (Core.Maybe [Core.Text])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Webproperty_Permissions' with the minimum fields required to make a request.
newWebproperty_Permissions ::
  Webproperty_Permissions
newWebproperty_Permissions = Webproperty_Permissions {effective = Core.Nothing}

instance Core.FromJSON Webproperty_Permissions where
  parseJSON =
    Core.withObject
      "Webproperty_Permissions"
      ( \o ->
          Webproperty_Permissions
            Core.<$> (o Core..:? "effective" Core..!= Core.mempty)
      )

instance Core.ToJSON Webproperty_Permissions where
  toJSON Webproperty_Permissions {..} =
    Core.object
      ( Core.catMaybes
          [("effective" Core..=) Core.<$> effective]
      )
