{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.DFAReporting.Types
-- Copyright   : (c) 2015-2016 Brendan Hay
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

    -- * CreativeCustomEvent
    , CreativeCustomEvent
    , creativeCustomEvent
    , cceAdvertiserCustomEventId
    , cceAdvertiserCustomEventType
    , cceAdvertiserCustomEventName
    , cceExitURL
    , cceTargetType
    , ccePopupWindowProperties
    , cceVideoReportingId
    , cceId
    , cceArtworkLabel
    , cceArtworkType

    -- * ClickTag
    , ClickTag
    , clickTag
    , ctValue
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
    , dssDfpSettings
    , dssVerificationTagOptOut
    , dssActiveViewOptOut
    , dssVideoActiveViewOptOut
    , dssInstreamVideoPlacementAccepted
    , dssNielsenOCROptOut

    -- * TargetableRemarketingListsListSortOrder
    , TargetableRemarketingListsListSortOrder (..)

    -- * CreativeAssetPositionLeftUnit
    , CreativeAssetPositionLeftUnit (..)

    -- * PricingScheduleCapCostOption
    , PricingScheduleCapCostOption (..)

    -- * ListPopulationRule
    , ListPopulationRule
    , listPopulationRule
    , lprFloodlightActivityName
    , lprFloodlightActivityId
    , lprListPopulationClauses

    -- * UserRolePermissionAvailability
    , UserRolePermissionAvailability (..)

    -- * DirectorySiteContactAssignmentVisibility
    , DirectorySiteContactAssignmentVisibility (..)

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

    -- * AccountUserProFileTraffickerType
    , AccountUserProFileTraffickerType (..)

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

    -- * PlacementStrategiesListResponse
    , PlacementStrategiesListResponse
    , placementStrategiesListResponse
    , pslrPlacementStrategies
    , pslrNextPageToken
    , pslrKind

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

    -- * UserRolesListSortOrder
    , UserRolesListSortOrder (..)

    -- * PlacementsListCompatibilities
    , PlacementsListCompatibilities (..)

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
    , creRedirectURL
    , creAutoAdvanceImages
    , creCreativeFieldAssignments

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

    -- * FloodlightConfigurationStandardVariableTypesItem
    , FloodlightConfigurationStandardVariableTypesItem (..)

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

    -- * PlacementPaymentSource
    , PlacementPaymentSource (..)

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

    -- * InventoryItemsListSortField
    , InventoryItemsListSortField (..)

    -- * EventTagType
    , EventTagType (..)

    -- * CreativesListSortOrder
    , CreativesListSortOrder (..)

    -- * InventoryItemsListType
    , InventoryItemsListType (..)

    -- * ThirdPartyAuthenticationToken
    , ThirdPartyAuthenticationToken
    , thirdPartyAuthenticationToken
    , tpatValue
    , tpatName

    -- * PopupWindowPropertiesPositionType
    , PopupWindowPropertiesPositionType (..)

    -- * DirectorySiteContactRole
    , DirectorySiteContactRole (..)

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
    , ssDisableBrandSafeAds
    , ssLookbackConfiguration
    , ssTagSetting
    , ssActiveViewOptOut
    , ssVideoActiveViewOptOut
    , ssCreativeSettings

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
    , lpDefault
    , lpURL
    , lpName
    , lpId

    -- * ConnectionTypesListResponse
    , ConnectionTypesListResponse
    , connectionTypesListResponse
    , ctlrKind
    , ctlrConnectionTypes

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

    -- * CompatibleFields
    , CompatibleFields
    , compatibleFields
    , cfReachReportCompatibleFields
    , cfCrossDimensionReachReportCompatibleFields
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

    -- * DirectorySiteContactsListSortOrder
    , DirectorySiteContactsListSortOrder (..)

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

    -- * AdsListCreativeType
    , AdsListCreativeType (..)

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

    -- * DirectorySiteContactType
    , DirectorySiteContactType (..)

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

    -- * FloodlightActivityUserDefinedVariableTypesItem
    , FloodlightActivityUserDefinedVariableTypesItem (..)

    -- * EventTagSiteFilterType
    , EventTagSiteFilterType (..)

    -- * ReportFormat
    , ReportFormat (..)

    -- * PlacementGroupPlacementGroupType
    , PlacementGroupPlacementGroupType (..)

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

    -- * DirectorySiteContactsListResponse
    , DirectorySiteContactsListResponse
    , directorySiteContactsListResponse
    , dsclrNextPageToken
    , dsclrKind
    , dsclrDirectorySiteContacts

    -- * Region
    , Region
    , region
    , regRegionCode
    , regKind
    , regName
    , regCountryCode
    , regCountryDartId
    , regDartId

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
    , fcFirstDayOfWeek
    , fcOmnitureSettings
    , fcStandardVariableTypes

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
    , conoEncryptedUserIdCandidates
    , conoTimestampMicros
    , conoLimitAdTracking
    , conoEncryptedUserId
    , conoMobileDeviceId
    , conoFloodlightConfigurationId
    , conoKind
    , conoFloodlightActivityId
    , conoQuantity
    , conoValue
    , conoCustomVariables
    , conoChildDirectedTreatment
    , conoOrdinal

    -- * CreativeFieldValuesListResponse
    , CreativeFieldValuesListResponse
    , creativeFieldValuesListResponse
    , cfvlrNextPageToken
    , cfvlrKind
    , cfvlrCreativeFieldValues

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

    -- * DimensionValueMatchType
    , DimensionValueMatchType (..)

    -- * SortedDimension
    , SortedDimension
    , sortedDimension
    , sdKind
    , sdSortOrder
    , sdName

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
    , caaVideoDuration
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
    , caaZipFilename
    , caaActionScript3
    , caaDisplayType
    , caaChildAssetType
    , caaCollapsedSize
    , caaId
    , caaBitRate
    , caaCustomStartTimeValue
    , caaStartTimeType
    , caaDuration
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

    -- * DirectorySiteContactsListSortField
    , DirectorySiteContactsListSortField (..)

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

    -- * CreativeSettings
    , CreativeSettings
    , creativeSettings
    , csIFrameHeader
    , csIFrameFooter

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

    -- * LandingPagesListResponse
    , LandingPagesListResponse
    , landingPagesListResponse
    , lplrLandingPages
    , lplrKind

    -- * AccountPermissionAccountProFilesItem
    , AccountPermissionAccountProFilesItem (..)

    -- * CreativeAssetMetadata
    , CreativeAssetMetadata
    , creativeAssetMetadata
    , camaKind
    , camaAssetIdentifier
    , camaIdDimensionValue
    , camaClickTags
    , camaWarnedValidationRules
    , camaId
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

    -- * FloodlightActivitiesGenerateTagResponse
    , FloodlightActivitiesGenerateTagResponse
    , floodlightActivitiesGenerateTagResponse
    , fagtrFloodlightActivityTag
    , fagtrKind

    -- * DirectorySiteContactAssignment
    , DirectorySiteContactAssignment
    , directorySiteContactAssignment
    , dscaVisibility
    , dscaContactId

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

    -- * ThirdPartyTrackingURL
    , ThirdPartyTrackingURL
    , thirdPartyTrackingURL
    , tptuURL
    , tptuThirdPartyURLType

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

    -- * CreativeAssetDisplayType
    , CreativeAssetDisplayType (..)

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

import           Network.Google.DFAReporting.Types.Product
import           Network.Google.DFAReporting.Types.Sum
import           Network.Google.Prelude

-- | Default request referring to version 'v2.6' of the DCM/DFA Reporting And Trafficking API. This contains the host and root path used as a starting point for constructing service requests.
dFAReportingService :: ServiceConfig
dFAReportingService
  = defaultService (ServiceId "dfareporting:v2.6")
      "www.googleapis.com"

-- | View and manage DoubleClick for Advertisers reports
dFAReportingScope :: Proxy '["https://www.googleapis.com/auth/dfareporting"]
dFAReportingScope = Proxy;

-- | Manage DoubleClick Digital Marketing conversions
ddmconversionsScope :: Proxy '["https://www.googleapis.com/auth/ddmconversions"]
ddmconversionsScope = Proxy;

-- | View and manage your DoubleClick Campaign Manager\'s (DCM) display ad
-- campaigns
dfatraffickingScope :: Proxy '["https://www.googleapis.com/auth/dfatrafficking"]
dfatraffickingScope = Proxy;
