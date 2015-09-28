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

    -- * PricingGroupType
    , PricingGroupType (..)

    -- * PlacementGroupsListResponse
    , PlacementGroupsListResponse
    , placementGroupsListResponse
    , pglrNextPageToken
    , pglrKind
    , pglrPlacementGroups

    -- * PlacementsList'Compatibilities
    , PlacementsList'Compatibilities (..)

    -- * ListPopulationTermType
    , ListPopulationTermType (..)

    -- * OffsetPosition
    , OffsetPosition
    , offsetPosition
    , opLeft
    , opTop

    -- * OrdersListResponse
    , OrdersListResponse
    , ordersListResponse
    , olrNextPageToken
    , olrKind
    , olrOrders

    -- * CampaignCreativeAssociation
    , CampaignCreativeAssociation
    , campaignCreativeAssociation
    , ccaKind
    , ccaCreativeId

    -- * AdsList'SortOrder
    , AdsList'SortOrder (..)

    -- * ReportList
    , ReportList
    , reportList
    , rlEtag
    , rlNextPageToken
    , rlKind
    , rlItems

    -- * CreativeFieldsList'SortField
    , CreativeFieldsList'SortField (..)

    -- * CreativeAssetPositionTopUnit
    , CreativeAssetPositionTopUnit (..)

    -- * CreativeAssetRole
    , CreativeAssetRole (..)

    -- * MobileCarrier
    , MobileCarrier
    , mobileCarrier
    , mcKind
    , mcName
    , mcCountryCode
    , mcId
    , mcCountryDartId

    -- * EventTagsListResponse
    , EventTagsListResponse
    , eventTagsListResponse
    , etlrKind
    , etlrEventTags

    -- * LandingPage
    , LandingPage
    , landingPage
    , lpKind
    , lpDefault
    , lpUrl
    , lpName
    , lpId

    -- * AccountActiveAdSummary
    , AccountActiveAdSummary
    , accountActiveAdSummary
    , aaasAvailableAds
    , aaasKind
    , aaasAccountId
    , aaasActiveAds
    , aaasActiveAdsLimitTier

    -- * RecipientDeliveryType
    , RecipientDeliveryType (..)

    -- * UserRolePermissionsListResponse
    , UserRolePermissionsListResponse
    , userRolePermissionsListResponse
    , urplrKind
    , urplrUserRolePermissions

    -- * AdvertisersList'Status
    , AdvertisersList'Status (..)

    -- * SubaccountsList'SortOrder
    , SubaccountsList'SortOrder (..)

    -- * AdSlotCompatibility
    , AdSlotCompatibility (..)

    -- * FloodlightActivityPublisherDynamicTag
    , FloodlightActivityPublisherDynamicTag
    , floodlightActivityPublisherDynamicTag
    , fapdtClickThrough
    , fapdtSiteIdDimensionValue
    , fapdtDynamicTag
    , fapdtDirectorySiteId
    , fapdtSiteId
    , fapdtViewThrough

    -- * CreativeRotationType
    , CreativeRotationType (..)

    -- * TagSetting
    , TagSetting
    , tagSetting
    , tsKeywordOption
    , tsIncludeClickThroughUrls
    , tsIncludeClickTracking
    , tsAdditionalKeyValues

    -- * LookbackConfiguration
    , LookbackConfiguration
    , lookbackConfiguration
    , lcClickDuration
    , lcPostImpressionActivitiesDuration

    -- * OrderDocumentsList'SortField
    , OrderDocumentsList'SortField (..)

    -- * ConnectionTypesListResponse
    , ConnectionTypesListResponse
    , connectionTypesListResponse
    , ctlrKind
    , ctlrConnectionTypes

    -- * SortedDimensionSortOrder
    , SortedDimensionSortOrder (..)

    -- * PlacementsList'SortField
    , PlacementsList'SortField (..)

    -- * CreativeAssetPositionLeftUnit
    , CreativeAssetPositionLeftUnit (..)

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

    -- * AdvertiserGroupsList'SortField
    , AdvertiserGroupsList'SortField (..)

    -- * KeyValueTargetingExpression
    , KeyValueTargetingExpression
    , keyValueTargetingExpression
    , kvteExpression

    -- * CreativeAssetAlignment
    , CreativeAssetAlignment (..)

    -- * FloodlightActivityTagFormat
    , FloodlightActivityTagFormat (..)

    -- * DirectorySitesList'SortField
    , DirectorySitesList'SortField (..)

    -- * AdvertisersListResponse
    , AdvertisersListResponse
    , advertisersListResponse
    , alrNextPageToken
    , alrKind
    , alrAdvertisers

    -- * AudienceSegment
    , AudienceSegment
    , audienceSegment
    , asName
    , asId
    , asAllocation

    -- * CreativeOptimizationConfigurationOptimizationModel
    , CreativeOptimizationConfigurationOptimizationModel (..)

    -- * FloodlightActivityGroupsList'SortField
    , FloodlightActivityGroupsList'SortField (..)

    -- * CampaignsList'SortOrder
    , CampaignsList'SortOrder (..)

    -- * OrdersList'SortOrder
    , OrdersList'SortOrder (..)

    -- * CompanionClickThroughOverride
    , CompanionClickThroughOverride
    , companionClickThroughOverride
    , cctoCreativeId
    , cctoClickThroughUrl

    -- * AccountPermissionGroupsListResponse
    , AccountPermissionGroupsListResponse
    , accountPermissionGroupsListResponse
    , apglrKind
    , apglrAccountPermissionGroups

    -- * AccountPermissionLevel
    , AccountPermissionLevel (..)

    -- * PlatformType
    , PlatformType
    , platformType
    , ptKind
    , ptName
    , ptId

    -- * ReportReportPropertiesPathToConversionCriteria
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

    -- * CountriesListResponse
    , CountriesListResponse
    , countriesListResponse
    , clrKind
    , clrCountries

    -- * UserRolesListResponse
    , UserRolesListResponse
    , userRolesListResponse
    , urlrNextPageToken
    , urlrKind
    , urlrUserRoles

    -- * PathToConversionReportCompatibleFields
    , PathToConversionReportCompatibleFields
    , pathToConversionReportCompatibleFields
    , ptcrcfMetrics
    , ptcrcfKind
    , ptcrcfConversionDimensions
    , ptcrcfCustomFloodlightVariables
    , ptcrcfPerInteractionDimensions

    -- * CompatibleFields
    , CompatibleFields
    , compatibleFields
    , cfReachReportCompatibleFields
    , cfCrossDimensionReachReportCompatibleFields
    , cfKind
    , cfFloodlightReportCompatibleFields
    , cfReportCompatibleFields
    , cfPathToConversionReportCompatibleFields

    -- * City
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

    -- * DfpSettings
    , DfpSettings
    , dfpSettings
    , dsPubPaidPlacementAccepted
    , dsDfpNetworkName
    , dsPublisherPortalOnly
    , dsProgrammaticPlacementAccepted
    , dsDfpNetworkCode

    -- * DayPartTargeting
    , DayPartTargeting
    , dayPartTargeting
    , dptDaysOfWeek
    , dptHoursOfDay
    , dptUserLocalTime

    -- * SitesList'SortOrder
    , SitesList'SortOrder (..)

    -- * AccountActiveAdSummaryActiveAdsLimitTier
    , AccountActiveAdSummaryActiveAdsLimitTier (..)

    -- * InventoryItemsList'SortField
    , InventoryItemsList'SortField (..)

    -- * CrossDimensionReachReportCompatibleFields
    , CrossDimensionReachReportCompatibleFields
    , crossDimensionReachReportCompatibleFields
    , cdrrcfMetrics
    , cdrrcfBreakdown
    , cdrrcfKind
    , cdrrcfDimensionFilters
    , cdrrcfOverlapMetrics

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

    -- * ReportsFilesList'SortOrder
    , ReportsFilesList'SortOrder (..)

    -- * FloodlightConfigurationsListResponse
    , FloodlightConfigurationsListResponse
    , floodlightConfigurationsListResponse
    , fclrKind
    , fclrFloodlightConfigurations

    -- * AdvertiserGroup
    , AdvertiserGroup
    , advertiserGroup
    , aKind
    , aAccountId
    , aName
    , aId

    -- * RegionsListResponse
    , RegionsListResponse
    , regionsListResponse
    , rlrKind
    , rlrRegions

    -- * CreativeFieldAssignment
    , CreativeFieldAssignment
    , creativeFieldAssignment
    , cfaCreativeFieldId
    , cfaCreativeFieldValueId

    -- * TagData
    , TagData
    , tagData
    , tdClickTag
    , tdFormat
    , tdCreativeId
    , tdAdId
    , tdImpressionTag

    -- * FsCommand
    , FsCommand
    , fsCommand
    , fcPositionOption
    , fcLeft
    , fcWindowHeight
    , fcWindowWidth
    , fcTop

    -- * CreativeFieldValue
    , CreativeFieldValue
    , creativeFieldValue
    , cfvKind
    , cfvValue
    , cfvId

    -- * FloodlightActivityCacheBustingType
    , FloodlightActivityCacheBustingType (..)

    -- * DimensionValueRequest
    , DimensionValueRequest
    , dimensionValueRequest
    , dvrKind
    , dvrEndDate
    , dvrFilters
    , dvrStartDate
    , dvrDimensionName

    -- * FloodlightActivitiesListResponse
    , FloodlightActivitiesListResponse
    , floodlightActivitiesListResponse
    , falrNextPageToken
    , falrKind
    , falrFloodlightActivities

    -- * ObjectFilterStatus
    , ObjectFilterStatus (..)

    -- * FloodlightActivityDynamicTag
    , FloodlightActivityDynamicTag
    , floodlightActivityDynamicTag
    , fadtTag
    , fadtName
    , fadtId

    -- * CreativeOptimizationConfiguration
    , CreativeOptimizationConfiguration
    , creativeOptimizationConfiguration
    , cocOptimizationModel
    , cocName
    , cocOptimizationActivitys
    , cocId

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

    -- * Alt
    , Alt (..)

    -- * PlacementAssignment
    , PlacementAssignment
    , placementAssignment
    , paPlacementId
    , paPlacementIdDimensionValue
    , paActive
    , paSslRequired

    -- * ChangeLogsList'ObjectType
    , ChangeLogsList'ObjectType (..)

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

    -- * PlacementItemTagFormats
    , PlacementItemTagFormats (..)

    -- * PlatformTypesListResponse
    , PlatformTypesListResponse
    , platformTypesListResponse
    , ptlrKind
    , ptlrPlatformTypes

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

    -- * LastModifiedInfo
    , LastModifiedInfo
    , lastModifiedInfo
    , lmiTime

    -- * EventTagType
    , EventTagType (..)

    -- * TargetWindow
    , TargetWindow
    , targetWindow
    , twCustomHtml
    , twTargetWindowOption

    -- * Advertiser
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

    -- * AccountUserProfileUserAccessType
    , AccountUserProfileUserAccessType (..)

    -- * AccountPermissionItemAccountProfiles
    , AccountPermissionItemAccountProfiles (..)

    -- * CreativeAssetStartTimeType
    , CreativeAssetStartTimeType (..)

    -- * UserDefinedVariableConfigurationDataType
    , UserDefinedVariableConfigurationDataType (..)

    -- * AccountPermissionGroup
    , AccountPermissionGroup
    , accountPermissionGroup
    , apgKind
    , apgName
    , apgId

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

    -- * CreativeAssetMetadataItemWarnedValidationRules
    , CreativeAssetMetadataItemWarnedValidationRules (..)

    -- * AdSlotPaymentSourceType
    , AdSlotPaymentSourceType (..)

    -- * PlacementGroupsList'PlacementGroupType
    , PlacementGroupsList'PlacementGroupType (..)

    -- * DirectorySiteContactRole
    , DirectorySiteContactRole (..)

    -- * PlacementPaymentSource
    , PlacementPaymentSource (..)

    -- * TargetWindowTargetWindowOption
    , TargetWindowTargetWindowOption (..)

    -- * RichMediaExitOverride
    , RichMediaExitOverride
    , richMediaExitOverride
    , rmeoUseCustomExitUrl
    , rmeoExitId
    , rmeoCustomExitUrl

    -- * PricingSchedulePricingPeriod
    , PricingSchedulePricingPeriod
    , pricingSchedulePricingPeriod
    , psppEndDate
    , psppRateOrCostNanos
    , psppStartDate
    , psppUnits
    , psppPricingComment

    -- * FloodlightConfigurationItemStandardVariableTypes
    , FloodlightConfigurationItemStandardVariableTypes (..)

    -- * DirectorySitesListResponse
    , DirectorySitesListResponse
    , directorySitesListResponse
    , dslrNextPageToken
    , dslrKind
    , dslrDirectorySites

    -- * OrderDocumentsList'SortOrder
    , OrderDocumentsList'SortOrder (..)

    -- * DimensionFilter
    , DimensionFilter
    , dimensionFilter
    , dfKind
    , dfValue
    , dfDimensionName

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

    -- * UserProfileList
    , UserProfileList
    , userProfileList
    , uplEtag
    , uplKind
    , uplItems

    -- * PlacementsList'SortOrder
    , PlacementsList'SortOrder (..)

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

    -- * SubaccountsList'SortField
    , SubaccountsList'SortField (..)

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

    -- * Region
    , Region
    , region
    , rRegionCode
    , rKind
    , rName
    , rCountryCode
    , rCountryDartId
    , rDartId

    -- * AdsList'Type
    , AdsList'Type (..)

    -- * CreativeFieldValuesListResponse
    , CreativeFieldValuesListResponse
    , creativeFieldValuesListResponse
    , cfvlrNextPageToken
    , cfvlrKind
    , cfvlrCreativeFieldValues

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

    -- * AdvertiserGroupsListResponse
    , AdvertiserGroupsListResponse
    , advertiserGroupsListResponse
    , aglrNextPageToken
    , aglrKind
    , aglrAdvertiserGroups

    -- * DirectorySiteContactsListResponse
    , DirectorySiteContactsListResponse
    , directorySiteContactsListResponse
    , dsclrNextPageToken
    , dsclrKind
    , dsclrDirectorySiteContacts

    -- * FloodlightActivityGroupsListResponse
    , FloodlightActivityGroupsListResponse
    , floodlightActivityGroupsListResponse
    , faglrNextPageToken
    , faglrKind
    , faglrFloodlightActivityGroups

    -- * CreativeFieldsList'SortOrder
    , CreativeFieldsList'SortOrder (..)

    -- * FloodlightConfigurationFirstDayOfWeek
    , FloodlightConfigurationFirstDayOfWeek (..)

    -- * CreativeType
    , CreativeType (..)

    -- * AdsList'SortField
    , AdsList'SortField (..)

    -- * PlacementsListResponse
    , PlacementsListResponse
    , placementsListResponse
    , plrNextPageToken
    , plrKind
    , plrPlacements

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

    -- * Recipient
    , Recipient
    , recipient
    , recEmail
    , recKind
    , recDeliveryType

    -- * OrderDocumentsListResponse
    , OrderDocumentsListResponse
    , orderDocumentsListResponse
    , odlrNextPageToken
    , odlrKind
    , odlrOrderDocuments

    -- * PricingPricingType
    , PricingPricingType (..)

    -- * CreativeGroupAssignmentCreativeGroupNumber
    , CreativeGroupAssignmentCreativeGroupNumber (..)

    -- * PlacementsList'PaymentSource
    , PlacementsList'PaymentSource (..)

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

    -- * FloodlightActivityGroupsList'SortOrder
    , FloodlightActivityGroupsList'SortOrder (..)

    -- * MetrosListResponse
    , MetrosListResponse
    , metrosListResponse
    , mlrKind
    , mlrMetros

    -- * AdvertiserGroupsList'SortOrder
    , AdvertiserGroupsList'SortOrder (..)

    -- * CreativeAsset
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

    -- * PlacementGroupPlacementGroupType
    , PlacementGroupPlacementGroupType (..)

    -- * SortedDimension
    , SortedDimension
    , sortedDimension
    , sdKind
    , sdSortOrder
    , sdName

    -- * DirectorySitesList'SortOrder
    , DirectorySitesList'SortOrder (..)

    -- * CampaignsList'SortField
    , CampaignsList'SortField (..)

    -- * OrdersList'SortField
    , OrdersList'SortField (..)

    -- * FsCommandPositionOption
    , FsCommandPositionOption (..)

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

    -- * AdsList'CreativeType
    , AdsList'CreativeType (..)

    -- * Report
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

    -- * TargetableRemarketingListListSource
    , TargetableRemarketingListListSource (..)

    -- * CreativeCustomEventTargetType
    , CreativeCustomEventTargetType (..)

    -- * CreativeAssetDurationType
    , CreativeAssetDurationType (..)

    -- * ContentCategoriesListResponse
    , ContentCategoriesListResponse
    , contentCategoriesListResponse
    , cclrNextPageToken
    , cclrKind
    , cclrContentCategories

    -- * FloodlightActivityItemUserDefinedVariableTypes
    , FloodlightActivityItemUserDefinedVariableTypes (..)

    -- * ThirdPartyAuthenticationToken
    , ThirdPartyAuthenticationToken
    , thirdPartyAuthenticationToken
    , tpatValue
    , tpatName

    -- * Campaign
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

    -- * CreativesList'SortField
    , CreativesList'SortField (..)

    -- * ReportRunsOnDayOfMonthSchedule
    , ReportRunsOnDayOfMonthSchedule (..)

    -- * BrowsersListResponse
    , BrowsersListResponse
    , browsersListResponse
    , blrKind
    , blrBrowsers

    -- * DayPartTargetingItemDaysOfWeek
    , DayPartTargetingItemDaysOfWeek (..)

    -- * FloodlightConfigurationNaturalSearchConversionAttributionOption
    , FloodlightConfigurationNaturalSearchConversionAttributionOption (..)

    -- * PlacementStrategiesList'SortOrder
    , PlacementStrategiesList'SortOrder (..)

    -- * SiteSettings
    , SiteSettings
    , siteSettings
    , ssDisableNewCookie
    , ssDisableBrandSafeAds
    , ssLookbackConfiguration
    , ssTagSetting
    , ssActiveViewOptOut
    , ssCreativeSettings

    -- * AdType
    , AdType (..)

    -- * AccountUserProfilesList'SortField
    , AccountUserProfilesList'SortField (..)

    -- * EventTagSiteFilterType
    , EventTagSiteFilterType (..)

    -- * ClickThroughUrl
    , ClickThroughUrl
    , clickThroughUrl
    , ctuDefaultLandingPage
    , ctuComputedClickThroughUrl
    , ctuCustomClickThroughUrl
    , ctuLandingPageId

    -- * ReportFormat
    , ReportFormat (..)

    -- * EventTagsList'EventTagTypes
    , EventTagsList'EventTagTypes (..)

    -- * SitesListResponse
    , SitesListResponse
    , sitesListResponse
    , slrNextPageToken
    , slrKind
    , slrSites

    -- * DirectorySiteContactAssignment
    , DirectorySiteContactAssignment
    , directorySiteContactAssignment
    , dscaVisibility
    , dscaContactId

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

    -- * DirectorySiteContactType
    , DirectorySiteContactType (..)

    -- * CreativeAssetMetadataItemDetectedFeatures
    , CreativeAssetMetadataItemDetectedFeatures (..)

    -- * FloodlightActivitiesGenerateTagResponse
    , FloodlightActivitiesGenerateTagResponse
    , floodlightActivitiesGenerateTagResponse
    , fagtrFloodlightActivityTag
    , fagtrKind

    -- * AdSlot
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

    -- * DefaultClickThroughEventTagProperties
    , DefaultClickThroughEventTagProperties
    , defaultClickThroughEventTagProperties
    , dctetpOverrideInheritedEventTag
    , dctetpDefaultClickThroughEventTagId

    -- * Placement
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

    -- * ListTargetingExpression
    , ListTargetingExpression
    , listTargetingExpression
    , lteExpression

    -- * ReportDelivery
    , ReportDelivery
    , reportDelivery
    , rdEmailOwner
    , rdRecipients
    , rdMessage
    , rdEmailOwnerDeliveryType

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

    -- * ChangeLogsList'Action
    , ChangeLogsList'Action (..)

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

    -- * ThirdPartyTrackingUrl
    , ThirdPartyTrackingUrl
    , thirdPartyTrackingUrl
    , tptuUrl
    , tptuThirdPartyUrlType

    -- * ProjectsList'SortOrder
    , ProjectsList'SortOrder (..)

    -- * AdvertisersList'SortOrder
    , AdvertisersList'SortOrder (..)

    -- * DirectorySiteContactAssignmentVisibility
    , DirectorySiteContactAssignmentVisibility (..)

    -- * GeoTargeting
    , GeoTargeting
    , geoTargeting
    , gtRegions
    , gtCountries
    , gtCities
    , gtMetros
    , gtExcludeCountries
    , gtPostalCodes

    -- * OptimizationActivity
    , OptimizationActivity
    , optimizationActivity
    , oaWeight
    , oaFloodlightActivityId
    , oaFloodlightActivityIdDimensionValue

    -- * DirectorySiteItemInterstitialTagFormats
    , DirectorySiteItemInterstitialTagFormats (..)

    -- * AccountsList'SortField
    , AccountsList'SortField (..)

    -- * ReachReportCompatibleFields
    , ReachReportCompatibleFields
    , reachReportCompatibleFields
    , rrcfMetrics
    , rrcfReachByFrequencyMetrics
    , rrcfKind
    , rrcfDimensionFilters
    , rrcfPivotedActivityMetrics
    , rrcfDimensions

    -- * CampaignsListResponse
    , CampaignsListResponse
    , campaignsListResponse
    , camNextPageToken
    , camCampaigns
    , camKind

    -- * ListPopulationTermOperator
    , ListPopulationTermOperator (..)

    -- * RemarketingListsList'SortField
    , RemarketingListsList'SortField (..)

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

    -- * PricingScheduleCapCostOption
    , PricingScheduleCapCostOption (..)

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

    -- * Browser
    , Browser
    , browser
    , bMinorVersion
    , bKind
    , bBrowserVersionId
    , bMajorVersion
    , bName
    , bDartId

    -- * UserRolesList'SortOrder
    , UserRolesList'SortOrder (..)

    -- * FloodlightActivityFloodlightActivityGroupType
    , FloodlightActivityFloodlightActivityGroupType (..)

    -- * UserRolePermissionAvailability
    , UserRolePermissionAvailability (..)

    -- * PlacementCompatibility
    , PlacementCompatibility (..)

    -- * ThirdPartyTrackingUrlThirdPartyUrlType
    , ThirdPartyTrackingUrlThirdPartyUrlType (..)

    -- * CreativeAssetItemDetectedFeatures
    , CreativeAssetItemDetectedFeatures (..)

    -- * ListPopulationClause
    , ListPopulationClause
    , listPopulationClause
    , lpcTerms

    -- * ProjectsListResponse
    , ProjectsListResponse
    , projectsListResponse
    , pNextPageToken
    , pKind
    , pProjects

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

    -- * CreativeGroupAssignment
    , CreativeGroupAssignment
    , creativeGroupAssignment
    , cgaCreativeGroupNumber
    , cgaCreativeGroupId

    -- * FilesList'SortOrder
    , FilesList'SortOrder (..)

    -- * FloodlightActivityGroupsList'Type
    , FloodlightActivityGroupsList'Type (..)

    -- * DirectorySiteContactsList'SortField
    , DirectorySiteContactsList'SortField (..)

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

    -- * SizesListResponse
    , SizesListResponse
    , sizesListResponse
    , sKind
    , sSizes

    -- * CreativeFieldValuesList'SortField
    , CreativeFieldValuesList'SortField (..)

    -- * FloodlightActivitiesList'FloodlightActivityGroupType
    , FloodlightActivitiesList'FloodlightActivityGroupType (..)

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

    -- * AdsListResponse
    , AdsListResponse
    , adsListResponse
    , adsNextPageToken
    , adsKind
    , adsAds

    -- * TargetableRemarketingListsList'SortField
    , TargetableRemarketingListsList'SortField (..)

    -- * PlacementGroupsList'SortOrder
    , PlacementGroupsList'SortOrder (..)

    -- * CreativeRotation
    , CreativeRotation
    , creativeRotation
    , crWeightCalculationStrategy
    , crCreativeAssignments
    , crCreativeOptimizationConfigurationId
    , crType

    -- * SubaccountsListResponse
    , SubaccountsListResponse
    , subaccountsListResponse
    , subNextPageToken
    , subKind
    , subSubaccounts

    -- * AccountActiveAdsLimitTier
    , AccountActiveAdsLimitTier (..)

    -- * TechnologyTargeting
    , TechnologyTargeting
    , technologyTargeting
    , ttMobileCarriers
    , ttOperatingSystemVersions
    , ttPlatformTypes
    , ttBrowsers
    , ttConnectionTypes
    , ttOperatingSystems

    -- * CreativeAssetWindowMode
    , CreativeAssetWindowMode (..)

    -- * ListPopulationRule
    , ListPopulationRule
    , listPopulationRule
    , lprFloodlightActivityName
    , lprFloodlightActivityId
    , lprListPopulationClauses

    -- * PlacementsList'PricingTypes
    , PlacementsList'PricingTypes (..)

    -- * DateRangeRelativeDateRange
    , DateRangeRelativeDateRange (..)

    -- * EventTagsList'SortOrder
    , EventTagsList'SortOrder (..)

    -- * TagDataFormat
    , TagDataFormat (..)

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

    -- * OperatingSystemsListResponse
    , OperatingSystemsListResponse
    , operatingSystemsListResponse
    , oslrKind
    , oslrOperatingSystems

    -- * PostalCodesListResponse
    , PostalCodesListResponse
    , postalCodesListResponse
    , pclrKind
    , pclrPostalCodes

    -- * CreativeAssetDisplayType
    , CreativeAssetDisplayType (..)

    -- * PlacementStrategiesList'SortField
    , PlacementStrategiesList'SortField (..)

    -- * EventTagOverride
    , EventTagOverride
    , eventTagOverride
    , etoEnabled
    , etoId

    -- * AccountUserProfilesList'SortOrder
    , AccountUserProfilesList'SortOrder (..)

    -- * AdvertiserStatus
    , AdvertiserStatus (..)

    -- * CreativeAssetChildAssetType
    , CreativeAssetChildAssetType (..)

    -- * PlacementStrategy
    , PlacementStrategy
    , placementStrategy
    , psKind
    , psAccountId
    , psName
    , psId

    -- * FloodlightActivityCountingMethod
    , FloodlightActivityCountingMethod (..)

    -- * AccountPermission
    , AccountPermission
    , accountPermission
    , acccKind
    , acccAccountProfiles
    , acccName
    , acccId
    , acccLevel
    , acccPermissionGroupId

    -- * OrderDocumentType
    , OrderDocumentType (..)

    -- * OperatingSystemVersion
    , OperatingSystemVersion
    , operatingSystemVersion
    , osvMinorVersion
    , osvKind
    , osvOperatingSystem
    , osvMajorVersion
    , osvName
    , osvId

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

    -- * DirectorySiteItemInpageTagFormats
    , DirectorySiteItemInpageTagFormats (..)

    -- * PricingCapCostType
    , PricingCapCostType (..)

    -- * CreativesList'SortOrder
    , CreativesList'SortOrder (..)

    -- * TagSettingKeywordOption
    , TagSettingKeywordOption (..)

    -- * ReportDimensionCrossDimensionReachCriteria
    , ReportDimensionCrossDimensionReachCriteria (..)

    -- * Size
    , Size
    , size
    , sizHeight
    , sizKind
    , sizWidth
    , sizIab
    , sizId

    -- * CreativeAuthoringTool
    , CreativeAuthoringTool (..)

    -- * ReportsConfiguration
    , ReportsConfiguration
    , reportsConfiguration
    , rcExposureToConversionEnabled
    , rcReportGenerationTimeZoneId
    , rcLookbackConfiguration

    -- * PlacementStrategiesListResponse
    , PlacementStrategiesListResponse
    , placementStrategiesListResponse
    , pslrPlacementStrategies
    , pslrNextPageToken
    , pslrKind

    -- * CreativeGroupsList'SortOrder
    , CreativeGroupsList'SortOrder (..)

    -- * CreativeAssetIdType
    , CreativeAssetIdType (..)

    -- * Project
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

    -- * OrderContactContactType
    , OrderContactContactType (..)

    -- * RemarketingListListSource
    , RemarketingListListSource (..)

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

    -- * ContentCategoriesList'SortOrder
    , ContentCategoriesList'SortOrder (..)

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

    -- * ReportType
    , ReportType (..)

    -- * FloodlightActivitiesList'SortField
    , FloodlightActivitiesList'SortField (..)

    -- * PopupWindowPropertiesPositionType
    , PopupWindowPropertiesPositionType (..)

    -- * InventoryItemsListResponse
    , InventoryItemsListResponse
    , inventoryItemsListResponse
    , iilrInventoryItems
    , iilrNextPageToken
    , iilrKind

    -- * ObjectFilter
    , ObjectFilter
    , objectFilter
    , ofStatus
    , ofKind
    , ofObjectIds

    -- * CreativesList'Types
    , CreativesList'Types (..)

    -- * FileUrls
    , FileUrls
    , fileUrls
    , fuBrowserUrl
    , fuApiUrl

    -- * ProjectAudienceGender
    , ProjectAudienceGender (..)

    -- * CreativeCustomEventAdvertiserCustomEventType
    , CreativeCustomEventAdvertiserCustomEventType (..)

    -- * Subaccount
    , Subaccount
    , subaccount
    , ssKind
    , ssAvailablePermissionIds
    , ssAccountId
    , ssName
    , ssId

    -- * CampaignCreativeAssociationsList'SortOrder
    , CampaignCreativeAssociationsList'SortOrder (..)

    -- * ChangeLogsListResponse
    , ChangeLogsListResponse
    , changeLogsListResponse
    , cllrNextPageToken
    , cllrKind
    , cllrChangeLogs

    -- * AdCompatibility
    , AdCompatibility (..)

    -- * OperatingSystem
    , OperatingSystem
    , operatingSystem
    , osDesktop
    , osKind
    , osName
    , osMobile
    , osDartId

    -- * UserRolesList'SortField
    , UserRolesList'SortField (..)

    -- * PostalCode
    , PostalCode
    , postalCode
    , pcKind
    , pcCode
    , pcCountryCode
    , pcId
    , pcCountryDartId

    -- * DeliverySchedulePriority
    , DeliverySchedulePriority (..)

    -- * AdvertisersList'SortField
    , AdvertisersList'SortField (..)

    -- * ReportEmailOwnerDeliveryTypeDelivery
    , ReportEmailOwnerDeliveryTypeDelivery (..)

    -- * ProjectsList'SortField
    , ProjectsList'SortField (..)

    -- * AccountsList'SortOrder
    , AccountsList'SortOrder (..)

    -- * TargetableRemarketingListsListResponse
    , TargetableRemarketingListsListResponse
    , targetableRemarketingListsListResponse
    , trllrNextPageToken
    , trllrKind
    , trllrTargetableRemarketingLists

    -- * AudienceSegmentGroup
    , AudienceSegmentGroup
    , audienceSegmentGroup
    , asgAudienceSegments
    , asgName
    , asgId

    -- * CitiesListResponse
    , CitiesListResponse
    , citiesListResponse
    , citKind
    , citCities

    -- * SiteContactContactType
    , SiteContactContactType (..)

    -- * CustomRichMediaEvents
    , CustomRichMediaEvents
    , customRichMediaEvents
    , crmeKind
    , crmeFilteredEventIds

    -- * AccountPermissionsListResponse
    , AccountPermissionsListResponse
    , accountPermissionsListResponse
    , aplrKind
    , aplrAccountPermissions

    -- * Flight
    , Flight
    , flight
    , fRateOrCost
    , fEndDate
    , fStartDate
    , fUnits

    -- * Country
    , Country
    , country
    , couKind
    , couName
    , couCountryCode
    , couDartId
    , couSslEnabled

    -- * RemarketingListsList'SortOrder
    , RemarketingListsList'SortOrder (..)

    -- * Dimension
    , Dimension
    , dimension
    , dKind
    , dName

    -- * PlacementGroupsList'PricingTypes
    , PlacementGroupsList'PricingTypes (..)

    -- * Pricing
    , Pricing
    , pricing
    , pEndDate
    , pStartDate
    , pGroupType
    , pPricingType
    , pFlights
    , pCapCostType

    -- * OperatingSystemVersionsListResponse
    , OperatingSystemVersionsListResponse
    , operatingSystemVersionsListResponse
    , osvlrKind
    , osvlrOperatingSystemVersions

    -- * AccountAccountProfile
    , AccountAccountProfile (..)

    -- * ClickThroughUrlSuffixProperties
    , ClickThroughUrlSuffixProperties
    , clickThroughUrlSuffixProperties
    , ctuspOverrideInheritedSuffix
    , ctuspClickThroughUrlSuffix

    -- * AccountsListResponse
    , AccountsListResponse
    , accountsListResponse
    , accNextPageToken
    , accAccounts
    , accKind

    -- * PlacementGroupsList'SortField
    , PlacementGroupsList'SortField (..)

    -- * DimensionValueMatchType
    , DimensionValueMatchType (..)

    -- * EventTagsList'SortField
    , EventTagsList'SortField (..)

    -- * ReportItemRepeatsOnWeekDaysSchedule
    , ReportItemRepeatsOnWeekDaysSchedule (..)

    -- * Creative
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

    -- * DirectorySiteContactsList'SortOrder
    , DirectorySiteContactsList'SortOrder (..)

    -- * CreativeFieldValuesList'SortOrder
    , CreativeFieldValuesList'SortOrder (..)

    -- * UserDefinedVariableConfigurationVariableType
    , UserDefinedVariableConfigurationVariableType (..)

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

    -- * DimensionValue
    , DimensionValue
    , dimensionValue
    , dvEtag
    , dvKind
    , dvValue
    , dvMatchType
    , dvDimensionName
    , dvId

    -- * CreativeItemBackupImageFeatures
    , CreativeItemBackupImageFeatures (..)

    -- * FilesList'SortField
    , FilesList'SortField (..)

    -- * CreativeItemCompatibility
    , CreativeItemCompatibility (..)

    -- * PlacementTag
    , PlacementTag
    , placementTag
    , ptPlacementId
    , ptTagDatas

    -- * RemarketingListsListResponse
    , RemarketingListsListResponse
    , remarketingListsListResponse
    , rllrNextPageToken
    , rllrRemarketingLists
    , rllrKind

    -- * UserRolePermissionGroupsListResponse
    , UserRolePermissionGroupsListResponse
    , userRolePermissionGroupsListResponse
    , urpglrUserRolePermissionGroups
    , urpglrKind

    -- * TargetableRemarketingListsList'SortOrder
    , TargetableRemarketingListsList'SortOrder (..)

    -- * Activities
    , Activities
    , activities
    , actKind
    , actMetricNames
    , actFilters

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

    -- * DateRange
    , DateRange
    , dateRange
    , drKind
    , drEndDate
    , drStartDate
    , drRelativeDateRange

    -- * SitesList'SortField
    , SitesList'SortField (..)

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

    -- * PlacementStatus
    , PlacementStatus (..)

    -- * CreativeGroupsListResponse
    , CreativeGroupsListResponse
    , creativeGroupsListResponse
    , cglrCreativeGroups
    , cglrNextPageToken
    , cglrKind

    -- * CreativeAssetArtworkType
    , CreativeAssetArtworkType (..)

    -- * PlacementsGeneratetags'TagFormats
    , PlacementsGeneratetags'TagFormats (..)

    -- * InventoryItemsList'SortOrder
    , InventoryItemsList'SortOrder (..)

    -- * CreativeAssetMetadata
    , CreativeAssetMetadata
    , creativeAssetMetadata
    , camaKind
    , camaAssetIdentifier
    , camaClickTags
    , camaWarnedValidationRules
    , camaDetectedFeatures

    -- * PlacementGroup
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

    -- * CampaignCreativeAssociationsListResponse
    , CampaignCreativeAssociationsListResponse
    , campaignCreativeAssociationsListResponse
    , ccalrCampaignCreativeAssociations
    , ccalrNextPageToken
    , ccalrKind

    -- * CreativeArtworkType
    , CreativeArtworkType (..)

    -- * LandingPagesListResponse
    , LandingPagesListResponse
    , landingPagesListResponse
    , lplrLandingPages
    , lplrKind

    -- * ConnectionType
    , ConnectionType
    , connectionType
    , conKind
    , conName
    , conId

    -- * UserDefinedVariableConfiguration
    , UserDefinedVariableConfiguration
    , userDefinedVariableConfiguration
    , udvcReportName
    , udvcDataType
    , udvcVariableType

    -- * OmnitureSettings
    , OmnitureSettings
    , omnitureSettings
    , osOmnitureCostDataEnabled
    , osOmnitureIntegrationEnabled

    -- * CreativeRotationWeightCalculationStrategy
    , CreativeRotationWeightCalculationStrategy (..)

    -- * FrequencyCap
    , FrequencyCap
    , frequencyCap
    , fcImpressions
    , fcDuration

    -- * FileFormat
    , FileFormat (..)

    -- * MobileCarriersListResponse
    , MobileCarriersListResponse
    , mobileCarriersListResponse
    , mclrMobileCarriers
    , mclrKind

    -- * ReportCriteria
    , ReportCriteria
    , reportCriteria
    , rcMetricNames
    , rcCustomRichMediaEvents
    , rcDimensionFilters
    , rcActivities
    , rcDateRange
    , rcDimensions

    -- * UserRolePermission
    , UserRolePermission
    , userRolePermission
    , uKind
    , uAvailability
    , uName
    , uId
    , uPermissionGroupId

    -- * ReportsFilesList'SortField
    , ReportsFilesList'SortField (..)

    -- * ProjectAudienceAgeGroup
    , ProjectAudienceAgeGroup (..)

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

    -- * AdsList'Compatibility
    , AdsList'Compatibility (..)

    -- * CreativeAssetId
    , CreativeAssetId
    , creativeAssetId
    , caiName
    , caiType

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

    -- * PricingSchedulePricingType
    , PricingSchedulePricingType (..)

    -- * OrderContact
    , OrderContact
    , orderContact
    , ocSignatureUserProfileId
    , ocContactName
    , ocContactTitle
    , ocContactType
    , ocContactInfo

    -- * CreativeSettings
    , CreativeSettings
    , creativeSettings
    , csIFrameHeader
    , csIFrameFooter

    -- * CreativeGroupsList'SortField
    , CreativeGroupsList'SortField (..)

    -- * ContentCategory
    , ContentCategory
    , contentCategory
    , cccKind
    , cccAccountId
    , cccName
    , cccId

    -- * CreativesListResponse
    , CreativesListResponse
    , creativesListResponse
    , creNextPageToken
    , creKind
    , creCreatives

    -- * CreativeCustomEventArtworkType
    , CreativeCustomEventArtworkType (..)

    -- * Account
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

    -- * AccountUserProfilesListResponse
    , AccountUserProfilesListResponse
    , accountUserProfilesListResponse
    , auplrNextPageToken
    , auplrAccountUserProfiles
    , auplrKind

    -- * AccountUserProfileTraffickerType
    , AccountUserProfileTraffickerType (..)

    -- * FloodlightActivitiesList'SortOrder
    , FloodlightActivitiesList'SortOrder (..)

    -- * RemarketingList
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

    -- * UserRolePermissionGroup
    , UserRolePermissionGroup
    , userRolePermissionGroup
    , useKind
    , useName
    , useId

    -- * DeliverySchedule
    , DeliverySchedule
    , deliverySchedule
    , dsHardCutoff
    , dsPriority
    , dsImpressionRatio
    , dsFrequencyCap

    -- * ReportReportPropertiesFloodlightCriteria
    , ReportReportPropertiesFloodlightCriteria
    , reportReportPropertiesFloodlightCriteria
    , rrpfcIncludeUnattributedIPConversions
    , rrpfcIncludeUnattributedCookieConversions
    , rrpfcIncludeAttributedIPConversions

    -- * FloodlightReportCompatibleFields
    , FloodlightReportCompatibleFields
    , floodlightReportCompatibleFields
    , frcfMetrics
    , frcfKind
    , frcfDimensionFilters
    , frcfDimensions

    -- * ReportCompatibleFields
    , ReportCompatibleFields
    , reportCompatibleFields
    , rcfMetrics
    , rcfKind
    , rcfDimensionFilters
    , rcfPivotedActivityMetrics
    , rcfDimensions

    -- * FileStatus
    , FileStatus (..)

    -- * ContentCategoriesList'SortField
    , ContentCategoriesList'SortField (..)

    -- * FloodlightActivityGroupType
    , FloodlightActivityGroupType (..)

    -- * EventTagStatus
    , EventTagStatus (..)

    -- * DimensionValueList
    , DimensionValueList
    , dimensionValueList
    , dvlEtag
    , dvlNextPageToken
    , dvlKind
    , dvlItems

    -- * FilesList'Scope
    , FilesList'Scope (..)
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
