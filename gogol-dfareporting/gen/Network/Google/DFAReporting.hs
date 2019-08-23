{-# LANGUAGE DataKinds         #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE TypeOperators     #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.DFAReporting
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Manages your DoubleClick Campaign Manager ad campaigns and reports.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/ DCM/DFA Reporting And Trafficking API Reference>
module Network.Google.DFAReporting
    (
    -- * Service Configuration
      dFAReportingService

    -- * OAuth Scopes
    , dFAReportingScope
    , ddmconversionsScope
    , dfatraffickingScope

    -- * API Declaration
    , DFAReportingAPI

    -- * Resources

    -- ** dfareporting.accountActiveAdSummaries.get
    , module Network.Google.Resource.DFAReporting.AccountActiveAdSummaries.Get

    -- ** dfareporting.accountPermissionGroups.get
    , module Network.Google.Resource.DFAReporting.AccountPermissionGroups.Get

    -- ** dfareporting.accountPermissionGroups.list
    , module Network.Google.Resource.DFAReporting.AccountPermissionGroups.List

    -- ** dfareporting.accountPermissions.get
    , module Network.Google.Resource.DFAReporting.AccountPermissions.Get

    -- ** dfareporting.accountPermissions.list
    , module Network.Google.Resource.DFAReporting.AccountPermissions.List

    -- ** dfareporting.accountUserProfiles.get
    , module Network.Google.Resource.DFAReporting.AccountUserProFiles.Get

    -- ** dfareporting.accountUserProfiles.insert
    , module Network.Google.Resource.DFAReporting.AccountUserProFiles.Insert

    -- ** dfareporting.accountUserProfiles.list
    , module Network.Google.Resource.DFAReporting.AccountUserProFiles.List

    -- ** dfareporting.accountUserProfiles.patch
    , module Network.Google.Resource.DFAReporting.AccountUserProFiles.Patch

    -- ** dfareporting.accountUserProfiles.update
    , module Network.Google.Resource.DFAReporting.AccountUserProFiles.Update

    -- ** dfareporting.accounts.get
    , module Network.Google.Resource.DFAReporting.Accounts.Get

    -- ** dfareporting.accounts.list
    , module Network.Google.Resource.DFAReporting.Accounts.List

    -- ** dfareporting.accounts.patch
    , module Network.Google.Resource.DFAReporting.Accounts.Patch

    -- ** dfareporting.accounts.update
    , module Network.Google.Resource.DFAReporting.Accounts.Update

    -- ** dfareporting.ads.get
    , module Network.Google.Resource.DFAReporting.Ads.Get

    -- ** dfareporting.ads.insert
    , module Network.Google.Resource.DFAReporting.Ads.Insert

    -- ** dfareporting.ads.list
    , module Network.Google.Resource.DFAReporting.Ads.List

    -- ** dfareporting.ads.patch
    , module Network.Google.Resource.DFAReporting.Ads.Patch

    -- ** dfareporting.ads.update
    , module Network.Google.Resource.DFAReporting.Ads.Update

    -- ** dfareporting.advertiserGroups.delete
    , module Network.Google.Resource.DFAReporting.AdvertiserGroups.Delete

    -- ** dfareporting.advertiserGroups.get
    , module Network.Google.Resource.DFAReporting.AdvertiserGroups.Get

    -- ** dfareporting.advertiserGroups.insert
    , module Network.Google.Resource.DFAReporting.AdvertiserGroups.Insert

    -- ** dfareporting.advertiserGroups.list
    , module Network.Google.Resource.DFAReporting.AdvertiserGroups.List

    -- ** dfareporting.advertiserGroups.patch
    , module Network.Google.Resource.DFAReporting.AdvertiserGroups.Patch

    -- ** dfareporting.advertiserGroups.update
    , module Network.Google.Resource.DFAReporting.AdvertiserGroups.Update

    -- ** dfareporting.advertiserLandingPages.get
    , module Network.Google.Resource.DFAReporting.AdvertiserLandingPages.Get

    -- ** dfareporting.advertiserLandingPages.insert
    , module Network.Google.Resource.DFAReporting.AdvertiserLandingPages.Insert

    -- ** dfareporting.advertiserLandingPages.list
    , module Network.Google.Resource.DFAReporting.AdvertiserLandingPages.List

    -- ** dfareporting.advertiserLandingPages.patch
    , module Network.Google.Resource.DFAReporting.AdvertiserLandingPages.Patch

    -- ** dfareporting.advertiserLandingPages.update
    , module Network.Google.Resource.DFAReporting.AdvertiserLandingPages.Update

    -- ** dfareporting.advertisers.get
    , module Network.Google.Resource.DFAReporting.Advertisers.Get

    -- ** dfareporting.advertisers.insert
    , module Network.Google.Resource.DFAReporting.Advertisers.Insert

    -- ** dfareporting.advertisers.list
    , module Network.Google.Resource.DFAReporting.Advertisers.List

    -- ** dfareporting.advertisers.patch
    , module Network.Google.Resource.DFAReporting.Advertisers.Patch

    -- ** dfareporting.advertisers.update
    , module Network.Google.Resource.DFAReporting.Advertisers.Update

    -- ** dfareporting.browsers.list
    , module Network.Google.Resource.DFAReporting.Browsers.List

    -- ** dfareporting.campaignCreativeAssociations.insert
    , module Network.Google.Resource.DFAReporting.CampaignCreativeAssociations.Insert

    -- ** dfareporting.campaignCreativeAssociations.list
    , module Network.Google.Resource.DFAReporting.CampaignCreativeAssociations.List

    -- ** dfareporting.campaigns.get
    , module Network.Google.Resource.DFAReporting.Campaigns.Get

    -- ** dfareporting.campaigns.insert
    , module Network.Google.Resource.DFAReporting.Campaigns.Insert

    -- ** dfareporting.campaigns.list
    , module Network.Google.Resource.DFAReporting.Campaigns.List

    -- ** dfareporting.campaigns.patch
    , module Network.Google.Resource.DFAReporting.Campaigns.Patch

    -- ** dfareporting.campaigns.update
    , module Network.Google.Resource.DFAReporting.Campaigns.Update

    -- ** dfareporting.changeLogs.get
    , module Network.Google.Resource.DFAReporting.ChangeLogs.Get

    -- ** dfareporting.changeLogs.list
    , module Network.Google.Resource.DFAReporting.ChangeLogs.List

    -- ** dfareporting.cities.list
    , module Network.Google.Resource.DFAReporting.Cities.List

    -- ** dfareporting.connectionTypes.get
    , module Network.Google.Resource.DFAReporting.ConnectionTypes.Get

    -- ** dfareporting.connectionTypes.list
    , module Network.Google.Resource.DFAReporting.ConnectionTypes.List

    -- ** dfareporting.contentCategories.delete
    , module Network.Google.Resource.DFAReporting.ContentCategories.Delete

    -- ** dfareporting.contentCategories.get
    , module Network.Google.Resource.DFAReporting.ContentCategories.Get

    -- ** dfareporting.contentCategories.insert
    , module Network.Google.Resource.DFAReporting.ContentCategories.Insert

    -- ** dfareporting.contentCategories.list
    , module Network.Google.Resource.DFAReporting.ContentCategories.List

    -- ** dfareporting.contentCategories.patch
    , module Network.Google.Resource.DFAReporting.ContentCategories.Patch

    -- ** dfareporting.contentCategories.update
    , module Network.Google.Resource.DFAReporting.ContentCategories.Update

    -- ** dfareporting.conversions.batchinsert
    , module Network.Google.Resource.DFAReporting.Conversions.Batchinsert

    -- ** dfareporting.conversions.batchupdate
    , module Network.Google.Resource.DFAReporting.Conversions.Batchupdate

    -- ** dfareporting.countries.get
    , module Network.Google.Resource.DFAReporting.Countries.Get

    -- ** dfareporting.countries.list
    , module Network.Google.Resource.DFAReporting.Countries.List

    -- ** dfareporting.creativeAssets.insert
    , module Network.Google.Resource.DFAReporting.CreativeAssets.Insert

    -- ** dfareporting.creativeFieldValues.delete
    , module Network.Google.Resource.DFAReporting.CreativeFieldValues.Delete

    -- ** dfareporting.creativeFieldValues.get
    , module Network.Google.Resource.DFAReporting.CreativeFieldValues.Get

    -- ** dfareporting.creativeFieldValues.insert
    , module Network.Google.Resource.DFAReporting.CreativeFieldValues.Insert

    -- ** dfareporting.creativeFieldValues.list
    , module Network.Google.Resource.DFAReporting.CreativeFieldValues.List

    -- ** dfareporting.creativeFieldValues.patch
    , module Network.Google.Resource.DFAReporting.CreativeFieldValues.Patch

    -- ** dfareporting.creativeFieldValues.update
    , module Network.Google.Resource.DFAReporting.CreativeFieldValues.Update

    -- ** dfareporting.creativeFields.delete
    , module Network.Google.Resource.DFAReporting.CreativeFields.Delete

    -- ** dfareporting.creativeFields.get
    , module Network.Google.Resource.DFAReporting.CreativeFields.Get

    -- ** dfareporting.creativeFields.insert
    , module Network.Google.Resource.DFAReporting.CreativeFields.Insert

    -- ** dfareporting.creativeFields.list
    , module Network.Google.Resource.DFAReporting.CreativeFields.List

    -- ** dfareporting.creativeFields.patch
    , module Network.Google.Resource.DFAReporting.CreativeFields.Patch

    -- ** dfareporting.creativeFields.update
    , module Network.Google.Resource.DFAReporting.CreativeFields.Update

    -- ** dfareporting.creativeGroups.get
    , module Network.Google.Resource.DFAReporting.CreativeGroups.Get

    -- ** dfareporting.creativeGroups.insert
    , module Network.Google.Resource.DFAReporting.CreativeGroups.Insert

    -- ** dfareporting.creativeGroups.list
    , module Network.Google.Resource.DFAReporting.CreativeGroups.List

    -- ** dfareporting.creativeGroups.patch
    , module Network.Google.Resource.DFAReporting.CreativeGroups.Patch

    -- ** dfareporting.creativeGroups.update
    , module Network.Google.Resource.DFAReporting.CreativeGroups.Update

    -- ** dfareporting.creatives.get
    , module Network.Google.Resource.DFAReporting.Creatives.Get

    -- ** dfareporting.creatives.insert
    , module Network.Google.Resource.DFAReporting.Creatives.Insert

    -- ** dfareporting.creatives.list
    , module Network.Google.Resource.DFAReporting.Creatives.List

    -- ** dfareporting.creatives.patch
    , module Network.Google.Resource.DFAReporting.Creatives.Patch

    -- ** dfareporting.creatives.update
    , module Network.Google.Resource.DFAReporting.Creatives.Update

    -- ** dfareporting.dimensionValues.query
    , module Network.Google.Resource.DFAReporting.DimensionValues.Query

    -- ** dfareporting.directorySites.get
    , module Network.Google.Resource.DFAReporting.DirectorySites.Get

    -- ** dfareporting.directorySites.insert
    , module Network.Google.Resource.DFAReporting.DirectorySites.Insert

    -- ** dfareporting.directorySites.list
    , module Network.Google.Resource.DFAReporting.DirectorySites.List

    -- ** dfareporting.dynamicTargetingKeys.delete
    , module Network.Google.Resource.DFAReporting.DynamicTargetingKeys.Delete

    -- ** dfareporting.dynamicTargetingKeys.insert
    , module Network.Google.Resource.DFAReporting.DynamicTargetingKeys.Insert

    -- ** dfareporting.dynamicTargetingKeys.list
    , module Network.Google.Resource.DFAReporting.DynamicTargetingKeys.List

    -- ** dfareporting.eventTags.delete
    , module Network.Google.Resource.DFAReporting.EventTags.Delete

    -- ** dfareporting.eventTags.get
    , module Network.Google.Resource.DFAReporting.EventTags.Get

    -- ** dfareporting.eventTags.insert
    , module Network.Google.Resource.DFAReporting.EventTags.Insert

    -- ** dfareporting.eventTags.list
    , module Network.Google.Resource.DFAReporting.EventTags.List

    -- ** dfareporting.eventTags.patch
    , module Network.Google.Resource.DFAReporting.EventTags.Patch

    -- ** dfareporting.eventTags.update
    , module Network.Google.Resource.DFAReporting.EventTags.Update

    -- ** dfareporting.files.get
    , module Network.Google.Resource.DFAReporting.Files.Get

    -- ** dfareporting.files.list
    , module Network.Google.Resource.DFAReporting.Files.List

    -- ** dfareporting.floodlightActivities.delete
    , module Network.Google.Resource.DFAReporting.FloodlightActivities.Delete

    -- ** dfareporting.floodlightActivities.generatetag
    , module Network.Google.Resource.DFAReporting.FloodlightActivities.Generatetag

    -- ** dfareporting.floodlightActivities.get
    , module Network.Google.Resource.DFAReporting.FloodlightActivities.Get

    -- ** dfareporting.floodlightActivities.insert
    , module Network.Google.Resource.DFAReporting.FloodlightActivities.Insert

    -- ** dfareporting.floodlightActivities.list
    , module Network.Google.Resource.DFAReporting.FloodlightActivities.List

    -- ** dfareporting.floodlightActivities.patch
    , module Network.Google.Resource.DFAReporting.FloodlightActivities.Patch

    -- ** dfareporting.floodlightActivities.update
    , module Network.Google.Resource.DFAReporting.FloodlightActivities.Update

    -- ** dfareporting.floodlightActivityGroups.get
    , module Network.Google.Resource.DFAReporting.FloodlightActivityGroups.Get

    -- ** dfareporting.floodlightActivityGroups.insert
    , module Network.Google.Resource.DFAReporting.FloodlightActivityGroups.Insert

    -- ** dfareporting.floodlightActivityGroups.list
    , module Network.Google.Resource.DFAReporting.FloodlightActivityGroups.List

    -- ** dfareporting.floodlightActivityGroups.patch
    , module Network.Google.Resource.DFAReporting.FloodlightActivityGroups.Patch

    -- ** dfareporting.floodlightActivityGroups.update
    , module Network.Google.Resource.DFAReporting.FloodlightActivityGroups.Update

    -- ** dfareporting.floodlightConfigurations.get
    , module Network.Google.Resource.DFAReporting.FloodlightConfigurations.Get

    -- ** dfareporting.floodlightConfigurations.list
    , module Network.Google.Resource.DFAReporting.FloodlightConfigurations.List

    -- ** dfareporting.floodlightConfigurations.patch
    , module Network.Google.Resource.DFAReporting.FloodlightConfigurations.Patch

    -- ** dfareporting.floodlightConfigurations.update
    , module Network.Google.Resource.DFAReporting.FloodlightConfigurations.Update

    -- ** dfareporting.inventoryItems.get
    , module Network.Google.Resource.DFAReporting.InventoryItems.Get

    -- ** dfareporting.inventoryItems.list
    , module Network.Google.Resource.DFAReporting.InventoryItems.List

    -- ** dfareporting.languages.list
    , module Network.Google.Resource.DFAReporting.Languages.List

    -- ** dfareporting.metros.list
    , module Network.Google.Resource.DFAReporting.Metros.List

    -- ** dfareporting.mobileApps.get
    , module Network.Google.Resource.DFAReporting.MobileApps.Get

    -- ** dfareporting.mobileApps.list
    , module Network.Google.Resource.DFAReporting.MobileApps.List

    -- ** dfareporting.mobileCarriers.get
    , module Network.Google.Resource.DFAReporting.MobileCarriers.Get

    -- ** dfareporting.mobileCarriers.list
    , module Network.Google.Resource.DFAReporting.MobileCarriers.List

    -- ** dfareporting.operatingSystemVersions.get
    , module Network.Google.Resource.DFAReporting.OperatingSystemVersions.Get

    -- ** dfareporting.operatingSystemVersions.list
    , module Network.Google.Resource.DFAReporting.OperatingSystemVersions.List

    -- ** dfareporting.operatingSystems.get
    , module Network.Google.Resource.DFAReporting.OperatingSystems.Get

    -- ** dfareporting.operatingSystems.list
    , module Network.Google.Resource.DFAReporting.OperatingSystems.List

    -- ** dfareporting.orderDocuments.get
    , module Network.Google.Resource.DFAReporting.OrderDocuments.Get

    -- ** dfareporting.orderDocuments.list
    , module Network.Google.Resource.DFAReporting.OrderDocuments.List

    -- ** dfareporting.orders.get
    , module Network.Google.Resource.DFAReporting.Orders.Get

    -- ** dfareporting.orders.list
    , module Network.Google.Resource.DFAReporting.Orders.List

    -- ** dfareporting.placementGroups.get
    , module Network.Google.Resource.DFAReporting.PlacementGroups.Get

    -- ** dfareporting.placementGroups.insert
    , module Network.Google.Resource.DFAReporting.PlacementGroups.Insert

    -- ** dfareporting.placementGroups.list
    , module Network.Google.Resource.DFAReporting.PlacementGroups.List

    -- ** dfareporting.placementGroups.patch
    , module Network.Google.Resource.DFAReporting.PlacementGroups.Patch

    -- ** dfareporting.placementGroups.update
    , module Network.Google.Resource.DFAReporting.PlacementGroups.Update

    -- ** dfareporting.placementStrategies.delete
    , module Network.Google.Resource.DFAReporting.PlacementStrategies.Delete

    -- ** dfareporting.placementStrategies.get
    , module Network.Google.Resource.DFAReporting.PlacementStrategies.Get

    -- ** dfareporting.placementStrategies.insert
    , module Network.Google.Resource.DFAReporting.PlacementStrategies.Insert

    -- ** dfareporting.placementStrategies.list
    , module Network.Google.Resource.DFAReporting.PlacementStrategies.List

    -- ** dfareporting.placementStrategies.patch
    , module Network.Google.Resource.DFAReporting.PlacementStrategies.Patch

    -- ** dfareporting.placementStrategies.update
    , module Network.Google.Resource.DFAReporting.PlacementStrategies.Update

    -- ** dfareporting.placements.generatetags
    , module Network.Google.Resource.DFAReporting.Placements.Generatetags

    -- ** dfareporting.placements.get
    , module Network.Google.Resource.DFAReporting.Placements.Get

    -- ** dfareporting.placements.insert
    , module Network.Google.Resource.DFAReporting.Placements.Insert

    -- ** dfareporting.placements.list
    , module Network.Google.Resource.DFAReporting.Placements.List

    -- ** dfareporting.placements.patch
    , module Network.Google.Resource.DFAReporting.Placements.Patch

    -- ** dfareporting.placements.update
    , module Network.Google.Resource.DFAReporting.Placements.Update

    -- ** dfareporting.platformTypes.get
    , module Network.Google.Resource.DFAReporting.PlatformTypes.Get

    -- ** dfareporting.platformTypes.list
    , module Network.Google.Resource.DFAReporting.PlatformTypes.List

    -- ** dfareporting.postalCodes.get
    , module Network.Google.Resource.DFAReporting.PostalCodes.Get

    -- ** dfareporting.postalCodes.list
    , module Network.Google.Resource.DFAReporting.PostalCodes.List

    -- ** dfareporting.projects.get
    , module Network.Google.Resource.DFAReporting.Projects.Get

    -- ** dfareporting.projects.list
    , module Network.Google.Resource.DFAReporting.Projects.List

    -- ** dfareporting.regions.list
    , module Network.Google.Resource.DFAReporting.Regions.List

    -- ** dfareporting.remarketingListShares.get
    , module Network.Google.Resource.DFAReporting.RemarketingListShares.Get

    -- ** dfareporting.remarketingListShares.patch
    , module Network.Google.Resource.DFAReporting.RemarketingListShares.Patch

    -- ** dfareporting.remarketingListShares.update
    , module Network.Google.Resource.DFAReporting.RemarketingListShares.Update

    -- ** dfareporting.remarketingLists.get
    , module Network.Google.Resource.DFAReporting.RemarketingLists.Get

    -- ** dfareporting.remarketingLists.insert
    , module Network.Google.Resource.DFAReporting.RemarketingLists.Insert

    -- ** dfareporting.remarketingLists.list
    , module Network.Google.Resource.DFAReporting.RemarketingLists.List

    -- ** dfareporting.remarketingLists.patch
    , module Network.Google.Resource.DFAReporting.RemarketingLists.Patch

    -- ** dfareporting.remarketingLists.update
    , module Network.Google.Resource.DFAReporting.RemarketingLists.Update

    -- ** dfareporting.reports.compatibleFields.query
    , module Network.Google.Resource.DFAReporting.Reports.CompatibleFields.Query

    -- ** dfareporting.reports.delete
    , module Network.Google.Resource.DFAReporting.Reports.Delete

    -- ** dfareporting.reports.files.get
    , module Network.Google.Resource.DFAReporting.Reports.Files.Get

    -- ** dfareporting.reports.files.list
    , module Network.Google.Resource.DFAReporting.Reports.Files.List

    -- ** dfareporting.reports.get
    , module Network.Google.Resource.DFAReporting.Reports.Get

    -- ** dfareporting.reports.insert
    , module Network.Google.Resource.DFAReporting.Reports.Insert

    -- ** dfareporting.reports.list
    , module Network.Google.Resource.DFAReporting.Reports.List

    -- ** dfareporting.reports.patch
    , module Network.Google.Resource.DFAReporting.Reports.Patch

    -- ** dfareporting.reports.run
    , module Network.Google.Resource.DFAReporting.Reports.Run

    -- ** dfareporting.reports.update
    , module Network.Google.Resource.DFAReporting.Reports.Update

    -- ** dfareporting.sites.get
    , module Network.Google.Resource.DFAReporting.Sites.Get

    -- ** dfareporting.sites.insert
    , module Network.Google.Resource.DFAReporting.Sites.Insert

    -- ** dfareporting.sites.list
    , module Network.Google.Resource.DFAReporting.Sites.List

    -- ** dfareporting.sites.patch
    , module Network.Google.Resource.DFAReporting.Sites.Patch

    -- ** dfareporting.sites.update
    , module Network.Google.Resource.DFAReporting.Sites.Update

    -- ** dfareporting.sizes.get
    , module Network.Google.Resource.DFAReporting.Sizes.Get

    -- ** dfareporting.sizes.insert
    , module Network.Google.Resource.DFAReporting.Sizes.Insert

    -- ** dfareporting.sizes.list
    , module Network.Google.Resource.DFAReporting.Sizes.List

    -- ** dfareporting.subaccounts.get
    , module Network.Google.Resource.DFAReporting.SubAccounts.Get

    -- ** dfareporting.subaccounts.insert
    , module Network.Google.Resource.DFAReporting.SubAccounts.Insert

    -- ** dfareporting.subaccounts.list
    , module Network.Google.Resource.DFAReporting.SubAccounts.List

    -- ** dfareporting.subaccounts.patch
    , module Network.Google.Resource.DFAReporting.SubAccounts.Patch

    -- ** dfareporting.subaccounts.update
    , module Network.Google.Resource.DFAReporting.SubAccounts.Update

    -- ** dfareporting.targetableRemarketingLists.get
    , module Network.Google.Resource.DFAReporting.TargetableRemarketingLists.Get

    -- ** dfareporting.targetableRemarketingLists.list
    , module Network.Google.Resource.DFAReporting.TargetableRemarketingLists.List

    -- ** dfareporting.targetingTemplates.get
    , module Network.Google.Resource.DFAReporting.TargetingTemplates.Get

    -- ** dfareporting.targetingTemplates.insert
    , module Network.Google.Resource.DFAReporting.TargetingTemplates.Insert

    -- ** dfareporting.targetingTemplates.list
    , module Network.Google.Resource.DFAReporting.TargetingTemplates.List

    -- ** dfareporting.targetingTemplates.patch
    , module Network.Google.Resource.DFAReporting.TargetingTemplates.Patch

    -- ** dfareporting.targetingTemplates.update
    , module Network.Google.Resource.DFAReporting.TargetingTemplates.Update

    -- ** dfareporting.userProfiles.get
    , module Network.Google.Resource.DFAReporting.UserProFiles.Get

    -- ** dfareporting.userProfiles.list
    , module Network.Google.Resource.DFAReporting.UserProFiles.List

    -- ** dfareporting.userRolePermissionGroups.get
    , module Network.Google.Resource.DFAReporting.UserRolePermissionGroups.Get

    -- ** dfareporting.userRolePermissionGroups.list
    , module Network.Google.Resource.DFAReporting.UserRolePermissionGroups.List

    -- ** dfareporting.userRolePermissions.get
    , module Network.Google.Resource.DFAReporting.UserRolePermissions.Get

    -- ** dfareporting.userRolePermissions.list
    , module Network.Google.Resource.DFAReporting.UserRolePermissions.List

    -- ** dfareporting.userRoles.delete
    , module Network.Google.Resource.DFAReporting.UserRoles.Delete

    -- ** dfareporting.userRoles.get
    , module Network.Google.Resource.DFAReporting.UserRoles.Get

    -- ** dfareporting.userRoles.insert
    , module Network.Google.Resource.DFAReporting.UserRoles.Insert

    -- ** dfareporting.userRoles.list
    , module Network.Google.Resource.DFAReporting.UserRoles.List

    -- ** dfareporting.userRoles.patch
    , module Network.Google.Resource.DFAReporting.UserRoles.Patch

    -- ** dfareporting.userRoles.update
    , module Network.Google.Resource.DFAReporting.UserRoles.Update

    -- ** dfareporting.videoFormats.get
    , module Network.Google.Resource.DFAReporting.VideoFormats.Get

    -- ** dfareporting.videoFormats.list
    , module Network.Google.Resource.DFAReporting.VideoFormats.List

    -- * Types

    -- ** VideoOffSet
    , VideoOffSet
    , videoOffSet
    , vosOffSetPercentage
    , vosOffSetSeconds

    -- ** DeepLink
    , DeepLink
    , deepLink
    , dlRemarketingListIds
    , dlKind
    , dlFallbackURL
    , dlAppURL
    , dlMobileApp

    -- ** PlacementsListSortOrder
    , PlacementsListSortOrder (..)

    -- ** DateRangeRelativeDateRange
    , DateRangeRelativeDateRange (..)

    -- ** AdvertisersListSortField
    , AdvertisersListSortField (..)

    -- ** CreativeFieldsListSortOrder
    , CreativeFieldsListSortOrder (..)

    -- ** FileList
    , FileList
    , fileList
    , flEtag
    , flNextPageToken
    , flKind
    , flItems

    -- ** TargetingTemplatesListSortOrder
    , TargetingTemplatesListSortOrder (..)

    -- ** OptimizationActivity
    , OptimizationActivity
    , optimizationActivity
    , oaWeight
    , oaFloodlightActivityId
    , oaFloodlightActivityIdDimensionValue

    -- ** ListPopulationClause
    , ListPopulationClause
    , listPopulationClause
    , lpcTerms

    -- ** AdBlockingConfiguration
    , AdBlockingConfiguration
    , adBlockingConfiguration
    , abcCreativeBundleId
    , abcOverrideClickThroughURL
    , abcEnabled
    , abcClickThroughURL

    -- ** AdvertiserLandingPagesListSortOrder
    , AdvertiserLandingPagesListSortOrder (..)

    -- ** CreativeCustomEvent
    , CreativeCustomEvent
    , creativeCustomEvent
    , cceAdvertiserCustomEventId
    , cceAdvertiserCustomEventType
    , cceAdvertiserCustomEventName
    , cceExitClickThroughURL
    , cceTargetType
    , ccePopupWindowProperties
    , cceVideoReportingId
    , cceId
    , cceArtworkLabel
    , cceArtworkType

    -- ** ClickTag
    , ClickTag
    , clickTag
    , ctClickThroughURL
    , ctName
    , ctEventName

    -- ** CampaignsListResponse
    , CampaignsListResponse
    , campaignsListResponse
    , clrNextPageToken
    , clrCampaigns
    , clrKind

    -- ** GeoTargeting
    , GeoTargeting
    , geoTargeting
    , gtRegions
    , gtCountries
    , gtCities
    , gtMetros
    , gtExcludeCountries
    , gtPostalCodes

    -- ** UserRolesListSortField
    , UserRolesListSortField (..)

    -- ** VideoSettings
    , VideoSettings
    , videoSettings
    , vsKind
    , vsCompanionSettings
    , vsTranscodeSettings
    , vsOrientation
    , vsSkippableSettings

    -- ** ReachReportCompatibleFields
    , ReachReportCompatibleFields
    , reachReportCompatibleFields
    , rrcfMetrics
    , rrcfReachByFrequencyMetrics
    , rrcfKind
    , rrcfDimensionFilters
    , rrcfPivotedActivityMetrics
    , rrcfDimensions

    -- ** Browser
    , Browser
    , browser
    , bMinorVersion
    , bKind
    , bBrowserVersionId
    , bMajorVersion
    , bName
    , bDartId

    -- ** FloodlightActivityTagFormat
    , FloodlightActivityTagFormat (..)

    -- ** OrderDocumentsListSortOrder
    , OrderDocumentsListSortOrder (..)

    -- ** CreativeGroupAssignment
    , CreativeGroupAssignment
    , creativeGroupAssignment
    , cgaCreativeGroupNumber
    , cgaCreativeGroupId

    -- ** CreativeAssetRole
    , CreativeAssetRole (..)

    -- ** DynamicTargetingKeysListObjectType
    , DynamicTargetingKeysListObjectType (..)

    -- ** RecipientDeliveryType
    , RecipientDeliveryType (..)

    -- ** ThirdPartyTrackingURLThirdPartyURLType
    , ThirdPartyTrackingURLThirdPartyURLType (..)

    -- ** DirectorySiteSettings
    , DirectorySiteSettings
    , directorySiteSettings
    , dssInterstitialPlacementAccepted
    , dssInstreamVideoPlacementAccepted
    , dssActiveViewOptOut
    , dssDfpSettings

    -- ** TargetableRemarketingListsListSortOrder
    , TargetableRemarketingListsListSortOrder (..)

    -- ** CreativeAssetPositionLeftUnit
    , CreativeAssetPositionLeftUnit (..)

    -- ** PricingScheduleCapCostOption
    , PricingScheduleCapCostOption (..)

    -- ** ListPopulationRule
    , ListPopulationRule
    , listPopulationRule
    , lprFloodlightActivityName
    , lprFloodlightActivityId
    , lprListPopulationClauses

    -- ** UserRolePermissionAvailability
    , UserRolePermissionAvailability (..)

    -- ** PlacementVpaidAdapterChoice
    , PlacementVpaidAdapterChoice (..)

    -- ** SizesListResponse
    , SizesListResponse
    , sizesListResponse
    , slrKind
    , slrSizes

    -- ** PlacementCompatibility
    , PlacementCompatibility (..)

    -- ** CreativeRotation
    , CreativeRotation
    , creativeRotation
    , crWeightCalculationStrategy
    , crCreativeAssignments
    , crCreativeOptimizationConfigurationId
    , crType

    -- ** TechnologyTargeting
    , TechnologyTargeting
    , technologyTargeting
    , ttMobileCarriers
    , ttOperatingSystemVersions
    , ttPlatformTypes
    , ttBrowsers
    , ttConnectionTypes
    , ttOperatingSystems

    -- ** ListPopulationTermOperator
    , ListPopulationTermOperator (..)

    -- ** PlacementsListPaymentSource
    , PlacementsListPaymentSource (..)

    -- ** InventoryItem
    , InventoryItem
    , inventoryItem
    , iiPlacementStrategyId
    , iiEstimatedClickThroughRate
    , iiPricing
    , iiKind
    , iiAdvertiserId
    , iiRfpId
    , iiContentCategoryId
    , iiInPlan
    , iiAccountId
    , iiName
    , iiAdSlots
    , iiNegotiationChannelId
    , iiLastModifiedInfo
    , iiId
    , iiEstimatedConversionRate
    , iiProjectId
    , iiSubAccountId
    , iiType
    , iiOrderId
    , iiSiteId

    -- ** ProjectsListResponse
    , ProjectsListResponse
    , projectsListResponse
    , plrNextPageToken
    , plrKind
    , plrProjects

    -- ** AdsListResponse
    , AdsListResponse
    , adsListResponse
    , alrNextPageToken
    , alrKind
    , alrAds

    -- ** ReportsListSortField
    , ReportsListSortField (..)

    -- ** AdSlotCompatibility
    , AdSlotCompatibility (..)

    -- ** SiteVideoSettings
    , SiteVideoSettings
    , siteVideoSettings
    , svsKind
    , svsCompanionSettings
    , svsTranscodeSettings
    , svsOrientation
    , svsSkippableSettings

    -- ** ListPopulationTerm
    , ListPopulationTerm
    , listPopulationTerm
    , lptOperator
    , lptValue
    , lptVariableFriendlyName
    , lptNegation
    , lptVariableName
    , lptRemarketingListId
    , lptType
    , lptContains

    -- ** TagSettings
    , TagSettings
    , tagSettings
    , tsDynamicTagEnabled
    , tsImageTagEnabled

    -- ** SubAccountsListResponse
    , SubAccountsListResponse
    , subAccountsListResponse
    , salrNextPageToken
    , salrKind
    , salrSubAccounts

    -- ** CampaignsListSortField
    , CampaignsListSortField (..)

    -- ** VideoSettingsOrientation
    , VideoSettingsOrientation (..)

    -- ** RegionsListResponse
    , RegionsListResponse
    , regionsListResponse
    , rlrKind
    , rlrRegions

    -- ** FloodlightActivityDynamicTag
    , FloodlightActivityDynamicTag
    , floodlightActivityDynamicTag
    , fadtTag
    , fadtName
    , fadtId

    -- ** VideoFormat
    , VideoFormat
    , videoFormat
    , vfKind
    , vfFileType
    , vfResolution
    , vfTargetBitRate
    , vfId

    -- ** AccountUserProFileTraffickerType
    , AccountUserProFileTraffickerType (..)

    -- ** DirectorySite
    , DirectorySite
    , directorySite
    , dsSettings
    , dsInterstitialTagFormats
    , dsKind
    , dsURL
    , dsIdDimensionValue
    , dsInpageTagFormats
    , dsActive
    , dsName
    , dsId

    -- ** CreativeAssetMetadataDetectedFeaturesItem
    , CreativeAssetMetadataDetectedFeaturesItem (..)

    -- ** ReportFloodlightCriteriaReportProperties
    , ReportFloodlightCriteriaReportProperties
    , reportFloodlightCriteriaReportProperties
    , rfcrpIncludeUnattributedIPConversions
    , rfcrpIncludeUnattributedCookieConversions
    , rfcrpIncludeAttributedIPConversions

    -- ** FloodlightActivityGroup
    , FloodlightActivityGroup
    , floodlightActivityGroup
    , fagTagString
    , fagFloodlightConfigurationId
    , fagKind
    , fagAdvertiserId
    , fagAdvertiserIdDimensionValue
    , fagIdDimensionValue
    , fagAccountId
    , fagName
    , fagId
    , fagSubAccountId
    , fagType
    , fagFloodlightConfigurationIdDimensionValue

    -- ** AdsListCompatibility
    , AdsListCompatibility (..)

    -- ** CrossDimensionReachReportCompatibleFields
    , CrossDimensionReachReportCompatibleFields
    , crossDimensionReachReportCompatibleFields
    , cdrrcfMetrics
    , cdrrcfBreakdown
    , cdrrcfKind
    , cdrrcfDimensionFilters
    , cdrrcfOverlapMetrics

    -- ** FsCommand
    , FsCommand
    , fsCommand
    , fcPositionOption
    , fcLeft
    , fcWindowHeight
    , fcWindowWidth
    , fcTop

    -- ** PlacementAssignment
    , PlacementAssignment
    , placementAssignment
    , paPlacementId
    , paPlacementIdDimensionValue
    , paActive
    , paSSLRequired

    -- ** CreativeFieldValue
    , CreativeFieldValue
    , creativeFieldValue
    , cfvKind
    , cfvValue
    , cfvId

    -- ** EventTagStatus
    , EventTagStatus (..)

    -- ** SitesListSortField
    , SitesListSortField (..)

    -- ** DimensionValueRequest
    , DimensionValueRequest
    , dimensionValueRequest
    , dvrKind
    , dvrEndDate
    , dvrFilters
    , dvrStartDate
    , dvrDimensionName

    -- ** EventTagsListEventTagTypes
    , EventTagsListEventTagTypes (..)

    -- ** FloodlightConfigurationsListResponse
    , FloodlightConfigurationsListResponse
    , floodlightConfigurationsListResponse
    , fclrKind
    , fclrFloodlightConfigurations

    -- ** FloodlightActivitiesListResponse
    , FloodlightActivitiesListResponse
    , floodlightActivitiesListResponse
    , falrNextPageToken
    , falrKind
    , falrFloodlightActivities

    -- ** FileStatus
    , FileStatus (..)

    -- ** CreativeCustomEventArtworkType
    , CreativeCustomEventArtworkType (..)

    -- ** CreativeFieldAssignment
    , CreativeFieldAssignment
    , creativeFieldAssignment
    , cfaCreativeFieldId
    , cfaCreativeFieldValueId

    -- ** AdvertiserGroup
    , AdvertiserGroup
    , advertiserGroup
    , agKind
    , agAccountId
    , agName
    , agId

    -- ** TagData
    , TagData
    , tagData
    , tdClickTag
    , tdFormat
    , tdCreativeId
    , tdAdId
    , tdImpressionTag

    -- ** DayPartTargeting
    , DayPartTargeting
    , dayPartTargeting
    , dptDaysOfWeek
    , dptHoursOfDay
    , dptUserLocalTime

    -- ** CreativeOptimizationConfiguration
    , CreativeOptimizationConfiguration
    , creativeOptimizationConfiguration
    , cocOptimizationModel
    , cocName
    , cocOptimizationActivitys
    , cocId

    -- ** SiteTranscodeSetting
    , SiteTranscodeSetting
    , siteTranscodeSetting
    , stsKind
    , stsEnabledVideoFormats

    -- ** CreativeClickThroughURL
    , CreativeClickThroughURL
    , creativeClickThroughURL
    , cctuComputedClickThroughURL
    , cctuCustomClickThroughURL
    , cctuLandingPageId

    -- ** ReportCriteria
    , ReportCriteria
    , reportCriteria
    , rcMetricNames
    , rcCustomRichMediaEvents
    , rcDimensionFilters
    , rcActivities
    , rcDateRange
    , rcDimensions

    -- ** FloodlightConfigurationNATuralSearchConversionAttributionOption
    , FloodlightConfigurationNATuralSearchConversionAttributionOption (..)

    -- ** PlacementStrategiesListResponse
    , PlacementStrategiesListResponse
    , placementStrategiesListResponse
    , pslrPlacementStrategies
    , pslrNextPageToken
    , pslrKind

    -- ** ConversionsBatchUpdateResponse
    , ConversionsBatchUpdateResponse
    , conversionsBatchUpdateResponse
    , cburStatus
    , cburKind
    , cburHasFailures

    -- ** CreativeAssetArtworkType
    , CreativeAssetArtworkType (..)

    -- ** SubAccount
    , SubAccount
    , subAccount
    , saKind
    , saAvailablePermissionIds
    , saAccountId
    , saName
    , saId

    -- ** InventoryItemsListResponse
    , InventoryItemsListResponse
    , inventoryItemsListResponse
    , iilrInventoryItems
    , iilrNextPageToken
    , iilrKind

    -- ** UniversalAdId
    , UniversalAdId
    , universalAdId
    , uaiValue
    , uaiRegistry

    -- ** CustomFloodlightVariableType
    , CustomFloodlightVariableType (..)

    -- ** Ad
    , Ad
    , ad
    , aTargetingTemplateId
    , aCreativeGroupAssignments
    , aGeoTargeting
    , aCreativeRotation
    , aTechnologyTargeting
    , aAudienceSegmentId
    , aDayPartTargeting
    , aSize
    , aStartTime
    , aKind
    , aClickThroughURLSuffixProperties
    , aCampaignIdDimensionValue
    , aAdvertiserId
    , aAdvertiserIdDimensionValue
    , aSSLCompliant
    , aCampaignId
    , aIdDimensionValue
    , aClickThroughURL
    , aDeliverySchedule
    , aEventTagOverrides
    , aActive
    , aAccountId
    , aName
    , aKeyValueTargetingExpression
    , aEndTime
    , aCreateInfo
    , aLastModifiedInfo
    , aId
    , aSSLRequired
    , aComments
    , aSubAccountId
    , aType
    , aRemarketingListExpression
    , aLanguageTargeting
    , aDynamicClickTracker
    , aCompatibility
    , aArchived
    , aDefaultClickThroughEventTagProperties
    , aPlacementAssignments

    -- ** ConversionErrorCode
    , ConversionErrorCode (..)

    -- ** FloodlightActivitiesListSortOrder
    , FloodlightActivitiesListSortOrder (..)

    -- ** Project
    , Project
    , project
    , pTargetClicks
    , pClientBillingCode
    , pTargetCpmNanos
    , pTargetConversions
    , pBudget
    , pKind
    , pAdvertiserId
    , pEndDate
    , pOverview
    , pTargetImpressions
    , pStartDate
    , pTargetCpcNanos
    , pAccountId
    , pName
    , pLastModifiedInfo
    , pId
    , pAudienceAgeGroup
    , pSubAccountId
    , pTargetCpmActiveViewNanos
    , pAudienceGender
    , pClientName
    , pTargetCpaNanos

    -- ** FileFormat
    , FileFormat (..)

    -- ** EncryptionInfoEncryptionEntityType
    , EncryptionInfoEncryptionEntityType (..)

    -- ** PricingSchedulePricingType
    , PricingSchedulePricingType (..)

    -- ** ReportFloodlightCriteria
    , ReportFloodlightCriteria
    , reportFloodlightCriteria
    , rfcReportProperties
    , rfcMetricNames
    , rfcCustomRichMediaEvents
    , rfcDimensionFilters
    , rfcDateRange
    , rfcFloodlightConfigId
    , rfcDimensions

    -- ** CreativeCustomEventTargetType
    , CreativeCustomEventTargetType (..)

    -- ** ReportsListScope
    , ReportsListScope (..)

    -- ** Size
    , Size
    , size
    , sHeight
    , sKind
    , sWidth
    , sIab
    , sId

    -- ** CreativeAssetOrientation
    , CreativeAssetOrientation (..)

    -- ** CreativeAssetDurationType
    , CreativeAssetDurationType (..)

    -- ** TargetableRemarketingListListSource
    , TargetableRemarketingListListSource (..)

    -- ** ObjectFilter
    , ObjectFilter
    , objectFilter
    , ofStatus
    , ofKind
    , ofObjectIds

    -- ** SkippableSetting
    , SkippableSetting
    , skippableSetting
    , ssSkipOffSet
    , ssProgressOffSet
    , ssKind
    , ssSkippable

    -- ** CreativeGroupsListSortField
    , CreativeGroupsListSortField (..)

    -- ** ReportsConfiguration
    , ReportsConfiguration
    , reportsConfiguration
    , rcExposureToConversionEnabled
    , rcReportGenerationTimeZoneId
    , rcLookbackConfiguration

    -- ** PricingSchedule
    , PricingSchedule
    , pricingSchedule
    , psTestingStartDate
    , psFloodlightActivityId
    , psEndDate
    , psDisregardOverdelivery
    , psStartDate
    , psCapCostOption
    , psPricingType
    , psPricingPeriods
    , psFlighted

    -- ** PostalCode
    , PostalCode
    , postalCode
    , pcKind
    , pcCode
    , pcCountryCode
    , pcId
    , pcCountryDartId

    -- ** AccountPermissionsListResponse
    , AccountPermissionsListResponse
    , accountPermissionsListResponse
    , aplrKind
    , aplrAccountPermissions

    -- ** Country
    , Country
    , country
    , cKind
    , cName
    , cCountryCode
    , cDartId
    , cSSLEnabled

    -- ** PlacementsListSortField
    , PlacementsListSortField (..)

    -- ** CreativeBackupImageFeaturesItem
    , CreativeBackupImageFeaturesItem (..)

    -- ** OperatingSystemVersionsListResponse
    , OperatingSystemVersionsListResponse
    , operatingSystemVersionsListResponse
    , osvlrKind
    , osvlrOperatingSystemVersions

    -- ** ClickThroughURLSuffixProperties
    , ClickThroughURLSuffixProperties
    , clickThroughURLSuffixProperties
    , ctuspOverrideInheritedSuffix
    , ctuspClickThroughURLSuffix

    -- ** AdvertisersListSortOrder
    , AdvertisersListSortOrder (..)

    -- ** TargetingTemplatesListSortField
    , TargetingTemplatesListSortField (..)

    -- ** CreativeFieldsListSortField
    , CreativeFieldsListSortField (..)

    -- ** Pricing
    , Pricing
    , pricing
    , priEndDate
    , priStartDate
    , priGroupType
    , priPricingType
    , priFlights
    , priCapCostType

    -- ** AudienceSegmentGroup
    , AudienceSegmentGroup
    , audienceSegmentGroup
    , asgAudienceSegments
    , asgName
    , asgId

    -- ** OperatingSystem
    , OperatingSystem
    , operatingSystem
    , osDesktop
    , osKind
    , osName
    , osMobile
    , osDartId

    -- ** Flight
    , Flight
    , flight
    , fRateOrCost
    , fEndDate
    , fStartDate
    , fUnits

    -- ** UserDefinedVariableConfigurationVariableType
    , UserDefinedVariableConfigurationVariableType (..)

    -- ** FsCommandPositionOption
    , FsCommandPositionOption (..)

    -- ** CitiesListResponse
    , CitiesListResponse
    , citiesListResponse
    , citKind
    , citCities

    -- ** AdvertiserLandingPagesListSortField
    , AdvertiserLandingPagesListSortField (..)

    -- ** Dimension
    , Dimension
    , dimension
    , dKind
    , dName

    -- ** ReportReachCriteria
    , ReportReachCriteria
    , reportReachCriteria
    , rrcReachByFrequencyMetricNames
    , rrcEnableAllDimensionCombinations
    , rrcMetricNames
    , rrcCustomRichMediaEvents
    , rrcDimensionFilters
    , rrcActivities
    , rrcDateRange
    , rrcDimensions

    -- ** CustomRichMediaEvents
    , CustomRichMediaEvents
    , customRichMediaEvents
    , crmeKind
    , crmeFilteredEventIds

    -- ** LanguagesListResponse
    , LanguagesListResponse
    , languagesListResponse
    , llrKind
    , llrLanguages

    -- ** CustomViewabilityMetricConfiguration
    , CustomViewabilityMetricConfiguration
    , customViewabilityMetricConfiguration
    , cvmcViewabilityPercent
    , cvmcTimePercent
    , cvmcAudible
    , cvmcTimeMillis

    -- ** UserRolesListSortOrder
    , UserRolesListSortOrder (..)

    -- ** PlacementsListCompatibilities
    , PlacementsListCompatibilities (..)

    -- ** TargetableRemarketingListsListResponse
    , TargetableRemarketingListsListResponse
    , targetableRemarketingListsListResponse
    , trllrNextPageToken
    , trllrKind
    , trllrTargetableRemarketingLists

    -- ** OrderDocumentsListSortField
    , OrderDocumentsListSortField (..)

    -- ** CreativeCompatibilityItem
    , CreativeCompatibilityItem (..)

    -- ** ChangeLogsListResponse
    , ChangeLogsListResponse
    , changeLogsListResponse
    , cllrNextPageToken
    , cllrKind
    , cllrChangeLogs

    -- ** ReportDeliveryEmailOwnerDeliveryType
    , ReportDeliveryEmailOwnerDeliveryType (..)

    -- ** SiteContactContactType
    , SiteContactContactType (..)

    -- ** AccountUserProFile
    , AccountUserProFile
    , accountUserProFile
    , aupfEmail
    , aupfUserRoleFilter
    , aupfAdvertiserFilter
    , aupfUserRoleId
    , aupfKind
    , aupfLocale
    , aupfSiteFilter
    , aupfTraffickerType
    , aupfActive
    , aupfAccountId
    , aupfName
    , aupfId
    , aupfUserAccessType
    , aupfComments
    , aupfSubAccountId
    , aupfCampaignFilter

    -- ** ReportsListSortOrder
    , ReportsListSortOrder (..)

    -- ** DimensionValue
    , DimensionValue
    , dimensionValue
    , dvEtag
    , dvKind
    , dvValue
    , dvMatchType
    , dvDimensionName
    , dvId

    -- ** TargetableRemarketingListsListSortField
    , TargetableRemarketingListsListSortField (..)

    -- ** CampaignsListSortOrder
    , CampaignsListSortOrder (..)

    -- ** Activities
    , Activities
    , activities
    , actKind
    , actMetricNames
    , actFilters

    -- ** FloodlightActivityGroupsListType
    , FloodlightActivityGroupsListType (..)

    -- ** FloodlightConfigurationFirstDayOfWeek
    , FloodlightConfigurationFirstDayOfWeek (..)

    -- ** UserRolePermissionGroupsListResponse
    , UserRolePermissionGroupsListResponse
    , userRolePermissionGroupsListResponse
    , urpglrUserRolePermissionGroups
    , urpglrKind

    -- ** PlacementTag
    , PlacementTag
    , placementTag
    , ptPlacementId
    , ptTagDatas

    -- ** DeliverySchedulePriority
    , DeliverySchedulePriority (..)

    -- ** FloodlightActivitiesListFloodlightActivityGroupType
    , FloodlightActivitiesListFloodlightActivityGroupType (..)

    -- ** RemarketingListsListResponse
    , RemarketingListsListResponse
    , remarketingListsListResponse
    , rllrNextPageToken
    , rllrRemarketingLists
    , rllrKind

    -- ** DynamicTargetingKey
    , DynamicTargetingKey
    , dynamicTargetingKey
    , dtkObjectType
    , dtkKind
    , dtkObjectId
    , dtkName

    -- ** Creative
    , Creative
    , creative
    , creConvertFlashToHTML5
    , creBackupImageTargetWindow
    , creRenderingIdDimensionValue
    , creCustomKeyValues
    , creSkipOffSet
    , creRenderingId
    , creThirdPartyBackupImageImpressionsURL
    , creFsCommand
    , creAllowScriptAccess
    , creHTMLCodeLocked
    , creRequiredFlashPluginVersion
    , creUniversalAdId
    , creAuthoringTool
    , creSize
    , creThirdPartyURLs
    , creProgressOffSet
    , creCounterCustomEvents
    , creKind
    , creSSLOverride
    , creHTMLCode
    , creAdvertiserId
    , creRequiredFlashVersion
    , creBackgRoundColor
    , creAdTagKeys
    , creSkippable
    , creSSLCompliant
    , creIdDimensionValue
    , creBackupImageReportingLabel
    , creCommercialId
    , creActive
    , creExitCustomEvents
    , creAccountId
    , creBackupImageClickThroughURL
    , creName
    , creOverrideCss
    , creAdditionalSizes
    , creClickTags
    , creAdParameters
    , creVersion
    , creMediaDescription
    , creMediaDuration
    , creLatestTraffickedCreativeId
    , creThirdPartyRichMediaImpressionsURL
    , creDynamicAssetSelection
    , creLastModifiedInfo
    , creId
    , creAuthoringSource
    , creStudioAdvertiserId
    , creCreativeAssets
    , creSubAccountId
    , creType
    , creTimerCustomEvents
    , creCreativeAssetSelection
    , creStudioCreativeId
    , creCompatibility
    , creBackupImageFeatures
    , creArtworkType
    , creArchived
    , creCompanionCreatives
    , creTotalFileSize
    , creStudioTraffickedCreativeId
    , creAutoAdvanceImages
    , creRedirectURL
    , creCreativeFieldAssignments

    -- ** SiteCompanionSetting
    , SiteCompanionSetting
    , siteCompanionSetting
    , scsKind
    , scsImageOnly
    , scsCompanionsDisabled
    , scsEnabledSizes

    -- ** SiteContact
    , SiteContact
    , siteContact
    , scEmail
    , scPhone
    , scLastName
    , scAddress
    , scFirstName
    , scId
    , scTitle
    , scContactType

    -- ** CreativeAuthoringSource
    , CreativeAuthoringSource (..)

    -- ** AccountsListResponse
    , AccountsListResponse
    , accountsListResponse
    , accNextPageToken
    , accAccounts
    , accKind

    -- ** DateRange
    , DateRange
    , dateRange
    , drKind
    , drEndDate
    , drStartDate
    , drRelativeDateRange

    -- ** Report
    , Report
    , report
    , rDelivery
    , rEtag
    , rOwnerProFileId
    , rSchedule
    , rPathToConversionCriteria
    , rKind
    , rFormat
    , rReachCriteria
    , rLastModifiedTime
    , rAccountId
    , rName
    , rId
    , rCrossDimensionReachCriteria
    , rType
    , rSubAccountId
    , rFloodlightCriteria
    , rCriteria
    , rFileName

    -- ** PlacementPaymentSource
    , PlacementPaymentSource (..)

    -- ** SiteSkippableSetting
    , SiteSkippableSetting
    , siteSkippableSetting
    , sssSkipOffSet
    , sssProgressOffSet
    , sssKind
    , sssSkippable

    -- ** Rule
    , Rule
    , rule
    , rulTargetingTemplateId
    , rulName
    , rulAssetId

    -- ** ReportsFilesListSortOrder
    , ReportsFilesListSortOrder (..)

    -- ** Campaign
    , Campaign
    , campaign
    , camAdBlockingConfiguration
    , camCreativeOptimizationConfiguration
    , camCreativeGroupIds
    , camNielsenOCREnabled
    , camKind
    , camClickThroughURLSuffixProperties
    , camAdvertiserId
    , camEndDate
    , camAdvertiserIdDimensionValue
    , camIdDimensionValue
    , camEventTagOverrides
    , camStartDate
    , camAccountId
    , camName
    , camAdvertiserGroupId
    , camBillingInvoiceCode
    , camDefaultLandingPageId
    , camCreateInfo
    , camLastModifiedInfo
    , camId
    , camSubAccountId
    , camAdditionalCreativeOptimizationConfigurations
    , camExternalId
    , camComment
    , camAudienceSegmentGroups
    , camArchived
    , camTraffickerEmails
    , camDefaultClickThroughEventTagProperties

    -- ** InventoryItemsListSortField
    , InventoryItemsListSortField (..)

    -- ** EventTagType
    , EventTagType (..)

    -- ** CreativesListSortOrder
    , CreativesListSortOrder (..)

    -- ** InventoryItemsListType
    , InventoryItemsListType (..)

    -- ** ThirdPartyAuthenticationToken
    , ThirdPartyAuthenticationToken
    , thirdPartyAuthenticationToken
    , tpatValue
    , tpatName

    -- ** PopupWindowPropertiesPositionType
    , PopupWindowPropertiesPositionType (..)

    -- ** ClickThroughURL
    , ClickThroughURL
    , clickThroughURL
    , ctuDefaultLandingPage
    , ctuComputedClickThroughURL
    , ctuCustomClickThroughURL
    , ctuLandingPageId

    -- ** TagSettingKeywordOption
    , TagSettingKeywordOption (..)

    -- ** CreativeAuthoringTool
    , CreativeAuthoringTool (..)

    -- ** OrderContactContactType
    , OrderContactContactType (..)

    -- ** CreativeAssetIdType
    , CreativeAssetIdType (..)

    -- ** AccountUserProFilesListSortOrder
    , AccountUserProFilesListSortOrder (..)

    -- ** RemarketingListListSource
    , RemarketingListListSource (..)

    -- ** BrowsersListResponse
    , BrowsersListResponse
    , browsersListResponse
    , blrKind
    , blrBrowsers

    -- ** AccountUserProFileUserAccessType
    , AccountUserProFileUserAccessType (..)

    -- ** CreativeAssetStartTimeType
    , CreativeAssetStartTimeType (..)

    -- ** ProjectAudienceGender
    , ProjectAudienceGender (..)

    -- ** SiteSettings
    , SiteSettings
    , siteSettings
    , ssDisableNewCookie
    , ssVideoActiveViewOptOutTemplate
    , ssAdBlockingOptOut
    , ssTagSetting
    , ssActiveViewOptOut
    , ssVpaidAdapterChoiceTemplate

    -- ** PlacementStrategiesListSortField
    , PlacementStrategiesListSortField (..)

    -- ** ContentCategoriesListResponse
    , ContentCategoriesListResponse
    , contentCategoriesListResponse
    , cclrNextPageToken
    , cclrKind
    , cclrContentCategories

    -- ** UserDefinedVariableConfigurationDataType
    , UserDefinedVariableConfigurationDataType (..)

    -- ** FloodlightActivityCacheBustingType
    , FloodlightActivityCacheBustingType (..)

    -- ** CreativesListResponse
    , CreativesListResponse
    , creativesListResponse
    , clrlNextPageToken
    , clrlKind
    , clrlCreatives

    -- ** CreativeGroupsListSortOrder
    , CreativeGroupsListSortOrder (..)

    -- ** OrderDocumentType
    , OrderDocumentType (..)

    -- ** TagDataFormat
    , TagDataFormat (..)

    -- ** Account
    , Account
    , account
    , aaAccountPermissionIds
    , aaMaximumImageSize
    , aaCurrencyId
    , aaReportsConfiguration
    , aaNielsenOCREnabled
    , aaKind
    , aaLocale
    , aaActive
    , aaAvailablePermissionIds
    , aaTeaserSizeLimit
    , aaActiveViewOptOut
    , aaShareReportsWithTwitter
    , aaName
    , aaAccountProFile
    , aaId
    , aaCountryId
    , aaActiveAdsLimitTier
    , aaDefaultCreativeSizeId
    , aaDescription

    -- ** ConversionsBatchInsertRequest
    , ConversionsBatchInsertRequest
    , conversionsBatchInsertRequest
    , cbirKind
    , cbirConversions
    , cbirEncryptionInfo

    -- ** AccountActiveAdSummaryActiveAdsLimitTier
    , AccountActiveAdSummaryActiveAdsLimitTier (..)

    -- ** CreativeAssetChildAssetType
    , CreativeAssetChildAssetType (..)

    -- ** PlacementGroupsListPlacementGroupType
    , PlacementGroupsListPlacementGroupType (..)

    -- ** AccountUserProFilesListResponse
    , AccountUserProFilesListResponse
    , accountUserProFilesListResponse
    , aupflrNextPageToken
    , aupflrAccountUserProFiles
    , aupflrKind

    -- ** ContentCategory
    , ContentCategory
    , contentCategory
    , conKind
    , conAccountId
    , conName
    , conId

    -- ** ObjectFilterStatus
    , ObjectFilterStatus (..)

    -- ** ReportCompatibleFields
    , ReportCompatibleFields
    , reportCompatibleFields
    , rcfMetrics
    , rcfKind
    , rcfDimensionFilters
    , rcfPivotedActivityMetrics
    , rcfDimensions

    -- ** CampaignCreativeAssociationsListSortOrder
    , CampaignCreativeAssociationsListSortOrder (..)

    -- ** DeliverySchedule
    , DeliverySchedule
    , deliverySchedule
    , dsHardCutoff
    , dsPriority
    , dsImpressionRatio
    , dsFrequencyCap

    -- ** RemarketingList
    , RemarketingList
    , remarketingList
    , rlListSize
    , rlListPopulationRule
    , rlLifeSpan
    , rlKind
    , rlAdvertiserId
    , rlAdvertiserIdDimensionValue
    , rlActive
    , rlAccountId
    , rlName
    , rlListSource
    , rlId
    , rlSubAccountId
    , rlDescription

    -- ** FloodlightActivitiesListSortField
    , FloodlightActivitiesListSortField (..)

    -- ** DynamicTargetingKeysListResponse
    , DynamicTargetingKeysListResponse
    , dynamicTargetingKeysListResponse
    , dtklrKind
    , dtklrDynamicTargetingKeys

    -- ** DimensionValueList
    , DimensionValueList
    , dimensionValueList
    , dvlEtag
    , dvlNextPageToken
    , dvlKind
    , dvlItems

    -- ** FloodlightReportCompatibleFields
    , FloodlightReportCompatibleFields
    , floodlightReportCompatibleFields
    , frcfMetrics
    , frcfKind
    , frcfDimensionFilters
    , frcfDimensions

    -- ** UserRolePermissionGroup
    , UserRolePermissionGroup
    , userRolePermissionGroup
    , urpgKind
    , urpgName
    , urpgId

    -- ** CreativesListTypes
    , CreativesListTypes (..)

    -- ** DirectorySiteInpageTagFormatsItem
    , DirectorySiteInpageTagFormatsItem (..)

    -- ** TagSetting
    , TagSetting
    , tagSetting
    , tsKeywordOption
    , tsIncludeClickThroughURLs
    , tsIncludeClickTracking
    , tsAdditionalKeyValues

    -- ** CreativeAssetWindowMode
    , CreativeAssetWindowMode (..)

    -- ** CreativeAssetAlignment
    , CreativeAssetAlignment (..)

    -- ** RemarketingListsListSortOrder
    , RemarketingListsListSortOrder (..)

    -- ** ReportPathToConversionCriteriaReportProperties
    , ReportPathToConversionCriteriaReportProperties
    , reportPathToConversionCriteriaReportProperties
    , rptccrpMaximumInteractionGap
    , rptccrpMaximumClickInteractions
    , rptccrpPivotOnInteractionPath
    , rptccrpMaximumImpressionInteractions
    , rptccrpIncludeUnattributedIPConversions
    , rptccrpImpressionsLookbackWindow
    , rptccrpClicksLookbackWindow
    , rptccrpIncludeUnattributedCookieConversions
    , rptccrpIncludeAttributedIPConversions

    -- ** UserRolePermissionsListResponse
    , UserRolePermissionsListResponse
    , userRolePermissionsListResponse
    , urplrKind
    , urplrUserRolePermissions

    -- ** PlacementGroupsListPricingTypes
    , PlacementGroupsListPricingTypes (..)

    -- ** DynamicTargetingKeysDeleteObjectType
    , DynamicTargetingKeysDeleteObjectType (..)

    -- ** AccountActiveAdsLimitTier
    , AccountActiveAdsLimitTier (..)

    -- ** AccountsListSortOrder
    , AccountsListSortOrder (..)

    -- ** PlacementGroupsListResponse
    , PlacementGroupsListResponse
    , placementGroupsListResponse
    , pglrNextPageToken
    , pglrKind
    , pglrPlacementGroups

    -- ** MobileCarrier
    , MobileCarrier
    , mobileCarrier
    , mcKind
    , mcName
    , mcCountryCode
    , mcId
    , mcCountryDartId

    -- ** LandingPage
    , LandingPage
    , landingPage
    , lpKind
    , lpAdvertiserId
    , lpURL
    , lpName
    , lpDeepLinks
    , lpId
    , lpArchived

    -- ** ConnectionTypesListResponse
    , ConnectionTypesListResponse
    , connectionTypesListResponse
    , ctlrKind
    , ctlrConnectionTypes

    -- ** OrdersListResponse
    , OrdersListResponse
    , ordersListResponse
    , olrNextPageToken
    , olrKind
    , olrOrders

    -- ** ReportList
    , ReportList
    , reportList
    , repEtag
    , repNextPageToken
    , repKind
    , repItems

    -- ** CreativeGroup
    , CreativeGroup
    , creativeGroup
    , cgKind
    , cgAdvertiserId
    , cgAdvertiserIdDimensionValue
    , cgGroupNumber
    , cgAccountId
    , cgName
    , cgId
    , cgSubAccountId

    -- ** SubAccountsListSortField
    , SubAccountsListSortField (..)

    -- ** CampaignCreativeAssociation
    , CampaignCreativeAssociation
    , campaignCreativeAssociation
    , ccaKind
    , ccaCreativeId

    -- ** ConversionStatus
    , ConversionStatus
    , conversionStatus
    , csKind
    , csConversion
    , csErrors

    -- ** LookbackConfiguration
    , LookbackConfiguration
    , lookbackConfiguration
    , lcClickDuration
    , lcPostImpressionActivitiesDuration

    -- ** VideoFormatFileType
    , VideoFormatFileType (..)

    -- ** AdsListSortField
    , AdsListSortField (..)

    -- ** ProjectsListSortField
    , ProjectsListSortField (..)

    -- ** FloodlightActivityPublisherDynamicTag
    , FloodlightActivityPublisherDynamicTag
    , floodlightActivityPublisherDynamicTag
    , fapdtClickThrough
    , fapdtSiteIdDimensionValue
    , fapdtDynamicTag
    , fapdtDirectorySiteId
    , fapdtSiteId
    , fapdtViewThrough

    -- ** AdsListType
    , AdsListType (..)

    -- ** AccountActiveAdSummary
    , AccountActiveAdSummary
    , accountActiveAdSummary
    , aaasAvailableAds
    , aaasKind
    , aaasAccountId
    , aaasActiveAds
    , aaasActiveAdsLimitTier

    -- ** CreativeOptimizationConfigurationOptimizationModel
    , CreativeOptimizationConfigurationOptimizationModel (..)

    -- ** AccountPermissionLevel
    , AccountPermissionLevel (..)

    -- ** OffSetPosition
    , OffSetPosition
    , offSetPosition
    , ospLeft
    , ospTop

    -- ** Metric
    , Metric
    , metric
    , mKind
    , mName

    -- ** RemarketingListShare
    , RemarketingListShare
    , remarketingListShare
    , rlsSharedAdvertiserIds
    , rlsKind
    , rlsRemarketingListId
    , rlsSharedAccountIds

    -- ** EventTagsListResponse
    , EventTagsListResponse
    , eventTagsListResponse
    , etlrKind
    , etlrEventTags

    -- ** UserRolesListResponse
    , UserRolesListResponse
    , userRolesListResponse
    , urlrNextPageToken
    , urlrKind
    , urlrUserRoles

    -- ** ListPopulationTermType
    , ListPopulationTermType (..)

    -- ** AdvertiserGroupsListSortOrder
    , AdvertiserGroupsListSortOrder (..)

    -- ** CreativeFieldValuesListSortOrder
    , CreativeFieldValuesListSortOrder (..)

    -- ** SortedDimensionSortOrder
    , SortedDimensionSortOrder (..)

    -- ** MobileAppsListDirectories
    , MobileAppsListDirectories (..)

    -- ** CompatibleFields
    , CompatibleFields
    , compatibleFields
    , cfReachReportCompatibleFields
    , cfCrossDimensionReachReportCompatibleFields
    , cfKind
    , cfFloodlightReportCompatibleFields
    , cfReportCompatibleFields
    , cfPathToConversionReportCompatibleFields

    -- ** AudienceSegment
    , AudienceSegment
    , audienceSegment
    , asName
    , asId
    , asAllocation

    -- ** FilesListSortField
    , FilesListSortField (..)

    -- ** ConversionsBatchUpdateRequest
    , ConversionsBatchUpdateRequest
    , conversionsBatchUpdateRequest
    , cburbKind
    , cburbConversions
    , cburbEncryptionInfo

    -- ** DirectorySiteInterstitialTagFormatsItem
    , DirectorySiteInterstitialTagFormatsItem (..)

    -- ** DfpSettings
    , DfpSettings
    , dfpSettings
    , dsPubPaidPlacementAccepted
    , dsDfpNetworkName
    , dsPublisherPortalOnly
    , dsProgrammaticPlacementAccepted
    , dsDfpNetworkCode

    -- ** EventTagsListSortField
    , EventTagsListSortField (..)

    -- ** PathToConversionReportCompatibleFields
    , PathToConversionReportCompatibleFields
    , pathToConversionReportCompatibleFields
    , ptcrcfMetrics
    , ptcrcfKind
    , ptcrcfConversionDimensions
    , ptcrcfCustomFloodlightVariables
    , ptcrcfPerInteractionDimensions

    -- ** InventoryItemType
    , InventoryItemType (..)

    -- ** CreativeAssetPositionTopUnit
    , CreativeAssetPositionTopUnit (..)

    -- ** City
    , City
    , city
    , ccMetroCode
    , ccRegionCode
    , ccKind
    , ccRegionDartId
    , ccMetroDmaId
    , ccName
    , ccCountryCode
    , ccCountryDartId
    , ccDartId

    -- ** PlatformType
    , PlatformType
    , platformType
    , ptKind
    , ptName
    , ptId

    -- ** FloodlightActivityFloodlightActivityGroupType
    , FloodlightActivityFloodlightActivityGroupType (..)

    -- ** PricingGroupType
    , PricingGroupType (..)

    -- ** KeyValueTargetingExpression
    , KeyValueTargetingExpression
    , keyValueTargetingExpression
    , kvteExpression

    -- ** CompanionClickThroughOverride
    , CompanionClickThroughOverride
    , companionClickThroughOverride
    , cctoCreativeId
    , cctoClickThroughURL

    -- ** FloodlightActivityFloodlightTagType
    , FloodlightActivityFloodlightTagType (..)

    -- ** FloodlightActivityGroupsListSortOrder
    , FloodlightActivityGroupsListSortOrder (..)

    -- ** CreativeRotationType
    , CreativeRotationType (..)

    -- ** OrdersListSortField
    , OrdersListSortField (..)

    -- ** PlacementGroupsListSortField
    , PlacementGroupsListSortField (..)

    -- ** DirectorySitesListSortOrder
    , DirectorySitesListSortOrder (..)

    -- ** AdvertisersListResponse
    , AdvertisersListResponse
    , advertisersListResponse
    , advNextPageToken
    , advKind
    , advAdvertisers

    -- ** CountriesListResponse
    , CountriesListResponse
    , countriesListResponse
    , couKind
    , couCountries

    -- ** AccountPermissionGroupsListResponse
    , AccountPermissionGroupsListResponse
    , accountPermissionGroupsListResponse
    , apglrKind
    , apglrAccountPermissionGroups

    -- ** PopupWindowProperties
    , PopupWindowProperties
    , popupWindowProperties
    , pwpOffSet
    , pwpDimension
    , pwpShowStatusBar
    , pwpShowMenuBar
    , pwpPositionType
    , pwpShowAddressBar
    , pwpShowScrollBar
    , pwpShowToolBar
    , pwpTitle

    -- ** CreativeAssetDetectedFeaturesItem
    , CreativeAssetDetectedFeaturesItem (..)

    -- ** FloodlightActivityGroupType
    , FloodlightActivityGroupType (..)

    -- ** EventTagOverride
    , EventTagOverride
    , eventTagOverride
    , etoEnabled
    , etoId

    -- ** PlacementsGeneratetagsTagFormats
    , PlacementsGeneratetagsTagFormats (..)

    -- ** AccountUserProFilesListSortField
    , AccountUserProFilesListSortField (..)

    -- ** OperatingSystemVersion
    , OperatingSystemVersion
    , operatingSystemVersion
    , osvMinorVersion
    , osvKind
    , osvOperatingSystem
    , osvMajorVersion
    , osvName
    , osvId

    -- ** InventoryItemsListSortOrder
    , InventoryItemsListSortOrder (..)

    -- ** PlacementStrategiesListSortOrder
    , PlacementStrategiesListSortOrder (..)

    -- ** AccountPermission
    , AccountPermission
    , accountPermission
    , acccKind
    , acccAccountProFiles
    , acccName
    , acccId
    , acccLevel
    , acccPermissionGroupId

    -- ** UserProFile
    , UserProFile
    , userProFile
    , upfEtag
    , upfKind
    , upfAccountName
    , upfProFileId
    , upfUserName
    , upfAccountId
    , upfSubAccountName
    , upfSubAccountId

    -- ** OperatingSystemsListResponse
    , OperatingSystemsListResponse
    , operatingSystemsListResponse
    , oslrKind
    , oslrOperatingSystems

    -- ** ReportDelivery
    , ReportDelivery
    , reportDelivery
    , rdEmailOwner
    , rdRecipients
    , rdMessage
    , rdEmailOwnerDeliveryType

    -- ** TargetableRemarketingList
    , TargetableRemarketingList
    , targetableRemarketingList
    , trlListSize
    , trlLifeSpan
    , trlKind
    , trlAdvertiserId
    , trlAdvertiserIdDimensionValue
    , trlActive
    , trlAccountId
    , trlName
    , trlListSource
    , trlId
    , trlSubAccountId
    , trlDescription

    -- ** ReportsFilesListSortField
    , ReportsFilesListSortField (..)

    -- ** PostalCodesListResponse
    , PostalCodesListResponse
    , postalCodesListResponse
    , pclrKind
    , pclrPostalCodes

    -- ** ChangeLog
    , ChangeLog
    , changeLog
    , chaUserProFileId
    , chaObjectType
    , chaUserProFileName
    , chaKind
    , chaObjectId
    , chaAction
    , chaTransactionId
    , chaOldValue
    , chaAccountId
    , chaNewValue
    , chaFieldName
    , chaId
    , chaSubAccountId
    , chaChangeTime

    -- ** Language
    , Language
    , language
    , lLanguageCode
    , lKind
    , lName
    , lId

    -- ** CreativesListSortField
    , CreativesListSortField (..)

    -- ** PlacementStrategy
    , PlacementStrategy
    , placementStrategy
    , psKind
    , psAccountId
    , psName
    , psId

    -- ** FloodlightActivity
    , FloodlightActivity
    , floodlightActivity
    , faCountingMethod
    , faTagString
    , faSecure
    , faExpectedURL
    , faFloodlightActivityGroupTagString
    , faFloodlightConfigurationId
    , faKind
    , faAdvertiserId
    , faAdvertiserIdDimensionValue
    , faSSLCompliant
    , faIdDimensionValue
    , faTagFormat
    , faCacheBustingType
    , faAccountId
    , faName
    , faPublisherTags
    , faFloodlightActivityGroupId
    , faHidden
    , faFloodlightActivityGroupType
    , faDefaultTags
    , faFloodlightTagType
    , faFloodlightActivityGroupName
    , faId
    , faSSLRequired
    , faUserDefinedVariableTypes
    , faSubAccountId
    , faNotes
    , faFloodlightConfigurationIdDimensionValue

    -- ** DayPartTargetingDaysOfWeekItem
    , DayPartTargetingDaysOfWeekItem (..)

    -- ** CustomFloodlightVariable
    , CustomFloodlightVariable
    , customFloodlightVariable
    , cusKind
    , cusValue
    , cusType

    -- ** CreativeRotationWeightCalculationStrategy
    , CreativeRotationWeightCalculationStrategy (..)

    -- ** FilesListScope
    , FilesListScope (..)

    -- ** ContentCategoriesListSortField
    , ContentCategoriesListSortField (..)

    -- ** ProjectAudienceAgeGroup
    , ProjectAudienceAgeGroup (..)

    -- ** PlatformTypesListResponse
    , PlatformTypesListResponse
    , platformTypesListResponse
    , ptlrKind
    , ptlrPlatformTypes

    -- ** AdType
    , AdType (..)

    -- ** LastModifiedInfo
    , LastModifiedInfo
    , lastModifiedInfo
    , lmiTime

    -- ** TargetWindow
    , TargetWindow
    , targetWindow
    , twCustomHTML
    , twTargetWindowOption

    -- ** ChangeLogsListAction
    , ChangeLogsListAction (..)

    -- ** CreativeArtworkType
    , CreativeArtworkType (..)

    -- ** PlacementStatus
    , PlacementStatus (..)

    -- ** AccountPermissionGroup
    , AccountPermissionGroup
    , accountPermissionGroup
    , apgpKind
    , apgpName
    , apgpId

    -- ** Advertiser
    , Advertiser
    , advertiser
    , advdOriginalFloodlightConfigurationId
    , advdStatus
    , advdFloodlightConfigurationId
    , advdKind
    , advdSuspended
    , advdIdDimensionValue
    , advdAccountId
    , advdDefaultEmail
    , advdName
    , advdAdvertiserGroupId
    , advdDefaultClickThroughEventTagId
    , advdId
    , advdSubAccountId
    , advdFloodlightConfigurationIdDimensionValue
    , advdClickThroughURLSuffix

    -- ** ReportScheduleRunsOnDayOfMonth
    , ReportScheduleRunsOnDayOfMonth (..)

    -- ** UserRole
    , UserRole
    , userRole
    , urParentUserRoleId
    , urKind
    , urDefaultUserRole
    , urAccountId
    , urName
    , urId
    , urPermissions
    , urSubAccountId

    -- ** FloodlightActivityUserDefinedVariableTypesItem
    , FloodlightActivityUserDefinedVariableTypesItem (..)

    -- ** EventTagSiteFilterType
    , EventTagSiteFilterType (..)

    -- ** ReportFormat
    , ReportFormat (..)

    -- ** PlacementGroupPlacementGroupType
    , PlacementGroupPlacementGroupType (..)

    -- ** VideoFormatsListResponse
    , VideoFormatsListResponse
    , videoFormatsListResponse
    , vflrKind
    , vflrVideoFormats

    -- ** DirectorySitesListResponse
    , DirectorySitesListResponse
    , directorySitesListResponse
    , dslrNextPageToken
    , dslrKind
    , dslrDirectorySites

    -- ** ConversionError
    , ConversionError
    , conversionError
    , ceKind
    , ceCode
    , ceMessage

    -- ** PricingPricingType
    , PricingPricingType (..)

    -- ** PricingSchedulePricingPeriod
    , PricingSchedulePricingPeriod
    , pricingSchedulePricingPeriod
    , psppEndDate
    , psppRateOrCostNanos
    , psppStartDate
    , psppUnits
    , psppPricingComment

    -- ** SubAccountsListSortOrder
    , SubAccountsListSortOrder (..)

    -- ** Region
    , Region
    , region
    , regRegionCode
    , regKind
    , regName
    , regCountryCode
    , regCountryDartId
    , regDartId

    -- ** UniversalAdIdRegistry
    , UniversalAdIdRegistry (..)

    -- ** AdvertiserGroupsListResponse
    , AdvertiserGroupsListResponse
    , advertiserGroupsListResponse
    , aglrNextPageToken
    , aglrKind
    , aglrAdvertiserGroups

    -- ** AdsListSortOrder
    , AdsListSortOrder (..)

    -- ** ProjectsListSortOrder
    , ProjectsListSortOrder (..)

    -- ** CreativeAssignment
    , CreativeAssignment
    , creativeAssignment
    , caCreativeGroupAssignments
    , caStartTime
    , caWeight
    , caRichMediaExitOverrides
    , caSSLCompliant
    , caCreativeId
    , caClickThroughURL
    , caApplyEventTags
    , caActive
    , caSequence
    , caEndTime
    , caCompanionCreativeOverrides
    , caCreativeIdDimensionValue

    -- ** DimensionFilter
    , DimensionFilter
    , dimensionFilter
    , dfKind
    , dfValue
    , dfDimensionName

    -- ** UserProFileList
    , UserProFileList
    , userProFileList
    , upflEtag
    , upflKind
    , upflItems

    -- ** RemarketingListsListSortField
    , RemarketingListsListSortField (..)

    -- ** FloodlightConfiguration
    , FloodlightConfiguration
    , floodlightConfiguration
    , fcTagSettings
    , fcExposureToConversionEnabled
    , fcInAppAttributionTrackingEnabled
    , fcThirdPartyAuthenticationTokens
    , fcKind
    , fcAdvertiserId
    , fcAnalyticsDataSharingEnabled
    , fcAdvertiserIdDimensionValue
    , fcIdDimensionValue
    , fcLookbackConfiguration
    , fcAccountId
    , fcId
    , fcNATuralSearchConversionAttributionOption
    , fcUserDefinedVariableConfigurations
    , fcSubAccountId
    , fcCustomViewabilityMetric
    , fcFirstDayOfWeek
    , fcOmnitureSettings

    -- ** MobileAppDirectory
    , MobileAppDirectory (..)

    -- ** CompanionSetting
    , CompanionSetting
    , companionSetting
    , comKind
    , comImageOnly
    , comCompanionsDisabled
    , comEnabledSizes

    -- ** ReportScheduleRepeatsOnWeekDaysItem
    , ReportScheduleRepeatsOnWeekDaysItem (..)

    -- ** FloodlightActivityGroupsListResponse
    , FloodlightActivityGroupsListResponse
    , floodlightActivityGroupsListResponse
    , faglrNextPageToken
    , faglrKind
    , faglrFloodlightActivityGroups

    -- ** CreativeGroupAssignmentCreativeGroupNumber
    , CreativeGroupAssignmentCreativeGroupNumber (..)

    -- ** Conversion
    , Conversion
    , conversion
    , conoTreatmentForUnderage
    , conoEncryptedUserIdCandidates
    , conoTimestampMicros
    , conoLimitAdTracking
    , conoEncryptedUserId
    , conoMobileDeviceId
    , conoFloodlightConfigurationId
    , conoKind
    , conoFloodlightActivityId
    , conoNonPersonalizedAd
    , conoQuantity
    , conoValue
    , conoCustomVariables
    , conoChildDirectedTreatment
    , conoGclid
    , conoOrdinal

    -- ** CreativeFieldValuesListResponse
    , CreativeFieldValuesListResponse
    , creativeFieldValuesListResponse
    , cfvlrNextPageToken
    , cfvlrKind
    , cfvlrCreativeFieldValues

    -- ** SiteSettingsVpaidAdapterChoiceTemplate
    , SiteSettingsVpaidAdapterChoiceTemplate (..)

    -- ** AccountsListSortField
    , AccountsListSortField (..)

    -- ** RichMediaExitOverride
    , RichMediaExitOverride
    , richMediaExitOverride
    , rmeoEnabled
    , rmeoClickThroughURL
    , rmeoExitId

    -- ** AdvertisersListStatus
    , AdvertisersListStatus (..)

    -- ** CustomViewabilityMetric
    , CustomViewabilityMetric
    , customViewabilityMetric
    , cvmName
    , cvmId
    , cvmConfiguration

    -- ** DimensionValueMatchType
    , DimensionValueMatchType (..)

    -- ** AdvertiserLandingPagesListResponse
    , AdvertiserLandingPagesListResponse
    , advertiserLandingPagesListResponse
    , alplrLandingPages
    , alplrNextPageToken
    , alplrKind

    -- ** MobileAppsListResponse
    , MobileAppsListResponse
    , mobileAppsListResponse
    , malrNextPageToken
    , malrKind
    , malrMobileApps

    -- ** SortedDimension
    , SortedDimension
    , sortedDimension
    , sdKind
    , sdSortOrder
    , sdName

    -- ** PlacementGroupsListSortOrder
    , PlacementGroupsListSortOrder (..)

    -- ** CreativeFieldsListResponse
    , CreativeFieldsListResponse
    , creativeFieldsListResponse
    , cflrNextPageToken
    , cflrKind
    , cflrCreativeFields

    -- ** TargetingTemplatesListResponse
    , TargetingTemplatesListResponse
    , targetingTemplatesListResponse
    , ttlrNextPageToken
    , ttlrKind
    , ttlrTargetingTemplates

    -- ** PlacementsGenerateTagsResponse
    , PlacementsGenerateTagsResponse
    , placementsGenerateTagsResponse
    , pgtrKind
    , pgtrPlacementTags

    -- ** CreativeAsset
    , CreativeAsset
    , creativeAsset
    , caaZIndex
    , caaPushdown
    , caaFrameRate
    , caaOriginalBackup
    , caaWindowMode
    , caaFlashVersion
    , caaPushdownDuration
    , caaSize
    , caaVerticallyLocked
    , caaOffSet
    , caaStreamingServingURL
    , caaZipFilesize
    , caaTransparency
    , caaHideSelectionBoxes
    , caaSSLCompliant
    , caaFileSize
    , caaAssetIdentifier
    , caaCompanionCreativeIds
    , caaDurationType
    , caaProgressiveServingURL
    , caaIdDimensionValue
    , caaActive
    , caaRole
    , caaMimeType
    , caaPositionTopUnit
    , caaPositionLeftUnit
    , caaAlignment
    , caaExpandedDimension
    , caaAdditionalSizes
    , caaZipFilename
    , caaMediaDuration
    , caaActionScript3
    , caaDisplayType
    , caaChildAssetType
    , caaCollapsedSize
    , caaAudioSampleRate
    , caaId
    , caaBitRate
    , caaPoliteLoad
    , caaCustomStartTimeValue
    , caaStartTimeType
    , caaAudioBitRate
    , caaDuration
    , caaOrientation
    , caaArtworkType
    , caaHideFlashObjects
    , caaDetectedFeatures
    , caaBackupImageExit
    , caaPosition
    , caaHorizontallyLocked

    -- ** AdCompatibility
    , AdCompatibility (..)

    -- ** CreativeFieldValuesListSortField
    , CreativeFieldValuesListSortField (..)

    -- ** LanguageTargeting
    , LanguageTargeting
    , languageTargeting
    , ltLanguages

    -- ** CreativeAssetSelection
    , CreativeAssetSelection
    , creativeAssetSelection
    , casRules
    , casDefaultAssetId

    -- ** PlacementsListResponse
    , PlacementsListResponse
    , placementsListResponse
    , plaNextPageToken
    , plaKind
    , plaPlacements

    -- ** FloodlightActivityGroupsListSortField
    , FloodlightActivityGroupsListSortField (..)

    -- ** OrdersListSortOrder
    , OrdersListSortOrder (..)

    -- ** ReportSchedule
    , ReportSchedule
    , reportSchedule
    , rsEvery
    , rsActive
    , rsRepeats
    , rsStartDate
    , rsExpirationDate
    , rsRunsOnDayOfMonth
    , rsRepeatsOnWeekDays

    -- ** ReportPathToConversionCriteria
    , ReportPathToConversionCriteria
    , reportPathToConversionCriteria
    , rptccReportProperties
    , rptccMetricNames
    , rptccCustomRichMediaEvents
    , rptccDateRange
    , rptccConversionDimensions
    , rptccCustomFloodlightVariables
    , rptccFloodlightConfigId
    , rptccActivityFilters
    , rptccPerInteractionDimensions

    -- ** MetrosListResponse
    , MetrosListResponse
    , metrosListResponse
    , mlrKind
    , mlrMetros

    -- ** AccountAccountProFile
    , AccountAccountProFile (..)

    -- ** ConversionsBatchInsertResponse
    , ConversionsBatchInsertResponse
    , conversionsBatchInsertResponse
    , cbirbStatus
    , cbirbKind
    , cbirbHasFailures

    -- ** OrderDocumentsListResponse
    , OrderDocumentsListResponse
    , orderDocumentsListResponse
    , odlrNextPageToken
    , odlrKind
    , odlrOrderDocuments

    -- ** Recipient
    , Recipient
    , recipient
    , recEmail
    , recKind
    , recDeliveryType

    -- ** CreativeType
    , CreativeType (..)

    -- ** FilesListSortOrder
    , FilesListSortOrder (..)

    -- ** AdvertiserGroupsListSortField
    , AdvertiserGroupsListSortField (..)

    -- ** TargetWindowTargetWindowOption
    , TargetWindowTargetWindowOption (..)

    -- ** PlacementsListPricingTypes
    , PlacementsListPricingTypes (..)

    -- ** EventTagsListSortOrder
    , EventTagsListSortOrder (..)

    -- ** EncryptionInfoEncryptionSource
    , EncryptionInfoEncryptionSource (..)

    -- ** DirectorySitesListSortField
    , DirectorySitesListSortField (..)

    -- ** Site
    , Site
    , site
    , sitiVideoSettings
    , sitiKind
    , sitiKeyName
    , sitiSiteContacts
    , sitiSiteSettings
    , sitiIdDimensionValue
    , sitiDirectorySiteIdDimensionValue
    , sitiAccountId
    , sitiName
    , sitiDirectorySiteId
    , sitiId
    , sitiSubAccountId
    , sitiApproved

    -- ** ReportCrossDimensionReachCriteriaDimension
    , ReportCrossDimensionReachCriteriaDimension (..)

    -- ** SitesListSortOrder
    , SitesListSortOrder (..)

    -- ** UserDefinedVariableConfiguration
    , UserDefinedVariableConfiguration
    , userDefinedVariableConfiguration
    , udvcReportName
    , udvcDataType
    , udvcVariableType

    -- ** ReportCrossDimensionReachCriteria
    , ReportCrossDimensionReachCriteria
    , reportCrossDimensionReachCriteria
    , rcdrcPivoted
    , rcdrcBreakdown
    , rcdrcDimension
    , rcdrcMetricNames
    , rcdrcDimensionFilters
    , rcdrcDateRange
    , rcdrcOverlapMetricNames

    -- ** FileURLs
    , FileURLs
    , fileURLs
    , fuBrowserURL
    , fuAPIURL

    -- ** CampaignCreativeAssociationsListResponse
    , CampaignCreativeAssociationsListResponse
    , campaignCreativeAssociationsListResponse
    , ccalrCampaignCreativeAssociations
    , ccalrNextPageToken
    , ccalrKind

    -- ** PlacementTagFormatsItem
    , PlacementTagFormatsItem (..)

    -- ** Order
    , Order
    , order
    , oSellerOrderId
    , oSellerOrganizationName
    , oKind
    , oAdvertiserId
    , oPlanningTermId
    , oAccountId
    , oName
    , oSiteNames
    , oLastModifiedInfo
    , oBuyerOrganizationName
    , oId
    , oBuyerInvoiceId
    , oComments
    , oProjectId
    , oSubAccountId
    , oNotes
    , oContacts
    , oSiteId
    , oTermsAndConditions
    , oApproverUserProFileIds

    -- ** CreativeAssetId
    , CreativeAssetId
    , creativeAssetId
    , caiName
    , caiType

    -- ** FrequencyCap
    , FrequencyCap
    , frequencyCap
    , fcImpressions
    , fcDuration

    -- ** File
    , File
    , file
    , filStatus
    , filEtag
    , filKind
    , filURLs
    , filReportId
    , filDateRange
    , filFormat
    , filLastModifiedTime
    , filId
    , filFileName

    -- ** DynamicTargetingKeyObjectType
    , DynamicTargetingKeyObjectType (..)

    -- ** ReportType
    , ReportType (..)

    -- ** CreativeAssetMetadataWarnedValidationRulesItem
    , CreativeAssetMetadataWarnedValidationRulesItem (..)

    -- ** CreativeGroupsListResponse
    , CreativeGroupsListResponse
    , creativeGroupsListResponse
    , cglrCreativeGroups
    , cglrNextPageToken
    , cglrKind

    -- ** AdSlotPaymentSourceType
    , AdSlotPaymentSourceType (..)

    -- ** MobileCarriersListResponse
    , MobileCarriersListResponse
    , mobileCarriersListResponse
    , mclrMobileCarriers
    , mclrKind

    -- ** AccountPermissionAccountProFilesItem
    , AccountPermissionAccountProFilesItem (..)

    -- ** CreativeAssetMetadata
    , CreativeAssetMetadata
    , creativeAssetMetadata
    , camaKind
    , camaAssetIdentifier
    , camaIdDimensionValue
    , camaClickTags
    , camaWarnedValidationRules
    , camaId
    , camaDetectedFeatures

    -- ** OmnitureSettings
    , OmnitureSettings
    , omnitureSettings
    , osOmnitureCostDataEnabled
    , osOmnitureIntegrationEnabled

    -- ** ConnectionType
    , ConnectionType
    , connectionType
    , cttKind
    , cttName
    , cttId

    -- ** CreativeCustomEventAdvertiserCustomEventType
    , CreativeCustomEventAdvertiserCustomEventType (..)

    -- ** PlacementGroup
    , PlacementGroup
    , placementGroup
    , plalPlacementStrategyId
    , plalSiteIdDimensionValue
    , plalPricingSchedule
    , plalKind
    , plalCampaignIdDimensionValue
    , plalAdvertiserId
    , plalAdvertiserIdDimensionValue
    , plalCampaignId
    , plalIdDimensionValue
    , plalPlacementGroupType
    , plalContentCategoryId
    , plalDirectorySiteIdDimensionValue
    , plalAccountId
    , plalName
    , plalDirectorySiteId
    , plalCreateInfo
    , plalChildPlacementIds
    , plalLastModifiedInfo
    , plalId
    , plalPrimaryPlacementId
    , plalSubAccountId
    , plalExternalId
    , plalComment
    , plalPrimaryPlacementIdDimensionValue
    , plalSiteId
    , plalArchived

    -- ** EventTag
    , EventTag
    , eventTag
    , etStatus
    , etExcludeFromAdxRequests
    , etEnabledByDefault
    , etKind
    , etCampaignIdDimensionValue
    , etAdvertiserId
    , etURL
    , etAdvertiserIdDimensionValue
    , etSSLCompliant
    , etCampaignId
    , etAccountId
    , etName
    , etURLEscapeLevels
    , etSiteIds
    , etId
    , etSubAccountId
    , etType
    , etSiteFilterType

    -- ** UserRolePermission
    , UserRolePermission
    , userRolePermission
    , useKind
    , useAvailability
    , useName
    , useId
    , usePermissionGroupId

    -- ** ChangeLogsListObjectType
    , ChangeLogsListObjectType (..)

    -- ** OrderContact
    , OrderContact
    , orderContact
    , ocSignatureUserProFileId
    , ocContactName
    , ocContactTitle
    , ocContactType
    , ocContactInfo

    -- ** TranscodeSetting
    , TranscodeSetting
    , transcodeSetting
    , tsKind
    , tsEnabledVideoFormats

    -- ** FloodlightActivitiesGenerateTagResponse
    , FloodlightActivitiesGenerateTagResponse
    , floodlightActivitiesGenerateTagResponse
    , fagtrGlobalSiteTagGlobalSnippet
    , fagtrFloodlightActivityTag
    , fagtrKind

    -- ** AdSlot
    , AdSlot
    , adSlot
    , assHeight
    , assPaymentSourceType
    , assLinkedPlacementId
    , assWidth
    , assPrimary
    , assName
    , assComment
    , assCompatibility

    -- ** ThirdPartyTrackingURL
    , ThirdPartyTrackingURL
    , thirdPartyTrackingURL
    , tptuURL
    , tptuThirdPartyURLType

    -- ** SiteVideoSettingsOrientation
    , SiteVideoSettingsOrientation (..)

    -- ** PricingCapCostType
    , PricingCapCostType (..)

    -- ** OrderDocument
    , OrderDocument
    , orderDocument
    , odSigned
    , odKind
    , odAdvertiserId
    , odLastSentTime
    , odAmendedOrderDocumentId
    , odLastSentRecipients
    , odEffectiveDate
    , odApprovedByUserProFileIds
    , odAccountId
    , odId
    , odProjectId
    , odTitle
    , odSubAccountId
    , odType
    , odOrderId
    , odCancelled
    , odCreatedInfo

    -- ** Metro
    , Metro
    , metro
    , metMetroCode
    , metKind
    , metName
    , metCountryCode
    , metDmaId
    , metCountryDartId
    , metDartId

    -- ** MobileApp
    , MobileApp
    , mobileApp
    , maKind
    , maId
    , maTitle
    , maPublisherName
    , maDirectory

    -- ** CreativeAssetDisplayType
    , CreativeAssetDisplayType (..)

    -- ** Placement
    , Placement
    , placement
    , p1Status
    , p1VideoSettings
    , p1PlacementStrategyId
    , p1TagFormats
    , p1SiteIdDimensionValue
    , p1PricingSchedule
    , p1Size
    , p1Kind
    , p1KeyName
    , p1CampaignIdDimensionValue
    , p1AdvertiserId
    , p1AdvertiserIdDimensionValue
    , p1CampaignId
    , p1IdDimensionValue
    , p1VpaidAdapterChoice
    , p1AdBlockingOptOut
    , p1Primary
    , p1LookbackConfiguration
    , p1TagSetting
    , p1ContentCategoryId
    , p1DirectorySiteIdDimensionValue
    , p1AccountId
    , p1PaymentSource
    , p1Name
    , p1AdditionalSizes
    , p1DirectorySiteId
    , p1CreateInfo
    , p1VideoActiveViewOptOut
    , p1LastModifiedInfo
    , p1Id
    , p1SSLRequired
    , p1SubAccountId
    , p1PlacementGroupIdDimensionValue
    , p1ExternalId
    , p1PlacementGroupId
    , p1Comment
    , p1SiteId
    , p1Compatibility
    , p1Archived
    , p1PaymentApproved
    , p1PublisherUpdateInfo

    -- ** FloodlightActivityCountingMethod
    , FloodlightActivityCountingMethod (..)

    -- ** EncryptionInfo
    , EncryptionInfo
    , encryptionInfo
    , eiEncryptionSource
    , eiKind
    , eiEncryptionEntityType
    , eiEncryptionEntityId

    -- ** SitesListResponse
    , SitesListResponse
    , sitesListResponse
    , sitNextPageToken
    , sitKind
    , sitSites

    -- ** ContentCategoriesListSortOrder
    , ContentCategoriesListSortOrder (..)

    -- ** TargetingTemplate
    , TargetingTemplate
    , targetingTemplate
    , ttGeoTargeting
    , ttTechnologyTargeting
    , ttDayPartTargeting
    , ttKind
    , ttAdvertiserId
    , ttAdvertiserIdDimensionValue
    , ttAccountId
    , ttName
    , ttKeyValueTargetingExpression
    , ttId
    , ttSubAccountId
    , ttLanguageTargeting
    , ttListTargetingExpression

    -- ** CreativeField
    , CreativeField
    , creativeField
    , cffKind
    , cffAdvertiserId
    , cffAdvertiserIdDimensionValue
    , cffAccountId
    , cffName
    , cffId
    , cffSubAccountId

    -- ** AdvertiserStatus
    , AdvertiserStatus (..)

    -- ** DefaultClickThroughEventTagProperties
    , DefaultClickThroughEventTagProperties
    , defaultClickThroughEventTagProperties
    , dctetpOverrideInheritedEventTag
    , dctetpDefaultClickThroughEventTagId

    -- ** ListTargetingExpression
    , ListTargetingExpression
    , listTargetingExpression
    , lteExpression
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude
import           Network.Google.Resource.DFAReporting.AccountActiveAdSummaries.Get
import           Network.Google.Resource.DFAReporting.AccountPermissionGroups.Get
import           Network.Google.Resource.DFAReporting.AccountPermissionGroups.List
import           Network.Google.Resource.DFAReporting.AccountPermissions.Get
import           Network.Google.Resource.DFAReporting.AccountPermissions.List
import           Network.Google.Resource.DFAReporting.Accounts.Get
import           Network.Google.Resource.DFAReporting.Accounts.List
import           Network.Google.Resource.DFAReporting.Accounts.Patch
import           Network.Google.Resource.DFAReporting.Accounts.Update
import           Network.Google.Resource.DFAReporting.AccountUserProFiles.Get
import           Network.Google.Resource.DFAReporting.AccountUserProFiles.Insert
import           Network.Google.Resource.DFAReporting.AccountUserProFiles.List
import           Network.Google.Resource.DFAReporting.AccountUserProFiles.Patch
import           Network.Google.Resource.DFAReporting.AccountUserProFiles.Update
import           Network.Google.Resource.DFAReporting.Ads.Get
import           Network.Google.Resource.DFAReporting.Ads.Insert
import           Network.Google.Resource.DFAReporting.Ads.List
import           Network.Google.Resource.DFAReporting.Ads.Patch
import           Network.Google.Resource.DFAReporting.Ads.Update
import           Network.Google.Resource.DFAReporting.AdvertiserGroups.Delete
import           Network.Google.Resource.DFAReporting.AdvertiserGroups.Get
import           Network.Google.Resource.DFAReporting.AdvertiserGroups.Insert
import           Network.Google.Resource.DFAReporting.AdvertiserGroups.List
import           Network.Google.Resource.DFAReporting.AdvertiserGroups.Patch
import           Network.Google.Resource.DFAReporting.AdvertiserGroups.Update
import           Network.Google.Resource.DFAReporting.AdvertiserLandingPages.Get
import           Network.Google.Resource.DFAReporting.AdvertiserLandingPages.Insert
import           Network.Google.Resource.DFAReporting.AdvertiserLandingPages.List
import           Network.Google.Resource.DFAReporting.AdvertiserLandingPages.Patch
import           Network.Google.Resource.DFAReporting.AdvertiserLandingPages.Update
import           Network.Google.Resource.DFAReporting.Advertisers.Get
import           Network.Google.Resource.DFAReporting.Advertisers.Insert
import           Network.Google.Resource.DFAReporting.Advertisers.List
import           Network.Google.Resource.DFAReporting.Advertisers.Patch
import           Network.Google.Resource.DFAReporting.Advertisers.Update
import           Network.Google.Resource.DFAReporting.Browsers.List
import           Network.Google.Resource.DFAReporting.CampaignCreativeAssociations.Insert
import           Network.Google.Resource.DFAReporting.CampaignCreativeAssociations.List
import           Network.Google.Resource.DFAReporting.Campaigns.Get
import           Network.Google.Resource.DFAReporting.Campaigns.Insert
import           Network.Google.Resource.DFAReporting.Campaigns.List
import           Network.Google.Resource.DFAReporting.Campaigns.Patch
import           Network.Google.Resource.DFAReporting.Campaigns.Update
import           Network.Google.Resource.DFAReporting.ChangeLogs.Get
import           Network.Google.Resource.DFAReporting.ChangeLogs.List
import           Network.Google.Resource.DFAReporting.Cities.List
import           Network.Google.Resource.DFAReporting.ConnectionTypes.Get
import           Network.Google.Resource.DFAReporting.ConnectionTypes.List
import           Network.Google.Resource.DFAReporting.ContentCategories.Delete
import           Network.Google.Resource.DFAReporting.ContentCategories.Get
import           Network.Google.Resource.DFAReporting.ContentCategories.Insert
import           Network.Google.Resource.DFAReporting.ContentCategories.List
import           Network.Google.Resource.DFAReporting.ContentCategories.Patch
import           Network.Google.Resource.DFAReporting.ContentCategories.Update
import           Network.Google.Resource.DFAReporting.Conversions.Batchinsert
import           Network.Google.Resource.DFAReporting.Conversions.Batchupdate
import           Network.Google.Resource.DFAReporting.Countries.Get
import           Network.Google.Resource.DFAReporting.Countries.List
import           Network.Google.Resource.DFAReporting.CreativeAssets.Insert
import           Network.Google.Resource.DFAReporting.CreativeFields.Delete
import           Network.Google.Resource.DFAReporting.CreativeFields.Get
import           Network.Google.Resource.DFAReporting.CreativeFields.Insert
import           Network.Google.Resource.DFAReporting.CreativeFields.List
import           Network.Google.Resource.DFAReporting.CreativeFields.Patch
import           Network.Google.Resource.DFAReporting.CreativeFields.Update
import           Network.Google.Resource.DFAReporting.CreativeFieldValues.Delete
import           Network.Google.Resource.DFAReporting.CreativeFieldValues.Get
import           Network.Google.Resource.DFAReporting.CreativeFieldValues.Insert
import           Network.Google.Resource.DFAReporting.CreativeFieldValues.List
import           Network.Google.Resource.DFAReporting.CreativeFieldValues.Patch
import           Network.Google.Resource.DFAReporting.CreativeFieldValues.Update
import           Network.Google.Resource.DFAReporting.CreativeGroups.Get
import           Network.Google.Resource.DFAReporting.CreativeGroups.Insert
import           Network.Google.Resource.DFAReporting.CreativeGroups.List
import           Network.Google.Resource.DFAReporting.CreativeGroups.Patch
import           Network.Google.Resource.DFAReporting.CreativeGroups.Update
import           Network.Google.Resource.DFAReporting.Creatives.Get
import           Network.Google.Resource.DFAReporting.Creatives.Insert
import           Network.Google.Resource.DFAReporting.Creatives.List
import           Network.Google.Resource.DFAReporting.Creatives.Patch
import           Network.Google.Resource.DFAReporting.Creatives.Update
import           Network.Google.Resource.DFAReporting.DimensionValues.Query
import           Network.Google.Resource.DFAReporting.DirectorySites.Get
import           Network.Google.Resource.DFAReporting.DirectorySites.Insert
import           Network.Google.Resource.DFAReporting.DirectorySites.List
import           Network.Google.Resource.DFAReporting.DynamicTargetingKeys.Delete
import           Network.Google.Resource.DFAReporting.DynamicTargetingKeys.Insert
import           Network.Google.Resource.DFAReporting.DynamicTargetingKeys.List
import           Network.Google.Resource.DFAReporting.EventTags.Delete
import           Network.Google.Resource.DFAReporting.EventTags.Get
import           Network.Google.Resource.DFAReporting.EventTags.Insert
import           Network.Google.Resource.DFAReporting.EventTags.List
import           Network.Google.Resource.DFAReporting.EventTags.Patch
import           Network.Google.Resource.DFAReporting.EventTags.Update
import           Network.Google.Resource.DFAReporting.Files.Get
import           Network.Google.Resource.DFAReporting.Files.List
import           Network.Google.Resource.DFAReporting.FloodlightActivities.Delete
import           Network.Google.Resource.DFAReporting.FloodlightActivities.Generatetag
import           Network.Google.Resource.DFAReporting.FloodlightActivities.Get
import           Network.Google.Resource.DFAReporting.FloodlightActivities.Insert
import           Network.Google.Resource.DFAReporting.FloodlightActivities.List
import           Network.Google.Resource.DFAReporting.FloodlightActivities.Patch
import           Network.Google.Resource.DFAReporting.FloodlightActivities.Update
import           Network.Google.Resource.DFAReporting.FloodlightActivityGroups.Get
import           Network.Google.Resource.DFAReporting.FloodlightActivityGroups.Insert
import           Network.Google.Resource.DFAReporting.FloodlightActivityGroups.List
import           Network.Google.Resource.DFAReporting.FloodlightActivityGroups.Patch
import           Network.Google.Resource.DFAReporting.FloodlightActivityGroups.Update
import           Network.Google.Resource.DFAReporting.FloodlightConfigurations.Get
import           Network.Google.Resource.DFAReporting.FloodlightConfigurations.List
import           Network.Google.Resource.DFAReporting.FloodlightConfigurations.Patch
import           Network.Google.Resource.DFAReporting.FloodlightConfigurations.Update
import           Network.Google.Resource.DFAReporting.InventoryItems.Get
import           Network.Google.Resource.DFAReporting.InventoryItems.List
import           Network.Google.Resource.DFAReporting.Languages.List
import           Network.Google.Resource.DFAReporting.Metros.List
import           Network.Google.Resource.DFAReporting.MobileApps.Get
import           Network.Google.Resource.DFAReporting.MobileApps.List
import           Network.Google.Resource.DFAReporting.MobileCarriers.Get
import           Network.Google.Resource.DFAReporting.MobileCarriers.List
import           Network.Google.Resource.DFAReporting.OperatingSystems.Get
import           Network.Google.Resource.DFAReporting.OperatingSystems.List
import           Network.Google.Resource.DFAReporting.OperatingSystemVersions.Get
import           Network.Google.Resource.DFAReporting.OperatingSystemVersions.List
import           Network.Google.Resource.DFAReporting.OrderDocuments.Get
import           Network.Google.Resource.DFAReporting.OrderDocuments.List
import           Network.Google.Resource.DFAReporting.Orders.Get
import           Network.Google.Resource.DFAReporting.Orders.List
import           Network.Google.Resource.DFAReporting.PlacementGroups.Get
import           Network.Google.Resource.DFAReporting.PlacementGroups.Insert
import           Network.Google.Resource.DFAReporting.PlacementGroups.List
import           Network.Google.Resource.DFAReporting.PlacementGroups.Patch
import           Network.Google.Resource.DFAReporting.PlacementGroups.Update
import           Network.Google.Resource.DFAReporting.Placements.Generatetags
import           Network.Google.Resource.DFAReporting.Placements.Get
import           Network.Google.Resource.DFAReporting.Placements.Insert
import           Network.Google.Resource.DFAReporting.Placements.List
import           Network.Google.Resource.DFAReporting.Placements.Patch
import           Network.Google.Resource.DFAReporting.Placements.Update
import           Network.Google.Resource.DFAReporting.PlacementStrategies.Delete
import           Network.Google.Resource.DFAReporting.PlacementStrategies.Get
import           Network.Google.Resource.DFAReporting.PlacementStrategies.Insert
import           Network.Google.Resource.DFAReporting.PlacementStrategies.List
import           Network.Google.Resource.DFAReporting.PlacementStrategies.Patch
import           Network.Google.Resource.DFAReporting.PlacementStrategies.Update
import           Network.Google.Resource.DFAReporting.PlatformTypes.Get
import           Network.Google.Resource.DFAReporting.PlatformTypes.List
import           Network.Google.Resource.DFAReporting.PostalCodes.Get
import           Network.Google.Resource.DFAReporting.PostalCodes.List
import           Network.Google.Resource.DFAReporting.Projects.Get
import           Network.Google.Resource.DFAReporting.Projects.List
import           Network.Google.Resource.DFAReporting.Regions.List
import           Network.Google.Resource.DFAReporting.RemarketingLists.Get
import           Network.Google.Resource.DFAReporting.RemarketingLists.Insert
import           Network.Google.Resource.DFAReporting.RemarketingLists.List
import           Network.Google.Resource.DFAReporting.RemarketingLists.Patch
import           Network.Google.Resource.DFAReporting.RemarketingLists.Update
import           Network.Google.Resource.DFAReporting.RemarketingListShares.Get
import           Network.Google.Resource.DFAReporting.RemarketingListShares.Patch
import           Network.Google.Resource.DFAReporting.RemarketingListShares.Update
import           Network.Google.Resource.DFAReporting.Reports.CompatibleFields.Query
import           Network.Google.Resource.DFAReporting.Reports.Delete
import           Network.Google.Resource.DFAReporting.Reports.Files.Get
import           Network.Google.Resource.DFAReporting.Reports.Files.List
import           Network.Google.Resource.DFAReporting.Reports.Get
import           Network.Google.Resource.DFAReporting.Reports.Insert
import           Network.Google.Resource.DFAReporting.Reports.List
import           Network.Google.Resource.DFAReporting.Reports.Patch
import           Network.Google.Resource.DFAReporting.Reports.Run
import           Network.Google.Resource.DFAReporting.Reports.Update
import           Network.Google.Resource.DFAReporting.Sites.Get
import           Network.Google.Resource.DFAReporting.Sites.Insert
import           Network.Google.Resource.DFAReporting.Sites.List
import           Network.Google.Resource.DFAReporting.Sites.Patch
import           Network.Google.Resource.DFAReporting.Sites.Update
import           Network.Google.Resource.DFAReporting.Sizes.Get
import           Network.Google.Resource.DFAReporting.Sizes.Insert
import           Network.Google.Resource.DFAReporting.Sizes.List
import           Network.Google.Resource.DFAReporting.SubAccounts.Get
import           Network.Google.Resource.DFAReporting.SubAccounts.Insert
import           Network.Google.Resource.DFAReporting.SubAccounts.List
import           Network.Google.Resource.DFAReporting.SubAccounts.Patch
import           Network.Google.Resource.DFAReporting.SubAccounts.Update
import           Network.Google.Resource.DFAReporting.TargetableRemarketingLists.Get
import           Network.Google.Resource.DFAReporting.TargetableRemarketingLists.List
import           Network.Google.Resource.DFAReporting.TargetingTemplates.Get
import           Network.Google.Resource.DFAReporting.TargetingTemplates.Insert
import           Network.Google.Resource.DFAReporting.TargetingTemplates.List
import           Network.Google.Resource.DFAReporting.TargetingTemplates.Patch
import           Network.Google.Resource.DFAReporting.TargetingTemplates.Update
import           Network.Google.Resource.DFAReporting.UserProFiles.Get
import           Network.Google.Resource.DFAReporting.UserProFiles.List
import           Network.Google.Resource.DFAReporting.UserRolePermissionGroups.Get
import           Network.Google.Resource.DFAReporting.UserRolePermissionGroups.List
import           Network.Google.Resource.DFAReporting.UserRolePermissions.Get
import           Network.Google.Resource.DFAReporting.UserRolePermissions.List
import           Network.Google.Resource.DFAReporting.UserRoles.Delete
import           Network.Google.Resource.DFAReporting.UserRoles.Get
import           Network.Google.Resource.DFAReporting.UserRoles.Insert
import           Network.Google.Resource.DFAReporting.UserRoles.List
import           Network.Google.Resource.DFAReporting.UserRoles.Patch
import           Network.Google.Resource.DFAReporting.UserRoles.Update
import           Network.Google.Resource.DFAReporting.VideoFormats.Get
import           Network.Google.Resource.DFAReporting.VideoFormats.List

{- $resources
TODO
-}

-- | Represents the entirety of the methods and resources available for the DCM/DFA Reporting And Trafficking API service.
type DFAReportingAPI =
     InventoryItemsListResource :<|>
       InventoryItemsGetResource
       :<|> PlacementStrategiesInsertResource
       :<|> PlacementStrategiesListResource
       :<|> PlacementStrategiesPatchResource
       :<|> PlacementStrategiesGetResource
       :<|> PlacementStrategiesDeleteResource
       :<|> PlacementStrategiesUpdateResource
       :<|> CampaignCreativeAssociationsInsertResource
       :<|> CampaignCreativeAssociationsListResource
       :<|> RemarketingListSharesPatchResource
       :<|> RemarketingListSharesGetResource
       :<|> RemarketingListSharesUpdateResource
       :<|> MobileCarriersListResource
       :<|> MobileCarriersGetResource
       :<|> CreativeGroupsInsertResource
       :<|> CreativeGroupsListResource
       :<|> CreativeGroupsPatchResource
       :<|> CreativeGroupsGetResource
       :<|> CreativeGroupsUpdateResource
       :<|> RemarketingListsInsertResource
       :<|> RemarketingListsListResource
       :<|> RemarketingListsPatchResource
       :<|> RemarketingListsGetResource
       :<|> RemarketingListsUpdateResource
       :<|> AccountActiveAdSummariesGetResource
       :<|> UserRolePermissionGroupsListResource
       :<|> UserRolePermissionGroupsGetResource
       :<|> AccountsListResource
       :<|> AccountsPatchResource
       :<|> AccountsGetResource
       :<|> AccountsUpdateResource
       :<|> ReportsCompatibleFieldsQueryResource
       :<|> ReportsFilesListResource
       :<|> ReportsFilesGetResource
       :<|> ReportsInsertResource
       :<|> ReportsListResource
       :<|> ReportsPatchResource
       :<|> ReportsGetResource
       :<|> ReportsRunResource
       :<|> ReportsDeleteResource
       :<|> ReportsUpdateResource
       :<|> CampaignsInsertResource
       :<|> CampaignsListResource
       :<|> CampaignsPatchResource
       :<|> CampaignsGetResource
       :<|> CampaignsUpdateResource
       :<|> DynamicTargetingKeysInsertResource
       :<|> DynamicTargetingKeysListResource
       :<|> DynamicTargetingKeysDeleteResource
       :<|> AccountUserProFilesInsertResource
       :<|> AccountUserProFilesListResource
       :<|> AccountUserProFilesPatchResource
       :<|> AccountUserProFilesGetResource
       :<|> AccountUserProFilesUpdateResource
       :<|> CreativesInsertResource
       :<|> CreativesListResource
       :<|> CreativesPatchResource
       :<|> CreativesGetResource
       :<|> CreativesUpdateResource
       :<|> DimensionValuesQueryResource
       :<|> RegionsListResource
       :<|> FloodlightConfigurationsListResource
       :<|> FloodlightConfigurationsPatchResource
       :<|> FloodlightConfigurationsGetResource
       :<|> FloodlightConfigurationsUpdateResource
       :<|> ConversionsBatchinsertResource
       :<|> ConversionsBatchupdateResource
       :<|> FloodlightActivitiesInsertResource
       :<|> FloodlightActivitiesListResource
       :<|> FloodlightActivitiesPatchResource
       :<|> FloodlightActivitiesGetResource
       :<|> FloodlightActivitiesGeneratetagResource
       :<|> FloodlightActivitiesDeleteResource
       :<|> FloodlightActivitiesUpdateResource
       :<|> UserRolesInsertResource
       :<|> UserRolesListResource
       :<|> UserRolesPatchResource
       :<|> UserRolesGetResource
       :<|> UserRolesDeleteResource
       :<|> UserRolesUpdateResource
       :<|> AccountPermissionGroupsListResource
       :<|> AccountPermissionGroupsGetResource
       :<|> AdvertisersInsertResource
       :<|> AdvertisersListResource
       :<|> AdvertisersPatchResource
       :<|> AdvertisersGetResource
       :<|> AdvertisersUpdateResource
       :<|> CountriesListResource
       :<|> CountriesGetResource
       :<|> AccountPermissionsListResource
       :<|> AccountPermissionsGetResource
       :<|> UserProFilesListResource
       :<|> UserProFilesGetResource
       :<|> OperatingSystemVersionsListResource
       :<|> OperatingSystemVersionsGetResource
       :<|> ChangeLogsListResource
       :<|> ChangeLogsGetResource
       :<|> CitiesListResource
       :<|> LanguagesListResource
       :<|> TargetableRemarketingListsListResource
       :<|> TargetableRemarketingListsGetResource
       :<|> PlatformTypesListResource
       :<|> PlatformTypesGetResource
       :<|> BrowsersListResource
       :<|> ContentCategoriesInsertResource
       :<|> ContentCategoriesListResource
       :<|> ContentCategoriesPatchResource
       :<|> ContentCategoriesGetResource
       :<|> ContentCategoriesDeleteResource
       :<|> ContentCategoriesUpdateResource
       :<|> PlacementsInsertResource
       :<|> PlacementsGeneratetagsResource
       :<|> PlacementsListResource
       :<|> PlacementsPatchResource
       :<|> PlacementsGetResource
       :<|> PlacementsUpdateResource
       :<|> MetrosListResource
       :<|> OrderDocumentsListResource
       :<|> OrderDocumentsGetResource
       :<|> AdvertiserLandingPagesInsertResource
       :<|> AdvertiserLandingPagesListResource
       :<|> AdvertiserLandingPagesPatchResource
       :<|> AdvertiserLandingPagesGetResource
       :<|> AdvertiserLandingPagesUpdateResource
       :<|> MobileAppsListResource
       :<|> MobileAppsGetResource
       :<|> CreativeFieldsInsertResource
       :<|> CreativeFieldsListResource
       :<|> CreativeFieldsPatchResource
       :<|> CreativeFieldsGetResource
       :<|> CreativeFieldsDeleteResource
       :<|> CreativeFieldsUpdateResource
       :<|> TargetingTemplatesInsertResource
       :<|> TargetingTemplatesListResource
       :<|> TargetingTemplatesPatchResource
       :<|> TargetingTemplatesGetResource
       :<|> TargetingTemplatesUpdateResource
       :<|> EventTagsInsertResource
       :<|> EventTagsListResource
       :<|> EventTagsPatchResource
       :<|> EventTagsGetResource
       :<|> EventTagsDeleteResource
       :<|> EventTagsUpdateResource
       :<|> FilesListResource
       :<|> FilesGetResource
       :<|> UserRolePermissionsListResource
       :<|> UserRolePermissionsGetResource
       :<|> PlacementGroupsInsertResource
       :<|> PlacementGroupsListResource
       :<|> PlacementGroupsPatchResource
       :<|> PlacementGroupsGetResource
       :<|> PlacementGroupsUpdateResource
       :<|> OrdersListResource
       :<|> OrdersGetResource
       :<|> ConnectionTypesListResource
       :<|> ConnectionTypesGetResource
       :<|> CreativeAssetsInsertResource
       :<|> SitesInsertResource
       :<|> SitesListResource
       :<|> SitesPatchResource
       :<|> SitesGetResource
       :<|> SitesUpdateResource
       :<|> PostalCodesListResource
       :<|> PostalCodesGetResource
       :<|> OperatingSystemsListResource
       :<|> OperatingSystemsGetResource
       :<|> SizesInsertResource
       :<|> SizesListResource
       :<|> SizesGetResource
       :<|> AdsInsertResource
       :<|> AdsListResource
       :<|> AdsPatchResource
       :<|> AdsGetResource
       :<|> AdsUpdateResource
       :<|> ProjectsListResource
       :<|> ProjectsGetResource
       :<|> SubAccountsInsertResource
       :<|> SubAccountsListResource
       :<|> SubAccountsPatchResource
       :<|> SubAccountsGetResource
       :<|> SubAccountsUpdateResource
       :<|> VideoFormatsListResource
       :<|> VideoFormatsGetResource
       :<|> CreativeFieldValuesInsertResource
       :<|> CreativeFieldValuesListResource
       :<|> CreativeFieldValuesPatchResource
       :<|> CreativeFieldValuesGetResource
       :<|> CreativeFieldValuesDeleteResource
       :<|> CreativeFieldValuesUpdateResource
       :<|> DirectorySitesInsertResource
       :<|> DirectorySitesListResource
       :<|> DirectorySitesGetResource
       :<|> AdvertiserGroupsInsertResource
       :<|> AdvertiserGroupsListResource
       :<|> AdvertiserGroupsPatchResource
       :<|> AdvertiserGroupsGetResource
       :<|> AdvertiserGroupsDeleteResource
       :<|> AdvertiserGroupsUpdateResource
       :<|> FloodlightActivityGroupsInsertResource
       :<|> FloodlightActivityGroupsListResource
       :<|> FloodlightActivityGroupsPatchResource
       :<|> FloodlightActivityGroupsGetResource
       :<|> FloodlightActivityGroupsUpdateResource
