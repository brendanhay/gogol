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
-- Module      : Gogol.Logging
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Writes log entries and manages your Cloud Logging configuration.
--
-- /See:/ <https://cloud.google.com/logging/docs/ Cloud Logging API Reference>
module Gogol.Logging
  ( -- * Configuration
    loggingService,

    -- * OAuth Scopes
    CloudPlatform'FullControl,
    CloudPlatform'ReadOnly,
    Logging'Admin,
    Logging'Read,
    Logging'Write,

    -- * Resources

    -- ** logging.billingAccounts.buckets.get
    LoggingBillingAccountsBucketsGetResource,
    LoggingBillingAccountsBucketsGet (..),
    newLoggingBillingAccountsBucketsGet,

    -- ** logging.billingAccounts.buckets.views.get
    LoggingBillingAccountsBucketsViewsGetResource,
    LoggingBillingAccountsBucketsViewsGet (..),
    newLoggingBillingAccountsBucketsViewsGet,

    -- ** logging.billingAccounts.exclusions.create
    LoggingBillingAccountsExclusionsCreateResource,
    LoggingBillingAccountsExclusionsCreate (..),
    newLoggingBillingAccountsExclusionsCreate,

    -- ** logging.billingAccounts.exclusions.delete
    LoggingBillingAccountsExclusionsDeleteResource,
    LoggingBillingAccountsExclusionsDelete (..),
    newLoggingBillingAccountsExclusionsDelete,

    -- ** logging.billingAccounts.exclusions.get
    LoggingBillingAccountsExclusionsGetResource,
    LoggingBillingAccountsExclusionsGet (..),
    newLoggingBillingAccountsExclusionsGet,

    -- ** logging.billingAccounts.exclusions.list
    LoggingBillingAccountsExclusionsListResource,
    LoggingBillingAccountsExclusionsList (..),
    newLoggingBillingAccountsExclusionsList,

    -- ** logging.billingAccounts.exclusions.patch
    LoggingBillingAccountsExclusionsPatchResource,
    LoggingBillingAccountsExclusionsPatch (..),
    newLoggingBillingAccountsExclusionsPatch,

    -- ** logging.billingAccounts.getCmekSettings
    LoggingBillingAccountsGetCmekSettingsResource,
    LoggingBillingAccountsGetCmekSettings (..),
    newLoggingBillingAccountsGetCmekSettings,

    -- ** logging.billingAccounts.getSettings
    LoggingBillingAccountsGetSettingsResource,
    LoggingBillingAccountsGetSettings (..),
    newLoggingBillingAccountsGetSettings,

    -- ** logging.billingAccounts.locations.buckets.create
    LoggingBillingAccountsLocationsBucketsCreateResource,
    LoggingBillingAccountsLocationsBucketsCreate (..),
    newLoggingBillingAccountsLocationsBucketsCreate,

    -- ** logging.billingAccounts.locations.buckets.delete
    LoggingBillingAccountsLocationsBucketsDeleteResource,
    LoggingBillingAccountsLocationsBucketsDelete (..),
    newLoggingBillingAccountsLocationsBucketsDelete,

    -- ** logging.billingAccounts.locations.buckets.list
    LoggingBillingAccountsLocationsBucketsListResource,
    LoggingBillingAccountsLocationsBucketsList (..),
    newLoggingBillingAccountsLocationsBucketsList,

    -- ** logging.billingAccounts.locations.buckets.patch
    LoggingBillingAccountsLocationsBucketsPatchResource,
    LoggingBillingAccountsLocationsBucketsPatch (..),
    newLoggingBillingAccountsLocationsBucketsPatch,

    -- ** logging.billingAccounts.locations.buckets.undelete
    LoggingBillingAccountsLocationsBucketsUndeleteResource,
    LoggingBillingAccountsLocationsBucketsUndelete (..),
    newLoggingBillingAccountsLocationsBucketsUndelete,

    -- ** logging.billingAccounts.locations.buckets.views.create
    LoggingBillingAccountsLocationsBucketsViewsCreateResource,
    LoggingBillingAccountsLocationsBucketsViewsCreate (..),
    newLoggingBillingAccountsLocationsBucketsViewsCreate,

    -- ** logging.billingAccounts.locations.buckets.views.delete
    LoggingBillingAccountsLocationsBucketsViewsDeleteResource,
    LoggingBillingAccountsLocationsBucketsViewsDelete (..),
    newLoggingBillingAccountsLocationsBucketsViewsDelete,

    -- ** logging.billingAccounts.locations.buckets.views.list
    LoggingBillingAccountsLocationsBucketsViewsListResource,
    LoggingBillingAccountsLocationsBucketsViewsList (..),
    newLoggingBillingAccountsLocationsBucketsViewsList,

    -- ** logging.billingAccounts.locations.buckets.views.patch
    LoggingBillingAccountsLocationsBucketsViewsPatchResource,
    LoggingBillingAccountsLocationsBucketsViewsPatch (..),
    newLoggingBillingAccountsLocationsBucketsViewsPatch,

    -- ** logging.billingAccounts.locations.get
    LoggingBillingAccountsLocationsGetResource,
    LoggingBillingAccountsLocationsGet (..),
    newLoggingBillingAccountsLocationsGet,

    -- ** logging.billingAccounts.locations.list
    LoggingBillingAccountsLocationsListResource,
    LoggingBillingAccountsLocationsList (..),
    newLoggingBillingAccountsLocationsList,

    -- ** logging.billingAccounts.locations.operations.cancel
    LoggingBillingAccountsLocationsOperationsCancelResource,
    LoggingBillingAccountsLocationsOperationsCancel (..),
    newLoggingBillingAccountsLocationsOperationsCancel,

    -- ** logging.billingAccounts.locations.operations.list
    LoggingBillingAccountsLocationsOperationsListResource,
    LoggingBillingAccountsLocationsOperationsList (..),
    newLoggingBillingAccountsLocationsOperationsList,

    -- ** logging.billingAccounts.logs.delete
    LoggingBillingAccountsLogsDeleteResource,
    LoggingBillingAccountsLogsDelete (..),
    newLoggingBillingAccountsLogsDelete,

    -- ** logging.billingAccounts.logs.list
    LoggingBillingAccountsLogsListResource,
    LoggingBillingAccountsLogsList (..),
    newLoggingBillingAccountsLogsList,

    -- ** logging.billingAccounts.operations.get
    LoggingBillingAccountsOperationsGetResource,
    LoggingBillingAccountsOperationsGet (..),
    newLoggingBillingAccountsOperationsGet,

    -- ** logging.billingAccounts.sinks.create
    LoggingBillingAccountsSinksCreateResource,
    LoggingBillingAccountsSinksCreate (..),
    newLoggingBillingAccountsSinksCreate,

    -- ** logging.billingAccounts.sinks.delete
    LoggingBillingAccountsSinksDeleteResource,
    LoggingBillingAccountsSinksDelete (..),
    newLoggingBillingAccountsSinksDelete,

    -- ** logging.billingAccounts.sinks.get
    LoggingBillingAccountsSinksGetResource,
    LoggingBillingAccountsSinksGet (..),
    newLoggingBillingAccountsSinksGet,

    -- ** logging.billingAccounts.sinks.list
    LoggingBillingAccountsSinksListResource,
    LoggingBillingAccountsSinksList (..),
    newLoggingBillingAccountsSinksList,

    -- ** logging.billingAccounts.sinks.patch
    LoggingBillingAccountsSinksPatchResource,
    LoggingBillingAccountsSinksPatch (..),
    newLoggingBillingAccountsSinksPatch,

    -- ** logging.billingAccounts.sinks.update
    LoggingBillingAccountsSinksUpdateResource,
    LoggingBillingAccountsSinksUpdate (..),
    newLoggingBillingAccountsSinksUpdate,

    -- ** logging.entries.copy
    LoggingEntriesCopyResource,
    LoggingEntriesCopy (..),
    newLoggingEntriesCopy,

    -- ** logging.entries.list
    LoggingEntriesListResource,
    LoggingEntriesList (..),
    newLoggingEntriesList,

    -- ** logging.entries.tail
    LoggingEntriesTailResource,
    LoggingEntriesTail (..),
    newLoggingEntriesTail,

    -- ** logging.entries.write
    LoggingEntriesWriteResource,
    LoggingEntriesWrite (..),
    newLoggingEntriesWrite,

    -- ** logging.exclusions.create
    LoggingExclusionsCreateResource,
    LoggingExclusionsCreate (..),
    newLoggingExclusionsCreate,

    -- ** logging.exclusions.delete
    LoggingExclusionsDeleteResource,
    LoggingExclusionsDelete (..),
    newLoggingExclusionsDelete,

    -- ** logging.exclusions.get
    LoggingExclusionsGetResource,
    LoggingExclusionsGet (..),
    newLoggingExclusionsGet,

    -- ** logging.exclusions.list
    LoggingExclusionsListResource,
    LoggingExclusionsList (..),
    newLoggingExclusionsList,

    -- ** logging.exclusions.patch
    LoggingExclusionsPatchResource,
    LoggingExclusionsPatch (..),
    newLoggingExclusionsPatch,

    -- ** logging.folders.exclusions.create
    LoggingFoldersExclusionsCreateResource,
    LoggingFoldersExclusionsCreate (..),
    newLoggingFoldersExclusionsCreate,

    -- ** logging.folders.exclusions.delete
    LoggingFoldersExclusionsDeleteResource,
    LoggingFoldersExclusionsDelete (..),
    newLoggingFoldersExclusionsDelete,

    -- ** logging.folders.exclusions.get
    LoggingFoldersExclusionsGetResource,
    LoggingFoldersExclusionsGet (..),
    newLoggingFoldersExclusionsGet,

    -- ** logging.folders.exclusions.list
    LoggingFoldersExclusionsListResource,
    LoggingFoldersExclusionsList (..),
    newLoggingFoldersExclusionsList,

    -- ** logging.folders.exclusions.patch
    LoggingFoldersExclusionsPatchResource,
    LoggingFoldersExclusionsPatch (..),
    newLoggingFoldersExclusionsPatch,

    -- ** logging.folders.getCmekSettings
    LoggingFoldersGetCmekSettingsResource,
    LoggingFoldersGetCmekSettings (..),
    newLoggingFoldersGetCmekSettings,

    -- ** logging.folders.getSettings
    LoggingFoldersGetSettingsResource,
    LoggingFoldersGetSettings (..),
    newLoggingFoldersGetSettings,

    -- ** logging.folders.locations.buckets.create
    LoggingFoldersLocationsBucketsCreateResource,
    LoggingFoldersLocationsBucketsCreate (..),
    newLoggingFoldersLocationsBucketsCreate,

    -- ** logging.folders.locations.buckets.delete
    LoggingFoldersLocationsBucketsDeleteResource,
    LoggingFoldersLocationsBucketsDelete (..),
    newLoggingFoldersLocationsBucketsDelete,

    -- ** logging.folders.locations.buckets.get
    LoggingFoldersLocationsBucketsGetResource,
    LoggingFoldersLocationsBucketsGet (..),
    newLoggingFoldersLocationsBucketsGet,

    -- ** logging.folders.locations.buckets.list
    LoggingFoldersLocationsBucketsListResource,
    LoggingFoldersLocationsBucketsList (..),
    newLoggingFoldersLocationsBucketsList,

    -- ** logging.folders.locations.buckets.patch
    LoggingFoldersLocationsBucketsPatchResource,
    LoggingFoldersLocationsBucketsPatch (..),
    newLoggingFoldersLocationsBucketsPatch,

    -- ** logging.folders.locations.buckets.undelete
    LoggingFoldersLocationsBucketsUndeleteResource,
    LoggingFoldersLocationsBucketsUndelete (..),
    newLoggingFoldersLocationsBucketsUndelete,

    -- ** logging.folders.locations.buckets.views.create
    LoggingFoldersLocationsBucketsViewsCreateResource,
    LoggingFoldersLocationsBucketsViewsCreate (..),
    newLoggingFoldersLocationsBucketsViewsCreate,

    -- ** logging.folders.locations.buckets.views.delete
    LoggingFoldersLocationsBucketsViewsDeleteResource,
    LoggingFoldersLocationsBucketsViewsDelete (..),
    newLoggingFoldersLocationsBucketsViewsDelete,

    -- ** logging.folders.locations.buckets.views.get
    LoggingFoldersLocationsBucketsViewsGetResource,
    LoggingFoldersLocationsBucketsViewsGet (..),
    newLoggingFoldersLocationsBucketsViewsGet,

    -- ** logging.folders.locations.buckets.views.list
    LoggingFoldersLocationsBucketsViewsListResource,
    LoggingFoldersLocationsBucketsViewsList (..),
    newLoggingFoldersLocationsBucketsViewsList,

    -- ** logging.folders.locations.buckets.views.patch
    LoggingFoldersLocationsBucketsViewsPatchResource,
    LoggingFoldersLocationsBucketsViewsPatch (..),
    newLoggingFoldersLocationsBucketsViewsPatch,

    -- ** logging.folders.locations.get
    LoggingFoldersLocationsGetResource,
    LoggingFoldersLocationsGet (..),
    newLoggingFoldersLocationsGet,

    -- ** logging.folders.locations.list
    LoggingFoldersLocationsListResource,
    LoggingFoldersLocationsList (..),
    newLoggingFoldersLocationsList,

    -- ** logging.folders.locations.operations.cancel
    LoggingFoldersLocationsOperationsCancelResource,
    LoggingFoldersLocationsOperationsCancel (..),
    newLoggingFoldersLocationsOperationsCancel,

    -- ** logging.folders.locations.operations.get
    LoggingFoldersLocationsOperationsGetResource,
    LoggingFoldersLocationsOperationsGet (..),
    newLoggingFoldersLocationsOperationsGet,

    -- ** logging.folders.locations.operations.list
    LoggingFoldersLocationsOperationsListResource,
    LoggingFoldersLocationsOperationsList (..),
    newLoggingFoldersLocationsOperationsList,

    -- ** logging.folders.logs.delete
    LoggingFoldersLogsDeleteResource,
    LoggingFoldersLogsDelete (..),
    newLoggingFoldersLogsDelete,

    -- ** logging.folders.logs.list
    LoggingFoldersLogsListResource,
    LoggingFoldersLogsList (..),
    newLoggingFoldersLogsList,

    -- ** logging.folders.sinks.create
    LoggingFoldersSinksCreateResource,
    LoggingFoldersSinksCreate (..),
    newLoggingFoldersSinksCreate,

    -- ** logging.folders.sinks.delete
    LoggingFoldersSinksDeleteResource,
    LoggingFoldersSinksDelete (..),
    newLoggingFoldersSinksDelete,

    -- ** logging.folders.sinks.get
    LoggingFoldersSinksGetResource,
    LoggingFoldersSinksGet (..),
    newLoggingFoldersSinksGet,

    -- ** logging.folders.sinks.list
    LoggingFoldersSinksListResource,
    LoggingFoldersSinksList (..),
    newLoggingFoldersSinksList,

    -- ** logging.folders.sinks.patch
    LoggingFoldersSinksPatchResource,
    LoggingFoldersSinksPatch (..),
    newLoggingFoldersSinksPatch,

    -- ** logging.folders.sinks.update
    LoggingFoldersSinksUpdateResource,
    LoggingFoldersSinksUpdate (..),
    newLoggingFoldersSinksUpdate,

    -- ** logging.folders.updateSettings
    LoggingFoldersUpdateSettingsResource,
    LoggingFoldersUpdateSettings (..),
    newLoggingFoldersUpdateSettings,

    -- ** logging.getCmekSettings
    LoggingGetCmekSettingsResource,
    LoggingGetCmekSettings (..),
    newLoggingGetCmekSettings,

    -- ** logging.getSettings
    LoggingGetSettingsResource,
    LoggingGetSettings (..),
    newLoggingGetSettings,

    -- ** logging.locations.buckets.create
    LoggingLocationsBucketsCreateResource,
    LoggingLocationsBucketsCreate (..),
    newLoggingLocationsBucketsCreate,

    -- ** logging.locations.buckets.delete
    LoggingLocationsBucketsDeleteResource,
    LoggingLocationsBucketsDelete (..),
    newLoggingLocationsBucketsDelete,

    -- ** logging.locations.buckets.get
    LoggingLocationsBucketsGetResource,
    LoggingLocationsBucketsGet (..),
    newLoggingLocationsBucketsGet,

    -- ** logging.locations.buckets.list
    LoggingLocationsBucketsListResource,
    LoggingLocationsBucketsList (..),
    newLoggingLocationsBucketsList,

    -- ** logging.locations.buckets.patch
    LoggingLocationsBucketsPatchResource,
    LoggingLocationsBucketsPatch (..),
    newLoggingLocationsBucketsPatch,

    -- ** logging.locations.buckets.undelete
    LoggingLocationsBucketsUndeleteResource,
    LoggingLocationsBucketsUndelete (..),
    newLoggingLocationsBucketsUndelete,

    -- ** logging.locations.buckets.views.create
    LoggingLocationsBucketsViewsCreateResource,
    LoggingLocationsBucketsViewsCreate (..),
    newLoggingLocationsBucketsViewsCreate,

    -- ** logging.locations.buckets.views.delete
    LoggingLocationsBucketsViewsDeleteResource,
    LoggingLocationsBucketsViewsDelete (..),
    newLoggingLocationsBucketsViewsDelete,

    -- ** logging.locations.buckets.views.get
    LoggingLocationsBucketsViewsGetResource,
    LoggingLocationsBucketsViewsGet (..),
    newLoggingLocationsBucketsViewsGet,

    -- ** logging.locations.buckets.views.list
    LoggingLocationsBucketsViewsListResource,
    LoggingLocationsBucketsViewsList (..),
    newLoggingLocationsBucketsViewsList,

    -- ** logging.locations.buckets.views.patch
    LoggingLocationsBucketsViewsPatchResource,
    LoggingLocationsBucketsViewsPatch (..),
    newLoggingLocationsBucketsViewsPatch,

    -- ** logging.locations.get
    LoggingLocationsGetResource,
    LoggingLocationsGet (..),
    newLoggingLocationsGet,

    -- ** logging.locations.list
    LoggingLocationsListResource,
    LoggingLocationsList (..),
    newLoggingLocationsList,

    -- ** logging.locations.operations.cancel
    LoggingLocationsOperationsCancelResource,
    LoggingLocationsOperationsCancel (..),
    newLoggingLocationsOperationsCancel,

    -- ** logging.locations.operations.get
    LoggingLocationsOperationsGetResource,
    LoggingLocationsOperationsGet (..),
    newLoggingLocationsOperationsGet,

    -- ** logging.locations.operations.list
    LoggingLocationsOperationsListResource,
    LoggingLocationsOperationsList (..),
    newLoggingLocationsOperationsList,

    -- ** logging.logs.delete
    LoggingLogsDeleteResource,
    LoggingLogsDelete (..),
    newLoggingLogsDelete,

    -- ** logging.logs.list
    LoggingLogsListResource,
    LoggingLogsList (..),
    newLoggingLogsList,

    -- ** logging.monitoredResourceDescriptors.list
    LoggingMonitoredResourceDescriptorsListResource,
    LoggingMonitoredResourceDescriptorsList (..),
    newLoggingMonitoredResourceDescriptorsList,

    -- ** logging.organizations.exclusions.create
    LoggingOrganizationsExclusionsCreateResource,
    LoggingOrganizationsExclusionsCreate (..),
    newLoggingOrganizationsExclusionsCreate,

    -- ** logging.organizations.exclusions.delete
    LoggingOrganizationsExclusionsDeleteResource,
    LoggingOrganizationsExclusionsDelete (..),
    newLoggingOrganizationsExclusionsDelete,

    -- ** logging.organizations.exclusions.get
    LoggingOrganizationsExclusionsGetResource,
    LoggingOrganizationsExclusionsGet (..),
    newLoggingOrganizationsExclusionsGet,

    -- ** logging.organizations.exclusions.list
    LoggingOrganizationsExclusionsListResource,
    LoggingOrganizationsExclusionsList (..),
    newLoggingOrganizationsExclusionsList,

    -- ** logging.organizations.exclusions.patch
    LoggingOrganizationsExclusionsPatchResource,
    LoggingOrganizationsExclusionsPatch (..),
    newLoggingOrganizationsExclusionsPatch,

    -- ** logging.organizations.getCmekSettings
    LoggingOrganizationsGetCmekSettingsResource,
    LoggingOrganizationsGetCmekSettings (..),
    newLoggingOrganizationsGetCmekSettings,

    -- ** logging.organizations.getSettings
    LoggingOrganizationsGetSettingsResource,
    LoggingOrganizationsGetSettings (..),
    newLoggingOrganizationsGetSettings,

    -- ** logging.organizations.locations.buckets.create
    LoggingOrganizationsLocationsBucketsCreateResource,
    LoggingOrganizationsLocationsBucketsCreate (..),
    newLoggingOrganizationsLocationsBucketsCreate,

    -- ** logging.organizations.locations.buckets.delete
    LoggingOrganizationsLocationsBucketsDeleteResource,
    LoggingOrganizationsLocationsBucketsDelete (..),
    newLoggingOrganizationsLocationsBucketsDelete,

    -- ** logging.organizations.locations.buckets.get
    LoggingOrganizationsLocationsBucketsGetResource,
    LoggingOrganizationsLocationsBucketsGet (..),
    newLoggingOrganizationsLocationsBucketsGet,

    -- ** logging.organizations.locations.buckets.list
    LoggingOrganizationsLocationsBucketsListResource,
    LoggingOrganizationsLocationsBucketsList (..),
    newLoggingOrganizationsLocationsBucketsList,

    -- ** logging.organizations.locations.buckets.patch
    LoggingOrganizationsLocationsBucketsPatchResource,
    LoggingOrganizationsLocationsBucketsPatch (..),
    newLoggingOrganizationsLocationsBucketsPatch,

    -- ** logging.organizations.locations.buckets.undelete
    LoggingOrganizationsLocationsBucketsUndeleteResource,
    LoggingOrganizationsLocationsBucketsUndelete (..),
    newLoggingOrganizationsLocationsBucketsUndelete,

    -- ** logging.organizations.locations.buckets.views.create
    LoggingOrganizationsLocationsBucketsViewsCreateResource,
    LoggingOrganizationsLocationsBucketsViewsCreate (..),
    newLoggingOrganizationsLocationsBucketsViewsCreate,

    -- ** logging.organizations.locations.buckets.views.delete
    LoggingOrganizationsLocationsBucketsViewsDeleteResource,
    LoggingOrganizationsLocationsBucketsViewsDelete (..),
    newLoggingOrganizationsLocationsBucketsViewsDelete,

    -- ** logging.organizations.locations.buckets.views.get
    LoggingOrganizationsLocationsBucketsViewsGetResource,
    LoggingOrganizationsLocationsBucketsViewsGet (..),
    newLoggingOrganizationsLocationsBucketsViewsGet,

    -- ** logging.organizations.locations.buckets.views.list
    LoggingOrganizationsLocationsBucketsViewsListResource,
    LoggingOrganizationsLocationsBucketsViewsList (..),
    newLoggingOrganizationsLocationsBucketsViewsList,

    -- ** logging.organizations.locations.buckets.views.patch
    LoggingOrganizationsLocationsBucketsViewsPatchResource,
    LoggingOrganizationsLocationsBucketsViewsPatch (..),
    newLoggingOrganizationsLocationsBucketsViewsPatch,

    -- ** logging.organizations.locations.get
    LoggingOrganizationsLocationsGetResource,
    LoggingOrganizationsLocationsGet (..),
    newLoggingOrganizationsLocationsGet,

    -- ** logging.organizations.locations.list
    LoggingOrganizationsLocationsListResource,
    LoggingOrganizationsLocationsList (..),
    newLoggingOrganizationsLocationsList,

    -- ** logging.organizations.locations.operations.cancel
    LoggingOrganizationsLocationsOperationsCancelResource,
    LoggingOrganizationsLocationsOperationsCancel (..),
    newLoggingOrganizationsLocationsOperationsCancel,

    -- ** logging.organizations.locations.operations.get
    LoggingOrganizationsLocationsOperationsGetResource,
    LoggingOrganizationsLocationsOperationsGet (..),
    newLoggingOrganizationsLocationsOperationsGet,

    -- ** logging.organizations.locations.operations.list
    LoggingOrganizationsLocationsOperationsListResource,
    LoggingOrganizationsLocationsOperationsList (..),
    newLoggingOrganizationsLocationsOperationsList,

    -- ** logging.organizations.logs.delete
    LoggingOrganizationsLogsDeleteResource,
    LoggingOrganizationsLogsDelete (..),
    newLoggingOrganizationsLogsDelete,

    -- ** logging.organizations.logs.list
    LoggingOrganizationsLogsListResource,
    LoggingOrganizationsLogsList (..),
    newLoggingOrganizationsLogsList,

    -- ** logging.organizations.sinks.create
    LoggingOrganizationsSinksCreateResource,
    LoggingOrganizationsSinksCreate (..),
    newLoggingOrganizationsSinksCreate,

    -- ** logging.organizations.sinks.delete
    LoggingOrganizationsSinksDeleteResource,
    LoggingOrganizationsSinksDelete (..),
    newLoggingOrganizationsSinksDelete,

    -- ** logging.organizations.sinks.get
    LoggingOrganizationsSinksGetResource,
    LoggingOrganizationsSinksGet (..),
    newLoggingOrganizationsSinksGet,

    -- ** logging.organizations.sinks.list
    LoggingOrganizationsSinksListResource,
    LoggingOrganizationsSinksList (..),
    newLoggingOrganizationsSinksList,

    -- ** logging.organizations.sinks.patch
    LoggingOrganizationsSinksPatchResource,
    LoggingOrganizationsSinksPatch (..),
    newLoggingOrganizationsSinksPatch,

    -- ** logging.organizations.sinks.update
    LoggingOrganizationsSinksUpdateResource,
    LoggingOrganizationsSinksUpdate (..),
    newLoggingOrganizationsSinksUpdate,

    -- ** logging.organizations.updateCmekSettings
    LoggingOrganizationsUpdateCmekSettingsResource,
    LoggingOrganizationsUpdateCmekSettings (..),
    newLoggingOrganizationsUpdateCmekSettings,

    -- ** logging.organizations.updateSettings
    LoggingOrganizationsUpdateSettingsResource,
    LoggingOrganizationsUpdateSettings (..),
    newLoggingOrganizationsUpdateSettings,

    -- ** logging.projects.exclusions.create
    LoggingProjectsExclusionsCreateResource,
    LoggingProjectsExclusionsCreate (..),
    newLoggingProjectsExclusionsCreate,

    -- ** logging.projects.exclusions.delete
    LoggingProjectsExclusionsDeleteResource,
    LoggingProjectsExclusionsDelete (..),
    newLoggingProjectsExclusionsDelete,

    -- ** logging.projects.exclusions.get
    LoggingProjectsExclusionsGetResource,
    LoggingProjectsExclusionsGet (..),
    newLoggingProjectsExclusionsGet,

    -- ** logging.projects.exclusions.list
    LoggingProjectsExclusionsListResource,
    LoggingProjectsExclusionsList (..),
    newLoggingProjectsExclusionsList,

    -- ** logging.projects.exclusions.patch
    LoggingProjectsExclusionsPatchResource,
    LoggingProjectsExclusionsPatch (..),
    newLoggingProjectsExclusionsPatch,

    -- ** logging.projects.getCmekSettings
    LoggingProjectsGetCmekSettingsResource,
    LoggingProjectsGetCmekSettings (..),
    newLoggingProjectsGetCmekSettings,

    -- ** logging.projects.getSettings
    LoggingProjectsGetSettingsResource,
    LoggingProjectsGetSettings (..),
    newLoggingProjectsGetSettings,

    -- ** logging.projects.locations.buckets.create
    LoggingProjectsLocationsBucketsCreateResource,
    LoggingProjectsLocationsBucketsCreate (..),
    newLoggingProjectsLocationsBucketsCreate,

    -- ** logging.projects.locations.buckets.delete
    LoggingProjectsLocationsBucketsDeleteResource,
    LoggingProjectsLocationsBucketsDelete (..),
    newLoggingProjectsLocationsBucketsDelete,

    -- ** logging.projects.locations.buckets.get
    LoggingProjectsLocationsBucketsGetResource,
    LoggingProjectsLocationsBucketsGet (..),
    newLoggingProjectsLocationsBucketsGet,

    -- ** logging.projects.locations.buckets.list
    LoggingProjectsLocationsBucketsListResource,
    LoggingProjectsLocationsBucketsList (..),
    newLoggingProjectsLocationsBucketsList,

    -- ** logging.projects.locations.buckets.patch
    LoggingProjectsLocationsBucketsPatchResource,
    LoggingProjectsLocationsBucketsPatch (..),
    newLoggingProjectsLocationsBucketsPatch,

    -- ** logging.projects.locations.buckets.undelete
    LoggingProjectsLocationsBucketsUndeleteResource,
    LoggingProjectsLocationsBucketsUndelete (..),
    newLoggingProjectsLocationsBucketsUndelete,

    -- ** logging.projects.locations.buckets.views.create
    LoggingProjectsLocationsBucketsViewsCreateResource,
    LoggingProjectsLocationsBucketsViewsCreate (..),
    newLoggingProjectsLocationsBucketsViewsCreate,

    -- ** logging.projects.locations.buckets.views.delete
    LoggingProjectsLocationsBucketsViewsDeleteResource,
    LoggingProjectsLocationsBucketsViewsDelete (..),
    newLoggingProjectsLocationsBucketsViewsDelete,

    -- ** logging.projects.locations.buckets.views.get
    LoggingProjectsLocationsBucketsViewsGetResource,
    LoggingProjectsLocationsBucketsViewsGet (..),
    newLoggingProjectsLocationsBucketsViewsGet,

    -- ** logging.projects.locations.buckets.views.list
    LoggingProjectsLocationsBucketsViewsListResource,
    LoggingProjectsLocationsBucketsViewsList (..),
    newLoggingProjectsLocationsBucketsViewsList,

    -- ** logging.projects.locations.buckets.views.patch
    LoggingProjectsLocationsBucketsViewsPatchResource,
    LoggingProjectsLocationsBucketsViewsPatch (..),
    newLoggingProjectsLocationsBucketsViewsPatch,

    -- ** logging.projects.locations.get
    LoggingProjectsLocationsGetResource,
    LoggingProjectsLocationsGet (..),
    newLoggingProjectsLocationsGet,

    -- ** logging.projects.locations.list
    LoggingProjectsLocationsListResource,
    LoggingProjectsLocationsList (..),
    newLoggingProjectsLocationsList,

    -- ** logging.projects.locations.operations.cancel
    LoggingProjectsLocationsOperationsCancelResource,
    LoggingProjectsLocationsOperationsCancel (..),
    newLoggingProjectsLocationsOperationsCancel,

    -- ** logging.projects.locations.operations.get
    LoggingProjectsLocationsOperationsGetResource,
    LoggingProjectsLocationsOperationsGet (..),
    newLoggingProjectsLocationsOperationsGet,

    -- ** logging.projects.locations.operations.list
    LoggingProjectsLocationsOperationsListResource,
    LoggingProjectsLocationsOperationsList (..),
    newLoggingProjectsLocationsOperationsList,

    -- ** logging.projects.logs.delete
    LoggingProjectsLogsDeleteResource,
    LoggingProjectsLogsDelete (..),
    newLoggingProjectsLogsDelete,

    -- ** logging.projects.logs.list
    LoggingProjectsLogsListResource,
    LoggingProjectsLogsList (..),
    newLoggingProjectsLogsList,

    -- ** logging.projects.metrics.create
    LoggingProjectsMetricsCreateResource,
    LoggingProjectsMetricsCreate (..),
    newLoggingProjectsMetricsCreate,

    -- ** logging.projects.metrics.delete
    LoggingProjectsMetricsDeleteResource,
    LoggingProjectsMetricsDelete (..),
    newLoggingProjectsMetricsDelete,

    -- ** logging.projects.metrics.get
    LoggingProjectsMetricsGetResource,
    LoggingProjectsMetricsGet (..),
    newLoggingProjectsMetricsGet,

    -- ** logging.projects.metrics.list
    LoggingProjectsMetricsListResource,
    LoggingProjectsMetricsList (..),
    newLoggingProjectsMetricsList,

    -- ** logging.projects.metrics.update
    LoggingProjectsMetricsUpdateResource,
    LoggingProjectsMetricsUpdate (..),
    newLoggingProjectsMetricsUpdate,

    -- ** logging.projects.sinks.create
    LoggingProjectsSinksCreateResource,
    LoggingProjectsSinksCreate (..),
    newLoggingProjectsSinksCreate,

    -- ** logging.projects.sinks.delete
    LoggingProjectsSinksDeleteResource,
    LoggingProjectsSinksDelete (..),
    newLoggingProjectsSinksDelete,

    -- ** logging.projects.sinks.get
    LoggingProjectsSinksGetResource,
    LoggingProjectsSinksGet (..),
    newLoggingProjectsSinksGet,

    -- ** logging.projects.sinks.list
    LoggingProjectsSinksListResource,
    LoggingProjectsSinksList (..),
    newLoggingProjectsSinksList,

    -- ** logging.projects.sinks.patch
    LoggingProjectsSinksPatchResource,
    LoggingProjectsSinksPatch (..),
    newLoggingProjectsSinksPatch,

    -- ** logging.projects.sinks.update
    LoggingProjectsSinksUpdateResource,
    LoggingProjectsSinksUpdate (..),
    newLoggingProjectsSinksUpdate,

    -- ** logging.sinks.create
    LoggingSinksCreateResource,
    LoggingSinksCreate (..),
    newLoggingSinksCreate,

    -- ** logging.sinks.delete
    LoggingSinksDeleteResource,
    LoggingSinksDelete (..),
    newLoggingSinksDelete,

    -- ** logging.sinks.get
    LoggingSinksGetResource,
    LoggingSinksGet (..),
    newLoggingSinksGet,

    -- ** logging.sinks.list
    LoggingSinksListResource,
    LoggingSinksList (..),
    newLoggingSinksList,

    -- ** logging.sinks.update
    LoggingSinksUpdateResource,
    LoggingSinksUpdate (..),
    newLoggingSinksUpdate,

    -- ** logging.updateCmekSettings
    LoggingUpdateCmekSettingsResource,
    LoggingUpdateCmekSettings (..),
    newLoggingUpdateCmekSettings,

    -- ** logging.updateSettings
    LoggingUpdateSettingsResource,
    LoggingUpdateSettings (..),
    newLoggingUpdateSettings,

    -- * Types

    -- ** Xgafv
    Xgafv (..),

    -- ** BigQueryOptions
    BigQueryOptions (..),
    newBigQueryOptions,

    -- ** BucketOptions
    BucketOptions (..),
    newBucketOptions,

    -- ** CancelOperationRequest
    CancelOperationRequest (..),
    newCancelOperationRequest,

    -- ** CmekSettings
    CmekSettings (..),
    newCmekSettings,

    -- ** CopyLogEntriesMetadata
    CopyLogEntriesMetadata (..),
    newCopyLogEntriesMetadata,

    -- ** CopyLogEntriesMetadata_State
    CopyLogEntriesMetadata_State (..),

    -- ** CopyLogEntriesRequest
    CopyLogEntriesRequest (..),
    newCopyLogEntriesRequest,

    -- ** CopyLogEntriesResponse
    CopyLogEntriesResponse (..),
    newCopyLogEntriesResponse,

    -- ** Empty
    Empty (..),
    newEmpty,

    -- ** Explicit
    Explicit (..),
    newExplicit,

    -- ** Exponential
    Exponential (..),
    newExponential,

    -- ** HttpRequest
    HttpRequest (..),
    newHttpRequest,

    -- ** LabelDescriptor
    LabelDescriptor (..),
    newLabelDescriptor,

    -- ** LabelDescriptor_ValueType
    LabelDescriptor_ValueType (..),

    -- ** Linear
    Linear (..),
    newLinear,

    -- ** ListBucketsResponse
    ListBucketsResponse (..),
    newListBucketsResponse,

    -- ** ListExclusionsResponse
    ListExclusionsResponse (..),
    newListExclusionsResponse,

    -- ** ListLocationsResponse
    ListLocationsResponse (..),
    newListLocationsResponse,

    -- ** ListLogEntriesRequest
    ListLogEntriesRequest (..),
    newListLogEntriesRequest,

    -- ** ListLogEntriesResponse
    ListLogEntriesResponse (..),
    newListLogEntriesResponse,

    -- ** ListLogMetricsResponse
    ListLogMetricsResponse (..),
    newListLogMetricsResponse,

    -- ** ListLogsResponse
    ListLogsResponse (..),
    newListLogsResponse,

    -- ** ListMonitoredResourceDescriptorsResponse
    ListMonitoredResourceDescriptorsResponse (..),
    newListMonitoredResourceDescriptorsResponse,

    -- ** ListOperationsResponse
    ListOperationsResponse (..),
    newListOperationsResponse,

    -- ** ListSinksResponse
    ListSinksResponse (..),
    newListSinksResponse,

    -- ** ListViewsResponse
    ListViewsResponse (..),
    newListViewsResponse,

    -- ** Location
    Location (..),
    newLocation,

    -- ** Location_Labels
    Location_Labels (..),
    newLocation_Labels,

    -- ** Location_Metadata
    Location_Metadata (..),
    newLocation_Metadata,

    -- ** LogBucket
    LogBucket (..),
    newLogBucket,

    -- ** LogBucket_LifecycleState
    LogBucket_LifecycleState (..),

    -- ** LogEntry
    LogEntry (..),
    newLogEntry,

    -- ** LogEntry_JsonPayload
    LogEntry_JsonPayload (..),
    newLogEntry_JsonPayload,

    -- ** LogEntry_Labels
    LogEntry_Labels (..),
    newLogEntry_Labels,

    -- ** LogEntry_ProtoPayload
    LogEntry_ProtoPayload (..),
    newLogEntry_ProtoPayload,

    -- ** LogEntry_Severity
    LogEntry_Severity (..),

    -- ** LogEntryOperation
    LogEntryOperation (..),
    newLogEntryOperation,

    -- ** LogEntrySourceLocation
    LogEntrySourceLocation (..),
    newLogEntrySourceLocation,

    -- ** LogExclusion
    LogExclusion (..),
    newLogExclusion,

    -- ** LogLine
    LogLine (..),
    newLogLine,

    -- ** LogLine_Severity
    LogLine_Severity (..),

    -- ** LogMetric
    LogMetric (..),
    newLogMetric,

    -- ** LogMetric_LabelExtractors
    LogMetric_LabelExtractors (..),
    newLogMetric_LabelExtractors,

    -- ** LogMetric_Version
    LogMetric_Version (..),

    -- ** LogSink
    LogSink (..),
    newLogSink,

    -- ** LogSink_OutputVersionFormat
    LogSink_OutputVersionFormat (..),

    -- ** LogSplit
    LogSplit (..),
    newLogSplit,

    -- ** LogView
    LogView (..),
    newLogView,

    -- ** MetricDescriptor
    MetricDescriptor (..),
    newMetricDescriptor,

    -- ** MetricDescriptor_LaunchStage
    MetricDescriptor_LaunchStage (..),

    -- ** MetricDescriptor_MetricKind
    MetricDescriptor_MetricKind (..),

    -- ** MetricDescriptor_ValueType
    MetricDescriptor_ValueType (..),

    -- ** MetricDescriptorMetadata
    MetricDescriptorMetadata (..),
    newMetricDescriptorMetadata,

    -- ** MetricDescriptorMetadata_LaunchStage
    MetricDescriptorMetadata_LaunchStage (..),

    -- ** MonitoredResource
    MonitoredResource (..),
    newMonitoredResource,

    -- ** MonitoredResource_Labels
    MonitoredResource_Labels (..),
    newMonitoredResource_Labels,

    -- ** MonitoredResourceDescriptor
    MonitoredResourceDescriptor (..),
    newMonitoredResourceDescriptor,

    -- ** MonitoredResourceDescriptor_LaunchStage
    MonitoredResourceDescriptor_LaunchStage (..),

    -- ** MonitoredResourceMetadata
    MonitoredResourceMetadata (..),
    newMonitoredResourceMetadata,

    -- ** MonitoredResourceMetadata_SystemLabels
    MonitoredResourceMetadata_SystemLabels (..),
    newMonitoredResourceMetadata_SystemLabels,

    -- ** MonitoredResourceMetadata_UserLabels
    MonitoredResourceMetadata_UserLabels (..),
    newMonitoredResourceMetadata_UserLabels,

    -- ** Operation
    Operation (..),
    newOperation,

    -- ** Operation_Metadata
    Operation_Metadata (..),
    newOperation_Metadata,

    -- ** Operation_Response
    Operation_Response (..),
    newOperation_Response,

    -- ** RequestLog
    RequestLog (..),
    newRequestLog,

    -- ** Settings
    Settings (..),
    newSettings,

    -- ** SourceLocation
    SourceLocation (..),
    newSourceLocation,

    -- ** SourceReference
    SourceReference (..),
    newSourceReference,

    -- ** Status
    Status (..),
    newStatus,

    -- ** Status_DetailsItem
    Status_DetailsItem (..),
    newStatus_DetailsItem,

    -- ** SuppressionInfo
    SuppressionInfo (..),
    newSuppressionInfo,

    -- ** SuppressionInfo_Reason
    SuppressionInfo_Reason (..),

    -- ** TailLogEntriesRequest
    TailLogEntriesRequest (..),
    newTailLogEntriesRequest,

    -- ** TailLogEntriesResponse
    TailLogEntriesResponse (..),
    newTailLogEntriesResponse,

    -- ** UndeleteBucketRequest
    UndeleteBucketRequest (..),
    newUndeleteBucketRequest,

    -- ** WriteLogEntriesRequest
    WriteLogEntriesRequest (..),
    newWriteLogEntriesRequest,

    -- ** WriteLogEntriesRequest_Labels
    WriteLogEntriesRequest_Labels (..),
    newWriteLogEntriesRequest_Labels,

    -- ** WriteLogEntriesResponse
    WriteLogEntriesResponse (..),
    newWriteLogEntriesResponse,
  )
where

import Gogol.Logging.BillingAccounts.Buckets.Get
import Gogol.Logging.BillingAccounts.Buckets.Views.Get
import Gogol.Logging.BillingAccounts.Exclusions.Create
import Gogol.Logging.BillingAccounts.Exclusions.Delete
import Gogol.Logging.BillingAccounts.Exclusions.Get
import Gogol.Logging.BillingAccounts.Exclusions.List
import Gogol.Logging.BillingAccounts.Exclusions.Patch
import Gogol.Logging.BillingAccounts.GetCmekSettings
import Gogol.Logging.BillingAccounts.GetSettings
import Gogol.Logging.BillingAccounts.Locations.Buckets.Create
import Gogol.Logging.BillingAccounts.Locations.Buckets.Delete
import Gogol.Logging.BillingAccounts.Locations.Buckets.List
import Gogol.Logging.BillingAccounts.Locations.Buckets.Patch
import Gogol.Logging.BillingAccounts.Locations.Buckets.Undelete
import Gogol.Logging.BillingAccounts.Locations.Buckets.Views.Create
import Gogol.Logging.BillingAccounts.Locations.Buckets.Views.Delete
import Gogol.Logging.BillingAccounts.Locations.Buckets.Views.List
import Gogol.Logging.BillingAccounts.Locations.Buckets.Views.Patch
import Gogol.Logging.BillingAccounts.Locations.Get
import Gogol.Logging.BillingAccounts.Locations.List
import Gogol.Logging.BillingAccounts.Locations.Operations.Cancel
import Gogol.Logging.BillingAccounts.Locations.Operations.List
import Gogol.Logging.BillingAccounts.Logs.Delete
import Gogol.Logging.BillingAccounts.Logs.List
import Gogol.Logging.BillingAccounts.Operations.Get
import Gogol.Logging.BillingAccounts.Sinks.Create
import Gogol.Logging.BillingAccounts.Sinks.Delete
import Gogol.Logging.BillingAccounts.Sinks.Get
import Gogol.Logging.BillingAccounts.Sinks.List
import Gogol.Logging.BillingAccounts.Sinks.Patch
import Gogol.Logging.BillingAccounts.Sinks.Update
import Gogol.Logging.Entries.Copy
import Gogol.Logging.Entries.List
import Gogol.Logging.Entries.Tail
import Gogol.Logging.Entries.Write
import Gogol.Logging.Exclusions.Create
import Gogol.Logging.Exclusions.Delete
import Gogol.Logging.Exclusions.Get
import Gogol.Logging.Exclusions.List
import Gogol.Logging.Exclusions.Patch
import Gogol.Logging.Folders.Exclusions.Create
import Gogol.Logging.Folders.Exclusions.Delete
import Gogol.Logging.Folders.Exclusions.Get
import Gogol.Logging.Folders.Exclusions.List
import Gogol.Logging.Folders.Exclusions.Patch
import Gogol.Logging.Folders.GetCmekSettings
import Gogol.Logging.Folders.GetSettings
import Gogol.Logging.Folders.Locations.Buckets.Create
import Gogol.Logging.Folders.Locations.Buckets.Delete
import Gogol.Logging.Folders.Locations.Buckets.Get
import Gogol.Logging.Folders.Locations.Buckets.List
import Gogol.Logging.Folders.Locations.Buckets.Patch
import Gogol.Logging.Folders.Locations.Buckets.Undelete
import Gogol.Logging.Folders.Locations.Buckets.Views.Create
import Gogol.Logging.Folders.Locations.Buckets.Views.Delete
import Gogol.Logging.Folders.Locations.Buckets.Views.Get
import Gogol.Logging.Folders.Locations.Buckets.Views.List
import Gogol.Logging.Folders.Locations.Buckets.Views.Patch
import Gogol.Logging.Folders.Locations.Get
import Gogol.Logging.Folders.Locations.List
import Gogol.Logging.Folders.Locations.Operations.Cancel
import Gogol.Logging.Folders.Locations.Operations.Get
import Gogol.Logging.Folders.Locations.Operations.List
import Gogol.Logging.Folders.Logs.Delete
import Gogol.Logging.Folders.Logs.List
import Gogol.Logging.Folders.Sinks.Create
import Gogol.Logging.Folders.Sinks.Delete
import Gogol.Logging.Folders.Sinks.Get
import Gogol.Logging.Folders.Sinks.List
import Gogol.Logging.Folders.Sinks.Patch
import Gogol.Logging.Folders.Sinks.Update
import Gogol.Logging.Folders.UpdateSettings
import Gogol.Logging.GetCmekSettings
import Gogol.Logging.GetSettings
import Gogol.Logging.Locations.Buckets.Create
import Gogol.Logging.Locations.Buckets.Delete
import Gogol.Logging.Locations.Buckets.Get
import Gogol.Logging.Locations.Buckets.List
import Gogol.Logging.Locations.Buckets.Patch
import Gogol.Logging.Locations.Buckets.Undelete
import Gogol.Logging.Locations.Buckets.Views.Create
import Gogol.Logging.Locations.Buckets.Views.Delete
import Gogol.Logging.Locations.Buckets.Views.Get
import Gogol.Logging.Locations.Buckets.Views.List
import Gogol.Logging.Locations.Buckets.Views.Patch
import Gogol.Logging.Locations.Get
import Gogol.Logging.Locations.List
import Gogol.Logging.Locations.Operations.Cancel
import Gogol.Logging.Locations.Operations.Get
import Gogol.Logging.Locations.Operations.List
import Gogol.Logging.Logs.Delete
import Gogol.Logging.Logs.List
import Gogol.Logging.MonitoredResourceDescriptors.List
import Gogol.Logging.Organizations.Exclusions.Create
import Gogol.Logging.Organizations.Exclusions.Delete
import Gogol.Logging.Organizations.Exclusions.Get
import Gogol.Logging.Organizations.Exclusions.List
import Gogol.Logging.Organizations.Exclusions.Patch
import Gogol.Logging.Organizations.GetCmekSettings
import Gogol.Logging.Organizations.GetSettings
import Gogol.Logging.Organizations.Locations.Buckets.Create
import Gogol.Logging.Organizations.Locations.Buckets.Delete
import Gogol.Logging.Organizations.Locations.Buckets.Get
import Gogol.Logging.Organizations.Locations.Buckets.List
import Gogol.Logging.Organizations.Locations.Buckets.Patch
import Gogol.Logging.Organizations.Locations.Buckets.Undelete
import Gogol.Logging.Organizations.Locations.Buckets.Views.Create
import Gogol.Logging.Organizations.Locations.Buckets.Views.Delete
import Gogol.Logging.Organizations.Locations.Buckets.Views.Get
import Gogol.Logging.Organizations.Locations.Buckets.Views.List
import Gogol.Logging.Organizations.Locations.Buckets.Views.Patch
import Gogol.Logging.Organizations.Locations.Get
import Gogol.Logging.Organizations.Locations.List
import Gogol.Logging.Organizations.Locations.Operations.Cancel
import Gogol.Logging.Organizations.Locations.Operations.Get
import Gogol.Logging.Organizations.Locations.Operations.List
import Gogol.Logging.Organizations.Logs.Delete
import Gogol.Logging.Organizations.Logs.List
import Gogol.Logging.Organizations.Sinks.Create
import Gogol.Logging.Organizations.Sinks.Delete
import Gogol.Logging.Organizations.Sinks.Get
import Gogol.Logging.Organizations.Sinks.List
import Gogol.Logging.Organizations.Sinks.Patch
import Gogol.Logging.Organizations.Sinks.Update
import Gogol.Logging.Organizations.UpdateCmekSettings
import Gogol.Logging.Organizations.UpdateSettings
import Gogol.Logging.Projects.Exclusions.Create
import Gogol.Logging.Projects.Exclusions.Delete
import Gogol.Logging.Projects.Exclusions.Get
import Gogol.Logging.Projects.Exclusions.List
import Gogol.Logging.Projects.Exclusions.Patch
import Gogol.Logging.Projects.GetCmekSettings
import Gogol.Logging.Projects.GetSettings
import Gogol.Logging.Projects.Locations.Buckets.Create
import Gogol.Logging.Projects.Locations.Buckets.Delete
import Gogol.Logging.Projects.Locations.Buckets.Get
import Gogol.Logging.Projects.Locations.Buckets.List
import Gogol.Logging.Projects.Locations.Buckets.Patch
import Gogol.Logging.Projects.Locations.Buckets.Undelete
import Gogol.Logging.Projects.Locations.Buckets.Views.Create
import Gogol.Logging.Projects.Locations.Buckets.Views.Delete
import Gogol.Logging.Projects.Locations.Buckets.Views.Get
import Gogol.Logging.Projects.Locations.Buckets.Views.List
import Gogol.Logging.Projects.Locations.Buckets.Views.Patch
import Gogol.Logging.Projects.Locations.Get
import Gogol.Logging.Projects.Locations.List
import Gogol.Logging.Projects.Locations.Operations.Cancel
import Gogol.Logging.Projects.Locations.Operations.Get
import Gogol.Logging.Projects.Locations.Operations.List
import Gogol.Logging.Projects.Logs.Delete
import Gogol.Logging.Projects.Logs.List
import Gogol.Logging.Projects.Metrics.Create
import Gogol.Logging.Projects.Metrics.Delete
import Gogol.Logging.Projects.Metrics.Get
import Gogol.Logging.Projects.Metrics.List
import Gogol.Logging.Projects.Metrics.Update
import Gogol.Logging.Projects.Sinks.Create
import Gogol.Logging.Projects.Sinks.Delete
import Gogol.Logging.Projects.Sinks.Get
import Gogol.Logging.Projects.Sinks.List
import Gogol.Logging.Projects.Sinks.Patch
import Gogol.Logging.Projects.Sinks.Update
import Gogol.Logging.Sinks.Create
import Gogol.Logging.Sinks.Delete
import Gogol.Logging.Sinks.Get
import Gogol.Logging.Sinks.List
import Gogol.Logging.Sinks.Update
import Gogol.Logging.Types
import Gogol.Logging.UpdateCmekSettings
import Gogol.Logging.UpdateSettings
