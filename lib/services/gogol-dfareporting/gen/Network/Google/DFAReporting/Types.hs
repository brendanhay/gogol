{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.DFAReporting.Types
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.DFAReporting.Types
    (
    -- * Service Configuration
      dFAReportingService

    -- * OAuth Scopes
    , dFAReportingScope
    , ddmconversionsScope
    , dfatraffickingScope

    -- * VideoOffSet
    , VideoOffSet
    , videoOffSet
    , vosOffSetPercentage
    , vosOffSetSeconds

    -- * DeepLink
    , DeepLink
    , deepLink
    , dlRemarketingListIds
    , dlKind
    , dlFallbackURL
    , dlAppURL
    , dlMobileApp

    -- * DisjunctiveMatchStatement
    , DisjunctiveMatchStatement
    , disjunctiveMatchStatement
    , dmsEventFilters
    , dmsKind

    -- * PlacementsListSortOrder
    , PlacementsListSortOrder (..)

    -- * DateRangeRelativeDateRange
    , DateRangeRelativeDateRange (..)

    -- * AdvertisersListSortField
    , AdvertisersListSortField (..)

    -- * CreativeFieldsListSortOrder
    , CreativeFieldsListSortOrder (..)

    -- * FileList
    , FileList
    , fileList
    , flEtag
    , flNextPageToken
    , flKind
    , flItems

    -- * TargetingTemplatesListSortOrder
    , TargetingTemplatesListSortOrder (..)

    -- * PathReportCompatibleFields
    , PathReportCompatibleFields
    , pathReportCompatibleFields
    , prcfMetrics
    , prcfChannelGroupings
    , prcfKind
    , prcfPathFilters
    , prcfDimensions

    -- * OptimizationActivity
    , OptimizationActivity
    , optimizationActivity
    , oaWeight
    , oaFloodlightActivityId
    , oaFloodlightActivityIdDimensionValue

    -- * ListPopulationClause
    , ListPopulationClause
    , listPopulationClause
    , lpcTerms

    -- * AdBlockingConfiguration
    , AdBlockingConfiguration
    , adBlockingConfiguration
    , abcEnabled

    -- * AdvertiserLandingPagesListSortOrder
    , AdvertiserLandingPagesListSortOrder (..)

    -- * CreativeCustomEvent
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

    -- * ClickTag
    , ClickTag
    , clickTag
    , ctClickThroughURL
    , ctName
    , ctEventName

    -- * CampaignsListResponse
    , CampaignsListResponse
    , campaignsListResponse
    , clrNextPageToken
    , clrCampaigns
    , clrKind

    -- * GeoTargeting
    , GeoTargeting
    , geoTargeting
    , gtRegions
    , gtCountries
    , gtCities
    , gtMetros
    , gtExcludeCountries
    , gtPostalCodes

    -- * UserRolesListSortField
    , UserRolesListSortField (..)

    -- * VideoSettings
    , VideoSettings
    , videoSettings
    , vsKind
    , vsCompanionSettings
    , vsObaSettings
    , vsObaEnabled
    , vsTranscodeSettings
    , vsDurationSeconds
    , vsOrientation
    , vsSkippableSettings

    -- * ReachReportCompatibleFields
    , ReachReportCompatibleFields
    , reachReportCompatibleFields
    , rrcfMetrics
    , rrcfReachByFrequencyMetrics
    , rrcfKind
    , rrcfDimensionFilters
    , rrcfPivotedActivityMetrics
    , rrcfDimensions

    -- * Browser
    , Browser
    , browser
    , bMinorVersion
    , bKind
    , bBrowserVersionId
    , bMajorVersion
    , bName
    , bDartId

    -- * FloodlightActivityTagFormat
    , FloodlightActivityTagFormat (..)

    -- * OrderDocumentsListSortOrder
    , OrderDocumentsListSortOrder (..)

    -- * CreativeGroupAssignment
    , CreativeGroupAssignment
    , creativeGroupAssignment
    , cgaCreativeGroupNumber
    , cgaCreativeGroupId

    -- * CreativeAssetRole
    , CreativeAssetRole (..)

    -- * DynamicTargetingKeysListObjectType
    , DynamicTargetingKeysListObjectType (..)

    -- * RecipientDeliveryType
    , RecipientDeliveryType (..)

    -- * ThirdPartyTrackingURLThirdPartyURLType
    , ThirdPartyTrackingURLThirdPartyURLType (..)

    -- * DirectorySiteSettings
    , DirectorySiteSettings
    , directorySiteSettings
    , dssInterstitialPlacementAccepted
    , dssInstreamVideoPlacementAccepted
    , dssActiveViewOptOut
    , dssDfpSettings

    -- * TargetableRemarketingListsListSortOrder
    , TargetableRemarketingListsListSortOrder (..)

    -- * CreativeAssetPositionLeftUnit
    , CreativeAssetPositionLeftUnit (..)

    -- * PricingScheduleCapCostOption
    , PricingScheduleCapCostOption (..)

    -- * ObaIcon
    , ObaIcon
    , obaIcon
    , oiSize
    , oiIconClickThroughURL
    , oiYPosition
    , oiIconClickTrackingURL
    , oiXPosition
    , oiProgram
    , oiIconViewTrackingURL
    , oiResourceURL

    -- * ListPopulationRule
    , ListPopulationRule
    , listPopulationRule
    , lprFloodlightActivityName
    , lprFloodlightActivityId
    , lprListPopulationClauses

    -- * UserRolePermissionAvailability
    , UserRolePermissionAvailability (..)

    -- * PlacementVpaidAdapterChoice
    , PlacementVpaidAdapterChoice (..)

    -- * SizesListResponse
    , SizesListResponse
    , sizesListResponse
    , slrKind
    , slrSizes

    -- * PlacementCompatibility
    , PlacementCompatibility (..)

    -- * CreativeRotation
    , CreativeRotation
    , creativeRotation
    , crWeightCalculationStrategy
    , crCreativeAssignments
    , crCreativeOptimizationConfigurationId
    , crType

    -- * TechnologyTargeting
    , TechnologyTargeting
    , technologyTargeting
    , ttMobileCarriers
    , ttOperatingSystemVersions
    , ttPlatformTypes
    , ttBrowsers
    , ttConnectionTypes
    , ttOperatingSystems

    -- * ListPopulationTermOperator
    , ListPopulationTermOperator (..)

    -- * PlacementsListPaymentSource
    , PlacementsListPaymentSource (..)

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
    , iiSubAccountId
    , iiType
    , iiOrderId
    , iiSiteId

    -- * ProjectsListResponse
    , ProjectsListResponse
    , projectsListResponse
    , plrNextPageToken
    , plrKind
    , plrProjects

    -- * AdsListResponse
    , AdsListResponse
    , adsListResponse
    , alrNextPageToken
    , alrKind
    , alrAds

    -- * ReportsListSortField
    , ReportsListSortField (..)

    -- * AdSlotCompatibility
    , AdSlotCompatibility (..)

    -- * SiteVideoSettings
    , SiteVideoSettings
    , siteVideoSettings
    , svsKind
    , svsCompanionSettings
    , svsObaSettings
    , svsObaEnabled
    , svsTranscodeSettings
    , svsOrientation
    , svsSkippableSettings

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

    -- * TagSettings
    , TagSettings
    , tagSettings
    , tsDynamicTagEnabled
    , tsImageTagEnabled

    -- * SubAccountsListResponse
    , SubAccountsListResponse
    , subAccountsListResponse
    , salrNextPageToken
    , salrKind
    , salrSubAccounts

    -- * CampaignsListSortField
    , CampaignsListSortField (..)

    -- * VideoSettingsOrientation
    , VideoSettingsOrientation (..)

    -- * RegionsListResponse
    , RegionsListResponse
    , regionsListResponse
    , rlrKind
    , rlrRegions

    -- * FloodlightActivityDynamicTag
    , FloodlightActivityDynamicTag
    , floodlightActivityDynamicTag
    , fadtTag
    , fadtName
    , fadtId

    -- * VideoFormat
    , VideoFormat
    , videoFormat
    , vfKind
    , vfFileType
    , vfResolution
    , vfTargetBitRate
    , vfId

    -- * AccountUserProFileTraffickerType
    , AccountUserProFileTraffickerType (..)

    -- * DirectorySite
    , DirectorySite
    , directorySite
    , dsSettings
    , dsInterstitialTagFormats
    , dsKind
    , dsURL
    , dsIdDimensionValue
    , dsInpageTagFormats
    , dsName
    , dsId

    -- * CreativeAssetMetadataDetectedFeaturesItem
    , CreativeAssetMetadataDetectedFeaturesItem (..)

    -- * ReportFloodlightCriteriaReportProperties
    , ReportFloodlightCriteriaReportProperties
    , reportFloodlightCriteriaReportProperties
    , rfcrpIncludeUnattributedIPConversions
    , rfcrpIncludeUnattributedCookieConversions
    , rfcrpIncludeAttributedIPConversions

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
    , fagSubAccountId
    , fagType
    , fagFloodlightConfigurationIdDimensionValue

    -- * AdsListCompatibility
    , AdsListCompatibility (..)

    -- * CrossDimensionReachReportCompatibleFields
    , CrossDimensionReachReportCompatibleFields
    , crossDimensionReachReportCompatibleFields
    , cdrrcfMetrics
    , cdrrcfBreakdown
    , cdrrcfKind
    , cdrrcfDimensionFilters
    , cdrrcfOverlapMetrics

    -- * ChannelGroupingRule
    , ChannelGroupingRule
    , channelGroupingRule
    , cgrKind
    , cgrName
    , cgrDisjunctiveMatchStatements

    -- * FsCommand
    , FsCommand
    , fsCommand
    , fcPositionOption
    , fcLeft
    , fcWindowHeight
    , fcWindowWidth
    , fcTop

    -- * PlacementAssignment
    , PlacementAssignment
    , placementAssignment
    , paPlacementId
    , paPlacementIdDimensionValue
    , paActive
    , paSSLRequired

    -- * CreativeFieldValue
    , CreativeFieldValue
    , creativeFieldValue
    , cfvKind
    , cfvValue
    , cfvId

    -- * EventTagStatus
    , EventTagStatus (..)

    -- * SitesListSortField
    , SitesListSortField (..)

    -- * DimensionValueRequest
    , DimensionValueRequest
    , dimensionValueRequest
    , dvrKind
    , dvrEndDate
    , dvrFilters
    , dvrStartDate
    , dvrDimensionName

    -- * EventTagsListEventTagTypes
    , EventTagsListEventTagTypes (..)

    -- * FloodlightConfigurationsListResponse
    , FloodlightConfigurationsListResponse
    , floodlightConfigurationsListResponse
    , fclrKind
    , fclrFloodlightConfigurations

    -- * FloodlightActivitiesListResponse
    , FloodlightActivitiesListResponse
    , floodlightActivitiesListResponse
    , falrNextPageToken
    , falrKind
    , falrFloodlightActivities

    -- * FileStatus
    , FileStatus (..)

    -- * CreativeCustomEventArtworkType
    , CreativeCustomEventArtworkType (..)

    -- * CreativeFieldAssignment
    , CreativeFieldAssignment
    , creativeFieldAssignment
    , cfaCreativeFieldId
    , cfaCreativeFieldValueId

    -- * AdvertiserGroup
    , AdvertiserGroup
    , advertiserGroup
    , agKind
    , agAccountId
    , agName
    , agId

    -- * TagData
    , TagData
    , tagData
    , tdClickTag
    , tdFormat
    , tdCreativeId
    , tdAdId
    , tdImpressionTag

    -- * DayPartTargeting
    , DayPartTargeting
    , dayPartTargeting
    , dptDaysOfWeek
    , dptHoursOfDay
    , dptUserLocalTime

    -- * CreativeOptimizationConfiguration
    , CreativeOptimizationConfiguration
    , creativeOptimizationConfiguration
    , cocOptimizationModel
    , cocName
    , cocOptimizationActivitys
    , cocId

    -- * SiteTranscodeSetting
    , SiteTranscodeSetting
    , siteTranscodeSetting
    , stsKind
    , stsEnabledVideoFormats

    -- * CreativeClickThroughURL
    , CreativeClickThroughURL
    , creativeClickThroughURL
    , cctuComputedClickThroughURL
    , cctuCustomClickThroughURL
    , cctuLandingPageId

    -- * ReportCriteria
    , ReportCriteria
    , reportCriteria
    , rcMetricNames
    , rcCustomRichMediaEvents
    , rcDimensionFilters
    , rcActivities
    , rcDateRange
    , rcDimensions

    -- * FloodlightConfigurationNATuralSearchConversionAttributionOption
    , FloodlightConfigurationNATuralSearchConversionAttributionOption (..)

    -- * MeasurementPartnerWrAppingDataTagWrAppingMode
    , MeasurementPartnerWrAppingDataTagWrAppingMode (..)

    -- * PlacementStrategiesListResponse
    , PlacementStrategiesListResponse
    , placementStrategiesListResponse
    , pslrPlacementStrategies
    , pslrNextPageToken
    , pslrKind

    -- * ConversionsBatchUpdateResponse
    , ConversionsBatchUpdateResponse
    , conversionsBatchUpdateResponse
    , cburStatus
    , cburKind
    , cburHasFailures

    -- * CreativeAssetArtworkType
    , CreativeAssetArtworkType (..)

    -- * SubAccount
    , SubAccount
    , subAccount
    , saKind
    , saAvailablePermissionIds
    , saAccountId
    , saName
    , saId

    -- * InventoryItemsListResponse
    , InventoryItemsListResponse
    , inventoryItemsListResponse
    , iilrInventoryItems
    , iilrNextPageToken
    , iilrKind

    -- * UniversalAdId
    , UniversalAdId
    , universalAdId
    , uaiValue
    , uaiRegistry

    -- * CustomFloodlightVariableType
    , CustomFloodlightVariableType (..)

    -- * Ad
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

    -- * ConversionErrorCode
    , ConversionErrorCode (..)

    -- * FloodlightActivitiesListSortOrder
    , FloodlightActivitiesListSortOrder (..)

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
    , pSubAccountId
    , pTargetCpmActiveViewNanos
    , pAudienceGender
    , pClientName
    , pTargetCpaNanos

    -- * FileFormat
    , FileFormat (..)

    -- * EncryptionInfoEncryptionEntityType
    , EncryptionInfoEncryptionEntityType (..)

    -- * PricingSchedulePricingType
    , PricingSchedulePricingType (..)

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

    -- * CreativeCustomEventTargetType
    , CreativeCustomEventTargetType (..)

    -- * ReportsListScope
    , ReportsListScope (..)

    -- * Size
    , Size
    , size
    , sHeight
    , sKind
    , sWidth
    , sIab
    , sId

    -- * CreativeAssetOrientation
    , CreativeAssetOrientation (..)

    -- * CreativeAssetDurationType
    , CreativeAssetDurationType (..)

    -- * TargetableRemarketingListListSource
    , TargetableRemarketingListListSource (..)

    -- * ObjectFilter
    , ObjectFilter
    , objectFilter
    , ofStatus
    , ofKind
    , ofObjectIds

    -- * SkippableSetting
    , SkippableSetting
    , skippableSetting
    , ssSkipOffSet
    , ssProgressOffSet
    , ssKind
    , ssSkippable

    -- * CreativeGroupsListSortField
    , CreativeGroupsListSortField (..)

    -- * ReportsConfiguration
    , ReportsConfiguration
    , reportsConfiguration
    , rcExposureToConversionEnabled
    , rcReportGenerationTimeZoneId
    , rcLookbackConfiguration

    -- * PricingSchedule
    , PricingSchedule
    , pricingSchedule
    , psTestingStartDate
    , psFloodlightActivityId
    , psEndDate
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

    -- * AccountPermissionsListResponse
    , AccountPermissionsListResponse
    , accountPermissionsListResponse
    , aplrKind
    , aplrAccountPermissions

    -- * Country
    , Country
    , country
    , cKind
    , cName
    , cCountryCode
    , cDartId
    , cSSLEnabled

    -- * PlacementsListSortField
    , PlacementsListSortField (..)

    -- * CreativeBackupImageFeaturesItem
    , CreativeBackupImageFeaturesItem (..)

    -- * OperatingSystemVersionsListResponse
    , OperatingSystemVersionsListResponse
    , operatingSystemVersionsListResponse
    , osvlrKind
    , osvlrOperatingSystemVersions

    -- * ClickThroughURLSuffixProperties
    , ClickThroughURLSuffixProperties
    , clickThroughURLSuffixProperties
    , ctuspOverrideInheritedSuffix
    , ctuspClickThroughURLSuffix

    -- * AdvertisersListSortOrder
    , AdvertisersListSortOrder (..)

    -- * TargetingTemplatesListSortField
    , TargetingTemplatesListSortField (..)

    -- * CreativeFieldsListSortField
    , CreativeFieldsListSortField (..)

    -- * Pricing
    , Pricing
    , pricing
    , priEndDate
    , priStartDate
    , priGroupType
    , priPricingType
    , priFlights
    , priCapCostType

    -- * AudienceSegmentGroup
    , AudienceSegmentGroup
    , audienceSegmentGroup
    , asgAudienceSegments
    , asgName
    , asgId

    -- * OperatingSystem
    , OperatingSystem
    , operatingSystem
    , osDesktop
    , osKind
    , osName
    , osMobile
    , osDartId

    -- * Flight
    , Flight
    , flight
    , fRateOrCost
    , fEndDate
    , fStartDate
    , fUnits

    -- * UserDefinedVariableConfigurationVariableType
    , UserDefinedVariableConfigurationVariableType (..)

    -- * FsCommandPositionOption
    , FsCommandPositionOption (..)

    -- * CitiesListResponse
    , CitiesListResponse
    , citiesListResponse
    , citKind
    , citCities

    -- * AdvertiserLandingPagesListSortField
    , AdvertiserLandingPagesListSortField (..)

    -- * Dimension
    , Dimension
    , dimension
    , dKind
    , dName

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

    -- * CustomRichMediaEvents
    , CustomRichMediaEvents
    , customRichMediaEvents
    , crmeKind
    , crmeFilteredEventIds

    -- * LanguagesListResponse
    , LanguagesListResponse
    , languagesListResponse
    , llrKind
    , llrLanguages

    -- * CustomViewabilityMetricConfiguration
    , CustomViewabilityMetricConfiguration
    , customViewabilityMetricConfiguration
    , cvmcViewabilityPercent
    , cvmcTimePercent
    , cvmcAudible
    , cvmcTimeMillis

    -- * UserRolesListSortOrder
    , UserRolesListSortOrder (..)

    -- * PlacementsListCompatibilities
    , PlacementsListCompatibilities (..)

    -- * ReportPathCriteria
    , ReportPathCriteria
    , reportPathCriteria
    , rpcCustomChannelGrouping
    , rpcMetricNames
    , rpcDateRange
    , rpcPathFilters
    , rpcFloodlightConfigId
    , rpcDimensions
    , rpcActivityFilters

    -- * TargetableRemarketingListsListResponse
    , TargetableRemarketingListsListResponse
    , targetableRemarketingListsListResponse
    , trllrNextPageToken
    , trllrKind
    , trllrTargetableRemarketingLists

    -- * OrderDocumentsListSortField
    , OrderDocumentsListSortField (..)

    -- * CreativeCompatibilityItem
    , CreativeCompatibilityItem (..)

    -- * ChangeLogsListResponse
    , ChangeLogsListResponse
    , changeLogsListResponse
    , cllrNextPageToken
    , cllrKind
    , cllrChangeLogs

    -- * ReportDeliveryEmailOwnerDeliveryType
    , ReportDeliveryEmailOwnerDeliveryType (..)

    -- * SiteContactContactType
    , SiteContactContactType (..)

    -- * AccountUserProFile
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

    -- * ReportsListSortOrder
    , ReportsListSortOrder (..)

    -- * DimensionValue
    , DimensionValue
    , dimensionValue
    , dvEtag
    , dvKind
    , dvValue
    , dvMatchType
    , dvDimensionName
    , dvId

    -- * TargetableRemarketingListsListSortField
    , TargetableRemarketingListsListSortField (..)

    -- * CampaignsListSortOrder
    , CampaignsListSortOrder (..)

    -- * Activities
    , Activities
    , activities
    , actKind
    , actMetricNames
    , actFilters

    -- * FloodlightActivityGroupsListType
    , FloodlightActivityGroupsListType (..)

    -- * FloodlightConfigurationFirstDayOfWeek
    , FloodlightConfigurationFirstDayOfWeek (..)

    -- * UserRolePermissionGroupsListResponse
    , UserRolePermissionGroupsListResponse
    , userRolePermissionGroupsListResponse
    , urpglrUserRolePermissionGroups
    , urpglrKind

    -- * PlacementTag
    , PlacementTag
    , placementTag
    , ptPlacementId
    , ptTagDatas

    -- * DeliverySchedulePriority
    , DeliverySchedulePriority (..)

    -- * FloodlightActivitiesListFloodlightActivityGroupType
    , FloodlightActivitiesListFloodlightActivityGroupType (..)

    -- * RemarketingListsListResponse
    , RemarketingListsListResponse
    , remarketingListsListResponse
    , rllrNextPageToken
    , rllrRemarketingLists
    , rllrKind

    -- * DynamicTargetingKey
    , DynamicTargetingKey
    , dynamicTargetingKey
    , dtkObjectType
    , dtkKind
    , dtkObjectId
    , dtkName

    -- * Creative
    , Creative
    , creative
    , creConvertFlashToHTML5
    , creBackupImageTargetWindow
    , creRenderingIdDimensionValue
    , creCustomKeyValues
    , creSkipOffSet
    , creObaIcon
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

    -- * SiteCompanionSetting
    , SiteCompanionSetting
    , siteCompanionSetting
    , scsKind
    , scsImageOnly
    , scsCompanionsDisabled
    , scsEnabledSizes

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

    -- * CreativeAuthoringSource
    , CreativeAuthoringSource (..)

    -- * AccountsListResponse
    , AccountsListResponse
    , accountsListResponse
    , accNextPageToken
    , accAccounts
    , accKind

    -- * DateRange
    , DateRange
    , dateRange
    , drKind
    , drEndDate
    , drStartDate
    , drRelativeDateRange

    -- * Report
    , Report
    , report
    , rDelivery
    , rEtag
    , rOwnerProFileId
    , rSchedule
    , rPathToConversionCriteria
    , rKind
    , rFormat
    , rPathCriteria
    , rReachCriteria
    , rLastModifiedTime
    , rAccountId
    , rName
    , rPathAttributionCriteria
    , rId
    , rCrossDimensionReachCriteria
    , rType
    , rSubAccountId
    , rFloodlightCriteria
    , rCriteria
    , rFileName

    -- * PlacementPaymentSource
    , PlacementPaymentSource (..)

    -- * SiteSkippableSetting
    , SiteSkippableSetting
    , siteSkippableSetting
    , sssSkipOffSet
    , sssProgressOffSet
    , sssKind
    , sssSkippable

    -- * Rule
    , Rule
    , rule
    , rulTargetingTemplateId
    , rulName
    , rulAssetId

    -- * ReportsFilesListSortOrder
    , ReportsFilesListSortOrder (..)

    -- * Campaign
    , Campaign
    , campaign
    , camMeasurementPartnerLink
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

    -- * InventoryItemsListSortField
    , InventoryItemsListSortField (..)

    -- * EventTagType
    , EventTagType (..)

    -- * CreativesListSortOrder
    , CreativesListSortOrder (..)

    -- * MeasurementPartnerCampaignLinkMeasurementPartner
    , MeasurementPartnerCampaignLinkMeasurementPartner (..)

    -- * InventoryItemsListType
    , InventoryItemsListType (..)

    -- * ThirdPartyAuthenticationToken
    , ThirdPartyAuthenticationToken
    , thirdPartyAuthenticationToken
    , tpatValue
    , tpatName

    -- * PopupWindowPropertiesPositionType
    , PopupWindowPropertiesPositionType (..)

    -- * ClickThroughURL
    , ClickThroughURL
    , clickThroughURL
    , ctuDefaultLandingPage
    , ctuComputedClickThroughURL
    , ctuCustomClickThroughURL
    , ctuLandingPageId

    -- * TagSettingKeywordOption
    , TagSettingKeywordOption (..)

    -- * CreativeAuthoringTool
    , CreativeAuthoringTool (..)

    -- * OrderContactContactType
    , OrderContactContactType (..)

    -- * CreativeAssetIdType
    , CreativeAssetIdType (..)

    -- * AccountUserProFilesListSortOrder
    , AccountUserProFilesListSortOrder (..)

    -- * RemarketingListListSource
    , RemarketingListListSource (..)

    -- * MeasurementPartnerCampaignLinkLinkStatus
    , MeasurementPartnerCampaignLinkLinkStatus (..)

    -- * BrowsersListResponse
    , BrowsersListResponse
    , browsersListResponse
    , blrKind
    , blrBrowsers

    -- * AccountUserProFileUserAccessType
    , AccountUserProFileUserAccessType (..)

    -- * CreativeAssetStartTimeType
    , CreativeAssetStartTimeType (..)

    -- * ProjectAudienceGender
    , ProjectAudienceGender (..)

    -- * SiteSettings
    , SiteSettings
    , siteSettings
    , ssDisableNewCookie
    , ssVideoActiveViewOptOutTemplate
    , ssAdBlockingOptOut
    , ssTagSetting
    , ssActiveViewOptOut
    , ssVpaidAdapterChoiceTemplate

    -- * PlacementStrategiesListSortField
    , PlacementStrategiesListSortField (..)

    -- * ContentCategoriesListResponse
    , ContentCategoriesListResponse
    , contentCategoriesListResponse
    , cclrNextPageToken
    , cclrKind
    , cclrContentCategories

    -- * UserDefinedVariableConfigurationDataType
    , UserDefinedVariableConfigurationDataType (..)

    -- * ReportPathAttributionCriteria
    , ReportPathAttributionCriteria
    , reportPathAttributionCriteria
    , rpacCustomChannelGrouping
    , rpacMetricNames
    , rpacDateRange
    , rpacPathFilters
    , rpacFloodlightConfigId
    , rpacDimensions
    , rpacActivityFilters

    -- * FloodlightActivityCacheBustingType
    , FloodlightActivityCacheBustingType (..)

    -- * CreativesListResponse
    , CreativesListResponse
    , creativesListResponse
    , clrlNextPageToken
    , clrlKind
    , clrlCreatives

    -- * CreativeGroupsListSortOrder
    , CreativeGroupsListSortOrder (..)

    -- * OrderDocumentType
    , OrderDocumentType (..)

    -- * TagDataFormat
    , TagDataFormat (..)

    -- * Account
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

    -- * ConversionsBatchInsertRequest
    , ConversionsBatchInsertRequest
    , conversionsBatchInsertRequest
    , cbirKind
    , cbirConversions
    , cbirEncryptionInfo

    -- * AccountActiveAdSummaryActiveAdsLimitTier
    , AccountActiveAdSummaryActiveAdsLimitTier (..)

    -- * CreativeAssetChildAssetType
    , CreativeAssetChildAssetType (..)

    -- * PlacementGroupsListPlacementGroupType
    , PlacementGroupsListPlacementGroupType (..)

    -- * AccountUserProFilesListResponse
    , AccountUserProFilesListResponse
    , accountUserProFilesListResponse
    , aupflrNextPageToken
    , aupflrAccountUserProFiles
    , aupflrKind

    -- * ContentCategory
    , ContentCategory
    , contentCategory
    , conKind
    , conAccountId
    , conName
    , conId

    -- * ObjectFilterStatus
    , ObjectFilterStatus (..)

    -- * ReportCompatibleFields
    , ReportCompatibleFields
    , reportCompatibleFields
    , rcfMetrics
    , rcfKind
    , rcfDimensionFilters
    , rcfPivotedActivityMetrics
    , rcfDimensions

    -- * CampaignCreativeAssociationsListSortOrder
    , CampaignCreativeAssociationsListSortOrder (..)

    -- * DeliverySchedule
    , DeliverySchedule
    , deliverySchedule
    , dsHardCutoff
    , dsPriority
    , dsImpressionRatio
    , dsFrequencyCap

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
    , rlSubAccountId
    , rlDescription

    -- * FloodlightActivitiesListSortField
    , FloodlightActivitiesListSortField (..)

    -- * DynamicTargetingKeysListResponse
    , DynamicTargetingKeysListResponse
    , dynamicTargetingKeysListResponse
    , dtklrKind
    , dtklrDynamicTargetingKeys

    -- * DimensionValueList
    , DimensionValueList
    , dimensionValueList
    , dvlEtag
    , dvlNextPageToken
    , dvlKind
    , dvlItems

    -- * FloodlightReportCompatibleFields
    , FloodlightReportCompatibleFields
    , floodlightReportCompatibleFields
    , frcfMetrics
    , frcfKind
    , frcfDimensionFilters
    , frcfDimensions

    -- * UserRolePermissionGroup
    , UserRolePermissionGroup
    , userRolePermissionGroup
    , urpgKind
    , urpgName
    , urpgId

    -- * CreativesListTypes
    , CreativesListTypes (..)

    -- * DirectorySiteInpageTagFormatsItem
    , DirectorySiteInpageTagFormatsItem (..)

    -- * TagSetting
    , TagSetting
    , tagSetting
    , tsKeywordOption
    , tsIncludeClickThroughURLs
    , tsIncludeClickTracking
    , tsAdditionalKeyValues

    -- * CreativeAssetWindowMode
    , CreativeAssetWindowMode (..)

    -- * CreativeAssetAlignment
    , CreativeAssetAlignment (..)

    -- * RemarketingListsListSortOrder
    , RemarketingListsListSortOrder (..)

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

    -- * MeasurementPartnerWrAppingDataLinkStatus
    , MeasurementPartnerWrAppingDataLinkStatus (..)

    -- * UserRolePermissionsListResponse
    , UserRolePermissionsListResponse
    , userRolePermissionsListResponse
    , urplrKind
    , urplrUserRolePermissions

    -- * PlacementGroupsListPricingTypes
    , PlacementGroupsListPricingTypes (..)

    -- * DynamicTargetingKeysDeleteObjectType
    , DynamicTargetingKeysDeleteObjectType (..)

    -- * AccountActiveAdsLimitTier
    , AccountActiveAdsLimitTier (..)

    -- * AccountsListSortOrder
    , AccountsListSortOrder (..)

    -- * PlacementGroupsListResponse
    , PlacementGroupsListResponse
    , placementGroupsListResponse
    , pglrNextPageToken
    , pglrKind
    , pglrPlacementGroups

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
    , lpAdvertiserId
    , lpURL
    , lpName
    , lpDeepLinks
    , lpId
    , lpArchived

    -- * ConnectionTypesListResponse
    , ConnectionTypesListResponse
    , connectionTypesListResponse
    , ctlrKind
    , ctlrConnectionTypes

    -- * EventFilter
    , EventFilter
    , eventFilter
    , efKind
    , efDimensionFilter

    -- * MeasurementPartnerWrAppingDataMeasurementPartner
    , MeasurementPartnerWrAppingDataMeasurementPartner (..)

    -- * OrdersListResponse
    , OrdersListResponse
    , ordersListResponse
    , olrNextPageToken
    , olrKind
    , olrOrders

    -- * ReportList
    , ReportList
    , reportList
    , repEtag
    , repNextPageToken
    , repKind
    , repItems

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
    , cgSubAccountId

    -- * ChannelGrouping
    , ChannelGrouping
    , channelGrouping
    , chaRules
    , chaKind
    , chaFallbackName
    , chaName

    -- * SubAccountsListSortField
    , SubAccountsListSortField (..)

    -- * CampaignCreativeAssociation
    , CampaignCreativeAssociation
    , campaignCreativeAssociation
    , ccaKind
    , ccaCreativeId

    -- * ConversionStatus
    , ConversionStatus
    , conversionStatus
    , csKind
    , csConversion
    , csErrors

    -- * LookbackConfiguration
    , LookbackConfiguration
    , lookbackConfiguration
    , lcClickDuration
    , lcPostImpressionActivitiesDuration

    -- * VideoFormatFileType
    , VideoFormatFileType (..)

    -- * AdsListSortField
    , AdsListSortField (..)

    -- * ProjectsListSortField
    , ProjectsListSortField (..)

    -- * FloodlightActivityPublisherDynamicTag
    , FloodlightActivityPublisherDynamicTag
    , floodlightActivityPublisherDynamicTag
    , fapdtClickThrough
    , fapdtSiteIdDimensionValue
    , fapdtDynamicTag
    , fapdtDirectorySiteId
    , fapdtSiteId
    , fapdtViewThrough

    -- * AdsListType
    , AdsListType (..)

    -- * AccountActiveAdSummary
    , AccountActiveAdSummary
    , accountActiveAdSummary
    , aaasAvailableAds
    , aaasKind
    , aaasAccountId
    , aaasActiveAds
    , aaasActiveAdsLimitTier

    -- * CreativeOptimizationConfigurationOptimizationModel
    , CreativeOptimizationConfigurationOptimizationModel (..)

    -- * AccountPermissionLevel
    , AccountPermissionLevel (..)

    -- * OffSetPosition
    , OffSetPosition
    , offSetPosition
    , ospLeft
    , ospTop

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

    -- * EventTagsListResponse
    , EventTagsListResponse
    , eventTagsListResponse
    , etlrKind
    , etlrEventTags

    -- * UserRolesListResponse
    , UserRolesListResponse
    , userRolesListResponse
    , urlrNextPageToken
    , urlrKind
    , urlrUserRoles

    -- * ListPopulationTermType
    , ListPopulationTermType (..)

    -- * AdvertiserGroupsListSortOrder
    , AdvertiserGroupsListSortOrder (..)

    -- * CreativeFieldValuesListSortOrder
    , CreativeFieldValuesListSortOrder (..)

    -- * SortedDimensionSortOrder
    , SortedDimensionSortOrder (..)

    -- * MobileAppsListDirectories
    , MobileAppsListDirectories (..)

    -- * CompatibleFields
    , CompatibleFields
    , compatibleFields
    , cfPathReportCompatibleFields
    , cfReachReportCompatibleFields
    , cfCrossDimensionReachReportCompatibleFields
    , cfPathAttributionReportCompatibleFields
    , cfKind
    , cfFloodlightReportCompatibleFields
    , cfReportCompatibleFields
    , cfPathToConversionReportCompatibleFields

    -- * AudienceSegment
    , AudienceSegment
    , audienceSegment
    , asName
    , asId
    , asAllocation

    -- * FilesListSortField
    , FilesListSortField (..)

    -- * ConversionsBatchUpdateRequest
    , ConversionsBatchUpdateRequest
    , conversionsBatchUpdateRequest
    , cburbKind
    , cburbConversions
    , cburbEncryptionInfo

    -- * DirectorySiteInterstitialTagFormatsItem
    , DirectorySiteInterstitialTagFormatsItem (..)

    -- * DfpSettings
    , DfpSettings
    , dfpSettings
    , dsPubPaidPlacementAccepted
    , dsDfpNetworkName
    , dsPublisherPortalOnly
    , dsProgrammaticPlacementAccepted
    , dsDfpNetworkCode

    -- * EventTagsListSortField
    , EventTagsListSortField (..)

    -- * PathToConversionReportCompatibleFields
    , PathToConversionReportCompatibleFields
    , pathToConversionReportCompatibleFields
    , ptcrcfMetrics
    , ptcrcfKind
    , ptcrcfConversionDimensions
    , ptcrcfCustomFloodlightVariables
    , ptcrcfPerInteractionDimensions

    -- * InventoryItemType
    , InventoryItemType (..)

    -- * CreativeAssetPositionTopUnit
    , CreativeAssetPositionTopUnit (..)

    -- * City
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

    -- * PlatformType
    , PlatformType
    , platformType
    , ptKind
    , ptName
    , ptId

    -- * FloodlightActivityFloodlightActivityGroupType
    , FloodlightActivityFloodlightActivityGroupType (..)

    -- * PricingGroupType
    , PricingGroupType (..)

    -- * KeyValueTargetingExpression
    , KeyValueTargetingExpression
    , keyValueTargetingExpression
    , kvteExpression

    -- * CompanionClickThroughOverride
    , CompanionClickThroughOverride
    , companionClickThroughOverride
    , cctoCreativeId
    , cctoClickThroughURL

    -- * FloodlightActivityFloodlightTagType
    , FloodlightActivityFloodlightTagType (..)

    -- * FloodlightActivityGroupsListSortOrder
    , FloodlightActivityGroupsListSortOrder (..)

    -- * CreativeRotationType
    , CreativeRotationType (..)

    -- * OrdersListSortField
    , OrdersListSortField (..)

    -- * PlacementGroupsListSortField
    , PlacementGroupsListSortField (..)

    -- * DirectorySitesListSortOrder
    , DirectorySitesListSortOrder (..)

    -- * AdvertisersListResponse
    , AdvertisersListResponse
    , advertisersListResponse
    , advNextPageToken
    , advKind
    , advAdvertisers

    -- * CountriesListResponse
    , CountriesListResponse
    , countriesListResponse
    , couKind
    , couCountries

    -- * AccountPermissionGroupsListResponse
    , AccountPermissionGroupsListResponse
    , accountPermissionGroupsListResponse
    , apglrKind
    , apglrAccountPermissionGroups

    -- * PopupWindowProperties
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

    -- * CreativeAssetDetectedFeaturesItem
    , CreativeAssetDetectedFeaturesItem (..)

    -- * FloodlightActivityGroupType
    , FloodlightActivityGroupType (..)

    -- * EventTagOverride
    , EventTagOverride
    , eventTagOverride
    , etoEnabled
    , etoId

    -- * PlacementsGeneratetagsTagFormats
    , PlacementsGeneratetagsTagFormats (..)

    -- * AccountUserProFilesListSortField
    , AccountUserProFilesListSortField (..)

    -- * OperatingSystemVersion
    , OperatingSystemVersion
    , operatingSystemVersion
    , osvMinorVersion
    , osvKind
    , osvOperatingSystem
    , osvMajorVersion
    , osvName
    , osvId

    -- * Xgafv
    , Xgafv (..)

    -- * PathFilterPathMatchPosition
    , PathFilterPathMatchPosition (..)

    -- * InventoryItemsListSortOrder
    , InventoryItemsListSortOrder (..)

    -- * PlacementStrategiesListSortOrder
    , PlacementStrategiesListSortOrder (..)

    -- * AccountPermission
    , AccountPermission
    , accountPermission
    , acccKind
    , acccAccountProFiles
    , acccName
    , acccId
    , acccLevel
    , acccPermissionGroupId

    -- * MeasurementPartnerCampaignLink
    , MeasurementPartnerCampaignLink
    , measurementPartnerCampaignLink
    , mpclLinkStatus
    , mpclMeasurementPartner
    , mpclPartnerCampaignId

    -- * UserProFile
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

    -- * OperatingSystemsListResponse
    , OperatingSystemsListResponse
    , operatingSystemsListResponse
    , oslrKind
    , oslrOperatingSystems

    -- * ReportDelivery
    , ReportDelivery
    , reportDelivery
    , rdEmailOwner
    , rdRecipients
    , rdMessage
    , rdEmailOwnerDeliveryType

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
    , trlSubAccountId
    , trlDescription

    -- * ReportsFilesListSortField
    , ReportsFilesListSortField (..)

    -- * PostalCodesListResponse
    , PostalCodesListResponse
    , postalCodesListResponse
    , pclrKind
    , pclrPostalCodes

    -- * ChangeLog
    , ChangeLog
    , changeLog
    , chahUserProFileId
    , chahObjectType
    , chahUserProFileName
    , chahKind
    , chahObjectId
    , chahAction
    , chahTransactionId
    , chahOldValue
    , chahAccountId
    , chahNewValue
    , chahFieldName
    , chahId
    , chahSubAccountId
    , chahChangeTime

    -- * Language
    , Language
    , language
    , lLanguageCode
    , lKind
    , lName
    , lId

    -- * CreativesListSortField
    , CreativesListSortField (..)

    -- * PlacementStrategy
    , PlacementStrategy
    , placementStrategy
    , psKind
    , psAccountId
    , psName
    , psId

    -- * FloodlightActivity
    , FloodlightActivity
    , floodlightActivity
    , faCountingMethod
    , faAttributionEnabled
    , faStatus
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

    -- * DayPartTargetingDaysOfWeekItem
    , DayPartTargetingDaysOfWeekItem (..)

    -- * CustomFloodlightVariable
    , CustomFloodlightVariable
    , customFloodlightVariable
    , cusKind
    , cusValue
    , cusType

    -- * CreativeRotationWeightCalculationStrategy
    , CreativeRotationWeightCalculationStrategy (..)

    -- * FilesListScope
    , FilesListScope (..)

    -- * ContentCategoriesListSortField
    , ContentCategoriesListSortField (..)

    -- * ProjectAudienceAgeGroup
    , ProjectAudienceAgeGroup (..)

    -- * PlatformTypesListResponse
    , PlatformTypesListResponse
    , platformTypesListResponse
    , ptlrKind
    , ptlrPlatformTypes

    -- * AdType
    , AdType (..)

    -- * LastModifiedInfo
    , LastModifiedInfo
    , lastModifiedInfo
    , lmiTime

    -- * MeasurementPartnerAdvertiserLinkLinkStatus
    , MeasurementPartnerAdvertiserLinkLinkStatus (..)

    -- * TargetWindow
    , TargetWindow
    , targetWindow
    , twCustomHTML
    , twTargetWindowOption

    -- * ChangeLogsListAction
    , ChangeLogsListAction (..)

    -- * CreativeArtworkType
    , CreativeArtworkType (..)

    -- * PlacementStatus
    , PlacementStatus (..)

    -- * AccountPermissionGroup
    , AccountPermissionGroup
    , accountPermissionGroup
    , apgpKind
    , apgpName
    , apgpId

    -- * Advertiser
    , Advertiser
    , advertiser
    , advdMeasurementPartnerLink
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

    -- * ReportScheduleRunsOnDayOfMonth
    , ReportScheduleRunsOnDayOfMonth (..)

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
    , urSubAccountId

    -- * PathFilter
    , PathFilter
    , pathFilter
    , pfEventFilters
    , pfKind
    , pfPathMatchPosition

    -- * MeasurementPartnerAdvertiserLinkMeasurementPartner
    , MeasurementPartnerAdvertiserLinkMeasurementPartner (..)

    -- * FloodlightActivityUserDefinedVariableTypesItem
    , FloodlightActivityUserDefinedVariableTypesItem (..)

    -- * EventTagSiteFilterType
    , EventTagSiteFilterType (..)

    -- * ReportFormat
    , ReportFormat (..)

    -- * PlacementGroupPlacementGroupType
    , PlacementGroupPlacementGroupType (..)

    -- * VideoFormatsListResponse
    , VideoFormatsListResponse
    , videoFormatsListResponse
    , vflrKind
    , vflrVideoFormats

    -- * DirectorySitesListResponse
    , DirectorySitesListResponse
    , directorySitesListResponse
    , dslrNextPageToken
    , dslrKind
    , dslrDirectorySites

    -- * ConversionError
    , ConversionError
    , conversionError
    , ceKind
    , ceCode
    , ceMessage

    -- * PricingPricingType
    , PricingPricingType (..)

    -- * PricingSchedulePricingPeriod
    , PricingSchedulePricingPeriod
    , pricingSchedulePricingPeriod
    , psppEndDate
    , psppRateOrCostNanos
    , psppStartDate
    , psppUnits
    , psppPricingComment

    -- * SubAccountsListSortOrder
    , SubAccountsListSortOrder (..)

    -- * Region
    , Region
    , region
    , regRegionCode
    , regKind
    , regName
    , regCountryCode
    , regCountryDartId
    , regDartId

    -- * UniversalAdIdRegistry
    , UniversalAdIdRegistry (..)

    -- * AdvertiserGroupsListResponse
    , AdvertiserGroupsListResponse
    , advertiserGroupsListResponse
    , aglrNextPageToken
    , aglrKind
    , aglrAdvertiserGroups

    -- * AdsListSortOrder
    , AdsListSortOrder (..)

    -- * ProjectsListSortOrder
    , ProjectsListSortOrder (..)

    -- * CreativeAssignment
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

    -- * DimensionFilter
    , DimensionFilter
    , dimensionFilter
    , dfKind
    , dfValue
    , dfDimensionName

    -- * PathReportDimensionValue
    , PathReportDimensionValue
    , pathReportDimensionValue
    , prdvKind
    , prdvValues
    , prdvMatchType
    , prdvIds
    , prdvDimensionName

    -- * UserProFileList
    , UserProFileList
    , userProFileList
    , upflEtag
    , upflKind
    , upflItems

    -- * RemarketingListsListSortField
    , RemarketingListsListSortField (..)

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
    , fcNATuralSearchConversionAttributionOption
    , fcUserDefinedVariableConfigurations
    , fcSubAccountId
    , fcCustomViewabilityMetric
    , fcFirstDayOfWeek
    , fcOmnitureSettings

    -- * MobileAppDirectory
    , MobileAppDirectory (..)

    -- * CompanionSetting
    , CompanionSetting
    , companionSetting
    , comKind
    , comImageOnly
    , comCompanionsDisabled
    , comEnabledSizes

    -- * ReportScheduleRepeatsOnWeekDaysItem
    , ReportScheduleRepeatsOnWeekDaysItem (..)

    -- * FloodlightActivityGroupsListResponse
    , FloodlightActivityGroupsListResponse
    , floodlightActivityGroupsListResponse
    , faglrNextPageToken
    , faglrKind
    , faglrFloodlightActivityGroups

    -- * CreativeGroupAssignmentCreativeGroupNumber
    , CreativeGroupAssignmentCreativeGroupNumber (..)

    -- * Conversion
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
    , conoDclid
    , conoMatchId

    -- * CreativeFieldValuesListResponse
    , CreativeFieldValuesListResponse
    , creativeFieldValuesListResponse
    , cfvlrNextPageToken
    , cfvlrKind
    , cfvlrCreativeFieldValues

    -- * SiteSettingsVpaidAdapterChoiceTemplate
    , SiteSettingsVpaidAdapterChoiceTemplate (..)

    -- * MeasurementPartnerWrAppingData
    , MeasurementPartnerWrAppingData
    , measurementPartnerWrAppingData
    , mpwadLinkStatus
    , mpwadMeasurementPartner
    , mpwadWrAppedTag
    , mpwadTagWrAppingMode

    -- * AccountsListSortField
    , AccountsListSortField (..)

    -- * RichMediaExitOverride
    , RichMediaExitOverride
    , richMediaExitOverride
    , rmeoEnabled
    , rmeoClickThroughURL
    , rmeoExitId

    -- * AdvertisersListStatus
    , AdvertisersListStatus (..)

    -- * CustomViewabilityMetric
    , CustomViewabilityMetric
    , customViewabilityMetric
    , cvmName
    , cvmId
    , cvmConfiguration

    -- * DimensionValueMatchType
    , DimensionValueMatchType (..)

    -- * AdvertiserLandingPagesListResponse
    , AdvertiserLandingPagesListResponse
    , advertiserLandingPagesListResponse
    , alplrLandingPages
    , alplrNextPageToken
    , alplrKind

    -- * MobileAppsListResponse
    , MobileAppsListResponse
    , mobileAppsListResponse
    , malrNextPageToken
    , malrKind
    , malrMobileApps

    -- * SortedDimension
    , SortedDimension
    , sortedDimension
    , sdKind
    , sdSortOrder
    , sdName

    -- * PathReportDimensionValueMatchType
    , PathReportDimensionValueMatchType (..)

    -- * PlacementGroupsListSortOrder
    , PlacementGroupsListSortOrder (..)

    -- * CreativeFieldsListResponse
    , CreativeFieldsListResponse
    , creativeFieldsListResponse
    , cflrNextPageToken
    , cflrKind
    , cflrCreativeFields

    -- * TargetingTemplatesListResponse
    , TargetingTemplatesListResponse
    , targetingTemplatesListResponse
    , ttlrNextPageToken
    , ttlrKind
    , ttlrTargetingTemplates

    -- * PlacementsGenerateTagsResponse
    , PlacementsGenerateTagsResponse
    , placementsGenerateTagsResponse
    , pgtrKind
    , pgtrPlacementTags

    -- * CreativeAsset
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

    -- * AdCompatibility
    , AdCompatibility (..)

    -- * CreativeFieldValuesListSortField
    , CreativeFieldValuesListSortField (..)

    -- * LanguageTargeting
    , LanguageTargeting
    , languageTargeting
    , ltLanguages

    -- * CreativeAssetSelection
    , CreativeAssetSelection
    , creativeAssetSelection
    , casRules
    , casDefaultAssetId

    -- * PlacementsListResponse
    , PlacementsListResponse
    , placementsListResponse
    , plaNextPageToken
    , plaKind
    , plaPlacements

    -- * FloodlightActivityGroupsListSortField
    , FloodlightActivityGroupsListSortField (..)

    -- * OrdersListSortOrder
    , OrdersListSortOrder (..)

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

    -- * MetrosListResponse
    , MetrosListResponse
    , metrosListResponse
    , mlrKind
    , mlrMetros

    -- * AccountAccountProFile
    , AccountAccountProFile (..)

    -- * ConversionsBatchInsertResponse
    , ConversionsBatchInsertResponse
    , conversionsBatchInsertResponse
    , cbirbStatus
    , cbirbKind
    , cbirbHasFailures

    -- * OrderDocumentsListResponse
    , OrderDocumentsListResponse
    , orderDocumentsListResponse
    , odlrNextPageToken
    , odlrKind
    , odlrOrderDocuments

    -- * Recipient
    , Recipient
    , recipient
    , recEmail
    , recKind
    , recDeliveryType

    -- * CreativeType
    , CreativeType (..)

    -- * FilesListSortOrder
    , FilesListSortOrder (..)

    -- * AdvertiserGroupsListSortField
    , AdvertiserGroupsListSortField (..)

    -- * TargetWindowTargetWindowOption
    , TargetWindowTargetWindowOption (..)

    -- * PlacementsListPricingTypes
    , PlacementsListPricingTypes (..)

    -- * EventTagsListSortOrder
    , EventTagsListSortOrder (..)

    -- * EncryptionInfoEncryptionSource
    , EncryptionInfoEncryptionSource (..)

    -- * DirectorySitesListSortField
    , DirectorySitesListSortField (..)

    -- * Site
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

    -- * ReportCrossDimensionReachCriteriaDimension
    , ReportCrossDimensionReachCriteriaDimension (..)

    -- * SitesListSortOrder
    , SitesListSortOrder (..)

    -- * UserDefinedVariableConfiguration
    , UserDefinedVariableConfiguration
    , userDefinedVariableConfiguration
    , udvcReportName
    , udvcDataType
    , udvcVariableType

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

    -- * FileURLs
    , FileURLs
    , fileURLs
    , fuBrowserURL
    , fuAPIURL

    -- * CampaignCreativeAssociationsListResponse
    , CampaignCreativeAssociationsListResponse
    , campaignCreativeAssociationsListResponse
    , ccalrCampaignCreativeAssociations
    , ccalrNextPageToken
    , ccalrKind

    -- * PlacementTagFormatsItem
    , PlacementTagFormatsItem (..)

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
    , oSubAccountId
    , oNotes
    , oContacts
    , oSiteId
    , oTermsAndConditions
    , oApproverUserProFileIds

    -- * CreativeAssetId
    , CreativeAssetId
    , creativeAssetId
    , caiName
    , caiType

    -- * FrequencyCap
    , FrequencyCap
    , frequencyCap
    , fcImpressions
    , fcDuration

    -- * File
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

    -- * DynamicTargetingKeyObjectType
    , DynamicTargetingKeyObjectType (..)

    -- * ReportType
    , ReportType (..)

    -- * CreativeAssetMetadataWarnedValidationRulesItem
    , CreativeAssetMetadataWarnedValidationRulesItem (..)

    -- * CreativeGroupsListResponse
    , CreativeGroupsListResponse
    , creativeGroupsListResponse
    , cglrCreativeGroups
    , cglrNextPageToken
    , cglrKind

    -- * AdSlotPaymentSourceType
    , AdSlotPaymentSourceType (..)

    -- * MobileCarriersListResponse
    , MobileCarriersListResponse
    , mobileCarriersListResponse
    , mclrMobileCarriers
    , mclrKind

    -- * AccountPermissionAccountProFilesItem
    , AccountPermissionAccountProFilesItem (..)

    -- * CreativeAssetMetadata
    , CreativeAssetMetadata
    , creativeAssetMetadata
    , camaRichMedia
    , camaCounterCustomEvents
    , camaKind
    , camaAssetIdentifier
    , camaIdDimensionValue
    , camaExitCustomEvents
    , camaClickTags
    , camaWarnedValidationRules
    , camaId
    , camaTimerCustomEvents
    , camaDetectedFeatures

    -- * OmnitureSettings
    , OmnitureSettings
    , omnitureSettings
    , osOmnitureCostDataEnabled
    , osOmnitureIntegrationEnabled

    -- * ConnectionType
    , ConnectionType
    , connectionType
    , cttKind
    , cttName
    , cttId

    -- * CreativeCustomEventAdvertiserCustomEventType
    , CreativeCustomEventAdvertiserCustomEventType (..)

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
    , plalSubAccountId
    , plalExternalId
    , plalComment
    , plalPrimaryPlacementIdDimensionValue
    , plalSiteId
    , plalArchived

    -- * EventTag
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

    -- * UserRolePermission
    , UserRolePermission
    , userRolePermission
    , useKind
    , useAvailability
    , useName
    , useId
    , usePermissionGroupId

    -- * ChangeLogsListObjectType
    , ChangeLogsListObjectType (..)

    -- * OrderContact
    , OrderContact
    , orderContact
    , ocSignatureUserProFileId
    , ocContactName
    , ocContactTitle
    , ocContactType
    , ocContactInfo

    -- * TranscodeSetting
    , TranscodeSetting
    , transcodeSetting
    , tsKind
    , tsEnabledVideoFormats

    -- * FloodlightActivitiesGenerateTagResponse
    , FloodlightActivitiesGenerateTagResponse
    , floodlightActivitiesGenerateTagResponse
    , fagtrGlobalSiteTagGlobalSnippet
    , fagtrFloodlightActivityTag
    , fagtrKind

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

    -- * MeasurementPartnerAdvertiserLink
    , MeasurementPartnerAdvertiserLink
    , measurementPartnerAdvertiserLink
    , mpalLinkStatus
    , mpalMeasurementPartner
    , mpalPartnerAdvertiserId

    -- * FloodlightActivityStatus
    , FloodlightActivityStatus (..)

    -- * ThirdPartyTrackingURL
    , ThirdPartyTrackingURL
    , thirdPartyTrackingURL
    , tptuURL
    , tptuThirdPartyURLType

    -- * SiteVideoSettingsOrientation
    , SiteVideoSettingsOrientation (..)

    -- * PricingCapCostType
    , PricingCapCostType (..)

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

    -- * MobileApp
    , MobileApp
    , mobileApp
    , maKind
    , maId
    , maTitle
    , maPublisherName
    , maDirectory

    -- * CreativeAssetDisplayType
    , CreativeAssetDisplayType (..)

    -- * Placement
    , Placement
    , placement
    , p1Status
    , p1VideoSettings
    , p1PlacementStrategyId
    , p1PartnerWrAppingData
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
    , p1WrAppingOptOut
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

    -- * FloodlightActivityCountingMethod
    , FloodlightActivityCountingMethod (..)

    -- * EncryptionInfo
    , EncryptionInfo
    , encryptionInfo
    , eiEncryptionSource
    , eiKind
    , eiEncryptionEntityType
    , eiEncryptionEntityId

    -- * SitesListResponse
    , SitesListResponse
    , sitesListResponse
    , sitNextPageToken
    , sitKind
    , sitSites

    -- * ContentCategoriesListSortOrder
    , ContentCategoriesListSortOrder (..)

    -- * TargetingTemplate
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

    -- * CreativeField
    , CreativeField
    , creativeField
    , cffKind
    , cffAdvertiserId
    , cffAdvertiserIdDimensionValue
    , cffAccountId
    , cffName
    , cffId
    , cffSubAccountId

    -- * AdvertiserStatus
    , AdvertiserStatus (..)

    -- * DefaultClickThroughEventTagProperties
    , DefaultClickThroughEventTagProperties
    , defaultClickThroughEventTagProperties
    , dctetpOverrideInheritedEventTag
    , dctetpDefaultClickThroughEventTagId

    -- * ListTargetingExpression
    , ListTargetingExpression
    , listTargetingExpression
    , lteExpression
    ) where

import Network.Google.DFAReporting.Types.Product
import Network.Google.DFAReporting.Types.Sum
import Network.Google.Prelude

-- | Default request referring to version 'v3.5' of the Campaign Manager 360 API. This contains the host and root path used as a starting point for constructing service requests.
dFAReportingService :: ServiceConfig
dFAReportingService
  = defaultService (ServiceId "dfareporting:v3.5")
      "dfareporting.googleapis.com"

-- | View and manage DoubleClick for Advertisers reports
dFAReportingScope :: Proxy '["https://www.googleapis.com/auth/dfareporting"]
dFAReportingScope = Proxy

-- | Manage DoubleClick Digital Marketing conversions
ddmconversionsScope :: Proxy '["https://www.googleapis.com/auth/ddmconversions"]
ddmconversionsScope = Proxy

-- | View and manage your DoubleClick Campaign Manager\'s (DCM) display ad
-- campaigns
dfatraffickingScope :: Proxy '["https://www.googleapis.com/auth/dfatrafficking"]
dfatraffickingScope = Proxy
