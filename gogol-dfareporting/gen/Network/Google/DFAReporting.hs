{-# LANGUAGE DataKinds     #-}
{-# LANGUAGE TypeOperators #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.DFAReporting
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- -- | Manage your DoubleClick Campaign Manager ad campaigns and reports.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference>
module Network.Google.DFAReporting
    (
    -- * REST Resources

    -- ** DCM/DFA Reporting And Trafficking API
      DFAReporting
    , dFAReporting
    , dFAReportingURL

    -- ** dfareporting.accountActiveAdSummaries.get
    , module Network.Google.API.DFAReporting.AccountActiveAdSummaries.Get

    -- ** dfareporting.accountPermissionGroups.get
    , module Network.Google.API.DFAReporting.AccountPermissionGroups.Get

    -- ** dfareporting.accountPermissionGroups.list
    , module Network.Google.API.DFAReporting.AccountPermissionGroups.List

    -- ** dfareporting.accountPermissions.get
    , module Network.Google.API.DFAReporting.AccountPermissions.Get

    -- ** dfareporting.accountPermissions.list
    , module Network.Google.API.DFAReporting.AccountPermissions.List

    -- ** dfareporting.accountUserProfiles.get
    , module Network.Google.API.DFAReporting.AccountUserProfiles.Get

    -- ** dfareporting.accountUserProfiles.insert
    , module Network.Google.API.DFAReporting.AccountUserProfiles.Insert

    -- ** dfareporting.accountUserProfiles.list
    , module Network.Google.API.DFAReporting.AccountUserProfiles.List

    -- ** dfareporting.accountUserProfiles.patch
    , module Network.Google.API.DFAReporting.AccountUserProfiles.Patch

    -- ** dfareporting.accountUserProfiles.update
    , module Network.Google.API.DFAReporting.AccountUserProfiles.Update

    -- ** dfareporting.accounts.get
    , module Network.Google.API.DFAReporting.Accounts.Get

    -- ** dfareporting.accounts.list
    , module Network.Google.API.DFAReporting.Accounts.List

    -- ** dfareporting.accounts.patch
    , module Network.Google.API.DFAReporting.Accounts.Patch

    -- ** dfareporting.accounts.update
    , module Network.Google.API.DFAReporting.Accounts.Update

    -- ** dfareporting.ads.get
    , module Network.Google.API.DFAReporting.Ads.Get

    -- ** dfareporting.ads.insert
    , module Network.Google.API.DFAReporting.Ads.Insert

    -- ** dfareporting.ads.list
    , module Network.Google.API.DFAReporting.Ads.List

    -- ** dfareporting.ads.patch
    , module Network.Google.API.DFAReporting.Ads.Patch

    -- ** dfareporting.ads.update
    , module Network.Google.API.DFAReporting.Ads.Update

    -- ** dfareporting.advertiserGroups.delete
    , module Network.Google.API.DFAReporting.AdvertiserGroups.Delete

    -- ** dfareporting.advertiserGroups.get
    , module Network.Google.API.DFAReporting.AdvertiserGroups.Get

    -- ** dfareporting.advertiserGroups.insert
    , module Network.Google.API.DFAReporting.AdvertiserGroups.Insert

    -- ** dfareporting.advertiserGroups.list
    , module Network.Google.API.DFAReporting.AdvertiserGroups.List

    -- ** dfareporting.advertiserGroups.patch
    , module Network.Google.API.DFAReporting.AdvertiserGroups.Patch

    -- ** dfareporting.advertiserGroups.update
    , module Network.Google.API.DFAReporting.AdvertiserGroups.Update

    -- ** dfareporting.advertisers.get
    , module Network.Google.API.DFAReporting.Advertisers.Get

    -- ** dfareporting.advertisers.insert
    , module Network.Google.API.DFAReporting.Advertisers.Insert

    -- ** dfareporting.advertisers.list
    , module Network.Google.API.DFAReporting.Advertisers.List

    -- ** dfareporting.advertisers.patch
    , module Network.Google.API.DFAReporting.Advertisers.Patch

    -- ** dfareporting.advertisers.update
    , module Network.Google.API.DFAReporting.Advertisers.Update

    -- ** dfareporting.browsers.list
    , module Network.Google.API.DFAReporting.Browsers.List

    -- ** dfareporting.campaignCreativeAssociations.insert
    , module Network.Google.API.DFAReporting.CampaignCreativeAssociations.Insert

    -- ** dfareporting.campaignCreativeAssociations.list
    , module Network.Google.API.DFAReporting.CampaignCreativeAssociations.List

    -- ** dfareporting.campaigns.get
    , module Network.Google.API.DFAReporting.Campaigns.Get

    -- ** dfareporting.campaigns.insert
    , module Network.Google.API.DFAReporting.Campaigns.Insert

    -- ** dfareporting.campaigns.list
    , module Network.Google.API.DFAReporting.Campaigns.List

    -- ** dfareporting.campaigns.patch
    , module Network.Google.API.DFAReporting.Campaigns.Patch

    -- ** dfareporting.campaigns.update
    , module Network.Google.API.DFAReporting.Campaigns.Update

    -- ** dfareporting.changeLogs.get
    , module Network.Google.API.DFAReporting.ChangeLogs.Get

    -- ** dfareporting.changeLogs.list
    , module Network.Google.API.DFAReporting.ChangeLogs.List

    -- ** dfareporting.cities.list
    , module Network.Google.API.DFAReporting.Cities.List

    -- ** dfareporting.connectionTypes.get
    , module Network.Google.API.DFAReporting.ConnectionTypes.Get

    -- ** dfareporting.connectionTypes.list
    , module Network.Google.API.DFAReporting.ConnectionTypes.List

    -- ** dfareporting.contentCategories.delete
    , module Network.Google.API.DFAReporting.ContentCategories.Delete

    -- ** dfareporting.contentCategories.get
    , module Network.Google.API.DFAReporting.ContentCategories.Get

    -- ** dfareporting.contentCategories.insert
    , module Network.Google.API.DFAReporting.ContentCategories.Insert

    -- ** dfareporting.contentCategories.list
    , module Network.Google.API.DFAReporting.ContentCategories.List

    -- ** dfareporting.contentCategories.patch
    , module Network.Google.API.DFAReporting.ContentCategories.Patch

    -- ** dfareporting.contentCategories.update
    , module Network.Google.API.DFAReporting.ContentCategories.Update

    -- ** dfareporting.countries.get
    , module Network.Google.API.DFAReporting.Countries.Get

    -- ** dfareporting.countries.list
    , module Network.Google.API.DFAReporting.Countries.List

    -- ** dfareporting.creativeAssets.insert
    , module Network.Google.API.DFAReporting.CreativeAssets.Insert

    -- ** dfareporting.creativeFieldValues.delete
    , module Network.Google.API.DFAReporting.CreativeFieldValues.Delete

    -- ** dfareporting.creativeFieldValues.get
    , module Network.Google.API.DFAReporting.CreativeFieldValues.Get

    -- ** dfareporting.creativeFieldValues.insert
    , module Network.Google.API.DFAReporting.CreativeFieldValues.Insert

    -- ** dfareporting.creativeFieldValues.list
    , module Network.Google.API.DFAReporting.CreativeFieldValues.List

    -- ** dfareporting.creativeFieldValues.patch
    , module Network.Google.API.DFAReporting.CreativeFieldValues.Patch

    -- ** dfareporting.creativeFieldValues.update
    , module Network.Google.API.DFAReporting.CreativeFieldValues.Update

    -- ** dfareporting.creativeFields.delete
    , module Network.Google.API.DFAReporting.CreativeFields.Delete

    -- ** dfareporting.creativeFields.get
    , module Network.Google.API.DFAReporting.CreativeFields.Get

    -- ** dfareporting.creativeFields.insert
    , module Network.Google.API.DFAReporting.CreativeFields.Insert

    -- ** dfareporting.creativeFields.list
    , module Network.Google.API.DFAReporting.CreativeFields.List

    -- ** dfareporting.creativeFields.patch
    , module Network.Google.API.DFAReporting.CreativeFields.Patch

    -- ** dfareporting.creativeFields.update
    , module Network.Google.API.DFAReporting.CreativeFields.Update

    -- ** dfareporting.creativeGroups.get
    , module Network.Google.API.DFAReporting.CreativeGroups.Get

    -- ** dfareporting.creativeGroups.insert
    , module Network.Google.API.DFAReporting.CreativeGroups.Insert

    -- ** dfareporting.creativeGroups.list
    , module Network.Google.API.DFAReporting.CreativeGroups.List

    -- ** dfareporting.creativeGroups.patch
    , module Network.Google.API.DFAReporting.CreativeGroups.Patch

    -- ** dfareporting.creativeGroups.update
    , module Network.Google.API.DFAReporting.CreativeGroups.Update

    -- ** dfareporting.creatives.get
    , module Network.Google.API.DFAReporting.Creatives.Get

    -- ** dfareporting.creatives.insert
    , module Network.Google.API.DFAReporting.Creatives.Insert

    -- ** dfareporting.creatives.list
    , module Network.Google.API.DFAReporting.Creatives.List

    -- ** dfareporting.creatives.patch
    , module Network.Google.API.DFAReporting.Creatives.Patch

    -- ** dfareporting.creatives.update
    , module Network.Google.API.DFAReporting.Creatives.Update

    -- ** dfareporting.dimensionValues.query
    , module Network.Google.API.DFAReporting.DimensionValues.Query

    -- ** dfareporting.directorySiteContacts.get
    , module Network.Google.API.DFAReporting.DirectorySiteContacts.Get

    -- ** dfareporting.directorySiteContacts.list
    , module Network.Google.API.DFAReporting.DirectorySiteContacts.List

    -- ** dfareporting.directorySites.get
    , module Network.Google.API.DFAReporting.DirectorySites.Get

    -- ** dfareporting.directorySites.insert
    , module Network.Google.API.DFAReporting.DirectorySites.Insert

    -- ** dfareporting.directorySites.list
    , module Network.Google.API.DFAReporting.DirectorySites.List

    -- ** dfareporting.eventTags.delete
    , module Network.Google.API.DFAReporting.EventTags.Delete

    -- ** dfareporting.eventTags.get
    , module Network.Google.API.DFAReporting.EventTags.Get

    -- ** dfareporting.eventTags.insert
    , module Network.Google.API.DFAReporting.EventTags.Insert

    -- ** dfareporting.eventTags.list
    , module Network.Google.API.DFAReporting.EventTags.List

    -- ** dfareporting.eventTags.patch
    , module Network.Google.API.DFAReporting.EventTags.Patch

    -- ** dfareporting.eventTags.update
    , module Network.Google.API.DFAReporting.EventTags.Update

    -- ** dfareporting.files.get
    , module Network.Google.API.DFAReporting.Files.Get

    -- ** dfareporting.files.list
    , module Network.Google.API.DFAReporting.Files.List

    -- ** dfareporting.floodlightActivities.delete
    , module Network.Google.API.DFAReporting.FloodlightActivities.Delete

    -- ** dfareporting.floodlightActivities.generatetag
    , module Network.Google.API.DFAReporting.FloodlightActivities.Generatetag

    -- ** dfareporting.floodlightActivities.get
    , module Network.Google.API.DFAReporting.FloodlightActivities.Get

    -- ** dfareporting.floodlightActivities.insert
    , module Network.Google.API.DFAReporting.FloodlightActivities.Insert

    -- ** dfareporting.floodlightActivities.list
    , module Network.Google.API.DFAReporting.FloodlightActivities.List

    -- ** dfareporting.floodlightActivities.patch
    , module Network.Google.API.DFAReporting.FloodlightActivities.Patch

    -- ** dfareporting.floodlightActivities.update
    , module Network.Google.API.DFAReporting.FloodlightActivities.Update

    -- ** dfareporting.floodlightActivityGroups.delete
    , module Network.Google.API.DFAReporting.FloodlightActivityGroups.Delete

    -- ** dfareporting.floodlightActivityGroups.get
    , module Network.Google.API.DFAReporting.FloodlightActivityGroups.Get

    -- ** dfareporting.floodlightActivityGroups.insert
    , module Network.Google.API.DFAReporting.FloodlightActivityGroups.Insert

    -- ** dfareporting.floodlightActivityGroups.list
    , module Network.Google.API.DFAReporting.FloodlightActivityGroups.List

    -- ** dfareporting.floodlightActivityGroups.patch
    , module Network.Google.API.DFAReporting.FloodlightActivityGroups.Patch

    -- ** dfareporting.floodlightActivityGroups.update
    , module Network.Google.API.DFAReporting.FloodlightActivityGroups.Update

    -- ** dfareporting.floodlightConfigurations.get
    , module Network.Google.API.DFAReporting.FloodlightConfigurations.Get

    -- ** dfareporting.floodlightConfigurations.list
    , module Network.Google.API.DFAReporting.FloodlightConfigurations.List

    -- ** dfareporting.floodlightConfigurations.patch
    , module Network.Google.API.DFAReporting.FloodlightConfigurations.Patch

    -- ** dfareporting.floodlightConfigurations.update
    , module Network.Google.API.DFAReporting.FloodlightConfigurations.Update

    -- ** dfareporting.inventoryItems.get
    , module Network.Google.API.DFAReporting.InventoryItems.Get

    -- ** dfareporting.inventoryItems.list
    , module Network.Google.API.DFAReporting.InventoryItems.List

    -- ** dfareporting.landingPages.delete
    , module Network.Google.API.DFAReporting.LandingPages.Delete

    -- ** dfareporting.landingPages.get
    , module Network.Google.API.DFAReporting.LandingPages.Get

    -- ** dfareporting.landingPages.insert
    , module Network.Google.API.DFAReporting.LandingPages.Insert

    -- ** dfareporting.landingPages.list
    , module Network.Google.API.DFAReporting.LandingPages.List

    -- ** dfareporting.landingPages.patch
    , module Network.Google.API.DFAReporting.LandingPages.Patch

    -- ** dfareporting.landingPages.update
    , module Network.Google.API.DFAReporting.LandingPages.Update

    -- ** dfareporting.metros.list
    , module Network.Google.API.DFAReporting.Metros.List

    -- ** dfareporting.mobileCarriers.get
    , module Network.Google.API.DFAReporting.MobileCarriers.Get

    -- ** dfareporting.mobileCarriers.list
    , module Network.Google.API.DFAReporting.MobileCarriers.List

    -- ** dfareporting.operatingSystemVersions.get
    , module Network.Google.API.DFAReporting.OperatingSystemVersions.Get

    -- ** dfareporting.operatingSystemVersions.list
    , module Network.Google.API.DFAReporting.OperatingSystemVersions.List

    -- ** dfareporting.operatingSystems.get
    , module Network.Google.API.DFAReporting.OperatingSystems.Get

    -- ** dfareporting.operatingSystems.list
    , module Network.Google.API.DFAReporting.OperatingSystems.List

    -- ** dfareporting.orderDocuments.get
    , module Network.Google.API.DFAReporting.OrderDocuments.Get

    -- ** dfareporting.orderDocuments.list
    , module Network.Google.API.DFAReporting.OrderDocuments.List

    -- ** dfareporting.orders.get
    , module Network.Google.API.DFAReporting.Orders.Get

    -- ** dfareporting.orders.list
    , module Network.Google.API.DFAReporting.Orders.List

    -- ** dfareporting.placementGroups.get
    , module Network.Google.API.DFAReporting.PlacementGroups.Get

    -- ** dfareporting.placementGroups.insert
    , module Network.Google.API.DFAReporting.PlacementGroups.Insert

    -- ** dfareporting.placementGroups.list
    , module Network.Google.API.DFAReporting.PlacementGroups.List

    -- ** dfareporting.placementGroups.patch
    , module Network.Google.API.DFAReporting.PlacementGroups.Patch

    -- ** dfareporting.placementGroups.update
    , module Network.Google.API.DFAReporting.PlacementGroups.Update

    -- ** dfareporting.placementStrategies.delete
    , module Network.Google.API.DFAReporting.PlacementStrategies.Delete

    -- ** dfareporting.placementStrategies.get
    , module Network.Google.API.DFAReporting.PlacementStrategies.Get

    -- ** dfareporting.placementStrategies.insert
    , module Network.Google.API.DFAReporting.PlacementStrategies.Insert

    -- ** dfareporting.placementStrategies.list
    , module Network.Google.API.DFAReporting.PlacementStrategies.List

    -- ** dfareporting.placementStrategies.patch
    , module Network.Google.API.DFAReporting.PlacementStrategies.Patch

    -- ** dfareporting.placementStrategies.update
    , module Network.Google.API.DFAReporting.PlacementStrategies.Update

    -- ** dfareporting.placements.generatetags
    , module Network.Google.API.DFAReporting.Placements.Generatetags

    -- ** dfareporting.placements.get
    , module Network.Google.API.DFAReporting.Placements.Get

    -- ** dfareporting.placements.insert
    , module Network.Google.API.DFAReporting.Placements.Insert

    -- ** dfareporting.placements.list
    , module Network.Google.API.DFAReporting.Placements.List

    -- ** dfareporting.placements.patch
    , module Network.Google.API.DFAReporting.Placements.Patch

    -- ** dfareporting.placements.update
    , module Network.Google.API.DFAReporting.Placements.Update

    -- ** dfareporting.platformTypes.get
    , module Network.Google.API.DFAReporting.PlatformTypes.Get

    -- ** dfareporting.platformTypes.list
    , module Network.Google.API.DFAReporting.PlatformTypes.List

    -- ** dfareporting.postalCodes.get
    , module Network.Google.API.DFAReporting.PostalCodes.Get

    -- ** dfareporting.postalCodes.list
    , module Network.Google.API.DFAReporting.PostalCodes.List

    -- ** dfareporting.projects.get
    , module Network.Google.API.DFAReporting.Projects.Get

    -- ** dfareporting.projects.list
    , module Network.Google.API.DFAReporting.Projects.List

    -- ** dfareporting.regions.list
    , module Network.Google.API.DFAReporting.Regions.List

    -- ** dfareporting.remarketingListShares.get
    , module Network.Google.API.DFAReporting.RemarketingListShares.Get

    -- ** dfareporting.remarketingListShares.patch
    , module Network.Google.API.DFAReporting.RemarketingListShares.Patch

    -- ** dfareporting.remarketingListShares.update
    , module Network.Google.API.DFAReporting.RemarketingListShares.Update

    -- ** dfareporting.remarketingLists.get
    , module Network.Google.API.DFAReporting.RemarketingLists.Get

    -- ** dfareporting.remarketingLists.insert
    , module Network.Google.API.DFAReporting.RemarketingLists.Insert

    -- ** dfareporting.remarketingLists.list
    , module Network.Google.API.DFAReporting.RemarketingLists.List

    -- ** dfareporting.remarketingLists.patch
    , module Network.Google.API.DFAReporting.RemarketingLists.Patch

    -- ** dfareporting.remarketingLists.update
    , module Network.Google.API.DFAReporting.RemarketingLists.Update

    -- ** dfareporting.reports.compatibleFields.query
    , module Network.Google.API.DFAReporting.Reports.CompatibleFields.Query

    -- ** dfareporting.reports.files.get
    , module Network.Google.API.DFAReporting.Reports.Files.Get

    -- ** dfareporting.reports.files.list
    , module Network.Google.API.DFAReporting.Reports.Files.List

    -- ** dfareporting.sites.get
    , module Network.Google.API.DFAReporting.Sites.Get

    -- ** dfareporting.sites.insert
    , module Network.Google.API.DFAReporting.Sites.Insert

    -- ** dfareporting.sites.list
    , module Network.Google.API.DFAReporting.Sites.List

    -- ** dfareporting.sites.patch
    , module Network.Google.API.DFAReporting.Sites.Patch

    -- ** dfareporting.sites.update
    , module Network.Google.API.DFAReporting.Sites.Update

    -- ** dfareporting.sizes.get
    , module Network.Google.API.DFAReporting.Sizes.Get

    -- ** dfareporting.sizes.insert
    , module Network.Google.API.DFAReporting.Sizes.Insert

    -- ** dfareporting.sizes.list
    , module Network.Google.API.DFAReporting.Sizes.List

    -- ** dfareporting.subaccounts.get
    , module Network.Google.API.DFAReporting.Subaccounts.Get

    -- ** dfareporting.subaccounts.insert
    , module Network.Google.API.DFAReporting.Subaccounts.Insert

    -- ** dfareporting.subaccounts.list
    , module Network.Google.API.DFAReporting.Subaccounts.List

    -- ** dfareporting.subaccounts.patch
    , module Network.Google.API.DFAReporting.Subaccounts.Patch

    -- ** dfareporting.subaccounts.update
    , module Network.Google.API.DFAReporting.Subaccounts.Update

    -- ** dfareporting.targetableRemarketingLists.get
    , module Network.Google.API.DFAReporting.TargetableRemarketingLists.Get

    -- ** dfareporting.targetableRemarketingLists.list
    , module Network.Google.API.DFAReporting.TargetableRemarketingLists.List

    -- ** dfareporting.userProfiles.get
    , module Network.Google.API.DFAReporting.UserProfiles.Get

    -- ** dfareporting.userProfiles.list
    , module Network.Google.API.DFAReporting.UserProfiles.List

    -- ** dfareporting.userRolePermissionGroups.get
    , module Network.Google.API.DFAReporting.UserRolePermissionGroups.Get

    -- ** dfareporting.userRolePermissionGroups.list
    , module Network.Google.API.DFAReporting.UserRolePermissionGroups.List

    -- ** dfareporting.userRolePermissions.get
    , module Network.Google.API.DFAReporting.UserRolePermissions.Get

    -- ** dfareporting.userRolePermissions.list
    , module Network.Google.API.DFAReporting.UserRolePermissions.List

    -- ** dfareporting.userRoles.delete
    , module Network.Google.API.DFAReporting.UserRoles.Delete

    -- ** dfareporting.userRoles.get
    , module Network.Google.API.DFAReporting.UserRoles.Get

    -- ** dfareporting.userRoles.insert
    , module Network.Google.API.DFAReporting.UserRoles.Insert

    -- ** dfareporting.userRoles.list
    , module Network.Google.API.DFAReporting.UserRoles.List

    -- ** dfareporting.userRoles.patch
    , module Network.Google.API.DFAReporting.UserRoles.Patch

    -- ** dfareporting.userRoles.update
    , module Network.Google.API.DFAReporting.UserRoles.Update

    -- * Types

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
    , cgSubaccountId

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

    -- ** PricingGroupType
    , PricingGroupType (..)

    -- ** PlacementGroupsListResponse
    , PlacementGroupsListResponse
    , placementGroupsListResponse
    , pglrNextPageToken
    , pglrKind
    , pglrPlacementGroups

    -- ** PlacementsList'Compatibilities
    , PlacementsList'Compatibilities (..)

    -- ** ListPopulationTermType
    , ListPopulationTermType (..)

    -- ** OffsetPosition
    , OffsetPosition
    , offsetPosition
    , opLeft
    , opTop

    -- ** OrdersListResponse
    , OrdersListResponse
    , ordersListResponse
    , olrNextPageToken
    , olrKind
    , olrOrders

    -- ** CampaignCreativeAssociation
    , CampaignCreativeAssociation
    , campaignCreativeAssociation
    , ccaKind
    , ccaCreativeId

    -- ** AdsList'SortOrder
    , AdsList'SortOrder (..)

    -- ** ReportList
    , ReportList
    , reportList
    , rlEtag
    , rlNextPageToken
    , rlKind
    , rlItems

    -- ** CreativeFieldsList'SortField
    , CreativeFieldsList'SortField (..)

    -- ** CreativeAssetPositionTopUnit
    , CreativeAssetPositionTopUnit (..)

    -- ** CreativeAssetRole
    , CreativeAssetRole (..)

    -- ** MobileCarrier
    , MobileCarrier
    , mobileCarrier
    , mcKind
    , mcName
    , mcCountryCode
    , mcId
    , mcCountryDartId

    -- ** EventTagsListResponse
    , EventTagsListResponse
    , eventTagsListResponse
    , etlrKind
    , etlrEventTags

    -- ** LandingPage
    , LandingPage
    , landingPage
    , lpKind
    , lpDefault
    , lpUrl
    , lpName
    , lpId

    -- ** AccountActiveAdSummary
    , AccountActiveAdSummary
    , accountActiveAdSummary
    , aaasAvailableAds
    , aaasKind
    , aaasAccountId
    , aaasActiveAds
    , aaasActiveAdsLimitTier

    -- ** RecipientDeliveryType
    , RecipientDeliveryType (..)

    -- ** UserRolePermissionsListResponse
    , UserRolePermissionsListResponse
    , userRolePermissionsListResponse
    , urplrKind
    , urplrUserRolePermissions

    -- ** AdvertisersList'Status
    , AdvertisersList'Status (..)

    -- ** SubaccountsList'SortOrder
    , SubaccountsList'SortOrder (..)

    -- ** AdSlotCompatibility
    , AdSlotCompatibility (..)

    -- ** FloodlightActivityPublisherDynamicTag
    , FloodlightActivityPublisherDynamicTag
    , floodlightActivityPublisherDynamicTag
    , fapdtClickThrough
    , fapdtSiteIdDimensionValue
    , fapdtDynamicTag
    , fapdtDirectorySiteId
    , fapdtSiteId
    , fapdtViewThrough

    -- ** CreativeRotationType
    , CreativeRotationType (..)

    -- ** TagSetting
    , TagSetting
    , tagSetting
    , tsKeywordOption
    , tsIncludeClickThroughUrls
    , tsIncludeClickTracking
    , tsAdditionalKeyValues

    -- ** LookbackConfiguration
    , LookbackConfiguration
    , lookbackConfiguration
    , lcClickDuration
    , lcPostImpressionActivitiesDuration

    -- ** OrderDocumentsList'SortField
    , OrderDocumentsList'SortField (..)

    -- ** ConnectionTypesListResponse
    , ConnectionTypesListResponse
    , connectionTypesListResponse
    , ctlrKind
    , ctlrConnectionTypes

    -- ** SortedDimensionSortOrder
    , SortedDimensionSortOrder (..)

    -- ** PlacementsList'SortField
    , PlacementsList'SortField (..)

    -- ** CreativeAssetPositionLeftUnit
    , CreativeAssetPositionLeftUnit (..)

    -- ** PopupWindowProperties
    , PopupWindowProperties
    , popupWindowProperties
    , pwpOffset
    , pwpDimension
    , pwpShowStatusBar
    , pwpShowMenuBar
    , pwpPositionType
    , pwpShowAddressBar
    , pwpShowScrollBar
    , pwpShowToolBar
    , pwpTitle

    -- ** AdvertiserGroupsList'SortField
    , AdvertiserGroupsList'SortField (..)

    -- ** KeyValueTargetingExpression
    , KeyValueTargetingExpression
    , keyValueTargetingExpression
    , kvteExpression

    -- ** CreativeAssetAlignment
    , CreativeAssetAlignment (..)

    -- ** FloodlightActivityTagFormat
    , FloodlightActivityTagFormat (..)

    -- ** DirectorySitesList'SortField
    , DirectorySitesList'SortField (..)

    -- ** AdvertisersListResponse
    , AdvertisersListResponse
    , advertisersListResponse
    , alrNextPageToken
    , alrKind
    , alrAdvertisers

    -- ** AudienceSegment
    , AudienceSegment
    , audienceSegment
    , asName
    , asId
    , asAllocation

    -- ** CreativeOptimizationConfigurationOptimizationModel
    , CreativeOptimizationConfigurationOptimizationModel (..)

    -- ** FloodlightActivityGroupsList'SortField
    , FloodlightActivityGroupsList'SortField (..)

    -- ** CampaignsList'SortOrder
    , CampaignsList'SortOrder (..)

    -- ** OrdersList'SortOrder
    , OrdersList'SortOrder (..)

    -- ** CompanionClickThroughOverride
    , CompanionClickThroughOverride
    , companionClickThroughOverride
    , cctoCreativeId
    , cctoClickThroughUrl

    -- ** AccountPermissionGroupsListResponse
    , AccountPermissionGroupsListResponse
    , accountPermissionGroupsListResponse
    , apglrKind
    , apglrAccountPermissionGroups

    -- ** AccountPermissionLevel
    , AccountPermissionLevel (..)

    -- ** PlatformType
    , PlatformType
    , platformType
    , ptKind
    , ptName
    , ptId

    -- ** ReportReportPropertiesPathToConversionCriteria
    , ReportReportPropertiesPathToConversionCriteria
    , reportReportPropertiesPathToConversionCriteria
    , rrpptccMaximumInteractionGap
    , rrpptccMaximumClickInteractions
    , rrpptccPivotOnInteractionPath
    , rrpptccMaximumImpressionInteractions
    , rrpptccIncludeUnattributedIPConversions
    , rrpptccImpressionsLookbackWindow
    , rrpptccClicksLookbackWindow
    , rrpptccIncludeUnattributedCookieConversions
    , rrpptccIncludeAttributedIPConversions

    -- ** CountriesListResponse
    , CountriesListResponse
    , countriesListResponse
    , clrKind
    , clrCountries

    -- ** UserRolesListResponse
    , UserRolesListResponse
    , userRolesListResponse
    , urlrNextPageToken
    , urlrKind
    , urlrUserRoles

    -- ** PathToConversionReportCompatibleFields
    , PathToConversionReportCompatibleFields
    , pathToConversionReportCompatibleFields
    , ptcrcfMetrics
    , ptcrcfKind
    , ptcrcfConversionDimensions
    , ptcrcfCustomFloodlightVariables
    , ptcrcfPerInteractionDimensions

    -- ** CompatibleFields
    , CompatibleFields
    , compatibleFields
    , cfReachReportCompatibleFields
    , cfCrossDimensionReachReportCompatibleFields
    , cfKind
    , cfFloodlightReportCompatibleFields
    , cfReportCompatibleFields
    , cfPathToConversionReportCompatibleFields

    -- ** City
    , City
    , city
    , cMetroCode
    , cRegionCode
    , cKind
    , cRegionDartId
    , cMetroDmaId
    , cName
    , cCountryCode
    , cCountryDartId
    , cDartId

    -- ** DfpSettings
    , DfpSettings
    , dfpSettings
    , dsPubPaidPlacementAccepted
    , dsDfpNetworkName
    , dsPublisherPortalOnly
    , dsProgrammaticPlacementAccepted
    , dsDfpNetworkCode

    -- ** DayPartTargeting
    , DayPartTargeting
    , dayPartTargeting
    , dptDaysOfWeek
    , dptHoursOfDay
    , dptUserLocalTime

    -- ** SitesList'SortOrder
    , SitesList'SortOrder (..)

    -- ** AccountActiveAdSummaryActiveAdsLimitTier
    , AccountActiveAdSummaryActiveAdsLimitTier (..)

    -- ** InventoryItemsList'SortField
    , InventoryItemsList'SortField (..)

    -- ** CrossDimensionReachReportCompatibleFields
    , CrossDimensionReachReportCompatibleFields
    , crossDimensionReachReportCompatibleFields
    , cdrrcfMetrics
    , cdrrcfBreakdown
    , cdrrcfKind
    , cdrrcfDimensionFilters
    , cdrrcfOverlapMetrics

    -- ** DirectorySiteContact
    , DirectorySiteContact
    , directorySiteContact
    , dscEmail
    , dscPhone
    , dscLastName
    , dscKind
    , dscAddress
    , dscRole
    , dscFirstName
    , dscId
    , dscTitle
    , dscType

    -- ** ReportsFilesList'SortOrder
    , ReportsFilesList'SortOrder (..)

    -- ** FloodlightConfigurationsListResponse
    , FloodlightConfigurationsListResponse
    , floodlightConfigurationsListResponse
    , fclrKind
    , fclrFloodlightConfigurations

    -- ** AdvertiserGroup
    , AdvertiserGroup
    , advertiserGroup
    , aKind
    , aAccountId
    , aName
    , aId

    -- ** RegionsListResponse
    , RegionsListResponse
    , regionsListResponse
    , rlrKind
    , rlrRegions

    -- ** CreativeFieldAssignment
    , CreativeFieldAssignment
    , creativeFieldAssignment
    , cfaCreativeFieldId
    , cfaCreativeFieldValueId

    -- ** TagData
    , TagData
    , tagData
    , tdClickTag
    , tdFormat
    , tdCreativeId
    , tdAdId
    , tdImpressionTag

    -- ** FsCommand
    , FsCommand
    , fsCommand
    , fcPositionOption
    , fcLeft
    , fcWindowHeight
    , fcWindowWidth
    , fcTop

    -- ** CreativeFieldValue
    , CreativeFieldValue
    , creativeFieldValue
    , cfvKind
    , cfvValue
    , cfvId

    -- ** FloodlightActivityCacheBustingType
    , FloodlightActivityCacheBustingType (..)

    -- ** DimensionValueRequest
    , DimensionValueRequest
    , dimensionValueRequest
    , dvrKind
    , dvrEndDate
    , dvrFilters
    , dvrStartDate
    , dvrDimensionName

    -- ** FloodlightActivitiesListResponse
    , FloodlightActivitiesListResponse
    , floodlightActivitiesListResponse
    , falrNextPageToken
    , falrKind
    , falrFloodlightActivities

    -- ** ObjectFilterStatus
    , ObjectFilterStatus (..)

    -- ** FloodlightActivityDynamicTag
    , FloodlightActivityDynamicTag
    , floodlightActivityDynamicTag
    , fadtTag
    , fadtName
    , fadtId

    -- ** CreativeOptimizationConfiguration
    , CreativeOptimizationConfiguration
    , creativeOptimizationConfiguration
    , cocOptimizationModel
    , cocName
    , cocOptimizationActivitys
    , cocId

    -- ** DirectorySite
    , DirectorySite
    , directorySite
    , dsCurrencyId
    , dsSettings
    , dsInterstitialTagFormats
    , dsKind
    , dsUrl
    , dsIdDimensionValue
    , dsInpageTagFormats
    , dsActive
    , dsName
    , dsId
    , dsCountryId
    , dsContactAssignments
    , dsDescription
    , dsParentId

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
    , fagSubaccountId
    , fagType
    , fagFloodlightConfigurationIdDimensionValue

    -- ** Alt
    , Alt (..)

    -- ** PlacementAssignment
    , PlacementAssignment
    , placementAssignment
    , paPlacementId
    , paPlacementIdDimensionValue
    , paActive
    , paSslRequired

    -- ** ChangeLogsList'ObjectType
    , ChangeLogsList'ObjectType (..)

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
    , urSubaccountId

    -- ** PlacementItemTagFormats
    , PlacementItemTagFormats (..)

    -- ** PlatformTypesListResponse
    , PlatformTypesListResponse
    , platformTypesListResponse
    , ptlrKind
    , ptlrPlatformTypes

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

    -- ** LastModifiedInfo
    , LastModifiedInfo
    , lastModifiedInfo
    , lmiTime

    -- ** EventTagType
    , EventTagType (..)

    -- ** TargetWindow
    , TargetWindow
    , targetWindow
    , twCustomHtml
    , twTargetWindowOption

    -- ** Advertiser
    , Advertiser
    , advertiser
    , advOriginalFloodlightConfigurationId
    , advStatus
    , advFloodlightConfigurationId
    , advKind
    , advSuspended
    , advIdDimensionValue
    , advAccountId
    , advDefaultEmail
    , advName
    , advAdvertiserGroupId
    , advDefaultClickThroughEventTagId
    , advId
    , advSubaccountId
    , advFloodlightConfigurationIdDimensionValue
    , advClickThroughUrlSuffix

    -- ** AccountUserProfileUserAccessType
    , AccountUserProfileUserAccessType (..)

    -- ** AccountPermissionItemAccountProfiles
    , AccountPermissionItemAccountProfiles (..)

    -- ** CreativeAssetStartTimeType
    , CreativeAssetStartTimeType (..)

    -- ** UserDefinedVariableConfigurationDataType
    , UserDefinedVariableConfigurationDataType (..)

    -- ** AccountPermissionGroup
    , AccountPermissionGroup
    , accountPermissionGroup
    , apgKind
    , apgName
    , apgId

    -- ** FloodlightActivity
    , FloodlightActivity
    , floodlightActivity
    , faCountingMethod
    , faTagString
    , faSecure
    , faExpectedUrl
    , faFloodlightActivityGroupTagString
    , faFloodlightConfigurationId
    , faKind
    , faImageTagEnabled
    , faAdvertiserId
    , faAdvertiserIdDimensionValue
    , faSslCompliant
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
    , faFloodlightActivityGroupName
    , faId
    , faSslRequired
    , faUserDefinedVariableTypes
    , faSubaccountId
    , faNotes
    , faFloodlightConfigurationIdDimensionValue

    -- ** CreativeAssetMetadataItemWarnedValidationRules
    , CreativeAssetMetadataItemWarnedValidationRules (..)

    -- ** AdSlotPaymentSourceType
    , AdSlotPaymentSourceType (..)

    -- ** PlacementGroupsList'PlacementGroupType
    , PlacementGroupsList'PlacementGroupType (..)

    -- ** DirectorySiteContactRole
    , DirectorySiteContactRole (..)

    -- ** PlacementPaymentSource
    , PlacementPaymentSource (..)

    -- ** TargetWindowTargetWindowOption
    , TargetWindowTargetWindowOption (..)

    -- ** RichMediaExitOverride
    , RichMediaExitOverride
    , richMediaExitOverride
    , rmeoUseCustomExitUrl
    , rmeoExitId
    , rmeoCustomExitUrl

    -- ** PricingSchedulePricingPeriod
    , PricingSchedulePricingPeriod
    , pricingSchedulePricingPeriod
    , psppEndDate
    , psppRateOrCostNanos
    , psppStartDate
    , psppUnits
    , psppPricingComment

    -- ** FloodlightConfigurationItemStandardVariableTypes
    , FloodlightConfigurationItemStandardVariableTypes (..)

    -- ** DirectorySitesListResponse
    , DirectorySitesListResponse
    , directorySitesListResponse
    , dslrNextPageToken
    , dslrKind
    , dslrDirectorySites

    -- ** OrderDocumentsList'SortOrder
    , OrderDocumentsList'SortOrder (..)

    -- ** DimensionFilter
    , DimensionFilter
    , dimensionFilter
    , dfKind
    , dfValue
    , dfDimensionName

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

    -- ** UserProfileList
    , UserProfileList
    , userProfileList
    , uplEtag
    , uplKind
    , uplItems

    -- ** PlacementsList'SortOrder
    , PlacementsList'SortOrder (..)

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

    -- ** SubaccountsList'SortField
    , SubaccountsList'SortField (..)

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
    , fcSslRequired
    , fcNaturalSearchConversionAttributionOption
    , fcUserDefinedVariableConfigurations
    , fcSubaccountId
    , fcFirstDayOfWeek
    , fcOmnitureSettings
    , fcStandardVariableTypes

    -- ** Region
    , Region
    , region
    , rRegionCode
    , rKind
    , rName
    , rCountryCode
    , rCountryDartId
    , rDartId

    -- ** AdsList'Type
    , AdsList'Type (..)

    -- ** CreativeFieldValuesListResponse
    , CreativeFieldValuesListResponse
    , creativeFieldValuesListResponse
    , cfvlrNextPageToken
    , cfvlrKind
    , cfvlrCreativeFieldValues

    -- ** CreativeAssignment
    , CreativeAssignment
    , creativeAssignment
    , caCreativeGroupAssignments
    , caStartTime
    , caWeight
    , caRichMediaExitOverrides
    , caSslCompliant
    , caCreativeId
    , caClickThroughUrl
    , caApplyEventTags
    , caActive
    , caSequence
    , caEndTime
    , caCompanionCreativeOverrides
    , caCreativeIdDimensionValue

    -- ** AdvertiserGroupsListResponse
    , AdvertiserGroupsListResponse
    , advertiserGroupsListResponse
    , aglrNextPageToken
    , aglrKind
    , aglrAdvertiserGroups

    -- ** DirectorySiteContactsListResponse
    , DirectorySiteContactsListResponse
    , directorySiteContactsListResponse
    , dsclrNextPageToken
    , dsclrKind
    , dsclrDirectorySiteContacts

    -- ** FloodlightActivityGroupsListResponse
    , FloodlightActivityGroupsListResponse
    , floodlightActivityGroupsListResponse
    , faglrNextPageToken
    , faglrKind
    , faglrFloodlightActivityGroups

    -- ** CreativeFieldsList'SortOrder
    , CreativeFieldsList'SortOrder (..)

    -- ** FloodlightConfigurationFirstDayOfWeek
    , FloodlightConfigurationFirstDayOfWeek (..)

    -- ** CreativeType
    , CreativeType (..)

    -- ** AdsList'SortField
    , AdsList'SortField (..)

    -- ** PlacementsListResponse
    , PlacementsListResponse
    , placementsListResponse
    , plrNextPageToken
    , plrKind
    , plrPlacements

    -- ** Site
    , Site
    , site
    , sitKind
    , sitKeyName
    , sitSiteContacts
    , sitSiteSettings
    , sitIdDimensionValue
    , sitDirectorySiteIdDimensionValue
    , sitAccountId
    , sitName
    , sitDirectorySiteId
    , sitId
    , sitSubaccountId
    , sitApproved

    -- ** Recipient
    , Recipient
    , recipient
    , recEmail
    , recKind
    , recDeliveryType

    -- ** OrderDocumentsListResponse
    , OrderDocumentsListResponse
    , orderDocumentsListResponse
    , odlrNextPageToken
    , odlrKind
    , odlrOrderDocuments

    -- ** PricingPricingType
    , PricingPricingType (..)

    -- ** CreativeGroupAssignmentCreativeGroupNumber
    , CreativeGroupAssignmentCreativeGroupNumber (..)

    -- ** PlacementsList'PaymentSource
    , PlacementsList'PaymentSource (..)

    -- ** PlacementsGenerateTagsResponse
    , PlacementsGenerateTagsResponse
    , placementsGenerateTagsResponse
    , pgtrKind
    , pgtrPlacementTags

    -- ** CreativeFieldsListResponse
    , CreativeFieldsListResponse
    , creativeFieldsListResponse
    , cflrNextPageToken
    , cflrKind
    , cflrCreativeFields

    -- ** FloodlightActivityGroupsList'SortOrder
    , FloodlightActivityGroupsList'SortOrder (..)

    -- ** MetrosListResponse
    , MetrosListResponse
    , metrosListResponse
    , mlrKind
    , mlrMetros

    -- ** AdvertiserGroupsList'SortOrder
    , AdvertiserGroupsList'SortOrder (..)

    -- ** CreativeAsset
    , CreativeAsset
    , creativeAsset
    , creZIndex
    , crePushdown
    , creVideoDuration
    , creOriginalBackup
    , creWindowMode
    , creFlashVersion
    , crePushdownDuration
    , creSize
    , creVerticallyLocked
    , creOffset
    , creStreamingServingUrl
    , creZipFilesize
    , creTransparency
    , creHideSelectionBoxes
    , creSslCompliant
    , creFileSize
    , creAssetIdentifier
    , creDurationType
    , creProgressiveServingUrl
    , creActive
    , creRole
    , creMimeType
    , crePositionTopUnit
    , crePositionLeftUnit
    , creAlignment
    , creExpandedDimension
    , creZipFilename
    , creActionScript3
    , creDisplayType
    , creChildAssetType
    , creCollapsedSize
    , creId
    , creBitRate
    , creCustomStartTimeValue
    , creStartTimeType
    , creDuration
    , creArtworkType
    , creHideFlashObjects
    , creDetectedFeatures
    , creBackupImageExit
    , crePosition
    , creHorizontallyLocked

    -- ** PlacementGroupPlacementGroupType
    , PlacementGroupPlacementGroupType (..)

    -- ** SortedDimension
    , SortedDimension
    , sortedDimension
    , sdKind
    , sdSortOrder
    , sdName

    -- ** DirectorySitesList'SortOrder
    , DirectorySitesList'SortOrder (..)

    -- ** CampaignsList'SortField
    , CampaignsList'SortField (..)

    -- ** OrdersList'SortField
    , OrdersList'SortField (..)

    -- ** FsCommandPositionOption
    , FsCommandPositionOption (..)

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

    -- ** AdsList'CreativeType
    , AdsList'CreativeType (..)

    -- ** Report
    , Report
    , report
    , repDelivery
    , repEtag
    , repOwnerProfileId
    , repSchedule
    , repPathToConversionCriteria
    , repKind
    , repFormat
    , repReachCriteria
    , repLastModifiedTime
    , repAccountId
    , repName
    , repId
    , repCrossDimensionReachCriteria
    , repType
    , repSubAccountId
    , repFloodlightCriteria
    , repCriteria
    , repFileName

    -- ** TargetableRemarketingListListSource
    , TargetableRemarketingListListSource (..)

    -- ** CreativeCustomEventTargetType
    , CreativeCustomEventTargetType (..)

    -- ** CreativeAssetDurationType
    , CreativeAssetDurationType (..)

    -- ** ContentCategoriesListResponse
    , ContentCategoriesListResponse
    , contentCategoriesListResponse
    , cclrNextPageToken
    , cclrKind
    , cclrContentCategories

    -- ** FloodlightActivityItemUserDefinedVariableTypes
    , FloodlightActivityItemUserDefinedVariableTypes (..)

    -- ** ThirdPartyAuthenticationToken
    , ThirdPartyAuthenticationToken
    , thirdPartyAuthenticationToken
    , tpatValue
    , tpatName

    -- ** Campaign
    , Campaign
    , campaign
    , ccCreativeOptimizationConfiguration
    , ccCreativeGroupIds
    , ccNielsenOcrEnabled
    , ccKind
    , ccClickThroughUrlSuffixProperties
    , ccAdvertiserId
    , ccEndDate
    , ccAdvertiserIdDimensionValue
    , ccIdDimensionValue
    , ccEventTagOverrides
    , ccLookbackConfiguration
    , ccStartDate
    , ccAccountId
    , ccComscoreVceEnabled
    , ccName
    , ccAdvertiserGroupId
    , ccBillingInvoiceCode
    , ccCreateInfo
    , ccLastModifiedInfo
    , ccId
    , ccSubaccountId
    , ccAdditionalCreativeOptimizationConfigurations
    , ccExternalId
    , ccComment
    , ccAudienceSegmentGroups
    , ccArchived
    , ccTraffickerEmails
    , ccDefaultClickThroughEventTagProperties

    -- ** CreativesList'SortField
    , CreativesList'SortField (..)

    -- ** ReportRunsOnDayOfMonthSchedule
    , ReportRunsOnDayOfMonthSchedule (..)

    -- ** BrowsersListResponse
    , BrowsersListResponse
    , browsersListResponse
    , blrKind
    , blrBrowsers

    -- ** DayPartTargetingItemDaysOfWeek
    , DayPartTargetingItemDaysOfWeek (..)

    -- ** FloodlightConfigurationNaturalSearchConversionAttributionOption
    , FloodlightConfigurationNaturalSearchConversionAttributionOption (..)

    -- ** PlacementStrategiesList'SortOrder
    , PlacementStrategiesList'SortOrder (..)

    -- ** SiteSettings
    , SiteSettings
    , siteSettings
    , ssDisableNewCookie
    , ssDisableBrandSafeAds
    , ssLookbackConfiguration
    , ssTagSetting
    , ssActiveViewOptOut
    , ssCreativeSettings

    -- ** AdType
    , AdType (..)

    -- ** AccountUserProfilesList'SortField
    , AccountUserProfilesList'SortField (..)

    -- ** EventTagSiteFilterType
    , EventTagSiteFilterType (..)

    -- ** ClickThroughUrl
    , ClickThroughUrl
    , clickThroughUrl
    , ctuDefaultLandingPage
    , ctuComputedClickThroughUrl
    , ctuCustomClickThroughUrl
    , ctuLandingPageId

    -- ** ReportFormat
    , ReportFormat (..)

    -- ** EventTagsList'EventTagTypes
    , EventTagsList'EventTagTypes (..)

    -- ** SitesListResponse
    , SitesListResponse
    , sitesListResponse
    , slrNextPageToken
    , slrKind
    , slrSites

    -- ** DirectorySiteContactAssignment
    , DirectorySiteContactAssignment
    , directorySiteContactAssignment
    , dscaVisibility
    , dscaContactId

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

    -- ** DirectorySiteContactType
    , DirectorySiteContactType (..)

    -- ** CreativeAssetMetadataItemDetectedFeatures
    , CreativeAssetMetadataItemDetectedFeatures (..)

    -- ** FloodlightActivitiesGenerateTagResponse
    , FloodlightActivitiesGenerateTagResponse
    , floodlightActivitiesGenerateTagResponse
    , fagtrFloodlightActivityTag
    , fagtrKind

    -- ** AdSlot
    , AdSlot
    , adSlot
    , adHeight
    , adPaymentSourceType
    , adLinkedPlacementId
    , adWidth
    , adPrimary
    , adName
    , adComment
    , adCompatibility

    -- ** DefaultClickThroughEventTagProperties
    , DefaultClickThroughEventTagProperties
    , defaultClickThroughEventTagProperties
    , dctetpOverrideInheritedEventTag
    , dctetpDefaultClickThroughEventTagId

    -- ** Placement
    , Placement
    , placement
    , plaStatus
    , plaPlacementStrategyId
    , plaTagFormats
    , plaSiteIdDimensionValue
    , plaPricingSchedule
    , plaSize
    , plaKind
    , plaKeyName
    , plaCampaignIdDimensionValue
    , plaAdvertiserId
    , plaAdvertiserIdDimensionValue
    , plaCampaignId
    , plaIdDimensionValue
    , plaPrimary
    , plaLookbackConfiguration
    , plaTagSetting
    , plaContentCategoryId
    , plaDirectorySiteIdDimensionValue
    , plaAccountId
    , plaPaymentSource
    , plaName
    , plaDirectorySiteId
    , plaCreateInfo
    , plaLastModifiedInfo
    , plaId
    , plaSslRequired
    , plaSubaccountId
    , plaPlacementGroupIdDimensionValue
    , plaExternalId
    , plaPlacementGroupId
    , plaComment
    , plaSiteId
    , plaCompatibility
    , plaArchived
    , plaPaymentApproved
    , plaPublisherUpdateInfo

    -- ** ListTargetingExpression
    , ListTargetingExpression
    , listTargetingExpression
    , lteExpression

    -- ** ReportDelivery
    , ReportDelivery
    , reportDelivery
    , rdEmailOwner
    , rdRecipients
    , rdMessage
    , rdEmailOwnerDeliveryType

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
    , odApprovedByUserProfileIds
    , odAccountId
    , odId
    , odProjectId
    , odTitle
    , odSubaccountId
    , odType
    , odOrderId
    , odCancelled
    , odCreatedInfo

    -- ** ChangeLogsList'Action
    , ChangeLogsList'Action (..)

    -- ** CreativeField
    , CreativeField
    , creativeField
    , cffKind
    , cffAdvertiserId
    , cffAdvertiserIdDimensionValue
    , cffAccountId
    , cffName
    , cffId
    , cffSubaccountId

    -- ** ThirdPartyTrackingUrl
    , ThirdPartyTrackingUrl
    , thirdPartyTrackingUrl
    , tptuUrl
    , tptuThirdPartyUrlType

    -- ** ProjectsList'SortOrder
    , ProjectsList'SortOrder (..)

    -- ** AdvertisersList'SortOrder
    , AdvertisersList'SortOrder (..)

    -- ** DirectorySiteContactAssignmentVisibility
    , DirectorySiteContactAssignmentVisibility (..)

    -- ** GeoTargeting
    , GeoTargeting
    , geoTargeting
    , gtRegions
    , gtCountries
    , gtCities
    , gtMetros
    , gtExcludeCountries
    , gtPostalCodes

    -- ** OptimizationActivity
    , OptimizationActivity
    , optimizationActivity
    , oaWeight
    , oaFloodlightActivityId
    , oaFloodlightActivityIdDimensionValue

    -- ** DirectorySiteItemInterstitialTagFormats
    , DirectorySiteItemInterstitialTagFormats (..)

    -- ** AccountsList'SortField
    , AccountsList'SortField (..)

    -- ** ReachReportCompatibleFields
    , ReachReportCompatibleFields
    , reachReportCompatibleFields
    , rrcfMetrics
    , rrcfReachByFrequencyMetrics
    , rrcfKind
    , rrcfDimensionFilters
    , rrcfPivotedActivityMetrics
    , rrcfDimensions

    -- ** CampaignsListResponse
    , CampaignsListResponse
    , campaignsListResponse
    , camNextPageToken
    , camCampaigns
    , camKind

    -- ** ListPopulationTermOperator
    , ListPopulationTermOperator (..)

    -- ** RemarketingListsList'SortField
    , RemarketingListsList'SortField (..)

    -- ** FileList
    , FileList
    , fileList
    , flEtag
    , flNextPageToken
    , flKind
    , flItems

    -- ** ClickTag
    , ClickTag
    , clickTag
    , ctValue
    , ctName
    , ctEventName

    -- ** PricingScheduleCapCostOption
    , PricingScheduleCapCostOption (..)

    -- ** CreativeCustomEvent
    , CreativeCustomEvent
    , creativeCustomEvent
    , cceAdvertiserCustomEventType
    , cceAdvertiserCustomEventName
    , cceExitUrl
    , cceTargetType
    , ccePopupWindowProperties
    , cceVideoReportingId
    , cceId
    , cceArtworkLabel
    , cceArtworkType

    -- ** Browser
    , Browser
    , browser
    , bMinorVersion
    , bKind
    , bBrowserVersionId
    , bMajorVersion
    , bName
    , bDartId

    -- ** UserRolesList'SortOrder
    , UserRolesList'SortOrder (..)

    -- ** FloodlightActivityFloodlightActivityGroupType
    , FloodlightActivityFloodlightActivityGroupType (..)

    -- ** UserRolePermissionAvailability
    , UserRolePermissionAvailability (..)

    -- ** PlacementCompatibility
    , PlacementCompatibility (..)

    -- ** ThirdPartyTrackingUrlThirdPartyUrlType
    , ThirdPartyTrackingUrlThirdPartyUrlType (..)

    -- ** CreativeAssetItemDetectedFeatures
    , CreativeAssetItemDetectedFeatures (..)

    -- ** ListPopulationClause
    , ListPopulationClause
    , listPopulationClause
    , lpcTerms

    -- ** ProjectsListResponse
    , ProjectsListResponse
    , projectsListResponse
    , pNextPageToken
    , pKind
    , pProjects

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
    , iiSubaccountId
    , iiOrderId
    , iiSiteId

    -- ** CreativeGroupAssignment
    , CreativeGroupAssignment
    , creativeGroupAssignment
    , cgaCreativeGroupNumber
    , cgaCreativeGroupId

    -- ** FilesList'SortOrder
    , FilesList'SortOrder (..)

    -- ** FloodlightActivityGroupsList'Type
    , FloodlightActivityGroupsList'Type (..)

    -- ** DirectorySiteContactsList'SortField
    , DirectorySiteContactsList'SortField (..)

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

    -- ** SizesListResponse
    , SizesListResponse
    , sizesListResponse
    , sKind
    , sSizes

    -- ** CreativeFieldValuesList'SortField
    , CreativeFieldValuesList'SortField (..)

    -- ** FloodlightActivitiesList'FloodlightActivityGroupType
    , FloodlightActivitiesList'FloodlightActivityGroupType (..)

    -- ** DirectorySiteSettings
    , DirectorySiteSettings
    , directorySiteSettings
    , dssInterstitialPlacementAccepted
    , dssDfpSettings
    , dssVerificationTagOptOut
    , dssActiveViewOptOut
    , dssVideoActiveViewOptOut
    , dssInstreamVideoPlacementAccepted
    , dssNielsenOcrOptOut

    -- ** TagSettings
    , TagSettings
    , tagSettings
    , tsDynamicTagEnabled
    , tsImageTagEnabled

    -- ** AdsListResponse
    , AdsListResponse
    , adsListResponse
    , adsNextPageToken
    , adsKind
    , adsAds

    -- ** TargetableRemarketingListsList'SortField
    , TargetableRemarketingListsList'SortField (..)

    -- ** PlacementGroupsList'SortOrder
    , PlacementGroupsList'SortOrder (..)

    -- ** CreativeRotation
    , CreativeRotation
    , creativeRotation
    , crWeightCalculationStrategy
    , crCreativeAssignments
    , crCreativeOptimizationConfigurationId
    , crType

    -- ** SubaccountsListResponse
    , SubaccountsListResponse
    , subaccountsListResponse
    , subNextPageToken
    , subKind
    , subSubaccounts

    -- ** AccountActiveAdsLimitTier
    , AccountActiveAdsLimitTier (..)

    -- ** TechnologyTargeting
    , TechnologyTargeting
    , technologyTargeting
    , ttMobileCarriers
    , ttOperatingSystemVersions
    , ttPlatformTypes
    , ttBrowsers
    , ttConnectionTypes
    , ttOperatingSystems

    -- ** CreativeAssetWindowMode
    , CreativeAssetWindowMode (..)

    -- ** ListPopulationRule
    , ListPopulationRule
    , listPopulationRule
    , lprFloodlightActivityName
    , lprFloodlightActivityId
    , lprListPopulationClauses

    -- ** PlacementsList'PricingTypes
    , PlacementsList'PricingTypes (..)

    -- ** DateRangeRelativeDateRange
    , DateRangeRelativeDateRange (..)

    -- ** EventTagsList'SortOrder
    , EventTagsList'SortOrder (..)

    -- ** TagDataFormat
    , TagDataFormat (..)

    -- ** ChangeLog
    , ChangeLog
    , changeLog
    , clUserProfileId
    , clObjectType
    , clUserProfileName
    , clKind
    , clObjectId
    , clAction
    , clTransactionId
    , clOldValue
    , clAccountId
    , clNewValue
    , clFieldName
    , clId
    , clSubaccountId
    , clChangeTime

    -- ** UserProfile
    , UserProfile
    , userProfile
    , upEtag
    , upKind
    , upAccountName
    , upProfileId
    , upUserName
    , upAccountId
    , upSubAccountName
    , upSubAccountId

    -- ** OperatingSystemsListResponse
    , OperatingSystemsListResponse
    , operatingSystemsListResponse
    , oslrKind
    , oslrOperatingSystems

    -- ** PostalCodesListResponse
    , PostalCodesListResponse
    , postalCodesListResponse
    , pclrKind
    , pclrPostalCodes

    -- ** CreativeAssetDisplayType
    , CreativeAssetDisplayType (..)

    -- ** PlacementStrategiesList'SortField
    , PlacementStrategiesList'SortField (..)

    -- ** EventTagOverride
    , EventTagOverride
    , eventTagOverride
    , etoEnabled
    , etoId

    -- ** AccountUserProfilesList'SortOrder
    , AccountUserProfilesList'SortOrder (..)

    -- ** AdvertiserStatus
    , AdvertiserStatus (..)

    -- ** CreativeAssetChildAssetType
    , CreativeAssetChildAssetType (..)

    -- ** PlacementStrategy
    , PlacementStrategy
    , placementStrategy
    , psKind
    , psAccountId
    , psName
    , psId

    -- ** FloodlightActivityCountingMethod
    , FloodlightActivityCountingMethod (..)

    -- ** AccountPermission
    , AccountPermission
    , accountPermission
    , acccKind
    , acccAccountProfiles
    , acccName
    , acccId
    , acccLevel
    , acccPermissionGroupId

    -- ** OrderDocumentType
    , OrderDocumentType (..)

    -- ** OperatingSystemVersion
    , OperatingSystemVersion
    , operatingSystemVersion
    , osvMinorVersion
    , osvKind
    , osvOperatingSystem
    , osvMajorVersion
    , osvName
    , osvId

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
    , trlSubaccountId
    , trlDescription

    -- ** DirectorySiteItemInpageTagFormats
    , DirectorySiteItemInpageTagFormats (..)

    -- ** PricingCapCostType
    , PricingCapCostType (..)

    -- ** CreativesList'SortOrder
    , CreativesList'SortOrder (..)

    -- ** TagSettingKeywordOption
    , TagSettingKeywordOption (..)

    -- ** ReportDimensionCrossDimensionReachCriteria
    , ReportDimensionCrossDimensionReachCriteria (..)

    -- ** Size
    , Size
    , size
    , sizHeight
    , sizKind
    , sizWidth
    , sizIab
    , sizId

    -- ** CreativeAuthoringTool
    , CreativeAuthoringTool (..)

    -- ** ReportsConfiguration
    , ReportsConfiguration
    , reportsConfiguration
    , rcExposureToConversionEnabled
    , rcReportGenerationTimeZoneId
    , rcLookbackConfiguration

    -- ** PlacementStrategiesListResponse
    , PlacementStrategiesListResponse
    , placementStrategiesListResponse
    , pslrPlacementStrategies
    , pslrNextPageToken
    , pslrKind

    -- ** CreativeGroupsList'SortOrder
    , CreativeGroupsList'SortOrder (..)

    -- ** CreativeAssetIdType
    , CreativeAssetIdType (..)

    -- ** Project
    , Project
    , project
    , proTargetClicks
    , proClientBillingCode
    , proTargetCpmNanos
    , proTargetConversions
    , proBudget
    , proKind
    , proAdvertiserId
    , proEndDate
    , proOverview
    , proTargetImpressions
    , proStartDate
    , proTargetCpcNanos
    , proAccountId
    , proName
    , proLastModifiedInfo
    , proId
    , proAudienceAgeGroup
    , proSubaccountId
    , proAudienceGender
    , proClientName
    , proTargetCpaNanos

    -- ** OrderContactContactType
    , OrderContactContactType (..)

    -- ** RemarketingListListSource
    , RemarketingListListSource (..)

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

    -- ** ContentCategoriesList'SortOrder
    , ContentCategoriesList'SortOrder (..)

    -- ** Ad
    , Ad
    , ad
    , addCreativeGroupAssignments
    , addGeoTargeting
    , addCreativeRotation
    , addTechnologyTargeting
    , addAudienceSegmentId
    , addDayPartTargeting
    , addSize
    , addStartTime
    , addKind
    , addClickThroughUrlSuffixProperties
    , addCampaignIdDimensionValue
    , addAdvertiserId
    , addAdvertiserIdDimensionValue
    , addSslCompliant
    , addCampaignId
    , addIdDimensionValue
    , addClickThroughUrl
    , addDeliverySchedule
    , addEventTagOverrides
    , addActive
    , addAccountId
    , addName
    , addKeyValueTargetingExpression
    , addEndTime
    , addCreateInfo
    , addLastModifiedInfo
    , addId
    , addSslRequired
    , addComments
    , addSubaccountId
    , addType
    , addRemarketingListExpression
    , addDynamicClickTracker
    , addCompatibility
    , addArchived
    , addDefaultClickThroughEventTagProperties
    , addPlacementAssignments

    -- ** ReportType
    , ReportType (..)

    -- ** FloodlightActivitiesList'SortField
    , FloodlightActivitiesList'SortField (..)

    -- ** PopupWindowPropertiesPositionType
    , PopupWindowPropertiesPositionType (..)

    -- ** InventoryItemsListResponse
    , InventoryItemsListResponse
    , inventoryItemsListResponse
    , iilrInventoryItems
    , iilrNextPageToken
    , iilrKind

    -- ** ObjectFilter
    , ObjectFilter
    , objectFilter
    , ofStatus
    , ofKind
    , ofObjectIds

    -- ** CreativesList'Types
    , CreativesList'Types (..)

    -- ** FileUrls
    , FileUrls
    , fileUrls
    , fuBrowserUrl
    , fuApiUrl

    -- ** ProjectAudienceGender
    , ProjectAudienceGender (..)

    -- ** CreativeCustomEventAdvertiserCustomEventType
    , CreativeCustomEventAdvertiserCustomEventType (..)

    -- ** Subaccount
    , Subaccount
    , subaccount
    , ssKind
    , ssAvailablePermissionIds
    , ssAccountId
    , ssName
    , ssId

    -- ** CampaignCreativeAssociationsList'SortOrder
    , CampaignCreativeAssociationsList'SortOrder (..)

    -- ** ChangeLogsListResponse
    , ChangeLogsListResponse
    , changeLogsListResponse
    , cllrNextPageToken
    , cllrKind
    , cllrChangeLogs

    -- ** AdCompatibility
    , AdCompatibility (..)

    -- ** OperatingSystem
    , OperatingSystem
    , operatingSystem
    , osDesktop
    , osKind
    , osName
    , osMobile
    , osDartId

    -- ** UserRolesList'SortField
    , UserRolesList'SortField (..)

    -- ** PostalCode
    , PostalCode
    , postalCode
    , pcKind
    , pcCode
    , pcCountryCode
    , pcId
    , pcCountryDartId

    -- ** DeliverySchedulePriority
    , DeliverySchedulePriority (..)

    -- ** AdvertisersList'SortField
    , AdvertisersList'SortField (..)

    -- ** ReportEmailOwnerDeliveryTypeDelivery
    , ReportEmailOwnerDeliveryTypeDelivery (..)

    -- ** ProjectsList'SortField
    , ProjectsList'SortField (..)

    -- ** AccountsList'SortOrder
    , AccountsList'SortOrder (..)

    -- ** TargetableRemarketingListsListResponse
    , TargetableRemarketingListsListResponse
    , targetableRemarketingListsListResponse
    , trllrNextPageToken
    , trllrKind
    , trllrTargetableRemarketingLists

    -- ** AudienceSegmentGroup
    , AudienceSegmentGroup
    , audienceSegmentGroup
    , asgAudienceSegments
    , asgName
    , asgId

    -- ** CitiesListResponse
    , CitiesListResponse
    , citiesListResponse
    , citKind
    , citCities

    -- ** SiteContactContactType
    , SiteContactContactType (..)

    -- ** CustomRichMediaEvents
    , CustomRichMediaEvents
    , customRichMediaEvents
    , crmeKind
    , crmeFilteredEventIds

    -- ** AccountPermissionsListResponse
    , AccountPermissionsListResponse
    , accountPermissionsListResponse
    , aplrKind
    , aplrAccountPermissions

    -- ** Flight
    , Flight
    , flight
    , fRateOrCost
    , fEndDate
    , fStartDate
    , fUnits

    -- ** Country
    , Country
    , country
    , couKind
    , couName
    , couCountryCode
    , couDartId
    , couSslEnabled

    -- ** RemarketingListsList'SortOrder
    , RemarketingListsList'SortOrder (..)

    -- ** Dimension
    , Dimension
    , dimension
    , dKind
    , dName

    -- ** PlacementGroupsList'PricingTypes
    , PlacementGroupsList'PricingTypes (..)

    -- ** Pricing
    , Pricing
    , pricing
    , pEndDate
    , pStartDate
    , pGroupType
    , pPricingType
    , pFlights
    , pCapCostType

    -- ** OperatingSystemVersionsListResponse
    , OperatingSystemVersionsListResponse
    , operatingSystemVersionsListResponse
    , osvlrKind
    , osvlrOperatingSystemVersions

    -- ** AccountAccountProfile
    , AccountAccountProfile (..)

    -- ** ClickThroughUrlSuffixProperties
    , ClickThroughUrlSuffixProperties
    , clickThroughUrlSuffixProperties
    , ctuspOverrideInheritedSuffix
    , ctuspClickThroughUrlSuffix

    -- ** AccountsListResponse
    , AccountsListResponse
    , accountsListResponse
    , accNextPageToken
    , accAccounts
    , accKind

    -- ** PlacementGroupsList'SortField
    , PlacementGroupsList'SortField (..)

    -- ** DimensionValueMatchType
    , DimensionValueMatchType (..)

    -- ** EventTagsList'SortField
    , EventTagsList'SortField (..)

    -- ** ReportItemRepeatsOnWeekDaysSchedule
    , ReportItemRepeatsOnWeekDaysSchedule (..)

    -- ** Creative
    , Creative
    , creative
    , c1ConvertFlashToHtml5
    , c1BackupImageTargetWindow
    , c1RenderingIdDimensionValue
    , c1CustomKeyValues
    , c1VideoDuration
    , c1RenderingId
    , c1ThirdPartyBackupImageImpressionsUrl
    , c1FsCommand
    , c1AllowScriptAccess
    , c1HtmlCodeLocked
    , c1RequiredFlashPluginVersion
    , c1AuthoringTool
    , c1Size
    , c1ThirdPartyUrls
    , c1CounterCustomEvents
    , c1Kind
    , c1SslOverride
    , c1HtmlCode
    , c1AdvertiserId
    , c1RequiredFlashVersion
    , c1BackgroundColor
    , c1AdTagKeys
    , c1Skippable
    , c1SslCompliant
    , c1IdDimensionValue
    , c1BackupImageReportingLabel
    , c1CommercialId
    , c1Active
    , c1ExitCustomEvents
    , c1AccountId
    , c1BackupImageClickThroughUrl
    , c1Name
    , c1OverrideCss
    , c1VideoDescription
    , c1ClickTags
    , c1AdParameters
    , c1Version
    , c1LatestTraffickedCreativeId
    , c1ThirdPartyRichMediaImpressionsUrl
    , c1LastModifiedInfo
    , c1Id
    , c1StudioAdvertiserId
    , c1CreativeAssets
    , c1SubaccountId
    , c1Type
    , c1TimerCustomEvents
    , c1StudioCreativeId
    , c1Compatibility
    , c1BackupImageFeatures
    , c1ArtworkType
    , c1Archived
    , c1CompanionCreatives
    , c1TotalFileSize
    , c1StudioTraffickedCreativeId
    , c1RedirectUrl
    , c1AutoAdvanceImages
    , c1CreativeFieldAssignments

    -- ** DirectorySiteContactsList'SortOrder
    , DirectorySiteContactsList'SortOrder (..)

    -- ** CreativeFieldValuesList'SortOrder
    , CreativeFieldValuesList'SortOrder (..)

    -- ** UserDefinedVariableConfigurationVariableType
    , UserDefinedVariableConfigurationVariableType (..)

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

    -- ** DimensionValue
    , DimensionValue
    , dimensionValue
    , dvEtag
    , dvKind
    , dvValue
    , dvMatchType
    , dvDimensionName
    , dvId

    -- ** CreativeItemBackupImageFeatures
    , CreativeItemBackupImageFeatures (..)

    -- ** FilesList'SortField
    , FilesList'SortField (..)

    -- ** CreativeItemCompatibility
    , CreativeItemCompatibility (..)

    -- ** PlacementTag
    , PlacementTag
    , placementTag
    , ptPlacementId
    , ptTagDatas

    -- ** RemarketingListsListResponse
    , RemarketingListsListResponse
    , remarketingListsListResponse
    , rllrNextPageToken
    , rllrRemarketingLists
    , rllrKind

    -- ** UserRolePermissionGroupsListResponse
    , UserRolePermissionGroupsListResponse
    , userRolePermissionGroupsListResponse
    , urpglrUserRolePermissionGroups
    , urpglrKind

    -- ** TargetableRemarketingListsList'SortOrder
    , TargetableRemarketingListsList'SortOrder (..)

    -- ** Activities
    , Activities
    , activities
    , actKind
    , actMetricNames
    , actFilters

    -- ** AccountUserProfile
    , AccountUserProfile
    , accountUserProfile
    , aupEmail
    , aupUserRoleFilter
    , aupAdvertiserFilter
    , aupUserRoleId
    , aupKind
    , aupLocale
    , aupSiteFilter
    , aupTraffickerType
    , aupActive
    , aupAccountId
    , aupName
    , aupId
    , aupUserAccessType
    , aupComments
    , aupSubaccountId
    , aupCampaignFilter

    -- ** DateRange
    , DateRange
    , dateRange
    , drKind
    , drEndDate
    , drStartDate
    , drRelativeDateRange

    -- ** SitesList'SortField
    , SitesList'SortField (..)

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
    , oSubaccountId
    , oNotes
    , oContacts
    , oSiteId
    , oTermsAndConditions
    , oApproverUserProfileIds

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

    -- ** PlacementStatus
    , PlacementStatus (..)

    -- ** CreativeGroupsListResponse
    , CreativeGroupsListResponse
    , creativeGroupsListResponse
    , cglrCreativeGroups
    , cglrNextPageToken
    , cglrKind

    -- ** CreativeAssetArtworkType
    , CreativeAssetArtworkType (..)

    -- ** PlacementsGeneratetags'TagFormats
    , PlacementsGeneratetags'TagFormats (..)

    -- ** InventoryItemsList'SortOrder
    , InventoryItemsList'SortOrder (..)

    -- ** CreativeAssetMetadata
    , CreativeAssetMetadata
    , creativeAssetMetadata
    , camaKind
    , camaAssetIdentifier
    , camaClickTags
    , camaWarnedValidationRules
    , camaDetectedFeatures

    -- ** PlacementGroup
    , PlacementGroup
    , placementGroup
    , pg1PlacementStrategyId
    , pg1SiteIdDimensionValue
    , pg1PricingSchedule
    , pg1Kind
    , pg1CampaignIdDimensionValue
    , pg1AdvertiserId
    , pg1AdvertiserIdDimensionValue
    , pg1CampaignId
    , pg1IdDimensionValue
    , pg1PlacementGroupType
    , pg1ContentCategoryId
    , pg1DirectorySiteIdDimensionValue
    , pg1AccountId
    , pg1Name
    , pg1DirectorySiteId
    , pg1CreateInfo
    , pg1ChildPlacementIds
    , pg1LastModifiedInfo
    , pg1Id
    , pg1PrimaryPlacementId
    , pg1SubaccountId
    , pg1ExternalId
    , pg1Comment
    , pg1PrimaryPlacementIdDimensionValue
    , pg1SiteId
    , pg1Archived

    -- ** CampaignCreativeAssociationsListResponse
    , CampaignCreativeAssociationsListResponse
    , campaignCreativeAssociationsListResponse
    , ccalrCampaignCreativeAssociations
    , ccalrNextPageToken
    , ccalrKind

    -- ** CreativeArtworkType
    , CreativeArtworkType (..)

    -- ** LandingPagesListResponse
    , LandingPagesListResponse
    , landingPagesListResponse
    , lplrLandingPages
    , lplrKind

    -- ** ConnectionType
    , ConnectionType
    , connectionType
    , conKind
    , conName
    , conId

    -- ** UserDefinedVariableConfiguration
    , UserDefinedVariableConfiguration
    , userDefinedVariableConfiguration
    , udvcReportName
    , udvcDataType
    , udvcVariableType

    -- ** OmnitureSettings
    , OmnitureSettings
    , omnitureSettings
    , osOmnitureCostDataEnabled
    , osOmnitureIntegrationEnabled

    -- ** CreativeRotationWeightCalculationStrategy
    , CreativeRotationWeightCalculationStrategy (..)

    -- ** FrequencyCap
    , FrequencyCap
    , frequencyCap
    , fcImpressions
    , fcDuration

    -- ** FileFormat
    , FileFormat (..)

    -- ** MobileCarriersListResponse
    , MobileCarriersListResponse
    , mobileCarriersListResponse
    , mclrMobileCarriers
    , mclrKind

    -- ** ReportCriteria
    , ReportCriteria
    , reportCriteria
    , rcMetricNames
    , rcCustomRichMediaEvents
    , rcDimensionFilters
    , rcActivities
    , rcDateRange
    , rcDimensions

    -- ** UserRolePermission
    , UserRolePermission
    , userRolePermission
    , uKind
    , uAvailability
    , uName
    , uId
    , uPermissionGroupId

    -- ** ReportsFilesList'SortField
    , ReportsFilesList'SortField (..)

    -- ** ProjectAudienceAgeGroup
    , ProjectAudienceAgeGroup (..)

    -- ** EventTag
    , EventTag
    , eventTag
    , etStatus
    , etExcludeFromAdxRequests
    , etEnabledByDefault
    , etKind
    , etCampaignIdDimensionValue
    , etAdvertiserId
    , etUrl
    , etAdvertiserIdDimensionValue
    , etSslCompliant
    , etCampaignId
    , etAccountId
    , etName
    , etUrlEscapeLevels
    , etSiteIds
    , etId
    , etSubaccountId
    , etType
    , etSiteFilterType

    -- ** AdsList'Compatibility
    , AdsList'Compatibility (..)

    -- ** CreativeAssetId
    , CreativeAssetId
    , creativeAssetId
    , caiName
    , caiType

    -- ** File
    , File
    , file
    , filStatus
    , filEtag
    , filKind
    , filUrls
    , filReportId
    , filDateRange
    , filFormat
    , filLastModifiedTime
    , filId
    , filFileName

    -- ** PricingSchedulePricingType
    , PricingSchedulePricingType (..)

    -- ** OrderContact
    , OrderContact
    , orderContact
    , ocSignatureUserProfileId
    , ocContactName
    , ocContactTitle
    , ocContactType
    , ocContactInfo

    -- ** CreativeSettings
    , CreativeSettings
    , creativeSettings
    , csIFrameHeader
    , csIFrameFooter

    -- ** CreativeGroupsList'SortField
    , CreativeGroupsList'SortField (..)

    -- ** ContentCategory
    , ContentCategory
    , contentCategory
    , cccKind
    , cccAccountId
    , cccName
    , cccId

    -- ** CreativesListResponse
    , CreativesListResponse
    , creativesListResponse
    , creNextPageToken
    , creKind
    , creCreatives

    -- ** CreativeCustomEventArtworkType
    , CreativeCustomEventArtworkType (..)

    -- ** Account
    , Account
    , account
    , a1AccountPermissionIds
    , a1MaximumImageSize
    , a1CurrencyId
    , a1ReportsConfiguration
    , a1NielsenOcrEnabled
    , a1Kind
    , a1Locale
    , a1Active
    , a1AvailablePermissionIds
    , a1TeaserSizeLimit
    , a1ComscoreVceEnabled
    , a1ActiveViewOptOut
    , a1Name
    , a1AccountProfile
    , a1Id
    , a1CountryId
    , a1ActiveAdsLimitTier
    , a1DefaultCreativeSizeId
    , a1Description

    -- ** AccountUserProfilesListResponse
    , AccountUserProfilesListResponse
    , accountUserProfilesListResponse
    , auplrNextPageToken
    , auplrAccountUserProfiles
    , auplrKind

    -- ** AccountUserProfileTraffickerType
    , AccountUserProfileTraffickerType (..)

    -- ** FloodlightActivitiesList'SortOrder
    , FloodlightActivitiesList'SortOrder (..)

    -- ** RemarketingList
    , RemarketingList
    , remarketingList
    , remListSize
    , remListPopulationRule
    , remLifeSpan
    , remKind
    , remAdvertiserId
    , remAdvertiserIdDimensionValue
    , remActive
    , remAccountId
    , remName
    , remListSource
    , remId
    , remSubaccountId
    , remDescription

    -- ** UserRolePermissionGroup
    , UserRolePermissionGroup
    , userRolePermissionGroup
    , useKind
    , useName
    , useId

    -- ** DeliverySchedule
    , DeliverySchedule
    , deliverySchedule
    , dsHardCutoff
    , dsPriority
    , dsImpressionRatio
    , dsFrequencyCap

    -- ** ReportReportPropertiesFloodlightCriteria
    , ReportReportPropertiesFloodlightCriteria
    , reportReportPropertiesFloodlightCriteria
    , rrpfcIncludeUnattributedIPConversions
    , rrpfcIncludeUnattributedCookieConversions
    , rrpfcIncludeAttributedIPConversions

    -- ** FloodlightReportCompatibleFields
    , FloodlightReportCompatibleFields
    , floodlightReportCompatibleFields
    , frcfMetrics
    , frcfKind
    , frcfDimensionFilters
    , frcfDimensions

    -- ** ReportCompatibleFields
    , ReportCompatibleFields
    , reportCompatibleFields
    , rcfMetrics
    , rcfKind
    , rcfDimensionFilters
    , rcfPivotedActivityMetrics
    , rcfDimensions

    -- ** FileStatus
    , FileStatus (..)

    -- ** ContentCategoriesList'SortField
    , ContentCategoriesList'SortField (..)

    -- ** FloodlightActivityGroupType
    , FloodlightActivityGroupType (..)

    -- ** EventTagStatus
    , EventTagStatus (..)

    -- ** DimensionValueList
    , DimensionValueList
    , dimensionValueList
    , dvlEtag
    , dvlNextPageToken
    , dvlKind
    , dvlItems

    -- ** FilesList'Scope
    , FilesList'Scope (..)
    ) where

import           Network.Google.API.DFAReporting.AccountActiveAdSummaries.Get
import           Network.Google.API.DFAReporting.AccountPermissionGroups.Get
import           Network.Google.API.DFAReporting.AccountPermissionGroups.List
import           Network.Google.API.DFAReporting.AccountPermissions.Get
import           Network.Google.API.DFAReporting.AccountPermissions.List
import           Network.Google.API.DFAReporting.Accounts.Get
import           Network.Google.API.DFAReporting.Accounts.List
import           Network.Google.API.DFAReporting.Accounts.Patch
import           Network.Google.API.DFAReporting.Accounts.Update
import           Network.Google.API.DFAReporting.AccountUserProfiles.Get
import           Network.Google.API.DFAReporting.AccountUserProfiles.Insert
import           Network.Google.API.DFAReporting.AccountUserProfiles.List
import           Network.Google.API.DFAReporting.AccountUserProfiles.Patch
import           Network.Google.API.DFAReporting.AccountUserProfiles.Update
import           Network.Google.API.DFAReporting.Ads.Get
import           Network.Google.API.DFAReporting.Ads.Insert
import           Network.Google.API.DFAReporting.Ads.List
import           Network.Google.API.DFAReporting.Ads.Patch
import           Network.Google.API.DFAReporting.Ads.Update
import           Network.Google.API.DFAReporting.AdvertiserGroups.Delete
import           Network.Google.API.DFAReporting.AdvertiserGroups.Get
import           Network.Google.API.DFAReporting.AdvertiserGroups.Insert
import           Network.Google.API.DFAReporting.AdvertiserGroups.List
import           Network.Google.API.DFAReporting.AdvertiserGroups.Patch
import           Network.Google.API.DFAReporting.AdvertiserGroups.Update
import           Network.Google.API.DFAReporting.Advertisers.Get
import           Network.Google.API.DFAReporting.Advertisers.Insert
import           Network.Google.API.DFAReporting.Advertisers.List
import           Network.Google.API.DFAReporting.Advertisers.Patch
import           Network.Google.API.DFAReporting.Advertisers.Update
import           Network.Google.API.DFAReporting.Browsers.List
import           Network.Google.API.DFAReporting.CampaignCreativeAssociations.Insert
import           Network.Google.API.DFAReporting.CampaignCreativeAssociations.List
import           Network.Google.API.DFAReporting.Campaigns.Get
import           Network.Google.API.DFAReporting.Campaigns.Insert
import           Network.Google.API.DFAReporting.Campaigns.List
import           Network.Google.API.DFAReporting.Campaigns.Patch
import           Network.Google.API.DFAReporting.Campaigns.Update
import           Network.Google.API.DFAReporting.ChangeLogs.Get
import           Network.Google.API.DFAReporting.ChangeLogs.List
import           Network.Google.API.DFAReporting.Cities.List
import           Network.Google.API.DFAReporting.ConnectionTypes.Get
import           Network.Google.API.DFAReporting.ConnectionTypes.List
import           Network.Google.API.DFAReporting.ContentCategories.Delete
import           Network.Google.API.DFAReporting.ContentCategories.Get
import           Network.Google.API.DFAReporting.ContentCategories.Insert
import           Network.Google.API.DFAReporting.ContentCategories.List
import           Network.Google.API.DFAReporting.ContentCategories.Patch
import           Network.Google.API.DFAReporting.ContentCategories.Update
import           Network.Google.API.DFAReporting.Countries.Get
import           Network.Google.API.DFAReporting.Countries.List
import           Network.Google.API.DFAReporting.CreativeAssets.Insert
import           Network.Google.API.DFAReporting.CreativeFields.Delete
import           Network.Google.API.DFAReporting.CreativeFields.Get
import           Network.Google.API.DFAReporting.CreativeFields.Insert
import           Network.Google.API.DFAReporting.CreativeFields.List
import           Network.Google.API.DFAReporting.CreativeFields.Patch
import           Network.Google.API.DFAReporting.CreativeFields.Update
import           Network.Google.API.DFAReporting.CreativeFieldValues.Delete
import           Network.Google.API.DFAReporting.CreativeFieldValues.Get
import           Network.Google.API.DFAReporting.CreativeFieldValues.Insert
import           Network.Google.API.DFAReporting.CreativeFieldValues.List
import           Network.Google.API.DFAReporting.CreativeFieldValues.Patch
import           Network.Google.API.DFAReporting.CreativeFieldValues.Update
import           Network.Google.API.DFAReporting.CreativeGroups.Get
import           Network.Google.API.DFAReporting.CreativeGroups.Insert
import           Network.Google.API.DFAReporting.CreativeGroups.List
import           Network.Google.API.DFAReporting.CreativeGroups.Patch
import           Network.Google.API.DFAReporting.CreativeGroups.Update
import           Network.Google.API.DFAReporting.Creatives.Get
import           Network.Google.API.DFAReporting.Creatives.Insert
import           Network.Google.API.DFAReporting.Creatives.List
import           Network.Google.API.DFAReporting.Creatives.Patch
import           Network.Google.API.DFAReporting.Creatives.Update
import           Network.Google.API.DFAReporting.DimensionValues.Query
import           Network.Google.API.DFAReporting.DirectorySiteContacts.Get
import           Network.Google.API.DFAReporting.DirectorySiteContacts.List
import           Network.Google.API.DFAReporting.DirectorySites.Get
import           Network.Google.API.DFAReporting.DirectorySites.Insert
import           Network.Google.API.DFAReporting.DirectorySites.List
import           Network.Google.API.DFAReporting.EventTags.Delete
import           Network.Google.API.DFAReporting.EventTags.Get
import           Network.Google.API.DFAReporting.EventTags.Insert
import           Network.Google.API.DFAReporting.EventTags.List
import           Network.Google.API.DFAReporting.EventTags.Patch
import           Network.Google.API.DFAReporting.EventTags.Update
import           Network.Google.API.DFAReporting.Files.Get
import           Network.Google.API.DFAReporting.Files.List
import           Network.Google.API.DFAReporting.FloodlightActivities.Delete
import           Network.Google.API.DFAReporting.FloodlightActivities.Generatetag
import           Network.Google.API.DFAReporting.FloodlightActivities.Get
import           Network.Google.API.DFAReporting.FloodlightActivities.Insert
import           Network.Google.API.DFAReporting.FloodlightActivities.List
import           Network.Google.API.DFAReporting.FloodlightActivities.Patch
import           Network.Google.API.DFAReporting.FloodlightActivities.Update
import           Network.Google.API.DFAReporting.FloodlightActivityGroups.Delete
import           Network.Google.API.DFAReporting.FloodlightActivityGroups.Get
import           Network.Google.API.DFAReporting.FloodlightActivityGroups.Insert
import           Network.Google.API.DFAReporting.FloodlightActivityGroups.List
import           Network.Google.API.DFAReporting.FloodlightActivityGroups.Patch
import           Network.Google.API.DFAReporting.FloodlightActivityGroups.Update
import           Network.Google.API.DFAReporting.FloodlightConfigurations.Get
import           Network.Google.API.DFAReporting.FloodlightConfigurations.List
import           Network.Google.API.DFAReporting.FloodlightConfigurations.Patch
import           Network.Google.API.DFAReporting.FloodlightConfigurations.Update
import           Network.Google.API.DFAReporting.InventoryItems.Get
import           Network.Google.API.DFAReporting.InventoryItems.List
import           Network.Google.API.DFAReporting.LandingPages.Delete
import           Network.Google.API.DFAReporting.LandingPages.Get
import           Network.Google.API.DFAReporting.LandingPages.Insert
import           Network.Google.API.DFAReporting.LandingPages.List
import           Network.Google.API.DFAReporting.LandingPages.Patch
import           Network.Google.API.DFAReporting.LandingPages.Update
import           Network.Google.API.DFAReporting.Metros.List
import           Network.Google.API.DFAReporting.MobileCarriers.Get
import           Network.Google.API.DFAReporting.MobileCarriers.List
import           Network.Google.API.DFAReporting.OperatingSystems.Get
import           Network.Google.API.DFAReporting.OperatingSystems.List
import           Network.Google.API.DFAReporting.OperatingSystemVersions.Get
import           Network.Google.API.DFAReporting.OperatingSystemVersions.List
import           Network.Google.API.DFAReporting.OrderDocuments.Get
import           Network.Google.API.DFAReporting.OrderDocuments.List
import           Network.Google.API.DFAReporting.Orders.Get
import           Network.Google.API.DFAReporting.Orders.List
import           Network.Google.API.DFAReporting.PlacementGroups.Get
import           Network.Google.API.DFAReporting.PlacementGroups.Insert
import           Network.Google.API.DFAReporting.PlacementGroups.List
import           Network.Google.API.DFAReporting.PlacementGroups.Patch
import           Network.Google.API.DFAReporting.PlacementGroups.Update
import           Network.Google.API.DFAReporting.Placements.Generatetags
import           Network.Google.API.DFAReporting.Placements.Get
import           Network.Google.API.DFAReporting.Placements.Insert
import           Network.Google.API.DFAReporting.Placements.List
import           Network.Google.API.DFAReporting.Placements.Patch
import           Network.Google.API.DFAReporting.Placements.Update
import           Network.Google.API.DFAReporting.PlacementStrategies.Delete
import           Network.Google.API.DFAReporting.PlacementStrategies.Get
import           Network.Google.API.DFAReporting.PlacementStrategies.Insert
import           Network.Google.API.DFAReporting.PlacementStrategies.List
import           Network.Google.API.DFAReporting.PlacementStrategies.Patch
import           Network.Google.API.DFAReporting.PlacementStrategies.Update
import           Network.Google.API.DFAReporting.PlatformTypes.Get
import           Network.Google.API.DFAReporting.PlatformTypes.List
import           Network.Google.API.DFAReporting.PostalCodes.Get
import           Network.Google.API.DFAReporting.PostalCodes.List
import           Network.Google.API.DFAReporting.Projects.Get
import           Network.Google.API.DFAReporting.Projects.List
import           Network.Google.API.DFAReporting.Regions.List
import           Network.Google.API.DFAReporting.RemarketingLists.Get
import           Network.Google.API.DFAReporting.RemarketingLists.Insert
import           Network.Google.API.DFAReporting.RemarketingLists.List
import           Network.Google.API.DFAReporting.RemarketingLists.Patch
import           Network.Google.API.DFAReporting.RemarketingLists.Update
import           Network.Google.API.DFAReporting.RemarketingListShares.Get
import           Network.Google.API.DFAReporting.RemarketingListShares.Patch
import           Network.Google.API.DFAReporting.RemarketingListShares.Update
import           Network.Google.API.DFAReporting.Reports.CompatibleFields.Query
import           Network.Google.API.DFAReporting.Reports.Files.Get
import           Network.Google.API.DFAReporting.Reports.Files.List
import           Network.Google.API.DFAReporting.Sites.Get
import           Network.Google.API.DFAReporting.Sites.Insert
import           Network.Google.API.DFAReporting.Sites.List
import           Network.Google.API.DFAReporting.Sites.Patch
import           Network.Google.API.DFAReporting.Sites.Update
import           Network.Google.API.DFAReporting.Sizes.Get
import           Network.Google.API.DFAReporting.Sizes.Insert
import           Network.Google.API.DFAReporting.Sizes.List
import           Network.Google.API.DFAReporting.Subaccounts.Get
import           Network.Google.API.DFAReporting.Subaccounts.Insert
import           Network.Google.API.DFAReporting.Subaccounts.List
import           Network.Google.API.DFAReporting.Subaccounts.Patch
import           Network.Google.API.DFAReporting.Subaccounts.Update
import           Network.Google.API.DFAReporting.TargetableRemarketingLists.Get
import           Network.Google.API.DFAReporting.TargetableRemarketingLists.List
import           Network.Google.API.DFAReporting.UserProfiles.Get
import           Network.Google.API.DFAReporting.UserProfiles.List
import           Network.Google.API.DFAReporting.UserRolePermissionGroups.Get
import           Network.Google.API.DFAReporting.UserRolePermissionGroups.List
import           Network.Google.API.DFAReporting.UserRolePermissions.Get
import           Network.Google.API.DFAReporting.UserRolePermissions.List
import           Network.Google.API.DFAReporting.UserRoles.Delete
import           Network.Google.API.DFAReporting.UserRoles.Get
import           Network.Google.API.DFAReporting.UserRoles.Insert
import           Network.Google.API.DFAReporting.UserRoles.List
import           Network.Google.API.DFAReporting.UserRoles.Patch
import           Network.Google.API.DFAReporting.UserRoles.Update
import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

{- $resources
TODO
-}

type DFAReporting =
     EventTagsInsertAPI :<|> AdvertisersPatchAPI :<|>
       AccountActiveAdSummariesGetAPI
       :<|> CreativeGroupsUpdateAPI
       :<|> AdvertiserGroupsInsertAPI
       :<|> AccountsListAPI
       :<|> CreativeFieldValuesUpdateAPI
       :<|> FloodlightActivitiesInsertAPI
       :<|> ContentCategoriesUpdateAPI
       :<|> AccountPermissionGroupsGetAPI
       :<|> DirectorySitesInsertAPI
       :<|> PlatformTypesGetAPI
       :<|> ChangeLogsGetAPI
       :<|> FloodlightActivitiesPatchAPI
       :<|> CampaignsGetAPI
       :<|> OperatingSystemVersionsGetAPI
       :<|> LandingPagesListAPI
       :<|> AccountPermissionsListAPI
       :<|> EventTagsPatchAPI
       :<|> MobileCarriersGetAPI
       :<|> PlacementStrategiesDeleteAPI
       :<|> AdvertiserGroupsPatchAPI
       :<|> ConnectionTypesListAPI
       :<|> AccountsUpdateAPI
       :<|> AdsListAPI
       :<|> ProjectsListAPI
       :<|> FloodlightActivitiesGeneratetagAPI
       :<|> CreativesListAPI
       :<|> AdsGetAPI
       :<|> CreativesGetAPI
       :<|> ProjectsGetAPI
       :<|> DimensionValuesQueryAPI
       :<|> ReportsFilesListAPI
       :<|> LandingPagesDeleteAPI
       :<|> ReportsFilesGetAPI
       :<|> CampaignCreativeAssociationsInsertAPI
       :<|> PlacementsGeneratetagsAPI
       :<|> PlacementGroupsInsertAPI
       :<|> FloodlightActivityGroupsGetAPI
       :<|> AdvertisersInsertAPI
       :<|> TargetableRemarketingListsGetAPI
       :<|> FloodlightConfigurationsPatchAPI
       :<|> CreativeFieldsDeleteAPI
       :<|> DirectorySiteContactsGetAPI
       :<|> AccountUserProfilesUpdateAPI
       :<|> PostalCodesListAPI
       :<|> FilesListAPI
       :<|> OperatingSystemsListAPI
       :<|> UserRolesDeleteAPI
       :<|> RemarketingListSharesPatchAPI
       :<|> SizesInsertAPI
       :<|> PlatformTypesListAPI
       :<|> ReportsCompatibleFieldsQueryAPI
       :<|> UserRolesGetAPI
       :<|> PlacementsGetAPI
       :<|> AdsPatchAPI
       :<|> FloodlightActivityGroupsInsertAPI
       :<|> AccountPermissionGroupsListAPI
       :<|> LandingPagesUpdateAPI
       :<|> CreativesPatchAPI
       :<|> CreativeFieldsGetAPI
       :<|> CreativeGroupsPatchAPI
       :<|> CreativeFieldValuesPatchAPI
       :<|> PlacementGroupsGetAPI
       :<|> RegionsListAPI
       :<|> FloodlightActivityGroupsListAPI
       :<|> ContentCategoriesPatchAPI
       :<|> TargetableRemarketingListsListAPI
       :<|> DirectorySiteContactsListAPI
       :<|> AccountUserProfilesListAPI
       :<|> UserRolesPatchAPI
       :<|> CampaignsUpdateAPI
       :<|> FloodlightActivityGroupsDeleteAPI
       :<|> MetrosListAPI
       :<|> CampaignsInsertAPI
       :<|> PlacementsPatchAPI
       :<|> CreativeFieldsPatchAPI
       :<|> AccountUserProfilesGetAPI
       :<|> UserRolePermissionsGetAPI
       :<|> FloodlightActivitiesGetAPI
       :<|> CampaignsListAPI
       :<|> EventTagsGetAPI
       :<|> DirectorySitesGetAPI
       :<|> PlacementStrategiesInsertAPI
       :<|> PlacementStrategiesUpdateAPI
       :<|> OrdersGetAPI
       :<|> AdvertiserGroupsGetAPI
       :<|> SubaccountsUpdateAPI
       :<|> SubaccountsInsertAPI
       :<|> MobileCarriersListAPI
       :<|> OperatingSystemVersionsListAPI
       :<|> ChangeLogsListAPI
       :<|> LandingPagesInsertAPI
       :<|> CreativeFieldsListAPI
       :<|> PlacementsListAPI
       :<|> SitesGetAPI
       :<|> AccountUserProfilesPatchAPI
       :<|> UserRolePermissionGroupsGetAPI
       :<|> UserRolesListAPI
       :<|> FloodlightActivityGroupsUpdateAPI
       :<|> InventoryItemsGetAPI
       :<|> RemarketingListsGetAPI
       :<|> CreativeFieldsUpdateAPI
       :<|> UserRolePermissionsListAPI
       :<|> RemarketingListSharesGetAPI
       :<|> FloodlightActivitiesListAPI
       :<|> SitesInsertAPI
       :<|> EventTagsListAPI
       :<|> DirectorySitesListAPI
       :<|> CreativeAssetsInsertAPI
       :<|> UserRolesUpdateAPI
       :<|> FloodlightConfigurationsGetAPI
       :<|> AdvertiserGroupsListAPI
       :<|> OrdersListAPI
       :<|> PlacementsUpdateAPI
       :<|> LandingPagesPatchAPI
       :<|> BrowsersListAPI
       :<|> RemarketingListsInsertAPI
       :<|> PlacementGroupsUpdateAPI
       :<|> SubaccountsGetAPI
       :<|> SitesPatchAPI
       :<|> SubaccountsListAPI
       :<|> FloodlightActivitiesDeleteAPI
       :<|> CountriesListAPI
       :<|> EventTagsDeleteAPI
       :<|> AdvertiserGroupsDeleteAPI
       :<|> PlacementStrategiesListAPI
       :<|> RemarketingListsPatchAPI
       :<|> CountriesGetAPI
       :<|> PlacementStrategiesGetAPI
       :<|> UserProfilesGetAPI
       :<|> ContentCategoriesGetAPI
       :<|> AdvertisersUpdateAPI
       :<|> CitiesListAPI
       :<|> AccountUserProfilesInsertAPI
       :<|> PlacementGroupsListAPI
       :<|> CreativeGroupsGetAPI
       :<|> CampaignCreativeAssociationsListAPI
       :<|> CreativeFieldValuesGetAPI
       :<|> CampaignsPatchAPI
       :<|> AdvertiserGroupsUpdateAPI
       :<|> AccountsGetAPI
       :<|> SitesListAPI
       :<|> RemarketingListsListAPI
       :<|> UserRolePermissionGroupsListAPI
       :<|> PlacementStrategiesPatchAPI
       :<|> ContentCategoriesInsertAPI
       :<|> FloodlightActivitiesUpdateAPI
       :<|> CreativeFieldValuesInsertAPI
       :<|> InventoryItemsListAPI
       :<|> CreativeGroupsInsertAPI
       :<|> EventTagsUpdateAPI
       :<|> SubaccountsPatchAPI
       :<|> UserRolesInsertAPI
       :<|> PostalCodesGetAPI
       :<|> CreativeFieldValuesListAPI
       :<|> FilesGetAPI
       :<|> OperatingSystemsGetAPI
       :<|> FloodlightActivityGroupsPatchAPI
       :<|> RemarketingListsUpdateAPI
       :<|> ContentCategoriesListAPI
       :<|> CreativeFieldsInsertAPI
       :<|> UserProfilesListAPI
       :<|> CreativeGroupsListAPI
       :<|> SitesUpdateAPI
       :<|> PlacementsInsertAPI
       :<|> RemarketingListSharesUpdateAPI
       :<|> OrderDocumentsListAPI
       :<|> ContentCategoriesDeleteAPI
       :<|> OrderDocumentsGetAPI
       :<|> SizesListAPI
       :<|> AdvertisersListAPI
       :<|> SizesGetAPI
       :<|> CreativeFieldValuesDeleteAPI
       :<|> AccountsPatchAPI
       :<|> FloodlightConfigurationsUpdateAPI
       :<|> AdvertisersGetAPI
       :<|> CreativesUpdateAPI
       :<|> FloodlightConfigurationsListAPI
       :<|> PlacementGroupsPatchAPI
       :<|> LandingPagesGetAPI
       :<|> AccountPermissionsGetAPI
       :<|> AdsInsertAPI
       :<|> CreativesInsertAPI
       :<|> ConnectionTypesGetAPI
       :<|> AdsUpdateAPI

dFAReporting :: Proxy DFAReporting
dFAReporting = Proxy
