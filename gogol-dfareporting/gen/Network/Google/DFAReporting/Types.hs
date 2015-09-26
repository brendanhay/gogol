{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}

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
    -- * API Definition
      dfareporting


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

    -- * AccountAccountProfile
    , AccountAccountProfile (..)

    -- * AccountActiveAdSummary
    , AccountActiveAdSummary
    , accountActiveAdSummary
    , aaasAvailableAds
    , aaasKind
    , aaasAccountId
    , aaasActiveAds
    , aaasActiveAdsLimitTier

    -- * AccountActiveAdSummaryActiveAdsLimitTier
    , AccountActiveAdSummaryActiveAdsLimitTier (..)

    -- * AccountActiveAdsLimitTier
    , AccountActiveAdsLimitTier (..)

    -- * AccountPermission
    , AccountPermission
    , accountPermission
    , apKind
    , apAccountProfiles
    , apName
    , apId
    , apLevel
    , apPermissionGroupId

    -- * AccountPermissionGroup
    , AccountPermissionGroup
    , accountPermissionGroup
    , apgKind
    , apgName
    , apgId

    -- * AccountPermissionGroupsListResponse
    , AccountPermissionGroupsListResponse
    , accountPermissionGroupsListResponse
    , apglrKind
    , apglrAccountPermissionGroups

    -- * AccountPermissionItemAccountProfiles
    , AccountPermissionItemAccountProfiles (..)

    -- * AccountPermissionLevel
    , AccountPermissionLevel (..)

    -- * AccountPermissionsListResponse
    , AccountPermissionsListResponse
    , accountPermissionsListResponse
    , aplrKind
    , aplrAccountPermissions

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

    -- * AccountUserProfileTraffickerType
    , AccountUserProfileTraffickerType (..)

    -- * AccountUserProfileUserAccessType
    , AccountUserProfileUserAccessType (..)

    -- * AccountUserProfilesListResponse
    , AccountUserProfilesListResponse
    , accountUserProfilesListResponse
    , auplrNextPageToken
    , auplrAccountUserProfiles
    , auplrKind

    -- * AccountsListResponse
    , AccountsListResponse
    , accountsListResponse
    , accNextPageToken
    , accAccounts
    , accKind

    -- * Activities
    , Activities
    , activities
    , actKind
    , actMetricNames
    , actFilters

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

    -- * AdCompatibility
    , AdCompatibility (..)

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

    -- * AdSlotCompatibility
    , AdSlotCompatibility (..)

    -- * AdSlotPaymentSourceType
    , AdSlotPaymentSourceType (..)

    -- * AdType
    , AdType (..)

    -- * AdsListResponse
    , AdsListResponse
    , adsListResponse
    , adsNextPageToken
    , adsKind
    , adsAds

    -- * Advertiser
    , Advertiser
    , advertiser
    , aOriginalFloodlightConfigurationId
    , aStatus
    , aFloodlightConfigurationId
    , aKind
    , aSuspended
    , aIdDimensionValue
    , aAccountId
    , aDefaultEmail
    , aName
    , aAdvertiserGroupId
    , aDefaultClickThroughEventTagId
    , aId
    , aSubaccountId
    , aFloodlightConfigurationIdDimensionValue
    , aClickThroughUrlSuffix

    -- * AdvertiserGroup
    , AdvertiserGroup
    , advertiserGroup
    , agKind
    , agAccountId
    , agName
    , agId

    -- * AdvertiserGroupsListResponse
    , AdvertiserGroupsListResponse
    , advertiserGroupsListResponse
    , aglrNextPageToken
    , aglrKind
    , aglrAdvertiserGroups

    -- * AdvertiserStatus
    , AdvertiserStatus (..)

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

    -- * AudienceSegmentGroup
    , AudienceSegmentGroup
    , audienceSegmentGroup
    , asgAudienceSegments
    , asgName
    , asgId

    -- * Browser
    , Browser
    , browser
    , bMinorVersion
    , bKind
    , bBrowserVersionId
    , bMajorVersion
    , bName
    , bDartId

    -- * BrowsersListResponse
    , BrowsersListResponse
    , browsersListResponse
    , blrKind
    , blrBrowsers

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

    -- * CampaignCreativeAssociation
    , CampaignCreativeAssociation
    , campaignCreativeAssociation
    , ccaKind
    , ccaCreativeId

    -- * CampaignCreativeAssociationsListResponse
    , CampaignCreativeAssociationsListResponse
    , campaignCreativeAssociationsListResponse
    , ccalrCampaignCreativeAssociations
    , ccalrNextPageToken
    , ccalrKind

    -- * CampaignsListResponse
    , CampaignsListResponse
    , campaignsListResponse
    , clrlNextPageToken
    , clrlCampaigns
    , clrlKind

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

    -- * ChangeLogsListResponse
    , ChangeLogsListResponse
    , changeLogsListResponse
    , cllrNextPageToken
    , cllrKind
    , cllrChangeLogs

    -- * CitiesListResponse
    , CitiesListResponse
    , citiesListResponse
    , citKind
    , citCities

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

    -- * ClickTag
    , ClickTag
    , clickTag
    , ctValue
    , ctName
    , ctEventName

    -- * ClickThroughUrl
    , ClickThroughUrl
    , clickThroughUrl
    , ctuDefaultLandingPage
    , ctuComputedClickThroughUrl
    , ctuCustomClickThroughUrl
    , ctuLandingPageId

    -- * ClickThroughUrlSuffixProperties
    , ClickThroughUrlSuffixProperties
    , clickThroughUrlSuffixProperties
    , ctuspOverrideInheritedSuffix
    , ctuspClickThroughUrlSuffix

    -- * CompanionClickThroughOverride
    , CompanionClickThroughOverride
    , companionClickThroughOverride
    , cctoCreativeId
    , cctoClickThroughUrl

    -- * CompatibleFields
    , CompatibleFields
    , compatibleFields
    , cfReachReportCompatibleFields
    , cfCrossDimensionReachReportCompatibleFields
    , cfKind
    , cfFloodlightReportCompatibleFields
    , cfReportCompatibleFields
    , cfPathToConversionReportCompatibleFields

    -- * ConnectionType
    , ConnectionType
    , connectionType
    , conKind
    , conName
    , conId

    -- * ConnectionTypesListResponse
    , ConnectionTypesListResponse
    , connectionTypesListResponse
    , ctlrKind
    , ctlrConnectionTypes

    -- * ContentCategoriesListResponse
    , ContentCategoriesListResponse
    , contentCategoriesListResponse
    , cclrNextPageToken
    , cclrKind
    , cclrContentCategories

    -- * ContentCategory
    , ContentCategory
    , contentCategory
    , cccKind
    , cccAccountId
    , cccName
    , cccId

    -- * CountriesListResponse
    , CountriesListResponse
    , countriesListResponse
    , clrKind
    , clrCountries

    -- * Country
    , Country
    , country
    , couKind
    , couName
    , couCountryCode
    , couDartId
    , couSslEnabled

    -- * Creative
    , Creative
    , creative
    , ccConvertFlashToHtml5
    , ccBackupImageTargetWindow
    , ccRenderingIdDimensionValue
    , ccCustomKeyValues
    , ccVideoDuration
    , ccRenderingId
    , ccThirdPartyBackupImageImpressionsUrl
    , ccFsCommand
    , ccAllowScriptAccess
    , ccHtmlCodeLocked
    , ccRequiredFlashPluginVersion
    , ccAuthoringTool
    , ccSize
    , ccThirdPartyUrls
    , ccCounterCustomEvents
    , ccKind
    , ccSslOverride
    , ccHtmlCode
    , ccAdvertiserId
    , ccRequiredFlashVersion
    , ccBackgroundColor
    , ccAdTagKeys
    , ccSkippable
    , ccSslCompliant
    , ccIdDimensionValue
    , ccBackupImageReportingLabel
    , ccCommercialId
    , ccActive
    , ccExitCustomEvents
    , ccAccountId
    , ccBackupImageClickThroughUrl
    , ccName
    , ccOverrideCss
    , ccVideoDescription
    , ccClickTags
    , ccAdParameters
    , ccVersion
    , ccLatestTraffickedCreativeId
    , ccThirdPartyRichMediaImpressionsUrl
    , ccLastModifiedInfo
    , ccId
    , ccStudioAdvertiserId
    , ccCreativeAssets
    , ccSubaccountId
    , ccType
    , ccTimerCustomEvents
    , ccStudioCreativeId
    , ccCompatibility
    , ccBackupImageFeatures
    , ccArtworkType
    , ccArchived
    , ccCompanionCreatives
    , ccTotalFileSize
    , ccStudioTraffickedCreativeId
    , ccRedirectUrl
    , ccAutoAdvanceImages
    , ccCreativeFieldAssignments

    -- * CreativeArtworkType
    , CreativeArtworkType (..)

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

    -- * CreativeAssetAlignment
    , CreativeAssetAlignment (..)

    -- * CreativeAssetArtworkType
    , CreativeAssetArtworkType (..)

    -- * CreativeAssetChildAssetType
    , CreativeAssetChildAssetType (..)

    -- * CreativeAssetDisplayType
    , CreativeAssetDisplayType (..)

    -- * CreativeAssetDurationType
    , CreativeAssetDurationType (..)

    -- * CreativeAssetId
    , CreativeAssetId
    , creativeAssetId
    , caiName
    , caiType

    -- * CreativeAssetIdType
    , CreativeAssetIdType (..)

    -- * CreativeAssetItemDetectedFeatures
    , CreativeAssetItemDetectedFeatures (..)

    -- * CreativeAssetMetadata
    , CreativeAssetMetadata
    , creativeAssetMetadata
    , camaKind
    , camaAssetIdentifier
    , camaClickTags
    , camaWarnedValidationRules
    , camaDetectedFeatures

    -- * CreativeAssetMetadataItemDetectedFeatures
    , CreativeAssetMetadataItemDetectedFeatures (..)

    -- * CreativeAssetMetadataItemWarnedValidationRules
    , CreativeAssetMetadataItemWarnedValidationRules (..)

    -- * CreativeAssetPositionLeftUnit
    , CreativeAssetPositionLeftUnit (..)

    -- * CreativeAssetPositionTopUnit
    , CreativeAssetPositionTopUnit (..)

    -- * CreativeAssetRole
    , CreativeAssetRole (..)

    -- * CreativeAssetStartTimeType
    , CreativeAssetStartTimeType (..)

    -- * CreativeAssetWindowMode
    , CreativeAssetWindowMode (..)

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

    -- * CreativeAuthoringTool
    , CreativeAuthoringTool (..)

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

    -- * CreativeCustomEventAdvertiserCustomEventType
    , CreativeCustomEventAdvertiserCustomEventType (..)

    -- * CreativeCustomEventArtworkType
    , CreativeCustomEventArtworkType (..)

    -- * CreativeCustomEventTargetType
    , CreativeCustomEventTargetType (..)

    -- * CreativeField
    , CreativeField
    , creativeField
    , creKind
    , creAdvertiserId
    , creAdvertiserIdDimensionValue
    , creAccountId
    , creName
    , creId
    , creSubaccountId

    -- * CreativeFieldAssignment
    , CreativeFieldAssignment
    , creativeFieldAssignment
    , cfaCreativeFieldId
    , cfaCreativeFieldValueId

    -- * CreativeFieldValue
    , CreativeFieldValue
    , creativeFieldValue
    , cfvKind
    , cfvValue
    , cfvId

    -- * CreativeFieldValuesListResponse
    , CreativeFieldValuesListResponse
    , creativeFieldValuesListResponse
    , cfvlrNextPageToken
    , cfvlrKind
    , cfvlrCreativeFieldValues

    -- * CreativeFieldsListResponse
    , CreativeFieldsListResponse
    , creativeFieldsListResponse
    , cflrNextPageToken
    , cflrKind
    , cflrCreativeFields

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

    -- * CreativeGroupAssignment
    , CreativeGroupAssignment
    , creativeGroupAssignment
    , cgaCreativeGroupNumber
    , cgaCreativeGroupId

    -- * CreativeGroupAssignmentCreativeGroupNumber
    , CreativeGroupAssignmentCreativeGroupNumber (..)

    -- * CreativeGroupsListResponse
    , CreativeGroupsListResponse
    , creativeGroupsListResponse
    , cglrCreativeGroups
    , cglrNextPageToken
    , cglrKind

    -- * CreativeItemBackupImageFeatures
    , CreativeItemBackupImageFeatures (..)

    -- * CreativeItemCompatibility
    , CreativeItemCompatibility (..)

    -- * CreativeOptimizationConfiguration
    , CreativeOptimizationConfiguration
    , creativeOptimizationConfiguration
    , cocOptimizationModel
    , cocName
    , cocOptimizationActivitys
    , cocId

    -- * CreativeOptimizationConfigurationOptimizationModel
    , CreativeOptimizationConfigurationOptimizationModel (..)

    -- * CreativeRotation
    , CreativeRotation
    , creativeRotation
    , crWeightCalculationStrategy
    , crCreativeAssignments
    , crCreativeOptimizationConfigurationId
    , crType

    -- * CreativeRotationType
    , CreativeRotationType (..)

    -- * CreativeRotationWeightCalculationStrategy
    , CreativeRotationWeightCalculationStrategy (..)

    -- * CreativeSettings
    , CreativeSettings
    , creativeSettings
    , csIFrameHeader
    , csIFrameFooter

    -- * CreativeType
    , CreativeType (..)

    -- * CreativesListResponse
    , CreativesListResponse
    , creativesListResponse
    , crerNextPageToken
    , crerKind
    , crerCreatives

    -- * CrossDimensionReachReportCompatibleFields
    , CrossDimensionReachReportCompatibleFields
    , crossDimensionReachReportCompatibleFields
    , cdrrcfMetrics
    , cdrrcfBreakdown
    , cdrrcfKind
    , cdrrcfDimensionFilters
    , cdrrcfOverlapMetrics

    -- * CustomRichMediaEvents
    , CustomRichMediaEvents
    , customRichMediaEvents
    , crmeKind
    , crmeFilteredEventIds

    -- * DateRange
    , DateRange
    , dateRange
    , drKind
    , drEndDate
    , drStartDate
    , drRelativeDateRange

    -- * DateRangeRelativeDateRange
    , DateRangeRelativeDateRange (..)

    -- * DayPartTargeting
    , DayPartTargeting
    , dayPartTargeting
    , dptDaysOfWeek
    , dptHoursOfDay
    , dptUserLocalTime

    -- * DayPartTargetingItemDaysOfWeek
    , DayPartTargetingItemDaysOfWeek (..)

    -- * DefaultClickThroughEventTagProperties
    , DefaultClickThroughEventTagProperties
    , defaultClickThroughEventTagProperties
    , dctetpOverrideInheritedEventTag
    , dctetpDefaultClickThroughEventTagId

    -- * DeliverySchedule
    , DeliverySchedule
    , deliverySchedule
    , dsHardCutoff
    , dsPriority
    , dsImpressionRatio
    , dsFrequencyCap

    -- * DeliverySchedulePriority
    , DeliverySchedulePriority (..)

    -- * DfpSettings
    , DfpSettings
    , dfpSettings
    , dsPubPaidPlacementAccepted
    , dsDfpNetworkName
    , dsPublisherPortalOnly
    , dsProgrammaticPlacementAccepted
    , dsDfpNetworkCode

    -- * Dimension
    , Dimension
    , dimension
    , dKind
    , dName

    -- * DimensionFilter
    , DimensionFilter
    , dimensionFilter
    , dfKind
    , dfValue
    , dfDimensionName

    -- * DimensionValue
    , DimensionValue
    , dimensionValue
    , dvEtag
    , dvKind
    , dvValue
    , dvMatchType
    , dvDimensionName
    , dvId

    -- * DimensionValueList
    , DimensionValueList
    , dimensionValueList
    , dvlEtag
    , dvlNextPageToken
    , dvlKind
    , dvlItems

    -- * DimensionValueMatchType
    , DimensionValueMatchType (..)

    -- * DimensionValueRequest
    , DimensionValueRequest
    , dimensionValueRequest
    , dvrKind
    , dvrEndDate
    , dvrFilters
    , dvrStartDate
    , dvrDimensionName

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

    -- * DirectorySiteContactAssignment
    , DirectorySiteContactAssignment
    , directorySiteContactAssignment
    , dscaVisibility
    , dscaContactId

    -- * DirectorySiteContactAssignmentVisibility
    , DirectorySiteContactAssignmentVisibility (..)

    -- * DirectorySiteContactRole
    , DirectorySiteContactRole (..)

    -- * DirectorySiteContactType
    , DirectorySiteContactType (..)

    -- * DirectorySiteContactsListResponse
    , DirectorySiteContactsListResponse
    , directorySiteContactsListResponse
    , dsclrNextPageToken
    , dsclrKind
    , dsclrDirectorySiteContacts

    -- * DirectorySiteItemInpageTagFormats
    , DirectorySiteItemInpageTagFormats (..)

    -- * DirectorySiteItemInterstitialTagFormats
    , DirectorySiteItemInterstitialTagFormats (..)

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

    -- * DirectorySitesListResponse
    , DirectorySitesListResponse
    , directorySitesListResponse
    , dslrNextPageToken
    , dslrKind
    , dslrDirectorySites

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

    -- * EventTagOverride
    , EventTagOverride
    , eventTagOverride
    , etoEnabled
    , etoId

    -- * EventTagSiteFilterType
    , EventTagSiteFilterType (..)

    -- * EventTagStatus
    , EventTagStatus (..)

    -- * EventTagType
    , EventTagType (..)

    -- * EventTagsListResponse
    , EventTagsListResponse
    , eventTagsListResponse
    , etlrKind
    , etlrEventTags

    -- * File
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

    -- * FileFormat
    , FileFormat (..)

    -- * FileList
    , FileList
    , fileList
    , flEtag
    , flNextPageToken
    , flKind
    , flItems

    -- * FileStatus
    , FileStatus (..)

    -- * FileUrls
    , FileUrls
    , fileUrls
    , fuBrowserUrl
    , fuApiUrl

    -- * Flight
    , Flight
    , flight
    , fRateOrCost
    , fEndDate
    , fStartDate
    , fUnits

    -- * FloodlightActivitiesGenerateTagResponse
    , FloodlightActivitiesGenerateTagResponse
    , floodlightActivitiesGenerateTagResponse
    , fagtrFloodlightActivityTag
    , fagtrKind

    -- * FloodlightActivitiesListResponse
    , FloodlightActivitiesListResponse
    , floodlightActivitiesListResponse
    , falrNextPageToken
    , falrKind
    , falrFloodlightActivities

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

    -- * FloodlightActivityCacheBustingType
    , FloodlightActivityCacheBustingType (..)

    -- * FloodlightActivityCountingMethod
    , FloodlightActivityCountingMethod (..)

    -- * FloodlightActivityDynamicTag
    , FloodlightActivityDynamicTag
    , floodlightActivityDynamicTag
    , fadtTag
    , fadtName
    , fadtId

    -- * FloodlightActivityFloodlightActivityGroupType
    , FloodlightActivityFloodlightActivityGroupType (..)

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

    -- * FloodlightActivityGroupType
    , FloodlightActivityGroupType (..)

    -- * FloodlightActivityGroupsListResponse
    , FloodlightActivityGroupsListResponse
    , floodlightActivityGroupsListResponse
    , faglrNextPageToken
    , faglrKind
    , faglrFloodlightActivityGroups

    -- * FloodlightActivityItemUserDefinedVariableTypes
    , FloodlightActivityItemUserDefinedVariableTypes (..)

    -- * FloodlightActivityPublisherDynamicTag
    , FloodlightActivityPublisherDynamicTag
    , floodlightActivityPublisherDynamicTag
    , fapdtClickThrough
    , fapdtSiteIdDimensionValue
    , fapdtDynamicTag
    , fapdtDirectorySiteId
    , fapdtSiteId
    , fapdtViewThrough

    -- * FloodlightActivityTagFormat
    , FloodlightActivityTagFormat (..)

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

    -- * FloodlightConfigurationFirstDayOfWeek
    , FloodlightConfigurationFirstDayOfWeek (..)

    -- * FloodlightConfigurationItemStandardVariableTypes
    , FloodlightConfigurationItemStandardVariableTypes (..)

    -- * FloodlightConfigurationNaturalSearchConversionAttributionOption
    , FloodlightConfigurationNaturalSearchConversionAttributionOption (..)

    -- * FloodlightConfigurationsListResponse
    , FloodlightConfigurationsListResponse
    , floodlightConfigurationsListResponse
    , fclrKind
    , fclrFloodlightConfigurations

    -- * FloodlightReportCompatibleFields
    , FloodlightReportCompatibleFields
    , floodlightReportCompatibleFields
    , frcfMetrics
    , frcfKind
    , frcfDimensionFilters
    , frcfDimensions

    -- * FrequencyCap
    , FrequencyCap
    , frequencyCap
    , fcImpressions
    , fcDuration

    -- * FsCommand
    , FsCommand
    , fsCommand
    , fcPositionOption
    , fcLeft
    , fcWindowHeight
    , fcWindowWidth
    , fcTop

    -- * FsCommandPositionOption
    , FsCommandPositionOption (..)

    -- * GeoTargeting
    , GeoTargeting
    , geoTargeting
    , gtRegions
    , gtCountries
    , gtCities
    , gtMetros
    , gtExcludeCountries
    , gtPostalCodes

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

    -- * InventoryItemsListResponse
    , InventoryItemsListResponse
    , inventoryItemsListResponse
    , iilrInventoryItems
    , iilrNextPageToken
    , iilrKind

    -- * KeyValueTargetingExpression
    , KeyValueTargetingExpression
    , keyValueTargetingExpression
    , kvteExpression

    -- * LandingPage
    , LandingPage
    , landingPage
    , lpKind
    , lpDefault
    , lpUrl
    , lpName
    , lpId

    -- * LandingPagesListResponse
    , LandingPagesListResponse
    , landingPagesListResponse
    , lplrLandingPages
    , lplrKind

    -- * LastModifiedInfo
    , LastModifiedInfo
    , lastModifiedInfo
    , lmiTime

    -- * ListPopulationClause
    , ListPopulationClause
    , listPopulationClause
    , lpcTerms

    -- * ListPopulationRule
    , ListPopulationRule
    , listPopulationRule
    , lprFloodlightActivityName
    , lprFloodlightActivityId
    , lprListPopulationClauses

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

    -- * ListPopulationTermOperator
    , ListPopulationTermOperator (..)

    -- * ListPopulationTermType
    , ListPopulationTermType (..)

    -- * ListTargetingExpression
    , ListTargetingExpression
    , listTargetingExpression
    , lteExpression

    -- * LookbackConfiguration
    , LookbackConfiguration
    , lookbackConfiguration
    , lcClickDuration
    , lcPostImpressionActivitiesDuration

    -- * Metric
    , Metric
    , metric
    , mKind
    , mName

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

    -- * MetrosListResponse
    , MetrosListResponse
    , metrosListResponse
    , mlrKind
    , mlrMetros

    -- * MobileCarrier
    , MobileCarrier
    , mobileCarrier
    , mcKind
    , mcName
    , mcCountryCode
    , mcId
    , mcCountryDartId

    -- * MobileCarriersListResponse
    , MobileCarriersListResponse
    , mobileCarriersListResponse
    , mclrMobileCarriers
    , mclrKind

    -- * ObjectFilter
    , ObjectFilter
    , objectFilter
    , ofStatus
    , ofKind
    , ofObjectIds

    -- * ObjectFilterStatus
    , ObjectFilterStatus (..)

    -- * OffsetPosition
    , OffsetPosition
    , offsetPosition
    , opLeft
    , opTop

    -- * OmnitureSettings
    , OmnitureSettings
    , omnitureSettings
    , osOmnitureCostDataEnabled
    , osOmnitureIntegrationEnabled

    -- * OperatingSystem
    , OperatingSystem
    , operatingSystem
    , osDesktop
    , osKind
    , osName
    , osMobile
    , osDartId

    -- * OperatingSystemVersion
    , OperatingSystemVersion
    , operatingSystemVersion
    , osvMinorVersion
    , osvKind
    , osvOperatingSystem
    , osvMajorVersion
    , osvName
    , osvId

    -- * OperatingSystemVersionsListResponse
    , OperatingSystemVersionsListResponse
    , operatingSystemVersionsListResponse
    , osvlrKind
    , osvlrOperatingSystemVersions

    -- * OperatingSystemsListResponse
    , OperatingSystemsListResponse
    , operatingSystemsListResponse
    , oslrKind
    , oslrOperatingSystems

    -- * OptimizationActivity
    , OptimizationActivity
    , optimizationActivity
    , oaWeight
    , oaFloodlightActivityId
    , oaFloodlightActivityIdDimensionValue

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

    -- * OrderContact
    , OrderContact
    , orderContact
    , ocSignatureUserProfileId
    , ocContactName
    , ocContactTitle
    , ocContactType
    , ocContactInfo

    -- * OrderContactContactType
    , OrderContactContactType (..)

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

    -- * OrderDocumentType
    , OrderDocumentType (..)

    -- * OrderDocumentsListResponse
    , OrderDocumentsListResponse
    , orderDocumentsListResponse
    , odlrNextPageToken
    , odlrKind
    , odlrOrderDocuments

    -- * OrdersListResponse
    , OrdersListResponse
    , ordersListResponse
    , olrNextPageToken
    , olrKind
    , olrOrders

    -- * PathToConversionReportCompatibleFields
    , PathToConversionReportCompatibleFields
    , pathToConversionReportCompatibleFields
    , ptcrcfMetrics
    , ptcrcfKind
    , ptcrcfConversionDimensions
    , ptcrcfCustomFloodlightVariables
    , ptcrcfPerInteractionDimensions

    -- * Placement
    , Placement
    , placement
    , pStatus
    , pPlacementStrategyId
    , pTagFormats
    , pSiteIdDimensionValue
    , pPricingSchedule
    , pSize
    , pKind
    , pKeyName
    , pCampaignIdDimensionValue
    , pAdvertiserId
    , pAdvertiserIdDimensionValue
    , pCampaignId
    , pIdDimensionValue
    , pPrimary
    , pLookbackConfiguration
    , pTagSetting
    , pContentCategoryId
    , pDirectorySiteIdDimensionValue
    , pAccountId
    , pPaymentSource
    , pName
    , pDirectorySiteId
    , pCreateInfo
    , pLastModifiedInfo
    , pId
    , pSslRequired
    , pSubaccountId
    , pPlacementGroupIdDimensionValue
    , pExternalId
    , pPlacementGroupId
    , pComment
    , pSiteId
    , pCompatibility
    , pArchived
    , pPaymentApproved
    , pPublisherUpdateInfo

    -- * PlacementAssignment
    , PlacementAssignment
    , placementAssignment
    , paPlacementId
    , paPlacementIdDimensionValue
    , paActive
    , paSslRequired

    -- * PlacementCompatibility
    , PlacementCompatibility (..)

    -- * PlacementGroup
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

    -- * PlacementGroupPlacementGroupType
    , PlacementGroupPlacementGroupType (..)

    -- * PlacementGroupsListResponse
    , PlacementGroupsListResponse
    , placementGroupsListResponse
    , pglrNextPageToken
    , pglrKind
    , pglrPlacementGroups

    -- * PlacementItemTagFormats
    , PlacementItemTagFormats (..)

    -- * PlacementPaymentSource
    , PlacementPaymentSource (..)

    -- * PlacementStatus
    , PlacementStatus (..)

    -- * PlacementStrategiesListResponse
    , PlacementStrategiesListResponse
    , placementStrategiesListResponse
    , pslrPlacementStrategies
    , pslrNextPageToken
    , pslrKind

    -- * PlacementStrategy
    , PlacementStrategy
    , placementStrategy
    , psKind
    , psAccountId
    , psName
    , psId

    -- * PlacementTag
    , PlacementTag
    , placementTag
    , ptPlacementId
    , ptTagDatas

    -- * PlacementsGenerateTagsResponse
    , PlacementsGenerateTagsResponse
    , placementsGenerateTagsResponse
    , pgtrKind
    , pgtrPlacementTags

    -- * PlacementsListResponse
    , PlacementsListResponse
    , placementsListResponse
    , plrNextPageToken
    , plrKind
    , plrPlacements

    -- * PlatformType
    , PlatformType
    , platformType
    , ptKind
    , ptName
    , ptId

    -- * PlatformTypesListResponse
    , PlatformTypesListResponse
    , platformTypesListResponse
    , ptlrKind
    , ptlrPlatformTypes

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

    -- * PopupWindowPropertiesPositionType
    , PopupWindowPropertiesPositionType (..)

    -- * PostalCode
    , PostalCode
    , postalCode
    , pcKind
    , pcCode
    , pcCountryCode
    , pcId
    , pcCountryDartId

    -- * PostalCodesListResponse
    , PostalCodesListResponse
    , postalCodesListResponse
    , pclrKind
    , pclrPostalCodes

    -- * Pricing
    , Pricing
    , pricing
    , pEndDate
    , pStartDate
    , pGroupType
    , pPricingType
    , pFlights
    , pCapCostType

    -- * PricingCapCostType
    , PricingCapCostType (..)

    -- * PricingGroupType
    , PricingGroupType (..)

    -- * PricingPricingType
    , PricingPricingType (..)

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

    -- * PricingScheduleCapCostOption
    , PricingScheduleCapCostOption (..)

    -- * PricingSchedulePricingPeriod
    , PricingSchedulePricingPeriod
    , pricingSchedulePricingPeriod
    , psppEndDate
    , psppRateOrCostNanos
    , psppStartDate
    , psppUnits
    , psppPricingComment

    -- * PricingSchedulePricingType
    , PricingSchedulePricingType (..)

    -- * Project
    , Project
    , project
    , ppTargetClicks
    , ppClientBillingCode
    , ppTargetCpmNanos
    , ppTargetConversions
    , ppBudget
    , ppKind
    , ppAdvertiserId
    , ppEndDate
    , ppOverview
    , ppTargetImpressions
    , ppStartDate
    , ppTargetCpcNanos
    , ppAccountId
    , ppName
    , ppLastModifiedInfo
    , ppId
    , ppAudienceAgeGroup
    , ppSubaccountId
    , ppAudienceGender
    , ppClientName
    , ppTargetCpaNanos

    -- * ProjectAudienceAgeGroup
    , ProjectAudienceAgeGroup (..)

    -- * ProjectAudienceGender
    , ProjectAudienceGender (..)

    -- * ProjectsListResponse
    , ProjectsListResponse
    , projectsListResponse
    , proNextPageToken
    , proKind
    , proProjects

    -- * ReachReportCompatibleFields
    , ReachReportCompatibleFields
    , reachReportCompatibleFields
    , rrcfMetrics
    , rrcfReachByFrequencyMetrics
    , rrcfKind
    , rrcfDimensionFilters
    , rrcfPivotedActivityMetrics
    , rrcfDimensions

    -- * Recipient
    , Recipient
    , recipient
    , recEmail
    , recKind
    , recDeliveryType

    -- * RecipientDeliveryType
    , RecipientDeliveryType (..)

    -- * Region
    , Region
    , region
    , rRegionCode
    , rKind
    , rName
    , rCountryCode
    , rCountryDartId
    , rDartId

    -- * RegionsListResponse
    , RegionsListResponse
    , regionsListResponse
    , rlrKind
    , rlrRegions

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

    -- * RemarketingListListSource
    , RemarketingListListSource (..)

    -- * RemarketingListShare
    , RemarketingListShare
    , remarketingListShare
    , rlsSharedAdvertiserIds
    , rlsKind
    , rlsRemarketingListId
    , rlsSharedAccountIds

    -- * RemarketingListsListResponse
    , RemarketingListsListResponse
    , remarketingListsListResponse
    , rllrNextPageToken
    , rllrRemarketingLists
    , rllrKind

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

    -- * ReportCompatibleFields
    , ReportCompatibleFields
    , reportCompatibleFields
    , rcfMetrics
    , rcfKind
    , rcfDimensionFilters
    , rcfPivotedActivityMetrics
    , rcfDimensions

    -- * ReportCriteria
    , ReportCriteria
    , reportCriteria
    , rcMetricNames
    , rcCustomRichMediaEvents
    , rcDimensionFilters
    , rcActivities
    , rcDateRange
    , rcDimensions

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

    -- * ReportDelivery
    , ReportDelivery
    , reportDelivery
    , rdEmailOwner
    , rdRecipients
    , rdMessage
    , rdEmailOwnerDeliveryType

    -- * ReportDimensionCrossDimensionReachCriteria
    , ReportDimensionCrossDimensionReachCriteria (..)

    -- * ReportEmailOwnerDeliveryTypeDelivery
    , ReportEmailOwnerDeliveryTypeDelivery (..)

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

    -- * ReportFormat
    , ReportFormat (..)

    -- * ReportItemRepeatsOnWeekDaysSchedule
    , ReportItemRepeatsOnWeekDaysSchedule (..)

    -- * ReportList
    , ReportList
    , reportList
    , rlEtag
    , rlNextPageToken
    , rlKind
    , rlItems

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

    -- * ReportReportPropertiesFloodlightCriteria
    , ReportReportPropertiesFloodlightCriteria
    , reportReportPropertiesFloodlightCriteria
    , rrpfcIncludeUnattributedIPConversions
    , rrpfcIncludeUnattributedCookieConversions
    , rrpfcIncludeAttributedIPConversions

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

    -- * ReportRunsOnDayOfMonthSchedule
    , ReportRunsOnDayOfMonthSchedule (..)

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

    -- * ReportType
    , ReportType (..)

    -- * ReportsConfiguration
    , ReportsConfiguration
    , reportsConfiguration
    , rcExposureToConversionEnabled
    , rcReportGenerationTimeZoneId
    , rcLookbackConfiguration

    -- * RichMediaExitOverride
    , RichMediaExitOverride
    , richMediaExitOverride
    , rmeoUseCustomExitUrl
    , rmeoExitId
    , rmeoCustomExitUrl

    -- * Site
    , Site
    , site
    , sKind
    , sKeyName
    , sSiteContacts
    , sSiteSettings
    , sIdDimensionValue
    , sDirectorySiteIdDimensionValue
    , sAccountId
    , sName
    , sDirectorySiteId
    , sId
    , sSubaccountId
    , sApproved

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

    -- * SiteContactContactType
    , SiteContactContactType (..)

    -- * SiteSettings
    , SiteSettings
    , siteSettings
    , ssDisableNewCookie
    , ssDisableBrandSafeAds
    , ssLookbackConfiguration
    , ssTagSetting
    , ssActiveViewOptOut
    , ssCreativeSettings

    -- * SitesListResponse
    , SitesListResponse
    , sitesListResponse
    , slrNextPageToken
    , slrKind
    , slrSites

    -- * Size
    , Size
    , size
    , ssHeight
    , ssKind
    , ssWidth
    , ssIab
    , ssId

    -- * SizesListResponse
    , SizesListResponse
    , sizesListResponse
    , sizKind
    , sizSizes

    -- * SortedDimension
    , SortedDimension
    , sortedDimension
    , sdKind
    , sdSortOrder
    , sdName

    -- * SortedDimensionSortOrder
    , SortedDimensionSortOrder (..)

    -- * Subaccount
    , Subaccount
    , subaccount
    , subuKind
    , subuAvailablePermissionIds
    , subuAccountId
    , subuName
    , subuId

    -- * SubaccountsListResponse
    , SubaccountsListResponse
    , subaccountsListResponse
    , subNextPageToken
    , subKind
    , subSubaccounts

    -- * TagData
    , TagData
    , tagData
    , tdClickTag
    , tdFormat
    , tdCreativeId
    , tdAdId
    , tdImpressionTag

    -- * TagDataFormat
    , TagDataFormat (..)

    -- * TagSetting
    , TagSetting
    , tagSetting
    , tsKeywordOption
    , tsIncludeClickThroughUrls
    , tsIncludeClickTracking
    , tsAdditionalKeyValues

    -- * TagSettingKeywordOption
    , TagSettingKeywordOption (..)

    -- * TagSettings
    , TagSettings
    , tagSettings
    , tsDynamicTagEnabled
    , tsImageTagEnabled

    -- * TargetWindow
    , TargetWindow
    , targetWindow
    , twCustomHtml
    , twTargetWindowOption

    -- * TargetWindowTargetWindowOption
    , TargetWindowTargetWindowOption (..)

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

    -- * TargetableRemarketingListListSource
    , TargetableRemarketingListListSource (..)

    -- * TargetableRemarketingListsListResponse
    , TargetableRemarketingListsListResponse
    , targetableRemarketingListsListResponse
    , trllrNextPageToken
    , trllrKind
    , trllrTargetableRemarketingLists

    -- * TechnologyTargeting
    , TechnologyTargeting
    , technologyTargeting
    , ttMobileCarriers
    , ttOperatingSystemVersions
    , ttPlatformTypes
    , ttBrowsers
    , ttConnectionTypes
    , ttOperatingSystems

    -- * ThirdPartyAuthenticationToken
    , ThirdPartyAuthenticationToken
    , thirdPartyAuthenticationToken
    , tpatValue
    , tpatName

    -- * ThirdPartyTrackingUrl
    , ThirdPartyTrackingUrl
    , thirdPartyTrackingUrl
    , tptuUrl
    , tptuThirdPartyUrlType

    -- * ThirdPartyTrackingUrlThirdPartyUrlType
    , ThirdPartyTrackingUrlThirdPartyUrlType (..)

    -- * UserDefinedVariableConfiguration
    , UserDefinedVariableConfiguration
    , userDefinedVariableConfiguration
    , udvcReportName
    , udvcDataType
    , udvcVariableType

    -- * UserDefinedVariableConfigurationDataType
    , UserDefinedVariableConfigurationDataType (..)

    -- * UserDefinedVariableConfigurationVariableType
    , UserDefinedVariableConfigurationVariableType (..)

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

    -- * UserProfileList
    , UserProfileList
    , userProfileList
    , uplEtag
    , uplKind
    , uplItems

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

    -- * UserRolePermission
    , UserRolePermission
    , userRolePermission
    , urpKind
    , urpAvailability
    , urpName
    , urpId
    , urpPermissionGroupId

    -- * UserRolePermissionAvailability
    , UserRolePermissionAvailability (..)

    -- * UserRolePermissionGroup
    , UserRolePermissionGroup
    , userRolePermissionGroup
    , urpgKind
    , urpgName
    , urpgId

    -- * UserRolePermissionGroupsListResponse
    , UserRolePermissionGroupsListResponse
    , userRolePermissionGroupsListResponse
    , urpglrUserRolePermissionGroups
    , urpglrKind

    -- * UserRolePermissionsListResponse
    , UserRolePermissionsListResponse
    , userRolePermissionsListResponse
    , urplrKind
    , urplrUserRolePermissions

    -- * UserRolesListResponse
    , UserRolesListResponse
    , userRolesListResponse
    , urlrNextPageToken
    , urlrKind
    , urlrUserRoles
    ) where

import           Network.Google.DFAReporting.Types.Product
import           Network.Google.DFAReporting.Types.Sum
import           Network.Google.Prelude

dfareporting :: a
dfareporting = error "dfareporting"
