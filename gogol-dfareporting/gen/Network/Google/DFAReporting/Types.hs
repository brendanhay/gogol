{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.DFAReporting.Types
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.DFAReporting.Types
    (
    -- * Service URL
      dFAReportingURL

    -- * DfareportingContentCategoriesListSortOrder
    , DfareportingContentCategoriesListSortOrder (..)

    -- * FloodlightActivityTagFormat
    , FloodlightActivityTagFormat (..)

    -- * Browser
    , Browser
    , browser
    , bMinorVersion
    , bKind
    , bBrowserVersionId
    , bMajorVersion
    , bName
    , bDartId

    -- * CampaignsListResponse
    , CampaignsListResponse
    , campaignsListResponse
    , clrNextPageToken
    , clrCampaigns
    , clrKind

    -- * DateRangeRelativeDateRange
    , DateRangeRelativeDateRange (..)

    -- * DfareportingFloodlightActivitiesListSortField
    , DfareportingFloodlightActivitiesListSortField (..)

    -- * OptimizationActivity
    , OptimizationActivity
    , optimizationActivity
    , oaWeight
    , oaFloodlightActivityId
    , oaFloodlightActivityIdDimensionValue

    -- * DfareportingCreativeGroupsListSortOrder
    , DfareportingCreativeGroupsListSortOrder (..)

    -- * FileList
    , FileList
    , fileList
    , flEtag
    , flNextPageToken
    , flKind
    , flItems

    -- * DfareportingPlacementGroupsListPlacementGroupType
    , DfareportingPlacementGroupsListPlacementGroupType (..)

    -- * ClickTag
    , ClickTag
    , clickTag
    , ctValue
    , ctName
    , ctEventName

    -- * DfareportingCampaignCreativeAssociationsListSortOrder
    , DfareportingCampaignCreativeAssociationsListSortOrder (..)

    -- * ListPopulationClause
    , ListPopulationClause
    , listPopulationClause
    , lpcTerms

    -- * GeoTargeting
    , GeoTargeting
    , geoTargeting
    , gtRegions
    , gtCountries
    , gtCities
    , gtMetros
    , gtExcludeCountries
    , gtPostalCodes

    -- * CreativeCustomEvent
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

    -- * ReachReportCompatibleFields
    , ReachReportCompatibleFields
    , reachReportCompatibleFields
    , rrcfMetrics
    , rrcfReachByFrequencyMetrics
    , rrcfKind
    , rrcfDimensionFilters
    , rrcfPivotedActivityMetrics
    , rrcfDimensions

    -- * ListPopulationTermOperator
    , ListPopulationTermOperator (..)

    -- * CreativeAssetPositionLeftUnit
    , CreativeAssetPositionLeftUnit (..)

    -- * RecipientDeliveryType
    , RecipientDeliveryType (..)

    -- * CreativeGroupAssignment
    , CreativeGroupAssignment
    , creativeGroupAssignment
    , cgaCreativeGroupNumber
    , cgaCreativeGroupId

    -- * PlacementCompatibility
    , PlacementCompatibility (..)

    -- * AdsListResponse
    , AdsListResponse
    , adsListResponse
    , alrNextPageToken
    , alrKind
    , alrAds

    -- * ListPopulationTerm
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

    -- * PricingScheduleCapCostOption
    , PricingScheduleCapCostOption (..)

    -- * SubaccountsListResponse
    , SubaccountsListResponse
    , subaccountsListResponse
    , slrNextPageToken
    , slrKind
    , slrSubaccounts

    -- * UserRolePermissionAvailability
    , UserRolePermissionAvailability (..)

    -- * TechnologyTargeting
    , TechnologyTargeting
    , technologyTargeting
    , ttMobileCarriers
    , ttOperatingSystemVersions
    , ttPlatformTypes
    , ttBrowsers
    , ttConnectionTypes
    , ttOperatingSystems

    -- * ProjectsListResponse
    , ProjectsListResponse
    , projectsListResponse
    , plrNextPageToken
    , plrKind
    , plrProjects

    -- * DfareportingAccountUserProfilesListSortField
    , DfareportingAccountUserProfilesListSortField (..)

    -- * DirectorySiteContactAssignmentVisibility
    , DirectorySiteContactAssignmentVisibility (..)

    -- * AdSlotCompatibility
    , AdSlotCompatibility (..)

    -- * DfareportingPlacementsGeneratetagsTagFormats
    , DfareportingPlacementsGeneratetagsTagFormats (..)

    -- * DirectorySiteSettings
    , DirectorySiteSettings
    , directorySiteSettings
    , dssInterstitialPlacementAccepted
    , dssDfpSettings
    , dssVerificationTagOptOut
    , dssActiveViewOptOut
    , dssVideoActiveViewOptOut
    , dssInstreamVideoPlacementAccepted
    , dssNielsenOcrOptOut

    -- * TagSettings
    , TagSettings
    , tagSettings
    , tsDynamicTagEnabled
    , tsImageTagEnabled

    -- * InventoryItem
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

    -- * ThirdPartyTrackingURLThirdPartyURLType
    , ThirdPartyTrackingURLThirdPartyURLType (..)

    -- * ListPopulationRule
    , ListPopulationRule
    , listPopulationRule
    , lprFloodlightActivityName
    , lprFloodlightActivityId
    , lprListPopulationClauses

    -- * CreativeAssetRole
    , CreativeAssetRole (..)

    -- * DfareportingCreativesListSortField
    , DfareportingCreativesListSortField (..)

    -- * CreativeRotation
    , CreativeRotation
    , creativeRotation
    , crWeightCalculationStrategy
    , crCreativeAssignments
    , crCreativeOptimizationConfigurationId
    , crType

    -- * SizesListResponse
    , SizesListResponse
    , sizesListResponse
    , sKind
    , sSizes

    -- * DfareportingPlacementStrategiesListSortOrder
    , DfareportingPlacementStrategiesListSortOrder (..)

    -- * DirectorySite
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

    -- * FloodlightActivitiesListResponse
    , FloodlightActivitiesListResponse
    , floodlightActivitiesListResponse
    , falrNextPageToken
    , falrKind
    , falrFloodlightActivities

    -- * AccountUserProfileTraffickerType
    , AccountUserProfileTraffickerType (..)

    -- * DfareportingEventTagsListSortField
    , DfareportingEventTagsListSortField (..)

    -- * DirectorySiteInterstitialTagFormats
    , DirectorySiteInterstitialTagFormats (..)

    -- * CrossDimensionReachReportCompatibleFields
    , CrossDimensionReachReportCompatibleFields
    , crossDimensionReachReportCompatibleFields
    , cdrrcfMetrics
    , cdrrcfBreakdown
    , cdrrcfKind
    , cdrrcfDimensionFilters
    , cdrrcfOverlapMetrics

    -- * FsCommand
    , FsCommand
    , fsCommand
    , fcPositionOption
    , fcLeft
    , fcWindowHeight
    , fcWindowWidth
    , fcTop

    -- * CreativeOptimizationConfiguration
    , CreativeOptimizationConfiguration
    , creativeOptimizationConfiguration
    , cocOptimizationModel
    , cocName
    , cocOptimizationActivitys
    , cocId

    -- * FileStatus
    , FileStatus (..)

    -- * FloodlightActivityDynamicTag
    , FloodlightActivityDynamicTag
    , floodlightActivityDynamicTag
    , fadtTag
    , fadtName
    , fadtId

    -- * PlacementAssignment
    , PlacementAssignment
    , placementAssignment
    , paPlacementId
    , paPlacementIdDimensionValue
    , paActive
    , paSslRequired

    -- * DfareportingFilesListSortField
    , DfareportingFilesListSortField (..)

    -- * CreativeFieldValue
    , CreativeFieldValue
    , creativeFieldValue
    , cfvKind
    , cfvValue
    , cfvId

    -- * DfareportingTargetableRemarketingListsListSortOrder
    , DfareportingTargetableRemarketingListsListSortOrder (..)

    -- * TagData
    , TagData
    , tagData
    , tdClickTag
    , tdFormat
    , tdCreativeId
    , tdAdId
    , tdImpressionTag

    -- * DfareportingPlacementGroupsListSortField
    , DfareportingPlacementGroupsListSortField (..)

    -- * DayPartTargeting
    , DayPartTargeting
    , dayPartTargeting
    , dptDaysOfWeek
    , dptHoursOfDay
    , dptUserLocalTime

    -- * CreativeCustomEventArtworkType
    , CreativeCustomEventArtworkType (..)

    -- * RegionsListResponse
    , RegionsListResponse
    , regionsListResponse
    , rlrKind
    , rlrRegions

    -- * DirectorySiteContact
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

    -- * FloodlightActivityGroup
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

    -- * DfareportingDirectorySiteContactsListSortOrder
    , DfareportingDirectorySiteContactsListSortOrder (..)

    -- * AdvertiserGroup
    , AdvertiserGroup
    , advertiserGroup
    , aKind
    , aAccountId
    , aName
    , aId

    -- * DfareportingPlacementsListPaymentSource
    , DfareportingPlacementsListPaymentSource (..)

    -- * ReportFloodlightCriteriaReportProperties
    , ReportFloodlightCriteriaReportProperties
    , reportFloodlightCriteriaReportProperties
    , rfcrpIncludeUnattributedIPConversions
    , rfcrpIncludeUnattributedCookieConversions
    , rfcrpIncludeAttributedIPConversions

    -- * CreativeFieldAssignment
    , CreativeFieldAssignment
    , creativeFieldAssignment
    , cfaCreativeFieldId
    , cfaCreativeFieldValueId

    -- * DfareportingCreativeFieldValuesListSortOrder
    , DfareportingCreativeFieldValuesListSortOrder (..)

    -- * EventTagStatus
    , EventTagStatus (..)

    -- * FloodlightConfigurationsListResponse
    , FloodlightConfigurationsListResponse
    , floodlightConfigurationsListResponse
    , fclrKind
    , fclrFloodlightConfigurations

    -- * CreativeAssetDetectedFeatures
    , CreativeAssetDetectedFeatures (..)

    -- * DimensionValueRequest
    , DimensionValueRequest
    , dimensionValueRequest
    , dvrKind
    , dvrEndDate
    , dvrFilters
    , dvrStartDate
    , dvrDimensionName

    -- * FileFormat
    , FileFormat (..)

    -- * Ad
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

    -- * FloodlightConfigurationNATuralSearchConversionAttributionOption
    , FloodlightConfigurationNATuralSearchConversionAttributionOption (..)

    -- * CreativeAssetArtworkType
    , CreativeAssetArtworkType (..)

    -- * PricingSchedulePricingType
    , PricingSchedulePricingType (..)

    -- * ObjectFilter
    , ObjectFilter
    , objectFilter
    , ofStatus
    , ofKind
    , ofObjectIds

    -- * DfareportingPlacementsListSortField
    , DfareportingPlacementsListSortField (..)

    -- * ReportsConfiguration
    , ReportsConfiguration
    , reportsConfiguration
    , rcExposureToConversionEnabled
    , rcReportGenerationTimeZoneId
    , rcLookbackConfiguration

    -- * Size
    , Size
    , size
    , sizHeight
    , sizKind
    , sizWidth
    , sizIab
    , sizId

    -- * InventoryItemsListResponse
    , InventoryItemsListResponse
    , inventoryItemsListResponse
    , iilrInventoryItems
    , iilrNextPageToken
    , iilrKind

    -- * CreativeCustomEventTargetType
    , CreativeCustomEventTargetType (..)

    -- * DfareportingPlacementsListCompatibilities
    , DfareportingPlacementsListCompatibilities (..)

    -- * DfareportingCreativeFieldsListSortField
    , DfareportingCreativeFieldsListSortField (..)

    -- * ReportFloodlightCriteria
    , ReportFloodlightCriteria
    , reportFloodlightCriteria
    , rfcReportProperties
    , rfcMetricNames
    , rfcCustomRichMediaEvents
    , rfcDimensionFilters
    , rfcDateRange
    , rfcFloodlightConfigId
    , rfcDimensions

    -- * TargetableRemarketingListListSource
    , TargetableRemarketingListListSource (..)

    -- * DfareportingOrderDocumentsListSortField
    , DfareportingOrderDocumentsListSortField (..)

    -- * ReportCriteria
    , ReportCriteria
    , reportCriteria
    , rcMetricNames
    , rcCustomRichMediaEvents
    , rcDimensionFilters
    , rcActivities
    , rcDateRange
    , rcDimensions

    -- * DfareportingSubaccountsListSortOrder
    , DfareportingSubaccountsListSortOrder (..)

    -- * ReportScheduleRepeatsOnWeekDays
    , ReportScheduleRepeatsOnWeekDays (..)

    -- * Project
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

    -- * DfareportingAdsListSortOrder
    , DfareportingAdsListSortOrder (..)

    -- * Subaccount
    , Subaccount
    , subaccount
    , subKind
    , subAvailablePermissionIds
    , subAccountId
    , subName
    , subId

    -- * CreativeAssetDurationType
    , CreativeAssetDurationType (..)

    -- * PlacementStrategiesListResponse
    , PlacementStrategiesListResponse
    , placementStrategiesListResponse
    , pslrPlacementStrategies
    , pslrNextPageToken
    , pslrKind

    -- * PricingSchedule
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

    -- * PostalCode
    , PostalCode
    , postalCode
    , pcKind
    , pcCode
    , pcCountryCode
    , pcId
    , pcCountryDartId

    -- * OperatingSystem
    , OperatingSystem
    , operatingSystem
    , osDesktop
    , osKind
    , osName
    , osMobile
    , osDartId

    -- * DfareportingContentCategoriesListSortField
    , DfareportingContentCategoriesListSortField (..)

    -- * CitiesListResponse
    , CitiesListResponse
    , citiesListResponse
    , cKind
    , cCities

    -- * DfareportingFloodlightActivitiesListSortOrder
    , DfareportingFloodlightActivitiesListSortOrder (..)

    -- * ChangeLogsListResponse
    , ChangeLogsListResponse
    , changeLogsListResponse
    , cllrNextPageToken
    , cllrKind
    , cllrChangeLogs

    -- * AccountPermissionsListResponse
    , AccountPermissionsListResponse
    , accountPermissionsListResponse
    , aplrKind
    , aplrAccountPermissions

    -- * ClickThroughURLSuffixProperties
    , ClickThroughURLSuffixProperties
    , clickThroughURLSuffixProperties
    , ctuspOverrideInheritedSuffix
    , ctuspClickThroughUrlSuffix

    -- * OperatingSystemVersionsListResponse
    , OperatingSystemVersionsListResponse
    , operatingSystemVersionsListResponse
    , osvlrKind
    , osvlrOperatingSystemVersions

    -- * ReportReachCriteria
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

    -- * TargetableRemarketingListsListResponse
    , TargetableRemarketingListsListResponse
    , targetableRemarketingListsListResponse
    , trllrNextPageToken
    , trllrKind
    , trllrTargetableRemarketingLists

    -- * UserDefinedVariableConfigurationVariableType
    , UserDefinedVariableConfigurationVariableType (..)

    -- * Country
    , Country
    , country
    , couKind
    , couName
    , couCountryCode
    , couDartId
    , couSslEnabled

    -- * DfareportingCreativeGroupsListSortField
    , DfareportingCreativeGroupsListSortField (..)

    -- * FsCommandPositionOption
    , FsCommandPositionOption (..)

    -- * Pricing
    , Pricing
    , pricing
    , priEndDate
    , priStartDate
    , priGroupType
    , priPricingType
    , priFlights
    , priCapCostType

    -- * DayPartTargetingDaysOfWeek
    , DayPartTargetingDaysOfWeek (..)

    -- * CustomRichMediaEvents
    , CustomRichMediaEvents
    , customRichMediaEvents
    , crmeKind
    , crmeFilteredEventIds

    -- * DfareportingChangeLogsListAction
    , DfareportingChangeLogsListAction (..)

    -- * AudienceSegmentGroup
    , AudienceSegmentGroup
    , audienceSegmentGroup
    , asgAudienceSegments
    , asgName
    , asgId

    -- * FloodlightActivityUserDefinedVariableTypes
    , FloodlightActivityUserDefinedVariableTypes (..)

    -- * DfareportingFilesListScope
    , DfareportingFilesListScope (..)

    -- * Dimension
    , Dimension
    , dimension
    , dKind
    , dName

    -- * Flight
    , Flight
    , flight
    , fRateOrCost
    , fEndDate
    , fStartDate
    , fUnits

    -- * Activities
    , Activities
    , activities
    , actKind
    , actMetricNames
    , actFilters

    -- * ReportDeliveryEmailOwnerDeliveryType
    , ReportDeliveryEmailOwnerDeliveryType (..)

    -- * SiteContactContactType
    , SiteContactContactType (..)

    -- * DfareportingPlacementStrategiesListSortField
    , DfareportingPlacementStrategiesListSortField (..)

    -- * DfareportingCreativesListSortOrder
    , DfareportingCreativesListSortOrder (..)

    -- * AccountsListResponse
    , AccountsListResponse
    , accountsListResponse
    , accNextPageToken
    , accAccounts
    , accKind

    -- * Creative
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

    -- * UserRolePermissionGroupsListResponse
    , UserRolePermissionGroupsListResponse
    , userRolePermissionGroupsListResponse
    , urpglrUserRolePermissionGroups
    , urpglrKind

    -- * DimensionValue
    , DimensionValue
    , dimensionValue
    , dvEtag
    , dvKind
    , dvValue
    , dvMatchType
    , dvDimensionName
    , dvId

    -- * SiteContact
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

    -- * DateRange
    , DateRange
    , dateRange
    , drKind
    , drEndDate
    , drStartDate
    , drRelativeDateRange

    -- * AccountUserProfile
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

    -- * FloodlightConfigurationFirstDayOfWeek
    , FloodlightConfigurationFirstDayOfWeek (..)

    -- * DeliverySchedulePriority
    , DeliverySchedulePriority (..)

    -- * PlacementTag
    , PlacementTag
    , placementTag
    , ptPlacementId
    , ptTagDatas

    -- * DfareportingAccountUserProfilesListSortOrder
    , DfareportingAccountUserProfilesListSortOrder (..)

    -- * RemarketingListsListResponse
    , RemarketingListsListResponse
    , remarketingListsListResponse
    , rllrNextPageToken
    , rllrRemarketingLists
    , rllrKind

    -- * OrderContactContactType
    , OrderContactContactType (..)

    -- * CreativeAssetStartTimeType
    , CreativeAssetStartTimeType (..)

    -- * DirectorySiteContactRole
    , DirectorySiteContactRole (..)

    -- * SiteSettings
    , SiteSettings
    , siteSettings
    , ssDisableNewCookie
    , ssDisableBrandSafeAds
    , ssLookbackConfiguration
    , ssTagSetting
    , ssActiveViewOptOut
    , ssCreativeSettings

    -- * DfareportingDirectorySitesListSortField
    , DfareportingDirectorySitesListSortField (..)

    -- * PlacementPaymentSource
    , PlacementPaymentSource (..)

    -- * DfareportingOrdersListSortOrder
    , DfareportingOrdersListSortOrder (..)

    -- * RemarketingListListSource
    , RemarketingListListSource (..)

    -- * DfareportingFloodlightActivityGroupsListSortField
    , DfareportingFloodlightActivityGroupsListSortField (..)

    -- * DfareportingFloodlightActivityGroupsListType
    , DfareportingFloodlightActivityGroupsListType (..)

    -- * ThirdPartyAuthenticationToken
    , ThirdPartyAuthenticationToken
    , thirdPartyAuthenticationToken
    , tpatValue
    , tpatName

    -- * PopupWindowPropertiesPositionType
    , PopupWindowPropertiesPositionType (..)

    -- * DfareportingCampaignsListSortOrder
    , DfareportingCampaignsListSortOrder (..)

    -- * AccountUserProfileUserAccessType
    , AccountUserProfileUserAccessType (..)

    -- * BrowsersListResponse
    , BrowsersListResponse
    , browsersListResponse
    , blrKind
    , blrBrowsers

    -- * EventTagType
    , EventTagType (..)

    -- * DfareportingReportsListSortOrder
    , DfareportingReportsListSortOrder (..)

    -- * ProjectAudienceGender
    , ProjectAudienceGender (..)

    -- * CreativeAuthoringTool
    , CreativeAuthoringTool (..)

    -- * ClickThroughURL
    , ClickThroughURL
    , clickThroughURL
    , ctuDefaultLandingPage
    , ctuComputedClickThroughUrl
    , ctuCustomClickThroughUrl
    , ctuLandingPageId

    -- * ContentCategoriesListResponse
    , ContentCategoriesListResponse
    , contentCategoriesListResponse
    , cclrNextPageToken
    , cclrKind
    , cclrContentCategories

    -- * Report
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

    -- * UserDefinedVariableConfigurationDataType
    , UserDefinedVariableConfigurationDataType (..)

    -- * DfareportingAdvertiserGroupsListSortField
    , DfareportingAdvertiserGroupsListSortField (..)

    -- * CreativeAssetIdType
    , CreativeAssetIdType (..)

    -- * Campaign
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

    -- * FloodlightConfigurationStandardVariableTypes
    , FloodlightConfigurationStandardVariableTypes (..)

    -- * TagSettingKeywordOption
    , TagSettingKeywordOption (..)

    -- * TagDataFormat
    , TagDataFormat (..)

    -- * ReportCompatibleFields
    , ReportCompatibleFields
    , reportCompatibleFields
    , rcfMetrics
    , rcfKind
    , rcfDimensionFilters
    , rcfPivotedActivityMetrics
    , rcfDimensions

    -- * FloodlightReportCompatibleFields
    , FloodlightReportCompatibleFields
    , floodlightReportCompatibleFields
    , frcfMetrics
    , frcfKind
    , frcfDimensionFilters
    , frcfDimensions

    -- * OrderDocumentType
    , OrderDocumentType (..)

    -- * DfareportingCreativeFieldsListSortOrder
    , DfareportingCreativeFieldsListSortOrder (..)

    -- * FloodlightActivityCacheBustingType
    , FloodlightActivityCacheBustingType (..)

    -- * AccountActiveAdSummaryActiveAdsLimitTier
    , AccountActiveAdSummaryActiveAdsLimitTier (..)

    -- * ContentCategory
    , ContentCategory
    , contentCategory
    , ccKind
    , ccAccountId
    , ccName
    , ccId

    -- * DimensionValueList
    , DimensionValueList
    , dimensionValueList
    , dvlEtag
    , dvlNextPageToken
    , dvlKind
    , dvlItems

    -- * CreativesListResponse
    , CreativesListResponse
    , creativesListResponse
    , clrlNextPageToken
    , clrlKind
    , clrlCreatives

    -- * UserRolePermissionGroup
    , UserRolePermissionGroup
    , userRolePermissionGroup
    , uKind
    , uName
    , uId

    -- * Account
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

    -- * RemarketingList
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

    -- * AccountUserProfilesListResponse
    , AccountUserProfilesListResponse
    , accountUserProfilesListResponse
    , auplrNextPageToken
    , auplrAccountUserProfiles
    , auplrKind

    -- * DfareportingSubaccountsListSortField
    , DfareportingSubaccountsListSortField (..)

    -- * CreativeAssetChildAssetType
    , CreativeAssetChildAssetType (..)

    -- * DfareportingOrderDocumentsListSortOrder
    , DfareportingOrderDocumentsListSortOrder (..)

    -- * DeliverySchedule
    , DeliverySchedule
    , deliverySchedule
    , dsHardCutoff
    , dsPriority
    , dsImpressionRatio
    , dsFrequencyCap

    -- * DfareportingPlacementsListSortOrder
    , DfareportingPlacementsListSortOrder (..)

    -- * ObjectFilterStatus
    , ObjectFilterStatus (..)

    -- * DfareportingAdsListSortField
    , DfareportingAdsListSortField (..)

    -- * PlacementGroupsListResponse
    , PlacementGroupsListResponse
    , placementGroupsListResponse
    , pglrNextPageToken
    , pglrKind
    , pglrPlacementGroups

    -- * CreativeOptimizationConfigurationOptimizationModel
    , CreativeOptimizationConfigurationOptimizationModel (..)

    -- * AccountPermissionLevel
    , AccountPermissionLevel (..)

    -- * OrdersListResponse
    , OrdersListResponse
    , ordersListResponse
    , olrNextPageToken
    , olrKind
    , olrOrders

    -- * UserRolePermissionsListResponse
    , UserRolePermissionsListResponse
    , userRolePermissionsListResponse
    , urplrKind
    , urplrUserRolePermissions

    -- * MobileCarrier
    , MobileCarrier
    , mobileCarrier
    , mcKind
    , mcName
    , mcCountryCode
    , mcId
    , mcCountryDartId

    -- * LandingPage
    , LandingPage
    , landingPage
    , lpKind
    , lpDefault
    , lpUrl
    , lpName
    , lpId

    -- * TagSetting
    , TagSetting
    , tagSetting
    , tsKeywordOption
    , tsIncludeClickThroughUrls
    , tsIncludeClickTracking
    , tsAdditionalKeyValues

    -- * ReportPathToConversionCriteriaReportProperties
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

    -- * CreativeGroup
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

    -- * ConnectionTypesListResponse
    , ConnectionTypesListResponse
    , connectionTypesListResponse
    , ctlrKind
    , ctlrConnectionTypes

    -- * CreativeAssetAlignment
    , CreativeAssetAlignment (..)

    -- * CreativeAssetWindowMode
    , CreativeAssetWindowMode (..)

    -- * LookbackConfiguration
    , LookbackConfiguration
    , lookbackConfiguration
    , lcClickDuration
    , lcPostImpressionActivitiesDuration

    -- * DirectorySiteInpageTagFormats
    , DirectorySiteInpageTagFormats (..)

    -- * Metric
    , Metric
    , metric
    , mKind
    , mName

    -- * RemarketingListShare
    , RemarketingListShare
    , remarketingListShare
    , rlsSharedAdvertiserIds
    , rlsKind
    , rlsRemarketingListId
    , rlsSharedAccountIds

    -- * ReportList
    , ReportList
    , reportList
    , repEtag
    , repNextPageToken
    , repKind
    , repItems

    -- * EventTagsListResponse
    , EventTagsListResponse
    , eventTagsListResponse
    , etlrKind
    , etlrEventTags

    -- * CampaignCreativeAssociation
    , CampaignCreativeAssociation
    , campaignCreativeAssociation
    , ccaKind
    , ccaCreativeId

    -- * AccountActiveAdSummary
    , AccountActiveAdSummary
    , accountActiveAdSummary
    , aaasAvailableAds
    , aaasKind
    , aaasAccountId
    , aaasActiveAds
    , aaasActiveAdsLimitTier

    -- * DfareportingCreativesListTypes
    , DfareportingCreativesListTypes (..)

    -- * OffsetPosition
    , OffsetPosition
    , offsetPosition
    , opLeft
    , opTop

    -- * AccountActiveAdsLimitTier
    , AccountActiveAdsLimitTier (..)

    -- * FloodlightActivityPublisherDynamicTag
    , FloodlightActivityPublisherDynamicTag
    , floodlightActivityPublisherDynamicTag
    , fapdtClickThrough
    , fapdtSiteIdDimensionValue
    , fapdtDynamicTag
    , fapdtDirectorySiteId
    , fapdtSiteId
    , fapdtViewThrough

    -- * UserRolesListResponse
    , UserRolesListResponse
    , userRolesListResponse
    , urlrNextPageToken
    , urlrKind
    , urlrUserRoles

    -- * CreativeRotationType
    , CreativeRotationType (..)

    -- * AudienceSegment
    , AudienceSegment
    , audienceSegment
    , asName
    , asId
    , asAllocation

    -- * DfareportingEventTagsListEventTagTypes
    , DfareportingEventTagsListEventTagTypes (..)

    -- * City
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

    -- * PopupWindowProperties
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

    -- * ListPopulationTermType
    , ListPopulationTermType (..)

    -- * KeyValueTargetingExpression
    , KeyValueTargetingExpression
    , keyValueTargetingExpression
    , kvteExpression

    -- * DfpSettings
    , DfpSettings
    , dfpSettings
    , dsPubPaidPlacementAccepted
    , dsDfpNetworkName
    , dsPublisherPortalOnly
    , dsProgrammaticPlacementAccepted
    , dsDfpNetworkCode

    -- * AdvertisersListResponse
    , AdvertisersListResponse
    , advertisersListResponse
    , advNextPageToken
    , advKind
    , advAdvertisers

    -- * CountriesListResponse
    , CountriesListResponse
    , countriesListResponse
    , couoKind
    , couoCountries

    -- * CompatibleFields
    , CompatibleFields
    , compatibleFields
    , cfReachReportCompatibleFields
    , cfCrossDimensionReachReportCompatibleFields
    , cfKind
    , cfFloodlightReportCompatibleFields
    , cfReportCompatibleFields
    , cfPathToConversionReportCompatibleFields

    -- * DfareportingInventoryItemsListSortOrder
    , DfareportingInventoryItemsListSortOrder (..)

    -- * AccountPermissionGroupsListResponse
    , AccountPermissionGroupsListResponse
    , accountPermissionGroupsListResponse
    , apglrKind
    , apglrAccountPermissionGroups

    -- * PathToConversionReportCompatibleFields
    , PathToConversionReportCompatibleFields
    , pathToConversionReportCompatibleFields
    , ptcrcfMetrics
    , ptcrcfKind
    , ptcrcfConversionDimensions
    , ptcrcfCustomFloodlightVariables
    , ptcrcfPerInteractionDimensions

    -- * CompanionClickThroughOverride
    , CompanionClickThroughOverride
    , companionClickThroughOverride
    , cctoCreativeId
    , cctoClickThroughUrl

    -- * DfareportingReportsFilesListSortField
    , DfareportingReportsFilesListSortField (..)

    -- * FloodlightActivityFloodlightActivityGroupType
    , FloodlightActivityFloodlightActivityGroupType (..)

    -- * DfareportingSitesListSortField
    , DfareportingSitesListSortField (..)

    -- * DfareportingAdsListCompatibility
    , DfareportingAdsListCompatibility (..)

    -- * SortedDimensionSortOrder
    , SortedDimensionSortOrder (..)

    -- * PricingGroupType
    , PricingGroupType (..)

    -- * PlatformType
    , PlatformType
    , platformType
    , ptKind
    , ptName
    , ptId

    -- * CreativeAssetMetadataDetectedFeatures
    , CreativeAssetMetadataDetectedFeatures (..)

    -- * CreativeAssetPositionTopUnit
    , CreativeAssetPositionTopUnit (..)

    -- * DfareportingCampaignsListSortField
    , DfareportingCampaignsListSortField (..)

    -- * DfareportingReportsListSortField
    , DfareportingReportsListSortField (..)

    -- * DfareportingAdsListCreativeType
    , DfareportingAdsListCreativeType (..)

    -- * TargetableRemarketingList
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

    -- * ReportDelivery
    , ReportDelivery
    , reportDelivery
    , rdEmailOwner
    , rdRecipients
    , rdMessage
    , rdEmailOwnerDeliveryType

    -- * DfareportingFloodlightActivityGroupsListSortOrder
    , DfareportingFloodlightActivityGroupsListSortOrder (..)

    -- * OperatingSystemVersion
    , OperatingSystemVersion
    , operatingSystemVersion
    , osvMinorVersion
    , osvKind
    , osvOperatingSystem
    , osvMajorVersion
    , osvName
    , osvId

    -- * AccountPermission
    , AccountPermission
    , accountPermission
    , acccKind
    , acccAccountProfiles
    , acccName
    , acccId
    , acccLevel
    , acccPermissionGroupId

    -- * UserProfile
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

    -- * FloodlightActivityGroupType
    , FloodlightActivityGroupType (..)

    -- * PostalCodesListResponse
    , PostalCodesListResponse
    , postalCodesListResponse
    , pclrKind
    , pclrPostalCodes

    -- * ChangeLog
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

    -- * OperatingSystemsListResponse
    , OperatingSystemsListResponse
    , operatingSystemsListResponse
    , oslrKind
    , oslrOperatingSystems

    -- * PlacementStrategy
    , PlacementStrategy
    , placementStrategy
    , psKind
    , psAccountId
    , psName
    , psId

    -- * DirectorySiteContactType
    , DirectorySiteContactType (..)

    -- * DfareportingDirectorySitesListSortOrder
    , DfareportingDirectorySitesListSortOrder (..)

    -- * DfareportingOrdersListSortField
    , DfareportingOrdersListSortField (..)

    -- * DfareportingAdvertiserGroupsListSortOrder
    , DfareportingAdvertiserGroupsListSortOrder (..)

    -- * EventTagOverride
    , EventTagOverride
    , eventTagOverride
    , etoEnabled
    , etoId

    -- * PlacementStatus
    , PlacementStatus (..)

    -- * PlatformTypesListResponse
    , PlatformTypesListResponse
    , platformTypesListResponse
    , ptlrKind
    , ptlrPlatformTypes

    -- * EventTagSiteFilterType
    , EventTagSiteFilterType (..)

    -- * DfareportingAccountsListSortField
    , DfareportingAccountsListSortField (..)

    -- * FloodlightActivity
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

    -- * Advertiser
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

    -- * AccountPermissionGroup
    , AccountPermissionGroup
    , accountPermissionGroup
    , apgKind
    , apgName
    , apgId

    -- * DfareportingProjectsListSortOrder
    , DfareportingProjectsListSortOrder (..)

    -- * CreativeCompatibility
    , CreativeCompatibility (..)

    -- * ReportScheduleRunsOnDayOfMonth
    , ReportScheduleRunsOnDayOfMonth (..)

    -- * DfareportingAdvertisersListSortOrder
    , DfareportingAdvertisersListSortOrder (..)

    -- * TargetWindow
    , TargetWindow
    , targetWindow
    , twCustomHtml
    , twTargetWindowOption

    -- * DfareportingUserRolesListSortOrder
    , DfareportingUserRolesListSortOrder (..)

    -- * DfareportingRemarketingListsListSortField
    , DfareportingRemarketingListsListSortField (..)

    -- * ReportFormat
    , ReportFormat (..)

    -- * CreativeArtworkType
    , CreativeArtworkType (..)

    -- * ProjectAudienceAgeGroup
    , ProjectAudienceAgeGroup (..)

    -- * DfareportingAdvertisersListStatus
    , DfareportingAdvertisersListStatus (..)

    -- * CreativeBackupImageFeatures
    , CreativeBackupImageFeatures (..)

    -- * CreativeRotationWeightCalculationStrategy
    , CreativeRotationWeightCalculationStrategy (..)

    -- * LastModifiedInfo
    , LastModifiedInfo
    , lastModifiedInfo
    , lmiTime

    -- * UserRole
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

    -- * AdType
    , AdType (..)

    -- * Region
    , Region
    , region
    , regRegionCode
    , regKind
    , regName
    , regCountryCode
    , regCountryDartId
    , regDartId

    -- * DimensionValueMatchType
    , DimensionValueMatchType (..)

    -- * DirectorySitesListResponse
    , DirectorySitesListResponse
    , directorySitesListResponse
    , dslrNextPageToken
    , dslrKind
    , dslrDirectorySites

    -- * CreativeFieldValuesListResponse
    , CreativeFieldValuesListResponse
    , creativeFieldValuesListResponse
    , cfvlrNextPageToken
    , cfvlrKind
    , cfvlrCreativeFieldValues

    -- * DimensionFilter
    , DimensionFilter
    , dimensionFilter
    , dfKind
    , dfValue
    , dfDimensionName

    -- * PlacementGroupPlacementGroupType
    , PlacementGroupPlacementGroupType (..)

    -- * PricingSchedulePricingPeriod
    , PricingSchedulePricingPeriod
    , pricingSchedulePricingPeriod
    , psppEndDate
    , psppRateOrCostNanos
    , psppStartDate
    , psppUnits
    , psppPricingComment

    -- * FloodlightConfiguration
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

    -- * PricingPricingType
    , PricingPricingType (..)

    -- * AdvertiserGroupsListResponse
    , AdvertiserGroupsListResponse
    , advertiserGroupsListResponse
    , aglrNextPageToken
    , aglrKind
    , aglrAdvertiserGroups

    -- * FloodlightActivityGroupsListResponse
    , FloodlightActivityGroupsListResponse
    , floodlightActivityGroupsListResponse
    , faglrNextPageToken
    , faglrKind
    , faglrFloodlightActivityGroups

    -- * DfareportingReportsListScope
    , DfareportingReportsListScope (..)

    -- * RichMediaExitOverride
    , RichMediaExitOverride
    , richMediaExitOverride
    , rmeoUseCustomExitUrl
    , rmeoExitId
    , rmeoCustomExitUrl

    -- * CreativeGroupAssignmentCreativeGroupNumber
    , CreativeGroupAssignmentCreativeGroupNumber (..)

    -- * CreativeAssignment
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

    -- * UserProfileList
    , UserProfileList
    , userProfileList
    , uplEtag
    , uplKind
    , uplItems

    -- * DirectorySiteContactsListResponse
    , DirectorySiteContactsListResponse
    , directorySiteContactsListResponse
    , dsclrNextPageToken
    , dsclrKind
    , dsclrDirectorySiteContacts

    -- * CreativeAssetMetadataWarnedValidationRules
    , CreativeAssetMetadataWarnedValidationRules (..)

    -- * ReportPathToConversionCriteria
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

    -- * CreativeType
    , CreativeType (..)

    -- * AccountAccountProfile
    , AccountAccountProfile (..)

    -- * PlacementsGenerateTagsResponse
    , PlacementsGenerateTagsResponse
    , placementsGenerateTagsResponse
    , pgtrKind
    , pgtrPlacementTags

    -- * CreativeFieldsListResponse
    , CreativeFieldsListResponse
    , creativeFieldsListResponse
    , cflrNextPageToken
    , cflrKind
    , cflrCreativeFields

    -- * PlacementTagFormats
    , PlacementTagFormats (..)

    -- * OrderDocumentsListResponse
    , OrderDocumentsListResponse
    , orderDocumentsListResponse
    , odlrNextPageToken
    , odlrKind
    , odlrOrderDocuments

    -- * DfareportingInventoryItemsListSortField
    , DfareportingInventoryItemsListSortField (..)

    -- * AdCompatibility
    , AdCompatibility (..)

    -- * Site
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

    -- * AccountPermissionAccountProfiles
    , AccountPermissionAccountProfiles (..)

    -- * TargetWindowTargetWindowOption
    , TargetWindowTargetWindowOption (..)

    -- * DfareportingChangeLogsListObjectType
    , DfareportingChangeLogsListObjectType (..)

    -- * SortedDimension
    , SortedDimension
    , sortedDimension
    , sdKind
    , sdSortOrder
    , sdName

    -- * Recipient
    , Recipient
    , recipient
    , recEmail
    , recKind
    , recDeliveryType

    -- * PlacementsListResponse
    , PlacementsListResponse
    , placementsListResponse
    , plaNextPageToken
    , plaKind
    , plaPlacements

    -- * CreativeAsset
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

    -- * ReportSchedule
    , ReportSchedule
    , reportSchedule
    , rsEvery
    , rsActive
    , rsRepeats
    , rsStartDate
    , rsExpirationDate
    , rsRunsOnDayOfMonth
    , rsRepeatsOnWeekDays

    -- * MetrosListResponse
    , MetrosListResponse
    , metrosListResponse
    , mlrKind
    , mlrMetros

    -- * DfareportingSitesListSortOrder
    , DfareportingSitesListSortOrder (..)

    -- * DfareportingReportsFilesListSortOrder
    , DfareportingReportsFilesListSortOrder (..)

    -- * PlacementGroup
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
    , plalSubaccountId
    , plalExternalId
    , plalComment
    , plalPrimaryPlacementIdDimensionValue
    , plalSiteId
    , plalArchived

    -- * CreativeGroupsListResponse
    , CreativeGroupsListResponse
    , creativeGroupsListResponse
    , cglrCreativeGroups
    , cglrNextPageToken
    , cglrKind

    -- * ReportType
    , ReportType (..)

    -- * EventTag
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

    -- * DfareportingEventTagsListSortOrder
    , DfareportingEventTagsListSortOrder (..)

    -- * CreativeCustomEventAdvertiserCustomEventType
    , CreativeCustomEventAdvertiserCustomEventType (..)

    -- * ReportCrossDimensionReachCriteriaDimension
    , ReportCrossDimensionReachCriteriaDimension (..)

    -- * CampaignCreativeAssociationsListResponse
    , CampaignCreativeAssociationsListResponse
    , campaignCreativeAssociationsListResponse
    , ccalrCampaignCreativeAssociations
    , ccalrNextPageToken
    , ccalrKind

    -- * CreativeAssetId
    , CreativeAssetId
    , creativeAssetId
    , caiName
    , caiType

    -- * DfareportingPlacementsListPricingTypes
    , DfareportingPlacementsListPricingTypes (..)

    -- * FrequencyCap
    , FrequencyCap
    , frequencyCap
    , fcImpressions
    , fcDuration

    -- * DfareportingTargetableRemarketingListsListSortField
    , DfareportingTargetableRemarketingListsListSortField (..)

    -- * DfareportingFloodlightActivitiesListFloodlightActivityGroupType
    , DfareportingFloodlightActivitiesListFloodlightActivityGroupType (..)

    -- * CreativeSettings
    , CreativeSettings
    , creativeSettings
    , csIFrameHeader
    , csIFrameFooter

    -- * UserDefinedVariableConfiguration
    , UserDefinedVariableConfiguration
    , userDefinedVariableConfiguration
    , udvcReportName
    , udvcDataType
    , udvcVariableType

    -- * Order
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

    -- * AdSlotPaymentSourceType
    , AdSlotPaymentSourceType (..)

    -- * OmnitureSettings
    , OmnitureSettings
    , omnitureSettings
    , osOmnitureCostDataEnabled
    , osOmnitureIntegrationEnabled

    -- * ConnectionType
    , ConnectionType
    , connectionType
    , conKind
    , conName
    , conId

    -- * DfareportingDirectorySiteContactsListSortField
    , DfareportingDirectorySiteContactsListSortField (..)

    -- * CreativeAssetMetadata
    , CreativeAssetMetadata
    , creativeAssetMetadata
    , camaKind
    , camaAssetIdentifier
    , camaClickTags
    , camaWarnedValidationRules
    , camaDetectedFeatures

    -- * DfareportingCreativeFieldValuesListSortField
    , DfareportingCreativeFieldValuesListSortField (..)

    -- * UserRolePermission
    , UserRolePermission
    , userRolePermission
    , useKind
    , useAvailability
    , useName
    , useId
    , usePermissionGroupId

    -- * FileURLs
    , FileURLs
    , fileURLs
    , fuBrowserUrl
    , fuApiUrl

    -- * MobileCarriersListResponse
    , MobileCarriersListResponse
    , mobileCarriersListResponse
    , mclrMobileCarriers
    , mclrKind

    -- * LandingPagesListResponse
    , LandingPagesListResponse
    , landingPagesListResponse
    , lplrLandingPages
    , lplrKind

    -- * DfareportingFilesListSortOrder
    , DfareportingFilesListSortOrder (..)

    -- * File
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

    -- * ReportCrossDimensionReachCriteria
    , ReportCrossDimensionReachCriteria
    , reportCrossDimensionReachCriteria
    , rcdrcPivoted
    , rcdrcBreakdown
    , rcdrcDimension
    , rcdrcMetricNames
    , rcdrcDimensionFilters
    , rcdrcDateRange
    , rcdrcOverlapMetricNames

    -- * OrderContact
    , OrderContact
    , orderContact
    , ocSignatureUserProfileId
    , ocContactName
    , ocContactTitle
    , ocContactType
    , ocContactInfo

    -- * DfareportingPlacementGroupsListSortOrder
    , DfareportingPlacementGroupsListSortOrder (..)

    -- * SitesListResponse
    , SitesListResponse
    , sitesListResponse
    , slrlNextPageToken
    , slrlKind
    , slrlSites

    -- * ThirdPartyTrackingURL
    , ThirdPartyTrackingURL
    , thirdPartyTrackingURL
    , tptuUrl
    , tptuThirdPartyUrlType

    -- * Placement
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
    , p1SslRequired
    , p1SubaccountId
    , p1PlacementGroupIdDimensionValue
    , p1ExternalId
    , p1PlacementGroupId
    , p1Comment
    , p1SiteId
    , p1Compatibility
    , p1Archived
    , p1PaymentApproved
    , p1PublisherUpdateInfo

    -- * PricingCapCostType
    , PricingCapCostType (..)

    -- * DirectorySiteContactAssignment
    , DirectorySiteContactAssignment
    , directorySiteContactAssignment
    , dscaVisibility
    , dscaContactId

    -- * FloodlightActivitiesGenerateTagResponse
    , FloodlightActivitiesGenerateTagResponse
    , floodlightActivitiesGenerateTagResponse
    , fagtrFloodlightActivityTag
    , fagtrKind

    -- * DfareportingAdvertisersListSortField
    , DfareportingAdvertisersListSortField (..)

    -- * FloodlightActivityCountingMethod
    , FloodlightActivityCountingMethod (..)

    -- * DfareportingAdsListType
    , DfareportingAdsListType (..)

    -- * ListTargetingExpression
    , ListTargetingExpression
    , listTargetingExpression
    , lteExpression

    -- * OrderDocument
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

    -- * DfareportingAccountsListSortOrder
    , DfareportingAccountsListSortOrder (..)

    -- * CreativeAssetDisplayType
    , CreativeAssetDisplayType (..)

    -- * AdSlot
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

    -- * AdvertiserStatus
    , AdvertiserStatus (..)

    -- * CreativeField
    , CreativeField
    , creativeField
    , cffKind
    , cffAdvertiserId
    , cffAdvertiserIdDimensionValue
    , cffAccountId
    , cffName
    , cffId
    , cffSubaccountId

    -- * DefaultClickThroughEventTagProperties
    , DefaultClickThroughEventTagProperties
    , defaultClickThroughEventTagProperties
    , dctetpOverrideInheritedEventTag
    , dctetpDefaultClickThroughEventTagId

    -- * DfareportingProjectsListSortField
    , DfareportingProjectsListSortField (..)

    -- * DfareportingRemarketingListsListSortOrder
    , DfareportingRemarketingListsListSortOrder (..)

    -- * DfareportingPlacementGroupsListPricingTypes
    , DfareportingPlacementGroupsListPricingTypes (..)

    -- * Alt
    , Alt (..)

    -- * DfareportingUserRolesListSortField
    , DfareportingUserRolesListSortField (..)

    -- * Metro
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

import           Network.Google.DFAReporting.Types.Product
import           Network.Google.DFAReporting.Types.Sum
import           Network.Google.Prelude

-- | URL referring to version 'v2.2' of the DCM/DFA Reporting And Trafficking API.
dFAReportingURL :: BaseUrl
dFAReportingURL
  = BaseUrl Https
      "https://www.googleapis.com/dfareporting/v2.2/"
      443
