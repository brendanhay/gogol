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
-- Module      : Gogol.DFAReporting
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Build applications to efficiently manage large or complex trafficking, reporting, and attribution workflows for Campaign Manager 360.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/ Campaign Manager 360 API Reference>
module Gogol.DFAReporting
  ( -- * Configuration
    dFAReportingService,

    -- * OAuth Scopes
    Ddmconversions'FullControl,
    Dfareporting'FullControl,
    Dfatrafficking'FullControl,

    -- * Resources

    -- ** dfareporting.accountActiveAdSummaries.get
    DFAReportingAccountActiveAdSummariesGetResource,
    DFAReportingAccountActiveAdSummariesGet (..),
    newDFAReportingAccountActiveAdSummariesGet,

    -- ** dfareporting.accountPermissionGroups.get
    DFAReportingAccountPermissionGroupsGetResource,
    DFAReportingAccountPermissionGroupsGet (..),
    newDFAReportingAccountPermissionGroupsGet,

    -- ** dfareporting.accountPermissionGroups.list
    DFAReportingAccountPermissionGroupsListResource,
    DFAReportingAccountPermissionGroupsList (..),
    newDFAReportingAccountPermissionGroupsList,

    -- ** dfareporting.accountPermissions.get
    DFAReportingAccountPermissionsGetResource,
    DFAReportingAccountPermissionsGet (..),
    newDFAReportingAccountPermissionsGet,

    -- ** dfareporting.accountPermissions.list
    DFAReportingAccountPermissionsListResource,
    DFAReportingAccountPermissionsList (..),
    newDFAReportingAccountPermissionsList,

    -- ** dfareporting.accountUserProfiles.get
    DFAReportingAccountUserProfilesGetResource,
    DFAReportingAccountUserProfilesGet (..),
    newDFAReportingAccountUserProfilesGet,

    -- ** dfareporting.accountUserProfiles.insert
    DFAReportingAccountUserProfilesInsertResource,
    DFAReportingAccountUserProfilesInsert (..),
    newDFAReportingAccountUserProfilesInsert,

    -- ** dfareporting.accountUserProfiles.list
    DFAReportingAccountUserProfilesListResource,
    DFAReportingAccountUserProfilesList (..),
    newDFAReportingAccountUserProfilesList,

    -- ** dfareporting.accountUserProfiles.patch
    DFAReportingAccountUserProfilesPatchResource,
    DFAReportingAccountUserProfilesPatch (..),
    newDFAReportingAccountUserProfilesPatch,

    -- ** dfareporting.accountUserProfiles.update
    DFAReportingAccountUserProfilesUpdateResource,
    DFAReportingAccountUserProfilesUpdate (..),
    newDFAReportingAccountUserProfilesUpdate,

    -- ** dfareporting.accounts.get
    DFAReportingAccountsGetResource,
    DFAReportingAccountsGet (..),
    newDFAReportingAccountsGet,

    -- ** dfareporting.accounts.list
    DFAReportingAccountsListResource,
    DFAReportingAccountsList (..),
    newDFAReportingAccountsList,

    -- ** dfareporting.accounts.patch
    DFAReportingAccountsPatchResource,
    DFAReportingAccountsPatch (..),
    newDFAReportingAccountsPatch,

    -- ** dfareporting.accounts.update
    DFAReportingAccountsUpdateResource,
    DFAReportingAccountsUpdate (..),
    newDFAReportingAccountsUpdate,

    -- ** dfareporting.ads.get
    DFAReportingAdsGetResource,
    DFAReportingAdsGet (..),
    newDFAReportingAdsGet,

    -- ** dfareporting.ads.insert
    DFAReportingAdsInsertResource,
    DFAReportingAdsInsert (..),
    newDFAReportingAdsInsert,

    -- ** dfareporting.ads.list
    DFAReportingAdsListResource,
    DFAReportingAdsList (..),
    newDFAReportingAdsList,

    -- ** dfareporting.ads.patch
    DFAReportingAdsPatchResource,
    DFAReportingAdsPatch (..),
    newDFAReportingAdsPatch,

    -- ** dfareporting.ads.update
    DFAReportingAdsUpdateResource,
    DFAReportingAdsUpdate (..),
    newDFAReportingAdsUpdate,

    -- ** dfareporting.advertiserGroups.delete
    DFAReportingAdvertiserGroupsDeleteResource,
    DFAReportingAdvertiserGroupsDelete (..),
    newDFAReportingAdvertiserGroupsDelete,

    -- ** dfareporting.advertiserGroups.get
    DFAReportingAdvertiserGroupsGetResource,
    DFAReportingAdvertiserGroupsGet (..),
    newDFAReportingAdvertiserGroupsGet,

    -- ** dfareporting.advertiserGroups.insert
    DFAReportingAdvertiserGroupsInsertResource,
    DFAReportingAdvertiserGroupsInsert (..),
    newDFAReportingAdvertiserGroupsInsert,

    -- ** dfareporting.advertiserGroups.list
    DFAReportingAdvertiserGroupsListResource,
    DFAReportingAdvertiserGroupsList (..),
    newDFAReportingAdvertiserGroupsList,

    -- ** dfareporting.advertiserGroups.patch
    DFAReportingAdvertiserGroupsPatchResource,
    DFAReportingAdvertiserGroupsPatch (..),
    newDFAReportingAdvertiserGroupsPatch,

    -- ** dfareporting.advertiserGroups.update
    DFAReportingAdvertiserGroupsUpdateResource,
    DFAReportingAdvertiserGroupsUpdate (..),
    newDFAReportingAdvertiserGroupsUpdate,

    -- ** dfareporting.advertiserInvoices.list
    DFAReportingAdvertiserInvoicesListResource,
    DFAReportingAdvertiserInvoicesList (..),
    newDFAReportingAdvertiserInvoicesList,

    -- ** dfareporting.advertiserLandingPages.get
    DFAReportingAdvertiserLandingPagesGetResource,
    DFAReportingAdvertiserLandingPagesGet (..),
    newDFAReportingAdvertiserLandingPagesGet,

    -- ** dfareporting.advertiserLandingPages.insert
    DFAReportingAdvertiserLandingPagesInsertResource,
    DFAReportingAdvertiserLandingPagesInsert (..),
    newDFAReportingAdvertiserLandingPagesInsert,

    -- ** dfareporting.advertiserLandingPages.list
    DFAReportingAdvertiserLandingPagesListResource,
    DFAReportingAdvertiserLandingPagesList (..),
    newDFAReportingAdvertiserLandingPagesList,

    -- ** dfareporting.advertiserLandingPages.patch
    DFAReportingAdvertiserLandingPagesPatchResource,
    DFAReportingAdvertiserLandingPagesPatch (..),
    newDFAReportingAdvertiserLandingPagesPatch,

    -- ** dfareporting.advertiserLandingPages.update
    DFAReportingAdvertiserLandingPagesUpdateResource,
    DFAReportingAdvertiserLandingPagesUpdate (..),
    newDFAReportingAdvertiserLandingPagesUpdate,

    -- ** dfareporting.advertisers.get
    DFAReportingAdvertisersGetResource,
    DFAReportingAdvertisersGet (..),
    newDFAReportingAdvertisersGet,

    -- ** dfareporting.advertisers.insert
    DFAReportingAdvertisersInsertResource,
    DFAReportingAdvertisersInsert (..),
    newDFAReportingAdvertisersInsert,

    -- ** dfareporting.advertisers.list
    DFAReportingAdvertisersListResource,
    DFAReportingAdvertisersList (..),
    newDFAReportingAdvertisersList,

    -- ** dfareporting.advertisers.patch
    DFAReportingAdvertisersPatchResource,
    DFAReportingAdvertisersPatch (..),
    newDFAReportingAdvertisersPatch,

    -- ** dfareporting.advertisers.update
    DFAReportingAdvertisersUpdateResource,
    DFAReportingAdvertisersUpdate (..),
    newDFAReportingAdvertisersUpdate,

    -- ** dfareporting.billingAssignments.insert
    DFAReportingBillingAssignmentsInsertResource,
    DFAReportingBillingAssignmentsInsert (..),
    newDFAReportingBillingAssignmentsInsert,

    -- ** dfareporting.billingAssignments.list
    DFAReportingBillingAssignmentsListResource,
    DFAReportingBillingAssignmentsList (..),
    newDFAReportingBillingAssignmentsList,

    -- ** dfareporting.billingProfiles.get
    DFAReportingBillingProfilesGetResource,
    DFAReportingBillingProfilesGet (..),
    newDFAReportingBillingProfilesGet,

    -- ** dfareporting.billingProfiles.list
    DFAReportingBillingProfilesListResource,
    DFAReportingBillingProfilesList (..),
    newDFAReportingBillingProfilesList,

    -- ** dfareporting.billingProfiles.update
    DFAReportingBillingProfilesUpdateResource,
    DFAReportingBillingProfilesUpdate (..),
    newDFAReportingBillingProfilesUpdate,

    -- ** dfareporting.billingRates.list
    DFAReportingBillingRatesListResource,
    DFAReportingBillingRatesList (..),
    newDFAReportingBillingRatesList,

    -- ** dfareporting.browsers.list
    DFAReportingBrowsersListResource,
    DFAReportingBrowsersList (..),
    newDFAReportingBrowsersList,

    -- ** dfareporting.campaignCreativeAssociations.insert
    DFAReportingCampaignCreativeAssociationsInsertResource,
    DFAReportingCampaignCreativeAssociationsInsert (..),
    newDFAReportingCampaignCreativeAssociationsInsert,

    -- ** dfareporting.campaignCreativeAssociations.list
    DFAReportingCampaignCreativeAssociationsListResource,
    DFAReportingCampaignCreativeAssociationsList (..),
    newDFAReportingCampaignCreativeAssociationsList,

    -- ** dfareporting.campaigns.get
    DFAReportingCampaignsGetResource,
    DFAReportingCampaignsGet (..),
    newDFAReportingCampaignsGet,

    -- ** dfareporting.campaigns.insert
    DFAReportingCampaignsInsertResource,
    DFAReportingCampaignsInsert (..),
    newDFAReportingCampaignsInsert,

    -- ** dfareporting.campaigns.list
    DFAReportingCampaignsListResource,
    DFAReportingCampaignsList (..),
    newDFAReportingCampaignsList,

    -- ** dfareporting.campaigns.patch
    DFAReportingCampaignsPatchResource,
    DFAReportingCampaignsPatch (..),
    newDFAReportingCampaignsPatch,

    -- ** dfareporting.campaigns.update
    DFAReportingCampaignsUpdateResource,
    DFAReportingCampaignsUpdate (..),
    newDFAReportingCampaignsUpdate,

    -- ** dfareporting.changeLogs.get
    DFAReportingChangeLogsGetResource,
    DFAReportingChangeLogsGet (..),
    newDFAReportingChangeLogsGet,

    -- ** dfareporting.changeLogs.list
    DFAReportingChangeLogsListResource,
    DFAReportingChangeLogsList (..),
    newDFAReportingChangeLogsList,

    -- ** dfareporting.cities.list
    DFAReportingCitiesListResource,
    DFAReportingCitiesList (..),
    newDFAReportingCitiesList,

    -- ** dfareporting.connectionTypes.get
    DFAReportingConnectionTypesGetResource,
    DFAReportingConnectionTypesGet (..),
    newDFAReportingConnectionTypesGet,

    -- ** dfareporting.connectionTypes.list
    DFAReportingConnectionTypesListResource,
    DFAReportingConnectionTypesList (..),
    newDFAReportingConnectionTypesList,

    -- ** dfareporting.contentCategories.delete
    DFAReportingContentCategoriesDeleteResource,
    DFAReportingContentCategoriesDelete (..),
    newDFAReportingContentCategoriesDelete,

    -- ** dfareporting.contentCategories.get
    DFAReportingContentCategoriesGetResource,
    DFAReportingContentCategoriesGet (..),
    newDFAReportingContentCategoriesGet,

    -- ** dfareporting.contentCategories.insert
    DFAReportingContentCategoriesInsertResource,
    DFAReportingContentCategoriesInsert (..),
    newDFAReportingContentCategoriesInsert,

    -- ** dfareporting.contentCategories.list
    DFAReportingContentCategoriesListResource,
    DFAReportingContentCategoriesList (..),
    newDFAReportingContentCategoriesList,

    -- ** dfareporting.contentCategories.patch
    DFAReportingContentCategoriesPatchResource,
    DFAReportingContentCategoriesPatch (..),
    newDFAReportingContentCategoriesPatch,

    -- ** dfareporting.contentCategories.update
    DFAReportingContentCategoriesUpdateResource,
    DFAReportingContentCategoriesUpdate (..),
    newDFAReportingContentCategoriesUpdate,

    -- ** dfareporting.conversions.batchinsert
    DFAReportingConversionsBatchinsertResource,
    DFAReportingConversionsBatchinsert (..),
    newDFAReportingConversionsBatchinsert,

    -- ** dfareporting.conversions.batchupdate
    DFAReportingConversionsBatchupdateResource,
    DFAReportingConversionsBatchupdate (..),
    newDFAReportingConversionsBatchupdate,

    -- ** dfareporting.countries.get
    DFAReportingCountriesGetResource,
    DFAReportingCountriesGet (..),
    newDFAReportingCountriesGet,

    -- ** dfareporting.countries.list
    DFAReportingCountriesListResource,
    DFAReportingCountriesList (..),
    newDFAReportingCountriesList,

    -- ** dfareporting.creativeAssets.insert
    DFAReportingCreativeAssetsInsertResource,
    DFAReportingCreativeAssetsInsert (..),
    newDFAReportingCreativeAssetsInsert,

    -- ** dfareporting.creativeFieldValues.delete
    DFAReportingCreativeFieldValuesDeleteResource,
    DFAReportingCreativeFieldValuesDelete (..),
    newDFAReportingCreativeFieldValuesDelete,

    -- ** dfareporting.creativeFieldValues.get
    DFAReportingCreativeFieldValuesGetResource,
    DFAReportingCreativeFieldValuesGet (..),
    newDFAReportingCreativeFieldValuesGet,

    -- ** dfareporting.creativeFieldValues.insert
    DFAReportingCreativeFieldValuesInsertResource,
    DFAReportingCreativeFieldValuesInsert (..),
    newDFAReportingCreativeFieldValuesInsert,

    -- ** dfareporting.creativeFieldValues.list
    DFAReportingCreativeFieldValuesListResource,
    DFAReportingCreativeFieldValuesList (..),
    newDFAReportingCreativeFieldValuesList,

    -- ** dfareporting.creativeFieldValues.patch
    DFAReportingCreativeFieldValuesPatchResource,
    DFAReportingCreativeFieldValuesPatch (..),
    newDFAReportingCreativeFieldValuesPatch,

    -- ** dfareporting.creativeFieldValues.update
    DFAReportingCreativeFieldValuesUpdateResource,
    DFAReportingCreativeFieldValuesUpdate (..),
    newDFAReportingCreativeFieldValuesUpdate,

    -- ** dfareporting.creativeFields.delete
    DFAReportingCreativeFieldsDeleteResource,
    DFAReportingCreativeFieldsDelete (..),
    newDFAReportingCreativeFieldsDelete,

    -- ** dfareporting.creativeFields.get
    DFAReportingCreativeFieldsGetResource,
    DFAReportingCreativeFieldsGet (..),
    newDFAReportingCreativeFieldsGet,

    -- ** dfareporting.creativeFields.insert
    DFAReportingCreativeFieldsInsertResource,
    DFAReportingCreativeFieldsInsert (..),
    newDFAReportingCreativeFieldsInsert,

    -- ** dfareporting.creativeFields.list
    DFAReportingCreativeFieldsListResource,
    DFAReportingCreativeFieldsList (..),
    newDFAReportingCreativeFieldsList,

    -- ** dfareporting.creativeFields.patch
    DFAReportingCreativeFieldsPatchResource,
    DFAReportingCreativeFieldsPatch (..),
    newDFAReportingCreativeFieldsPatch,

    -- ** dfareporting.creativeFields.update
    DFAReportingCreativeFieldsUpdateResource,
    DFAReportingCreativeFieldsUpdate (..),
    newDFAReportingCreativeFieldsUpdate,

    -- ** dfareporting.creativeGroups.get
    DFAReportingCreativeGroupsGetResource,
    DFAReportingCreativeGroupsGet (..),
    newDFAReportingCreativeGroupsGet,

    -- ** dfareporting.creativeGroups.insert
    DFAReportingCreativeGroupsInsertResource,
    DFAReportingCreativeGroupsInsert (..),
    newDFAReportingCreativeGroupsInsert,

    -- ** dfareporting.creativeGroups.list
    DFAReportingCreativeGroupsListResource,
    DFAReportingCreativeGroupsList (..),
    newDFAReportingCreativeGroupsList,

    -- ** dfareporting.creativeGroups.patch
    DFAReportingCreativeGroupsPatchResource,
    DFAReportingCreativeGroupsPatch (..),
    newDFAReportingCreativeGroupsPatch,

    -- ** dfareporting.creativeGroups.update
    DFAReportingCreativeGroupsUpdateResource,
    DFAReportingCreativeGroupsUpdate (..),
    newDFAReportingCreativeGroupsUpdate,

    -- ** dfareporting.creatives.get
    DFAReportingCreativesGetResource,
    DFAReportingCreativesGet (..),
    newDFAReportingCreativesGet,

    -- ** dfareporting.creatives.insert
    DFAReportingCreativesInsertResource,
    DFAReportingCreativesInsert (..),
    newDFAReportingCreativesInsert,

    -- ** dfareporting.creatives.list
    DFAReportingCreativesListResource,
    DFAReportingCreativesList (..),
    newDFAReportingCreativesList,

    -- ** dfareporting.creatives.patch
    DFAReportingCreativesPatchResource,
    DFAReportingCreativesPatch (..),
    newDFAReportingCreativesPatch,

    -- ** dfareporting.creatives.update
    DFAReportingCreativesUpdateResource,
    DFAReportingCreativesUpdate (..),
    newDFAReportingCreativesUpdate,

    -- ** dfareporting.dimensionValues.query
    DFAReportingDimensionValuesQueryResource,
    DFAReportingDimensionValuesQuery (..),
    newDFAReportingDimensionValuesQuery,

    -- ** dfareporting.directorySites.get
    DFAReportingDirectorySitesGetResource,
    DFAReportingDirectorySitesGet (..),
    newDFAReportingDirectorySitesGet,

    -- ** dfareporting.directorySites.insert
    DFAReportingDirectorySitesInsertResource,
    DFAReportingDirectorySitesInsert (..),
    newDFAReportingDirectorySitesInsert,

    -- ** dfareporting.directorySites.list
    DFAReportingDirectorySitesListResource,
    DFAReportingDirectorySitesList (..),
    newDFAReportingDirectorySitesList,

    -- ** dfareporting.dynamicTargetingKeys.delete
    DFAReportingDynamicTargetingKeysDeleteResource,
    DFAReportingDynamicTargetingKeysDelete (..),
    newDFAReportingDynamicTargetingKeysDelete,

    -- ** dfareporting.dynamicTargetingKeys.insert
    DFAReportingDynamicTargetingKeysInsertResource,
    DFAReportingDynamicTargetingKeysInsert (..),
    newDFAReportingDynamicTargetingKeysInsert,

    -- ** dfareporting.dynamicTargetingKeys.list
    DFAReportingDynamicTargetingKeysListResource,
    DFAReportingDynamicTargetingKeysList (..),
    newDFAReportingDynamicTargetingKeysList,

    -- ** dfareporting.eventTags.delete
    DFAReportingEventTagsDeleteResource,
    DFAReportingEventTagsDelete (..),
    newDFAReportingEventTagsDelete,

    -- ** dfareporting.eventTags.get
    DFAReportingEventTagsGetResource,
    DFAReportingEventTagsGet (..),
    newDFAReportingEventTagsGet,

    -- ** dfareporting.eventTags.insert
    DFAReportingEventTagsInsertResource,
    DFAReportingEventTagsInsert (..),
    newDFAReportingEventTagsInsert,

    -- ** dfareporting.eventTags.list
    DFAReportingEventTagsListResource,
    DFAReportingEventTagsList (..),
    newDFAReportingEventTagsList,

    -- ** dfareporting.eventTags.patch
    DFAReportingEventTagsPatchResource,
    DFAReportingEventTagsPatch (..),
    newDFAReportingEventTagsPatch,

    -- ** dfareporting.eventTags.update
    DFAReportingEventTagsUpdateResource,
    DFAReportingEventTagsUpdate (..),
    newDFAReportingEventTagsUpdate,

    -- ** dfareporting.files.get
    DFAReportingFilesGetResource,
    DFAReportingFilesGet (..),
    newDFAReportingFilesGet,

    -- ** dfareporting.files.list
    DFAReportingFilesListResource,
    DFAReportingFilesList (..),
    newDFAReportingFilesList,

    -- ** dfareporting.floodlightActivities.delete
    DFAReportingFloodlightActivitiesDeleteResource,
    DFAReportingFloodlightActivitiesDelete (..),
    newDFAReportingFloodlightActivitiesDelete,

    -- ** dfareporting.floodlightActivities.generatetag
    DFAReportingFloodlightActivitiesGeneratetagResource,
    DFAReportingFloodlightActivitiesGeneratetag (..),
    newDFAReportingFloodlightActivitiesGeneratetag,

    -- ** dfareporting.floodlightActivities.get
    DFAReportingFloodlightActivitiesGetResource,
    DFAReportingFloodlightActivitiesGet (..),
    newDFAReportingFloodlightActivitiesGet,

    -- ** dfareporting.floodlightActivities.insert
    DFAReportingFloodlightActivitiesInsertResource,
    DFAReportingFloodlightActivitiesInsert (..),
    newDFAReportingFloodlightActivitiesInsert,

    -- ** dfareporting.floodlightActivities.list
    DFAReportingFloodlightActivitiesListResource,
    DFAReportingFloodlightActivitiesList (..),
    newDFAReportingFloodlightActivitiesList,

    -- ** dfareporting.floodlightActivities.patch
    DFAReportingFloodlightActivitiesPatchResource,
    DFAReportingFloodlightActivitiesPatch (..),
    newDFAReportingFloodlightActivitiesPatch,

    -- ** dfareporting.floodlightActivities.update
    DFAReportingFloodlightActivitiesUpdateResource,
    DFAReportingFloodlightActivitiesUpdate (..),
    newDFAReportingFloodlightActivitiesUpdate,

    -- ** dfareporting.floodlightActivityGroups.get
    DFAReportingFloodlightActivityGroupsGetResource,
    DFAReportingFloodlightActivityGroupsGet (..),
    newDFAReportingFloodlightActivityGroupsGet,

    -- ** dfareporting.floodlightActivityGroups.insert
    DFAReportingFloodlightActivityGroupsInsertResource,
    DFAReportingFloodlightActivityGroupsInsert (..),
    newDFAReportingFloodlightActivityGroupsInsert,

    -- ** dfareporting.floodlightActivityGroups.list
    DFAReportingFloodlightActivityGroupsListResource,
    DFAReportingFloodlightActivityGroupsList (..),
    newDFAReportingFloodlightActivityGroupsList,

    -- ** dfareporting.floodlightActivityGroups.patch
    DFAReportingFloodlightActivityGroupsPatchResource,
    DFAReportingFloodlightActivityGroupsPatch (..),
    newDFAReportingFloodlightActivityGroupsPatch,

    -- ** dfareporting.floodlightActivityGroups.update
    DFAReportingFloodlightActivityGroupsUpdateResource,
    DFAReportingFloodlightActivityGroupsUpdate (..),
    newDFAReportingFloodlightActivityGroupsUpdate,

    -- ** dfareporting.floodlightConfigurations.get
    DFAReportingFloodlightConfigurationsGetResource,
    DFAReportingFloodlightConfigurationsGet (..),
    newDFAReportingFloodlightConfigurationsGet,

    -- ** dfareporting.floodlightConfigurations.list
    DFAReportingFloodlightConfigurationsListResource,
    DFAReportingFloodlightConfigurationsList (..),
    newDFAReportingFloodlightConfigurationsList,

    -- ** dfareporting.floodlightConfigurations.patch
    DFAReportingFloodlightConfigurationsPatchResource,
    DFAReportingFloodlightConfigurationsPatch (..),
    newDFAReportingFloodlightConfigurationsPatch,

    -- ** dfareporting.floodlightConfigurations.update
    DFAReportingFloodlightConfigurationsUpdateResource,
    DFAReportingFloodlightConfigurationsUpdate (..),
    newDFAReportingFloodlightConfigurationsUpdate,

    -- ** dfareporting.inventoryItems.get
    DFAReportingInventoryItemsGetResource,
    DFAReportingInventoryItemsGet (..),
    newDFAReportingInventoryItemsGet,

    -- ** dfareporting.inventoryItems.list
    DFAReportingInventoryItemsListResource,
    DFAReportingInventoryItemsList (..),
    newDFAReportingInventoryItemsList,

    -- ** dfareporting.languages.list
    DFAReportingLanguagesListResource,
    DFAReportingLanguagesList (..),
    newDFAReportingLanguagesList,

    -- ** dfareporting.metros.list
    DFAReportingMetrosListResource,
    DFAReportingMetrosList (..),
    newDFAReportingMetrosList,

    -- ** dfareporting.mobileApps.get
    DFAReportingMobileAppsGetResource,
    DFAReportingMobileAppsGet (..),
    newDFAReportingMobileAppsGet,

    -- ** dfareporting.mobileApps.list
    DFAReportingMobileAppsListResource,
    DFAReportingMobileAppsList (..),
    newDFAReportingMobileAppsList,

    -- ** dfareporting.mobileCarriers.get
    DFAReportingMobileCarriersGetResource,
    DFAReportingMobileCarriersGet (..),
    newDFAReportingMobileCarriersGet,

    -- ** dfareporting.mobileCarriers.list
    DFAReportingMobileCarriersListResource,
    DFAReportingMobileCarriersList (..),
    newDFAReportingMobileCarriersList,

    -- ** dfareporting.operatingSystemVersions.get
    DFAReportingOperatingSystemVersionsGetResource,
    DFAReportingOperatingSystemVersionsGet (..),
    newDFAReportingOperatingSystemVersionsGet,

    -- ** dfareporting.operatingSystemVersions.list
    DFAReportingOperatingSystemVersionsListResource,
    DFAReportingOperatingSystemVersionsList (..),
    newDFAReportingOperatingSystemVersionsList,

    -- ** dfareporting.operatingSystems.get
    DFAReportingOperatingSystemsGetResource,
    DFAReportingOperatingSystemsGet (..),
    newDFAReportingOperatingSystemsGet,

    -- ** dfareporting.operatingSystems.list
    DFAReportingOperatingSystemsListResource,
    DFAReportingOperatingSystemsList (..),
    newDFAReportingOperatingSystemsList,

    -- ** dfareporting.orderDocuments.get
    DFAReportingOrderDocumentsGetResource,
    DFAReportingOrderDocumentsGet (..),
    newDFAReportingOrderDocumentsGet,

    -- ** dfareporting.orderDocuments.list
    DFAReportingOrderDocumentsListResource,
    DFAReportingOrderDocumentsList (..),
    newDFAReportingOrderDocumentsList,

    -- ** dfareporting.orders.get
    DFAReportingOrdersGetResource,
    DFAReportingOrdersGet (..),
    newDFAReportingOrdersGet,

    -- ** dfareporting.orders.list
    DFAReportingOrdersListResource,
    DFAReportingOrdersList (..),
    newDFAReportingOrdersList,

    -- ** dfareporting.placementGroups.get
    DFAReportingPlacementGroupsGetResource,
    DFAReportingPlacementGroupsGet (..),
    newDFAReportingPlacementGroupsGet,

    -- ** dfareporting.placementGroups.insert
    DFAReportingPlacementGroupsInsertResource,
    DFAReportingPlacementGroupsInsert (..),
    newDFAReportingPlacementGroupsInsert,

    -- ** dfareporting.placementGroups.list
    DFAReportingPlacementGroupsListResource,
    DFAReportingPlacementGroupsList (..),
    newDFAReportingPlacementGroupsList,

    -- ** dfareporting.placementGroups.patch
    DFAReportingPlacementGroupsPatchResource,
    DFAReportingPlacementGroupsPatch (..),
    newDFAReportingPlacementGroupsPatch,

    -- ** dfareporting.placementGroups.update
    DFAReportingPlacementGroupsUpdateResource,
    DFAReportingPlacementGroupsUpdate (..),
    newDFAReportingPlacementGroupsUpdate,

    -- ** dfareporting.placementStrategies.delete
    DFAReportingPlacementStrategiesDeleteResource,
    DFAReportingPlacementStrategiesDelete (..),
    newDFAReportingPlacementStrategiesDelete,

    -- ** dfareporting.placementStrategies.get
    DFAReportingPlacementStrategiesGetResource,
    DFAReportingPlacementStrategiesGet (..),
    newDFAReportingPlacementStrategiesGet,

    -- ** dfareporting.placementStrategies.insert
    DFAReportingPlacementStrategiesInsertResource,
    DFAReportingPlacementStrategiesInsert (..),
    newDFAReportingPlacementStrategiesInsert,

    -- ** dfareporting.placementStrategies.list
    DFAReportingPlacementStrategiesListResource,
    DFAReportingPlacementStrategiesList (..),
    newDFAReportingPlacementStrategiesList,

    -- ** dfareporting.placementStrategies.patch
    DFAReportingPlacementStrategiesPatchResource,
    DFAReportingPlacementStrategiesPatch (..),
    newDFAReportingPlacementStrategiesPatch,

    -- ** dfareporting.placementStrategies.update
    DFAReportingPlacementStrategiesUpdateResource,
    DFAReportingPlacementStrategiesUpdate (..),
    newDFAReportingPlacementStrategiesUpdate,

    -- ** dfareporting.placements.generatetags
    DFAReportingPlacementsGeneratetagsResource,
    DFAReportingPlacementsGeneratetags (..),
    newDFAReportingPlacementsGeneratetags,

    -- ** dfareporting.placements.get
    DFAReportingPlacementsGetResource,
    DFAReportingPlacementsGet (..),
    newDFAReportingPlacementsGet,

    -- ** dfareporting.placements.insert
    DFAReportingPlacementsInsertResource,
    DFAReportingPlacementsInsert (..),
    newDFAReportingPlacementsInsert,

    -- ** dfareporting.placements.list
    DFAReportingPlacementsListResource,
    DFAReportingPlacementsList (..),
    newDFAReportingPlacementsList,

    -- ** dfareporting.placements.patch
    DFAReportingPlacementsPatchResource,
    DFAReportingPlacementsPatch (..),
    newDFAReportingPlacementsPatch,

    -- ** dfareporting.placements.update
    DFAReportingPlacementsUpdateResource,
    DFAReportingPlacementsUpdate (..),
    newDFAReportingPlacementsUpdate,

    -- ** dfareporting.platformTypes.get
    DFAReportingPlatformTypesGetResource,
    DFAReportingPlatformTypesGet (..),
    newDFAReportingPlatformTypesGet,

    -- ** dfareporting.platformTypes.list
    DFAReportingPlatformTypesListResource,
    DFAReportingPlatformTypesList (..),
    newDFAReportingPlatformTypesList,

    -- ** dfareporting.postalCodes.get
    DFAReportingPostalCodesGetResource,
    DFAReportingPostalCodesGet (..),
    newDFAReportingPostalCodesGet,

    -- ** dfareporting.postalCodes.list
    DFAReportingPostalCodesListResource,
    DFAReportingPostalCodesList (..),
    newDFAReportingPostalCodesList,

    -- ** dfareporting.projects.get
    DFAReportingProjectsGetResource,
    DFAReportingProjectsGet (..),
    newDFAReportingProjectsGet,

    -- ** dfareporting.projects.list
    DFAReportingProjectsListResource,
    DFAReportingProjectsList (..),
    newDFAReportingProjectsList,

    -- ** dfareporting.regions.list
    DFAReportingRegionsListResource,
    DFAReportingRegionsList (..),
    newDFAReportingRegionsList,

    -- ** dfareporting.remarketingListShares.get
    DFAReportingRemarketingListSharesGetResource,
    DFAReportingRemarketingListSharesGet (..),
    newDFAReportingRemarketingListSharesGet,

    -- ** dfareporting.remarketingListShares.patch
    DFAReportingRemarketingListSharesPatchResource,
    DFAReportingRemarketingListSharesPatch (..),
    newDFAReportingRemarketingListSharesPatch,

    -- ** dfareporting.remarketingListShares.update
    DFAReportingRemarketingListSharesUpdateResource,
    DFAReportingRemarketingListSharesUpdate (..),
    newDFAReportingRemarketingListSharesUpdate,

    -- ** dfareporting.remarketingLists.get
    DFAReportingRemarketingListsGetResource,
    DFAReportingRemarketingListsGet (..),
    newDFAReportingRemarketingListsGet,

    -- ** dfareporting.remarketingLists.insert
    DFAReportingRemarketingListsInsertResource,
    DFAReportingRemarketingListsInsert (..),
    newDFAReportingRemarketingListsInsert,

    -- ** dfareporting.remarketingLists.list
    DFAReportingRemarketingListsListResource,
    DFAReportingRemarketingListsList (..),
    newDFAReportingRemarketingListsList,

    -- ** dfareporting.remarketingLists.patch
    DFAReportingRemarketingListsPatchResource,
    DFAReportingRemarketingListsPatch (..),
    newDFAReportingRemarketingListsPatch,

    -- ** dfareporting.remarketingLists.update
    DFAReportingRemarketingListsUpdateResource,
    DFAReportingRemarketingListsUpdate (..),
    newDFAReportingRemarketingListsUpdate,

    -- ** dfareporting.reports.compatibleFields.query
    DFAReportingReportsCompatibleFieldsQueryResource,
    DFAReportingReportsCompatibleFieldsQuery (..),
    newDFAReportingReportsCompatibleFieldsQuery,

    -- ** dfareporting.reports.delete
    DFAReportingReportsDeleteResource,
    DFAReportingReportsDelete (..),
    newDFAReportingReportsDelete,

    -- ** dfareporting.reports.files.get
    DFAReportingReportsFilesGetResource,
    DFAReportingReportsFilesGet (..),
    newDFAReportingReportsFilesGet,

    -- ** dfareporting.reports.files.list
    DFAReportingReportsFilesListResource,
    DFAReportingReportsFilesList (..),
    newDFAReportingReportsFilesList,

    -- ** dfareporting.reports.get
    DFAReportingReportsGetResource,
    DFAReportingReportsGet (..),
    newDFAReportingReportsGet,

    -- ** dfareporting.reports.insert
    DFAReportingReportsInsertResource,
    DFAReportingReportsInsert (..),
    newDFAReportingReportsInsert,

    -- ** dfareporting.reports.list
    DFAReportingReportsListResource,
    DFAReportingReportsList (..),
    newDFAReportingReportsList,

    -- ** dfareporting.reports.patch
    DFAReportingReportsPatchResource,
    DFAReportingReportsPatch (..),
    newDFAReportingReportsPatch,

    -- ** dfareporting.reports.run
    DFAReportingReportsRunResource,
    DFAReportingReportsRun (..),
    newDFAReportingReportsRun,

    -- ** dfareporting.reports.update
    DFAReportingReportsUpdateResource,
    DFAReportingReportsUpdate (..),
    newDFAReportingReportsUpdate,

    -- ** dfareporting.sites.get
    DFAReportingSitesGetResource,
    DFAReportingSitesGet (..),
    newDFAReportingSitesGet,

    -- ** dfareporting.sites.insert
    DFAReportingSitesInsertResource,
    DFAReportingSitesInsert (..),
    newDFAReportingSitesInsert,

    -- ** dfareporting.sites.list
    DFAReportingSitesListResource,
    DFAReportingSitesList (..),
    newDFAReportingSitesList,

    -- ** dfareporting.sites.patch
    DFAReportingSitesPatchResource,
    DFAReportingSitesPatch (..),
    newDFAReportingSitesPatch,

    -- ** dfareporting.sites.update
    DFAReportingSitesUpdateResource,
    DFAReportingSitesUpdate (..),
    newDFAReportingSitesUpdate,

    -- ** dfareporting.sizes.get
    DFAReportingSizesGetResource,
    DFAReportingSizesGet (..),
    newDFAReportingSizesGet,

    -- ** dfareporting.sizes.insert
    DFAReportingSizesInsertResource,
    DFAReportingSizesInsert (..),
    newDFAReportingSizesInsert,

    -- ** dfareporting.sizes.list
    DFAReportingSizesListResource,
    DFAReportingSizesList (..),
    newDFAReportingSizesList,

    -- ** dfareporting.subaccounts.get
    DFAReportingSubaccountsGetResource,
    DFAReportingSubaccountsGet (..),
    newDFAReportingSubaccountsGet,

    -- ** dfareporting.subaccounts.insert
    DFAReportingSubaccountsInsertResource,
    DFAReportingSubaccountsInsert (..),
    newDFAReportingSubaccountsInsert,

    -- ** dfareporting.subaccounts.list
    DFAReportingSubaccountsListResource,
    DFAReportingSubaccountsList (..),
    newDFAReportingSubaccountsList,

    -- ** dfareporting.subaccounts.patch
    DFAReportingSubaccountsPatchResource,
    DFAReportingSubaccountsPatch (..),
    newDFAReportingSubaccountsPatch,

    -- ** dfareporting.subaccounts.update
    DFAReportingSubaccountsUpdateResource,
    DFAReportingSubaccountsUpdate (..),
    newDFAReportingSubaccountsUpdate,

    -- ** dfareporting.targetableRemarketingLists.get
    DFAReportingTargetableRemarketingListsGetResource,
    DFAReportingTargetableRemarketingListsGet (..),
    newDFAReportingTargetableRemarketingListsGet,

    -- ** dfareporting.targetableRemarketingLists.list
    DFAReportingTargetableRemarketingListsListResource,
    DFAReportingTargetableRemarketingListsList (..),
    newDFAReportingTargetableRemarketingListsList,

    -- ** dfareporting.targetingTemplates.get
    DFAReportingTargetingTemplatesGetResource,
    DFAReportingTargetingTemplatesGet (..),
    newDFAReportingTargetingTemplatesGet,

    -- ** dfareporting.targetingTemplates.insert
    DFAReportingTargetingTemplatesInsertResource,
    DFAReportingTargetingTemplatesInsert (..),
    newDFAReportingTargetingTemplatesInsert,

    -- ** dfareporting.targetingTemplates.list
    DFAReportingTargetingTemplatesListResource,
    DFAReportingTargetingTemplatesList (..),
    newDFAReportingTargetingTemplatesList,

    -- ** dfareporting.targetingTemplates.patch
    DFAReportingTargetingTemplatesPatchResource,
    DFAReportingTargetingTemplatesPatch (..),
    newDFAReportingTargetingTemplatesPatch,

    -- ** dfareporting.targetingTemplates.update
    DFAReportingTargetingTemplatesUpdateResource,
    DFAReportingTargetingTemplatesUpdate (..),
    newDFAReportingTargetingTemplatesUpdate,

    -- ** dfareporting.userProfiles.get
    DFAReportingUserProfilesGetResource,
    DFAReportingUserProfilesGet (..),
    newDFAReportingUserProfilesGet,

    -- ** dfareporting.userProfiles.list
    DFAReportingUserProfilesListResource,
    DFAReportingUserProfilesList (..),
    newDFAReportingUserProfilesList,

    -- ** dfareporting.userRolePermissionGroups.get
    DFAReportingUserRolePermissionGroupsGetResource,
    DFAReportingUserRolePermissionGroupsGet (..),
    newDFAReportingUserRolePermissionGroupsGet,

    -- ** dfareporting.userRolePermissionGroups.list
    DFAReportingUserRolePermissionGroupsListResource,
    DFAReportingUserRolePermissionGroupsList (..),
    newDFAReportingUserRolePermissionGroupsList,

    -- ** dfareporting.userRolePermissions.get
    DFAReportingUserRolePermissionsGetResource,
    DFAReportingUserRolePermissionsGet (..),
    newDFAReportingUserRolePermissionsGet,

    -- ** dfareporting.userRolePermissions.list
    DFAReportingUserRolePermissionsListResource,
    DFAReportingUserRolePermissionsList (..),
    newDFAReportingUserRolePermissionsList,

    -- ** dfareporting.userRoles.delete
    DFAReportingUserRolesDeleteResource,
    DFAReportingUserRolesDelete (..),
    newDFAReportingUserRolesDelete,

    -- ** dfareporting.userRoles.get
    DFAReportingUserRolesGetResource,
    DFAReportingUserRolesGet (..),
    newDFAReportingUserRolesGet,

    -- ** dfareporting.userRoles.insert
    DFAReportingUserRolesInsertResource,
    DFAReportingUserRolesInsert (..),
    newDFAReportingUserRolesInsert,

    -- ** dfareporting.userRoles.list
    DFAReportingUserRolesListResource,
    DFAReportingUserRolesList (..),
    newDFAReportingUserRolesList,

    -- ** dfareporting.userRoles.patch
    DFAReportingUserRolesPatchResource,
    DFAReportingUserRolesPatch (..),
    newDFAReportingUserRolesPatch,

    -- ** dfareporting.userRoles.update
    DFAReportingUserRolesUpdateResource,
    DFAReportingUserRolesUpdate (..),
    newDFAReportingUserRolesUpdate,

    -- ** dfareporting.videoFormats.get
    DFAReportingVideoFormatsGetResource,
    DFAReportingVideoFormatsGet (..),
    newDFAReportingVideoFormatsGet,

    -- ** dfareporting.videoFormats.list
    DFAReportingVideoFormatsListResource,
    DFAReportingVideoFormatsList (..),
    newDFAReportingVideoFormatsList,

    -- * Types

    -- ** Xgafv
    Xgafv (..),

    -- ** Account
    Account (..),
    newAccount,

    -- ** Account_AccountProfile
    Account_AccountProfile (..),

    -- ** Account_ActiveAdsLimitTier
    Account_ActiveAdsLimitTier (..),

    -- ** AccountActiveAdSummary
    AccountActiveAdSummary (..),
    newAccountActiveAdSummary,

    -- ** AccountActiveAdSummary_ActiveAdsLimitTier
    AccountActiveAdSummary_ActiveAdsLimitTier (..),

    -- ** AccountPermission
    AccountPermission (..),
    newAccountPermission,

    -- ** AccountPermission_AccountProfilesItem
    AccountPermission_AccountProfilesItem (..),

    -- ** AccountPermission_Level
    AccountPermission_Level (..),

    -- ** AccountPermissionGroup
    AccountPermissionGroup (..),
    newAccountPermissionGroup,

    -- ** AccountPermissionGroupsListResponse
    AccountPermissionGroupsListResponse (..),
    newAccountPermissionGroupsListResponse,

    -- ** AccountPermissionsListResponse
    AccountPermissionsListResponse (..),
    newAccountPermissionsListResponse,

    -- ** AccountUserProfile
    AccountUserProfile (..),
    newAccountUserProfile,

    -- ** AccountUserProfile_TraffickerType
    AccountUserProfile_TraffickerType (..),

    -- ** AccountUserProfile_UserAccessType
    AccountUserProfile_UserAccessType (..),

    -- ** AccountUserProfilesListResponse
    AccountUserProfilesListResponse (..),
    newAccountUserProfilesListResponse,

    -- ** AccountsListResponse
    AccountsListResponse (..),
    newAccountsListResponse,

    -- ** Activities
    Activities (..),
    newActivities,

    -- ** Ad
    Ad (..),
    newAd,

    -- ** Ad_Compatibility
    Ad_Compatibility (..),

    -- ** Ad_Type
    Ad_Type (..),

    -- ** AdBlockingConfiguration
    AdBlockingConfiguration (..),
    newAdBlockingConfiguration,

    -- ** AdSlot
    AdSlot (..),
    newAdSlot,

    -- ** AdSlot_Compatibility
    AdSlot_Compatibility (..),

    -- ** AdSlot_PaymentSourceType
    AdSlot_PaymentSourceType (..),

    -- ** AdsListResponse
    AdsListResponse (..),
    newAdsListResponse,

    -- ** Advertiser
    Advertiser (..),
    newAdvertiser,

    -- ** Advertiser_Status
    Advertiser_Status (..),

    -- ** AdvertiserGroup
    AdvertiserGroup (..),
    newAdvertiserGroup,

    -- ** AdvertiserGroupsListResponse
    AdvertiserGroupsListResponse (..),
    newAdvertiserGroupsListResponse,

    -- ** AdvertiserInvoicesListResponse
    AdvertiserInvoicesListResponse (..),
    newAdvertiserInvoicesListResponse,

    -- ** AdvertiserLandingPagesListResponse
    AdvertiserLandingPagesListResponse (..),
    newAdvertiserLandingPagesListResponse,

    -- ** AdvertisersListResponse
    AdvertisersListResponse (..),
    newAdvertisersListResponse,

    -- ** AudienceSegment
    AudienceSegment (..),
    newAudienceSegment,

    -- ** AudienceSegmentGroup
    AudienceSegmentGroup (..),
    newAudienceSegmentGroup,

    -- ** BillingAssignment
    BillingAssignment (..),
    newBillingAssignment,

    -- ** BillingAssignmentsListResponse
    BillingAssignmentsListResponse (..),
    newBillingAssignmentsListResponse,

    -- ** BillingProfile
    BillingProfile (..),
    newBillingProfile,

    -- ** BillingProfile_InvoiceLevel
    BillingProfile_InvoiceLevel (..),

    -- ** BillingProfile_Status
    BillingProfile_Status (..),

    -- ** BillingProfilesListResponse
    BillingProfilesListResponse (..),
    newBillingProfilesListResponse,

    -- ** BillingRate
    BillingRate (..),
    newBillingRate,

    -- ** BillingRate_Type
    BillingRate_Type (..),

    -- ** BillingRate_UnitOfMeasure
    BillingRate_UnitOfMeasure (..),

    -- ** BillingRateTieredRate
    BillingRateTieredRate (..),
    newBillingRateTieredRate,

    -- ** BillingRatesListResponse
    BillingRatesListResponse (..),
    newBillingRatesListResponse,

    -- ** Browser
    Browser (..),
    newBrowser,

    -- ** BrowsersListResponse
    BrowsersListResponse (..),
    newBrowsersListResponse,

    -- ** Campaign
    Campaign (..),
    newCampaign,

    -- ** CampaignCreativeAssociation
    CampaignCreativeAssociation (..),
    newCampaignCreativeAssociation,

    -- ** CampaignCreativeAssociationsListResponse
    CampaignCreativeAssociationsListResponse (..),
    newCampaignCreativeAssociationsListResponse,

    -- ** CampaignSummary
    CampaignSummary (..),
    newCampaignSummary,

    -- ** CampaignsListResponse
    CampaignsListResponse (..),
    newCampaignsListResponse,

    -- ** ChangeLog
    ChangeLog (..),
    newChangeLog,

    -- ** ChangeLogsListResponse
    ChangeLogsListResponse (..),
    newChangeLogsListResponse,

    -- ** ChannelGrouping
    ChannelGrouping (..),
    newChannelGrouping,

    -- ** ChannelGroupingRule
    ChannelGroupingRule (..),
    newChannelGroupingRule,

    -- ** CitiesListResponse
    CitiesListResponse (..),
    newCitiesListResponse,

    -- ** City
    City (..),
    newCity,

    -- ** ClickTag
    ClickTag (..),
    newClickTag,

    -- ** ClickThroughUrl
    ClickThroughUrl (..),
    newClickThroughUrl,

    -- ** ClickThroughUrlSuffixProperties
    ClickThroughUrlSuffixProperties (..),
    newClickThroughUrlSuffixProperties,

    -- ** CompanionClickThroughOverride
    CompanionClickThroughOverride (..),
    newCompanionClickThroughOverride,

    -- ** CompanionSetting
    CompanionSetting (..),
    newCompanionSetting,

    -- ** CompatibleFields
    CompatibleFields (..),
    newCompatibleFields,

    -- ** ConnectionType
    ConnectionType (..),
    newConnectionType,

    -- ** ConnectionTypesListResponse
    ConnectionTypesListResponse (..),
    newConnectionTypesListResponse,

    -- ** ContentCategoriesListResponse
    ContentCategoriesListResponse (..),
    newContentCategoriesListResponse,

    -- ** ContentCategory
    ContentCategory (..),
    newContentCategory,

    -- ** Conversion
    Conversion (..),
    newConversion,

    -- ** ConversionError
    ConversionError (..),
    newConversionError,

    -- ** ConversionError_Code
    ConversionError_Code (..),

    -- ** ConversionStatus
    ConversionStatus (..),
    newConversionStatus,

    -- ** ConversionsBatchInsertRequest
    ConversionsBatchInsertRequest (..),
    newConversionsBatchInsertRequest,

    -- ** ConversionsBatchInsertResponse
    ConversionsBatchInsertResponse (..),
    newConversionsBatchInsertResponse,

    -- ** ConversionsBatchUpdateRequest
    ConversionsBatchUpdateRequest (..),
    newConversionsBatchUpdateRequest,

    -- ** ConversionsBatchUpdateResponse
    ConversionsBatchUpdateResponse (..),
    newConversionsBatchUpdateResponse,

    -- ** CountriesListResponse
    CountriesListResponse (..),
    newCountriesListResponse,

    -- ** Country
    Country (..),
    newCountry,

    -- ** Creative
    Creative (..),
    newCreative,

    -- ** Creative_ArtworkType
    Creative_ArtworkType (..),

    -- ** Creative_AuthoringSource
    Creative_AuthoringSource (..),

    -- ** Creative_AuthoringTool
    Creative_AuthoringTool (..),

    -- ** Creative_BackupImageFeaturesItem
    Creative_BackupImageFeaturesItem (..),

    -- ** Creative_CompatibilityItem
    Creative_CompatibilityItem (..),

    -- ** Creative_Type
    Creative_Type (..),

    -- ** CreativeAsset
    CreativeAsset (..),
    newCreativeAsset,

    -- ** CreativeAsset_Alignment
    CreativeAsset_Alignment (..),

    -- ** CreativeAsset_ArtworkType
    CreativeAsset_ArtworkType (..),

    -- ** CreativeAsset_ChildAssetType
    CreativeAsset_ChildAssetType (..),

    -- ** CreativeAsset_DetectedFeaturesItem
    CreativeAsset_DetectedFeaturesItem (..),

    -- ** CreativeAsset_DisplayType
    CreativeAsset_DisplayType (..),

    -- ** CreativeAsset_DurationType
    CreativeAsset_DurationType (..),

    -- ** CreativeAsset_Orientation
    CreativeAsset_Orientation (..),

    -- ** CreativeAsset_PositionLeftUnit
    CreativeAsset_PositionLeftUnit (..),

    -- ** CreativeAsset_PositionTopUnit
    CreativeAsset_PositionTopUnit (..),

    -- ** CreativeAsset_Role
    CreativeAsset_Role (..),

    -- ** CreativeAsset_StartTimeType
    CreativeAsset_StartTimeType (..),

    -- ** CreativeAsset_WindowMode
    CreativeAsset_WindowMode (..),

    -- ** CreativeAssetId
    CreativeAssetId (..),
    newCreativeAssetId,

    -- ** CreativeAssetId_Type
    CreativeAssetId_Type (..),

    -- ** CreativeAssetMetadata
    CreativeAssetMetadata (..),
    newCreativeAssetMetadata,

    -- ** CreativeAssetMetadata_DetectedFeaturesItem
    CreativeAssetMetadata_DetectedFeaturesItem (..),

    -- ** CreativeAssetMetadata_WarnedValidationRulesItem
    CreativeAssetMetadata_WarnedValidationRulesItem (..),

    -- ** CreativeAssetSelection
    CreativeAssetSelection (..),
    newCreativeAssetSelection,

    -- ** CreativeAssignment
    CreativeAssignment (..),
    newCreativeAssignment,

    -- ** CreativeClickThroughUrl
    CreativeClickThroughUrl (..),
    newCreativeClickThroughUrl,

    -- ** CreativeCustomEvent
    CreativeCustomEvent (..),
    newCreativeCustomEvent,

    -- ** CreativeCustomEvent_AdvertiserCustomEventType
    CreativeCustomEvent_AdvertiserCustomEventType (..),

    -- ** CreativeCustomEvent_ArtworkType
    CreativeCustomEvent_ArtworkType (..),

    -- ** CreativeCustomEvent_TargetType
    CreativeCustomEvent_TargetType (..),

    -- ** CreativeField
    CreativeField (..),
    newCreativeField,

    -- ** CreativeFieldAssignment
    CreativeFieldAssignment (..),
    newCreativeFieldAssignment,

    -- ** CreativeFieldValue
    CreativeFieldValue (..),
    newCreativeFieldValue,

    -- ** CreativeFieldValuesListResponse
    CreativeFieldValuesListResponse (..),
    newCreativeFieldValuesListResponse,

    -- ** CreativeFieldsListResponse
    CreativeFieldsListResponse (..),
    newCreativeFieldsListResponse,

    -- ** CreativeGroup
    CreativeGroup (..),
    newCreativeGroup,

    -- ** CreativeGroupAssignment
    CreativeGroupAssignment (..),
    newCreativeGroupAssignment,

    -- ** CreativeGroupAssignment_CreativeGroupNumber
    CreativeGroupAssignment_CreativeGroupNumber (..),

    -- ** CreativeGroupsListResponse
    CreativeGroupsListResponse (..),
    newCreativeGroupsListResponse,

    -- ** CreativeOptimizationConfiguration
    CreativeOptimizationConfiguration (..),
    newCreativeOptimizationConfiguration,

    -- ** CreativeOptimizationConfiguration_OptimizationModel
    CreativeOptimizationConfiguration_OptimizationModel (..),

    -- ** CreativeRotation
    CreativeRotation (..),
    newCreativeRotation,

    -- ** CreativeRotation_Type
    CreativeRotation_Type (..),

    -- ** CreativeRotation_WeightCalculationStrategy
    CreativeRotation_WeightCalculationStrategy (..),

    -- ** CreativesListResponse
    CreativesListResponse (..),
    newCreativesListResponse,

    -- ** CrossDimensionReachReportCompatibleFields
    CrossDimensionReachReportCompatibleFields (..),
    newCrossDimensionReachReportCompatibleFields,

    -- ** CustomFloodlightVariable
    CustomFloodlightVariable (..),
    newCustomFloodlightVariable,

    -- ** CustomFloodlightVariable_Type
    CustomFloodlightVariable_Type (..),

    -- ** CustomRichMediaEvents
    CustomRichMediaEvents (..),
    newCustomRichMediaEvents,

    -- ** CustomViewabilityMetric
    CustomViewabilityMetric (..),
    newCustomViewabilityMetric,

    -- ** CustomViewabilityMetricConfiguration
    CustomViewabilityMetricConfiguration (..),
    newCustomViewabilityMetricConfiguration,

    -- ** DateRange
    DateRange (..),
    newDateRange,

    -- ** DateRange_RelativeDateRange
    DateRange_RelativeDateRange (..),

    -- ** DayPartTargeting
    DayPartTargeting (..),
    newDayPartTargeting,

    -- ** DayPartTargeting_DaysOfWeekItem
    DayPartTargeting_DaysOfWeekItem (..),

    -- ** DeepLink
    DeepLink (..),
    newDeepLink,

    -- ** DefaultClickThroughEventTagProperties
    DefaultClickThroughEventTagProperties (..),
    newDefaultClickThroughEventTagProperties,

    -- ** DeliverySchedule
    DeliverySchedule (..),
    newDeliverySchedule,

    -- ** DeliverySchedule_Priority
    DeliverySchedule_Priority (..),

    -- ** DfpSettings
    DfpSettings (..),
    newDfpSettings,

    -- ** Dimension
    Dimension (..),
    newDimension,

    -- ** DimensionFilter
    DimensionFilter (..),
    newDimensionFilter,

    -- ** DimensionValue
    DimensionValue (..),
    newDimensionValue,

    -- ** DimensionValue_MatchType
    DimensionValue_MatchType (..),

    -- ** DimensionValueList
    DimensionValueList (..),
    newDimensionValueList,

    -- ** DimensionValueRequest
    DimensionValueRequest (..),
    newDimensionValueRequest,

    -- ** DirectorySite
    DirectorySite (..),
    newDirectorySite,

    -- ** DirectorySite_InpageTagFormatsItem
    DirectorySite_InpageTagFormatsItem (..),

    -- ** DirectorySite_InterstitialTagFormatsItem
    DirectorySite_InterstitialTagFormatsItem (..),

    -- ** DirectorySiteSettings
    DirectorySiteSettings (..),
    newDirectorySiteSettings,

    -- ** DirectorySitesListResponse
    DirectorySitesListResponse (..),
    newDirectorySitesListResponse,

    -- ** DisjunctiveMatchStatement
    DisjunctiveMatchStatement (..),
    newDisjunctiveMatchStatement,

    -- ** DynamicTargetingKey
    DynamicTargetingKey (..),
    newDynamicTargetingKey,

    -- ** DynamicTargetingKey_ObjectType
    DynamicTargetingKey_ObjectType (..),

    -- ** DynamicTargetingKeysListResponse
    DynamicTargetingKeysListResponse (..),
    newDynamicTargetingKeysListResponse,

    -- ** EncryptionInfo
    EncryptionInfo (..),
    newEncryptionInfo,

    -- ** EncryptionInfo_EncryptionEntityType
    EncryptionInfo_EncryptionEntityType (..),

    -- ** EncryptionInfo_EncryptionSource
    EncryptionInfo_EncryptionSource (..),

    -- ** EventFilter
    EventFilter (..),
    newEventFilter,

    -- ** EventTag
    EventTag (..),
    newEventTag,

    -- ** EventTag_SiteFilterType
    EventTag_SiteFilterType (..),

    -- ** EventTag_Status
    EventTag_Status (..),

    -- ** EventTag_Type
    EventTag_Type (..),

    -- ** EventTagOverride
    EventTagOverride (..),
    newEventTagOverride,

    -- ** EventTagsListResponse
    EventTagsListResponse (..),
    newEventTagsListResponse,

    -- ** File
    File (..),
    newFile,

    -- ** File_Format
    File_Format (..),

    -- ** File_Status
    File_Status (..),

    -- ** File_Urls
    File_Urls (..),
    newFile_Urls,

    -- ** FileList
    FileList (..),
    newFileList,

    -- ** Flight
    Flight (..),
    newFlight,

    -- ** FloodlightActivitiesGenerateTagResponse
    FloodlightActivitiesGenerateTagResponse (..),
    newFloodlightActivitiesGenerateTagResponse,

    -- ** FloodlightActivitiesListResponse
    FloodlightActivitiesListResponse (..),
    newFloodlightActivitiesListResponse,

    -- ** FloodlightActivity
    FloodlightActivity (..),
    newFloodlightActivity,

    -- ** FloodlightActivity_CacheBustingType
    FloodlightActivity_CacheBustingType (..),

    -- ** FloodlightActivity_CountingMethod
    FloodlightActivity_CountingMethod (..),

    -- ** FloodlightActivity_FloodlightActivityGroupType
    FloodlightActivity_FloodlightActivityGroupType (..),

    -- ** FloodlightActivity_FloodlightTagType
    FloodlightActivity_FloodlightTagType (..),

    -- ** FloodlightActivity_Status
    FloodlightActivity_Status (..),

    -- ** FloodlightActivity_TagFormat
    FloodlightActivity_TagFormat (..),

    -- ** FloodlightActivity_UserDefinedVariableTypesItem
    FloodlightActivity_UserDefinedVariableTypesItem (..),

    -- ** FloodlightActivityDynamicTag
    FloodlightActivityDynamicTag (..),
    newFloodlightActivityDynamicTag,

    -- ** FloodlightActivityGroup
    FloodlightActivityGroup (..),
    newFloodlightActivityGroup,

    -- ** FloodlightActivityGroup_Type
    FloodlightActivityGroup_Type (..),

    -- ** FloodlightActivityGroupsListResponse
    FloodlightActivityGroupsListResponse (..),
    newFloodlightActivityGroupsListResponse,

    -- ** FloodlightActivityPublisherDynamicTag
    FloodlightActivityPublisherDynamicTag (..),
    newFloodlightActivityPublisherDynamicTag,

    -- ** FloodlightConfiguration
    FloodlightConfiguration (..),
    newFloodlightConfiguration,

    -- ** FloodlightConfiguration_FirstDayOfWeek
    FloodlightConfiguration_FirstDayOfWeek (..),

    -- ** FloodlightConfiguration_NaturalSearchConversionAttributionOption
    FloodlightConfiguration_NaturalSearchConversionAttributionOption (..),

    -- ** FloodlightConfigurationsListResponse
    FloodlightConfigurationsListResponse (..),
    newFloodlightConfigurationsListResponse,

    -- ** FloodlightReportCompatibleFields
    FloodlightReportCompatibleFields (..),
    newFloodlightReportCompatibleFields,

    -- ** FrequencyCap
    FrequencyCap (..),
    newFrequencyCap,

    -- ** FsCommand
    FsCommand (..),
    newFsCommand,

    -- ** FsCommand_PositionOption
    FsCommand_PositionOption (..),

    -- ** GeoTargeting
    GeoTargeting (..),
    newGeoTargeting,

    -- ** InventoryItem
    InventoryItem (..),
    newInventoryItem,

    -- ** InventoryItem_Type
    InventoryItem_Type (..),

    -- ** InventoryItemsListResponse
    InventoryItemsListResponse (..),
    newInventoryItemsListResponse,

    -- ** Invoice
    Invoice (..),
    newInvoice,

    -- ** Invoice_InvoiceType
    Invoice_InvoiceType (..),

    -- ** KeyValueTargetingExpression
    KeyValueTargetingExpression (..),
    newKeyValueTargetingExpression,

    -- ** LandingPage
    LandingPage (..),
    newLandingPage,

    -- ** Language
    Language (..),
    newLanguage,

    -- ** LanguageTargeting
    LanguageTargeting (..),
    newLanguageTargeting,

    -- ** LanguagesListResponse
    LanguagesListResponse (..),
    newLanguagesListResponse,

    -- ** LastModifiedInfo
    LastModifiedInfo (..),
    newLastModifiedInfo,

    -- ** ListPopulationClause
    ListPopulationClause (..),
    newListPopulationClause,

    -- ** ListPopulationRule
    ListPopulationRule (..),
    newListPopulationRule,

    -- ** ListPopulationTerm
    ListPopulationTerm (..),
    newListPopulationTerm,

    -- ** ListPopulationTerm_Operator
    ListPopulationTerm_Operator (..),

    -- ** ListPopulationTerm_Type
    ListPopulationTerm_Type (..),

    -- ** ListTargetingExpression
    ListTargetingExpression (..),
    newListTargetingExpression,

    -- ** LookbackConfiguration
    LookbackConfiguration (..),
    newLookbackConfiguration,

    -- ** MeasurementPartnerAdvertiserLink
    MeasurementPartnerAdvertiserLink (..),
    newMeasurementPartnerAdvertiserLink,

    -- ** MeasurementPartnerAdvertiserLink_LinkStatus
    MeasurementPartnerAdvertiserLink_LinkStatus (..),

    -- ** MeasurementPartnerAdvertiserLink_MeasurementPartner
    MeasurementPartnerAdvertiserLink_MeasurementPartner (..),

    -- ** MeasurementPartnerCampaignLink
    MeasurementPartnerCampaignLink (..),
    newMeasurementPartnerCampaignLink,

    -- ** MeasurementPartnerCampaignLink_LinkStatus
    MeasurementPartnerCampaignLink_LinkStatus (..),

    -- ** MeasurementPartnerCampaignLink_MeasurementPartner
    MeasurementPartnerCampaignLink_MeasurementPartner (..),

    -- ** MeasurementPartnerWrappingData
    MeasurementPartnerWrappingData (..),
    newMeasurementPartnerWrappingData,

    -- ** MeasurementPartnerWrappingData_LinkStatus
    MeasurementPartnerWrappingData_LinkStatus (..),

    -- ** MeasurementPartnerWrappingData_MeasurementPartner
    MeasurementPartnerWrappingData_MeasurementPartner (..),

    -- ** MeasurementPartnerWrappingData_TagWrappingMode
    MeasurementPartnerWrappingData_TagWrappingMode (..),

    -- ** Metric
    Metric (..),
    newMetric,

    -- ** Metro
    Metro (..),
    newMetro,

    -- ** MetrosListResponse
    MetrosListResponse (..),
    newMetrosListResponse,

    -- ** MobileApp
    MobileApp (..),
    newMobileApp,

    -- ** MobileApp_Directory
    MobileApp_Directory (..),

    -- ** MobileAppsListResponse
    MobileAppsListResponse (..),
    newMobileAppsListResponse,

    -- ** MobileCarrier
    MobileCarrier (..),
    newMobileCarrier,

    -- ** MobileCarriersListResponse
    MobileCarriersListResponse (..),
    newMobileCarriersListResponse,

    -- ** ObaIcon
    ObaIcon (..),
    newObaIcon,

    -- ** ObjectFilter
    ObjectFilter (..),
    newObjectFilter,

    -- ** ObjectFilter_Status
    ObjectFilter_Status (..),

    -- ** OffsetPosition
    OffsetPosition (..),
    newOffsetPosition,

    -- ** OmnitureSettings
    OmnitureSettings (..),
    newOmnitureSettings,

    -- ** OperatingSystem
    OperatingSystem (..),
    newOperatingSystem,

    -- ** OperatingSystemVersion
    OperatingSystemVersion (..),
    newOperatingSystemVersion,

    -- ** OperatingSystemVersionsListResponse
    OperatingSystemVersionsListResponse (..),
    newOperatingSystemVersionsListResponse,

    -- ** OperatingSystemsListResponse
    OperatingSystemsListResponse (..),
    newOperatingSystemsListResponse,

    -- ** OptimizationActivity
    OptimizationActivity (..),
    newOptimizationActivity,

    -- ** Order
    Order (..),
    newOrder,

    -- ** OrderContact
    OrderContact (..),
    newOrderContact,

    -- ** OrderContact_ContactType
    OrderContact_ContactType (..),

    -- ** OrderDocument
    OrderDocument (..),
    newOrderDocument,

    -- ** OrderDocument_Type
    OrderDocument_Type (..),

    -- ** OrderDocumentsListResponse
    OrderDocumentsListResponse (..),
    newOrderDocumentsListResponse,

    -- ** OrdersListResponse
    OrdersListResponse (..),
    newOrdersListResponse,

    -- ** PathFilter
    PathFilter (..),
    newPathFilter,

    -- ** PathFilter_PathMatchPosition
    PathFilter_PathMatchPosition (..),

    -- ** PathReportCompatibleFields
    PathReportCompatibleFields (..),
    newPathReportCompatibleFields,

    -- ** PathReportDimensionValue
    PathReportDimensionValue (..),
    newPathReportDimensionValue,

    -- ** PathReportDimensionValue_MatchType
    PathReportDimensionValue_MatchType (..),

    -- ** PathToConversionReportCompatibleFields
    PathToConversionReportCompatibleFields (..),
    newPathToConversionReportCompatibleFields,

    -- ** Placement
    Placement (..),
    newPlacement,

    -- ** Placement_ActiveStatus
    Placement_ActiveStatus (..),

    -- ** Placement_Compatibility
    Placement_Compatibility (..),

    -- ** Placement_PaymentSource
    Placement_PaymentSource (..),

    -- ** Placement_Status
    Placement_Status (..),

    -- ** Placement_TagFormatsItem
    Placement_TagFormatsItem (..),

    -- ** Placement_VpaidAdapterChoice
    Placement_VpaidAdapterChoice (..),

    -- ** PlacementAssignment
    PlacementAssignment (..),
    newPlacementAssignment,

    -- ** PlacementGroup
    PlacementGroup (..),
    newPlacementGroup,

    -- ** PlacementGroup_ActiveStatus
    PlacementGroup_ActiveStatus (..),

    -- ** PlacementGroup_PlacementGroupType
    PlacementGroup_PlacementGroupType (..),

    -- ** PlacementGroupsListResponse
    PlacementGroupsListResponse (..),
    newPlacementGroupsListResponse,

    -- ** PlacementStrategiesListResponse
    PlacementStrategiesListResponse (..),
    newPlacementStrategiesListResponse,

    -- ** PlacementStrategy
    PlacementStrategy (..),
    newPlacementStrategy,

    -- ** PlacementTag
    PlacementTag (..),
    newPlacementTag,

    -- ** PlacementsGenerateTagsResponse
    PlacementsGenerateTagsResponse (..),
    newPlacementsGenerateTagsResponse,

    -- ** PlacementsListResponse
    PlacementsListResponse (..),
    newPlacementsListResponse,

    -- ** PlatformType
    PlatformType (..),
    newPlatformType,

    -- ** PlatformTypesListResponse
    PlatformTypesListResponse (..),
    newPlatformTypesListResponse,

    -- ** PopupWindowProperties
    PopupWindowProperties (..),
    newPopupWindowProperties,

    -- ** PopupWindowProperties_PositionType
    PopupWindowProperties_PositionType (..),

    -- ** PostalCode
    PostalCode (..),
    newPostalCode,

    -- ** PostalCodesListResponse
    PostalCodesListResponse (..),
    newPostalCodesListResponse,

    -- ** Pricing
    Pricing (..),
    newPricing,

    -- ** Pricing_CapCostType
    Pricing_CapCostType (..),

    -- ** Pricing_GroupType
    Pricing_GroupType (..),

    -- ** Pricing_PricingType
    Pricing_PricingType (..),

    -- ** PricingSchedule
    PricingSchedule (..),
    newPricingSchedule,

    -- ** PricingSchedule_CapCostOption
    PricingSchedule_CapCostOption (..),

    -- ** PricingSchedule_PricingType
    PricingSchedule_PricingType (..),

    -- ** PricingSchedulePricingPeriod
    PricingSchedulePricingPeriod (..),
    newPricingSchedulePricingPeriod,

    -- ** Project
    Project (..),
    newProject,

    -- ** Project_AudienceAgeGroup
    Project_AudienceAgeGroup (..),

    -- ** Project_AudienceGender
    Project_AudienceGender (..),

    -- ** ProjectsListResponse
    ProjectsListResponse (..),
    newProjectsListResponse,

    -- ** ReachReportCompatibleFields
    ReachReportCompatibleFields (..),
    newReachReportCompatibleFields,

    -- ** Recipient
    Recipient (..),
    newRecipient,

    -- ** Recipient_DeliveryType
    Recipient_DeliveryType (..),

    -- ** Region
    Region (..),
    newRegion,

    -- ** RegionsListResponse
    RegionsListResponse (..),
    newRegionsListResponse,

    -- ** RemarketingList
    RemarketingList (..),
    newRemarketingList,

    -- ** RemarketingList_ListSource
    RemarketingList_ListSource (..),

    -- ** RemarketingListShare
    RemarketingListShare (..),
    newRemarketingListShare,

    -- ** RemarketingListsListResponse
    RemarketingListsListResponse (..),
    newRemarketingListsListResponse,

    -- ** Report
    Report (..),
    newReport,

    -- ** Report_Criteria
    Report_Criteria (..),
    newReport_Criteria,

    -- ** Report_CrossDimensionReachCriteria
    Report_CrossDimensionReachCriteria (..),
    newReport_CrossDimensionReachCriteria,

    -- ** Report_CrossDimensionReachCriteria_Dimension
    Report_CrossDimensionReachCriteria_Dimension (..),

    -- ** Report_Delivery
    Report_Delivery (..),
    newReport_Delivery,

    -- ** Report_Delivery_EmailOwnerDeliveryType
    Report_Delivery_EmailOwnerDeliveryType (..),

    -- ** Report_FloodlightCriteria
    Report_FloodlightCriteria (..),
    newReport_FloodlightCriteria,

    -- ** Report_FloodlightCriteria_ReportProperties
    Report_FloodlightCriteria_ReportProperties (..),
    newReport_FloodlightCriteria_ReportProperties,

    -- ** Report_Format
    Report_Format (..),

    -- ** Report_PathAttributionCriteria
    Report_PathAttributionCriteria (..),
    newReport_PathAttributionCriteria,

    -- ** Report_PathCriteria
    Report_PathCriteria (..),
    newReport_PathCriteria,

    -- ** Report_PathToConversionCriteria
    Report_PathToConversionCriteria (..),
    newReport_PathToConversionCriteria,

    -- ** Report_PathToConversionCriteria_ReportProperties
    Report_PathToConversionCriteria_ReportProperties (..),
    newReport_PathToConversionCriteria_ReportProperties,

    -- ** Report_ReachCriteria
    Report_ReachCriteria (..),
    newReport_ReachCriteria,

    -- ** Report_Schedule
    Report_Schedule (..),
    newReport_Schedule,

    -- ** Report_Schedule_RepeatsOnWeekDaysItem
    Report_Schedule_RepeatsOnWeekDaysItem (..),

    -- ** Report_Schedule_RunsOnDayOfMonth
    Report_Schedule_RunsOnDayOfMonth (..),

    -- ** Report_Type
    Report_Type (..),

    -- ** ReportCompatibleFields
    ReportCompatibleFields (..),
    newReportCompatibleFields,

    -- ** ReportList
    ReportList (..),
    newReportList,

    -- ** ReportsConfiguration
    ReportsConfiguration (..),
    newReportsConfiguration,

    -- ** RichMediaExitOverride
    RichMediaExitOverride (..),
    newRichMediaExitOverride,

    -- ** Rule
    Rule (..),
    newRule,

    -- ** Site
    Site (..),
    newSite,

    -- ** SiteCompanionSetting
    SiteCompanionSetting (..),
    newSiteCompanionSetting,

    -- ** SiteContact
    SiteContact (..),
    newSiteContact,

    -- ** SiteContact_ContactType
    SiteContact_ContactType (..),

    -- ** SiteSettings
    SiteSettings (..),
    newSiteSettings,

    -- ** SiteSettings_VpaidAdapterChoiceTemplate
    SiteSettings_VpaidAdapterChoiceTemplate (..),

    -- ** SiteSkippableSetting
    SiteSkippableSetting (..),
    newSiteSkippableSetting,

    -- ** SiteTranscodeSetting
    SiteTranscodeSetting (..),
    newSiteTranscodeSetting,

    -- ** SiteVideoSettings
    SiteVideoSettings (..),
    newSiteVideoSettings,

    -- ** SiteVideoSettings_Orientation
    SiteVideoSettings_Orientation (..),

    -- ** SitesListResponse
    SitesListResponse (..),
    newSitesListResponse,

    -- ** Size
    Size (..),
    newSize,

    -- ** SizesListResponse
    SizesListResponse (..),
    newSizesListResponse,

    -- ** SkippableSetting
    SkippableSetting (..),
    newSkippableSetting,

    -- ** SortedDimension
    SortedDimension (..),
    newSortedDimension,

    -- ** SortedDimension_SortOrder
    SortedDimension_SortOrder (..),

    -- ** Subaccount
    Subaccount (..),
    newSubaccount,

    -- ** SubaccountsListResponse
    SubaccountsListResponse (..),
    newSubaccountsListResponse,

    -- ** TagData
    TagData (..),
    newTagData,

    -- ** TagData_Format
    TagData_Format (..),

    -- ** TagSetting
    TagSetting (..),
    newTagSetting,

    -- ** TagSetting_KeywordOption
    TagSetting_KeywordOption (..),

    -- ** TagSettings
    TagSettings (..),
    newTagSettings,

    -- ** TargetWindow
    TargetWindow (..),
    newTargetWindow,

    -- ** TargetWindow_TargetWindowOption
    TargetWindow_TargetWindowOption (..),

    -- ** TargetableRemarketingList
    TargetableRemarketingList (..),
    newTargetableRemarketingList,

    -- ** TargetableRemarketingList_ListSource
    TargetableRemarketingList_ListSource (..),

    -- ** TargetableRemarketingListsListResponse
    TargetableRemarketingListsListResponse (..),
    newTargetableRemarketingListsListResponse,

    -- ** TargetingTemplate
    TargetingTemplate (..),
    newTargetingTemplate,

    -- ** TargetingTemplatesListResponse
    TargetingTemplatesListResponse (..),
    newTargetingTemplatesListResponse,

    -- ** TechnologyTargeting
    TechnologyTargeting (..),
    newTechnologyTargeting,

    -- ** ThirdPartyAuthenticationToken
    ThirdPartyAuthenticationToken (..),
    newThirdPartyAuthenticationToken,

    -- ** ThirdPartyTrackingUrl
    ThirdPartyTrackingUrl (..),
    newThirdPartyTrackingUrl,

    -- ** ThirdPartyTrackingUrl_ThirdPartyUrlType
    ThirdPartyTrackingUrl_ThirdPartyUrlType (..),

    -- ** TranscodeSetting
    TranscodeSetting (..),
    newTranscodeSetting,

    -- ** UniversalAdId
    UniversalAdId (..),
    newUniversalAdId,

    -- ** UniversalAdId_Registry
    UniversalAdId_Registry (..),

    -- ** UserDefinedVariableConfiguration
    UserDefinedVariableConfiguration (..),
    newUserDefinedVariableConfiguration,

    -- ** UserDefinedVariableConfiguration_DataType
    UserDefinedVariableConfiguration_DataType (..),

    -- ** UserDefinedVariableConfiguration_VariableType
    UserDefinedVariableConfiguration_VariableType (..),

    -- ** UserProfile
    UserProfile (..),
    newUserProfile,

    -- ** UserProfileList
    UserProfileList (..),
    newUserProfileList,

    -- ** UserRole
    UserRole (..),
    newUserRole,

    -- ** UserRolePermission
    UserRolePermission (..),
    newUserRolePermission,

    -- ** UserRolePermission_Availability
    UserRolePermission_Availability (..),

    -- ** UserRolePermissionGroup
    UserRolePermissionGroup (..),
    newUserRolePermissionGroup,

    -- ** UserRolePermissionGroupsListResponse
    UserRolePermissionGroupsListResponse (..),
    newUserRolePermissionGroupsListResponse,

    -- ** UserRolePermissionsListResponse
    UserRolePermissionsListResponse (..),
    newUserRolePermissionsListResponse,

    -- ** UserRolesListResponse
    UserRolesListResponse (..),
    newUserRolesListResponse,

    -- ** UvarFilter
    UvarFilter (..),
    newUvarFilter,

    -- ** UvarFilter_Match
    UvarFilter_Match (..),

    -- ** VideoFormat
    VideoFormat (..),
    newVideoFormat,

    -- ** VideoFormat_FileType
    VideoFormat_FileType (..),

    -- ** VideoFormatsListResponse
    VideoFormatsListResponse (..),
    newVideoFormatsListResponse,

    -- ** VideoOffset
    VideoOffset (..),
    newVideoOffset,

    -- ** VideoSettings
    VideoSettings (..),
    newVideoSettings,

    -- ** VideoSettings_Orientation
    VideoSettings_Orientation (..),

    -- ** AccountUserProfilesListSortField
    AccountUserProfilesListSortField (..),

    -- ** AccountUserProfilesListSortOrder
    AccountUserProfilesListSortOrder (..),

    -- ** AccountsListSortField
    AccountsListSortField (..),

    -- ** AccountsListSortOrder
    AccountsListSortOrder (..),

    -- ** AdsListCompatibility
    AdsListCompatibility (..),

    -- ** AdsListSortField
    AdsListSortField (..),

    -- ** AdsListSortOrder
    AdsListSortOrder (..),

    -- ** AdsListType
    AdsListType (..),

    -- ** AdvertiserGroupsListSortField
    AdvertiserGroupsListSortField (..),

    -- ** AdvertiserGroupsListSortOrder
    AdvertiserGroupsListSortOrder (..),

    -- ** AdvertiserLandingPagesListSortField
    AdvertiserLandingPagesListSortField (..),

    -- ** AdvertiserLandingPagesListSortOrder
    AdvertiserLandingPagesListSortOrder (..),

    -- ** AdvertisersListSortField
    AdvertisersListSortField (..),

    -- ** AdvertisersListSortOrder
    AdvertisersListSortOrder (..),

    -- ** AdvertisersListStatus
    AdvertisersListStatus (..),

    -- ** BillingProfilesListSortField
    BillingProfilesListSortField (..),

    -- ** BillingProfilesListSortOrder
    BillingProfilesListSortOrder (..),

    -- ** BillingProfilesListStatus
    BillingProfilesListStatus (..),

    -- ** CampaignCreativeAssociationsListSortOrder
    CampaignCreativeAssociationsListSortOrder (..),

    -- ** CampaignsListSortField
    CampaignsListSortField (..),

    -- ** CampaignsListSortOrder
    CampaignsListSortOrder (..),

    -- ** ChangeLogsListAction
    ChangeLogsListAction (..),

    -- ** ChangeLogsListObjectType
    ChangeLogsListObjectType (..),

    -- ** ContentCategoriesListSortField
    ContentCategoriesListSortField (..),

    -- ** ContentCategoriesListSortOrder
    ContentCategoriesListSortOrder (..),

    -- ** CreativeFieldValuesListSortField
    CreativeFieldValuesListSortField (..),

    -- ** CreativeFieldValuesListSortOrder
    CreativeFieldValuesListSortOrder (..),

    -- ** CreativeFieldsListSortField
    CreativeFieldsListSortField (..),

    -- ** CreativeFieldsListSortOrder
    CreativeFieldsListSortOrder (..),

    -- ** CreativeGroupsListSortField
    CreativeGroupsListSortField (..),

    -- ** CreativeGroupsListSortOrder
    CreativeGroupsListSortOrder (..),

    -- ** CreativesListSortField
    CreativesListSortField (..),

    -- ** CreativesListSortOrder
    CreativesListSortOrder (..),

    -- ** CreativesListTypes
    CreativesListTypes (..),

    -- ** DirectorySitesListSortField
    DirectorySitesListSortField (..),

    -- ** DirectorySitesListSortOrder
    DirectorySitesListSortOrder (..),

    -- ** DynamicTargetingKeysDeleteObjectType
    DynamicTargetingKeysDeleteObjectType (..),

    -- ** DynamicTargetingKeysListObjectType
    DynamicTargetingKeysListObjectType (..),

    -- ** EventTagsListEventTagTypes
    EventTagsListEventTagTypes (..),

    -- ** EventTagsListSortField
    EventTagsListSortField (..),

    -- ** EventTagsListSortOrder
    EventTagsListSortOrder (..),

    -- ** FilesListScope
    FilesListScope (..),

    -- ** FilesListSortField
    FilesListSortField (..),

    -- ** FilesListSortOrder
    FilesListSortOrder (..),

    -- ** FloodlightActivitiesListFloodlightActivityGroupType
    FloodlightActivitiesListFloodlightActivityGroupType (..),

    -- ** FloodlightActivitiesListSortField
    FloodlightActivitiesListSortField (..),

    -- ** FloodlightActivitiesListSortOrder
    FloodlightActivitiesListSortOrder (..),

    -- ** FloodlightActivityGroupsListSortField
    FloodlightActivityGroupsListSortField (..),

    -- ** FloodlightActivityGroupsListSortOrder
    FloodlightActivityGroupsListSortOrder (..),

    -- ** FloodlightActivityGroupsListType
    FloodlightActivityGroupsListType (..),

    -- ** InventoryItemsListSortField
    InventoryItemsListSortField (..),

    -- ** InventoryItemsListSortOrder
    InventoryItemsListSortOrder (..),

    -- ** InventoryItemsListType
    InventoryItemsListType (..),

    -- ** MobileAppsListDirectories
    MobileAppsListDirectories (..),

    -- ** OrderDocumentsListSortField
    OrderDocumentsListSortField (..),

    -- ** OrderDocumentsListSortOrder
    OrderDocumentsListSortOrder (..),

    -- ** OrdersListSortField
    OrdersListSortField (..),

    -- ** OrdersListSortOrder
    OrdersListSortOrder (..),

    -- ** PlacementGroupsListActiveStatus
    PlacementGroupsListActiveStatus (..),

    -- ** PlacementGroupsListPlacementGroupType
    PlacementGroupsListPlacementGroupType (..),

    -- ** PlacementGroupsListPricingTypes
    PlacementGroupsListPricingTypes (..),

    -- ** PlacementGroupsListSortField
    PlacementGroupsListSortField (..),

    -- ** PlacementGroupsListSortOrder
    PlacementGroupsListSortOrder (..),

    -- ** PlacementStrategiesListSortField
    PlacementStrategiesListSortField (..),

    -- ** PlacementStrategiesListSortOrder
    PlacementStrategiesListSortOrder (..),

    -- ** PlacementsGeneratetagsTagFormats
    PlacementsGeneratetagsTagFormats (..),

    -- ** PlacementsListActiveStatus
    PlacementsListActiveStatus (..),

    -- ** PlacementsListCompatibilities
    PlacementsListCompatibilities (..),

    -- ** PlacementsListPaymentSource
    PlacementsListPaymentSource (..),

    -- ** PlacementsListPricingTypes
    PlacementsListPricingTypes (..),

    -- ** PlacementsListSortField
    PlacementsListSortField (..),

    -- ** PlacementsListSortOrder
    PlacementsListSortOrder (..),

    -- ** ProjectsListSortField
    ProjectsListSortField (..),

    -- ** ProjectsListSortOrder
    ProjectsListSortOrder (..),

    -- ** RemarketingListsListSortField
    RemarketingListsListSortField (..),

    -- ** RemarketingListsListSortOrder
    RemarketingListsListSortOrder (..),

    -- ** ReportsFilesListSortField
    ReportsFilesListSortField (..),

    -- ** ReportsFilesListSortOrder
    ReportsFilesListSortOrder (..),

    -- ** ReportsListScope
    ReportsListScope (..),

    -- ** ReportsListSortField
    ReportsListSortField (..),

    -- ** ReportsListSortOrder
    ReportsListSortOrder (..),

    -- ** SitesListSortField
    SitesListSortField (..),

    -- ** SitesListSortOrder
    SitesListSortOrder (..),

    -- ** SubaccountsListSortField
    SubaccountsListSortField (..),

    -- ** SubaccountsListSortOrder
    SubaccountsListSortOrder (..),

    -- ** TargetableRemarketingListsListSortField
    TargetableRemarketingListsListSortField (..),

    -- ** TargetableRemarketingListsListSortOrder
    TargetableRemarketingListsListSortOrder (..),

    -- ** TargetingTemplatesListSortField
    TargetingTemplatesListSortField (..),

    -- ** TargetingTemplatesListSortOrder
    TargetingTemplatesListSortOrder (..),

    -- ** UserRolesListSortField
    UserRolesListSortField (..),

    -- ** UserRolesListSortOrder
    UserRolesListSortOrder (..),
  )
where

import Gogol.DFAReporting.AccountActiveAdSummaries.Get
import Gogol.DFAReporting.AccountPermissionGroups.Get
import Gogol.DFAReporting.AccountPermissionGroups.List
import Gogol.DFAReporting.AccountPermissions.Get
import Gogol.DFAReporting.AccountPermissions.List
import Gogol.DFAReporting.AccountUserProfiles.Get
import Gogol.DFAReporting.AccountUserProfiles.Insert
import Gogol.DFAReporting.AccountUserProfiles.List
import Gogol.DFAReporting.AccountUserProfiles.Patch
import Gogol.DFAReporting.AccountUserProfiles.Update
import Gogol.DFAReporting.Accounts.Get
import Gogol.DFAReporting.Accounts.List
import Gogol.DFAReporting.Accounts.Patch
import Gogol.DFAReporting.Accounts.Update
import Gogol.DFAReporting.Ads.Get
import Gogol.DFAReporting.Ads.Insert
import Gogol.DFAReporting.Ads.List
import Gogol.DFAReporting.Ads.Patch
import Gogol.DFAReporting.Ads.Update
import Gogol.DFAReporting.AdvertiserGroups.Delete
import Gogol.DFAReporting.AdvertiserGroups.Get
import Gogol.DFAReporting.AdvertiserGroups.Insert
import Gogol.DFAReporting.AdvertiserGroups.List
import Gogol.DFAReporting.AdvertiserGroups.Patch
import Gogol.DFAReporting.AdvertiserGroups.Update
import Gogol.DFAReporting.AdvertiserInvoices.List
import Gogol.DFAReporting.AdvertiserLandingPages.Get
import Gogol.DFAReporting.AdvertiserLandingPages.Insert
import Gogol.DFAReporting.AdvertiserLandingPages.List
import Gogol.DFAReporting.AdvertiserLandingPages.Patch
import Gogol.DFAReporting.AdvertiserLandingPages.Update
import Gogol.DFAReporting.Advertisers.Get
import Gogol.DFAReporting.Advertisers.Insert
import Gogol.DFAReporting.Advertisers.List
import Gogol.DFAReporting.Advertisers.Patch
import Gogol.DFAReporting.Advertisers.Update
import Gogol.DFAReporting.BillingAssignments.Insert
import Gogol.DFAReporting.BillingAssignments.List
import Gogol.DFAReporting.BillingProfiles.Get
import Gogol.DFAReporting.BillingProfiles.List
import Gogol.DFAReporting.BillingProfiles.Update
import Gogol.DFAReporting.BillingRates.List
import Gogol.DFAReporting.Browsers.List
import Gogol.DFAReporting.CampaignCreativeAssociations.Insert
import Gogol.DFAReporting.CampaignCreativeAssociations.List
import Gogol.DFAReporting.Campaigns.Get
import Gogol.DFAReporting.Campaigns.Insert
import Gogol.DFAReporting.Campaigns.List
import Gogol.DFAReporting.Campaigns.Patch
import Gogol.DFAReporting.Campaigns.Update
import Gogol.DFAReporting.ChangeLogs.Get
import Gogol.DFAReporting.ChangeLogs.List
import Gogol.DFAReporting.Cities.List
import Gogol.DFAReporting.ConnectionTypes.Get
import Gogol.DFAReporting.ConnectionTypes.List
import Gogol.DFAReporting.ContentCategories.Delete
import Gogol.DFAReporting.ContentCategories.Get
import Gogol.DFAReporting.ContentCategories.Insert
import Gogol.DFAReporting.ContentCategories.List
import Gogol.DFAReporting.ContentCategories.Patch
import Gogol.DFAReporting.ContentCategories.Update
import Gogol.DFAReporting.Conversions.Batchinsert
import Gogol.DFAReporting.Conversions.Batchupdate
import Gogol.DFAReporting.Countries.Get
import Gogol.DFAReporting.Countries.List
import Gogol.DFAReporting.CreativeAssets.Insert
import Gogol.DFAReporting.CreativeFieldValues.Delete
import Gogol.DFAReporting.CreativeFieldValues.Get
import Gogol.DFAReporting.CreativeFieldValues.Insert
import Gogol.DFAReporting.CreativeFieldValues.List
import Gogol.DFAReporting.CreativeFieldValues.Patch
import Gogol.DFAReporting.CreativeFieldValues.Update
import Gogol.DFAReporting.CreativeFields.Delete
import Gogol.DFAReporting.CreativeFields.Get
import Gogol.DFAReporting.CreativeFields.Insert
import Gogol.DFAReporting.CreativeFields.List
import Gogol.DFAReporting.CreativeFields.Patch
import Gogol.DFAReporting.CreativeFields.Update
import Gogol.DFAReporting.CreativeGroups.Get
import Gogol.DFAReporting.CreativeGroups.Insert
import Gogol.DFAReporting.CreativeGroups.List
import Gogol.DFAReporting.CreativeGroups.Patch
import Gogol.DFAReporting.CreativeGroups.Update
import Gogol.DFAReporting.Creatives.Get
import Gogol.DFAReporting.Creatives.Insert
import Gogol.DFAReporting.Creatives.List
import Gogol.DFAReporting.Creatives.Patch
import Gogol.DFAReporting.Creatives.Update
import Gogol.DFAReporting.DimensionValues.Query
import Gogol.DFAReporting.DirectorySites.Get
import Gogol.DFAReporting.DirectorySites.Insert
import Gogol.DFAReporting.DirectorySites.List
import Gogol.DFAReporting.DynamicTargetingKeys.Delete
import Gogol.DFAReporting.DynamicTargetingKeys.Insert
import Gogol.DFAReporting.DynamicTargetingKeys.List
import Gogol.DFAReporting.EventTags.Delete
import Gogol.DFAReporting.EventTags.Get
import Gogol.DFAReporting.EventTags.Insert
import Gogol.DFAReporting.EventTags.List
import Gogol.DFAReporting.EventTags.Patch
import Gogol.DFAReporting.EventTags.Update
import Gogol.DFAReporting.Files.Get
import Gogol.DFAReporting.Files.List
import Gogol.DFAReporting.FloodlightActivities.Delete
import Gogol.DFAReporting.FloodlightActivities.Generatetag
import Gogol.DFAReporting.FloodlightActivities.Get
import Gogol.DFAReporting.FloodlightActivities.Insert
import Gogol.DFAReporting.FloodlightActivities.List
import Gogol.DFAReporting.FloodlightActivities.Patch
import Gogol.DFAReporting.FloodlightActivities.Update
import Gogol.DFAReporting.FloodlightActivityGroups.Get
import Gogol.DFAReporting.FloodlightActivityGroups.Insert
import Gogol.DFAReporting.FloodlightActivityGroups.List
import Gogol.DFAReporting.FloodlightActivityGroups.Patch
import Gogol.DFAReporting.FloodlightActivityGroups.Update
import Gogol.DFAReporting.FloodlightConfigurations.Get
import Gogol.DFAReporting.FloodlightConfigurations.List
import Gogol.DFAReporting.FloodlightConfigurations.Patch
import Gogol.DFAReporting.FloodlightConfigurations.Update
import Gogol.DFAReporting.InventoryItems.Get
import Gogol.DFAReporting.InventoryItems.List
import Gogol.DFAReporting.Languages.List
import Gogol.DFAReporting.Metros.List
import Gogol.DFAReporting.MobileApps.Get
import Gogol.DFAReporting.MobileApps.List
import Gogol.DFAReporting.MobileCarriers.Get
import Gogol.DFAReporting.MobileCarriers.List
import Gogol.DFAReporting.OperatingSystemVersions.Get
import Gogol.DFAReporting.OperatingSystemVersions.List
import Gogol.DFAReporting.OperatingSystems.Get
import Gogol.DFAReporting.OperatingSystems.List
import Gogol.DFAReporting.OrderDocuments.Get
import Gogol.DFAReporting.OrderDocuments.List
import Gogol.DFAReporting.Orders.Get
import Gogol.DFAReporting.Orders.List
import Gogol.DFAReporting.PlacementGroups.Get
import Gogol.DFAReporting.PlacementGroups.Insert
import Gogol.DFAReporting.PlacementGroups.List
import Gogol.DFAReporting.PlacementGroups.Patch
import Gogol.DFAReporting.PlacementGroups.Update
import Gogol.DFAReporting.PlacementStrategies.Delete
import Gogol.DFAReporting.PlacementStrategies.Get
import Gogol.DFAReporting.PlacementStrategies.Insert
import Gogol.DFAReporting.PlacementStrategies.List
import Gogol.DFAReporting.PlacementStrategies.Patch
import Gogol.DFAReporting.PlacementStrategies.Update
import Gogol.DFAReporting.Placements.Generatetags
import Gogol.DFAReporting.Placements.Get
import Gogol.DFAReporting.Placements.Insert
import Gogol.DFAReporting.Placements.List
import Gogol.DFAReporting.Placements.Patch
import Gogol.DFAReporting.Placements.Update
import Gogol.DFAReporting.PlatformTypes.Get
import Gogol.DFAReporting.PlatformTypes.List
import Gogol.DFAReporting.PostalCodes.Get
import Gogol.DFAReporting.PostalCodes.List
import Gogol.DFAReporting.Projects.Get
import Gogol.DFAReporting.Projects.List
import Gogol.DFAReporting.Regions.List
import Gogol.DFAReporting.RemarketingListShares.Get
import Gogol.DFAReporting.RemarketingListShares.Patch
import Gogol.DFAReporting.RemarketingListShares.Update
import Gogol.DFAReporting.RemarketingLists.Get
import Gogol.DFAReporting.RemarketingLists.Insert
import Gogol.DFAReporting.RemarketingLists.List
import Gogol.DFAReporting.RemarketingLists.Patch
import Gogol.DFAReporting.RemarketingLists.Update
import Gogol.DFAReporting.Reports.CompatibleFields.Query
import Gogol.DFAReporting.Reports.Delete
import Gogol.DFAReporting.Reports.Files.Get
import Gogol.DFAReporting.Reports.Files.List
import Gogol.DFAReporting.Reports.Get
import Gogol.DFAReporting.Reports.Insert
import Gogol.DFAReporting.Reports.List
import Gogol.DFAReporting.Reports.Patch
import Gogol.DFAReporting.Reports.Run
import Gogol.DFAReporting.Reports.Update
import Gogol.DFAReporting.Sites.Get
import Gogol.DFAReporting.Sites.Insert
import Gogol.DFAReporting.Sites.List
import Gogol.DFAReporting.Sites.Patch
import Gogol.DFAReporting.Sites.Update
import Gogol.DFAReporting.Sizes.Get
import Gogol.DFAReporting.Sizes.Insert
import Gogol.DFAReporting.Sizes.List
import Gogol.DFAReporting.Subaccounts.Get
import Gogol.DFAReporting.Subaccounts.Insert
import Gogol.DFAReporting.Subaccounts.List
import Gogol.DFAReporting.Subaccounts.Patch
import Gogol.DFAReporting.Subaccounts.Update
import Gogol.DFAReporting.TargetableRemarketingLists.Get
import Gogol.DFAReporting.TargetableRemarketingLists.List
import Gogol.DFAReporting.TargetingTemplates.Get
import Gogol.DFAReporting.TargetingTemplates.Insert
import Gogol.DFAReporting.TargetingTemplates.List
import Gogol.DFAReporting.TargetingTemplates.Patch
import Gogol.DFAReporting.TargetingTemplates.Update
import Gogol.DFAReporting.Types
import Gogol.DFAReporting.UserProfiles.Get
import Gogol.DFAReporting.UserProfiles.List
import Gogol.DFAReporting.UserRolePermissionGroups.Get
import Gogol.DFAReporting.UserRolePermissionGroups.List
import Gogol.DFAReporting.UserRolePermissions.Get
import Gogol.DFAReporting.UserRolePermissions.List
import Gogol.DFAReporting.UserRoles.Delete
import Gogol.DFAReporting.UserRoles.Get
import Gogol.DFAReporting.UserRoles.Insert
import Gogol.DFAReporting.UserRoles.List
import Gogol.DFAReporting.UserRoles.Patch
import Gogol.DFAReporting.UserRoles.Update
import Gogol.DFAReporting.VideoFormats.Get
import Gogol.DFAReporting.VideoFormats.List
