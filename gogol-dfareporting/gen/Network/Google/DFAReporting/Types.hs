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

    -- * CountingMethod
    , CountingMethod (..)

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

    -- * Delivery
    , Delivery
    , delivery
    , dEmailOwner
    , dRecipients
    , dMessage
    , dEmailOwnerDeliveryType

    -- * FileList
    , FileList
    , fileList
    , flEtag
    , flNextPageToken
    , flKind
    , flItems

    -- * ClickTag
    , ClickTag
    , clickTag
    , ctValue
    , ctName
    , ctEventName

    -- * DfareportingCampaignCreativeAssociationsListSortOrder
    , DfareportingCampaignCreativeAssociationsListSortOrder (..)

    -- * Status
    , Status (..)

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
    , cceExitURL
    , cceTargetType
    , ccePopupWindowProperties
    , cceVideoReportingId
    , cceId
    , cceArtworkLabel
    , cceArtworkType

    -- * DetectedFeaturesItem
    , DetectedFeaturesItem (..)

    -- * ReachReportCompatibleFields
    , ReachReportCompatibleFields
    , reachReportCompatibleFields
    , rrcfMetrics
    , rrcfReachByFrequencyMetrics
    , rrcfKind
    , rrcfDimensionFilters
    , rrcfPivotedActivityMetrics
    , rrcfDimensions

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

    -- * SubAccountsListResponse
    , SubAccountsListResponse
    , subAccountsListResponse
    , salrNextPageToken
    , salrKind
    , salrSubAccounts

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

    -- * CreativeGroupNumber
    , CreativeGroupNumber (..)

    -- * PaymentSourceType
    , PaymentSourceType (..)

    -- * AdSlotCompatibility
    , AdSlotCompatibility (..)

    -- * DirectorySiteSettings
    , DirectorySiteSettings
    , directorySiteSettings
    , dssInterstitialPlacementAccepted
    , dssDfpSettings
    , dssVerificationTagOptOut
    , dssActiveViewOptOut
    , dssVideoActiveViewOptOut
    , dssInstreamVideoPlacementAccepted
    , dssNielsenOCROptOut

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
    , iiSubAccountId
    , iiOrderId
    , iiSiteId

    -- * ReportProperties
    , ReportProperties
    , reportProperties
    , rpMaximumInteractionGap
    , rpMaximumClickInteractions
    , rpPivotOnInteractionPath
    , rpMaximumImpressionInteractions
    , rpIncludeUnattributedIPConversions
    , rpImpressionsLookbackWindow
    , rpClicksLookbackWindow
    , rpIncludeUnattributedCookieConversions
    , rpIncludeAttributedIPConversions

    -- * ListPopulationRule
    , ListPopulationRule
    , listPopulationRule
    , lprFloodlightActivityName
    , lprFloodlightActivityId
    , lprListPopulationClauses

    -- * WindowMode
    , WindowMode (..)

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
    , slrKind
    , slrSizes

    -- * DfareportingPlacementStrategiesListSortOrder
    , DfareportingPlacementStrategiesListSortOrder (..)

    -- * DirectorySite
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

    -- * FloodlightActivitiesListResponse
    , FloodlightActivitiesListResponse
    , floodlightActivitiesListResponse
    , falrNextPageToken
    , falrKind
    , falrFloodlightActivities

    -- * DfareportingEventTagsListSortField
    , DfareportingEventTagsListSortField (..)

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
    , paSSLRequired

    -- * KeywordOption
    , KeywordOption (..)

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

    -- * PositionOption
    , PositionOption (..)

    -- * AdvertiserCustomEventType
    , AdvertiserCustomEventType (..)

    -- * DayPartTargeting
    , DayPartTargeting
    , dayPartTargeting
    , dptDaysOfWeek
    , dptHoursOfDay
    , dptUserLocalTime

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
    , fagSubAccountId
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

    -- * CreativeFieldAssignment
    , CreativeFieldAssignment
    , creativeFieldAssignment
    , cfaCreativeFieldId
    , cfaCreativeFieldValueId

    -- * WeightCalculationStrategy
    , WeightCalculationStrategy (..)

    -- * DfareportingCreativeFieldValuesListSortOrder
    , DfareportingCreativeFieldValuesListSortOrder (..)

    -- * CreativeAssetMetadataDetectedFeaturesItem
    , CreativeAssetMetadataDetectedFeaturesItem (..)

    -- * EventTagStatus
    , EventTagStatus (..)

    -- * FloodlightConfigurationsListResponse
    , FloodlightConfigurationsListResponse
    , floodlightConfigurationsListResponse
    , fclrKind
    , fclrFloodlightConfigurations

    -- * Priority
    , Priority (..)

    -- * TagFormats
    , TagFormats (..)

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

    -- * CreativeAssetArtworkType
    , CreativeAssetArtworkType (..)

    -- * Schedule
    , Schedule
    , schedule
    , sEvery
    , sActive
    , sRepeats
    , sStartDate
    , sExpirationDate
    , sRunsOnDayOfMonth
    , sRepeatsOnWeekDays

    -- * PathToConversionCriteria
    , PathToConversionCriteria
    , pathToConversionCriteria
    , ptccReportProperties
    , ptccMetricNames
    , ptccCustomRichMediaEvents
    , ptccDateRange
    , ptccConversionDimensions
    , ptccCustomFloodlightVariables
    , ptccFloodlightConfigId
    , ptccActivityFilters
    , ptccPerInteractionDimensions

    -- * ObjectFilter
    , ObjectFilter
    , objectFilter
    , ofStatus
    , ofKind
    , ofObjectIds

    -- * DfareportingPlacementsListSortField
    , DfareportingPlacementsListSortField (..)

    -- * ObjectType
    , ObjectType (..)

    -- * ReportsConfiguration
    , ReportsConfiguration
    , reportsConfiguration
    , rcExposureToConversionEnabled
    , rcReportGenerationTimeZoneId
    , rcLookbackConfiguration

    -- * Size
    , Size
    , size
    , sHeight
    , sKind
    , sWidth
    , sIab
    , sId

    -- * InventoryItemsListResponse
    , InventoryItemsListResponse
    , inventoryItemsListResponse
    , iilrInventoryItems
    , iilrNextPageToken
    , iilrKind

    -- * DfareportingCreativeFieldsListSortField
    , DfareportingCreativeFieldsListSortField (..)

    -- * AuthoringTool
    , AuthoringTool (..)

    -- * EventTagTypes
    , EventTagTypes (..)

    -- * TargetableRemarketingListListSource
    , TargetableRemarketingListListSource (..)

    -- * DfareportingOrderDocumentsListSortField
    , DfareportingOrderDocumentsListSortField (..)

    -- * DfareportingSubAccountsListSortOrder
    , DfareportingSubAccountsListSortOrder (..)

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
    , pAudienceGender
    , pClientName
    , pTargetCpaNanos

    -- * DfareportingAdsListSortOrder
    , DfareportingAdsListSortOrder (..)

    -- * SubAccount
    , SubAccount
    , subAccount
    , saKind
    , saAvailablePermissionIds
    , saAccountId
    , saName
    , saId

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

    -- * Operator
    , Operator (..)

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

    -- * UserDefinedVariableTypesItem
    , UserDefinedVariableTypesItem (..)

    -- * AccountPermissionsListResponse
    , AccountPermissionsListResponse
    , accountPermissionsListResponse
    , aplrKind
    , aplrAccountPermissions

    -- * ClickThroughURLSuffixProperties
    , ClickThroughURLSuffixProperties
    , clickThroughURLSuffixProperties
    , ctuspOverrideInheritedSuffix
    , ctuspClickThroughURLSuffix

    -- * OperatingSystemVersionsListResponse
    , OperatingSystemVersionsListResponse
    , operatingSystemVersionsListResponse
    , osvlrKind
    , osvlrOperatingSystemVersions

    -- * CreativeCompatibilityItem
    , CreativeCompatibilityItem (..)

    -- * WarnedValidationRulesItem
    , WarnedValidationRulesItem (..)

    -- * TargetableRemarketingListsListResponse
    , TargetableRemarketingListsListResponse
    , targetableRemarketingListsListResponse
    , trllrNextPageToken
    , trllrKind
    , trllrTargetableRemarketingLists

    -- * Country
    , Country
    , country
    , couKind
    , couName
    , couCountryCode
    , couDartId
    , couSSLEnabled

    -- * URLs
    , URLs
    , urls
    , urlBrowserURL
    , urlAPIURL

    -- * DfareportingCreativeGroupsListSortField
    , DfareportingCreativeGroupsListSortField (..)

    -- * Dimension
    , Dimension (..)

    -- * Pricing
    , Pricing
    , pricing
    , priEndDate
    , priStartDate
    , priGroupType
    , priPricingType
    , priFlights
    , priCapCostType

    -- * CustomRichMediaEvents
    , CustomRichMediaEvents
    , customRichMediaEvents
    , crmeKind
    , crmeFilteredEventIds

    -- * AudienceSegmentGroup
    , AudienceSegmentGroup
    , audienceSegmentGroup
    , asgAudienceSegments
    , asgName
    , asgId

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

    -- * InpageTagFormatsItem
    , InpageTagFormatsItem (..)

    -- * PricingTypes
    , PricingTypes (..)

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

    -- * MatchType
    , MatchType (..)

    -- * Creative
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

    -- * Format
    , Format (..)

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
    , aupSubAccountId
    , aupCampaignFilter

    -- * PlacementTag
    , PlacementTag
    , placementTag
    , ptPlacementId
    , ptTagDatas

    -- * DfareportingAccountUserProfilesListSortOrder
    , DfareportingAccountUserProfilesListSortOrder (..)

    -- * Types
    , Types (..)

    -- * RemarketingListsListResponse
    , RemarketingListsListResponse
    , remarketingListsListResponse
    , rllrNextPageToken
    , rllrRemarketingLists
    , rllrKind

    -- * OrderContactContactType
    , OrderContactContactType (..)

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

    -- * DurationType
    , DurationType (..)

    -- * DfareportingFloodlightActivityGroupsListSortField
    , DfareportingFloodlightActivityGroupsListSortField (..)

    -- * DfareportingFloodlightActivityGroupsListType
    , DfareportingFloodlightActivityGroupsListType (..)

    -- * ThirdPartyAuthenticationToken
    , ThirdPartyAuthenticationToken
    , thirdPartyAuthenticationToken
    , tpatValue
    , tpatName

    -- * Visibility
    , Visibility (..)

    -- * ReachCriteria
    , ReachCriteria
    , reachCriteria
    , rcReachByFrequencyMetricNames
    , rcEnableAllDimensionCombinations
    , rcMetricNames
    , rcCustomRichMediaEvents
    , rcDimensionFilters
    , rcActivities
    , rcDateRange
    , rcDimensions

    -- * OptimizationModel
    , OptimizationModel (..)

    -- * DfareportingCampaignsListSortOrder
    , DfareportingCampaignsListSortOrder (..)

    -- * BrowsersListResponse
    , BrowsersListResponse
    , browsersListResponse
    , blrKind
    , blrBrowsers

    -- * EventTagType
    , EventTagType (..)

    -- * Action
    , Action (..)

    -- * DfareportingReportsListSortOrder
    , DfareportingReportsListSortOrder (..)

    -- * PlacementGroupType
    , PlacementGroupType (..)

    -- * ClickThroughURL
    , ClickThroughURL
    , clickThroughURL
    , ctuDefaultLandingPage
    , ctuComputedClickThroughURL
    , ctuCustomClickThroughURL
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

    -- * DfareportingAdvertiserGroupsListSortField
    , DfareportingAdvertiserGroupsListSortField (..)

    -- * CreativeAssetIdType
    , CreativeAssetIdType (..)

    -- * Campaign
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

    -- * TargetType
    , TargetType (..)

    -- * Availability
    , Availability (..)

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

    -- * TraffickerType
    , TraffickerType (..)

    -- * PositionType
    , PositionType (..)

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
    , aaNielsenOCREnabled
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
    , rlSubAccountId
    , rlDescription

    -- * AccountUserProfilesListResponse
    , AccountUserProfilesListResponse
    , accountUserProfilesListResponse
    , auplrNextPageToken
    , auplrAccountUserProfiles
    , auplrKind

    -- * DfareportingSubAccountsListSortField
    , DfareportingSubAccountsListSortField (..)

    -- * TagFormat
    , TagFormat (..)

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

    -- * SortOrder
    , SortOrder (..)

    -- * AccountProfilesItem
    , AccountProfilesItem (..)

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
    , lpURL
    , lpName
    , lpId

    -- * TagSetting
    , TagSetting
    , tagSetting
    , tsKeywordOption
    , tsIncludeClickThroughURLs
    , tsIncludeClickTracking
    , tsAdditionalKeyValues

    -- * FloodlightCriteriaReportProperties
    , FloodlightCriteriaReportProperties
    , floodlightCriteriaReportProperties
    , fcrpIncludeUnattributedIPConversions
    , fcrpIncludeUnattributedCookieConversions
    , fcrpIncludeAttributedIPConversions

    -- * Role
    , Role (..)

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

    -- * ConnectionTypesListResponse
    , ConnectionTypesListResponse
    , connectionTypesListResponse
    , ctlrKind
    , ctlrConnectionTypes

    -- * LookbackConfiguration
    , LookbackConfiguration
    , lookbackConfiguration
    , lcClickDuration
    , lcPostImpressionActivitiesDuration

    -- * PositionTopUnit
    , PositionTopUnit (..)

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

    -- * CacheBustingType
    , CacheBustingType (..)

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

    -- * DeliveryType
    , DeliveryType (..)

    -- * PositionLeftUnit
    , PositionLeftUnit (..)

    -- * OffsetPosition
    , OffsetPosition
    , offsetPosition
    , opLeft
    , opTop

    -- * FloodlightActivityPublisherDynamicTag
    , FloodlightActivityPublisherDynamicTag
    , floodlightActivityPublisherDynamicTag
    , fapdtClickThrough
    , fapdtSiteIdDimensionValue
    , fapdtDynamicTag
    , fapdtDirectorySiteId
    , fapdtSiteId
    , fapdtViewThrough

    -- * PaymentSource
    , PaymentSource (..)

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

    -- * Alignment
    , Alignment (..)

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

    -- * ListSource
    , ListSource (..)

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

    -- * DaysOfWeekItem
    , DaysOfWeekItem (..)

    -- * CompatibleFields
    , CompatibleFields
    , compatibleFields
    , cfReachReportCompatibleFields
    , cfCrossDimensionReachReportCompatibleFields
    , cfKind
    , cfFloodlightReportCompatibleFields
    , cfReportCompatibleFields
    , cfPathToConversionReportCompatibleFields

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

    -- * GroupType
    , GroupType (..)

    -- * CompanionClickThroughOverride
    , CompanionClickThroughOverride
    , companionClickThroughOverride
    , cctoCreativeId
    , cctoClickThroughURL

    -- * DfareportingReportsFilesListSortField
    , DfareportingReportsFilesListSortField (..)

    -- * FloodlightActivityFloodlightActivityGroupType
    , FloodlightActivityFloodlightActivityGroupType (..)

    -- * DfareportingSitesListSortField
    , DfareportingSitesListSortField (..)

    -- * SortedDimensionSortOrder
    , SortedDimensionSortOrder (..)

    -- * PlatformType
    , PlatformType
    , platformType
    , ptKind
    , ptName
    , ptId

    -- * RelativeDateRange
    , RelativeDateRange (..)

    -- * DfareportingCampaignsListSortField
    , DfareportingCampaignsListSortField (..)

    -- * CapCostOption
    , CapCostOption (..)

    -- * Scope
    , Scope (..)

    -- * DfareportingReportsListSortField
    , DfareportingReportsListSortField (..)

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

    -- * FloodlightActivityGroupType
    , FloodlightActivityGroupType (..)

    -- * AccountProfile
    , AccountProfile (..)

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
    , clSubAccountId
    , clChangeTime

    -- * OperatingSystemsListResponse
    , OperatingSystemsListResponse
    , operatingSystemsListResponse
    , oslrKind
    , oslrOperatingSystems

    -- * DisplayType
    , DisplayType (..)

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

    -- * ChildAssetType
    , ChildAssetType (..)

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

    -- * DfareportingAccountsListSortField
    , DfareportingAccountsListSortField (..)

    -- * FloodlightActivity
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
    , advdSubAccountId
    , advdFloodlightConfigurationIdDimensionValue
    , advdClickThroughURLSuffix

    -- * AccountPermissionGroup
    , AccountPermissionGroup
    , accountPermissionGroup
    , apgKind
    , apgName
    , apgId

    -- * DfareportingProjectsListSortOrder
    , DfareportingProjectsListSortOrder (..)

    -- * DfareportingAdvertisersListSortOrder
    , DfareportingAdvertisersListSortOrder (..)

    -- * TargetWindow
    , TargetWindow
    , targetWindow
    , twCustomHTML
    , twTargetWindowOption

    -- * DfareportingUserRolesListSortOrder
    , DfareportingUserRolesListSortOrder (..)

    -- * DfareportingRemarketingListsListSortField
    , DfareportingRemarketingListsListSortField (..)

    -- * ReportFormat
    , ReportFormat (..)

    -- * CreativeArtworkType
    , CreativeArtworkType (..)

    -- * NATuralSearchConversionAttributionOption
    , NATuralSearchConversionAttributionOption (..)

    -- * InterstitialTagFormatsItem
    , InterstitialTagFormatsItem (..)

    -- * UserAccessType
    , UserAccessType (..)

    -- * StartTimeType
    , StartTimeType (..)

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
    , urSubAccountId

    -- * ActiveAdsLimitTier
    , ActiveAdsLimitTier (..)

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

    -- * DirectorySitesListResponse
    , DirectorySitesListResponse
    , directorySitesListResponse
    , dslrNextPageToken
    , dslrKind
    , dslrDirectorySites

    -- * PricingType
    , PricingType (..)

    -- * DataType
    , DataType (..)

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

    -- * AudienceAgeGroup
    , AudienceAgeGroup (..)

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
    , fcSSLRequired
    , fcNATuralSearchConversionAttributionOption
    , fcUserDefinedVariableConfigurations
    , fcSubAccountId
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

    -- * CrossDimensionReachCriteria
    , CrossDimensionReachCriteria
    , crossDimensionReachCriteria
    , cdrcPivoted
    , cdrcBreakdown
    , cdrcDimension
    , cdrcMetricNames
    , cdrcDimensionFilters
    , cdrcDateRange
    , cdrcOverlapMetricNames

    -- * SortField
    , SortField (..)

    -- * RichMediaExitOverride
    , RichMediaExitOverride
    , richMediaExitOverride
    , rmeoUseCustomExitURL
    , rmeoExitId
    , rmeoCustomExitURL

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

    -- * Type
    , Type (..)

    -- * Compatibilities
    , Compatibilities (..)

    -- * UserProfileList
    , UserProfileList
    , userProfileList
    , uplEtag
    , uplKind
    , uplItems

    -- * ContactType
    , ContactType (..)

    -- * DirectorySiteContactsListResponse
    , DirectorySiteContactsListResponse
    , directorySiteContactsListResponse
    , dsclrNextPageToken
    , dsclrKind
    , dsclrDirectorySiteContacts

    -- * CreativeType
    , CreativeType (..)

    -- * BackupImageFeaturesItem
    , BackupImageFeaturesItem (..)

    -- * FloodlightCriteria
    , FloodlightCriteria
    , floodlightCriteria
    , fcReportProperties
    , fcMetricNames
    , fcCustomRichMediaEvents
    , fcDimensionFilters
    , fcDateRange
    , fcFloodlightConfigId
    , fcDimensions

    -- * FirstDayOfWeek
    , FirstDayOfWeek (..)

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

    -- * OrderDocumentsListResponse
    , OrderDocumentsListResponse
    , orderDocumentsListResponse
    , odlrNextPageToken
    , odlrKind
    , odlrOrderDocuments

    -- * SiteFilterType
    , SiteFilterType (..)

    -- * AdCompatibility
    , AdCompatibility (..)

    -- * Site
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

    -- * RepeatsOnWeekDaysItem
    , RepeatsOnWeekDaysItem (..)

    -- * SortedDimension
    , SortedDimension
    , sortedDimension
    , sdKind
    , sdSortOrder
    , sdName

    -- * Criteria
    , Criteria
    , criteria
    , cMetricNames
    , cCustomRichMediaEvents
    , cDimensionFilters
    , cActivities
    , cDateRange
    , cDimensions

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

    -- * CreativeType
    , CreativeType (..)

    -- * MetrosListResponse
    , MetrosListResponse
    , metrosListResponse
    , mlrKind
    , mlrMetros

    -- * DfareportingSitesListSortOrder
    , DfareportingSitesListSortOrder (..)

    -- * StandardVariableTypesItem
    , StandardVariableTypesItem (..)

    -- * DfareportingReportsFilesListSortOrder
    , DfareportingReportsFilesListSortOrder (..)

    -- * AudienceGender
    , AudienceGender (..)

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

    -- * CreativeGroupsListResponse
    , CreativeGroupsListResponse
    , creativeGroupsListResponse
    , cglrCreativeGroups
    , cglrNextPageToken
    , cglrKind

    -- * ReportType
    , ReportType (..)

    -- * RunsOnDayOfMonth
    , RunsOnDayOfMonth (..)

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

    -- * TargetWindowOption
    , TargetWindowOption (..)

    -- * DfareportingEventTagsListSortOrder
    , DfareportingEventTagsListSortOrder (..)

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

    -- * VariableType
    , VariableType (..)

    -- * Level
    , Level (..)

    -- * FrequencyCap
    , FrequencyCap
    , frequencyCap
    , fcImpressions
    , fcDuration

    -- * DfareportingTargetableRemarketingListsListSortField
    , DfareportingTargetableRemarketingListsListSortField (..)

    -- * CreativeSettings
    , CreativeSettings
    , creativeSettings
    , csIFrameHeader
    , csIFrameFooter

    -- * Compatibility
    , Compatibility (..)

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
    , oSubAccountId
    , oNotes
    , oContacts
    , oSiteId
    , oTermsAndConditions
    , oApproverUserProfileIds

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

    -- * ArtworkType
    , ArtworkType (..)

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
    , filURLs
    , filReportId
    , filDateRange
    , filFormat
    , filLastModifiedTime
    , filId
    , filFileName

    -- * ThirdPartyURLType
    , ThirdPartyURLType (..)

    -- * OrderContact
    , OrderContact
    , orderContact
    , ocSignatureUserProfileId
    , ocContactName
    , ocContactTitle
    , ocContactType
    , ocContactInfo

    -- * PlacementTagFormatsItem
    , PlacementTagFormatsItem (..)

    -- * DfareportingPlacementGroupsListSortOrder
    , DfareportingPlacementGroupsListSortOrder (..)

    -- * SitesListResponse
    , SitesListResponse
    , sitesListResponse
    , sitNextPageToken
    , sitKind
    , sitSites

    -- * ThirdPartyTrackingURL
    , ThirdPartyTrackingURL
    , thirdPartyTrackingURL
    , tptuURL
    , tptuThirdPartyURLType

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

    -- * EmailOwnerDeliveryType
    , EmailOwnerDeliveryType (..)

    -- * DirectorySiteContactAssignment
    , DirectorySiteContactAssignment
    , directorySiteContactAssignment
    , dscaVisibility
    , dscaContactId

    -- * CapCostType
    , CapCostType (..)

    -- * FloodlightActivitiesGenerateTagResponse
    , FloodlightActivitiesGenerateTagResponse
    , floodlightActivitiesGenerateTagResponse
    , fagtrFloodlightActivityTag
    , fagtrKind

    -- * DfareportingAdvertisersListSortField
    , DfareportingAdvertisersListSortField (..)

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
    , odSubAccountId
    , odType
    , odOrderId
    , odCancelled
    , odCreatedInfo

    -- * DfareportingAccountsListSortOrder
    , DfareportingAccountsListSortOrder (..)

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
    , cffSubAccountId

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
