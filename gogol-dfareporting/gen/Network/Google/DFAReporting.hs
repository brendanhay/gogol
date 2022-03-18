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
-- Module      : Network.Google.DFAReporting
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Build applications to efficiently manage large or complex trafficking, reporting, and attribution workflows for Campaign Manager 360.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/ Campaign Manager 360 API Reference>
module Network.Google.DFAReporting
  ( -- * Configuration
    dFAReportingService,

    -- * OAuth Scopes
    ddmconversionsScope,
    dFAReportingScope,
    dfatraffickingScope,

    -- * Resources

    -- ** dfareporting.accountActiveAdSummaries.get
    DFAReportingAccountActiveAdSummariesGetResource,
    newDFAReportingAccountActiveAdSummariesGet,
    DFAReportingAccountActiveAdSummariesGet,

    -- ** dfareporting.accountPermissionGroups.get
    DFAReportingAccountPermissionGroupsGetResource,
    newDFAReportingAccountPermissionGroupsGet,
    DFAReportingAccountPermissionGroupsGet,

    -- ** dfareporting.accountPermissionGroups.list
    DFAReportingAccountPermissionGroupsListResource,
    newDFAReportingAccountPermissionGroupsList,
    DFAReportingAccountPermissionGroupsList,

    -- ** dfareporting.accountPermissions.get
    DFAReportingAccountPermissionsGetResource,
    newDFAReportingAccountPermissionsGet,
    DFAReportingAccountPermissionsGet,

    -- ** dfareporting.accountPermissions.list
    DFAReportingAccountPermissionsListResource,
    newDFAReportingAccountPermissionsList,
    DFAReportingAccountPermissionsList,

    -- ** dfareporting.accountUserProfiles.get
    DFAReportingAccountUserProfilesGetResource,
    newDFAReportingAccountUserProfilesGet,
    DFAReportingAccountUserProfilesGet,

    -- ** dfareporting.accountUserProfiles.insert
    DFAReportingAccountUserProfilesInsertResource,
    newDFAReportingAccountUserProfilesInsert,
    DFAReportingAccountUserProfilesInsert,

    -- ** dfareporting.accountUserProfiles.list
    DFAReportingAccountUserProfilesListResource,
    newDFAReportingAccountUserProfilesList,
    DFAReportingAccountUserProfilesList,

    -- ** dfareporting.accountUserProfiles.patch
    DFAReportingAccountUserProfilesPatchResource,
    newDFAReportingAccountUserProfilesPatch,
    DFAReportingAccountUserProfilesPatch,

    -- ** dfareporting.accountUserProfiles.update
    DFAReportingAccountUserProfilesUpdateResource,
    newDFAReportingAccountUserProfilesUpdate,
    DFAReportingAccountUserProfilesUpdate,

    -- ** dfareporting.accounts.get
    DFAReportingAccountsGetResource,
    newDFAReportingAccountsGet,
    DFAReportingAccountsGet,

    -- ** dfareporting.accounts.list
    DFAReportingAccountsListResource,
    newDFAReportingAccountsList,
    DFAReportingAccountsList,

    -- ** dfareporting.accounts.patch
    DFAReportingAccountsPatchResource,
    newDFAReportingAccountsPatch,
    DFAReportingAccountsPatch,

    -- ** dfareporting.accounts.update
    DFAReportingAccountsUpdateResource,
    newDFAReportingAccountsUpdate,
    DFAReportingAccountsUpdate,

    -- ** dfareporting.ads.get
    DFAReportingAdsGetResource,
    newDFAReportingAdsGet,
    DFAReportingAdsGet,

    -- ** dfareporting.ads.insert
    DFAReportingAdsInsertResource,
    newDFAReportingAdsInsert,
    DFAReportingAdsInsert,

    -- ** dfareporting.ads.list
    DFAReportingAdsListResource,
    newDFAReportingAdsList,
    DFAReportingAdsList,

    -- ** dfareporting.ads.patch
    DFAReportingAdsPatchResource,
    newDFAReportingAdsPatch,
    DFAReportingAdsPatch,

    -- ** dfareporting.ads.update
    DFAReportingAdsUpdateResource,
    newDFAReportingAdsUpdate,
    DFAReportingAdsUpdate,

    -- ** dfareporting.advertiserGroups.delete
    DFAReportingAdvertiserGroupsDeleteResource,
    newDFAReportingAdvertiserGroupsDelete,
    DFAReportingAdvertiserGroupsDelete,

    -- ** dfareporting.advertiserGroups.get
    DFAReportingAdvertiserGroupsGetResource,
    newDFAReportingAdvertiserGroupsGet,
    DFAReportingAdvertiserGroupsGet,

    -- ** dfareporting.advertiserGroups.insert
    DFAReportingAdvertiserGroupsInsertResource,
    newDFAReportingAdvertiserGroupsInsert,
    DFAReportingAdvertiserGroupsInsert,

    -- ** dfareporting.advertiserGroups.list
    DFAReportingAdvertiserGroupsListResource,
    newDFAReportingAdvertiserGroupsList,
    DFAReportingAdvertiserGroupsList,

    -- ** dfareporting.advertiserGroups.patch
    DFAReportingAdvertiserGroupsPatchResource,
    newDFAReportingAdvertiserGroupsPatch,
    DFAReportingAdvertiserGroupsPatch,

    -- ** dfareporting.advertiserGroups.update
    DFAReportingAdvertiserGroupsUpdateResource,
    newDFAReportingAdvertiserGroupsUpdate,
    DFAReportingAdvertiserGroupsUpdate,

    -- ** dfareporting.advertiserLandingPages.get
    DFAReportingAdvertiserLandingPagesGetResource,
    newDFAReportingAdvertiserLandingPagesGet,
    DFAReportingAdvertiserLandingPagesGet,

    -- ** dfareporting.advertiserLandingPages.insert
    DFAReportingAdvertiserLandingPagesInsertResource,
    newDFAReportingAdvertiserLandingPagesInsert,
    DFAReportingAdvertiserLandingPagesInsert,

    -- ** dfareporting.advertiserLandingPages.list
    DFAReportingAdvertiserLandingPagesListResource,
    newDFAReportingAdvertiserLandingPagesList,
    DFAReportingAdvertiserLandingPagesList,

    -- ** dfareporting.advertiserLandingPages.patch
    DFAReportingAdvertiserLandingPagesPatchResource,
    newDFAReportingAdvertiserLandingPagesPatch,
    DFAReportingAdvertiserLandingPagesPatch,

    -- ** dfareporting.advertiserLandingPages.update
    DFAReportingAdvertiserLandingPagesUpdateResource,
    newDFAReportingAdvertiserLandingPagesUpdate,
    DFAReportingAdvertiserLandingPagesUpdate,

    -- ** dfareporting.advertisers.get
    DFAReportingAdvertisersGetResource,
    newDFAReportingAdvertisersGet,
    DFAReportingAdvertisersGet,

    -- ** dfareporting.advertisers.insert
    DFAReportingAdvertisersInsertResource,
    newDFAReportingAdvertisersInsert,
    DFAReportingAdvertisersInsert,

    -- ** dfareporting.advertisers.list
    DFAReportingAdvertisersListResource,
    newDFAReportingAdvertisersList,
    DFAReportingAdvertisersList,

    -- ** dfareporting.advertisers.patch
    DFAReportingAdvertisersPatchResource,
    newDFAReportingAdvertisersPatch,
    DFAReportingAdvertisersPatch,

    -- ** dfareporting.advertisers.update
    DFAReportingAdvertisersUpdateResource,
    newDFAReportingAdvertisersUpdate,
    DFAReportingAdvertisersUpdate,

    -- ** dfareporting.browsers.list
    DFAReportingBrowsersListResource,
    newDFAReportingBrowsersList,
    DFAReportingBrowsersList,

    -- ** dfareporting.campaignCreativeAssociations.insert
    DFAReportingCampaignCreativeAssociationsInsertResource,
    newDFAReportingCampaignCreativeAssociationsInsert,
    DFAReportingCampaignCreativeAssociationsInsert,

    -- ** dfareporting.campaignCreativeAssociations.list
    DFAReportingCampaignCreativeAssociationsListResource,
    newDFAReportingCampaignCreativeAssociationsList,
    DFAReportingCampaignCreativeAssociationsList,

    -- ** dfareporting.campaigns.get
    DFAReportingCampaignsGetResource,
    newDFAReportingCampaignsGet,
    DFAReportingCampaignsGet,

    -- ** dfareporting.campaigns.insert
    DFAReportingCampaignsInsertResource,
    newDFAReportingCampaignsInsert,
    DFAReportingCampaignsInsert,

    -- ** dfareporting.campaigns.list
    DFAReportingCampaignsListResource,
    newDFAReportingCampaignsList,
    DFAReportingCampaignsList,

    -- ** dfareporting.campaigns.patch
    DFAReportingCampaignsPatchResource,
    newDFAReportingCampaignsPatch,
    DFAReportingCampaignsPatch,

    -- ** dfareporting.campaigns.update
    DFAReportingCampaignsUpdateResource,
    newDFAReportingCampaignsUpdate,
    DFAReportingCampaignsUpdate,

    -- ** dfareporting.changeLogs.get
    DFAReportingChangeLogsGetResource,
    newDFAReportingChangeLogsGet,
    DFAReportingChangeLogsGet,

    -- ** dfareporting.changeLogs.list
    DFAReportingChangeLogsListResource,
    newDFAReportingChangeLogsList,
    DFAReportingChangeLogsList,

    -- ** dfareporting.cities.list
    DFAReportingCitiesListResource,
    newDFAReportingCitiesList,
    DFAReportingCitiesList,

    -- ** dfareporting.connectionTypes.get
    DFAReportingConnectionTypesGetResource,
    newDFAReportingConnectionTypesGet,
    DFAReportingConnectionTypesGet,

    -- ** dfareporting.connectionTypes.list
    DFAReportingConnectionTypesListResource,
    newDFAReportingConnectionTypesList,
    DFAReportingConnectionTypesList,

    -- ** dfareporting.contentCategories.delete
    DFAReportingContentCategoriesDeleteResource,
    newDFAReportingContentCategoriesDelete,
    DFAReportingContentCategoriesDelete,

    -- ** dfareporting.contentCategories.get
    DFAReportingContentCategoriesGetResource,
    newDFAReportingContentCategoriesGet,
    DFAReportingContentCategoriesGet,

    -- ** dfareporting.contentCategories.insert
    DFAReportingContentCategoriesInsertResource,
    newDFAReportingContentCategoriesInsert,
    DFAReportingContentCategoriesInsert,

    -- ** dfareporting.contentCategories.list
    DFAReportingContentCategoriesListResource,
    newDFAReportingContentCategoriesList,
    DFAReportingContentCategoriesList,

    -- ** dfareporting.contentCategories.patch
    DFAReportingContentCategoriesPatchResource,
    newDFAReportingContentCategoriesPatch,
    DFAReportingContentCategoriesPatch,

    -- ** dfareporting.contentCategories.update
    DFAReportingContentCategoriesUpdateResource,
    newDFAReportingContentCategoriesUpdate,
    DFAReportingContentCategoriesUpdate,

    -- ** dfareporting.conversions.batchinsert
    DFAReportingConversionsBatchinsertResource,
    newDFAReportingConversionsBatchinsert,
    DFAReportingConversionsBatchinsert,

    -- ** dfareporting.conversions.batchupdate
    DFAReportingConversionsBatchupdateResource,
    newDFAReportingConversionsBatchupdate,
    DFAReportingConversionsBatchupdate,

    -- ** dfareporting.countries.get
    DFAReportingCountriesGetResource,
    newDFAReportingCountriesGet,
    DFAReportingCountriesGet,

    -- ** dfareporting.countries.list
    DFAReportingCountriesListResource,
    newDFAReportingCountriesList,
    DFAReportingCountriesList,

    -- ** dfareporting.creativeAssets.insert
    DFAReportingCreativeAssetsInsertResource,
    newDFAReportingCreativeAssetsInsert,
    DFAReportingCreativeAssetsInsert,

    -- ** dfareporting.creativeFieldValues.delete
    DFAReportingCreativeFieldValuesDeleteResource,
    newDFAReportingCreativeFieldValuesDelete,
    DFAReportingCreativeFieldValuesDelete,

    -- ** dfareporting.creativeFieldValues.get
    DFAReportingCreativeFieldValuesGetResource,
    newDFAReportingCreativeFieldValuesGet,
    DFAReportingCreativeFieldValuesGet,

    -- ** dfareporting.creativeFieldValues.insert
    DFAReportingCreativeFieldValuesInsertResource,
    newDFAReportingCreativeFieldValuesInsert,
    DFAReportingCreativeFieldValuesInsert,

    -- ** dfareporting.creativeFieldValues.list
    DFAReportingCreativeFieldValuesListResource,
    newDFAReportingCreativeFieldValuesList,
    DFAReportingCreativeFieldValuesList,

    -- ** dfareporting.creativeFieldValues.patch
    DFAReportingCreativeFieldValuesPatchResource,
    newDFAReportingCreativeFieldValuesPatch,
    DFAReportingCreativeFieldValuesPatch,

    -- ** dfareporting.creativeFieldValues.update
    DFAReportingCreativeFieldValuesUpdateResource,
    newDFAReportingCreativeFieldValuesUpdate,
    DFAReportingCreativeFieldValuesUpdate,

    -- ** dfareporting.creativeFields.delete
    DFAReportingCreativeFieldsDeleteResource,
    newDFAReportingCreativeFieldsDelete,
    DFAReportingCreativeFieldsDelete,

    -- ** dfareporting.creativeFields.get
    DFAReportingCreativeFieldsGetResource,
    newDFAReportingCreativeFieldsGet,
    DFAReportingCreativeFieldsGet,

    -- ** dfareporting.creativeFields.insert
    DFAReportingCreativeFieldsInsertResource,
    newDFAReportingCreativeFieldsInsert,
    DFAReportingCreativeFieldsInsert,

    -- ** dfareporting.creativeFields.list
    DFAReportingCreativeFieldsListResource,
    newDFAReportingCreativeFieldsList,
    DFAReportingCreativeFieldsList,

    -- ** dfareporting.creativeFields.patch
    DFAReportingCreativeFieldsPatchResource,
    newDFAReportingCreativeFieldsPatch,
    DFAReportingCreativeFieldsPatch,

    -- ** dfareporting.creativeFields.update
    DFAReportingCreativeFieldsUpdateResource,
    newDFAReportingCreativeFieldsUpdate,
    DFAReportingCreativeFieldsUpdate,

    -- ** dfareporting.creativeGroups.get
    DFAReportingCreativeGroupsGetResource,
    newDFAReportingCreativeGroupsGet,
    DFAReportingCreativeGroupsGet,

    -- ** dfareporting.creativeGroups.insert
    DFAReportingCreativeGroupsInsertResource,
    newDFAReportingCreativeGroupsInsert,
    DFAReportingCreativeGroupsInsert,

    -- ** dfareporting.creativeGroups.list
    DFAReportingCreativeGroupsListResource,
    newDFAReportingCreativeGroupsList,
    DFAReportingCreativeGroupsList,

    -- ** dfareporting.creativeGroups.patch
    DFAReportingCreativeGroupsPatchResource,
    newDFAReportingCreativeGroupsPatch,
    DFAReportingCreativeGroupsPatch,

    -- ** dfareporting.creativeGroups.update
    DFAReportingCreativeGroupsUpdateResource,
    newDFAReportingCreativeGroupsUpdate,
    DFAReportingCreativeGroupsUpdate,

    -- ** dfareporting.creatives.get
    DFAReportingCreativesGetResource,
    newDFAReportingCreativesGet,
    DFAReportingCreativesGet,

    -- ** dfareporting.creatives.insert
    DFAReportingCreativesInsertResource,
    newDFAReportingCreativesInsert,
    DFAReportingCreativesInsert,

    -- ** dfareporting.creatives.list
    DFAReportingCreativesListResource,
    newDFAReportingCreativesList,
    DFAReportingCreativesList,

    -- ** dfareporting.creatives.patch
    DFAReportingCreativesPatchResource,
    newDFAReportingCreativesPatch,
    DFAReportingCreativesPatch,

    -- ** dfareporting.creatives.update
    DFAReportingCreativesUpdateResource,
    newDFAReportingCreativesUpdate,
    DFAReportingCreativesUpdate,

    -- ** dfareporting.dimensionValues.query
    DFAReportingDimensionValuesQueryResource,
    newDFAReportingDimensionValuesQuery,
    DFAReportingDimensionValuesQuery,

    -- ** dfareporting.directorySites.get
    DFAReportingDirectorySitesGetResource,
    newDFAReportingDirectorySitesGet,
    DFAReportingDirectorySitesGet,

    -- ** dfareporting.directorySites.insert
    DFAReportingDirectorySitesInsertResource,
    newDFAReportingDirectorySitesInsert,
    DFAReportingDirectorySitesInsert,

    -- ** dfareporting.directorySites.list
    DFAReportingDirectorySitesListResource,
    newDFAReportingDirectorySitesList,
    DFAReportingDirectorySitesList,

    -- ** dfareporting.dynamicTargetingKeys.delete
    DFAReportingDynamicTargetingKeysDeleteResource,
    newDFAReportingDynamicTargetingKeysDelete,
    DFAReportingDynamicTargetingKeysDelete,

    -- ** dfareporting.dynamicTargetingKeys.insert
    DFAReportingDynamicTargetingKeysInsertResource,
    newDFAReportingDynamicTargetingKeysInsert,
    DFAReportingDynamicTargetingKeysInsert,

    -- ** dfareporting.dynamicTargetingKeys.list
    DFAReportingDynamicTargetingKeysListResource,
    newDFAReportingDynamicTargetingKeysList,
    DFAReportingDynamicTargetingKeysList,

    -- ** dfareporting.eventTags.delete
    DFAReportingEventTagsDeleteResource,
    newDFAReportingEventTagsDelete,
    DFAReportingEventTagsDelete,

    -- ** dfareporting.eventTags.get
    DFAReportingEventTagsGetResource,
    newDFAReportingEventTagsGet,
    DFAReportingEventTagsGet,

    -- ** dfareporting.eventTags.insert
    DFAReportingEventTagsInsertResource,
    newDFAReportingEventTagsInsert,
    DFAReportingEventTagsInsert,

    -- ** dfareporting.eventTags.list
    DFAReportingEventTagsListResource,
    newDFAReportingEventTagsList,
    DFAReportingEventTagsList,

    -- ** dfareporting.eventTags.patch
    DFAReportingEventTagsPatchResource,
    newDFAReportingEventTagsPatch,
    DFAReportingEventTagsPatch,

    -- ** dfareporting.eventTags.update
    DFAReportingEventTagsUpdateResource,
    newDFAReportingEventTagsUpdate,
    DFAReportingEventTagsUpdate,

    -- ** dfareporting.files.get
    DFAReportingFilesGetResource,
    newDFAReportingFilesGet,
    DFAReportingFilesGet,

    -- ** dfareporting.files.list
    DFAReportingFilesListResource,
    newDFAReportingFilesList,
    DFAReportingFilesList,

    -- ** dfareporting.floodlightActivities.delete
    DFAReportingFloodlightActivitiesDeleteResource,
    newDFAReportingFloodlightActivitiesDelete,
    DFAReportingFloodlightActivitiesDelete,

    -- ** dfareporting.floodlightActivities.generatetag
    DFAReportingFloodlightActivitiesGeneratetagResource,
    newDFAReportingFloodlightActivitiesGeneratetag,
    DFAReportingFloodlightActivitiesGeneratetag,

    -- ** dfareporting.floodlightActivities.get
    DFAReportingFloodlightActivitiesGetResource,
    newDFAReportingFloodlightActivitiesGet,
    DFAReportingFloodlightActivitiesGet,

    -- ** dfareporting.floodlightActivities.insert
    DFAReportingFloodlightActivitiesInsertResource,
    newDFAReportingFloodlightActivitiesInsert,
    DFAReportingFloodlightActivitiesInsert,

    -- ** dfareporting.floodlightActivities.list
    DFAReportingFloodlightActivitiesListResource,
    newDFAReportingFloodlightActivitiesList,
    DFAReportingFloodlightActivitiesList,

    -- ** dfareporting.floodlightActivities.patch
    DFAReportingFloodlightActivitiesPatchResource,
    newDFAReportingFloodlightActivitiesPatch,
    DFAReportingFloodlightActivitiesPatch,

    -- ** dfareporting.floodlightActivities.update
    DFAReportingFloodlightActivitiesUpdateResource,
    newDFAReportingFloodlightActivitiesUpdate,
    DFAReportingFloodlightActivitiesUpdate,

    -- ** dfareporting.floodlightActivityGroups.get
    DFAReportingFloodlightActivityGroupsGetResource,
    newDFAReportingFloodlightActivityGroupsGet,
    DFAReportingFloodlightActivityGroupsGet,

    -- ** dfareporting.floodlightActivityGroups.insert
    DFAReportingFloodlightActivityGroupsInsertResource,
    newDFAReportingFloodlightActivityGroupsInsert,
    DFAReportingFloodlightActivityGroupsInsert,

    -- ** dfareporting.floodlightActivityGroups.list
    DFAReportingFloodlightActivityGroupsListResource,
    newDFAReportingFloodlightActivityGroupsList,
    DFAReportingFloodlightActivityGroupsList,

    -- ** dfareporting.floodlightActivityGroups.patch
    DFAReportingFloodlightActivityGroupsPatchResource,
    newDFAReportingFloodlightActivityGroupsPatch,
    DFAReportingFloodlightActivityGroupsPatch,

    -- ** dfareporting.floodlightActivityGroups.update
    DFAReportingFloodlightActivityGroupsUpdateResource,
    newDFAReportingFloodlightActivityGroupsUpdate,
    DFAReportingFloodlightActivityGroupsUpdate,

    -- ** dfareporting.floodlightConfigurations.get
    DFAReportingFloodlightConfigurationsGetResource,
    newDFAReportingFloodlightConfigurationsGet,
    DFAReportingFloodlightConfigurationsGet,

    -- ** dfareporting.floodlightConfigurations.list
    DFAReportingFloodlightConfigurationsListResource,
    newDFAReportingFloodlightConfigurationsList,
    DFAReportingFloodlightConfigurationsList,

    -- ** dfareporting.floodlightConfigurations.patch
    DFAReportingFloodlightConfigurationsPatchResource,
    newDFAReportingFloodlightConfigurationsPatch,
    DFAReportingFloodlightConfigurationsPatch,

    -- ** dfareporting.floodlightConfigurations.update
    DFAReportingFloodlightConfigurationsUpdateResource,
    newDFAReportingFloodlightConfigurationsUpdate,
    DFAReportingFloodlightConfigurationsUpdate,

    -- ** dfareporting.inventoryItems.get
    DFAReportingInventoryItemsGetResource,
    newDFAReportingInventoryItemsGet,
    DFAReportingInventoryItemsGet,

    -- ** dfareporting.inventoryItems.list
    DFAReportingInventoryItemsListResource,
    newDFAReportingInventoryItemsList,
    DFAReportingInventoryItemsList,

    -- ** dfareporting.languages.list
    DFAReportingLanguagesListResource,
    newDFAReportingLanguagesList,
    DFAReportingLanguagesList,

    -- ** dfareporting.metros.list
    DFAReportingMetrosListResource,
    newDFAReportingMetrosList,
    DFAReportingMetrosList,

    -- ** dfareporting.mobileApps.get
    DFAReportingMobileAppsGetResource,
    newDFAReportingMobileAppsGet,
    DFAReportingMobileAppsGet,

    -- ** dfareporting.mobileApps.list
    DFAReportingMobileAppsListResource,
    newDFAReportingMobileAppsList,
    DFAReportingMobileAppsList,

    -- ** dfareporting.mobileCarriers.get
    DFAReportingMobileCarriersGetResource,
    newDFAReportingMobileCarriersGet,
    DFAReportingMobileCarriersGet,

    -- ** dfareporting.mobileCarriers.list
    DFAReportingMobileCarriersListResource,
    newDFAReportingMobileCarriersList,
    DFAReportingMobileCarriersList,

    -- ** dfareporting.operatingSystemVersions.get
    DFAReportingOperatingSystemVersionsGetResource,
    newDFAReportingOperatingSystemVersionsGet,
    DFAReportingOperatingSystemVersionsGet,

    -- ** dfareporting.operatingSystemVersions.list
    DFAReportingOperatingSystemVersionsListResource,
    newDFAReportingOperatingSystemVersionsList,
    DFAReportingOperatingSystemVersionsList,

    -- ** dfareporting.operatingSystems.get
    DFAReportingOperatingSystemsGetResource,
    newDFAReportingOperatingSystemsGet,
    DFAReportingOperatingSystemsGet,

    -- ** dfareporting.operatingSystems.list
    DFAReportingOperatingSystemsListResource,
    newDFAReportingOperatingSystemsList,
    DFAReportingOperatingSystemsList,

    -- ** dfareporting.orderDocuments.get
    DFAReportingOrderDocumentsGetResource,
    newDFAReportingOrderDocumentsGet,
    DFAReportingOrderDocumentsGet,

    -- ** dfareporting.orderDocuments.list
    DFAReportingOrderDocumentsListResource,
    newDFAReportingOrderDocumentsList,
    DFAReportingOrderDocumentsList,

    -- ** dfareporting.orders.get
    DFAReportingOrdersGetResource,
    newDFAReportingOrdersGet,
    DFAReportingOrdersGet,

    -- ** dfareporting.orders.list
    DFAReportingOrdersListResource,
    newDFAReportingOrdersList,
    DFAReportingOrdersList,

    -- ** dfareporting.placementGroups.get
    DFAReportingPlacementGroupsGetResource,
    newDFAReportingPlacementGroupsGet,
    DFAReportingPlacementGroupsGet,

    -- ** dfareporting.placementGroups.insert
    DFAReportingPlacementGroupsInsertResource,
    newDFAReportingPlacementGroupsInsert,
    DFAReportingPlacementGroupsInsert,

    -- ** dfareporting.placementGroups.list
    DFAReportingPlacementGroupsListResource,
    newDFAReportingPlacementGroupsList,
    DFAReportingPlacementGroupsList,

    -- ** dfareporting.placementGroups.patch
    DFAReportingPlacementGroupsPatchResource,
    newDFAReportingPlacementGroupsPatch,
    DFAReportingPlacementGroupsPatch,

    -- ** dfareporting.placementGroups.update
    DFAReportingPlacementGroupsUpdateResource,
    newDFAReportingPlacementGroupsUpdate,
    DFAReportingPlacementGroupsUpdate,

    -- ** dfareporting.placementStrategies.delete
    DFAReportingPlacementStrategiesDeleteResource,
    newDFAReportingPlacementStrategiesDelete,
    DFAReportingPlacementStrategiesDelete,

    -- ** dfareporting.placementStrategies.get
    DFAReportingPlacementStrategiesGetResource,
    newDFAReportingPlacementStrategiesGet,
    DFAReportingPlacementStrategiesGet,

    -- ** dfareporting.placementStrategies.insert
    DFAReportingPlacementStrategiesInsertResource,
    newDFAReportingPlacementStrategiesInsert,
    DFAReportingPlacementStrategiesInsert,

    -- ** dfareporting.placementStrategies.list
    DFAReportingPlacementStrategiesListResource,
    newDFAReportingPlacementStrategiesList,
    DFAReportingPlacementStrategiesList,

    -- ** dfareporting.placementStrategies.patch
    DFAReportingPlacementStrategiesPatchResource,
    newDFAReportingPlacementStrategiesPatch,
    DFAReportingPlacementStrategiesPatch,

    -- ** dfareporting.placementStrategies.update
    DFAReportingPlacementStrategiesUpdateResource,
    newDFAReportingPlacementStrategiesUpdate,
    DFAReportingPlacementStrategiesUpdate,

    -- ** dfareporting.placements.generatetags
    DFAReportingPlacementsGeneratetagsResource,
    newDFAReportingPlacementsGeneratetags,
    DFAReportingPlacementsGeneratetags,

    -- ** dfareporting.placements.get
    DFAReportingPlacementsGetResource,
    newDFAReportingPlacementsGet,
    DFAReportingPlacementsGet,

    -- ** dfareporting.placements.insert
    DFAReportingPlacementsInsertResource,
    newDFAReportingPlacementsInsert,
    DFAReportingPlacementsInsert,

    -- ** dfareporting.placements.list
    DFAReportingPlacementsListResource,
    newDFAReportingPlacementsList,
    DFAReportingPlacementsList,

    -- ** dfareporting.placements.patch
    DFAReportingPlacementsPatchResource,
    newDFAReportingPlacementsPatch,
    DFAReportingPlacementsPatch,

    -- ** dfareporting.placements.update
    DFAReportingPlacementsUpdateResource,
    newDFAReportingPlacementsUpdate,
    DFAReportingPlacementsUpdate,

    -- ** dfareporting.platformTypes.get
    DFAReportingPlatformTypesGetResource,
    newDFAReportingPlatformTypesGet,
    DFAReportingPlatformTypesGet,

    -- ** dfareporting.platformTypes.list
    DFAReportingPlatformTypesListResource,
    newDFAReportingPlatformTypesList,
    DFAReportingPlatformTypesList,

    -- ** dfareporting.postalCodes.get
    DFAReportingPostalCodesGetResource,
    newDFAReportingPostalCodesGet,
    DFAReportingPostalCodesGet,

    -- ** dfareporting.postalCodes.list
    DFAReportingPostalCodesListResource,
    newDFAReportingPostalCodesList,
    DFAReportingPostalCodesList,

    -- ** dfareporting.projects.get
    DFAReportingProjectsGetResource,
    newDFAReportingProjectsGet,
    DFAReportingProjectsGet,

    -- ** dfareporting.projects.list
    DFAReportingProjectsListResource,
    newDFAReportingProjectsList,
    DFAReportingProjectsList,

    -- ** dfareporting.regions.list
    DFAReportingRegionsListResource,
    newDFAReportingRegionsList,
    DFAReportingRegionsList,

    -- ** dfareporting.remarketingListShares.get
    DFAReportingRemarketingListSharesGetResource,
    newDFAReportingRemarketingListSharesGet,
    DFAReportingRemarketingListSharesGet,

    -- ** dfareporting.remarketingListShares.patch
    DFAReportingRemarketingListSharesPatchResource,
    newDFAReportingRemarketingListSharesPatch,
    DFAReportingRemarketingListSharesPatch,

    -- ** dfareporting.remarketingListShares.update
    DFAReportingRemarketingListSharesUpdateResource,
    newDFAReportingRemarketingListSharesUpdate,
    DFAReportingRemarketingListSharesUpdate,

    -- ** dfareporting.remarketingLists.get
    DFAReportingRemarketingListsGetResource,
    newDFAReportingRemarketingListsGet,
    DFAReportingRemarketingListsGet,

    -- ** dfareporting.remarketingLists.insert
    DFAReportingRemarketingListsInsertResource,
    newDFAReportingRemarketingListsInsert,
    DFAReportingRemarketingListsInsert,

    -- ** dfareporting.remarketingLists.list
    DFAReportingRemarketingListsListResource,
    newDFAReportingRemarketingListsList,
    DFAReportingRemarketingListsList,

    -- ** dfareporting.remarketingLists.patch
    DFAReportingRemarketingListsPatchResource,
    newDFAReportingRemarketingListsPatch,
    DFAReportingRemarketingListsPatch,

    -- ** dfareporting.remarketingLists.update
    DFAReportingRemarketingListsUpdateResource,
    newDFAReportingRemarketingListsUpdate,
    DFAReportingRemarketingListsUpdate,

    -- ** dfareporting.reports.compatibleFields.query
    DFAReportingReportsCompatibleFieldsQueryResource,
    newDFAReportingReportsCompatibleFieldsQuery,
    DFAReportingReportsCompatibleFieldsQuery,

    -- ** dfareporting.reports.delete
    DFAReportingReportsDeleteResource,
    newDFAReportingReportsDelete,
    DFAReportingReportsDelete,

    -- ** dfareporting.reports.files.get
    DFAReportingReportsFilesGetResource,
    newDFAReportingReportsFilesGet,
    DFAReportingReportsFilesGet,

    -- ** dfareporting.reports.files.list
    DFAReportingReportsFilesListResource,
    newDFAReportingReportsFilesList,
    DFAReportingReportsFilesList,

    -- ** dfareporting.reports.get
    DFAReportingReportsGetResource,
    newDFAReportingReportsGet,
    DFAReportingReportsGet,

    -- ** dfareporting.reports.insert
    DFAReportingReportsInsertResource,
    newDFAReportingReportsInsert,
    DFAReportingReportsInsert,

    -- ** dfareporting.reports.list
    DFAReportingReportsListResource,
    newDFAReportingReportsList,
    DFAReportingReportsList,

    -- ** dfareporting.reports.patch
    DFAReportingReportsPatchResource,
    newDFAReportingReportsPatch,
    DFAReportingReportsPatch,

    -- ** dfareporting.reports.run
    DFAReportingReportsRunResource,
    newDFAReportingReportsRun,
    DFAReportingReportsRun,

    -- ** dfareporting.reports.update
    DFAReportingReportsUpdateResource,
    newDFAReportingReportsUpdate,
    DFAReportingReportsUpdate,

    -- ** dfareporting.sites.get
    DFAReportingSitesGetResource,
    newDFAReportingSitesGet,
    DFAReportingSitesGet,

    -- ** dfareporting.sites.insert
    DFAReportingSitesInsertResource,
    newDFAReportingSitesInsert,
    DFAReportingSitesInsert,

    -- ** dfareporting.sites.list
    DFAReportingSitesListResource,
    newDFAReportingSitesList,
    DFAReportingSitesList,

    -- ** dfareporting.sites.patch
    DFAReportingSitesPatchResource,
    newDFAReportingSitesPatch,
    DFAReportingSitesPatch,

    -- ** dfareporting.sites.update
    DFAReportingSitesUpdateResource,
    newDFAReportingSitesUpdate,
    DFAReportingSitesUpdate,

    -- ** dfareporting.sizes.get
    DFAReportingSizesGetResource,
    newDFAReportingSizesGet,
    DFAReportingSizesGet,

    -- ** dfareporting.sizes.insert
    DFAReportingSizesInsertResource,
    newDFAReportingSizesInsert,
    DFAReportingSizesInsert,

    -- ** dfareporting.sizes.list
    DFAReportingSizesListResource,
    newDFAReportingSizesList,
    DFAReportingSizesList,

    -- ** dfareporting.subaccounts.get
    DFAReportingSubaccountsGetResource,
    newDFAReportingSubaccountsGet,
    DFAReportingSubaccountsGet,

    -- ** dfareporting.subaccounts.insert
    DFAReportingSubaccountsInsertResource,
    newDFAReportingSubaccountsInsert,
    DFAReportingSubaccountsInsert,

    -- ** dfareporting.subaccounts.list
    DFAReportingSubaccountsListResource,
    newDFAReportingSubaccountsList,
    DFAReportingSubaccountsList,

    -- ** dfareporting.subaccounts.patch
    DFAReportingSubaccountsPatchResource,
    newDFAReportingSubaccountsPatch,
    DFAReportingSubaccountsPatch,

    -- ** dfareporting.subaccounts.update
    DFAReportingSubaccountsUpdateResource,
    newDFAReportingSubaccountsUpdate,
    DFAReportingSubaccountsUpdate,

    -- ** dfareporting.targetableRemarketingLists.get
    DFAReportingTargetableRemarketingListsGetResource,
    newDFAReportingTargetableRemarketingListsGet,
    DFAReportingTargetableRemarketingListsGet,

    -- ** dfareporting.targetableRemarketingLists.list
    DFAReportingTargetableRemarketingListsListResource,
    newDFAReportingTargetableRemarketingListsList,
    DFAReportingTargetableRemarketingListsList,

    -- ** dfareporting.targetingTemplates.get
    DFAReportingTargetingTemplatesGetResource,
    newDFAReportingTargetingTemplatesGet,
    DFAReportingTargetingTemplatesGet,

    -- ** dfareporting.targetingTemplates.insert
    DFAReportingTargetingTemplatesInsertResource,
    newDFAReportingTargetingTemplatesInsert,
    DFAReportingTargetingTemplatesInsert,

    -- ** dfareporting.targetingTemplates.list
    DFAReportingTargetingTemplatesListResource,
    newDFAReportingTargetingTemplatesList,
    DFAReportingTargetingTemplatesList,

    -- ** dfareporting.targetingTemplates.patch
    DFAReportingTargetingTemplatesPatchResource,
    newDFAReportingTargetingTemplatesPatch,
    DFAReportingTargetingTemplatesPatch,

    -- ** dfareporting.targetingTemplates.update
    DFAReportingTargetingTemplatesUpdateResource,
    newDFAReportingTargetingTemplatesUpdate,
    DFAReportingTargetingTemplatesUpdate,

    -- ** dfareporting.userProfiles.get
    DFAReportingUserProfilesGetResource,
    newDFAReportingUserProfilesGet,
    DFAReportingUserProfilesGet,

    -- ** dfareporting.userProfiles.list
    DFAReportingUserProfilesListResource,
    newDFAReportingUserProfilesList,
    DFAReportingUserProfilesList,

    -- ** dfareporting.userRolePermissionGroups.get
    DFAReportingUserRolePermissionGroupsGetResource,
    newDFAReportingUserRolePermissionGroupsGet,
    DFAReportingUserRolePermissionGroupsGet,

    -- ** dfareporting.userRolePermissionGroups.list
    DFAReportingUserRolePermissionGroupsListResource,
    newDFAReportingUserRolePermissionGroupsList,
    DFAReportingUserRolePermissionGroupsList,

    -- ** dfareporting.userRolePermissions.get
    DFAReportingUserRolePermissionsGetResource,
    newDFAReportingUserRolePermissionsGet,
    DFAReportingUserRolePermissionsGet,

    -- ** dfareporting.userRolePermissions.list
    DFAReportingUserRolePermissionsListResource,
    newDFAReportingUserRolePermissionsList,
    DFAReportingUserRolePermissionsList,

    -- ** dfareporting.userRoles.delete
    DFAReportingUserRolesDeleteResource,
    newDFAReportingUserRolesDelete,
    DFAReportingUserRolesDelete,

    -- ** dfareporting.userRoles.get
    DFAReportingUserRolesGetResource,
    newDFAReportingUserRolesGet,
    DFAReportingUserRolesGet,

    -- ** dfareporting.userRoles.insert
    DFAReportingUserRolesInsertResource,
    newDFAReportingUserRolesInsert,
    DFAReportingUserRolesInsert,

    -- ** dfareporting.userRoles.list
    DFAReportingUserRolesListResource,
    newDFAReportingUserRolesList,
    DFAReportingUserRolesList,

    -- ** dfareporting.userRoles.patch
    DFAReportingUserRolesPatchResource,
    newDFAReportingUserRolesPatch,
    DFAReportingUserRolesPatch,

    -- ** dfareporting.userRoles.update
    DFAReportingUserRolesUpdateResource,
    newDFAReportingUserRolesUpdate,
    DFAReportingUserRolesUpdate,

    -- ** dfareporting.videoFormats.get
    DFAReportingVideoFormatsGetResource,
    newDFAReportingVideoFormatsGet,
    DFAReportingVideoFormatsGet,

    -- ** dfareporting.videoFormats.list
    DFAReportingVideoFormatsListResource,
    newDFAReportingVideoFormatsList,
    DFAReportingVideoFormatsList,

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

import Network.Google.DFAReporting.AccountActiveAdSummaries.Get
import Network.Google.DFAReporting.AccountPermissionGroups.Get
import Network.Google.DFAReporting.AccountPermissionGroups.List
import Network.Google.DFAReporting.AccountPermissions.Get
import Network.Google.DFAReporting.AccountPermissions.List
import Network.Google.DFAReporting.AccountUserProfiles.Get
import Network.Google.DFAReporting.AccountUserProfiles.Insert
import Network.Google.DFAReporting.AccountUserProfiles.List
import Network.Google.DFAReporting.AccountUserProfiles.Patch
import Network.Google.DFAReporting.AccountUserProfiles.Update
import Network.Google.DFAReporting.Accounts.Get
import Network.Google.DFAReporting.Accounts.List
import Network.Google.DFAReporting.Accounts.Patch
import Network.Google.DFAReporting.Accounts.Update
import Network.Google.DFAReporting.Ads.Get
import Network.Google.DFAReporting.Ads.Insert
import Network.Google.DFAReporting.Ads.List
import Network.Google.DFAReporting.Ads.Patch
import Network.Google.DFAReporting.Ads.Update
import Network.Google.DFAReporting.AdvertiserGroups.Delete
import Network.Google.DFAReporting.AdvertiserGroups.Get
import Network.Google.DFAReporting.AdvertiserGroups.Insert
import Network.Google.DFAReporting.AdvertiserGroups.List
import Network.Google.DFAReporting.AdvertiserGroups.Patch
import Network.Google.DFAReporting.AdvertiserGroups.Update
import Network.Google.DFAReporting.AdvertiserLandingPages.Get
import Network.Google.DFAReporting.AdvertiserLandingPages.Insert
import Network.Google.DFAReporting.AdvertiserLandingPages.List
import Network.Google.DFAReporting.AdvertiserLandingPages.Patch
import Network.Google.DFAReporting.AdvertiserLandingPages.Update
import Network.Google.DFAReporting.Advertisers.Get
import Network.Google.DFAReporting.Advertisers.Insert
import Network.Google.DFAReporting.Advertisers.List
import Network.Google.DFAReporting.Advertisers.Patch
import Network.Google.DFAReporting.Advertisers.Update
import Network.Google.DFAReporting.Browsers.List
import Network.Google.DFAReporting.CampaignCreativeAssociations.Insert
import Network.Google.DFAReporting.CampaignCreativeAssociations.List
import Network.Google.DFAReporting.Campaigns.Get
import Network.Google.DFAReporting.Campaigns.Insert
import Network.Google.DFAReporting.Campaigns.List
import Network.Google.DFAReporting.Campaigns.Patch
import Network.Google.DFAReporting.Campaigns.Update
import Network.Google.DFAReporting.ChangeLogs.Get
import Network.Google.DFAReporting.ChangeLogs.List
import Network.Google.DFAReporting.Cities.List
import Network.Google.DFAReporting.ConnectionTypes.Get
import Network.Google.DFAReporting.ConnectionTypes.List
import Network.Google.DFAReporting.ContentCategories.Delete
import Network.Google.DFAReporting.ContentCategories.Get
import Network.Google.DFAReporting.ContentCategories.Insert
import Network.Google.DFAReporting.ContentCategories.List
import Network.Google.DFAReporting.ContentCategories.Patch
import Network.Google.DFAReporting.ContentCategories.Update
import Network.Google.DFAReporting.Conversions.Batchinsert
import Network.Google.DFAReporting.Conversions.Batchupdate
import Network.Google.DFAReporting.Countries.Get
import Network.Google.DFAReporting.Countries.List
import Network.Google.DFAReporting.CreativeAssets.Insert
import Network.Google.DFAReporting.CreativeFieldValues.Delete
import Network.Google.DFAReporting.CreativeFieldValues.Get
import Network.Google.DFAReporting.CreativeFieldValues.Insert
import Network.Google.DFAReporting.CreativeFieldValues.List
import Network.Google.DFAReporting.CreativeFieldValues.Patch
import Network.Google.DFAReporting.CreativeFieldValues.Update
import Network.Google.DFAReporting.CreativeFields.Delete
import Network.Google.DFAReporting.CreativeFields.Get
import Network.Google.DFAReporting.CreativeFields.Insert
import Network.Google.DFAReporting.CreativeFields.List
import Network.Google.DFAReporting.CreativeFields.Patch
import Network.Google.DFAReporting.CreativeFields.Update
import Network.Google.DFAReporting.CreativeGroups.Get
import Network.Google.DFAReporting.CreativeGroups.Insert
import Network.Google.DFAReporting.CreativeGroups.List
import Network.Google.DFAReporting.CreativeGroups.Patch
import Network.Google.DFAReporting.CreativeGroups.Update
import Network.Google.DFAReporting.Creatives.Get
import Network.Google.DFAReporting.Creatives.Insert
import Network.Google.DFAReporting.Creatives.List
import Network.Google.DFAReporting.Creatives.Patch
import Network.Google.DFAReporting.Creatives.Update
import Network.Google.DFAReporting.DimensionValues.Query
import Network.Google.DFAReporting.DirectorySites.Get
import Network.Google.DFAReporting.DirectorySites.Insert
import Network.Google.DFAReporting.DirectorySites.List
import Network.Google.DFAReporting.DynamicTargetingKeys.Delete
import Network.Google.DFAReporting.DynamicTargetingKeys.Insert
import Network.Google.DFAReporting.DynamicTargetingKeys.List
import Network.Google.DFAReporting.EventTags.Delete
import Network.Google.DFAReporting.EventTags.Get
import Network.Google.DFAReporting.EventTags.Insert
import Network.Google.DFAReporting.EventTags.List
import Network.Google.DFAReporting.EventTags.Patch
import Network.Google.DFAReporting.EventTags.Update
import Network.Google.DFAReporting.Files.Get
import Network.Google.DFAReporting.Files.List
import Network.Google.DFAReporting.FloodlightActivities.Delete
import Network.Google.DFAReporting.FloodlightActivities.Generatetag
import Network.Google.DFAReporting.FloodlightActivities.Get
import Network.Google.DFAReporting.FloodlightActivities.Insert
import Network.Google.DFAReporting.FloodlightActivities.List
import Network.Google.DFAReporting.FloodlightActivities.Patch
import Network.Google.DFAReporting.FloodlightActivities.Update
import Network.Google.DFAReporting.FloodlightActivityGroups.Get
import Network.Google.DFAReporting.FloodlightActivityGroups.Insert
import Network.Google.DFAReporting.FloodlightActivityGroups.List
import Network.Google.DFAReporting.FloodlightActivityGroups.Patch
import Network.Google.DFAReporting.FloodlightActivityGroups.Update
import Network.Google.DFAReporting.FloodlightConfigurations.Get
import Network.Google.DFAReporting.FloodlightConfigurations.List
import Network.Google.DFAReporting.FloodlightConfigurations.Patch
import Network.Google.DFAReporting.FloodlightConfigurations.Update
import Network.Google.DFAReporting.InventoryItems.Get
import Network.Google.DFAReporting.InventoryItems.List
import Network.Google.DFAReporting.Languages.List
import Network.Google.DFAReporting.Metros.List
import Network.Google.DFAReporting.MobileApps.Get
import Network.Google.DFAReporting.MobileApps.List
import Network.Google.DFAReporting.MobileCarriers.Get
import Network.Google.DFAReporting.MobileCarriers.List
import Network.Google.DFAReporting.OperatingSystemVersions.Get
import Network.Google.DFAReporting.OperatingSystemVersions.List
import Network.Google.DFAReporting.OperatingSystems.Get
import Network.Google.DFAReporting.OperatingSystems.List
import Network.Google.DFAReporting.OrderDocuments.Get
import Network.Google.DFAReporting.OrderDocuments.List
import Network.Google.DFAReporting.Orders.Get
import Network.Google.DFAReporting.Orders.List
import Network.Google.DFAReporting.PlacementGroups.Get
import Network.Google.DFAReporting.PlacementGroups.Insert
import Network.Google.DFAReporting.PlacementGroups.List
import Network.Google.DFAReporting.PlacementGroups.Patch
import Network.Google.DFAReporting.PlacementGroups.Update
import Network.Google.DFAReporting.PlacementStrategies.Delete
import Network.Google.DFAReporting.PlacementStrategies.Get
import Network.Google.DFAReporting.PlacementStrategies.Insert
import Network.Google.DFAReporting.PlacementStrategies.List
import Network.Google.DFAReporting.PlacementStrategies.Patch
import Network.Google.DFAReporting.PlacementStrategies.Update
import Network.Google.DFAReporting.Placements.Generatetags
import Network.Google.DFAReporting.Placements.Get
import Network.Google.DFAReporting.Placements.Insert
import Network.Google.DFAReporting.Placements.List
import Network.Google.DFAReporting.Placements.Patch
import Network.Google.DFAReporting.Placements.Update
import Network.Google.DFAReporting.PlatformTypes.Get
import Network.Google.DFAReporting.PlatformTypes.List
import Network.Google.DFAReporting.PostalCodes.Get
import Network.Google.DFAReporting.PostalCodes.List
import Network.Google.DFAReporting.Projects.Get
import Network.Google.DFAReporting.Projects.List
import Network.Google.DFAReporting.Regions.List
import Network.Google.DFAReporting.RemarketingListShares.Get
import Network.Google.DFAReporting.RemarketingListShares.Patch
import Network.Google.DFAReporting.RemarketingListShares.Update
import Network.Google.DFAReporting.RemarketingLists.Get
import Network.Google.DFAReporting.RemarketingLists.Insert
import Network.Google.DFAReporting.RemarketingLists.List
import Network.Google.DFAReporting.RemarketingLists.Patch
import Network.Google.DFAReporting.RemarketingLists.Update
import Network.Google.DFAReporting.Reports.CompatibleFields.Query
import Network.Google.DFAReporting.Reports.Delete
import Network.Google.DFAReporting.Reports.Files.Get
import Network.Google.DFAReporting.Reports.Files.List
import Network.Google.DFAReporting.Reports.Get
import Network.Google.DFAReporting.Reports.Insert
import Network.Google.DFAReporting.Reports.List
import Network.Google.DFAReporting.Reports.Patch
import Network.Google.DFAReporting.Reports.Run
import Network.Google.DFAReporting.Reports.Update
import Network.Google.DFAReporting.Sites.Get
import Network.Google.DFAReporting.Sites.Insert
import Network.Google.DFAReporting.Sites.List
import Network.Google.DFAReporting.Sites.Patch
import Network.Google.DFAReporting.Sites.Update
import Network.Google.DFAReporting.Sizes.Get
import Network.Google.DFAReporting.Sizes.Insert
import Network.Google.DFAReporting.Sizes.List
import Network.Google.DFAReporting.Subaccounts.Get
import Network.Google.DFAReporting.Subaccounts.Insert
import Network.Google.DFAReporting.Subaccounts.List
import Network.Google.DFAReporting.Subaccounts.Patch
import Network.Google.DFAReporting.Subaccounts.Update
import Network.Google.DFAReporting.TargetableRemarketingLists.Get
import Network.Google.DFAReporting.TargetableRemarketingLists.List
import Network.Google.DFAReporting.TargetingTemplates.Get
import Network.Google.DFAReporting.TargetingTemplates.Insert
import Network.Google.DFAReporting.TargetingTemplates.List
import Network.Google.DFAReporting.TargetingTemplates.Patch
import Network.Google.DFAReporting.TargetingTemplates.Update
import Network.Google.DFAReporting.Types
import Network.Google.DFAReporting.UserProfiles.Get
import Network.Google.DFAReporting.UserProfiles.List
import Network.Google.DFAReporting.UserRolePermissionGroups.Get
import Network.Google.DFAReporting.UserRolePermissionGroups.List
import Network.Google.DFAReporting.UserRolePermissions.Get
import Network.Google.DFAReporting.UserRolePermissions.List
import Network.Google.DFAReporting.UserRoles.Delete
import Network.Google.DFAReporting.UserRoles.Get
import Network.Google.DFAReporting.UserRoles.Insert
import Network.Google.DFAReporting.UserRoles.List
import Network.Google.DFAReporting.UserRoles.Patch
import Network.Google.DFAReporting.UserRoles.Update
import Network.Google.DFAReporting.VideoFormats.Get
import Network.Google.DFAReporting.VideoFormats.List
