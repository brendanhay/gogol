{-# LANGUAGE DataKinds         #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE TypeOperators     #-}

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
-- | Manage your DoubleClick Campaign Manager ad campaigns and reports.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference>
module Network.Google.DFAReporting
    (
    -- * Service Configuration
      dFAReportingService

    -- * API Declaration
    , DFAReportingAPI

    -- * Resources

    -- ** DfareportingAccountActiveAdSummariesGet
    , module Network.Google.Resource.DFAReporting.AccountActiveAdSummaries.Get

    -- ** DfareportingAccountPermissionGroupsGet
    , module Network.Google.Resource.DFAReporting.AccountPermissionGroups.Get

    -- ** DfareportingAccountPermissionGroupsList
    , module Network.Google.Resource.DFAReporting.AccountPermissionGroups.List

    -- ** DfareportingAccountPermissionsGet
    , module Network.Google.Resource.DFAReporting.AccountPermissions.Get

    -- ** DfareportingAccountPermissionsList
    , module Network.Google.Resource.DFAReporting.AccountPermissions.List

    -- ** DfareportingAccountUserProFilesGet
    , module Network.Google.Resource.DFAReporting.AccountUserProFiles.Get

    -- ** DfareportingAccountUserProFilesInsert
    , module Network.Google.Resource.DFAReporting.AccountUserProFiles.Insert

    -- ** DfareportingAccountUserProFilesList
    , module Network.Google.Resource.DFAReporting.AccountUserProFiles.List

    -- ** DfareportingAccountUserProFilesPatch
    , module Network.Google.Resource.DFAReporting.AccountUserProFiles.Patch

    -- ** DfareportingAccountUserProFilesUpdate
    , module Network.Google.Resource.DFAReporting.AccountUserProFiles.Update

    -- ** DfareportingAccountsGet
    , module Network.Google.Resource.DFAReporting.Accounts.Get

    -- ** DfareportingAccountsList
    , module Network.Google.Resource.DFAReporting.Accounts.List

    -- ** DfareportingAccountsPatch
    , module Network.Google.Resource.DFAReporting.Accounts.Patch

    -- ** DfareportingAccountsUpdate
    , module Network.Google.Resource.DFAReporting.Accounts.Update

    -- ** DfareportingAdsGet
    , module Network.Google.Resource.DFAReporting.Ads.Get

    -- ** DfareportingAdsInsert
    , module Network.Google.Resource.DFAReporting.Ads.Insert

    -- ** DfareportingAdsList
    , module Network.Google.Resource.DFAReporting.Ads.List

    -- ** DfareportingAdsPatch
    , module Network.Google.Resource.DFAReporting.Ads.Patch

    -- ** DfareportingAdsUpdate
    , module Network.Google.Resource.DFAReporting.Ads.Update

    -- ** DfareportingAdvertiserGroupsDelete
    , module Network.Google.Resource.DFAReporting.AdvertiserGroups.Delete

    -- ** DfareportingAdvertiserGroupsGet
    , module Network.Google.Resource.DFAReporting.AdvertiserGroups.Get

    -- ** DfareportingAdvertiserGroupsInsert
    , module Network.Google.Resource.DFAReporting.AdvertiserGroups.Insert

    -- ** DfareportingAdvertiserGroupsList
    , module Network.Google.Resource.DFAReporting.AdvertiserGroups.List

    -- ** DfareportingAdvertiserGroupsPatch
    , module Network.Google.Resource.DFAReporting.AdvertiserGroups.Patch

    -- ** DfareportingAdvertiserGroupsUpdate
    , module Network.Google.Resource.DFAReporting.AdvertiserGroups.Update

    -- ** DfareportingAdvertisersGet
    , module Network.Google.Resource.DFAReporting.Advertisers.Get

    -- ** DfareportingAdvertisersInsert
    , module Network.Google.Resource.DFAReporting.Advertisers.Insert

    -- ** DfareportingAdvertisersList
    , module Network.Google.Resource.DFAReporting.Advertisers.List

    -- ** DfareportingAdvertisersPatch
    , module Network.Google.Resource.DFAReporting.Advertisers.Patch

    -- ** DfareportingAdvertisersUpdate
    , module Network.Google.Resource.DFAReporting.Advertisers.Update

    -- ** DfareportingBrowsersList
    , module Network.Google.Resource.DFAReporting.Browsers.List

    -- ** DfareportingCampaignCreativeAssociationsInsert
    , module Network.Google.Resource.DFAReporting.CampaignCreativeAssociations.Insert

    -- ** DfareportingCampaignCreativeAssociationsList
    , module Network.Google.Resource.DFAReporting.CampaignCreativeAssociations.List

    -- ** DfareportingCampaignsGet
    , module Network.Google.Resource.DFAReporting.Campaigns.Get

    -- ** DfareportingCampaignsInsert
    , module Network.Google.Resource.DFAReporting.Campaigns.Insert

    -- ** DfareportingCampaignsList
    , module Network.Google.Resource.DFAReporting.Campaigns.List

    -- ** DfareportingCampaignsPatch
    , module Network.Google.Resource.DFAReporting.Campaigns.Patch

    -- ** DfareportingCampaignsUpdate
    , module Network.Google.Resource.DFAReporting.Campaigns.Update

    -- ** DfareportingChangeLogsGet
    , module Network.Google.Resource.DFAReporting.ChangeLogs.Get

    -- ** DfareportingChangeLogsList
    , module Network.Google.Resource.DFAReporting.ChangeLogs.List

    -- ** DfareportingCitiesList
    , module Network.Google.Resource.DFAReporting.Cities.List

    -- ** DfareportingConnectionTypesGet
    , module Network.Google.Resource.DFAReporting.ConnectionTypes.Get

    -- ** DfareportingConnectionTypesList
    , module Network.Google.Resource.DFAReporting.ConnectionTypes.List

    -- ** DfareportingContentCategoriesDelete
    , module Network.Google.Resource.DFAReporting.ContentCategories.Delete

    -- ** DfareportingContentCategoriesGet
    , module Network.Google.Resource.DFAReporting.ContentCategories.Get

    -- ** DfareportingContentCategoriesInsert
    , module Network.Google.Resource.DFAReporting.ContentCategories.Insert

    -- ** DfareportingContentCategoriesList
    , module Network.Google.Resource.DFAReporting.ContentCategories.List

    -- ** DfareportingContentCategoriesPatch
    , module Network.Google.Resource.DFAReporting.ContentCategories.Patch

    -- ** DfareportingContentCategoriesUpdate
    , module Network.Google.Resource.DFAReporting.ContentCategories.Update

    -- ** DfareportingCountriesGet
    , module Network.Google.Resource.DFAReporting.Countries.Get

    -- ** DfareportingCountriesList
    , module Network.Google.Resource.DFAReporting.Countries.List

    -- ** DfareportingCreativeAssetsInsert
    , module Network.Google.Resource.DFAReporting.CreativeAssets.Insert

    -- ** DfareportingCreativeFieldValuesDelete
    , module Network.Google.Resource.DFAReporting.CreativeFieldValues.Delete

    -- ** DfareportingCreativeFieldValuesGet
    , module Network.Google.Resource.DFAReporting.CreativeFieldValues.Get

    -- ** DfareportingCreativeFieldValuesInsert
    , module Network.Google.Resource.DFAReporting.CreativeFieldValues.Insert

    -- ** DfareportingCreativeFieldValuesList
    , module Network.Google.Resource.DFAReporting.CreativeFieldValues.List

    -- ** DfareportingCreativeFieldValuesPatch
    , module Network.Google.Resource.DFAReporting.CreativeFieldValues.Patch

    -- ** DfareportingCreativeFieldValuesUpdate
    , module Network.Google.Resource.DFAReporting.CreativeFieldValues.Update

    -- ** DfareportingCreativeFieldsDelete
    , module Network.Google.Resource.DFAReporting.CreativeFields.Delete

    -- ** DfareportingCreativeFieldsGet
    , module Network.Google.Resource.DFAReporting.CreativeFields.Get

    -- ** DfareportingCreativeFieldsInsert
    , module Network.Google.Resource.DFAReporting.CreativeFields.Insert

    -- ** DfareportingCreativeFieldsList
    , module Network.Google.Resource.DFAReporting.CreativeFields.List

    -- ** DfareportingCreativeFieldsPatch
    , module Network.Google.Resource.DFAReporting.CreativeFields.Patch

    -- ** DfareportingCreativeFieldsUpdate
    , module Network.Google.Resource.DFAReporting.CreativeFields.Update

    -- ** DfareportingCreativeGroupsGet
    , module Network.Google.Resource.DFAReporting.CreativeGroups.Get

    -- ** DfareportingCreativeGroupsInsert
    , module Network.Google.Resource.DFAReporting.CreativeGroups.Insert

    -- ** DfareportingCreativeGroupsList
    , module Network.Google.Resource.DFAReporting.CreativeGroups.List

    -- ** DfareportingCreativeGroupsPatch
    , module Network.Google.Resource.DFAReporting.CreativeGroups.Patch

    -- ** DfareportingCreativeGroupsUpdate
    , module Network.Google.Resource.DFAReporting.CreativeGroups.Update

    -- ** DfareportingCreativesGet
    , module Network.Google.Resource.DFAReporting.Creatives.Get

    -- ** DfareportingCreativesInsert
    , module Network.Google.Resource.DFAReporting.Creatives.Insert

    -- ** DfareportingCreativesList
    , module Network.Google.Resource.DFAReporting.Creatives.List

    -- ** DfareportingCreativesPatch
    , module Network.Google.Resource.DFAReporting.Creatives.Patch

    -- ** DfareportingCreativesUpdate
    , module Network.Google.Resource.DFAReporting.Creatives.Update

    -- ** DfareportingDimensionValuesQuery
    , module Network.Google.Resource.DFAReporting.DimensionValues.Query

    -- ** DfareportingDirectorySiteContactsGet
    , module Network.Google.Resource.DFAReporting.DirectorySiteContacts.Get

    -- ** DfareportingDirectorySiteContactsList
    , module Network.Google.Resource.DFAReporting.DirectorySiteContacts.List

    -- ** DfareportingDirectorySitesGet
    , module Network.Google.Resource.DFAReporting.DirectorySites.Get

    -- ** DfareportingDirectorySitesInsert
    , module Network.Google.Resource.DFAReporting.DirectorySites.Insert

    -- ** DfareportingDirectorySitesList
    , module Network.Google.Resource.DFAReporting.DirectorySites.List

    -- ** DfareportingEventTagsDelete
    , module Network.Google.Resource.DFAReporting.EventTags.Delete

    -- ** DfareportingEventTagsGet
    , module Network.Google.Resource.DFAReporting.EventTags.Get

    -- ** DfareportingEventTagsInsert
    , module Network.Google.Resource.DFAReporting.EventTags.Insert

    -- ** DfareportingEventTagsList
    , module Network.Google.Resource.DFAReporting.EventTags.List

    -- ** DfareportingEventTagsPatch
    , module Network.Google.Resource.DFAReporting.EventTags.Patch

    -- ** DfareportingEventTagsUpdate
    , module Network.Google.Resource.DFAReporting.EventTags.Update

    -- ** DfareportingFilesGet
    , module Network.Google.Resource.DFAReporting.Files.Get

    -- ** DfareportingFilesList
    , module Network.Google.Resource.DFAReporting.Files.List

    -- ** DfareportingFloodlightActivitiesDelete
    , module Network.Google.Resource.DFAReporting.FloodlightActivities.Delete

    -- ** DfareportingFloodlightActivitiesGeneratetag
    , module Network.Google.Resource.DFAReporting.FloodlightActivities.Generatetag

    -- ** DfareportingFloodlightActivitiesGet
    , module Network.Google.Resource.DFAReporting.FloodlightActivities.Get

    -- ** DfareportingFloodlightActivitiesInsert
    , module Network.Google.Resource.DFAReporting.FloodlightActivities.Insert

    -- ** DfareportingFloodlightActivitiesList
    , module Network.Google.Resource.DFAReporting.FloodlightActivities.List

    -- ** DfareportingFloodlightActivitiesPatch
    , module Network.Google.Resource.DFAReporting.FloodlightActivities.Patch

    -- ** DfareportingFloodlightActivitiesUpdate
    , module Network.Google.Resource.DFAReporting.FloodlightActivities.Update

    -- ** DfareportingFloodlightActivityGroupsDelete
    , module Network.Google.Resource.DFAReporting.FloodlightActivityGroups.Delete

    -- ** DfareportingFloodlightActivityGroupsGet
    , module Network.Google.Resource.DFAReporting.FloodlightActivityGroups.Get

    -- ** DfareportingFloodlightActivityGroupsInsert
    , module Network.Google.Resource.DFAReporting.FloodlightActivityGroups.Insert

    -- ** DfareportingFloodlightActivityGroupsList
    , module Network.Google.Resource.DFAReporting.FloodlightActivityGroups.List

    -- ** DfareportingFloodlightActivityGroupsPatch
    , module Network.Google.Resource.DFAReporting.FloodlightActivityGroups.Patch

    -- ** DfareportingFloodlightActivityGroupsUpdate
    , module Network.Google.Resource.DFAReporting.FloodlightActivityGroups.Update

    -- ** DfareportingFloodlightConfigurationsGet
    , module Network.Google.Resource.DFAReporting.FloodlightConfigurations.Get

    -- ** DfareportingFloodlightConfigurationsList
    , module Network.Google.Resource.DFAReporting.FloodlightConfigurations.List

    -- ** DfareportingFloodlightConfigurationsPatch
    , module Network.Google.Resource.DFAReporting.FloodlightConfigurations.Patch

    -- ** DfareportingFloodlightConfigurationsUpdate
    , module Network.Google.Resource.DFAReporting.FloodlightConfigurations.Update

    -- ** DfareportingInventoryItemsGet
    , module Network.Google.Resource.DFAReporting.InventoryItems.Get

    -- ** DfareportingInventoryItemsList
    , module Network.Google.Resource.DFAReporting.InventoryItems.List

    -- ** DfareportingLandingPagesDelete
    , module Network.Google.Resource.DFAReporting.LandingPages.Delete

    -- ** DfareportingLandingPagesGet
    , module Network.Google.Resource.DFAReporting.LandingPages.Get

    -- ** DfareportingLandingPagesInsert
    , module Network.Google.Resource.DFAReporting.LandingPages.Insert

    -- ** DfareportingLandingPagesList
    , module Network.Google.Resource.DFAReporting.LandingPages.List

    -- ** DfareportingLandingPagesPatch
    , module Network.Google.Resource.DFAReporting.LandingPages.Patch

    -- ** DfareportingLandingPagesUpdate
    , module Network.Google.Resource.DFAReporting.LandingPages.Update

    -- ** DfareportingMetrosList
    , module Network.Google.Resource.DFAReporting.Metros.List

    -- ** DfareportingMobileCarriersGet
    , module Network.Google.Resource.DFAReporting.MobileCarriers.Get

    -- ** DfareportingMobileCarriersList
    , module Network.Google.Resource.DFAReporting.MobileCarriers.List

    -- ** DfareportingOperatingSystemVersionsGet
    , module Network.Google.Resource.DFAReporting.OperatingSystemVersions.Get

    -- ** DfareportingOperatingSystemVersionsList
    , module Network.Google.Resource.DFAReporting.OperatingSystemVersions.List

    -- ** DfareportingOperatingSystemsGet
    , module Network.Google.Resource.DFAReporting.OperatingSystems.Get

    -- ** DfareportingOperatingSystemsList
    , module Network.Google.Resource.DFAReporting.OperatingSystems.List

    -- ** DfareportingOrderDocumentsGet
    , module Network.Google.Resource.DFAReporting.OrderDocuments.Get

    -- ** DfareportingOrderDocumentsList
    , module Network.Google.Resource.DFAReporting.OrderDocuments.List

    -- ** DfareportingOrdersGet
    , module Network.Google.Resource.DFAReporting.Orders.Get

    -- ** DfareportingOrdersList
    , module Network.Google.Resource.DFAReporting.Orders.List

    -- ** DfareportingPlacementGroupsGet
    , module Network.Google.Resource.DFAReporting.PlacementGroups.Get

    -- ** DfareportingPlacementGroupsInsert
    , module Network.Google.Resource.DFAReporting.PlacementGroups.Insert

    -- ** DfareportingPlacementGroupsList
    , module Network.Google.Resource.DFAReporting.PlacementGroups.List

    -- ** DfareportingPlacementGroupsPatch
    , module Network.Google.Resource.DFAReporting.PlacementGroups.Patch

    -- ** DfareportingPlacementGroupsUpdate
    , module Network.Google.Resource.DFAReporting.PlacementGroups.Update

    -- ** DfareportingPlacementStrategiesDelete
    , module Network.Google.Resource.DFAReporting.PlacementStrategies.Delete

    -- ** DfareportingPlacementStrategiesGet
    , module Network.Google.Resource.DFAReporting.PlacementStrategies.Get

    -- ** DfareportingPlacementStrategiesInsert
    , module Network.Google.Resource.DFAReporting.PlacementStrategies.Insert

    -- ** DfareportingPlacementStrategiesList
    , module Network.Google.Resource.DFAReporting.PlacementStrategies.List

    -- ** DfareportingPlacementStrategiesPatch
    , module Network.Google.Resource.DFAReporting.PlacementStrategies.Patch

    -- ** DfareportingPlacementStrategiesUpdate
    , module Network.Google.Resource.DFAReporting.PlacementStrategies.Update

    -- ** DfareportingPlacementsGeneratetags
    , module Network.Google.Resource.DFAReporting.Placements.Generatetags

    -- ** DfareportingPlacementsGet
    , module Network.Google.Resource.DFAReporting.Placements.Get

    -- ** DfareportingPlacementsInsert
    , module Network.Google.Resource.DFAReporting.Placements.Insert

    -- ** DfareportingPlacementsList
    , module Network.Google.Resource.DFAReporting.Placements.List

    -- ** DfareportingPlacementsPatch
    , module Network.Google.Resource.DFAReporting.Placements.Patch

    -- ** DfareportingPlacementsUpdate
    , module Network.Google.Resource.DFAReporting.Placements.Update

    -- ** DfareportingPlatformTypesGet
    , module Network.Google.Resource.DFAReporting.PlatformTypes.Get

    -- ** DfareportingPlatformTypesList
    , module Network.Google.Resource.DFAReporting.PlatformTypes.List

    -- ** DfareportingPostalCodesGet
    , module Network.Google.Resource.DFAReporting.PostalCodes.Get

    -- ** DfareportingPostalCodesList
    , module Network.Google.Resource.DFAReporting.PostalCodes.List

    -- ** DfareportingProjectsGet
    , module Network.Google.Resource.DFAReporting.Projects.Get

    -- ** DfareportingProjectsList
    , module Network.Google.Resource.DFAReporting.Projects.List

    -- ** DfareportingRegionsList
    , module Network.Google.Resource.DFAReporting.Regions.List

    -- ** DfareportingRemarketingListSharesGet
    , module Network.Google.Resource.DFAReporting.RemarketingListShares.Get

    -- ** DfareportingRemarketingListSharesPatch
    , module Network.Google.Resource.DFAReporting.RemarketingListShares.Patch

    -- ** DfareportingRemarketingListSharesUpdate
    , module Network.Google.Resource.DFAReporting.RemarketingListShares.Update

    -- ** DfareportingRemarketingListsGet
    , module Network.Google.Resource.DFAReporting.RemarketingLists.Get

    -- ** DfareportingRemarketingListsInsert
    , module Network.Google.Resource.DFAReporting.RemarketingLists.Insert

    -- ** DfareportingRemarketingListsList
    , module Network.Google.Resource.DFAReporting.RemarketingLists.List

    -- ** DfareportingRemarketingListsPatch
    , module Network.Google.Resource.DFAReporting.RemarketingLists.Patch

    -- ** DfareportingRemarketingListsUpdate
    , module Network.Google.Resource.DFAReporting.RemarketingLists.Update

    -- ** DfareportingReportsCompatibleFieldsQuery
    , module Network.Google.Resource.DFAReporting.Reports.CompatibleFields.Query

    -- ** DfareportingReportsDelete
    , module Network.Google.Resource.DFAReporting.Reports.Delete

    -- ** DfareportingReportsFilesGet
    , module Network.Google.Resource.DFAReporting.Reports.Files.Get

    -- ** DfareportingReportsFilesList
    , module Network.Google.Resource.DFAReporting.Reports.Files.List

    -- ** DfareportingReportsGet
    , module Network.Google.Resource.DFAReporting.Reports.Get

    -- ** DfareportingReportsInsert
    , module Network.Google.Resource.DFAReporting.Reports.Insert

    -- ** DfareportingReportsList
    , module Network.Google.Resource.DFAReporting.Reports.List

    -- ** DfareportingReportsPatch
    , module Network.Google.Resource.DFAReporting.Reports.Patch

    -- ** DfareportingReportsRun
    , module Network.Google.Resource.DFAReporting.Reports.Run

    -- ** DfareportingReportsUpdate
    , module Network.Google.Resource.DFAReporting.Reports.Update

    -- ** DfareportingSitesGet
    , module Network.Google.Resource.DFAReporting.Sites.Get

    -- ** DfareportingSitesInsert
    , module Network.Google.Resource.DFAReporting.Sites.Insert

    -- ** DfareportingSitesList
    , module Network.Google.Resource.DFAReporting.Sites.List

    -- ** DfareportingSitesPatch
    , module Network.Google.Resource.DFAReporting.Sites.Patch

    -- ** DfareportingSitesUpdate
    , module Network.Google.Resource.DFAReporting.Sites.Update

    -- ** DfareportingSizesGet
    , module Network.Google.Resource.DFAReporting.Sizes.Get

    -- ** DfareportingSizesInsert
    , module Network.Google.Resource.DFAReporting.Sizes.Insert

    -- ** DfareportingSizesList
    , module Network.Google.Resource.DFAReporting.Sizes.List

    -- ** DfareportingSubAccountsGet
    , module Network.Google.Resource.DFAReporting.SubAccounts.Get

    -- ** DfareportingSubAccountsInsert
    , module Network.Google.Resource.DFAReporting.SubAccounts.Insert

    -- ** DfareportingSubAccountsList
    , module Network.Google.Resource.DFAReporting.SubAccounts.List

    -- ** DfareportingSubAccountsPatch
    , module Network.Google.Resource.DFAReporting.SubAccounts.Patch

    -- ** DfareportingSubAccountsUpdate
    , module Network.Google.Resource.DFAReporting.SubAccounts.Update

    -- ** DfareportingTargetableRemarketingListsGet
    , module Network.Google.Resource.DFAReporting.TargetableRemarketingLists.Get

    -- ** DfareportingTargetableRemarketingListsList
    , module Network.Google.Resource.DFAReporting.TargetableRemarketingLists.List

    -- ** DfareportingUserProFilesGet
    , module Network.Google.Resource.DFAReporting.UserProFiles.Get

    -- ** DfareportingUserProFilesList
    , module Network.Google.Resource.DFAReporting.UserProFiles.List

    -- ** DfareportingUserRolePermissionGroupsGet
    , module Network.Google.Resource.DFAReporting.UserRolePermissionGroups.Get

    -- ** DfareportingUserRolePermissionGroupsList
    , module Network.Google.Resource.DFAReporting.UserRolePermissionGroups.List

    -- ** DfareportingUserRolePermissionsGet
    , module Network.Google.Resource.DFAReporting.UserRolePermissions.Get

    -- ** DfareportingUserRolePermissionsList
    , module Network.Google.Resource.DFAReporting.UserRolePermissions.List

    -- ** DfareportingUserRolesDelete
    , module Network.Google.Resource.DFAReporting.UserRoles.Delete

    -- ** DfareportingUserRolesGet
    , module Network.Google.Resource.DFAReporting.UserRoles.Get

    -- ** DfareportingUserRolesInsert
    , module Network.Google.Resource.DFAReporting.UserRoles.Insert

    -- ** DfareportingUserRolesList
    , module Network.Google.Resource.DFAReporting.UserRoles.List

    -- ** DfareportingUserRolesPatch
    , module Network.Google.Resource.DFAReporting.UserRoles.Patch

    -- ** DfareportingUserRolesUpdate
    , module Network.Google.Resource.DFAReporting.UserRoles.Update

    -- * Types

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

    -- ** CreativeCustomEvent
    , CreativeCustomEvent
    , creativeCustomEvent
    , cceAdvertiserCustomEventType
    , cceAdvertiserCustomEventName
    , cceExitURL
    , cceTargetType
    , ccePopupWindowProperties
    , cceVideoReportingId
    , cceId
    , cceArtworkLabel
    , cceArtworkType

    -- ** ClickTag
    , ClickTag
    , clickTag
    , ctValue
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

    -- ** RecipientDeliveryType
    , RecipientDeliveryType (..)

    -- ** ThirdPartyTrackingURLThirdPartyURLType
    , ThirdPartyTrackingURLThirdPartyURLType (..)

    -- ** DirectorySiteSettings
    , DirectorySiteSettings
    , directorySiteSettings
    , dssInterstitialPlacementAccepted
    , dssDfpSettings
    , dssVerificationTagOptOut
    , dssActiveViewOptOut
    , dssVideoActiveViewOptOut
    , dssInstreamVideoPlacementAccepted
    , dssNielsenOCROptOut

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

    -- ** DirectorySiteContactAssignmentVisibility
    , DirectorySiteContactAssignmentVisibility (..)

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

    -- ** AccountUserProFileTraffickerType
    , AccountUserProFileTraffickerType (..)

    -- ** DirectorySite
    , DirectorySite
    , directorySite
    , dsCurrencyId
    , dsSettings
    , dsInterstitialTagFormats
    , dsKind
    , dsURL
    , dsIdDimensionValue
    , dsInpageTagFormats
    , dsActive
    , dsName
    , dsId
    , dsCountryId
    , dsContactAssignments
    , dsDescription
    , dsParentId

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
    , aKind
    , aAccountId
    , aName
    , aId

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
    , addClickThroughURLSuffixProperties
    , addCampaignIdDimensionValue
    , addAdvertiserId
    , addAdvertiserIdDimensionValue
    , addSSLCompliant
    , addCampaignId
    , addIdDimensionValue
    , addClickThroughURL
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
    , addSSLRequired
    , addComments
    , addSubAccountId
    , addType
    , addRemarketingListExpression
    , addDynamicClickTracker
    , addCompatibility
    , addArchived
    , addDefaultClickThroughEventTagProperties
    , addPlacementAssignments

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
    , pAudienceGender
    , pClientName
    , pTargetCpaNanos

    -- ** FileFormat
    , FileFormat (..)

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

    -- ** Creative
    , Creative
    , creative
    , creConvertFlashToHTML5
    , creBackupImageTargetWindow
    , creRenderingIdDimensionValue
    , creCustomKeyValues
    , creVideoDuration
    , creRenderingId
    , creThirdPartyBackupImageImpressionsURL
    , creFsCommand
    , creAllowScriptAccess
    , creHTMLCodeLocked
    , creRequiredFlashPluginVersion
    , creAuthoringTool
    , creSize
    , creThirdPartyURLs
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
    , creVideoDescription
    , creClickTags
    , creAdParameters
    , creVersion
    , creLatestTraffickedCreativeId
    , creThirdPartyRichMediaImpressionsURL
    , creLastModifiedInfo
    , creId
    , creStudioAdvertiserId
    , creCreativeAssets
    , creSubAccountId
    , creType
    , creTimerCustomEvents
    , creStudioCreativeId
    , creCompatibility
    , creBackupImageFeatures
    , creArtworkType
    , creArchived
    , creCompanionCreatives
    , creTotalFileSize
    , creStudioTraffickedCreativeId
    , creRedirectURL
    , creAutoAdvanceImages
    , creCreativeFieldAssignments

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

    -- ** FloodlightConfigurationStandardVariableTypesItem
    , FloodlightConfigurationStandardVariableTypesItem (..)

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

    -- ** ReportsFilesListSortOrder
    , ReportsFilesListSortOrder (..)

    -- ** Campaign
    , Campaign
    , campaign
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
    , camLookbackConfiguration
    , camStartDate
    , camAccountId
    , camComscoreVceEnabled
    , camName
    , camAdvertiserGroupId
    , camBillingInvoiceCode
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

    -- ** ThirdPartyAuthenticationToken
    , ThirdPartyAuthenticationToken
    , thirdPartyAuthenticationToken
    , tpatValue
    , tpatName

    -- ** PopupWindowPropertiesPositionType
    , PopupWindowPropertiesPositionType (..)

    -- ** DirectorySiteContactRole
    , DirectorySiteContactRole (..)

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
    , ssDisableBrandSafeAds
    , ssLookbackConfiguration
    , ssTagSetting
    , ssActiveViewOptOut
    , ssCreativeSettings

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
    , aaComscoreVceEnabled
    , aaActiveViewOptOut
    , aaName
    , aaAccountProFile
    , aaId
    , aaCountryId
    , aaActiveAdsLimitTier
    , aaDefaultCreativeSizeId
    , aaDescription

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
    , ccKind
    , ccAccountId
    , ccName
    , ccId

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
    , uKind
    , uName
    , uId

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
    , lpDefault
    , lpURL
    , lpName
    , lpId

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

    -- ** LookbackConfiguration
    , LookbackConfiguration
    , lookbackConfiguration
    , lcClickDuration
    , lcPostImpressionActivitiesDuration

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

    -- ** OffsetPosition
    , OffsetPosition
    , offsetPosition
    , opLeft
    , opTop

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

    -- ** CreativeAssetPositionTopUnit
    , CreativeAssetPositionTopUnit (..)

    -- ** City
    , City
    , city
    , citiMetroCode
    , citiRegionCode
    , citiKind
    , citiRegionDartId
    , citiMetroDmaId
    , citiName
    , citiCountryCode
    , citiCountryDartId
    , citiDartId

    -- ** PlatformType
    , PlatformType
    , platformType
    , ptKind
    , ptName
    , ptId

    -- ** FloodlightActivityFloodlightActivityGroupType
    , FloodlightActivityFloodlightActivityGroupType (..)

    -- ** DirectorySiteContactsListSortOrder
    , DirectorySiteContactsListSortOrder (..)

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

    -- ** AdsListCreativeType
    , AdsListCreativeType (..)

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
    , pwpOffset
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

    -- ** DirectorySiteContactType
    , DirectorySiteContactType (..)

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
    , clUserProFileId
    , clObjectType
    , clUserProFileName
    , clKind
    , clObjectId
    , clAction
    , clTransactionId
    , clOldValue
    , clAccountId
    , clNewValue
    , clFieldName
    , clId
    , clSubAccountId
    , clChangeTime

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
    , faImageTagEnabled
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
    , faFloodlightActivityGroupName
    , faId
    , faSSLRequired
    , faUserDefinedVariableTypes
    , faSubAccountId
    , faNotes
    , faFloodlightConfigurationIdDimensionValue

    -- ** DayPartTargetingDaysOfWeekItem
    , DayPartTargetingDaysOfWeekItem (..)

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
    , apgKind
    , apgName
    , apgId

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

    -- ** DirectorySitesListResponse
    , DirectorySitesListResponse
    , directorySitesListResponse
    , dslrNextPageToken
    , dslrKind
    , dslrDirectorySites

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

    -- ** DirectorySiteContactsListResponse
    , DirectorySiteContactsListResponse
    , directorySiteContactsListResponse
    , dsclrNextPageToken
    , dsclrKind
    , dsclrDirectorySiteContacts

    -- ** Region
    , Region
    , region
    , regRegionCode
    , regKind
    , regName
    , regCountryCode
    , regCountryDartId
    , regDartId

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
    , fcSSLRequired
    , fcNATuralSearchConversionAttributionOption
    , fcUserDefinedVariableConfigurations
    , fcSubAccountId
    , fcFirstDayOfWeek
    , fcOmnitureSettings
    , fcStandardVariableTypes

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

    -- ** CreativeFieldValuesListResponse
    , CreativeFieldValuesListResponse
    , creativeFieldValuesListResponse
    , cfvlrNextPageToken
    , cfvlrKind
    , cfvlrCreativeFieldValues

    -- ** AccountsListSortField
    , AccountsListSortField (..)

    -- ** RichMediaExitOverride
    , RichMediaExitOverride
    , richMediaExitOverride
    , rmeoUseCustomExitURL
    , rmeoExitId
    , rmeoCustomExitURL

    -- ** AdvertisersListStatus
    , AdvertisersListStatus (..)

    -- ** DimensionValueMatchType
    , DimensionValueMatchType (..)

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

    -- ** PlacementsGenerateTagsResponse
    , PlacementsGenerateTagsResponse
    , placementsGenerateTagsResponse
    , pgtrKind
    , pgtrPlacementTags

    -- ** CreativeAsset
    , CreativeAsset
    , creativeAsset
    , cZIndex
    , cPushdown
    , cVideoDuration
    , cOriginalBackup
    , cWindowMode
    , cFlashVersion
    , cPushdownDuration
    , cSize
    , cVerticallyLocked
    , cOffset
    , cStreamingServingURL
    , cZipFilesize
    , cTransparency
    , cHideSelectionBoxes
    , cSSLCompliant
    , cFileSize
    , cAssetIdentifier
    , cDurationType
    , cProgressiveServingURL
    , cActive
    , cRole
    , cMimeType
    , cPositionTopUnit
    , cPositionLeftUnit
    , cAlignment
    , cExpandedDimension
    , cZipFilename
    , cActionScript3
    , cDisplayType
    , cChildAssetType
    , cCollapsedSize
    , cId
    , cBitRate
    , cCustomStartTimeValue
    , cStartTimeType
    , cDuration
    , cArtworkType
    , cHideFlashObjects
    , cDetectedFeatures
    , cBackupImageExit
    , cPosition
    , cHorizontallyLocked

    -- ** AdCompatibility
    , AdCompatibility (..)

    -- ** CreativeFieldValuesListSortField
    , CreativeFieldValuesListSortField (..)

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

    -- ** DirectorySiteContactsListSortField
    , DirectorySiteContactsListSortField (..)

    -- ** PlacementsListPricingTypes
    , PlacementsListPricingTypes (..)

    -- ** EventTagsListSortOrder
    , EventTagsListSortOrder (..)

    -- ** DirectorySitesListSortField
    , DirectorySitesListSortField (..)

    -- ** Site
    , Site
    , site
    , ssKind
    , ssKeyName
    , ssSiteContacts
    , ssSiteSettings
    , ssIdDimensionValue
    , ssDirectorySiteIdDimensionValue
    , ssAccountId
    , ssName
    , ssDirectorySiteId
    , ssId
    , ssSubAccountId
    , ssApproved

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

    -- ** CreativeSettings
    , CreativeSettings
    , creativeSettings
    , csIFrameHeader
    , csIFrameFooter

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

    -- ** LandingPagesListResponse
    , LandingPagesListResponse
    , landingPagesListResponse
    , lplrLandingPages
    , lplrKind

    -- ** AccountPermissionAccountProFilesItem
    , AccountPermissionAccountProFilesItem (..)

    -- ** CreativeAssetMetadata
    , CreativeAssetMetadata
    , creativeAssetMetadata
    , camaKind
    , camaAssetIdentifier
    , camaClickTags
    , camaWarnedValidationRules
    , camaDetectedFeatures

    -- ** OmnitureSettings
    , OmnitureSettings
    , omnitureSettings
    , osOmnitureCostDataEnabled
    , osOmnitureIntegrationEnabled

    -- ** ConnectionType
    , ConnectionType
    , connectionType
    , conKind
    , conName
    , conId

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

    -- ** FloodlightActivitiesGenerateTagResponse
    , FloodlightActivitiesGenerateTagResponse
    , floodlightActivitiesGenerateTagResponse
    , fagtrFloodlightActivityTag
    , fagtrKind

    -- ** DirectorySiteContactAssignment
    , DirectorySiteContactAssignment
    , directorySiteContactAssignment
    , dscaVisibility
    , dscaContactId

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

    -- ** CreativeAssetDisplayType
    , CreativeAssetDisplayType (..)

    -- ** Placement
    , Placement
    , placement
    , p1Status
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
    , p1Primary
    , p1LookbackConfiguration
    , p1TagSetting
    , p1ContentCategoryId
    , p1DirectorySiteIdDimensionValue
    , p1AccountId
    , p1PaymentSource
    , p1Name
    , p1DirectorySiteId
    , p1CreateInfo
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

    -- ** SitesListResponse
    , SitesListResponse
    , sitesListResponse
    , sitNextPageToken
    , sitKind
    , sitSites

    -- ** ContentCategoriesListSortOrder
    , ContentCategoriesListSortOrder (..)

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
import           Network.Google.Resource.DFAReporting.DirectorySiteContacts.Get
import           Network.Google.Resource.DFAReporting.DirectorySiteContacts.List
import           Network.Google.Resource.DFAReporting.DirectorySites.Get
import           Network.Google.Resource.DFAReporting.DirectorySites.Insert
import           Network.Google.Resource.DFAReporting.DirectorySites.List
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
import           Network.Google.Resource.DFAReporting.FloodlightActivityGroups.Delete
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
import           Network.Google.Resource.DFAReporting.LandingPages.Delete
import           Network.Google.Resource.DFAReporting.LandingPages.Get
import           Network.Google.Resource.DFAReporting.LandingPages.Insert
import           Network.Google.Resource.DFAReporting.LandingPages.List
import           Network.Google.Resource.DFAReporting.LandingPages.Patch
import           Network.Google.Resource.DFAReporting.LandingPages.Update
import           Network.Google.Resource.DFAReporting.Metros.List
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
       :<|> LandingPagesInsertResource
       :<|> LandingPagesListResource
       :<|> LandingPagesPatchResource
       :<|> LandingPagesGetResource
       :<|> LandingPagesDeleteResource
       :<|> LandingPagesUpdateResource
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
       :<|> CreativeFieldsInsertResource
       :<|> CreativeFieldsListResource
       :<|> CreativeFieldsPatchResource
       :<|> CreativeFieldsGetResource
       :<|> CreativeFieldsDeleteResource
       :<|> CreativeFieldsUpdateResource
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
       :<|> DirectorySiteContactsListResource
       :<|> DirectorySiteContactsGetResource
       :<|> FloodlightActivityGroupsInsertResource
       :<|> FloodlightActivityGroupsListResource
       :<|> FloodlightActivityGroupsPatchResource
       :<|> FloodlightActivityGroupsGetResource
       :<|> FloodlightActivityGroupsDeleteResource
       :<|> FloodlightActivityGroupsUpdateResource
