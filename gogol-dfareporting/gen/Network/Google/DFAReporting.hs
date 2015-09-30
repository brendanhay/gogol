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
    -- * API
      DFAReportingAPI
    , dFAReportingAPI
    , dFAReportingURL

    -- * Service Methods

    -- * REST Resources

    -- ** DfareportingAccountActiveAdSummariesGet
    , module DFAReporting.AccountActiveAdSummaries.Get

    -- ** DfareportingAccountPermissionGroupsGet
    , module DFAReporting.AccountPermissionGroups.Get

    -- ** DfareportingAccountPermissionGroupsList
    , module DFAReporting.AccountPermissionGroups.List

    -- ** DfareportingAccountPermissionsGet
    , module DFAReporting.AccountPermissions.Get

    -- ** DfareportingAccountPermissionsList
    , module DFAReporting.AccountPermissions.List

    -- ** DfareportingAccountUserProfilesGet
    , module DFAReporting.AccountUserProfiles.Get

    -- ** DfareportingAccountUserProfilesInsert
    , module DFAReporting.AccountUserProfiles.Insert

    -- ** DfareportingAccountUserProfilesList
    , module DFAReporting.AccountUserProfiles.List

    -- ** DfareportingAccountUserProfilesPatch
    , module DFAReporting.AccountUserProfiles.Patch

    -- ** DfareportingAccountUserProfilesUpdate
    , module DFAReporting.AccountUserProfiles.Update

    -- ** DfareportingAccountsGet
    , module DFAReporting.Accounts.Get

    -- ** DfareportingAccountsList
    , module DFAReporting.Accounts.List

    -- ** DfareportingAccountsPatch
    , module DFAReporting.Accounts.Patch

    -- ** DfareportingAccountsUpdate
    , module DFAReporting.Accounts.Update

    -- ** DfareportingAdsGet
    , module DFAReporting.Ads.Get

    -- ** DfareportingAdsInsert
    , module DFAReporting.Ads.Insert

    -- ** DfareportingAdsList
    , module DFAReporting.Ads.List

    -- ** DfareportingAdsPatch
    , module DFAReporting.Ads.Patch

    -- ** DfareportingAdsUpdate
    , module DFAReporting.Ads.Update

    -- ** DfareportingAdvertiserGroupsDelete
    , module DFAReporting.AdvertiserGroups.Delete

    -- ** DfareportingAdvertiserGroupsGet
    , module DFAReporting.AdvertiserGroups.Get

    -- ** DfareportingAdvertiserGroupsInsert
    , module DFAReporting.AdvertiserGroups.Insert

    -- ** DfareportingAdvertiserGroupsList
    , module DFAReporting.AdvertiserGroups.List

    -- ** DfareportingAdvertiserGroupsPatch
    , module DFAReporting.AdvertiserGroups.Patch

    -- ** DfareportingAdvertiserGroupsUpdate
    , module DFAReporting.AdvertiserGroups.Update

    -- ** DfareportingAdvertisersGet
    , module DFAReporting.Advertisers.Get

    -- ** DfareportingAdvertisersInsert
    , module DFAReporting.Advertisers.Insert

    -- ** DfareportingAdvertisersList
    , module DFAReporting.Advertisers.List

    -- ** DfareportingAdvertisersPatch
    , module DFAReporting.Advertisers.Patch

    -- ** DfareportingAdvertisersUpdate
    , module DFAReporting.Advertisers.Update

    -- ** DfareportingBrowsersList
    , module DFAReporting.Browsers.List

    -- ** DfareportingCampaignCreativeAssociationsInsert
    , module DFAReporting.CampaignCreativeAssociations.Insert

    -- ** DfareportingCampaignCreativeAssociationsList
    , module DFAReporting.CampaignCreativeAssociations.List

    -- ** DfareportingCampaignsGet
    , module DFAReporting.Campaigns.Get

    -- ** DfareportingCampaignsInsert
    , module DFAReporting.Campaigns.Insert

    -- ** DfareportingCampaignsList
    , module DFAReporting.Campaigns.List

    -- ** DfareportingCampaignsPatch
    , module DFAReporting.Campaigns.Patch

    -- ** DfareportingCampaignsUpdate
    , module DFAReporting.Campaigns.Update

    -- ** DfareportingChangeLogsGet
    , module DFAReporting.ChangeLogs.Get

    -- ** DfareportingChangeLogsList
    , module DFAReporting.ChangeLogs.List

    -- ** DfareportingCitiesList
    , module DFAReporting.Cities.List

    -- ** DfareportingConnectionTypesGet
    , module DFAReporting.ConnectionTypes.Get

    -- ** DfareportingConnectionTypesList
    , module DFAReporting.ConnectionTypes.List

    -- ** DfareportingContentCategoriesDelete
    , module DFAReporting.ContentCategories.Delete

    -- ** DfareportingContentCategoriesGet
    , module DFAReporting.ContentCategories.Get

    -- ** DfareportingContentCategoriesInsert
    , module DFAReporting.ContentCategories.Insert

    -- ** DfareportingContentCategoriesList
    , module DFAReporting.ContentCategories.List

    -- ** DfareportingContentCategoriesPatch
    , module DFAReporting.ContentCategories.Patch

    -- ** DfareportingContentCategoriesUpdate
    , module DFAReporting.ContentCategories.Update

    -- ** DfareportingCountriesGet
    , module DFAReporting.Countries.Get

    -- ** DfareportingCountriesList
    , module DFAReporting.Countries.List

    -- ** DfareportingCreativeAssetsInsert
    , module DFAReporting.CreativeAssets.Insert

    -- ** DfareportingCreativeFieldValuesDelete
    , module DFAReporting.CreativeFieldValues.Delete

    -- ** DfareportingCreativeFieldValuesGet
    , module DFAReporting.CreativeFieldValues.Get

    -- ** DfareportingCreativeFieldValuesInsert
    , module DFAReporting.CreativeFieldValues.Insert

    -- ** DfareportingCreativeFieldValuesList
    , module DFAReporting.CreativeFieldValues.List

    -- ** DfareportingCreativeFieldValuesPatch
    , module DFAReporting.CreativeFieldValues.Patch

    -- ** DfareportingCreativeFieldValuesUpdate
    , module DFAReporting.CreativeFieldValues.Update

    -- ** DfareportingCreativeFieldsDelete
    , module DFAReporting.CreativeFields.Delete

    -- ** DfareportingCreativeFieldsGet
    , module DFAReporting.CreativeFields.Get

    -- ** DfareportingCreativeFieldsInsert
    , module DFAReporting.CreativeFields.Insert

    -- ** DfareportingCreativeFieldsList
    , module DFAReporting.CreativeFields.List

    -- ** DfareportingCreativeFieldsPatch
    , module DFAReporting.CreativeFields.Patch

    -- ** DfareportingCreativeFieldsUpdate
    , module DFAReporting.CreativeFields.Update

    -- ** DfareportingCreativeGroupsGet
    , module DFAReporting.CreativeGroups.Get

    -- ** DfareportingCreativeGroupsInsert
    , module DFAReporting.CreativeGroups.Insert

    -- ** DfareportingCreativeGroupsList
    , module DFAReporting.CreativeGroups.List

    -- ** DfareportingCreativeGroupsPatch
    , module DFAReporting.CreativeGroups.Patch

    -- ** DfareportingCreativeGroupsUpdate
    , module DFAReporting.CreativeGroups.Update

    -- ** DfareportingCreativesGet
    , module DFAReporting.Creatives.Get

    -- ** DfareportingCreativesInsert
    , module DFAReporting.Creatives.Insert

    -- ** DfareportingCreativesList
    , module DFAReporting.Creatives.List

    -- ** DfareportingCreativesPatch
    , module DFAReporting.Creatives.Patch

    -- ** DfareportingCreativesUpdate
    , module DFAReporting.Creatives.Update

    -- ** DfareportingDimensionValuesQuery
    , module DFAReporting.DimensionValues.Query

    -- ** DfareportingDirectorySiteContactsGet
    , module DFAReporting.DirectorySiteContacts.Get

    -- ** DfareportingDirectorySiteContactsList
    , module DFAReporting.DirectorySiteContacts.List

    -- ** DfareportingDirectorySitesGet
    , module DFAReporting.DirectorySites.Get

    -- ** DfareportingDirectorySitesInsert
    , module DFAReporting.DirectorySites.Insert

    -- ** DfareportingDirectorySitesList
    , module DFAReporting.DirectorySites.List

    -- ** DfareportingEventTagsDelete
    , module DFAReporting.EventTags.Delete

    -- ** DfareportingEventTagsGet
    , module DFAReporting.EventTags.Get

    -- ** DfareportingEventTagsInsert
    , module DFAReporting.EventTags.Insert

    -- ** DfareportingEventTagsList
    , module DFAReporting.EventTags.List

    -- ** DfareportingEventTagsPatch
    , module DFAReporting.EventTags.Patch

    -- ** DfareportingEventTagsUpdate
    , module DFAReporting.EventTags.Update

    -- ** DfareportingFilesGet
    , module DFAReporting.Files.Get

    -- ** DfareportingFilesList
    , module DFAReporting.Files.List

    -- ** DfareportingFloodlightActivitiesDelete
    , module DFAReporting.FloodlightActivities.Delete

    -- ** DfareportingFloodlightActivitiesGeneratetag
    , module DFAReporting.FloodlightActivities.Generatetag

    -- ** DfareportingFloodlightActivitiesGet
    , module DFAReporting.FloodlightActivities.Get

    -- ** DfareportingFloodlightActivitiesInsert
    , module DFAReporting.FloodlightActivities.Insert

    -- ** DfareportingFloodlightActivitiesList
    , module DFAReporting.FloodlightActivities.List

    -- ** DfareportingFloodlightActivitiesPatch
    , module DFAReporting.FloodlightActivities.Patch

    -- ** DfareportingFloodlightActivitiesUpdate
    , module DFAReporting.FloodlightActivities.Update

    -- ** DfareportingFloodlightActivityGroupsDelete
    , module DFAReporting.FloodlightActivityGroups.Delete

    -- ** DfareportingFloodlightActivityGroupsGet
    , module DFAReporting.FloodlightActivityGroups.Get

    -- ** DfareportingFloodlightActivityGroupsInsert
    , module DFAReporting.FloodlightActivityGroups.Insert

    -- ** DfareportingFloodlightActivityGroupsList
    , module DFAReporting.FloodlightActivityGroups.List

    -- ** DfareportingFloodlightActivityGroupsPatch
    , module DFAReporting.FloodlightActivityGroups.Patch

    -- ** DfareportingFloodlightActivityGroupsUpdate
    , module DFAReporting.FloodlightActivityGroups.Update

    -- ** DfareportingFloodlightConfigurationsGet
    , module DFAReporting.FloodlightConfigurations.Get

    -- ** DfareportingFloodlightConfigurationsList
    , module DFAReporting.FloodlightConfigurations.List

    -- ** DfareportingFloodlightConfigurationsPatch
    , module DFAReporting.FloodlightConfigurations.Patch

    -- ** DfareportingFloodlightConfigurationsUpdate
    , module DFAReporting.FloodlightConfigurations.Update

    -- ** DfareportingInventoryItemsGet
    , module DFAReporting.InventoryItems.Get

    -- ** DfareportingInventoryItemsList
    , module DFAReporting.InventoryItems.List

    -- ** DfareportingLandingPagesDelete
    , module DFAReporting.LandingPages.Delete

    -- ** DfareportingLandingPagesGet
    , module DFAReporting.LandingPages.Get

    -- ** DfareportingLandingPagesInsert
    , module DFAReporting.LandingPages.Insert

    -- ** DfareportingLandingPagesList
    , module DFAReporting.LandingPages.List

    -- ** DfareportingLandingPagesPatch
    , module DFAReporting.LandingPages.Patch

    -- ** DfareportingLandingPagesUpdate
    , module DFAReporting.LandingPages.Update

    -- ** DfareportingMetrosList
    , module DFAReporting.Metros.List

    -- ** DfareportingMobileCarriersGet
    , module DFAReporting.MobileCarriers.Get

    -- ** DfareportingMobileCarriersList
    , module DFAReporting.MobileCarriers.List

    -- ** DfareportingOperatingSystemVersionsGet
    , module DFAReporting.OperatingSystemVersions.Get

    -- ** DfareportingOperatingSystemVersionsList
    , module DFAReporting.OperatingSystemVersions.List

    -- ** DfareportingOperatingSystemsGet
    , module DFAReporting.OperatingSystems.Get

    -- ** DfareportingOperatingSystemsList
    , module DFAReporting.OperatingSystems.List

    -- ** DfareportingOrderDocumentsGet
    , module DFAReporting.OrderDocuments.Get

    -- ** DfareportingOrderDocumentsList
    , module DFAReporting.OrderDocuments.List

    -- ** DfareportingOrdersGet
    , module DFAReporting.Orders.Get

    -- ** DfareportingOrdersList
    , module DFAReporting.Orders.List

    -- ** DfareportingPlacementGroupsGet
    , module DFAReporting.PlacementGroups.Get

    -- ** DfareportingPlacementGroupsInsert
    , module DFAReporting.PlacementGroups.Insert

    -- ** DfareportingPlacementGroupsList
    , module DFAReporting.PlacementGroups.List

    -- ** DfareportingPlacementGroupsPatch
    , module DFAReporting.PlacementGroups.Patch

    -- ** DfareportingPlacementGroupsUpdate
    , module DFAReporting.PlacementGroups.Update

    -- ** DfareportingPlacementStrategiesDelete
    , module DFAReporting.PlacementStrategies.Delete

    -- ** DfareportingPlacementStrategiesGet
    , module DFAReporting.PlacementStrategies.Get

    -- ** DfareportingPlacementStrategiesInsert
    , module DFAReporting.PlacementStrategies.Insert

    -- ** DfareportingPlacementStrategiesList
    , module DFAReporting.PlacementStrategies.List

    -- ** DfareportingPlacementStrategiesPatch
    , module DFAReporting.PlacementStrategies.Patch

    -- ** DfareportingPlacementStrategiesUpdate
    , module DFAReporting.PlacementStrategies.Update

    -- ** DfareportingPlacementsGeneratetags
    , module DFAReporting.Placements.Generatetags

    -- ** DfareportingPlacementsGet
    , module DFAReporting.Placements.Get

    -- ** DfareportingPlacementsInsert
    , module DFAReporting.Placements.Insert

    -- ** DfareportingPlacementsList
    , module DFAReporting.Placements.List

    -- ** DfareportingPlacementsPatch
    , module DFAReporting.Placements.Patch

    -- ** DfareportingPlacementsUpdate
    , module DFAReporting.Placements.Update

    -- ** DfareportingPlatformTypesGet
    , module DFAReporting.PlatformTypes.Get

    -- ** DfareportingPlatformTypesList
    , module DFAReporting.PlatformTypes.List

    -- ** DfareportingPostalCodesGet
    , module DFAReporting.PostalCodes.Get

    -- ** DfareportingPostalCodesList
    , module DFAReporting.PostalCodes.List

    -- ** DfareportingProjectsGet
    , module DFAReporting.Projects.Get

    -- ** DfareportingProjectsList
    , module DFAReporting.Projects.List

    -- ** DfareportingRegionsList
    , module DFAReporting.Regions.List

    -- ** DfareportingRemarketingListSharesGet
    , module DFAReporting.RemarketingListShares.Get

    -- ** DfareportingRemarketingListSharesPatch
    , module DFAReporting.RemarketingListShares.Patch

    -- ** DfareportingRemarketingListSharesUpdate
    , module DFAReporting.RemarketingListShares.Update

    -- ** DfareportingRemarketingListsGet
    , module DFAReporting.RemarketingLists.Get

    -- ** DfareportingRemarketingListsInsert
    , module DFAReporting.RemarketingLists.Insert

    -- ** DfareportingRemarketingListsList
    , module DFAReporting.RemarketingLists.List

    -- ** DfareportingRemarketingListsPatch
    , module DFAReporting.RemarketingLists.Patch

    -- ** DfareportingRemarketingListsUpdate
    , module DFAReporting.RemarketingLists.Update

    -- ** DfareportingReportsCompatibleFieldsQuery
    , module DFAReporting.Reports.CompatibleFields.Query

    -- ** DfareportingReportsDelete
    , module DFAReporting.Reports.Delete

    -- ** DfareportingReportsFilesGet
    , module DFAReporting.Reports.Files.Get

    -- ** DfareportingReportsFilesList
    , module DFAReporting.Reports.Files.List

    -- ** DfareportingReportsGet
    , module DFAReporting.Reports.Get

    -- ** DfareportingReportsInsert
    , module DFAReporting.Reports.Insert

    -- ** DfareportingReportsList
    , module DFAReporting.Reports.List

    -- ** DfareportingReportsPatch
    , module DFAReporting.Reports.Patch

    -- ** DfareportingReportsRun
    , module DFAReporting.Reports.Run

    -- ** DfareportingReportsUpdate
    , module DFAReporting.Reports.Update

    -- ** DfareportingSitesGet
    , module DFAReporting.Sites.Get

    -- ** DfareportingSitesInsert
    , module DFAReporting.Sites.Insert

    -- ** DfareportingSitesList
    , module DFAReporting.Sites.List

    -- ** DfareportingSitesPatch
    , module DFAReporting.Sites.Patch

    -- ** DfareportingSitesUpdate
    , module DFAReporting.Sites.Update

    -- ** DfareportingSizesGet
    , module DFAReporting.Sizes.Get

    -- ** DfareportingSizesInsert
    , module DFAReporting.Sizes.Insert

    -- ** DfareportingSizesList
    , module DFAReporting.Sizes.List

    -- ** DfareportingSubaccountsGet
    , module DFAReporting.Subaccounts.Get

    -- ** DfareportingSubaccountsInsert
    , module DFAReporting.Subaccounts.Insert

    -- ** DfareportingSubaccountsList
    , module DFAReporting.Subaccounts.List

    -- ** DfareportingSubaccountsPatch
    , module DFAReporting.Subaccounts.Patch

    -- ** DfareportingSubaccountsUpdate
    , module DFAReporting.Subaccounts.Update

    -- ** DfareportingTargetableRemarketingListsGet
    , module DFAReporting.TargetableRemarketingLists.Get

    -- ** DfareportingTargetableRemarketingListsList
    , module DFAReporting.TargetableRemarketingLists.List

    -- ** DfareportingUserProfilesGet
    , module DFAReporting.UserProfiles.Get

    -- ** DfareportingUserProfilesList
    , module DFAReporting.UserProfiles.List

    -- ** DfareportingUserRolePermissionGroupsGet
    , module DFAReporting.UserRolePermissionGroups.Get

    -- ** DfareportingUserRolePermissionGroupsList
    , module DFAReporting.UserRolePermissionGroups.List

    -- ** DfareportingUserRolePermissionsGet
    , module DFAReporting.UserRolePermissions.Get

    -- ** DfareportingUserRolePermissionsList
    , module DFAReporting.UserRolePermissions.List

    -- ** DfareportingUserRolesDelete
    , module DFAReporting.UserRoles.Delete

    -- ** DfareportingUserRolesGet
    , module DFAReporting.UserRoles.Get

    -- ** DfareportingUserRolesInsert
    , module DFAReporting.UserRoles.Insert

    -- ** DfareportingUserRolesList
    , module DFAReporting.UserRoles.List

    -- ** DfareportingUserRolesPatch
    , module DFAReporting.UserRoles.Patch

    -- ** DfareportingUserRolesUpdate
    , module DFAReporting.UserRoles.Update

    -- * Types

    -- ** Browser
    , Browser
    , browser
    , bMinorVersion
    , bKind
    , bBrowserVersionId
    , bMajorVersion
    , bName
    , bDartId

    -- ** CampaignsListResponse
    , CampaignsListResponse
    , campaignsListResponse
    , clrNextPageToken
    , clrCampaigns
    , clrKind

    -- ** OptimizationActivity
    , OptimizationActivity
    , optimizationActivity
    , oaWeight
    , oaFloodlightActivityId
    , oaFloodlightActivityIdDimensionValue

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

    -- ** ListPopulationClause
    , ListPopulationClause
    , listPopulationClause
    , lpcTerms

    -- ** GeoTargeting
    , GeoTargeting
    , geoTargeting
    , gtRegions
    , gtCountries
    , gtCities
    , gtMetros
    , gtExcludeCountries
    , gtPostalCodes

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

    -- ** ReachReportCompatibleFields
    , ReachReportCompatibleFields
    , reachReportCompatibleFields
    , rrcfMetrics
    , rrcfReachByFrequencyMetrics
    , rrcfKind
    , rrcfDimensionFilters
    , rrcfPivotedActivityMetrics
    , rrcfDimensions

    -- ** CreativeGroupAssignment
    , CreativeGroupAssignment
    , creativeGroupAssignment
    , cgaCreativeGroupNumber
    , cgaCreativeGroupId

    -- ** AdsListResponse
    , AdsListResponse
    , adsListResponse
    , alrNextPageToken
    , alrKind
    , alrAds

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

    -- ** SubaccountsListResponse
    , SubaccountsListResponse
    , subaccountsListResponse
    , slrNextPageToken
    , slrKind
    , slrSubaccounts

    -- ** TechnologyTargeting
    , TechnologyTargeting
    , technologyTargeting
    , ttMobileCarriers
    , ttOperatingSystemVersions
    , ttPlatformTypes
    , ttBrowsers
    , ttConnectionTypes
    , ttOperatingSystems

    -- ** ProjectsListResponse
    , ProjectsListResponse
    , projectsListResponse
    , plrNextPageToken
    , plrKind
    , plrProjects

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

    -- ** ListPopulationRule
    , ListPopulationRule
    , listPopulationRule
    , lprFloodlightActivityName
    , lprFloodlightActivityId
    , lprListPopulationClauses

    -- ** CreativeRotation
    , CreativeRotation
    , creativeRotation
    , crWeightCalculationStrategy
    , crCreativeAssignments
    , crCreativeOptimizationConfigurationId
    , crType

    -- ** SizesListResponse
    , SizesListResponse
    , sizesListResponse
    , sKind
    , sSizes

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

    -- ** FloodlightActivitiesListResponse
    , FloodlightActivitiesListResponse
    , floodlightActivitiesListResponse
    , falrNextPageToken
    , falrKind
    , falrFloodlightActivities

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

    -- ** CreativeOptimizationConfiguration
    , CreativeOptimizationConfiguration
    , creativeOptimizationConfiguration
    , cocOptimizationModel
    , cocName
    , cocOptimizationActivitys
    , cocId

    -- ** FloodlightActivityDynamicTag
    , FloodlightActivityDynamicTag
    , floodlightActivityDynamicTag
    , fadtTag
    , fadtName
    , fadtId

    -- ** PlacementAssignment
    , PlacementAssignment
    , placementAssignment
    , paPlacementId
    , paPlacementIdDimensionValue
    , paActive
    , paSslRequired

    -- ** CreativeFieldValue
    , CreativeFieldValue
    , creativeFieldValue
    , cfvKind
    , cfvValue
    , cfvId

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

    -- ** RegionsListResponse
    , RegionsListResponse
    , regionsListResponse
    , rlrKind
    , rlrRegions

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

    -- ** AdvertiserGroup
    , AdvertiserGroup
    , advertiserGroup
    , agKind
    , agAccountId
    , agName
    , agId

    -- ** CreativeFieldAssignment
    , CreativeFieldAssignment
    , creativeFieldAssignment
    , cfaCreativeFieldId
    , cfaCreativeFieldValueId

    -- ** FloodlightConfigurationsListResponse
    , FloodlightConfigurationsListResponse
    , floodlightConfigurationsListResponse
    , fclrKind
    , fclrFloodlightConfigurations

    -- ** DimensionValueRequest
    , DimensionValueRequest
    , dimensionValueRequest
    , dvrKind
    , dvrEndDate
    , dvrFilters
    , dvrStartDate
    , dvrDimensionName

    -- ** Ad
    , Ad
    , ad
    , adCreativeGroupAssignments
    , adGeoTargeting
    , adCreativeRotation
    , adTechnologyTargeting
    , adAudienceSegmentId
    , adDayPartTargeting
    , adSize
    , adStartTime
    , adKind
    , adClickThroughUrlSuffixProperties
    , adCampaignIdDimensionValue
    , adAdvertiserId
    , adAdvertiserIdDimensionValue
    , adSslCompliant
    , adCampaignId
    , adIdDimensionValue
    , adClickThroughUrl
    , adDeliverySchedule
    , adEventTagOverrides
    , adActive
    , adAccountId
    , adName
    , adKeyValueTargetingExpression
    , adEndTime
    , adCreateInfo
    , adLastModifiedInfo
    , adId
    , adSslRequired
    , adComments
    , adSubaccountId
    , adType
    , adRemarketingListExpression
    , adDynamicClickTracker
    , adCompatibility
    , adArchived
    , adDefaultClickThroughEventTagProperties
    , adPlacementAssignments

    -- ** ObjectFilter
    , ObjectFilter
    , objectFilter
    , ofStatus
    , ofKind
    , ofObjectIds

    -- ** ReportsConfiguration
    , ReportsConfiguration
    , reportsConfiguration
    , rcExposureToConversionEnabled
    , rcReportGenerationTimeZoneId
    , rcLookbackConfiguration

    -- ** Size
    , Size
    , size
    , sizHeight
    , sizKind
    , sizWidth
    , sizIab
    , sizId

    -- ** InventoryItemsListResponse
    , InventoryItemsListResponse
    , inventoryItemsListResponse
    , iilrInventoryItems
    , iilrNextPageToken
    , iilrKind

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
    , pSubaccountId
    , pAudienceGender
    , pClientName
    , pTargetCpaNanos

    -- ** Subaccount
    , Subaccount
    , subaccount
    , subKind
    , subAvailablePermissionIds
    , subAccountId
    , subName
    , subId

    -- ** PlacementStrategiesListResponse
    , PlacementStrategiesListResponse
    , placementStrategiesListResponse
    , pslrPlacementStrategies
    , pslrNextPageToken
    , pslrKind

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

    -- ** OperatingSystem
    , OperatingSystem
    , operatingSystem
    , osDesktop
    , osKind
    , osName
    , osMobile
    , osDartId

    -- ** CitiesListResponse
    , CitiesListResponse
    , citiesListResponse
    , cKind
    , cCities

    -- ** ChangeLogsListResponse
    , ChangeLogsListResponse
    , changeLogsListResponse
    , cllrNextPageToken
    , cllrKind
    , cllrChangeLogs

    -- ** AccountPermissionsListResponse
    , AccountPermissionsListResponse
    , accountPermissionsListResponse
    , aplrKind
    , aplrAccountPermissions

    -- ** ClickThroughURLSuffixProperties
    , ClickThroughURLSuffixProperties
    , clickThroughURLSuffixProperties
    , ctuspOverrideInheritedSuffix
    , ctuspClickThroughUrlSuffix

    -- ** OperatingSystemVersionsListResponse
    , OperatingSystemVersionsListResponse
    , operatingSystemVersionsListResponse
    , osvlrKind
    , osvlrOperatingSystemVersions

    -- ** TargetableRemarketingListsListResponse
    , TargetableRemarketingListsListResponse
    , targetableRemarketingListsListResponse
    , trllrNextPageToken
    , trllrKind
    , trllrTargetableRemarketingLists

    -- ** Country
    , Country
    , country
    , couKind
    , couName
    , couCountryCode
    , couDartId
    , couSslEnabled

    -- ** Pricing
    , Pricing
    , pricing
    , priEndDate
    , priStartDate
    , priGroupType
    , priPricingType
    , priFlights
    , priCapCostType

    -- ** CustomRichMediaEvents
    , CustomRichMediaEvents
    , customRichMediaEvents
    , crmeKind
    , crmeFilteredEventIds

    -- ** AudienceSegmentGroup
    , AudienceSegmentGroup
    , audienceSegmentGroup
    , asgAudienceSegments
    , asgName
    , asgId

    -- ** Dimension
    , Dimension
    , dimension
    , dKind
    , dName

    -- ** Flight
    , Flight
    , flight
    , fRateOrCost
    , fEndDate
    , fStartDate
    , fUnits

    -- ** Activities
    , Activities
    , activities
    , aKind
    , aMetricNames
    , aFilters

    -- ** AccountsListResponse
    , AccountsListResponse
    , accountsListResponse
    , accNextPageToken
    , accAccounts
    , accKind

    -- ** Creative
    , Creative
    , creative
    , creConvertFlashToHtml5
    , creBackupImageTargetWindow
    , creRenderingIdDimensionValue
    , creCustomKeyValues
    , creVideoDuration
    , creRenderingId
    , creThirdPartyBackupImageImpressionsUrl
    , creFsCommand
    , creAllowScriptAccess
    , creHtmlCodeLocked
    , creRequiredFlashPluginVersion
    , creAuthoringTool
    , creSize
    , creThirdPartyUrls
    , creCounterCustomEvents
    , creKind
    , creSslOverride
    , creHtmlCode
    , creAdvertiserId
    , creRequiredFlashVersion
    , creBackgroundColor
    , creAdTagKeys
    , creSkippable
    , creSslCompliant
    , creIdDimensionValue
    , creBackupImageReportingLabel
    , creCommercialId
    , creActive
    , creExitCustomEvents
    , creAccountId
    , creBackupImageClickThroughUrl
    , creName
    , creOverrideCss
    , creVideoDescription
    , creClickTags
    , creAdParameters
    , creVersion
    , creLatestTraffickedCreativeId
    , creThirdPartyRichMediaImpressionsUrl
    , creLastModifiedInfo
    , creId
    , creStudioAdvertiserId
    , creCreativeAssets
    , creSubaccountId
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
    , creRedirectUrl
    , creAutoAdvanceImages
    , creCreativeFieldAssignments

    -- ** UserRolePermissionGroupsListResponse
    , UserRolePermissionGroupsListResponse
    , userRolePermissionGroupsListResponse
    , urpglrUserRolePermissionGroups
    , urpglrKind

    -- ** DimensionValue
    , DimensionValue
    , dimensionValue
    , dvEtag
    , dvKind
    , dvValue
    , dvMatchType
    , dvDimensionName
    , dvId

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

    -- ** DateRange
    , DateRange
    , dateRange
    , drKind
    , drEndDate
    , drStartDate
    , drRelativeDateRange

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

    -- ** SiteSettings
    , SiteSettings
    , siteSettings
    , ssDisableNewCookie
    , ssDisableBrandSafeAds
    , ssLookbackConfiguration
    , ssTagSetting
    , ssActiveViewOptOut
    , ssCreativeSettings

    -- ** ThirdPartyAuthenticationToken
    , ThirdPartyAuthenticationToken
    , thirdPartyAuthenticationToken
    , tpatValue
    , tpatName

    -- ** BrowsersListResponse
    , BrowsersListResponse
    , browsersListResponse
    , blrKind
    , blrBrowsers

    -- ** ClickThroughURL
    , ClickThroughURL
    , clickThroughURL
    , ctuDefaultLandingPage
    , ctuComputedClickThroughUrl
    , ctuCustomClickThroughUrl
    , ctuLandingPageId

    -- ** ContentCategoriesListResponse
    , ContentCategoriesListResponse
    , contentCategoriesListResponse
    , cclrNextPageToken
    , cclrKind
    , cclrContentCategories

    -- ** Report
    , Report
    , report
    , rDelivery
    , rEtag
    , rOwnerProfileId
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

    -- ** Campaign
    , Campaign
    , campaign
    , camCreativeOptimizationConfiguration
    , camCreativeGroupIds
    , camNielsenOcrEnabled
    , camKind
    , camClickThroughUrlSuffixProperties
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
    , camSubaccountId
    , camAdditionalCreativeOptimizationConfigurations
    , camExternalId
    , camComment
    , camAudienceSegmentGroups
    , camArchived
    , camTraffickerEmails
    , camDefaultClickThroughEventTagProperties

    -- ** ReportCompatibleFields
    , ReportCompatibleFields
    , reportCompatibleFields
    , rcfMetrics
    , rcfKind
    , rcfDimensionFilters
    , rcfPivotedActivityMetrics
    , rcfDimensions

    -- ** FloodlightReportCompatibleFields
    , FloodlightReportCompatibleFields
    , floodlightReportCompatibleFields
    , frcfMetrics
    , frcfKind
    , frcfDimensionFilters
    , frcfDimensions

    -- ** ContentCategory
    , ContentCategory
    , contentCategory
    , ccKind
    , ccAccountId
    , ccName
    , ccId

    -- ** DimensionValueList
    , DimensionValueList
    , dimensionValueList
    , dvlEtag
    , dvlNextPageToken
    , dvlKind
    , dvlItems

    -- ** CreativesListResponse
    , CreativesListResponse
    , creativesListResponse
    , clrlNextPageToken
    , clrlKind
    , clrlCreatives

    -- ** UserRolePermissionGroup
    , UserRolePermissionGroup
    , userRolePermissionGroup
    , urpgKind
    , urpgName
    , urpgId

    -- ** Account
    , Account
    , account
    , aaAccountPermissionIds
    , aaMaximumImageSize
    , aaCurrencyId
    , aaReportsConfiguration
    , aaNielsenOcrEnabled
    , aaKind
    , aaLocale
    , aaActive
    , aaAvailablePermissionIds
    , aaTeaserSizeLimit
    , aaComscoreVceEnabled
    , aaActiveViewOptOut
    , aaName
    , aaAccountProfile
    , aaId
    , aaCountryId
    , aaActiveAdsLimitTier
    , aaDefaultCreativeSizeId
    , aaDescription

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
    , rlSubaccountId
    , rlDescription

    -- ** AccountUserProfilesListResponse
    , AccountUserProfilesListResponse
    , accountUserProfilesListResponse
    , auplrNextPageToken
    , auplrAccountUserProfiles
    , auplrKind

    -- ** DeliverySchedule
    , DeliverySchedule
    , deliverySchedule
    , dsHardCutoff
    , dsPriority
    , dsImpressionRatio
    , dsFrequencyCap

    -- ** PlacementGroupsListResponse
    , PlacementGroupsListResponse
    , placementGroupsListResponse
    , pglrNextPageToken
    , pglrKind
    , pglrPlacementGroups

    -- ** OrdersListResponse
    , OrdersListResponse
    , ordersListResponse
    , olrNextPageToken
    , olrKind
    , olrOrders

    -- ** UserRolePermissionsListResponse
    , UserRolePermissionsListResponse
    , userRolePermissionsListResponse
    , urplrKind
    , urplrUserRolePermissions

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
    , lpUrl
    , lpName
    , lpId

    -- ** TagSetting
    , TagSetting
    , tagSetting
    , tsKeywordOption
    , tsIncludeClickThroughUrls
    , tsIncludeClickTracking
    , tsAdditionalKeyValues

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

    -- ** ConnectionTypesListResponse
    , ConnectionTypesListResponse
    , connectionTypesListResponse
    , ctlrKind
    , ctlrConnectionTypes

    -- ** LookbackConfiguration
    , LookbackConfiguration
    , lookbackConfiguration
    , lcClickDuration
    , lcPostImpressionActivitiesDuration

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

    -- ** ReportList
    , ReportList
    , reportList
    , repEtag
    , repNextPageToken
    , repKind
    , repItems

    -- ** EventTagsListResponse
    , EventTagsListResponse
    , eventTagsListResponse
    , etlrKind
    , etlrEventTags

    -- ** CampaignCreativeAssociation
    , CampaignCreativeAssociation
    , campaignCreativeAssociation
    , ccaKind
    , ccaCreativeId

    -- ** AccountActiveAdSummary
    , AccountActiveAdSummary
    , accountActiveAdSummary
    , aaasAvailableAds
    , aaasKind
    , aaasAccountId
    , aaasActiveAds
    , aaasActiveAdsLimitTier

    -- ** OffsetPosition
    , OffsetPosition
    , offsetPosition
    , opLeft
    , opTop

    -- ** FloodlightActivityPublisherDynamicTag
    , FloodlightActivityPublisherDynamicTag
    , floodlightActivityPublisherDynamicTag
    , fapdtClickThrough
    , fapdtSiteIdDimensionValue
    , fapdtDynamicTag
    , fapdtDirectorySiteId
    , fapdtSiteId
    , fapdtViewThrough

    -- ** UserRolesListResponse
    , UserRolesListResponse
    , userRolesListResponse
    , urlrNextPageToken
    , urlrKind
    , urlrUserRoles

    -- ** AudienceSegment
    , AudienceSegment
    , audienceSegment
    , asName
    , asId
    , asAllocation

    -- ** City
    , City
    , city
    , citMetroCode
    , citRegionCode
    , citKind
    , citRegionDartId
    , citMetroDmaId
    , citName
    , citCountryCode
    , citCountryDartId
    , citDartId

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

    -- ** KeyValueTargetingExpression
    , KeyValueTargetingExpression
    , keyValueTargetingExpression
    , kvteExpression

    -- ** DfpSettings
    , DfpSettings
    , dfpSettings
    , dsPubPaidPlacementAccepted
    , dsDfpNetworkName
    , dsPublisherPortalOnly
    , dsProgrammaticPlacementAccepted
    , dsDfpNetworkCode

    -- ** AdvertisersListResponse
    , AdvertisersListResponse
    , advertisersListResponse
    , advNextPageToken
    , advKind
    , advAdvertisers

    -- ** CountriesListResponse
    , CountriesListResponse
    , countriesListResponse
    , couoKind
    , couoCountries

    -- ** CompatibleFields
    , CompatibleFields
    , compatibleFields
    , cfReachReportCompatibleFields
    , cfCrossDimensionReachReportCompatibleFields
    , cfKind
    , cfFloodlightReportCompatibleFields
    , cfReportCompatibleFields
    , cfPathToConversionReportCompatibleFields

    -- ** AccountPermissionGroupsListResponse
    , AccountPermissionGroupsListResponse
    , accountPermissionGroupsListResponse
    , apglrKind
    , apglrAccountPermissionGroups

    -- ** PathToConversionReportCompatibleFields
    , PathToConversionReportCompatibleFields
    , pathToConversionReportCompatibleFields
    , ptcrcfMetrics
    , ptcrcfKind
    , ptcrcfConversionDimensions
    , ptcrcfCustomFloodlightVariables
    , ptcrcfPerInteractionDimensions

    -- ** CompanionClickThroughOverride
    , CompanionClickThroughOverride
    , companionClickThroughOverride
    , cctoCreativeId
    , cctoClickThroughUrl

    -- ** PlatformType
    , PlatformType
    , platformType
    , ptKind
    , ptName
    , ptId

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

    -- ** OperatingSystemVersion
    , OperatingSystemVersion
    , operatingSystemVersion
    , osvMinorVersion
    , osvKind
    , osvOperatingSystem
    , osvMajorVersion
    , osvName
    , osvId

    -- ** AccountPermission
    , AccountPermission
    , accountPermission
    , apKind
    , apAccountProfiles
    , apName
    , apId
    , apLevel
    , apPermissionGroupId

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

    -- ** PostalCodesListResponse
    , PostalCodesListResponse
    , postalCodesListResponse
    , pclrKind
    , pclrPostalCodes

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

    -- ** OperatingSystemsListResponse
    , OperatingSystemsListResponse
    , operatingSystemsListResponse
    , oslrKind
    , oslrOperatingSystems

    -- ** PlacementStrategy
    , PlacementStrategy
    , placementStrategy
    , psKind
    , psAccountId
    , psName
    , psId

    -- ** EventTagOverride
    , EventTagOverride
    , eventTagOverride
    , etoEnabled
    , etoId

    -- ** PlatformTypesListResponse
    , PlatformTypesListResponse
    , platformTypesListResponse
    , ptlrKind
    , ptlrPlatformTypes

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
    , advdSubaccountId
    , advdFloodlightConfigurationIdDimensionValue
    , advdClickThroughUrlSuffix

    -- ** AccountPermissionGroup
    , AccountPermissionGroup
    , accountPermissionGroup
    , apgKind
    , apgName
    , apgId

    -- ** TargetWindow
    , TargetWindow
    , targetWindow
    , twCustomHtml
    , twTargetWindowOption

    -- ** LastModifiedInfo
    , LastModifiedInfo
    , lastModifiedInfo
    , lmiTime

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

    -- ** Region
    , Region
    , region
    , regRegionCode
    , regKind
    , regName
    , regCountryCode
    , regCountryDartId
    , regDartId

    -- ** DirectorySitesListResponse
    , DirectorySitesListResponse
    , directorySitesListResponse
    , dslrNextPageToken
    , dslrKind
    , dslrDirectorySites

    -- ** CreativeFieldValuesListResponse
    , CreativeFieldValuesListResponse
    , creativeFieldValuesListResponse
    , cfvlrNextPageToken
    , cfvlrKind
    , cfvlrCreativeFieldValues

    -- ** DimensionFilter
    , DimensionFilter
    , dimensionFilter
    , dfKind
    , dfValue
    , dfDimensionName

    -- ** PricingSchedulePricingPeriod
    , PricingSchedulePricingPeriod
    , pricingSchedulePricingPeriod
    , psppEndDate
    , psppRateOrCostNanos
    , psppStartDate
    , psppUnits
    , psppPricingComment

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

    -- ** AdvertiserGroupsListResponse
    , AdvertiserGroupsListResponse
    , advertiserGroupsListResponse
    , aglrNextPageToken
    , aglrKind
    , aglrAdvertiserGroups

    -- ** FloodlightActivityGroupsListResponse
    , FloodlightActivityGroupsListResponse
    , floodlightActivityGroupsListResponse
    , faglrNextPageToken
    , faglrKind
    , faglrFloodlightActivityGroups

    -- ** RichMediaExitOverride
    , RichMediaExitOverride
    , richMediaExitOverride
    , rmeoUseCustomExitUrl
    , rmeoExitId
    , rmeoCustomExitUrl

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

    -- ** UserProfileList
    , UserProfileList
    , userProfileList
    , uplEtag
    , uplKind
    , uplItems

    -- ** DirectorySiteContactsListResponse
    , DirectorySiteContactsListResponse
    , directorySiteContactsListResponse
    , dsclrNextPageToken
    , dsclrKind
    , dsclrDirectorySiteContacts

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

    -- ** OrderDocumentsListResponse
    , OrderDocumentsListResponse
    , orderDocumentsListResponse
    , odlrNextPageToken
    , odlrKind
    , odlrOrderDocuments

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

    -- ** SortedDimension
    , SortedDimension
    , sortedDimension
    , sdKind
    , sdSortOrder
    , sdName

    -- ** Recipient
    , Recipient
    , recipient
    , recEmail
    , recKind
    , recDeliveryType

    -- ** PlacementsListResponse
    , PlacementsListResponse
    , placementsListResponse
    , plaNextPageToken
    , plaKind
    , plaPlacements

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
    , cStreamingServingUrl
    , cZipFilesize
    , cTransparency
    , cHideSelectionBoxes
    , cSslCompliant
    , cFileSize
    , cAssetIdentifier
    , cDurationType
    , cProgressiveServingUrl
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

    -- ** MetrosListResponse
    , MetrosListResponse
    , metrosListResponse
    , mlrKind
    , mlrMetros

    -- ** PlacementGroup
    , PlacementGroup
    , placementGroup
    , pgPlacementStrategyId
    , pgSiteIdDimensionValue
    , pgPricingSchedule
    , pgKind
    , pgCampaignIdDimensionValue
    , pgAdvertiserId
    , pgAdvertiserIdDimensionValue
    , pgCampaignId
    , pgIdDimensionValue
    , pgPlacementGroupType
    , pgContentCategoryId
    , pgDirectorySiteIdDimensionValue
    , pgAccountId
    , pgName
    , pgDirectorySiteId
    , pgCreateInfo
    , pgChildPlacementIds
    , pgLastModifiedInfo
    , pgId
    , pgPrimaryPlacementId
    , pgSubaccountId
    , pgExternalId
    , pgComment
    , pgPrimaryPlacementIdDimensionValue
    , pgSiteId
    , pgArchived

    -- ** CreativeGroupsListResponse
    , CreativeGroupsListResponse
    , creativeGroupsListResponse
    , cglrCreativeGroups
    , cglrNextPageToken
    , cglrKind

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

    -- ** CampaignCreativeAssociationsListResponse
    , CampaignCreativeAssociationsListResponse
    , campaignCreativeAssociationsListResponse
    , ccalrCampaignCreativeAssociations
    , ccalrNextPageToken
    , ccalrKind

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

    -- ** CreativeSettings
    , CreativeSettings
    , creativeSettings
    , csIFrameHeader
    , csIFrameFooter

    -- ** UserDefinedVariableConfiguration
    , UserDefinedVariableConfiguration
    , userDefinedVariableConfiguration
    , udvcReportName
    , udvcDataType
    , udvcVariableType

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

    -- ** CreativeAssetMetadata
    , CreativeAssetMetadata
    , creativeAssetMetadata
    , camaKind
    , camaAssetIdentifier
    , camaClickTags
    , camaWarnedValidationRules
    , camaDetectedFeatures

    -- ** UserRolePermission
    , UserRolePermission
    , userRolePermission
    , urpKind
    , urpAvailability
    , urpName
    , urpId
    , urpPermissionGroupId

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

    -- ** File
    , File
    , file
    , fStatus
    , fEtag
    , fKind
    , fUrls
    , fReportId
    , fDateRange
    , fFormat
    , fLastModifiedTime
    , fId
    , fFileName

    -- ** OrderContact
    , OrderContact
    , orderContact
    , ocSignatureUserProfileId
    , ocContactName
    , ocContactTitle
    , ocContactType
    , ocContactInfo

    -- ** SitesListResponse
    , SitesListResponse
    , sitesListResponse
    , slrlNextPageToken
    , slrlKind
    , slrlSites

    -- ** ThirdPartyTrackingURL
    , ThirdPartyTrackingURL
    , thirdPartyTrackingURL
    , tptuUrl
    , tptuThirdPartyUrlType

    -- ** Placement
    , Placement
    , placement
    , ppStatus
    , ppPlacementStrategyId
    , ppTagFormats
    , ppSiteIdDimensionValue
    , ppPricingSchedule
    , ppSize
    , ppKind
    , ppKeyName
    , ppCampaignIdDimensionValue
    , ppAdvertiserId
    , ppAdvertiserIdDimensionValue
    , ppCampaignId
    , ppIdDimensionValue
    , ppPrimary
    , ppLookbackConfiguration
    , ppTagSetting
    , ppContentCategoryId
    , ppDirectorySiteIdDimensionValue
    , ppAccountId
    , ppPaymentSource
    , ppName
    , ppDirectorySiteId
    , ppCreateInfo
    , ppLastModifiedInfo
    , ppId
    , ppSslRequired
    , ppSubaccountId
    , ppPlacementGroupIdDimensionValue
    , ppExternalId
    , ppPlacementGroupId
    , ppComment
    , ppSiteId
    , ppCompatibility
    , ppArchived
    , ppPaymentApproved
    , ppPublisherUpdateInfo

    -- ** DirectorySiteContactAssignment
    , DirectorySiteContactAssignment
    , directorySiteContactAssignment
    , dscaVisibility
    , dscaContactId

    -- ** FloodlightActivitiesGenerateTagResponse
    , FloodlightActivitiesGenerateTagResponse
    , floodlightActivitiesGenerateTagResponse
    , fagtrFloodlightActivityTag
    , fagtrKind

    -- ** ListTargetingExpression
    , ListTargetingExpression
    , listTargetingExpression
    , lteExpression

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

    -- ** AdSlot
    , AdSlot
    , adSlot
    , aHeight
    , aPaymentSourceType
    , aLinkedPlacementId
    , aWidth
    , aPrimary
    , aName
    , aComment
    , aCompatibility

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

    -- ** DefaultClickThroughEventTagProperties
    , DefaultClickThroughEventTagProperties
    , defaultClickThroughEventTagProperties
    , dctetpOverrideInheritedEventTag
    , dctetpDefaultClickThroughEventTagId

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
import           Network.Google.Resource.DFAReporting.AccountUserProfiles.Get
import           Network.Google.Resource.DFAReporting.AccountUserProfiles.Insert
import           Network.Google.Resource.DFAReporting.AccountUserProfiles.List
import           Network.Google.Resource.DFAReporting.AccountUserProfiles.Patch
import           Network.Google.Resource.DFAReporting.AccountUserProfiles.Update
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
import           Network.Google.Resource.DFAReporting.Subaccounts.Get
import           Network.Google.Resource.DFAReporting.Subaccounts.Insert
import           Network.Google.Resource.DFAReporting.Subaccounts.List
import           Network.Google.Resource.DFAReporting.Subaccounts.Patch
import           Network.Google.Resource.DFAReporting.Subaccounts.Update
import           Network.Google.Resource.DFAReporting.TargetableRemarketingLists.Get
import           Network.Google.Resource.DFAReporting.TargetableRemarketingLists.List
import           Network.Google.Resource.DFAReporting.UserProfiles.Get
import           Network.Google.Resource.DFAReporting.UserProfiles.List
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

type DFAReportingAPI =
     InventoryItems :<|> PlacementStrategies :<|>
       CampaignCreativeAssociations
       :<|> CreativeGroups
       :<|> MobileCarriers
       :<|> LandingPages
       :<|> RemarketingListShares
       :<|> AccountActiveAdSummaries
       :<|> UserRolePermissionGroups
       :<|> RemarketingLists
       :<|> Accounts
       :<|> Reports
       :<|> Campaigns
       :<|> AccountUserProfiles
       :<|> Creatives
       :<|> DimensionValues
       :<|> FloodlightConfigurations
       :<|> Regions
       :<|> FloodlightActivities
       :<|> AccountPermissionGroups
       :<|> Advertisers
       :<|> Countries
       :<|> UserRoles
       :<|> UserProfiles
       :<|> OperatingSystemVersions
       :<|> AccountPermissions
       :<|> Cities
       :<|> ChangeLogs
       :<|> TargetableRemarketingLists
       :<|> PlatformTypes
       :<|> ContentCategories
       :<|> Browsers
       :<|> Placements
       :<|> Metros
       :<|> CreativeFields
       :<|> OrderDocuments
       :<|> Files
       :<|> ConnectionTypes
       :<|> PlacementGroups
       :<|> EventTags
       :<|> Orders
       :<|> UserRolePermissions
       :<|> CreativeAssets
       :<|> Sites
       :<|> OperatingSystems
       :<|> PostalCodes
       :<|> Sizes
       :<|> Ads
       :<|> Projects
       :<|> Subaccounts
       :<|> AdvertiserGroups
       :<|> CreativeFieldValues
       :<|> DirectorySiteContacts
       :<|> DirectorySites
       :<|> FloodlightActivityGroups

dFAReportingAPI :: Proxy DFAReportingAPI
dFAReportingAPI = Proxy
