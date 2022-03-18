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
    (
    -- * Configuration
      loggingService

    -- * OAuth Scopes
    , cloudPlatformScope
    , cloudPlatformReadOnlyScope
    , loggingAdminScope
    , loggingReadScope
    , loggingWriteScope

    -- * Resources

    -- ** logging.billingAccounts.buckets.get
    , LoggingBillingAccountsBucketsGetResource
    , newLoggingBillingAccountsBucketsGet
    , LoggingBillingAccountsBucketsGet

    -- ** logging.billingAccounts.buckets.views.get
    , LoggingBillingAccountsBucketsViewsGetResource
    , newLoggingBillingAccountsBucketsViewsGet
    , LoggingBillingAccountsBucketsViewsGet

    -- ** logging.billingAccounts.exclusions.create
    , LoggingBillingAccountsExclusionsCreateResource
    , newLoggingBillingAccountsExclusionsCreate
    , LoggingBillingAccountsExclusionsCreate

    -- ** logging.billingAccounts.exclusions.delete
    , LoggingBillingAccountsExclusionsDeleteResource
    , newLoggingBillingAccountsExclusionsDelete
    , LoggingBillingAccountsExclusionsDelete

    -- ** logging.billingAccounts.exclusions.get
    , LoggingBillingAccountsExclusionsGetResource
    , newLoggingBillingAccountsExclusionsGet
    , LoggingBillingAccountsExclusionsGet

    -- ** logging.billingAccounts.exclusions.list
    , LoggingBillingAccountsExclusionsListResource
    , newLoggingBillingAccountsExclusionsList
    , LoggingBillingAccountsExclusionsList

    -- ** logging.billingAccounts.exclusions.patch
    , LoggingBillingAccountsExclusionsPatchResource
    , newLoggingBillingAccountsExclusionsPatch
    , LoggingBillingAccountsExclusionsPatch

    -- ** logging.billingAccounts.getCmekSettings
    , LoggingBillingAccountsGetCmekSettingsResource
    , newLoggingBillingAccountsGetCmekSettings
    , LoggingBillingAccountsGetCmekSettings

    -- ** logging.billingAccounts.getSettings
    , LoggingBillingAccountsGetSettingsResource
    , newLoggingBillingAccountsGetSettings
    , LoggingBillingAccountsGetSettings

    -- ** logging.billingAccounts.locations.buckets.create
    , LoggingBillingAccountsLocationsBucketsCreateResource
    , newLoggingBillingAccountsLocationsBucketsCreate
    , LoggingBillingAccountsLocationsBucketsCreate

    -- ** logging.billingAccounts.locations.buckets.delete
    , LoggingBillingAccountsLocationsBucketsDeleteResource
    , newLoggingBillingAccountsLocationsBucketsDelete
    , LoggingBillingAccountsLocationsBucketsDelete

    -- ** logging.billingAccounts.locations.buckets.list
    , LoggingBillingAccountsLocationsBucketsListResource
    , newLoggingBillingAccountsLocationsBucketsList
    , LoggingBillingAccountsLocationsBucketsList

    -- ** logging.billingAccounts.locations.buckets.patch
    , LoggingBillingAccountsLocationsBucketsPatchResource
    , newLoggingBillingAccountsLocationsBucketsPatch
    , LoggingBillingAccountsLocationsBucketsPatch

    -- ** logging.billingAccounts.locations.buckets.undelete
    , LoggingBillingAccountsLocationsBucketsUndeleteResource
    , newLoggingBillingAccountsLocationsBucketsUndelete
    , LoggingBillingAccountsLocationsBucketsUndelete

    -- ** logging.billingAccounts.locations.buckets.views.create
    , LoggingBillingAccountsLocationsBucketsViewsCreateResource
    , newLoggingBillingAccountsLocationsBucketsViewsCreate
    , LoggingBillingAccountsLocationsBucketsViewsCreate

    -- ** logging.billingAccounts.locations.buckets.views.delete
    , LoggingBillingAccountsLocationsBucketsViewsDeleteResource
    , newLoggingBillingAccountsLocationsBucketsViewsDelete
    , LoggingBillingAccountsLocationsBucketsViewsDelete

    -- ** logging.billingAccounts.locations.buckets.views.list
    , LoggingBillingAccountsLocationsBucketsViewsListResource
    , newLoggingBillingAccountsLocationsBucketsViewsList
    , LoggingBillingAccountsLocationsBucketsViewsList

    -- ** logging.billingAccounts.locations.buckets.views.patch
    , LoggingBillingAccountsLocationsBucketsViewsPatchResource
    , newLoggingBillingAccountsLocationsBucketsViewsPatch
    , LoggingBillingAccountsLocationsBucketsViewsPatch

    -- ** logging.billingAccounts.locations.get
    , LoggingBillingAccountsLocationsGetResource
    , newLoggingBillingAccountsLocationsGet
    , LoggingBillingAccountsLocationsGet

    -- ** logging.billingAccounts.locations.list
    , LoggingBillingAccountsLocationsListResource
    , newLoggingBillingAccountsLocationsList
    , LoggingBillingAccountsLocationsList

    -- ** logging.billingAccounts.locations.operations.cancel
    , LoggingBillingAccountsLocationsOperationsCancelResource
    , newLoggingBillingAccountsLocationsOperationsCancel
    , LoggingBillingAccountsLocationsOperationsCancel

    -- ** logging.billingAccounts.locations.operations.list
    , LoggingBillingAccountsLocationsOperationsListResource
    , newLoggingBillingAccountsLocationsOperationsList
    , LoggingBillingAccountsLocationsOperationsList

    -- ** logging.billingAccounts.logs.delete
    , LoggingBillingAccountsLogsDeleteResource
    , newLoggingBillingAccountsLogsDelete
    , LoggingBillingAccountsLogsDelete

    -- ** logging.billingAccounts.logs.list
    , LoggingBillingAccountsLogsListResource
    , newLoggingBillingAccountsLogsList
    , LoggingBillingAccountsLogsList

    -- ** logging.billingAccounts.operations.get
    , LoggingBillingAccountsOperationsGetResource
    , newLoggingBillingAccountsOperationsGet
    , LoggingBillingAccountsOperationsGet

    -- ** logging.billingAccounts.sinks.create
    , LoggingBillingAccountsSinksCreateResource
    , newLoggingBillingAccountsSinksCreate
    , LoggingBillingAccountsSinksCreate

    -- ** logging.billingAccounts.sinks.delete
    , LoggingBillingAccountsSinksDeleteResource
    , newLoggingBillingAccountsSinksDelete
    , LoggingBillingAccountsSinksDelete

    -- ** logging.billingAccounts.sinks.get
    , LoggingBillingAccountsSinksGetResource
    , newLoggingBillingAccountsSinksGet
    , LoggingBillingAccountsSinksGet

    -- ** logging.billingAccounts.sinks.list
    , LoggingBillingAccountsSinksListResource
    , newLoggingBillingAccountsSinksList
    , LoggingBillingAccountsSinksList

    -- ** logging.billingAccounts.sinks.patch
    , LoggingBillingAccountsSinksPatchResource
    , newLoggingBillingAccountsSinksPatch
    , LoggingBillingAccountsSinksPatch

    -- ** logging.billingAccounts.sinks.update
    , LoggingBillingAccountsSinksUpdateResource
    , newLoggingBillingAccountsSinksUpdate
    , LoggingBillingAccountsSinksUpdate

    -- ** logging.entries.copy
    , LoggingEntriesCopyResource
    , newLoggingEntriesCopy
    , LoggingEntriesCopy

    -- ** logging.entries.list
    , LoggingEntriesListResource
    , newLoggingEntriesList
    , LoggingEntriesList

    -- ** logging.entries.tail
    , LoggingEntriesTailResource
    , newLoggingEntriesTail
    , LoggingEntriesTail

    -- ** logging.entries.write
    , LoggingEntriesWriteResource
    , newLoggingEntriesWrite
    , LoggingEntriesWrite

    -- ** logging.exclusions.create
    , LoggingExclusionsCreateResource
    , newLoggingExclusionsCreate
    , LoggingExclusionsCreate

    -- ** logging.exclusions.delete
    , LoggingExclusionsDeleteResource
    , newLoggingExclusionsDelete
    , LoggingExclusionsDelete

    -- ** logging.exclusions.get
    , LoggingExclusionsGetResource
    , newLoggingExclusionsGet
    , LoggingExclusionsGet

    -- ** logging.exclusions.list
    , LoggingExclusionsListResource
    , newLoggingExclusionsList
    , LoggingExclusionsList

    -- ** logging.exclusions.patch
    , LoggingExclusionsPatchResource
    , newLoggingExclusionsPatch
    , LoggingExclusionsPatch

    -- ** logging.folders.exclusions.create
    , LoggingFoldersExclusionsCreateResource
    , newLoggingFoldersExclusionsCreate
    , LoggingFoldersExclusionsCreate

    -- ** logging.folders.exclusions.delete
    , LoggingFoldersExclusionsDeleteResource
    , newLoggingFoldersExclusionsDelete
    , LoggingFoldersExclusionsDelete

    -- ** logging.folders.exclusions.get
    , LoggingFoldersExclusionsGetResource
    , newLoggingFoldersExclusionsGet
    , LoggingFoldersExclusionsGet

    -- ** logging.folders.exclusions.list
    , LoggingFoldersExclusionsListResource
    , newLoggingFoldersExclusionsList
    , LoggingFoldersExclusionsList

    -- ** logging.folders.exclusions.patch
    , LoggingFoldersExclusionsPatchResource
    , newLoggingFoldersExclusionsPatch
    , LoggingFoldersExclusionsPatch

    -- ** logging.folders.getCmekSettings
    , LoggingFoldersGetCmekSettingsResource
    , newLoggingFoldersGetCmekSettings
    , LoggingFoldersGetCmekSettings

    -- ** logging.folders.getSettings
    , LoggingFoldersGetSettingsResource
    , newLoggingFoldersGetSettings
    , LoggingFoldersGetSettings

    -- ** logging.folders.locations.buckets.create
    , LoggingFoldersLocationsBucketsCreateResource
    , newLoggingFoldersLocationsBucketsCreate
    , LoggingFoldersLocationsBucketsCreate

    -- ** logging.folders.locations.buckets.delete
    , LoggingFoldersLocationsBucketsDeleteResource
    , newLoggingFoldersLocationsBucketsDelete
    , LoggingFoldersLocationsBucketsDelete

    -- ** logging.folders.locations.buckets.get
    , LoggingFoldersLocationsBucketsGetResource
    , newLoggingFoldersLocationsBucketsGet
    , LoggingFoldersLocationsBucketsGet

    -- ** logging.folders.locations.buckets.list
    , LoggingFoldersLocationsBucketsListResource
    , newLoggingFoldersLocationsBucketsList
    , LoggingFoldersLocationsBucketsList

    -- ** logging.folders.locations.buckets.patch
    , LoggingFoldersLocationsBucketsPatchResource
    , newLoggingFoldersLocationsBucketsPatch
    , LoggingFoldersLocationsBucketsPatch

    -- ** logging.folders.locations.buckets.undelete
    , LoggingFoldersLocationsBucketsUndeleteResource
    , newLoggingFoldersLocationsBucketsUndelete
    , LoggingFoldersLocationsBucketsUndelete

    -- ** logging.folders.locations.buckets.views.create
    , LoggingFoldersLocationsBucketsViewsCreateResource
    , newLoggingFoldersLocationsBucketsViewsCreate
    , LoggingFoldersLocationsBucketsViewsCreate

    -- ** logging.folders.locations.buckets.views.delete
    , LoggingFoldersLocationsBucketsViewsDeleteResource
    , newLoggingFoldersLocationsBucketsViewsDelete
    , LoggingFoldersLocationsBucketsViewsDelete

    -- ** logging.folders.locations.buckets.views.get
    , LoggingFoldersLocationsBucketsViewsGetResource
    , newLoggingFoldersLocationsBucketsViewsGet
    , LoggingFoldersLocationsBucketsViewsGet

    -- ** logging.folders.locations.buckets.views.list
    , LoggingFoldersLocationsBucketsViewsListResource
    , newLoggingFoldersLocationsBucketsViewsList
    , LoggingFoldersLocationsBucketsViewsList

    -- ** logging.folders.locations.buckets.views.patch
    , LoggingFoldersLocationsBucketsViewsPatchResource
    , newLoggingFoldersLocationsBucketsViewsPatch
    , LoggingFoldersLocationsBucketsViewsPatch

    -- ** logging.folders.locations.get
    , LoggingFoldersLocationsGetResource
    , newLoggingFoldersLocationsGet
    , LoggingFoldersLocationsGet

    -- ** logging.folders.locations.list
    , LoggingFoldersLocationsListResource
    , newLoggingFoldersLocationsList
    , LoggingFoldersLocationsList

    -- ** logging.folders.locations.operations.cancel
    , LoggingFoldersLocationsOperationsCancelResource
    , newLoggingFoldersLocationsOperationsCancel
    , LoggingFoldersLocationsOperationsCancel

    -- ** logging.folders.locations.operations.get
    , LoggingFoldersLocationsOperationsGetResource
    , newLoggingFoldersLocationsOperationsGet
    , LoggingFoldersLocationsOperationsGet

    -- ** logging.folders.locations.operations.list
    , LoggingFoldersLocationsOperationsListResource
    , newLoggingFoldersLocationsOperationsList
    , LoggingFoldersLocationsOperationsList

    -- ** logging.folders.logs.delete
    , LoggingFoldersLogsDeleteResource
    , newLoggingFoldersLogsDelete
    , LoggingFoldersLogsDelete

    -- ** logging.folders.logs.list
    , LoggingFoldersLogsListResource
    , newLoggingFoldersLogsList
    , LoggingFoldersLogsList

    -- ** logging.folders.sinks.create
    , LoggingFoldersSinksCreateResource
    , newLoggingFoldersSinksCreate
    , LoggingFoldersSinksCreate

    -- ** logging.folders.sinks.delete
    , LoggingFoldersSinksDeleteResource
    , newLoggingFoldersSinksDelete
    , LoggingFoldersSinksDelete

    -- ** logging.folders.sinks.get
    , LoggingFoldersSinksGetResource
    , newLoggingFoldersSinksGet
    , LoggingFoldersSinksGet

    -- ** logging.folders.sinks.list
    , LoggingFoldersSinksListResource
    , newLoggingFoldersSinksList
    , LoggingFoldersSinksList

    -- ** logging.folders.sinks.patch
    , LoggingFoldersSinksPatchResource
    , newLoggingFoldersSinksPatch
    , LoggingFoldersSinksPatch

    -- ** logging.folders.sinks.update
    , LoggingFoldersSinksUpdateResource
    , newLoggingFoldersSinksUpdate
    , LoggingFoldersSinksUpdate

    -- ** logging.folders.updateSettings
    , LoggingFoldersUpdateSettingsResource
    , newLoggingFoldersUpdateSettings
    , LoggingFoldersUpdateSettings

    -- ** logging.getCmekSettings
    , LoggingGetCmekSettingsResource
    , newLoggingGetCmekSettings
    , LoggingGetCmekSettings

    -- ** logging.getSettings
    , LoggingGetSettingsResource
    , newLoggingGetSettings
    , LoggingGetSettings

    -- ** logging.locations.buckets.create
    , LoggingLocationsBucketsCreateResource
    , newLoggingLocationsBucketsCreate
    , LoggingLocationsBucketsCreate

    -- ** logging.locations.buckets.delete
    , LoggingLocationsBucketsDeleteResource
    , newLoggingLocationsBucketsDelete
    , LoggingLocationsBucketsDelete

    -- ** logging.locations.buckets.get
    , LoggingLocationsBucketsGetResource
    , newLoggingLocationsBucketsGet
    , LoggingLocationsBucketsGet

    -- ** logging.locations.buckets.list
    , LoggingLocationsBucketsListResource
    , newLoggingLocationsBucketsList
    , LoggingLocationsBucketsList

    -- ** logging.locations.buckets.patch
    , LoggingLocationsBucketsPatchResource
    , newLoggingLocationsBucketsPatch
    , LoggingLocationsBucketsPatch

    -- ** logging.locations.buckets.undelete
    , LoggingLocationsBucketsUndeleteResource
    , newLoggingLocationsBucketsUndelete
    , LoggingLocationsBucketsUndelete

    -- ** logging.locations.buckets.views.create
    , LoggingLocationsBucketsViewsCreateResource
    , newLoggingLocationsBucketsViewsCreate
    , LoggingLocationsBucketsViewsCreate

    -- ** logging.locations.buckets.views.delete
    , LoggingLocationsBucketsViewsDeleteResource
    , newLoggingLocationsBucketsViewsDelete
    , LoggingLocationsBucketsViewsDelete

    -- ** logging.locations.buckets.views.get
    , LoggingLocationsBucketsViewsGetResource
    , newLoggingLocationsBucketsViewsGet
    , LoggingLocationsBucketsViewsGet

    -- ** logging.locations.buckets.views.list
    , LoggingLocationsBucketsViewsListResource
    , newLoggingLocationsBucketsViewsList
    , LoggingLocationsBucketsViewsList

    -- ** logging.locations.buckets.views.patch
    , LoggingLocationsBucketsViewsPatchResource
    , newLoggingLocationsBucketsViewsPatch
    , LoggingLocationsBucketsViewsPatch

    -- ** logging.locations.get
    , LoggingLocationsGetResource
    , newLoggingLocationsGet
    , LoggingLocationsGet

    -- ** logging.locations.list
    , LoggingLocationsListResource
    , newLoggingLocationsList
    , LoggingLocationsList

    -- ** logging.locations.operations.cancel
    , LoggingLocationsOperationsCancelResource
    , newLoggingLocationsOperationsCancel
    , LoggingLocationsOperationsCancel

    -- ** logging.locations.operations.get
    , LoggingLocationsOperationsGetResource
    , newLoggingLocationsOperationsGet
    , LoggingLocationsOperationsGet

    -- ** logging.locations.operations.list
    , LoggingLocationsOperationsListResource
    , newLoggingLocationsOperationsList
    , LoggingLocationsOperationsList

    -- ** logging.logs.delete
    , LoggingLogsDeleteResource
    , newLoggingLogsDelete
    , LoggingLogsDelete

    -- ** logging.logs.list
    , LoggingLogsListResource
    , newLoggingLogsList
    , LoggingLogsList

    -- ** logging.monitoredResourceDescriptors.list
    , LoggingMonitoredResourceDescriptorsListResource
    , newLoggingMonitoredResourceDescriptorsList
    , LoggingMonitoredResourceDescriptorsList

    -- ** logging.organizations.exclusions.create
    , LoggingOrganizationsExclusionsCreateResource
    , newLoggingOrganizationsExclusionsCreate
    , LoggingOrganizationsExclusionsCreate

    -- ** logging.organizations.exclusions.delete
    , LoggingOrganizationsExclusionsDeleteResource
    , newLoggingOrganizationsExclusionsDelete
    , LoggingOrganizationsExclusionsDelete

    -- ** logging.organizations.exclusions.get
    , LoggingOrganizationsExclusionsGetResource
    , newLoggingOrganizationsExclusionsGet
    , LoggingOrganizationsExclusionsGet

    -- ** logging.organizations.exclusions.list
    , LoggingOrganizationsExclusionsListResource
    , newLoggingOrganizationsExclusionsList
    , LoggingOrganizationsExclusionsList

    -- ** logging.organizations.exclusions.patch
    , LoggingOrganizationsExclusionsPatchResource
    , newLoggingOrganizationsExclusionsPatch
    , LoggingOrganizationsExclusionsPatch

    -- ** logging.organizations.getCmekSettings
    , LoggingOrganizationsGetCmekSettingsResource
    , newLoggingOrganizationsGetCmekSettings
    , LoggingOrganizationsGetCmekSettings

    -- ** logging.organizations.getSettings
    , LoggingOrganizationsGetSettingsResource
    , newLoggingOrganizationsGetSettings
    , LoggingOrganizationsGetSettings

    -- ** logging.organizations.locations.buckets.create
    , LoggingOrganizationsLocationsBucketsCreateResource
    , newLoggingOrganizationsLocationsBucketsCreate
    , LoggingOrganizationsLocationsBucketsCreate

    -- ** logging.organizations.locations.buckets.delete
    , LoggingOrganizationsLocationsBucketsDeleteResource
    , newLoggingOrganizationsLocationsBucketsDelete
    , LoggingOrganizationsLocationsBucketsDelete

    -- ** logging.organizations.locations.buckets.get
    , LoggingOrganizationsLocationsBucketsGetResource
    , newLoggingOrganizationsLocationsBucketsGet
    , LoggingOrganizationsLocationsBucketsGet

    -- ** logging.organizations.locations.buckets.list
    , LoggingOrganizationsLocationsBucketsListResource
    , newLoggingOrganizationsLocationsBucketsList
    , LoggingOrganizationsLocationsBucketsList

    -- ** logging.organizations.locations.buckets.patch
    , LoggingOrganizationsLocationsBucketsPatchResource
    , newLoggingOrganizationsLocationsBucketsPatch
    , LoggingOrganizationsLocationsBucketsPatch

    -- ** logging.organizations.locations.buckets.undelete
    , LoggingOrganizationsLocationsBucketsUndeleteResource
    , newLoggingOrganizationsLocationsBucketsUndelete
    , LoggingOrganizationsLocationsBucketsUndelete

    -- ** logging.organizations.locations.buckets.views.create
    , LoggingOrganizationsLocationsBucketsViewsCreateResource
    , newLoggingOrganizationsLocationsBucketsViewsCreate
    , LoggingOrganizationsLocationsBucketsViewsCreate

    -- ** logging.organizations.locations.buckets.views.delete
    , LoggingOrganizationsLocationsBucketsViewsDeleteResource
    , newLoggingOrganizationsLocationsBucketsViewsDelete
    , LoggingOrganizationsLocationsBucketsViewsDelete

    -- ** logging.organizations.locations.buckets.views.get
    , LoggingOrganizationsLocationsBucketsViewsGetResource
    , newLoggingOrganizationsLocationsBucketsViewsGet
    , LoggingOrganizationsLocationsBucketsViewsGet

    -- ** logging.organizations.locations.buckets.views.list
    , LoggingOrganizationsLocationsBucketsViewsListResource
    , newLoggingOrganizationsLocationsBucketsViewsList
    , LoggingOrganizationsLocationsBucketsViewsList

    -- ** logging.organizations.locations.buckets.views.patch
    , LoggingOrganizationsLocationsBucketsViewsPatchResource
    , newLoggingOrganizationsLocationsBucketsViewsPatch
    , LoggingOrganizationsLocationsBucketsViewsPatch

    -- ** logging.organizations.locations.get
    , LoggingOrganizationsLocationsGetResource
    , newLoggingOrganizationsLocationsGet
    , LoggingOrganizationsLocationsGet

    -- ** logging.organizations.locations.list
    , LoggingOrganizationsLocationsListResource
    , newLoggingOrganizationsLocationsList
    , LoggingOrganizationsLocationsList

    -- ** logging.organizations.locations.operations.cancel
    , LoggingOrganizationsLocationsOperationsCancelResource
    , newLoggingOrganizationsLocationsOperationsCancel
    , LoggingOrganizationsLocationsOperationsCancel

    -- ** logging.organizations.locations.operations.get
    , LoggingOrganizationsLocationsOperationsGetResource
    , newLoggingOrganizationsLocationsOperationsGet
    , LoggingOrganizationsLocationsOperationsGet

    -- ** logging.organizations.locations.operations.list
    , LoggingOrganizationsLocationsOperationsListResource
    , newLoggingOrganizationsLocationsOperationsList
    , LoggingOrganizationsLocationsOperationsList

    -- ** logging.organizations.logs.delete
    , LoggingOrganizationsLogsDeleteResource
    , newLoggingOrganizationsLogsDelete
    , LoggingOrganizationsLogsDelete

    -- ** logging.organizations.logs.list
    , LoggingOrganizationsLogsListResource
    , newLoggingOrganizationsLogsList
    , LoggingOrganizationsLogsList

    -- ** logging.organizations.sinks.create
    , LoggingOrganizationsSinksCreateResource
    , newLoggingOrganizationsSinksCreate
    , LoggingOrganizationsSinksCreate

    -- ** logging.organizations.sinks.delete
    , LoggingOrganizationsSinksDeleteResource
    , newLoggingOrganizationsSinksDelete
    , LoggingOrganizationsSinksDelete

    -- ** logging.organizations.sinks.get
    , LoggingOrganizationsSinksGetResource
    , newLoggingOrganizationsSinksGet
    , LoggingOrganizationsSinksGet

    -- ** logging.organizations.sinks.list
    , LoggingOrganizationsSinksListResource
    , newLoggingOrganizationsSinksList
    , LoggingOrganizationsSinksList

    -- ** logging.organizations.sinks.patch
    , LoggingOrganizationsSinksPatchResource
    , newLoggingOrganizationsSinksPatch
    , LoggingOrganizationsSinksPatch

    -- ** logging.organizations.sinks.update
    , LoggingOrganizationsSinksUpdateResource
    , newLoggingOrganizationsSinksUpdate
    , LoggingOrganizationsSinksUpdate

    -- ** logging.organizations.updateCmekSettings
    , LoggingOrganizationsUpdateCmekSettingsResource
    , newLoggingOrganizationsUpdateCmekSettings
    , LoggingOrganizationsUpdateCmekSettings

    -- ** logging.organizations.updateSettings
    , LoggingOrganizationsUpdateSettingsResource
    , newLoggingOrganizationsUpdateSettings
    , LoggingOrganizationsUpdateSettings

    -- ** logging.projects.exclusions.create
    , LoggingProjectsExclusionsCreateResource
    , newLoggingProjectsExclusionsCreate
    , LoggingProjectsExclusionsCreate

    -- ** logging.projects.exclusions.delete
    , LoggingProjectsExclusionsDeleteResource
    , newLoggingProjectsExclusionsDelete
    , LoggingProjectsExclusionsDelete

    -- ** logging.projects.exclusions.get
    , LoggingProjectsExclusionsGetResource
    , newLoggingProjectsExclusionsGet
    , LoggingProjectsExclusionsGet

    -- ** logging.projects.exclusions.list
    , LoggingProjectsExclusionsListResource
    , newLoggingProjectsExclusionsList
    , LoggingProjectsExclusionsList

    -- ** logging.projects.exclusions.patch
    , LoggingProjectsExclusionsPatchResource
    , newLoggingProjectsExclusionsPatch
    , LoggingProjectsExclusionsPatch

    -- ** logging.projects.getCmekSettings
    , LoggingProjectsGetCmekSettingsResource
    , newLoggingProjectsGetCmekSettings
    , LoggingProjectsGetCmekSettings

    -- ** logging.projects.getSettings
    , LoggingProjectsGetSettingsResource
    , newLoggingProjectsGetSettings
    , LoggingProjectsGetSettings

    -- ** logging.projects.locations.buckets.create
    , LoggingProjectsLocationsBucketsCreateResource
    , newLoggingProjectsLocationsBucketsCreate
    , LoggingProjectsLocationsBucketsCreate

    -- ** logging.projects.locations.buckets.delete
    , LoggingProjectsLocationsBucketsDeleteResource
    , newLoggingProjectsLocationsBucketsDelete
    , LoggingProjectsLocationsBucketsDelete

    -- ** logging.projects.locations.buckets.get
    , LoggingProjectsLocationsBucketsGetResource
    , newLoggingProjectsLocationsBucketsGet
    , LoggingProjectsLocationsBucketsGet

    -- ** logging.projects.locations.buckets.list
    , LoggingProjectsLocationsBucketsListResource
    , newLoggingProjectsLocationsBucketsList
    , LoggingProjectsLocationsBucketsList

    -- ** logging.projects.locations.buckets.patch
    , LoggingProjectsLocationsBucketsPatchResource
    , newLoggingProjectsLocationsBucketsPatch
    , LoggingProjectsLocationsBucketsPatch

    -- ** logging.projects.locations.buckets.undelete
    , LoggingProjectsLocationsBucketsUndeleteResource
    , newLoggingProjectsLocationsBucketsUndelete
    , LoggingProjectsLocationsBucketsUndelete

    -- ** logging.projects.locations.buckets.views.create
    , LoggingProjectsLocationsBucketsViewsCreateResource
    , newLoggingProjectsLocationsBucketsViewsCreate
    , LoggingProjectsLocationsBucketsViewsCreate

    -- ** logging.projects.locations.buckets.views.delete
    , LoggingProjectsLocationsBucketsViewsDeleteResource
    , newLoggingProjectsLocationsBucketsViewsDelete
    , LoggingProjectsLocationsBucketsViewsDelete

    -- ** logging.projects.locations.buckets.views.get
    , LoggingProjectsLocationsBucketsViewsGetResource
    , newLoggingProjectsLocationsBucketsViewsGet
    , LoggingProjectsLocationsBucketsViewsGet

    -- ** logging.projects.locations.buckets.views.list
    , LoggingProjectsLocationsBucketsViewsListResource
    , newLoggingProjectsLocationsBucketsViewsList
    , LoggingProjectsLocationsBucketsViewsList

    -- ** logging.projects.locations.buckets.views.patch
    , LoggingProjectsLocationsBucketsViewsPatchResource
    , newLoggingProjectsLocationsBucketsViewsPatch
    , LoggingProjectsLocationsBucketsViewsPatch

    -- ** logging.projects.locations.get
    , LoggingProjectsLocationsGetResource
    , newLoggingProjectsLocationsGet
    , LoggingProjectsLocationsGet

    -- ** logging.projects.locations.list
    , LoggingProjectsLocationsListResource
    , newLoggingProjectsLocationsList
    , LoggingProjectsLocationsList

    -- ** logging.projects.locations.operations.cancel
    , LoggingProjectsLocationsOperationsCancelResource
    , newLoggingProjectsLocationsOperationsCancel
    , LoggingProjectsLocationsOperationsCancel

    -- ** logging.projects.locations.operations.get
    , LoggingProjectsLocationsOperationsGetResource
    , newLoggingProjectsLocationsOperationsGet
    , LoggingProjectsLocationsOperationsGet

    -- ** logging.projects.locations.operations.list
    , LoggingProjectsLocationsOperationsListResource
    , newLoggingProjectsLocationsOperationsList
    , LoggingProjectsLocationsOperationsList

    -- ** logging.projects.logs.delete
    , LoggingProjectsLogsDeleteResource
    , newLoggingProjectsLogsDelete
    , LoggingProjectsLogsDelete

    -- ** logging.projects.logs.list
    , LoggingProjectsLogsListResource
    , newLoggingProjectsLogsList
    , LoggingProjectsLogsList

    -- ** logging.projects.metrics.create
    , LoggingProjectsMetricsCreateResource
    , newLoggingProjectsMetricsCreate
    , LoggingProjectsMetricsCreate

    -- ** logging.projects.metrics.delete
    , LoggingProjectsMetricsDeleteResource
    , newLoggingProjectsMetricsDelete
    , LoggingProjectsMetricsDelete

    -- ** logging.projects.metrics.get
    , LoggingProjectsMetricsGetResource
    , newLoggingProjectsMetricsGet
    , LoggingProjectsMetricsGet

    -- ** logging.projects.metrics.list
    , LoggingProjectsMetricsListResource
    , newLoggingProjectsMetricsList
    , LoggingProjectsMetricsList

    -- ** logging.projects.metrics.update
    , LoggingProjectsMetricsUpdateResource
    , newLoggingProjectsMetricsUpdate
    , LoggingProjectsMetricsUpdate

    -- ** logging.projects.sinks.create
    , LoggingProjectsSinksCreateResource
    , newLoggingProjectsSinksCreate
    , LoggingProjectsSinksCreate

    -- ** logging.projects.sinks.delete
    , LoggingProjectsSinksDeleteResource
    , newLoggingProjectsSinksDelete
    , LoggingProjectsSinksDelete

    -- ** logging.projects.sinks.get
    , LoggingProjectsSinksGetResource
    , newLoggingProjectsSinksGet
    , LoggingProjectsSinksGet

    -- ** logging.projects.sinks.list
    , LoggingProjectsSinksListResource
    , newLoggingProjectsSinksList
    , LoggingProjectsSinksList

    -- ** logging.projects.sinks.patch
    , LoggingProjectsSinksPatchResource
    , newLoggingProjectsSinksPatch
    , LoggingProjectsSinksPatch

    -- ** logging.projects.sinks.update
    , LoggingProjectsSinksUpdateResource
    , newLoggingProjectsSinksUpdate
    , LoggingProjectsSinksUpdate

    -- ** logging.sinks.create
    , LoggingSinksCreateResource
    , newLoggingSinksCreate
    , LoggingSinksCreate

    -- ** logging.sinks.delete
    , LoggingSinksDeleteResource
    , newLoggingSinksDelete
    , LoggingSinksDelete

    -- ** logging.sinks.get
    , LoggingSinksGetResource
    , newLoggingSinksGet
    , LoggingSinksGet

    -- ** logging.sinks.list
    , LoggingSinksListResource
    , newLoggingSinksList
    , LoggingSinksList

    -- ** logging.sinks.update
    , LoggingSinksUpdateResource
    , newLoggingSinksUpdate
    , LoggingSinksUpdate

    -- ** logging.updateCmekSettings
    , LoggingUpdateCmekSettingsResource
    , newLoggingUpdateCmekSettings
    , LoggingUpdateCmekSettings

    -- ** logging.updateSettings
    , LoggingUpdateSettingsResource
    , newLoggingUpdateSettings
    , LoggingUpdateSettings

    -- * Types

    -- ** Xgafv
    , Xgafv (..)

    -- ** BigQueryOptions
    , BigQueryOptions (..)
    , newBigQueryOptions

    -- ** BucketOptions
    , BucketOptions (..)
    , newBucketOptions

    -- ** CancelOperationRequest
    , CancelOperationRequest (..)
    , newCancelOperationRequest

    -- ** CmekSettings
    , CmekSettings (..)
    , newCmekSettings

    -- ** CopyLogEntriesMetadata
    , CopyLogEntriesMetadata (..)
    , newCopyLogEntriesMetadata

    -- ** CopyLogEntriesMetadata_State
    , CopyLogEntriesMetadata_State (..)

    -- ** CopyLogEntriesRequest
    , CopyLogEntriesRequest (..)
    , newCopyLogEntriesRequest

    -- ** CopyLogEntriesResponse
    , CopyLogEntriesResponse (..)
    , newCopyLogEntriesResponse

    -- ** Empty
    , Empty (..)
    , newEmpty

    -- ** Explicit
    , Explicit (..)
    , newExplicit

    -- ** Exponential
    , Exponential (..)
    , newExponential

    -- ** HttpRequest
    , HttpRequest (..)
    , newHttpRequest

    -- ** LabelDescriptor
    , LabelDescriptor (..)
    , newLabelDescriptor

    -- ** LabelDescriptor_ValueType
    , LabelDescriptor_ValueType (..)

    -- ** Linear
    , Linear (..)
    , newLinear

    -- ** ListBucketsResponse
    , ListBucketsResponse (..)
    , newListBucketsResponse

    -- ** ListExclusionsResponse
    , ListExclusionsResponse (..)
    , newListExclusionsResponse

    -- ** ListLocationsResponse
    , ListLocationsResponse (..)
    , newListLocationsResponse

    -- ** ListLogEntriesRequest
    , ListLogEntriesRequest (..)
    , newListLogEntriesRequest

    -- ** ListLogEntriesResponse
    , ListLogEntriesResponse (..)
    , newListLogEntriesResponse

    -- ** ListLogMetricsResponse
    , ListLogMetricsResponse (..)
    , newListLogMetricsResponse

    -- ** ListLogsResponse
    , ListLogsResponse (..)
    , newListLogsResponse

    -- ** ListMonitoredResourceDescriptorsResponse
    , ListMonitoredResourceDescriptorsResponse (..)
    , newListMonitoredResourceDescriptorsResponse

    -- ** ListOperationsResponse
    , ListOperationsResponse (..)
    , newListOperationsResponse

    -- ** ListSinksResponse
    , ListSinksResponse (..)
    , newListSinksResponse

    -- ** ListViewsResponse
    , ListViewsResponse (..)
    , newListViewsResponse

    -- ** Location
    , Location (..)
    , newLocation

    -- ** Location_Labels
    , Location_Labels (..)
    , newLocation_Labels

    -- ** Location_Metadata
    , Location_Metadata (..)
    , newLocation_Metadata

    -- ** LogBucket
    , LogBucket (..)
    , newLogBucket

    -- ** LogBucket_LifecycleState
    , LogBucket_LifecycleState (..)

    -- ** LogEntry
    , LogEntry (..)
    , newLogEntry

    -- ** LogEntry_JsonPayload
    , LogEntry_JsonPayload (..)
    , newLogEntry_JsonPayload

    -- ** LogEntry_Labels
    , LogEntry_Labels (..)
    , newLogEntry_Labels

    -- ** LogEntry_ProtoPayload
    , LogEntry_ProtoPayload (..)
    , newLogEntry_ProtoPayload

    -- ** LogEntry_Severity
    , LogEntry_Severity (..)

    -- ** LogEntryOperation
    , LogEntryOperation (..)
    , newLogEntryOperation

    -- ** LogEntrySourceLocation
    , LogEntrySourceLocation (..)
    , newLogEntrySourceLocation

    -- ** LogExclusion
    , LogExclusion (..)
    , newLogExclusion

    -- ** LogLine
    , LogLine (..)
    , newLogLine

    -- ** LogLine_Severity
    , LogLine_Severity (..)

    -- ** LogMetric
    , LogMetric (..)
    , newLogMetric

    -- ** LogMetric_LabelExtractors
    , LogMetric_LabelExtractors (..)
    , newLogMetric_LabelExtractors

    -- ** LogMetric_Version
    , LogMetric_Version (..)

    -- ** LogSink
    , LogSink (..)
    , newLogSink

    -- ** LogSink_OutputVersionFormat
    , LogSink_OutputVersionFormat (..)

    -- ** LogSplit
    , LogSplit (..)
    , newLogSplit

    -- ** LogView
    , LogView (..)
    , newLogView

    -- ** MetricDescriptor
    , MetricDescriptor (..)
    , newMetricDescriptor

    -- ** MetricDescriptor_LaunchStage
    , MetricDescriptor_LaunchStage (..)

    -- ** MetricDescriptor_MetricKind
    , MetricDescriptor_MetricKind (..)

    -- ** MetricDescriptor_ValueType
    , MetricDescriptor_ValueType (..)

    -- ** MetricDescriptorMetadata
    , MetricDescriptorMetadata (..)
    , newMetricDescriptorMetadata

    -- ** MetricDescriptorMetadata_LaunchStage
    , MetricDescriptorMetadata_LaunchStage (..)

    -- ** MonitoredResource
    , MonitoredResource (..)
    , newMonitoredResource

    -- ** MonitoredResource_Labels
    , MonitoredResource_Labels (..)
    , newMonitoredResource_Labels

    -- ** MonitoredResourceDescriptor
    , MonitoredResourceDescriptor (..)
    , newMonitoredResourceDescriptor

    -- ** MonitoredResourceDescriptor_LaunchStage
    , MonitoredResourceDescriptor_LaunchStage (..)

    -- ** MonitoredResourceMetadata
    , MonitoredResourceMetadata (..)
    , newMonitoredResourceMetadata

    -- ** MonitoredResourceMetadata_SystemLabels
    , MonitoredResourceMetadata_SystemLabels (..)
    , newMonitoredResourceMetadata_SystemLabels

    -- ** MonitoredResourceMetadata_UserLabels
    , MonitoredResourceMetadata_UserLabels (..)
    , newMonitoredResourceMetadata_UserLabels

    -- ** Operation
    , Operation (..)
    , newOperation

    -- ** Operation_Metadata
    , Operation_Metadata (..)
    , newOperation_Metadata

    -- ** Operation_Response
    , Operation_Response (..)
    , newOperation_Response

    -- ** RequestLog
    , RequestLog (..)
    , newRequestLog

    -- ** Settings
    , Settings (..)
    , newSettings

    -- ** SourceLocation
    , SourceLocation (..)
    , newSourceLocation

    -- ** SourceReference
    , SourceReference (..)
    , newSourceReference

    -- ** Status
    , Status (..)
    , newStatus

    -- ** Status_DetailsItem
    , Status_DetailsItem (..)
    , newStatus_DetailsItem

    -- ** SuppressionInfo
    , SuppressionInfo (..)
    , newSuppressionInfo

    -- ** SuppressionInfo_Reason
    , SuppressionInfo_Reason (..)

    -- ** TailLogEntriesRequest
    , TailLogEntriesRequest (..)
    , newTailLogEntriesRequest

    -- ** TailLogEntriesResponse
    , TailLogEntriesResponse (..)
    , newTailLogEntriesResponse

    -- ** UndeleteBucketRequest
    , UndeleteBucketRequest (..)
    , newUndeleteBucketRequest

    -- ** WriteLogEntriesRequest
    , WriteLogEntriesRequest (..)
    , newWriteLogEntriesRequest

    -- ** WriteLogEntriesRequest_Labels
    , WriteLogEntriesRequest_Labels (..)
    , newWriteLogEntriesRequest_Labels

    -- ** WriteLogEntriesResponse
    , WriteLogEntriesResponse (..)
    , newWriteLogEntriesResponse
    ) where

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
