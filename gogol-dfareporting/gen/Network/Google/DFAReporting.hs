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
    -- * Resources
      DFAReporting
    , InventoryItemsAPI
    , InventoryItemsList
    , InventoryItemsGet
    , PlacementStrategiesAPI
    , PlacementStrategiesInsert
    , PlacementStrategiesList
    , PlacementStrategiesPatch
    , PlacementStrategiesGet
    , PlacementStrategiesDelete
    , PlacementStrategiesUpdate
    , CampaignCreativeAssociationsAPI
    , CampaignCreativeAssociationsInsert
    , CampaignCreativeAssociationsList
    , CreativeGroupsAPI
    , CreativeGroupsInsert
    , CreativeGroupsList
    , CreativeGroupsPatch
    , CreativeGroupsGet
    , CreativeGroupsUpdate
    , MobileCarriersAPI
    , MobileCarriersList
    , MobileCarriersGet
    , LandingPagesAPI
    , LandingPagesInsert
    , LandingPagesList
    , LandingPagesPatch
    , LandingPagesGet
    , LandingPagesDelete
    , LandingPagesUpdate
    , RemarketingListSharesAPI
    , RemarketingListSharesPatch
    , RemarketingListSharesGet
    , RemarketingListSharesUpdate
    , AccountActiveAdSummariesAPI
    , AccountActiveAdSummariesGet
    , UserRolePermissionGroupsAPI
    , UserRolePermissionGroupsList
    , UserRolePermissionGroupsGet
    , RemarketingListsAPI
    , RemarketingListsInsert
    , RemarketingListsList
    , RemarketingListsPatch
    , RemarketingListsGet
    , RemarketingListsUpdate
    , AccountsAPI
    , AccountsList
    , AccountsPatch
    , AccountsGet
    , AccountsUpdate
    , ReportsAPI
    , CompatibleFieldsAPI
    , CompatibleFieldsQuery
    , FilesAPI
    , FilesList
    , FilesGet
    , CampaignsAPI
    , CampaignsInsert
    , CampaignsList
    , CampaignsPatch
    , CampaignsGet
    , CampaignsUpdate
    , AccountUserProfilesAPI
    , AccountUserProfilesInsert
    , AccountUserProfilesList
    , AccountUserProfilesPatch
    , AccountUserProfilesGet
    , AccountUserProfilesUpdate
    , CreativesAPI
    , CreativesInsert
    , CreativesList
    , CreativesPatch
    , CreativesGet
    , CreativesUpdate
    , DimensionValuesAPI
    , DimensionValuesQuery
    , FloodlightConfigurationsAPI
    , FloodlightConfigurationsList
    , FloodlightConfigurationsPatch
    , FloodlightConfigurationsGet
    , FloodlightConfigurationsUpdate
    , RegionsAPI
    , RegionsList
    , FloodlightActivitiesAPI
    , FloodlightActivitiesInsert
    , FloodlightActivitiesList
    , FloodlightActivitiesPatch
    , FloodlightActivitiesGet
    , FloodlightActivitiesGeneratetag
    , FloodlightActivitiesDelete
    , FloodlightActivitiesUpdate
    , AccountPermissionGroupsAPI
    , AccountPermissionGroupsList
    , AccountPermissionGroupsGet
    , AdvertisersAPI
    , AdvertisersInsert
    , AdvertisersList
    , AdvertisersPatch
    , AdvertisersGet
    , AdvertisersUpdate
    , CountriesAPI
    , CountriesList
    , CountriesGet
    , UserRolesAPI
    , UserRolesInsert
    , UserRolesList
    , UserRolesPatch
    , UserRolesGet
    , UserRolesDelete
    , UserRolesUpdate
    , UserProfilesAPI
    , UserProfilesList
    , UserProfilesGet
    , OperatingSystemVersionsAPI
    , OperatingSystemVersionsList
    , OperatingSystemVersionsGet
    , AccountPermissionsAPI
    , AccountPermissionsList
    , AccountPermissionsGet
    , CitiesAPI
    , CitiesList
    , ChangeLogsAPI
    , ChangeLogsList
    , ChangeLogsGet
    , TargetableRemarketingListsAPI
    , TargetableRemarketingListsList
    , TargetableRemarketingListsGet
    , PlatformTypesAPI
    , PlatformTypesList
    , PlatformTypesGet
    , ContentCategoriesAPI
    , ContentCategoriesInsert
    , ContentCategoriesList
    , ContentCategoriesPatch
    , ContentCategoriesGet
    , ContentCategoriesDelete
    , ContentCategoriesUpdate
    , BrowsersAPI
    , BrowsersList
    , PlacementsAPI
    , PlacementsInsert
    , PlacementsGeneratetags
    , PlacementsList
    , PlacementsPatch
    , PlacementsGet
    , PlacementsUpdate
    , MetrosAPI
    , MetrosList
    , CreativeFieldsAPI
    , CreativeFieldsInsert
    , CreativeFieldsList
    , CreativeFieldsPatch
    , CreativeFieldsGet
    , CreativeFieldsDelete
    , CreativeFieldsUpdate
    , OrderDocumentsAPI
    , OrderDocumentsList
    , OrderDocumentsGet
    , FilesAPI
    , FilesList
    , FilesGet
    , ConnectionTypesAPI
    , ConnectionTypesList
    , ConnectionTypesGet
    , PlacementGroupsAPI
    , PlacementGroupsInsert
    , PlacementGroupsList
    , PlacementGroupsPatch
    , PlacementGroupsGet
    , PlacementGroupsUpdate
    , EventTagsAPI
    , EventTagsInsert
    , EventTagsList
    , EventTagsPatch
    , EventTagsGet
    , EventTagsDelete
    , EventTagsUpdate
    , OrdersAPI
    , OrdersList
    , OrdersGet
    , UserRolePermissionsAPI
    , UserRolePermissionsList
    , UserRolePermissionsGet
    , CreativeAssetsAPI
    , CreativeAssetsInsert
    , SitesAPI
    , SitesInsert
    , SitesList
    , SitesPatch
    , SitesGet
    , SitesUpdate
    , OperatingSystemsAPI
    , OperatingSystemsList
    , OperatingSystemsGet
    , PostalCodesAPI
    , PostalCodesList
    , PostalCodesGet
    , SizesAPI
    , SizesInsert
    , SizesList
    , SizesGet
    , AdsAPI
    , AdsInsert
    , AdsList
    , AdsPatch
    , AdsGet
    , AdsUpdate
    , ProjectsAPI
    , ProjectsList
    , ProjectsGet
    , SubaccountsAPI
    , SubaccountsInsert
    , SubaccountsList
    , SubaccountsPatch
    , SubaccountsGet
    , SubaccountsUpdate
    , AdvertiserGroupsAPI
    , AdvertiserGroupsInsert
    , AdvertiserGroupsList
    , AdvertiserGroupsPatch
    , AdvertiserGroupsGet
    , AdvertiserGroupsDelete
    , AdvertiserGroupsUpdate
    , CreativeFieldValuesAPI
    , CreativeFieldValuesInsert
    , CreativeFieldValuesList
    , CreativeFieldValuesPatch
    , CreativeFieldValuesGet
    , CreativeFieldValuesDelete
    , CreativeFieldValuesUpdate
    , DirectorySiteContactsAPI
    , DirectorySiteContactsList
    , DirectorySiteContactsGet
    , DirectorySitesAPI
    , DirectorySitesInsert
    , DirectorySitesList
    , DirectorySitesGet
    , FloodlightActivityGroupsAPI
    , FloodlightActivityGroupsInsert
    , FloodlightActivityGroupsList
    , FloodlightActivityGroupsPatch
    , FloodlightActivityGroupsGet
    , FloodlightActivityGroupsDelete
    , FloodlightActivityGroupsUpdate

    -- * Types

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

    -- ** AccountAccountProfile
    , AccountAccountProfile (..)

    -- ** AccountActiveAdSummary
    , AccountActiveAdSummary
    , accountActiveAdSummary
    , aaasAvailableAds
    , aaasKind
    , aaasAccountId
    , aaasActiveAds
    , aaasActiveAdsLimitTier

    -- ** AccountActiveAdSummaryActiveAdsLimitTier
    , AccountActiveAdSummaryActiveAdsLimitTier (..)

    -- ** AccountActiveAdsLimitTier
    , AccountActiveAdsLimitTier (..)

    -- ** AccountPermission
    , AccountPermission
    , accountPermission
    , apKind
    , apAccountProfiles
    , apName
    , apId
    , apLevel
    , apPermissionGroupId

    -- ** AccountPermissionGroup
    , AccountPermissionGroup
    , accountPermissionGroup
    , apgKind
    , apgName
    , apgId

    -- ** AccountPermissionGroupsListResponse
    , AccountPermissionGroupsListResponse
    , accountPermissionGroupsListResponse
    , apglrKind
    , apglrAccountPermissionGroups

    -- ** AccountPermissionItemAccountProfiles
    , AccountPermissionItemAccountProfiles (..)

    -- ** AccountPermissionLevel
    , AccountPermissionLevel (..)

    -- ** AccountPermissionsListResponse
    , AccountPermissionsListResponse
    , accountPermissionsListResponse
    , aplrKind
    , aplrAccountPermissions

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

    -- ** AccountUserProfileTraffickerType
    , AccountUserProfileTraffickerType (..)

    -- ** AccountUserProfileUserAccessType
    , AccountUserProfileUserAccessType (..)

    -- ** AccountUserProfilesListResponse
    , AccountUserProfilesListResponse
    , accountUserProfilesListResponse
    , auplrNextPageToken
    , auplrAccountUserProfiles
    , auplrKind

    -- ** AccountsListResponse
    , AccountsListResponse
    , accountsListResponse
    , accNextPageToken
    , accAccounts
    , accKind

    -- ** Activities
    , Activities
    , activities
    , actKind
    , actMetricNames
    , actFilters

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

    -- ** AdCompatibility
    , AdCompatibility (..)

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

    -- ** AdSlotCompatibility
    , AdSlotCompatibility (..)

    -- ** AdSlotPaymentSourceType
    , AdSlotPaymentSourceType (..)

    -- ** AdType
    , AdType (..)

    -- ** AdsListResponse
    , AdsListResponse
    , adsListResponse
    , adsNextPageToken
    , adsKind
    , adsAds

    -- ** Advertiser
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

    -- ** AdvertiserGroup
    , AdvertiserGroup
    , advertiserGroup
    , agKind
    , agAccountId
    , agName
    , agId

    -- ** AdvertiserGroupsListResponse
    , AdvertiserGroupsListResponse
    , advertiserGroupsListResponse
    , aglrNextPageToken
    , aglrKind
    , aglrAdvertiserGroups

    -- ** AdvertiserStatus
    , AdvertiserStatus (..)

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

    -- ** AudienceSegmentGroup
    , AudienceSegmentGroup
    , audienceSegmentGroup
    , asgAudienceSegments
    , asgName
    , asgId

    -- ** Browser
    , Browser
    , browser
    , bMinorVersion
    , bKind
    , bBrowserVersionId
    , bMajorVersion
    , bName
    , bDartId

    -- ** BrowsersListResponse
    , BrowsersListResponse
    , browsersListResponse
    , blrKind
    , blrBrowsers

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

    -- ** CampaignCreativeAssociation
    , CampaignCreativeAssociation
    , campaignCreativeAssociation
    , ccaKind
    , ccaCreativeId

    -- ** CampaignCreativeAssociationsListResponse
    , CampaignCreativeAssociationsListResponse
    , campaignCreativeAssociationsListResponse
    , ccalrCampaignCreativeAssociations
    , ccalrNextPageToken
    , ccalrKind

    -- ** CampaignsListResponse
    , CampaignsListResponse
    , campaignsListResponse
    , clrlNextPageToken
    , clrlCampaigns
    , clrlKind

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

    -- ** ChangeLogsListResponse
    , ChangeLogsListResponse
    , changeLogsListResponse
    , cllrNextPageToken
    , cllrKind
    , cllrChangeLogs

    -- ** CitiesListResponse
    , CitiesListResponse
    , citiesListResponse
    , citKind
    , citCities

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

    -- ** ClickTag
    , ClickTag
    , clickTag
    , ctValue
    , ctName
    , ctEventName

    -- ** ClickThroughUrl
    , ClickThroughUrl
    , clickThroughUrl
    , ctuDefaultLandingPage
    , ctuComputedClickThroughUrl
    , ctuCustomClickThroughUrl
    , ctuLandingPageId

    -- ** ClickThroughUrlSuffixProperties
    , ClickThroughUrlSuffixProperties
    , clickThroughUrlSuffixProperties
    , ctuspOverrideInheritedSuffix
    , ctuspClickThroughUrlSuffix

    -- ** CompanionClickThroughOverride
    , CompanionClickThroughOverride
    , companionClickThroughOverride
    , cctoCreativeId
    , cctoClickThroughUrl

    -- ** CompatibleFields
    , CompatibleFields
    , compatibleFields
    , cfReachReportCompatibleFields
    , cfCrossDimensionReachReportCompatibleFields
    , cfKind
    , cfFloodlightReportCompatibleFields
    , cfReportCompatibleFields
    , cfPathToConversionReportCompatibleFields

    -- ** ConnectionType
    , ConnectionType
    , connectionType
    , conKind
    , conName
    , conId

    -- ** ConnectionTypesListResponse
    , ConnectionTypesListResponse
    , connectionTypesListResponse
    , ctlrKind
    , ctlrConnectionTypes

    -- ** ContentCategoriesListResponse
    , ContentCategoriesListResponse
    , contentCategoriesListResponse
    , cclrNextPageToken
    , cclrKind
    , cclrContentCategories

    -- ** ContentCategory
    , ContentCategory
    , contentCategory
    , cccKind
    , cccAccountId
    , cccName
    , cccId

    -- ** CountriesListResponse
    , CountriesListResponse
    , countriesListResponse
    , clrKind
    , clrCountries

    -- ** Country
    , Country
    , country
    , couKind
    , couName
    , couCountryCode
    , couDartId
    , couSslEnabled

    -- ** Creative
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

    -- ** CreativeArtworkType
    , CreativeArtworkType (..)

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

    -- ** CreativeAssetAlignment
    , CreativeAssetAlignment (..)

    -- ** CreativeAssetArtworkType
    , CreativeAssetArtworkType (..)

    -- ** CreativeAssetChildAssetType
    , CreativeAssetChildAssetType (..)

    -- ** CreativeAssetDisplayType
    , CreativeAssetDisplayType (..)

    -- ** CreativeAssetDurationType
    , CreativeAssetDurationType (..)

    -- ** CreativeAssetId
    , CreativeAssetId
    , creativeAssetId
    , caiName
    , caiType

    -- ** CreativeAssetIdType
    , CreativeAssetIdType (..)

    -- ** CreativeAssetItemDetectedFeatures
    , CreativeAssetItemDetectedFeatures (..)

    -- ** CreativeAssetMetadata
    , CreativeAssetMetadata
    , creativeAssetMetadata
    , camaKind
    , camaAssetIdentifier
    , camaClickTags
    , camaWarnedValidationRules
    , camaDetectedFeatures

    -- ** CreativeAssetMetadataItemDetectedFeatures
    , CreativeAssetMetadataItemDetectedFeatures (..)

    -- ** CreativeAssetMetadataItemWarnedValidationRules
    , CreativeAssetMetadataItemWarnedValidationRules (..)

    -- ** CreativeAssetPositionLeftUnit
    , CreativeAssetPositionLeftUnit (..)

    -- ** CreativeAssetPositionTopUnit
    , CreativeAssetPositionTopUnit (..)

    -- ** CreativeAssetRole
    , CreativeAssetRole (..)

    -- ** CreativeAssetStartTimeType
    , CreativeAssetStartTimeType (..)

    -- ** CreativeAssetWindowMode
    , CreativeAssetWindowMode (..)

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

    -- ** CreativeAuthoringTool
    , CreativeAuthoringTool (..)

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

    -- ** CreativeCustomEventAdvertiserCustomEventType
    , CreativeCustomEventAdvertiserCustomEventType (..)

    -- ** CreativeCustomEventArtworkType
    , CreativeCustomEventArtworkType (..)

    -- ** CreativeCustomEventTargetType
    , CreativeCustomEventTargetType (..)

    -- ** CreativeField
    , CreativeField
    , creativeField
    , creKind
    , creAdvertiserId
    , creAdvertiserIdDimensionValue
    , creAccountId
    , creName
    , creId
    , creSubaccountId

    -- ** CreativeFieldAssignment
    , CreativeFieldAssignment
    , creativeFieldAssignment
    , cfaCreativeFieldId
    , cfaCreativeFieldValueId

    -- ** CreativeFieldValue
    , CreativeFieldValue
    , creativeFieldValue
    , cfvKind
    , cfvValue
    , cfvId

    -- ** CreativeFieldValuesListResponse
    , CreativeFieldValuesListResponse
    , creativeFieldValuesListResponse
    , cfvlrNextPageToken
    , cfvlrKind
    , cfvlrCreativeFieldValues

    -- ** CreativeFieldsListResponse
    , CreativeFieldsListResponse
    , creativeFieldsListResponse
    , cflrNextPageToken
    , cflrKind
    , cflrCreativeFields

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

    -- ** CreativeGroupAssignment
    , CreativeGroupAssignment
    , creativeGroupAssignment
    , cgaCreativeGroupNumber
    , cgaCreativeGroupId

    -- ** CreativeGroupAssignmentCreativeGroupNumber
    , CreativeGroupAssignmentCreativeGroupNumber (..)

    -- ** CreativeGroupsListResponse
    , CreativeGroupsListResponse
    , creativeGroupsListResponse
    , cglrCreativeGroups
    , cglrNextPageToken
    , cglrKind

    -- ** CreativeItemBackupImageFeatures
    , CreativeItemBackupImageFeatures (..)

    -- ** CreativeItemCompatibility
    , CreativeItemCompatibility (..)

    -- ** CreativeOptimizationConfiguration
    , CreativeOptimizationConfiguration
    , creativeOptimizationConfiguration
    , cocOptimizationModel
    , cocName
    , cocOptimizationActivitys
    , cocId

    -- ** CreativeOptimizationConfigurationOptimizationModel
    , CreativeOptimizationConfigurationOptimizationModel (..)

    -- ** CreativeRotation
    , CreativeRotation
    , creativeRotation
    , crWeightCalculationStrategy
    , crCreativeAssignments
    , crCreativeOptimizationConfigurationId
    , crType

    -- ** CreativeRotationType
    , CreativeRotationType (..)

    -- ** CreativeRotationWeightCalculationStrategy
    , CreativeRotationWeightCalculationStrategy (..)

    -- ** CreativeSettings
    , CreativeSettings
    , creativeSettings
    , csIFrameHeader
    , csIFrameFooter

    -- ** CreativeType
    , CreativeType (..)

    -- ** CreativesListResponse
    , CreativesListResponse
    , creativesListResponse
    , crerNextPageToken
    , crerKind
    , crerCreatives

    -- ** CrossDimensionReachReportCompatibleFields
    , CrossDimensionReachReportCompatibleFields
    , crossDimensionReachReportCompatibleFields
    , cdrrcfMetrics
    , cdrrcfBreakdown
    , cdrrcfKind
    , cdrrcfDimensionFilters
    , cdrrcfOverlapMetrics

    -- ** CustomRichMediaEvents
    , CustomRichMediaEvents
    , customRichMediaEvents
    , crmeKind
    , crmeFilteredEventIds

    -- ** DateRange
    , DateRange
    , dateRange
    , drKind
    , drEndDate
    , drStartDate
    , drRelativeDateRange

    -- ** DateRangeRelativeDateRange
    , DateRangeRelativeDateRange (..)

    -- ** DayPartTargeting
    , DayPartTargeting
    , dayPartTargeting
    , dptDaysOfWeek
    , dptHoursOfDay
    , dptUserLocalTime

    -- ** DayPartTargetingItemDaysOfWeek
    , DayPartTargetingItemDaysOfWeek (..)

    -- ** DefaultClickThroughEventTagProperties
    , DefaultClickThroughEventTagProperties
    , defaultClickThroughEventTagProperties
    , dctetpOverrideInheritedEventTag
    , dctetpDefaultClickThroughEventTagId

    -- ** DeliverySchedule
    , DeliverySchedule
    , deliverySchedule
    , dsHardCutoff
    , dsPriority
    , dsImpressionRatio
    , dsFrequencyCap

    -- ** DeliverySchedulePriority
    , DeliverySchedulePriority (..)

    -- ** DfpSettings
    , DfpSettings
    , dfpSettings
    , dsPubPaidPlacementAccepted
    , dsDfpNetworkName
    , dsPublisherPortalOnly
    , dsProgrammaticPlacementAccepted
    , dsDfpNetworkCode

    -- ** Dimension
    , Dimension
    , dimension
    , dKind
    , dName

    -- ** DimensionFilter
    , DimensionFilter
    , dimensionFilter
    , dfKind
    , dfValue
    , dfDimensionName

    -- ** DimensionValue
    , DimensionValue
    , dimensionValue
    , dvEtag
    , dvKind
    , dvValue
    , dvMatchType
    , dvDimensionName
    , dvId

    -- ** DimensionValueList
    , DimensionValueList
    , dimensionValueList
    , dvlEtag
    , dvlNextPageToken
    , dvlKind
    , dvlItems

    -- ** DimensionValueMatchType
    , DimensionValueMatchType (..)

    -- ** DimensionValueRequest
    , DimensionValueRequest
    , dimensionValueRequest
    , dvrKind
    , dvrEndDate
    , dvrFilters
    , dvrStartDate
    , dvrDimensionName

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

    -- ** DirectorySiteContactAssignment
    , DirectorySiteContactAssignment
    , directorySiteContactAssignment
    , dscaVisibility
    , dscaContactId

    -- ** DirectorySiteContactAssignmentVisibility
    , DirectorySiteContactAssignmentVisibility (..)

    -- ** DirectorySiteContactRole
    , DirectorySiteContactRole (..)

    -- ** DirectorySiteContactType
    , DirectorySiteContactType (..)

    -- ** DirectorySiteContactsListResponse
    , DirectorySiteContactsListResponse
    , directorySiteContactsListResponse
    , dsclrNextPageToken
    , dsclrKind
    , dsclrDirectorySiteContacts

    -- ** DirectorySiteItemInpageTagFormats
    , DirectorySiteItemInpageTagFormats (..)

    -- ** DirectorySiteItemInterstitialTagFormats
    , DirectorySiteItemInterstitialTagFormats (..)

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

    -- ** DirectorySitesListResponse
    , DirectorySitesListResponse
    , directorySitesListResponse
    , dslrNextPageToken
    , dslrKind
    , dslrDirectorySites

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

    -- ** EventTagOverride
    , EventTagOverride
    , eventTagOverride
    , etoEnabled
    , etoId

    -- ** EventTagSiteFilterType
    , EventTagSiteFilterType (..)

    -- ** EventTagStatus
    , EventTagStatus (..)

    -- ** EventTagType
    , EventTagType (..)

    -- ** EventTagsListResponse
    , EventTagsListResponse
    , eventTagsListResponse
    , etlrKind
    , etlrEventTags

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

    -- ** FileFormat
    , FileFormat (..)

    -- ** FileList
    , FileList
    , fileList
    , flEtag
    , flNextPageToken
    , flKind
    , flItems

    -- ** FileStatus
    , FileStatus (..)

    -- ** FileUrls
    , FileUrls
    , fileUrls
    , fuBrowserUrl
    , fuApiUrl

    -- ** Flight
    , Flight
    , flight
    , fRateOrCost
    , fEndDate
    , fStartDate
    , fUnits

    -- ** FloodlightActivitiesGenerateTagResponse
    , FloodlightActivitiesGenerateTagResponse
    , floodlightActivitiesGenerateTagResponse
    , fagtrFloodlightActivityTag
    , fagtrKind

    -- ** FloodlightActivitiesListResponse
    , FloodlightActivitiesListResponse
    , floodlightActivitiesListResponse
    , falrNextPageToken
    , falrKind
    , falrFloodlightActivities

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

    -- ** FloodlightActivityCacheBustingType
    , FloodlightActivityCacheBustingType (..)

    -- ** FloodlightActivityCountingMethod
    , FloodlightActivityCountingMethod (..)

    -- ** FloodlightActivityDynamicTag
    , FloodlightActivityDynamicTag
    , floodlightActivityDynamicTag
    , fadtTag
    , fadtName
    , fadtId

    -- ** FloodlightActivityFloodlightActivityGroupType
    , FloodlightActivityFloodlightActivityGroupType (..)

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

    -- ** FloodlightActivityGroupType
    , FloodlightActivityGroupType (..)

    -- ** FloodlightActivityGroupsListResponse
    , FloodlightActivityGroupsListResponse
    , floodlightActivityGroupsListResponse
    , faglrNextPageToken
    , faglrKind
    , faglrFloodlightActivityGroups

    -- ** FloodlightActivityItemUserDefinedVariableTypes
    , FloodlightActivityItemUserDefinedVariableTypes (..)

    -- ** FloodlightActivityPublisherDynamicTag
    , FloodlightActivityPublisherDynamicTag
    , floodlightActivityPublisherDynamicTag
    , fapdtClickThrough
    , fapdtSiteIdDimensionValue
    , fapdtDynamicTag
    , fapdtDirectorySiteId
    , fapdtSiteId
    , fapdtViewThrough

    -- ** FloodlightActivityTagFormat
    , FloodlightActivityTagFormat (..)

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

    -- ** FloodlightConfigurationFirstDayOfWeek
    , FloodlightConfigurationFirstDayOfWeek (..)

    -- ** FloodlightConfigurationItemStandardVariableTypes
    , FloodlightConfigurationItemStandardVariableTypes (..)

    -- ** FloodlightConfigurationNaturalSearchConversionAttributionOption
    , FloodlightConfigurationNaturalSearchConversionAttributionOption (..)

    -- ** FloodlightConfigurationsListResponse
    , FloodlightConfigurationsListResponse
    , floodlightConfigurationsListResponse
    , fclrKind
    , fclrFloodlightConfigurations

    -- ** FloodlightReportCompatibleFields
    , FloodlightReportCompatibleFields
    , floodlightReportCompatibleFields
    , frcfMetrics
    , frcfKind
    , frcfDimensionFilters
    , frcfDimensions

    -- ** FrequencyCap
    , FrequencyCap
    , frequencyCap
    , fcImpressions
    , fcDuration

    -- ** FsCommand
    , FsCommand
    , fsCommand
    , fcPositionOption
    , fcLeft
    , fcWindowHeight
    , fcWindowWidth
    , fcTop

    -- ** FsCommandPositionOption
    , FsCommandPositionOption (..)

    -- ** GeoTargeting
    , GeoTargeting
    , geoTargeting
    , gtRegions
    , gtCountries
    , gtCities
    , gtMetros
    , gtExcludeCountries
    , gtPostalCodes

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

    -- ** InventoryItemsListResponse
    , InventoryItemsListResponse
    , inventoryItemsListResponse
    , iilrInventoryItems
    , iilrNextPageToken
    , iilrKind

    -- ** KeyValueTargetingExpression
    , KeyValueTargetingExpression
    , keyValueTargetingExpression
    , kvteExpression

    -- ** LandingPage
    , LandingPage
    , landingPage
    , lpKind
    , lpDefault
    , lpUrl
    , lpName
    , lpId

    -- ** LandingPagesListResponse
    , LandingPagesListResponse
    , landingPagesListResponse
    , lplrLandingPages
    , lplrKind

    -- ** LastModifiedInfo
    , LastModifiedInfo
    , lastModifiedInfo
    , lmiTime

    -- ** ListPopulationClause
    , ListPopulationClause
    , listPopulationClause
    , lpcTerms

    -- ** ListPopulationRule
    , ListPopulationRule
    , listPopulationRule
    , lprFloodlightActivityName
    , lprFloodlightActivityId
    , lprListPopulationClauses

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

    -- ** ListPopulationTermOperator
    , ListPopulationTermOperator (..)

    -- ** ListPopulationTermType
    , ListPopulationTermType (..)

    -- ** ListTargetingExpression
    , ListTargetingExpression
    , listTargetingExpression
    , lteExpression

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

    -- ** MetrosListResponse
    , MetrosListResponse
    , metrosListResponse
    , mlrKind
    , mlrMetros

    -- ** MobileCarrier
    , MobileCarrier
    , mobileCarrier
    , mcKind
    , mcName
    , mcCountryCode
    , mcId
    , mcCountryDartId

    -- ** MobileCarriersListResponse
    , MobileCarriersListResponse
    , mobileCarriersListResponse
    , mclrMobileCarriers
    , mclrKind

    -- ** ObjectFilter
    , ObjectFilter
    , objectFilter
    , ofStatus
    , ofKind
    , ofObjectIds

    -- ** ObjectFilterStatus
    , ObjectFilterStatus (..)

    -- ** OffsetPosition
    , OffsetPosition
    , offsetPosition
    , opLeft
    , opTop

    -- ** OmnitureSettings
    , OmnitureSettings
    , omnitureSettings
    , osOmnitureCostDataEnabled
    , osOmnitureIntegrationEnabled

    -- ** OperatingSystem
    , OperatingSystem
    , operatingSystem
    , osDesktop
    , osKind
    , osName
    , osMobile
    , osDartId

    -- ** OperatingSystemVersion
    , OperatingSystemVersion
    , operatingSystemVersion
    , osvMinorVersion
    , osvKind
    , osvOperatingSystem
    , osvMajorVersion
    , osvName
    , osvId

    -- ** OperatingSystemVersionsListResponse
    , OperatingSystemVersionsListResponse
    , operatingSystemVersionsListResponse
    , osvlrKind
    , osvlrOperatingSystemVersions

    -- ** OperatingSystemsListResponse
    , OperatingSystemsListResponse
    , operatingSystemsListResponse
    , oslrKind
    , oslrOperatingSystems

    -- ** OptimizationActivity
    , OptimizationActivity
    , optimizationActivity
    , oaWeight
    , oaFloodlightActivityId
    , oaFloodlightActivityIdDimensionValue

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

    -- ** OrderContact
    , OrderContact
    , orderContact
    , ocSignatureUserProfileId
    , ocContactName
    , ocContactTitle
    , ocContactType
    , ocContactInfo

    -- ** OrderContactContactType
    , OrderContactContactType (..)

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

    -- ** OrderDocumentType
    , OrderDocumentType (..)

    -- ** OrderDocumentsListResponse
    , OrderDocumentsListResponse
    , orderDocumentsListResponse
    , odlrNextPageToken
    , odlrKind
    , odlrOrderDocuments

    -- ** OrdersListResponse
    , OrdersListResponse
    , ordersListResponse
    , olrNextPageToken
    , olrKind
    , olrOrders

    -- ** PathToConversionReportCompatibleFields
    , PathToConversionReportCompatibleFields
    , pathToConversionReportCompatibleFields
    , ptcrcfMetrics
    , ptcrcfKind
    , ptcrcfConversionDimensions
    , ptcrcfCustomFloodlightVariables
    , ptcrcfPerInteractionDimensions

    -- ** Placement
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

    -- ** PlacementAssignment
    , PlacementAssignment
    , placementAssignment
    , paPlacementId
    , paPlacementIdDimensionValue
    , paActive
    , paSslRequired

    -- ** PlacementCompatibility
    , PlacementCompatibility (..)

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

    -- ** PlacementGroupPlacementGroupType
    , PlacementGroupPlacementGroupType (..)

    -- ** PlacementGroupsListResponse
    , PlacementGroupsListResponse
    , placementGroupsListResponse
    , pglrNextPageToken
    , pglrKind
    , pglrPlacementGroups

    -- ** PlacementItemTagFormats
    , PlacementItemTagFormats (..)

    -- ** PlacementPaymentSource
    , PlacementPaymentSource (..)

    -- ** PlacementStatus
    , PlacementStatus (..)

    -- ** PlacementStrategiesListResponse
    , PlacementStrategiesListResponse
    , placementStrategiesListResponse
    , pslrPlacementStrategies
    , pslrNextPageToken
    , pslrKind

    -- ** PlacementStrategy
    , PlacementStrategy
    , placementStrategy
    , psKind
    , psAccountId
    , psName
    , psId

    -- ** PlacementTag
    , PlacementTag
    , placementTag
    , ptPlacementId
    , ptTagDatas

    -- ** PlacementsGenerateTagsResponse
    , PlacementsGenerateTagsResponse
    , placementsGenerateTagsResponse
    , pgtrKind
    , pgtrPlacementTags

    -- ** PlacementsListResponse
    , PlacementsListResponse
    , placementsListResponse
    , plrNextPageToken
    , plrKind
    , plrPlacements

    -- ** PlatformType
    , PlatformType
    , platformType
    , ptKind
    , ptName
    , ptId

    -- ** PlatformTypesListResponse
    , PlatformTypesListResponse
    , platformTypesListResponse
    , ptlrKind
    , ptlrPlatformTypes

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

    -- ** PopupWindowPropertiesPositionType
    , PopupWindowPropertiesPositionType (..)

    -- ** PostalCode
    , PostalCode
    , postalCode
    , pcKind
    , pcCode
    , pcCountryCode
    , pcId
    , pcCountryDartId

    -- ** PostalCodesListResponse
    , PostalCodesListResponse
    , postalCodesListResponse
    , pclrKind
    , pclrPostalCodes

    -- ** Pricing
    , Pricing
    , pricing
    , pEndDate
    , pStartDate
    , pGroupType
    , pPricingType
    , pFlights
    , pCapCostType

    -- ** PricingCapCostType
    , PricingCapCostType (..)

    -- ** PricingGroupType
    , PricingGroupType (..)

    -- ** PricingPricingType
    , PricingPricingType (..)

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

    -- ** PricingScheduleCapCostOption
    , PricingScheduleCapCostOption (..)

    -- ** PricingSchedulePricingPeriod
    , PricingSchedulePricingPeriod
    , pricingSchedulePricingPeriod
    , psppEndDate
    , psppRateOrCostNanos
    , psppStartDate
    , psppUnits
    , psppPricingComment

    -- ** PricingSchedulePricingType
    , PricingSchedulePricingType (..)

    -- ** Project
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

    -- ** ProjectAudienceAgeGroup
    , ProjectAudienceAgeGroup (..)

    -- ** ProjectAudienceGender
    , ProjectAudienceGender (..)

    -- ** ProjectsListResponse
    , ProjectsListResponse
    , projectsListResponse
    , proNextPageToken
    , proKind
    , proProjects

    -- ** ReachReportCompatibleFields
    , ReachReportCompatibleFields
    , reachReportCompatibleFields
    , rrcfMetrics
    , rrcfReachByFrequencyMetrics
    , rrcfKind
    , rrcfDimensionFilters
    , rrcfPivotedActivityMetrics
    , rrcfDimensions

    -- ** Recipient
    , Recipient
    , recipient
    , recEmail
    , recKind
    , recDeliveryType

    -- ** RecipientDeliveryType
    , RecipientDeliveryType (..)

    -- ** Region
    , Region
    , region
    , rRegionCode
    , rKind
    , rName
    , rCountryCode
    , rCountryDartId
    , rDartId

    -- ** RegionsListResponse
    , RegionsListResponse
    , regionsListResponse
    , rlrKind
    , rlrRegions

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

    -- ** RemarketingListListSource
    , RemarketingListListSource (..)

    -- ** RemarketingListShare
    , RemarketingListShare
    , remarketingListShare
    , rlsSharedAdvertiserIds
    , rlsKind
    , rlsRemarketingListId
    , rlsSharedAccountIds

    -- ** RemarketingListsListResponse
    , RemarketingListsListResponse
    , remarketingListsListResponse
    , rllrNextPageToken
    , rllrRemarketingLists
    , rllrKind

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

    -- ** ReportCompatibleFields
    , ReportCompatibleFields
    , reportCompatibleFields
    , rcfMetrics
    , rcfKind
    , rcfDimensionFilters
    , rcfPivotedActivityMetrics
    , rcfDimensions

    -- ** ReportCriteria
    , ReportCriteria
    , reportCriteria
    , rcMetricNames
    , rcCustomRichMediaEvents
    , rcDimensionFilters
    , rcActivities
    , rcDateRange
    , rcDimensions

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

    -- ** ReportDelivery
    , ReportDelivery
    , reportDelivery
    , rdEmailOwner
    , rdRecipients
    , rdMessage
    , rdEmailOwnerDeliveryType

    -- ** ReportDimensionCrossDimensionReachCriteria
    , ReportDimensionCrossDimensionReachCriteria (..)

    -- ** ReportEmailOwnerDeliveryTypeDelivery
    , ReportEmailOwnerDeliveryTypeDelivery (..)

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

    -- ** ReportFormat
    , ReportFormat (..)

    -- ** ReportItemRepeatsOnWeekDaysSchedule
    , ReportItemRepeatsOnWeekDaysSchedule (..)

    -- ** ReportList
    , ReportList
    , reportList
    , rlEtag
    , rlNextPageToken
    , rlKind
    , rlItems

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

    -- ** ReportReportPropertiesFloodlightCriteria
    , ReportReportPropertiesFloodlightCriteria
    , reportReportPropertiesFloodlightCriteria
    , rrpfcIncludeUnattributedIPConversions
    , rrpfcIncludeUnattributedCookieConversions
    , rrpfcIncludeAttributedIPConversions

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

    -- ** ReportRunsOnDayOfMonthSchedule
    , ReportRunsOnDayOfMonthSchedule (..)

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

    -- ** ReportType
    , ReportType (..)

    -- ** ReportsConfiguration
    , ReportsConfiguration
    , reportsConfiguration
    , rcExposureToConversionEnabled
    , rcReportGenerationTimeZoneId
    , rcLookbackConfiguration

    -- ** RichMediaExitOverride
    , RichMediaExitOverride
    , richMediaExitOverride
    , rmeoUseCustomExitUrl
    , rmeoExitId
    , rmeoCustomExitUrl

    -- ** Site
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

    -- ** SiteContactContactType
    , SiteContactContactType (..)

    -- ** SiteSettings
    , SiteSettings
    , siteSettings
    , ssDisableNewCookie
    , ssDisableBrandSafeAds
    , ssLookbackConfiguration
    , ssTagSetting
    , ssActiveViewOptOut
    , ssCreativeSettings

    -- ** SitesListResponse
    , SitesListResponse
    , sitesListResponse
    , slrNextPageToken
    , slrKind
    , slrSites

    -- ** Size
    , Size
    , size
    , ssHeight
    , ssKind
    , ssWidth
    , ssIab
    , ssId

    -- ** SizesListResponse
    , SizesListResponse
    , sizesListResponse
    , sizKind
    , sizSizes

    -- ** SortedDimension
    , SortedDimension
    , sortedDimension
    , sdKind
    , sdSortOrder
    , sdName

    -- ** SortedDimensionSortOrder
    , SortedDimensionSortOrder (..)

    -- ** Subaccount
    , Subaccount
    , subaccount
    , subuKind
    , subuAvailablePermissionIds
    , subuAccountId
    , subuName
    , subuId

    -- ** SubaccountsListResponse
    , SubaccountsListResponse
    , subaccountsListResponse
    , subNextPageToken
    , subKind
    , subSubaccounts

    -- ** TagData
    , TagData
    , tagData
    , tdClickTag
    , tdFormat
    , tdCreativeId
    , tdAdId
    , tdImpressionTag

    -- ** TagDataFormat
    , TagDataFormat (..)

    -- ** TagSetting
    , TagSetting
    , tagSetting
    , tsKeywordOption
    , tsIncludeClickThroughUrls
    , tsIncludeClickTracking
    , tsAdditionalKeyValues

    -- ** TagSettingKeywordOption
    , TagSettingKeywordOption (..)

    -- ** TagSettings
    , TagSettings
    , tagSettings
    , tsDynamicTagEnabled
    , tsImageTagEnabled

    -- ** TargetWindow
    , TargetWindow
    , targetWindow
    , twCustomHtml
    , twTargetWindowOption

    -- ** TargetWindowTargetWindowOption
    , TargetWindowTargetWindowOption (..)

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

    -- ** TargetableRemarketingListListSource
    , TargetableRemarketingListListSource (..)

    -- ** TargetableRemarketingListsListResponse
    , TargetableRemarketingListsListResponse
    , targetableRemarketingListsListResponse
    , trllrNextPageToken
    , trllrKind
    , trllrTargetableRemarketingLists

    -- ** TechnologyTargeting
    , TechnologyTargeting
    , technologyTargeting
    , ttMobileCarriers
    , ttOperatingSystemVersions
    , ttPlatformTypes
    , ttBrowsers
    , ttConnectionTypes
    , ttOperatingSystems

    -- ** ThirdPartyAuthenticationToken
    , ThirdPartyAuthenticationToken
    , thirdPartyAuthenticationToken
    , tpatValue
    , tpatName

    -- ** ThirdPartyTrackingUrl
    , ThirdPartyTrackingUrl
    , thirdPartyTrackingUrl
    , tptuUrl
    , tptuThirdPartyUrlType

    -- ** ThirdPartyTrackingUrlThirdPartyUrlType
    , ThirdPartyTrackingUrlThirdPartyUrlType (..)

    -- ** UserDefinedVariableConfiguration
    , UserDefinedVariableConfiguration
    , userDefinedVariableConfiguration
    , udvcReportName
    , udvcDataType
    , udvcVariableType

    -- ** UserDefinedVariableConfigurationDataType
    , UserDefinedVariableConfigurationDataType (..)

    -- ** UserDefinedVariableConfigurationVariableType
    , UserDefinedVariableConfigurationVariableType (..)

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

    -- ** UserProfileList
    , UserProfileList
    , userProfileList
    , uplEtag
    , uplKind
    , uplItems

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

    -- ** UserRolePermission
    , UserRolePermission
    , userRolePermission
    , urpKind
    , urpAvailability
    , urpName
    , urpId
    , urpPermissionGroupId

    -- ** UserRolePermissionAvailability
    , UserRolePermissionAvailability (..)

    -- ** UserRolePermissionGroup
    , UserRolePermissionGroup
    , userRolePermissionGroup
    , urpgKind
    , urpgName
    , urpgId

    -- ** UserRolePermissionGroupsListResponse
    , UserRolePermissionGroupsListResponse
    , userRolePermissionGroupsListResponse
    , urpglrUserRolePermissionGroups
    , urpglrKind

    -- ** UserRolePermissionsListResponse
    , UserRolePermissionsListResponse
    , userRolePermissionsListResponse
    , urplrKind
    , urplrUserRolePermissions

    -- ** UserRolesListResponse
    , UserRolesListResponse
    , userRolesListResponse
    , urlrNextPageToken
    , urlrKind
    , urlrUserRoles
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

{- $resources
TODO
-}

type DFAReporting =
     PlacementStrategiesAPI :<|>
       CampaignCreativeAssociationsAPI :<|>
         CreativeGroupsAPI :<|>
           MobileCarriersAPI :<|>
             LandingPagesAPI :<|>
               RemarketingListSharesAPI :<|>
                 AccountActiveAdSummariesAPI :<|>
                   UserRolePermissionGroupsAPI :<|>
                     RemarketingListsAPI :<|>
                       AccountsAPI :<|>
                         ReportsAPI :<|>
                           CampaignsAPI :<|>
                             AccountUserProfilesAPI :<|>
                               CreativesAPI :<|>
                                 DimensionValuesAPI :<|>
                                   FloodlightConfigurationsAPI :<|>
                                     RegionsAPI :<|>
                                       FloodlightActivitiesAPI :<|>
                                         AccountPermissionGroupsAPI :<|>
                                           AdvertisersAPI :<|>
                                             CountriesAPI :<|>
                                               UserRolesAPI :<|>
                                                 UserProfilesAPI :<|>
                                                   OperatingSystemVersionsAPI
                                                     :<|>
                                                     AccountPermissionsAPI :<|>
                                                       CitiesAPI :<|>
                                                         ChangeLogsAPI :<|>
                                                           TargetableRemarketingListsAPI
                                                             :<|>
                                                             PlatformTypesAPI
                                                               :<|>
                                                               ContentCategoriesAPI
                                                                 :<|>
                                                                 BrowsersAPI
                                                                   :<|>
                                                                   PlacementsAPI
                                                                     :<|>
                                                                     MetrosAPI
                                                                       :<|>
                                                                       CreativeFieldsAPI
                                                                         :<|>
                                                                         OrderDocumentsAPI
                                                                           :<|>
                                                                           FilesAPI
                                                                             :<|>
                                                                             ConnectionTypesAPI
                                                                               :<|>
                                                                               PlacementGroupsAPI
                                                                                 :<|>
                                                                                 EventTagsAPI
                                                                                   :<|>
                                                                                   OrdersAPI
                                                                                     :<|>
                                                                                     UserRolePermissionsAPI
                                                                                       :<|>
                                                                                       CreativeAssetsAPI
                                                                                         :<|>
                                                                                         SitesAPI
                                                                                           :<|>
                                                                                           OperatingSystemsAPI
                                                                                             :<|>
                                                                                             PostalCodesAPI
                                                                                               :<|>
                                                                                               SizesAPI
                                                                                                 :<|>
                                                                                                 AdsAPI
                                                                                                   :<|>
                                                                                                   ProjectsAPI
                                                                                                     :<|>
                                                                                                     SubaccountsAPI
                                                                                                       :<|>
                                                                                                       AdvertiserGroupsAPI
                                                                                                         :<|>
                                                                                                         CreativeFieldValuesAPI
                                                                                                           :<|>
                                                                                                           DirectorySiteContactsAPI
                                                                                                             :<|>
                                                                                                             DirectorySitesAPI
                                                                                                               :<|>
                                                                                                               FloodlightActivityGroupsAPI
                                                                                                                 :<|>
                                                                                                                 InventoryItemsAPI

type InventoryItemsAPI =
     InventoryItemsGet :<|> InventoryItemsList

-- | Retrieves a list of inventory items, possibly filtered.
type InventoryItemsList =
     "dfareporting" :> "v2.2" :> "userprofiles" :>
       Capture "profileId" Int64
       :> "projects"
       :> Capture "projectId" Int64
       :> "inventoryItems"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "ids" Int64
       :> QueryParam "sortOrder" Text
       :> QueryParam "inPlan" Bool
       :> QueryParam "key" Text
       :> QueryParam "pageToken" Text
       :> QueryParam "sortField" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "orderId" Int64
       :> QueryParam "siteId" Int64
       :> QueryParam "maxResults" Int32
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Gets one inventory item by ID.
type InventoryItemsGet =
     "dfareporting" :> "v2.2" :> "userprofiles" :>
       Capture "profileId" Int64
       :> "projects"
       :> Capture "projectId" Int64
       :> "inventoryItems"
       :> Capture "id" Int64
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

type PlacementStrategiesAPI =
     PlacementStrategiesList :<|>
       PlacementStrategiesPatch :<|>
         PlacementStrategiesGet :<|>
           PlacementStrategiesDelete :<|>
             PlacementStrategiesUpdate :<|>
               PlacementStrategiesInsert

-- | Inserts a new placement strategy.
type PlacementStrategiesInsert =
     "dfareporting" :> "v2.2" :> "userprofiles" :>
       Capture "profileId" Int64
       :> "placementStrategies"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Retrieves a list of placement strategies, possibly filtered.
type PlacementStrategiesList =
     "dfareporting" :> "v2.2" :> "userprofiles" :>
       Capture "profileId" Int64
       :> "placementStrategies"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "searchString" Text
       :> QueryParam "ids" Int64
       :> QueryParam "sortOrder" Text
       :> QueryParam "key" Text
       :> QueryParam "pageToken" Text
       :> QueryParam "sortField" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "maxResults" Int32
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Updates an existing placement strategy. This method supports patch
-- semantics.
type PlacementStrategiesPatch =
     "dfareporting" :> "v2.2" :> "userprofiles" :>
       Capture "profileId" Int64
       :> "placementStrategies"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "id" Int64
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Gets one placement strategy by ID.
type PlacementStrategiesGet =
     "dfareporting" :> "v2.2" :> "userprofiles" :>
       Capture "profileId" Int64
       :> "placementStrategies"
       :> Capture "id" Int64
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Deletes an existing placement strategy.
type PlacementStrategiesDelete =
     "dfareporting" :> "v2.2" :> "userprofiles" :>
       Capture "profileId" Int64
       :> "placementStrategies"
       :> Capture "id" Int64
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Updates an existing placement strategy.
type PlacementStrategiesUpdate =
     "dfareporting" :> "v2.2" :> "userprofiles" :>
       Capture "profileId" Int64
       :> "placementStrategies"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

type CampaignCreativeAssociationsAPI =
     CampaignCreativeAssociationsList :<|>
       CampaignCreativeAssociationsInsert

-- | Associates a creative with the specified campaign. This method creates a
-- default ad with dimensions matching the creative in the campaign if such
-- a default ad does not exist already.
type CampaignCreativeAssociationsInsert =
     "dfareporting" :> "v2.2" :> "userprofiles" :>
       Capture "profileId" Int64
       :> "campaigns"
       :> Capture "campaignId" Int64
       :> "campaignCreativeAssociations"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Retrieves the list of creative IDs associated with the specified
-- campaign.
type CampaignCreativeAssociationsList =
     "dfareporting" :> "v2.2" :> "userprofiles" :>
       Capture "profileId" Int64
       :> "campaigns"
       :> Capture "campaignId" Int64
       :> "campaignCreativeAssociations"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "sortOrder" Text
       :> QueryParam "key" Text
       :> QueryParam "pageToken" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "maxResults" Int32
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

type CreativeGroupsAPI =
     CreativeGroupsList :<|>
       CreativeGroupsPatch :<|>
         CreativeGroupsGet :<|>
           CreativeGroupsUpdate :<|> CreativeGroupsInsert

-- | Inserts a new creative group.
type CreativeGroupsInsert =
     "dfareporting" :> "v2.2" :> "userprofiles" :>
       Capture "profileId" Int64
       :> "creativeGroups"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Retrieves a list of creative groups, possibly filtered.
type CreativeGroupsList =
     "dfareporting" :> "v2.2" :> "userprofiles" :>
       Capture "profileId" Int64
       :> "creativeGroups"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "searchString" Text
       :> QueryParam "ids" Int64
       :> QueryParam "sortOrder" Text
       :> QueryParam "groupNumber" Int32
       :> QueryParam "key" Text
       :> QueryParam "pageToken" Text
       :> QueryParam "sortField" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "advertiserIds" Int64
       :> QueryParam "maxResults" Int32
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Updates an existing creative group. This method supports patch
-- semantics.
type CreativeGroupsPatch =
     "dfareporting" :> "v2.2" :> "userprofiles" :>
       Capture "profileId" Int64
       :> "creativeGroups"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "id" Int64
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Gets one creative group by ID.
type CreativeGroupsGet =
     "dfareporting" :> "v2.2" :> "userprofiles" :>
       Capture "profileId" Int64
       :> "creativeGroups"
       :> Capture "id" Int64
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Updates an existing creative group.
type CreativeGroupsUpdate =
     "dfareporting" :> "v2.2" :> "userprofiles" :>
       Capture "profileId" Int64
       :> "creativeGroups"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

type MobileCarriersAPI =
     MobileCarriersGet :<|> MobileCarriersList

-- | Retrieves a list of mobile carriers.
type MobileCarriersList =
     "dfareporting" :> "v2.2" :> "userprofiles" :>
       Capture "profileId" Int64
       :> "mobileCarriers"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Gets one mobile carrier by ID.
type MobileCarriersGet =
     "dfareporting" :> "v2.2" :> "userprofiles" :>
       Capture "profileId" Int64
       :> "mobileCarriers"
       :> Capture "id" Int64
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

type LandingPagesAPI =
     LandingPagesList :<|>
       LandingPagesPatch :<|>
         LandingPagesGet :<|>
           LandingPagesDelete :<|>
             LandingPagesUpdate :<|> LandingPagesInsert

-- | Inserts a new landing page for the specified campaign.
type LandingPagesInsert =
     "dfareporting" :> "v2.2" :> "userprofiles" :>
       Capture "profileId" Int64
       :> "campaigns"
       :> Capture "campaignId" Int64
       :> "landingPages"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Retrieves the list of landing pages for the specified campaign.
type LandingPagesList =
     "dfareporting" :> "v2.2" :> "userprofiles" :>
       Capture "profileId" Int64
       :> "campaigns"
       :> Capture "campaignId" Int64
       :> "landingPages"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Updates an existing campaign landing page. This method supports patch
-- semantics.
type LandingPagesPatch =
     "dfareporting" :> "v2.2" :> "userprofiles" :>
       Capture "profileId" Int64
       :> "campaigns"
       :> Capture "campaignId" Int64
       :> "landingPages"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "id" Int64
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Gets one campaign landing page by ID.
type LandingPagesGet =
     "dfareporting" :> "v2.2" :> "userprofiles" :>
       Capture "profileId" Int64
       :> "campaigns"
       :> Capture "campaignId" Int64
       :> "landingPages"
       :> Capture "id" Int64
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Deletes an existing campaign landing page.
type LandingPagesDelete =
     "dfareporting" :> "v2.2" :> "userprofiles" :>
       Capture "profileId" Int64
       :> "campaigns"
       :> Capture "campaignId" Int64
       :> "landingPages"
       :> Capture "id" Int64
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Updates an existing campaign landing page.
type LandingPagesUpdate =
     "dfareporting" :> "v2.2" :> "userprofiles" :>
       Capture "profileId" Int64
       :> "campaigns"
       :> Capture "campaignId" Int64
       :> "landingPages"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

type RemarketingListSharesAPI =
     RemarketingListSharesGet :<|>
       RemarketingListSharesUpdate :<|>
         RemarketingListSharesPatch

-- | Updates an existing remarketing list share. This method supports patch
-- semantics.
type RemarketingListSharesPatch =
     "dfareporting" :> "v2.2" :> "userprofiles" :>
       Capture "profileId" Int64
       :> "remarketingListShares"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "remarketingListId" Int64
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Gets one remarketing list share by remarketing list ID.
type RemarketingListSharesGet =
     "dfareporting" :> "v2.2" :> "userprofiles" :>
       Capture "profileId" Int64
       :> "remarketingListShares"
       :> Capture "remarketingListId" Int64
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Updates an existing remarketing list share.
type RemarketingListSharesUpdate =
     "dfareporting" :> "v2.2" :> "userprofiles" :>
       Capture "profileId" Int64
       :> "remarketingListShares"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

type AccountActiveAdSummariesAPI =
     AccountActiveAdSummariesGet

-- | Gets the account\'s active ad summary by account ID.
type AccountActiveAdSummariesGet =
     "dfareporting" :> "v2.2" :> "userprofiles" :>
       Capture "profileId" Int64
       :> "accountActiveAdSummaries"
       :> Capture "summaryAccountId" Int64
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

type UserRolePermissionGroupsAPI =
     UserRolePermissionGroupsGet :<|>
       UserRolePermissionGroupsList

-- | Gets a list of all supported user role permission groups.
type UserRolePermissionGroupsList =
     "dfareporting" :> "v2.2" :> "userprofiles" :>
       Capture "profileId" Int64
       :> "userRolePermissionGroups"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Gets one user role permission group by ID.
type UserRolePermissionGroupsGet =
     "dfareporting" :> "v2.2" :> "userprofiles" :>
       Capture "profileId" Int64
       :> "userRolePermissionGroups"
       :> Capture "id" Int64
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

type RemarketingListsAPI =
     RemarketingListsList :<|>
       RemarketingListsPatch :<|>
         RemarketingListsGet :<|>
           RemarketingListsUpdate :<|> RemarketingListsInsert

-- | Inserts a new remarketing list.
type RemarketingListsInsert =
     "dfareporting" :> "v2.2" :> "userprofiles" :>
       Capture "profileId" Int64
       :> "remarketingLists"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Retrieves a list of remarketing lists, possibly filtered.
type RemarketingListsList =
     "dfareporting" :> "v2.2" :> "userprofiles" :>
       Capture "profileId" Int64
       :> "remarketingLists"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "floodlightActivityId" Int64
       :> QueryParam "advertiserId" Int64
       :> QueryParam "sortOrder" Text
       :> QueryParam "active" Bool
       :> QueryParam "key" Text
       :> QueryParam "name" Text
       :> QueryParam "pageToken" Text
       :> QueryParam "sortField" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "maxResults" Int32
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Updates an existing remarketing list. This method supports patch
-- semantics.
type RemarketingListsPatch =
     "dfareporting" :> "v2.2" :> "userprofiles" :>
       Capture "profileId" Int64
       :> "remarketingLists"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "id" Int64
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Gets one remarketing list by ID.
type RemarketingListsGet =
     "dfareporting" :> "v2.2" :> "userprofiles" :>
       Capture "profileId" Int64
       :> "remarketingLists"
       :> Capture "id" Int64
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Updates an existing remarketing list.
type RemarketingListsUpdate =
     "dfareporting" :> "v2.2" :> "userprofiles" :>
       Capture "profileId" Int64
       :> "remarketingLists"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

type AccountsAPI =
     AccountsPatch :<|>
       AccountsGet :<|> AccountsUpdate :<|> AccountsList

-- | Retrieves the list of accounts, possibly filtered.
type AccountsList =
     "dfareporting" :> "v2.2" :> "userprofiles" :>
       Capture "profileId" Int64
       :> "accounts"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "searchString" Text
       :> QueryParam "ids" Int64
       :> QueryParam "sortOrder" Text
       :> QueryParam "active" Bool
       :> QueryParam "key" Text
       :> QueryParam "pageToken" Text
       :> QueryParam "sortField" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "maxResults" Int32
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Updates an existing account. This method supports patch semantics.
type AccountsPatch =
     "dfareporting" :> "v2.2" :> "userprofiles" :>
       Capture "profileId" Int64
       :> "accounts"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "id" Int64
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Gets one account by ID.
type AccountsGet =
     "dfareporting" :> "v2.2" :> "userprofiles" :>
       Capture "profileId" Int64
       :> "accounts"
       :> Capture "id" Int64
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Updates an existing account.
type AccountsUpdate =
     "dfareporting" :> "v2.2" :> "userprofiles" :>
       Capture "profileId" Int64
       :> "accounts"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

type ReportsAPI = FilesAPI :<|> CompatibleFieldsAPI

type CompatibleFieldsAPI = CompatibleFieldsQuery

-- | Returns the fields that are compatible to be selected in the respective
-- sections of a report criteria, given the fields already selected in the
-- input report and user permissions.
type CompatibleFieldsQuery =
     "dfareporting" :> "v2.2" :> "userprofiles" :>
       Capture "profileId" Int64
       :> "reports"
       :> "compatiblefields"
       :> "query"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

type FilesAPI = FilesGet :<|> FilesList

-- | Lists files for a report.
type FilesList =
     "dfareporting" :> "v2.2" :> "userprofiles" :>
       Capture "profileId" Int64
       :> "reports"
       :> Capture "reportId" Int64
       :> "files"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "sortOrder" Text
       :> QueryParam "key" Text
       :> QueryParam "pageToken" Text
       :> QueryParam "sortField" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "maxResults" Int32
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Retrieves a report file.
type FilesGet =
     "dfareporting" :> "v2.2" :> "userprofiles" :>
       Capture "profileId" Int64
       :> "reports"
       :> Capture "reportId" Int64
       :> "files"
       :> Capture "fileId" Int64
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

type CampaignsAPI =
     CampaignsList :<|>
       CampaignsPatch :<|>
         CampaignsGet :<|>
           CampaignsUpdate :<|> CampaignsInsert

-- | Inserts a new campaign.
type CampaignsInsert =
     "dfareporting" :> "v2.2" :> "userprofiles" :>
       Capture "profileId" Int64
       :> "campaigns"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "defaultLandingPageUrl" Text
       :> QueryParam "key" Text
       :> QueryParam "defaultLandingPageName" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Retrieves a list of campaigns, possibly filtered.
type CampaignsList =
     "dfareporting" :> "v2.2" :> "userprofiles" :>
       Capture "profileId" Int64
       :> "campaigns"
       :> QueryParam "excludedIds" Int64
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "searchString" Text
       :> QueryParam "ids" Int64
       :> QueryParam "sortOrder" Text
       :> QueryParam "advertiserGroupIds" Int64
       :> QueryParam "key" Text
       :> QueryParam "atLeastOneOptimizationActivity" Bool
       :> QueryParam "overriddenEventTagId" Int64
       :> QueryParam "pageToken" Text
       :> QueryParam "sortField" Text
       :> QueryParam "subaccountId" Int64
       :> QueryParam "oauth_token" Text
       :> QueryParam "advertiserIds" Int64
       :> QueryParam "archived" Bool
       :> QueryParam "maxResults" Int32
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Updates an existing campaign. This method supports patch semantics.
type CampaignsPatch =
     "dfareporting" :> "v2.2" :> "userprofiles" :>
       Capture "profileId" Int64
       :> "campaigns"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "id" Int64
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Gets one campaign by ID.
type CampaignsGet =
     "dfareporting" :> "v2.2" :> "userprofiles" :>
       Capture "profileId" Int64
       :> "campaigns"
       :> Capture "id" Int64
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Updates an existing campaign.
type CampaignsUpdate =
     "dfareporting" :> "v2.2" :> "userprofiles" :>
       Capture "profileId" Int64
       :> "campaigns"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

type AccountUserProfilesAPI =
     AccountUserProfilesList :<|>
       AccountUserProfilesPatch :<|>
         AccountUserProfilesGet :<|>
           AccountUserProfilesUpdate :<|>
             AccountUserProfilesInsert

-- | Inserts a new account user profile.
type AccountUserProfilesInsert =
     "dfareporting" :> "v2.2" :> "userprofiles" :>
       Capture "profileId" Int64
       :> "accountUserProfiles"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Retrieves a list of account user profiles, possibly filtered.
type AccountUserProfilesList =
     "dfareporting" :> "v2.2" :> "userprofiles" :>
       Capture "profileId" Int64
       :> "accountUserProfiles"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userRoleId" Int64
       :> QueryParam "userIp" Text
       :> QueryParam "searchString" Text
       :> QueryParam "ids" Int64
       :> QueryParam "sortOrder" Text
       :> QueryParam "active" Bool
       :> QueryParam "key" Text
       :> QueryParam "pageToken" Text
       :> QueryParam "sortField" Text
       :> QueryParam "subaccountId" Int64
       :> QueryParam "oauth_token" Text
       :> QueryParam "maxResults" Int32
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Updates an existing account user profile. This method supports patch
-- semantics.
type AccountUserProfilesPatch =
     "dfareporting" :> "v2.2" :> "userprofiles" :>
       Capture "profileId" Int64
       :> "accountUserProfiles"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "id" Int64
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Gets one account user profile by ID.
type AccountUserProfilesGet =
     "dfareporting" :> "v2.2" :> "userprofiles" :>
       Capture "profileId" Int64
       :> "accountUserProfiles"
       :> Capture "id" Int64
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Updates an existing account user profile.
type AccountUserProfilesUpdate =
     "dfareporting" :> "v2.2" :> "userprofiles" :>
       Capture "profileId" Int64
       :> "accountUserProfiles"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

type CreativesAPI =
     CreativesList :<|>
       CreativesPatch :<|>
         CreativesGet :<|>
           CreativesUpdate :<|> CreativesInsert

-- | Inserts a new creative.
type CreativesInsert =
     "dfareporting" :> "v2.2" :> "userprofiles" :>
       Capture "profileId" Int64
       :> "creatives"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Retrieves a list of creatives, possibly filtered.
type CreativesList =
     "dfareporting" :> "v2.2" :> "userprofiles" :>
       Capture "profileId" Int64
       :> "creatives"
       :> QueryParam "renderingIds" Int64
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "advertiserId" Int64
       :> QueryParam "searchString" Text
       :> QueryParam "sizeIds" Int64
       :> QueryParam "companionCreativeIds" Int64
       :> QueryParam "campaignId" Int64
       :> QueryParam "types" Text
       :> QueryParam "ids" Int64
       :> QueryParam "sortOrder" Text
       :> QueryParam "active" Bool
       :> QueryParam "key" Text
       :> QueryParam "creativeFieldIds" Int64
       :> QueryParam "pageToken" Text
       :> QueryParam "sortField" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "studioCreativeId" Int64
       :> QueryParam "archived" Bool
       :> QueryParam "maxResults" Int32
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Updates an existing creative. This method supports patch semantics.
type CreativesPatch =
     "dfareporting" :> "v2.2" :> "userprofiles" :>
       Capture "profileId" Int64
       :> "creatives"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "id" Int64
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Gets one creative by ID.
type CreativesGet =
     "dfareporting" :> "v2.2" :> "userprofiles" :>
       Capture "profileId" Int64
       :> "creatives"
       :> Capture "id" Int64
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Updates an existing creative.
type CreativesUpdate =
     "dfareporting" :> "v2.2" :> "userprofiles" :>
       Capture "profileId" Int64
       :> "creatives"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

type DimensionValuesAPI = DimensionValuesQuery

-- | Retrieves list of report dimension values for a list of filters.
type DimensionValuesQuery =
     "dfareporting" :> "v2.2" :> "userprofiles" :>
       Capture "profileId" Int64
       :> "dimensionvalues"
       :> "query"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "pageToken" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "maxResults" Int32
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

type FloodlightConfigurationsAPI =
     FloodlightConfigurationsPatch :<|>
       FloodlightConfigurationsGet :<|>
         FloodlightConfigurationsUpdate :<|>
           FloodlightConfigurationsList

-- | Retrieves a list of floodlight configurations, possibly filtered.
type FloodlightConfigurationsList =
     "dfareporting" :> "v2.2" :> "userprofiles" :>
       Capture "profileId" Int64
       :> "floodlightConfigurations"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "ids" Int64
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Updates an existing floodlight configuration. This method supports patch
-- semantics.
type FloodlightConfigurationsPatch =
     "dfareporting" :> "v2.2" :> "userprofiles" :>
       Capture "profileId" Int64
       :> "floodlightConfigurations"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "id" Int64
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Gets one floodlight configuration by ID.
type FloodlightConfigurationsGet =
     "dfareporting" :> "v2.2" :> "userprofiles" :>
       Capture "profileId" Int64
       :> "floodlightConfigurations"
       :> Capture "id" Int64
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Updates an existing floodlight configuration.
type FloodlightConfigurationsUpdate =
     "dfareporting" :> "v2.2" :> "userprofiles" :>
       Capture "profileId" Int64
       :> "floodlightConfigurations"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

type RegionsAPI = RegionsList

-- | Retrieves a list of regions.
type RegionsList =
     "dfareporting" :> "v2.2" :> "userprofiles" :>
       Capture "profileId" Int64
       :> "regions"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

type FloodlightActivitiesAPI =
     FloodlightActivitiesList :<|>
       FloodlightActivitiesPatch :<|>
         FloodlightActivitiesGet :<|>
           FloodlightActivitiesGeneratetag :<|>
             FloodlightActivitiesDelete :<|>
               FloodlightActivitiesUpdate :<|>
                 FloodlightActivitiesInsert

-- | Inserts a new floodlight activity.
type FloodlightActivitiesInsert =
     "dfareporting" :> "v2.2" :> "userprofiles" :>
       Capture "profileId" Int64
       :> "floodlightActivities"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Retrieves a list of floodlight activities, possibly filtered.
type FloodlightActivitiesList =
     "dfareporting" :> "v2.2" :> "userprofiles" :>
       Capture "profileId" Int64
       :> "floodlightActivities"
       :> QueryParam "quotaUser" Text
       :> QueryParam "tagString" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "floodlightActivityGroupTagString" Text
       :> QueryParam "floodlightConfigurationId" Int64
       :> QueryParam "userIp" Text
       :> QueryParam "advertiserId" Int64
       :> QueryParam "searchString" Text
       :> QueryParam "ids" Int64
       :> QueryParam "floodlightActivityGroupIds" Int64
       :> QueryParam "sortOrder" Text
       :> QueryParam "key" Text
       :> QueryParam "floodlightActivityGroupType" Text
       :> QueryParam "floodlightActivityGroupName" Text
       :> QueryParam "pageToken" Text
       :> QueryParam "sortField" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "maxResults" Int32
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Updates an existing floodlight activity. This method supports patch
-- semantics.
type FloodlightActivitiesPatch =
     "dfareporting" :> "v2.2" :> "userprofiles" :>
       Capture "profileId" Int64
       :> "floodlightActivities"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "id" Int64
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Gets one floodlight activity by ID.
type FloodlightActivitiesGet =
     "dfareporting" :> "v2.2" :> "userprofiles" :>
       Capture "profileId" Int64
       :> "floodlightActivities"
       :> Capture "id" Int64
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Generates a tag for a floodlight activity.
type FloodlightActivitiesGeneratetag =
     "dfareporting" :> "v2.2" :> "userprofiles" :>
       Capture "profileId" Int64
       :> "floodlightActivities"
       :> "generatetag"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "floodlightActivityId" Int64
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Deletes an existing floodlight activity.
type FloodlightActivitiesDelete =
     "dfareporting" :> "v2.2" :> "userprofiles" :>
       Capture "profileId" Int64
       :> "floodlightActivities"
       :> Capture "id" Int64
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Updates an existing floodlight activity.
type FloodlightActivitiesUpdate =
     "dfareporting" :> "v2.2" :> "userprofiles" :>
       Capture "profileId" Int64
       :> "floodlightActivities"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

type AccountPermissionGroupsAPI =
     AccountPermissionGroupsGet :<|>
       AccountPermissionGroupsList

-- | Retrieves the list of account permission groups.
type AccountPermissionGroupsList =
     "dfareporting" :> "v2.2" :> "userprofiles" :>
       Capture "profileId" Int64
       :> "accountPermissionGroups"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Gets one account permission group by ID.
type AccountPermissionGroupsGet =
     "dfareporting" :> "v2.2" :> "userprofiles" :>
       Capture "profileId" Int64
       :> "accountPermissionGroups"
       :> Capture "id" Int64
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

type AdvertisersAPI =
     AdvertisersList :<|>
       AdvertisersPatch :<|>
         AdvertisersGet :<|>
           AdvertisersUpdate :<|> AdvertisersInsert

-- | Inserts a new advertiser.
type AdvertisersInsert =
     "dfareporting" :> "v2.2" :> "userprofiles" :>
       Capture "profileId" Int64
       :> "advertisers"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Retrieves a list of advertisers, possibly filtered.
type AdvertisersList =
     "dfareporting" :> "v2.2" :> "userprofiles" :>
       Capture "profileId" Int64
       :> "advertisers"
       :> QueryParam "status" Text
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "onlyParent" Bool
       :> QueryParam "searchString" Text
       :> QueryParam "ids" Int64
       :>
       QueryParam "includeAdvertisersWithoutGroupsOnly" Bool
       :> QueryParam "sortOrder" Text
       :> QueryParam "advertiserGroupIds" Int64
       :> QueryParam "key" Text
       :> QueryParam "pageToken" Text
       :> QueryParam "sortField" Text
       :> QueryParam "subaccountId" Int64
       :> QueryParam "oauth_token" Text
       :> QueryParam "floodlightConfigurationIds" Int64
       :> QueryParam "maxResults" Int32
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Updates an existing advertiser. This method supports patch semantics.
type AdvertisersPatch =
     "dfareporting" :> "v2.2" :> "userprofiles" :>
       Capture "profileId" Int64
       :> "advertisers"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "id" Int64
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Gets one advertiser by ID.
type AdvertisersGet =
     "dfareporting" :> "v2.2" :> "userprofiles" :>
       Capture "profileId" Int64
       :> "advertisers"
       :> Capture "id" Int64
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Updates an existing advertiser.
type AdvertisersUpdate =
     "dfareporting" :> "v2.2" :> "userprofiles" :>
       Capture "profileId" Int64
       :> "advertisers"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

type CountriesAPI = CountriesGet :<|> CountriesList

-- | Retrieves a list of countries.
type CountriesList =
     "dfareporting" :> "v2.2" :> "userprofiles" :>
       Capture "profileId" Int64
       :> "countries"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Gets one country by ID.
type CountriesGet =
     "dfareporting" :> "v2.2" :> "userprofiles" :>
       Capture "profileId" Int64
       :> "countries"
       :> Capture "dartId" Int64
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

type UserRolesAPI =
     UserRolesList :<|>
       UserRolesPatch :<|>
         UserRolesGet :<|>
           UserRolesDelete :<|>
             UserRolesUpdate :<|> UserRolesInsert

-- | Inserts a new user role.
type UserRolesInsert =
     "dfareporting" :> "v2.2" :> "userprofiles" :>
       Capture "profileId" Int64
       :> "userRoles"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Retrieves a list of user roles, possibly filtered.
type UserRolesList =
     "dfareporting" :> "v2.2" :> "userprofiles" :>
       Capture "profileId" Int64
       :> "userRoles"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "searchString" Text
       :> QueryParam "ids" Int64
       :> QueryParam "sortOrder" Text
       :> QueryParam "key" Text
       :> QueryParam "accountUserRoleOnly" Bool
       :> QueryParam "pageToken" Text
       :> QueryParam "sortField" Text
       :> QueryParam "subaccountId" Int64
       :> QueryParam "oauth_token" Text
       :> QueryParam "maxResults" Int32
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Updates an existing user role. This method supports patch semantics.
type UserRolesPatch =
     "dfareporting" :> "v2.2" :> "userprofiles" :>
       Capture "profileId" Int64
       :> "userRoles"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "id" Int64
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Gets one user role by ID.
type UserRolesGet =
     "dfareporting" :> "v2.2" :> "userprofiles" :>
       Capture "profileId" Int64
       :> "userRoles"
       :> Capture "id" Int64
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Deletes an existing user role.
type UserRolesDelete =
     "dfareporting" :> "v2.2" :> "userprofiles" :>
       Capture "profileId" Int64
       :> "userRoles"
       :> Capture "id" Int64
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Updates an existing user role.
type UserRolesUpdate =
     "dfareporting" :> "v2.2" :> "userprofiles" :>
       Capture "profileId" Int64
       :> "userRoles"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

type UserProfilesAPI =
     UserProfilesGet :<|> UserProfilesList

-- | Retrieves list of user profiles for a user.
type UserProfilesList =
     "dfareporting" :> "v2.2" :> "userprofiles" :>
       QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Gets one user profile by ID.
type UserProfilesGet =
     "dfareporting" :> "v2.2" :> "userprofiles" :>
       Capture "profileId" Int64
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

type OperatingSystemVersionsAPI =
     OperatingSystemVersionsGet :<|>
       OperatingSystemVersionsList

-- | Retrieves a list of operating system versions.
type OperatingSystemVersionsList =
     "dfareporting" :> "v2.2" :> "userprofiles" :>
       Capture "profileId" Int64
       :> "operatingSystemVersions"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Gets one operating system version by ID.
type OperatingSystemVersionsGet =
     "dfareporting" :> "v2.2" :> "userprofiles" :>
       Capture "profileId" Int64
       :> "operatingSystemVersions"
       :> Capture "id" Int64
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

type AccountPermissionsAPI =
     AccountPermissionsGet :<|> AccountPermissionsList

-- | Retrieves the list of account permissions.
type AccountPermissionsList =
     "dfareporting" :> "v2.2" :> "userprofiles" :>
       Capture "profileId" Int64
       :> "accountPermissions"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Gets one account permission by ID.
type AccountPermissionsGet =
     "dfareporting" :> "v2.2" :> "userprofiles" :>
       Capture "profileId" Int64
       :> "accountPermissions"
       :> Capture "id" Int64
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

type CitiesAPI = CitiesList

-- | Retrieves a list of cities, possibly filtered.
type CitiesList =
     "dfareporting" :> "v2.2" :> "userprofiles" :>
       Capture "profileId" Int64
       :> "cities"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "regionDartIds" Int64
       :> QueryParam "userIp" Text
       :> QueryParam "namePrefix" Text
       :> QueryParam "key" Text
       :> QueryParam "countryDartIds" Int64
       :> QueryParam "dartIds" Int64
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

type ChangeLogsAPI =
     ChangeLogsGet :<|> ChangeLogsList

-- | Retrieves a list of change logs.
type ChangeLogsList =
     "dfareporting" :> "v2.2" :> "userprofiles" :>
       Capture "profileId" Int64
       :> "changeLogs"
       :> QueryParam "userProfileIds" Int64
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "objectType" Text
       :> QueryParam "userIp" Text
       :> QueryParam "searchString" Text
       :> QueryParam "ids" Int64
       :> QueryParam "action" Text
       :> QueryParam "minChangeTime" Text
       :> QueryParam "key" Text
       :> QueryParam "maxChangeTime" Text
       :> QueryParam "pageToken" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "objectIds" Int64
       :> QueryParam "maxResults" Int32
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Gets one change log by ID.
type ChangeLogsGet =
     "dfareporting" :> "v2.2" :> "userprofiles" :>
       Capture "profileId" Int64
       :> "changeLogs"
       :> Capture "id" Int64
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

type TargetableRemarketingListsAPI =
     TargetableRemarketingListsGet :<|>
       TargetableRemarketingListsList

-- | Retrieves a list of targetable remarketing lists, possibly filtered.
type TargetableRemarketingListsList =
     "dfareporting" :> "v2.2" :> "userprofiles" :>
       Capture "profileId" Int64
       :> "targetableRemarketingLists"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "advertiserId" Int64
       :> QueryParam "sortOrder" Text
       :> QueryParam "active" Bool
       :> QueryParam "key" Text
       :> QueryParam "name" Text
       :> QueryParam "pageToken" Text
       :> QueryParam "sortField" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "maxResults" Int32
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Gets one remarketing list by ID.
type TargetableRemarketingListsGet =
     "dfareporting" :> "v2.2" :> "userprofiles" :>
       Capture "profileId" Int64
       :> "targetableRemarketingLists"
       :> Capture "id" Int64
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

type PlatformTypesAPI =
     PlatformTypesGet :<|> PlatformTypesList

-- | Retrieves a list of platform types.
type PlatformTypesList =
     "dfareporting" :> "v2.2" :> "userprofiles" :>
       Capture "profileId" Int64
       :> "platformTypes"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Gets one platform type by ID.
type PlatformTypesGet =
     "dfareporting" :> "v2.2" :> "userprofiles" :>
       Capture "profileId" Int64
       :> "platformTypes"
       :> Capture "id" Int64
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

type ContentCategoriesAPI =
     ContentCategoriesList :<|>
       ContentCategoriesPatch :<|>
         ContentCategoriesGet :<|>
           ContentCategoriesDelete :<|>
             ContentCategoriesUpdate :<|> ContentCategoriesInsert

-- | Inserts a new content category.
type ContentCategoriesInsert =
     "dfareporting" :> "v2.2" :> "userprofiles" :>
       Capture "profileId" Int64
       :> "contentCategories"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Retrieves a list of content categories, possibly filtered.
type ContentCategoriesList =
     "dfareporting" :> "v2.2" :> "userprofiles" :>
       Capture "profileId" Int64
       :> "contentCategories"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "searchString" Text
       :> QueryParam "ids" Int64
       :> QueryParam "sortOrder" Text
       :> QueryParam "key" Text
       :> QueryParam "pageToken" Text
       :> QueryParam "sortField" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "maxResults" Int32
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Updates an existing content category. This method supports patch
-- semantics.
type ContentCategoriesPatch =
     "dfareporting" :> "v2.2" :> "userprofiles" :>
       Capture "profileId" Int64
       :> "contentCategories"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "id" Int64
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Gets one content category by ID.
type ContentCategoriesGet =
     "dfareporting" :> "v2.2" :> "userprofiles" :>
       Capture "profileId" Int64
       :> "contentCategories"
       :> Capture "id" Int64
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Deletes an existing content category.
type ContentCategoriesDelete =
     "dfareporting" :> "v2.2" :> "userprofiles" :>
       Capture "profileId" Int64
       :> "contentCategories"
       :> Capture "id" Int64
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Updates an existing content category.
type ContentCategoriesUpdate =
     "dfareporting" :> "v2.2" :> "userprofiles" :>
       Capture "profileId" Int64
       :> "contentCategories"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

type BrowsersAPI = BrowsersList

-- | Retrieves a list of browsers.
type BrowsersList =
     "dfareporting" :> "v2.2" :> "userprofiles" :>
       Capture "profileId" Int64
       :> "browsers"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

type PlacementsAPI =
     PlacementsGeneratetags :<|>
       PlacementsList :<|>
         PlacementsPatch :<|>
           PlacementsGet :<|>
             PlacementsUpdate :<|> PlacementsInsert

-- | Inserts a new placement.
type PlacementsInsert =
     "dfareporting" :> "v2.2" :> "userprofiles" :>
       Capture "profileId" Int64
       :> "placements"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Generates tags for a placement.
type PlacementsGeneratetags =
     "dfareporting" :> "v2.2" :> "userprofiles" :>
       Capture "profileId" Int64
       :> "placements"
       :> "generatetags"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "tagFormats" Text
       :> QueryParam "userIp" Text
       :> QueryParam "campaignId" Int64
       :> QueryParam "key" Text
       :> QueryParam "placementIds" Int64
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Retrieves a list of placements, possibly filtered.
type PlacementsList =
     "dfareporting" :> "v2.2" :> "userprofiles" :>
       Capture "profileId" Int64
       :> "placements"
       :> QueryParam "placementStrategyIds" Int64
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "contentCategoryIds" Int64
       :> QueryParam "maxEndDate" Text
       :> QueryParam "userIp" Text
       :> QueryParam "campaignIds" Int64
       :> QueryParam "pricingTypes" Text
       :> QueryParam "searchString" Text
       :> QueryParam "sizeIds" Int64
       :> QueryParam "ids" Int64
       :> QueryParam "groupIds" Int64
       :> QueryParam "directorySiteIds" Int64
       :> QueryParam "sortOrder" Text
       :> QueryParam "paymentSource" Text
       :> QueryParam "key" Text
       :> QueryParam "siteIds" Int64
       :> QueryParam "pageToken" Text
       :> QueryParam "sortField" Text
       :> QueryParam "compatibilities" Text
       :> QueryParam "maxStartDate" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "advertiserIds" Int64
       :> QueryParam "minStartDate" Text
       :> QueryParam "archived" Bool
       :> QueryParam "maxResults" Int32
       :> QueryParam "minEndDate" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Updates an existing placement. This method supports patch semantics.
type PlacementsPatch =
     "dfareporting" :> "v2.2" :> "userprofiles" :>
       Capture "profileId" Int64
       :> "placements"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "id" Int64
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Gets one placement by ID.
type PlacementsGet =
     "dfareporting" :> "v2.2" :> "userprofiles" :>
       Capture "profileId" Int64
       :> "placements"
       :> Capture "id" Int64
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Updates an existing placement.
type PlacementsUpdate =
     "dfareporting" :> "v2.2" :> "userprofiles" :>
       Capture "profileId" Int64
       :> "placements"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

type MetrosAPI = MetrosList

-- | Retrieves a list of metros.
type MetrosList =
     "dfareporting" :> "v2.2" :> "userprofiles" :>
       Capture "profileId" Int64
       :> "metros"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

type CreativeFieldsAPI =
     CreativeFieldsList :<|>
       CreativeFieldsPatch :<|>
         CreativeFieldsGet :<|>
           CreativeFieldsDelete :<|>
             CreativeFieldsUpdate :<|> CreativeFieldsInsert

-- | Inserts a new creative field.
type CreativeFieldsInsert =
     "dfareporting" :> "v2.2" :> "userprofiles" :>
       Capture "profileId" Int64
       :> "creativeFields"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Retrieves a list of creative fields, possibly filtered.
type CreativeFieldsList =
     "dfareporting" :> "v2.2" :> "userprofiles" :>
       Capture "profileId" Int64
       :> "creativeFields"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "searchString" Text
       :> QueryParam "ids" Int64
       :> QueryParam "sortOrder" Text
       :> QueryParam "key" Text
       :> QueryParam "pageToken" Text
       :> QueryParam "sortField" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "advertiserIds" Int64
       :> QueryParam "maxResults" Int32
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Updates an existing creative field. This method supports patch
-- semantics.
type CreativeFieldsPatch =
     "dfareporting" :> "v2.2" :> "userprofiles" :>
       Capture "profileId" Int64
       :> "creativeFields"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "id" Int64
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Gets one creative field by ID.
type CreativeFieldsGet =
     "dfareporting" :> "v2.2" :> "userprofiles" :>
       Capture "profileId" Int64
       :> "creativeFields"
       :> Capture "id" Int64
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Deletes an existing creative field.
type CreativeFieldsDelete =
     "dfareporting" :> "v2.2" :> "userprofiles" :>
       Capture "profileId" Int64
       :> "creativeFields"
       :> Capture "id" Int64
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Updates an existing creative field.
type CreativeFieldsUpdate =
     "dfareporting" :> "v2.2" :> "userprofiles" :>
       Capture "profileId" Int64
       :> "creativeFields"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

type OrderDocumentsAPI =
     OrderDocumentsGet :<|> OrderDocumentsList

-- | Retrieves a list of order documents, possibly filtered.
type OrderDocumentsList =
     "dfareporting" :> "v2.2" :> "userprofiles" :>
       Capture "profileId" Int64
       :> "projects"
       :> Capture "projectId" Int64
       :> "orderDocuments"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "searchString" Text
       :> QueryParam "ids" Int64
       :> QueryParam "sortOrder" Text
       :> QueryParam "key" Text
       :> QueryParam "pageToken" Text
       :> QueryParam "sortField" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "orderId" Int64
       :> QueryParam "approved" Bool
       :> QueryParam "siteId" Int64
       :> QueryParam "maxResults" Int32
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Gets one order document by ID.
type OrderDocumentsGet =
     "dfareporting" :> "v2.2" :> "userprofiles" :>
       Capture "profileId" Int64
       :> "projects"
       :> Capture "projectId" Int64
       :> "orderDocuments"
       :> Capture "id" Int64
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

type FilesAPI = FilesGet :<|> FilesList

-- | Lists files for a user profile.
type FilesList =
     "dfareporting" :> "v2.2" :> "userprofiles" :>
       Capture "profileId" Int64
       :> "files"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "sortOrder" Text
       :> QueryParam "key" Text
       :> QueryParam "scope" Text
       :> QueryParam "pageToken" Text
       :> QueryParam "sortField" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "maxResults" Int32
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Retrieves a report file by its report ID and file ID.
type FilesGet =
     "dfareporting" :> "v2.2" :> "reports" :>
       Capture "reportId" Int64
       :> "files"
       :> Capture "fileId" Int64
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

type ConnectionTypesAPI =
     ConnectionTypesGet :<|> ConnectionTypesList

-- | Retrieves a list of connection types.
type ConnectionTypesList =
     "dfareporting" :> "v2.2" :> "userprofiles" :>
       Capture "profileId" Int64
       :> "connectionTypes"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Gets one connection type by ID.
type ConnectionTypesGet =
     "dfareporting" :> "v2.2" :> "userprofiles" :>
       Capture "profileId" Int64
       :> "connectionTypes"
       :> Capture "id" Int64
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

type PlacementGroupsAPI =
     PlacementGroupsList :<|>
       PlacementGroupsPatch :<|>
         PlacementGroupsGet :<|>
           PlacementGroupsUpdate :<|> PlacementGroupsInsert

-- | Inserts a new placement group.
type PlacementGroupsInsert =
     "dfareporting" :> "v2.2" :> "userprofiles" :>
       Capture "profileId" Int64
       :> "placementGroups"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Retrieves a list of placement groups, possibly filtered.
type PlacementGroupsList =
     "dfareporting" :> "v2.2" :> "userprofiles" :>
       Capture "profileId" Int64
       :> "placementGroups"
       :> QueryParam "placementStrategyIds" Int64
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "contentCategoryIds" Int64
       :> QueryParam "maxEndDate" Text
       :> QueryParam "userIp" Text
       :> QueryParam "campaignIds" Int64
       :> QueryParam "pricingTypes" Text
       :> QueryParam "searchString" Text
       :> QueryParam "ids" Int64
       :> QueryParam "placementGroupType" Text
       :> QueryParam "directorySiteIds" Int64
       :> QueryParam "sortOrder" Text
       :> QueryParam "key" Text
       :> QueryParam "siteIds" Int64
       :> QueryParam "pageToken" Text
       :> QueryParam "sortField" Text
       :> QueryParam "maxStartDate" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "advertiserIds" Int64
       :> QueryParam "minStartDate" Text
       :> QueryParam "archived" Bool
       :> QueryParam "maxResults" Int32
       :> QueryParam "minEndDate" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Updates an existing placement group. This method supports patch
-- semantics.
type PlacementGroupsPatch =
     "dfareporting" :> "v2.2" :> "userprofiles" :>
       Capture "profileId" Int64
       :> "placementGroups"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "id" Int64
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Gets one placement group by ID.
type PlacementGroupsGet =
     "dfareporting" :> "v2.2" :> "userprofiles" :>
       Capture "profileId" Int64
       :> "placementGroups"
       :> Capture "id" Int64
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Updates an existing placement group.
type PlacementGroupsUpdate =
     "dfareporting" :> "v2.2" :> "userprofiles" :>
       Capture "profileId" Int64
       :> "placementGroups"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

type EventTagsAPI =
     EventTagsList :<|>
       EventTagsPatch :<|>
         EventTagsGet :<|>
           EventTagsDelete :<|>
             EventTagsUpdate :<|> EventTagsInsert

-- | Inserts a new event tag.
type EventTagsInsert =
     "dfareporting" :> "v2.2" :> "userprofiles" :>
       Capture "profileId" Int64
       :> "eventTags"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Retrieves a list of event tags, possibly filtered.
type EventTagsList =
     "dfareporting" :> "v2.2" :> "userprofiles" :>
       Capture "profileId" Int64
       :> "eventTags"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "definitionsOnly" Bool
       :> QueryParam "eventTagTypes" Text
       :> QueryParam "enabled" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "advertiserId" Int64
       :> QueryParam "searchString" Text
       :> QueryParam "campaignId" Int64
       :> QueryParam "ids" Int64
       :> QueryParam "sortOrder" Text
       :> QueryParam "key" Text
       :> QueryParam "adId" Int64
       :> QueryParam "sortField" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Updates an existing event tag. This method supports patch semantics.
type EventTagsPatch =
     "dfareporting" :> "v2.2" :> "userprofiles" :>
       Capture "profileId" Int64
       :> "eventTags"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "id" Int64
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Gets one event tag by ID.
type EventTagsGet =
     "dfareporting" :> "v2.2" :> "userprofiles" :>
       Capture "profileId" Int64
       :> "eventTags"
       :> Capture "id" Int64
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Deletes an existing event tag.
type EventTagsDelete =
     "dfareporting" :> "v2.2" :> "userprofiles" :>
       Capture "profileId" Int64
       :> "eventTags"
       :> Capture "id" Int64
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Updates an existing event tag.
type EventTagsUpdate =
     "dfareporting" :> "v2.2" :> "userprofiles" :>
       Capture "profileId" Int64
       :> "eventTags"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

type OrdersAPI = OrdersGet :<|> OrdersList

-- | Retrieves a list of orders, possibly filtered.
type OrdersList =
     "dfareporting" :> "v2.2" :> "userprofiles" :>
       Capture "profileId" Int64
       :> "projects"
       :> Capture "projectId" Int64
       :> "orders"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "searchString" Text
       :> QueryParam "ids" Int64
       :> QueryParam "sortOrder" Text
       :> QueryParam "key" Text
       :> QueryParam "pageToken" Text
       :> QueryParam "sortField" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "siteId" Int64
       :> QueryParam "maxResults" Int32
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Gets one order by ID.
type OrdersGet =
     "dfareporting" :> "v2.2" :> "userprofiles" :>
       Capture "profileId" Int64
       :> "projects"
       :> Capture "projectId" Int64
       :> "orders"
       :> Capture "id" Int64
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

type UserRolePermissionsAPI =
     UserRolePermissionsGet :<|> UserRolePermissionsList

-- | Gets a list of user role permissions, possibly filtered.
type UserRolePermissionsList =
     "dfareporting" :> "v2.2" :> "userprofiles" :>
       Capture "profileId" Int64
       :> "userRolePermissions"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "ids" Int64
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Gets one user role permission by ID.
type UserRolePermissionsGet =
     "dfareporting" :> "v2.2" :> "userprofiles" :>
       Capture "profileId" Int64
       :> "userRolePermissions"
       :> Capture "id" Int64
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

type CreativeAssetsAPI = CreativeAssetsInsert

-- | Inserts a new creative asset.
type CreativeAssetsInsert =
     "dfareporting" :> "v2.2" :> "userprofiles" :>
       Capture "profileId" Int64
       :> "creativeAssets"
       :> Capture "advertiserId" Int64
       :> "creativeAssets"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

type SitesAPI =
     SitesList :<|>
       SitesPatch :<|>
         SitesGet :<|> SitesUpdate :<|> SitesInsert

-- | Inserts a new site.
type SitesInsert =
     "dfareporting" :> "v2.2" :> "userprofiles" :>
       Capture "profileId" Int64
       :> "sites"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Retrieves a list of sites, possibly filtered.
type SitesList =
     "dfareporting" :> "v2.2" :> "userprofiles" :>
       Capture "profileId" Int64
       :> "sites"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "unmappedSite" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "campaignIds" Int64
       :> QueryParam "searchString" Text
       :> QueryParam "acceptsInterstitialPlacements" Bool
       :> QueryParam "acceptsPublisherPaidPlacements" Bool
       :> QueryParam "ids" Int64
       :> QueryParam "directorySiteIds" Int64
       :> QueryParam "sortOrder" Text
       :> QueryParam "key" Text
       :> QueryParam "pageToken" Text
       :> QueryParam "sortField" Text
       :> QueryParam "subaccountId" Int64
       :> QueryParam "acceptsInStreamVideoPlacements" Bool
       :> QueryParam "oauth_token" Text
       :> QueryParam "approved" Bool
       :> QueryParam "adWordsSite" Bool
       :> QueryParam "maxResults" Int32
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Updates an existing site. This method supports patch semantics.
type SitesPatch =
     "dfareporting" :> "v2.2" :> "userprofiles" :>
       Capture "profileId" Int64
       :> "sites"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "id" Int64
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Gets one site by ID.
type SitesGet =
     "dfareporting" :> "v2.2" :> "userprofiles" :>
       Capture "profileId" Int64
       :> "sites"
       :> Capture "id" Int64
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Updates an existing site.
type SitesUpdate =
     "dfareporting" :> "v2.2" :> "userprofiles" :>
       Capture "profileId" Int64
       :> "sites"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

type OperatingSystemsAPI =
     OperatingSystemsGet :<|> OperatingSystemsList

-- | Retrieves a list of operating systems.
type OperatingSystemsList =
     "dfareporting" :> "v2.2" :> "userprofiles" :>
       Capture "profileId" Int64
       :> "operatingSystems"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Gets one operating system by DART ID.
type OperatingSystemsGet =
     "dfareporting" :> "v2.2" :> "userprofiles" :>
       Capture "profileId" Int64
       :> "operatingSystems"
       :> Capture "dartId" Int64
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

type PostalCodesAPI =
     PostalCodesGet :<|> PostalCodesList

-- | Retrieves a list of postal codes.
type PostalCodesList =
     "dfareporting" :> "v2.2" :> "userprofiles" :>
       Capture "profileId" Int64
       :> "postalCodes"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Gets one postal code by ID.
type PostalCodesGet =
     "dfareporting" :> "v2.2" :> "userprofiles" :>
       Capture "profileId" Int64
       :> "postalCodes"
       :> Capture "code" Text
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

type SizesAPI =
     SizesList :<|> SizesGet :<|> SizesInsert

-- | Inserts a new size.
type SizesInsert =
     "dfareporting" :> "v2.2" :> "userprofiles" :>
       Capture "profileId" Int64
       :> "sizes"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Retrieves a list of sizes, possibly filtered.
type SizesList =
     "dfareporting" :> "v2.2" :> "userprofiles" :>
       Capture "profileId" Int64
       :> "sizes"
       :> QueryParam "quotaUser" Text
       :> QueryParam "height" Int32
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "ids" Int64
       :> QueryParam "width" Int32
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "iabStandard" Bool
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Gets one size by ID.
type SizesGet =
     "dfareporting" :> "v2.2" :> "userprofiles" :>
       Capture "profileId" Int64
       :> "sizes"
       :> Capture "id" Int64
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

type AdsAPI =
     AdsList :<|>
       AdsPatch :<|> AdsGet :<|> AdsUpdate :<|> AdsInsert

-- | Inserts a new ad.
type AdsInsert =
     "dfareporting" :> "v2.2" :> "userprofiles" :>
       Capture "profileId" Int64
       :> "ads"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Retrieves a list of ads, possibly filtered.
type AdsList =
     "dfareporting" :> "v2.2" :> "userprofiles" :>
       Capture "profileId" Int64
       :> "ads"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "remarketingListIds" Int64
       :> QueryParam "landingPageIds" Int64
       :> QueryParam "creativeIds" Int64
       :> QueryParam "userIp" Text
       :> QueryParam "advertiserId" Int64
       :> QueryParam "campaignIds" Int64
       :> QueryParam "searchString" Text
       :> QueryParam "sizeIds" Int64
       :> QueryParam "sslCompliant" Bool
       :> QueryParam "ids" Int64
       :> QueryParam "sortOrder" Text
       :> QueryParam "active" Bool
       :>
       QueryParam "creativeOptimizationConfigurationIds"
         Int64
       :> QueryParam "key" Text
       :> QueryParam "placementIds" Int64
       :> QueryParam "sslRequired" Bool
       :> QueryParam "overriddenEventTagId" Int64
       :> QueryParam "pageToken" Text
       :> QueryParam "sortField" Text
       :> QueryParam "type" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "creativeType" Text
       :> QueryParam "dynamicClickTracker" Bool
       :> QueryParam "compatibility" Text
       :> QueryParam "archived" Bool
       :> QueryParam "maxResults" Int32
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text
       :> QueryParam "audienceSegmentIds" Int64

-- | Updates an existing ad. This method supports patch semantics.
type AdsPatch =
     "dfareporting" :> "v2.2" :> "userprofiles" :>
       Capture "profileId" Int64
       :> "ads"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "id" Int64
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Gets one ad by ID.
type AdsGet =
     "dfareporting" :> "v2.2" :> "userprofiles" :>
       Capture "profileId" Int64
       :> "ads"
       :> Capture "id" Int64
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Updates an existing ad.
type AdsUpdate =
     "dfareporting" :> "v2.2" :> "userprofiles" :>
       Capture "profileId" Int64
       :> "ads"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

type ProjectsAPI = ProjectsGet :<|> ProjectsList

-- | Retrieves a list of projects, possibly filtered.
type ProjectsList =
     "dfareporting" :> "v2.2" :> "userprofiles" :>
       Capture "profileId" Int64
       :> "projects"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "searchString" Text
       :> QueryParam "ids" Int64
       :> QueryParam "sortOrder" Text
       :> QueryParam "key" Text
       :> QueryParam "pageToken" Text
       :> QueryParam "sortField" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "advertiserIds" Int64
       :> QueryParam "maxResults" Int32
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Gets one project by ID.
type ProjectsGet =
     "dfareporting" :> "v2.2" :> "userprofiles" :>
       Capture "profileId" Int64
       :> "projects"
       :> Capture "id" Int64
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

type SubaccountsAPI =
     SubaccountsList :<|>
       SubaccountsPatch :<|>
         SubaccountsGet :<|>
           SubaccountsUpdate :<|> SubaccountsInsert

-- | Inserts a new subaccount.
type SubaccountsInsert =
     "dfareporting" :> "v2.2" :> "userprofiles" :>
       Capture "profileId" Int64
       :> "subaccounts"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Gets a list of subaccounts, possibly filtered.
type SubaccountsList =
     "dfareporting" :> "v2.2" :> "userprofiles" :>
       Capture "profileId" Int64
       :> "subaccounts"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "searchString" Text
       :> QueryParam "ids" Int64
       :> QueryParam "sortOrder" Text
       :> QueryParam "key" Text
       :> QueryParam "pageToken" Text
       :> QueryParam "sortField" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "maxResults" Int32
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Updates an existing subaccount. This method supports patch semantics.
type SubaccountsPatch =
     "dfareporting" :> "v2.2" :> "userprofiles" :>
       Capture "profileId" Int64
       :> "subaccounts"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "id" Int64
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Gets one subaccount by ID.
type SubaccountsGet =
     "dfareporting" :> "v2.2" :> "userprofiles" :>
       Capture "profileId" Int64
       :> "subaccounts"
       :> Capture "id" Int64
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Updates an existing subaccount.
type SubaccountsUpdate =
     "dfareporting" :> "v2.2" :> "userprofiles" :>
       Capture "profileId" Int64
       :> "subaccounts"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

type AdvertiserGroupsAPI =
     AdvertiserGroupsList :<|>
       AdvertiserGroupsPatch :<|>
         AdvertiserGroupsGet :<|>
           AdvertiserGroupsDelete :<|>
             AdvertiserGroupsUpdate :<|> AdvertiserGroupsInsert

-- | Inserts a new advertiser group.
type AdvertiserGroupsInsert =
     "dfareporting" :> "v2.2" :> "userprofiles" :>
       Capture "profileId" Int64
       :> "advertiserGroups"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Retrieves a list of advertiser groups, possibly filtered.
type AdvertiserGroupsList =
     "dfareporting" :> "v2.2" :> "userprofiles" :>
       Capture "profileId" Int64
       :> "advertiserGroups"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "searchString" Text
       :> QueryParam "ids" Int64
       :> QueryParam "sortOrder" Text
       :> QueryParam "key" Text
       :> QueryParam "pageToken" Text
       :> QueryParam "sortField" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "maxResults" Int32
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Updates an existing advertiser group. This method supports patch
-- semantics.
type AdvertiserGroupsPatch =
     "dfareporting" :> "v2.2" :> "userprofiles" :>
       Capture "profileId" Int64
       :> "advertiserGroups"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "id" Int64
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Gets one advertiser group by ID.
type AdvertiserGroupsGet =
     "dfareporting" :> "v2.2" :> "userprofiles" :>
       Capture "profileId" Int64
       :> "advertiserGroups"
       :> Capture "id" Int64
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Deletes an existing advertiser group.
type AdvertiserGroupsDelete =
     "dfareporting" :> "v2.2" :> "userprofiles" :>
       Capture "profileId" Int64
       :> "advertiserGroups"
       :> Capture "id" Int64
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Updates an existing advertiser group.
type AdvertiserGroupsUpdate =
     "dfareporting" :> "v2.2" :> "userprofiles" :>
       Capture "profileId" Int64
       :> "advertiserGroups"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

type CreativeFieldValuesAPI =
     CreativeFieldValuesList :<|>
       CreativeFieldValuesPatch :<|>
         CreativeFieldValuesGet :<|>
           CreativeFieldValuesDelete :<|>
             CreativeFieldValuesUpdate :<|>
               CreativeFieldValuesInsert

-- | Inserts a new creative field value.
type CreativeFieldValuesInsert =
     "dfareporting" :> "v2.2" :> "userprofiles" :>
       Capture "profileId" Int64
       :> "creativeFields"
       :> Capture "creativeFieldId" Int64
       :> "creativeFieldValues"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Retrieves a list of creative field values, possibly filtered.
type CreativeFieldValuesList =
     "dfareporting" :> "v2.2" :> "userprofiles" :>
       Capture "profileId" Int64
       :> "creativeFields"
       :> Capture "creativeFieldId" Int64
       :> "creativeFieldValues"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "searchString" Text
       :> QueryParam "ids" Int64
       :> QueryParam "sortOrder" Text
       :> QueryParam "key" Text
       :> QueryParam "pageToken" Text
       :> QueryParam "sortField" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "maxResults" Int32
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Updates an existing creative field value. This method supports patch
-- semantics.
type CreativeFieldValuesPatch =
     "dfareporting" :> "v2.2" :> "userprofiles" :>
       Capture "profileId" Int64
       :> "creativeFields"
       :> Capture "creativeFieldId" Int64
       :> "creativeFieldValues"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "id" Int64
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Gets one creative field value by ID.
type CreativeFieldValuesGet =
     "dfareporting" :> "v2.2" :> "userprofiles" :>
       Capture "profileId" Int64
       :> "creativeFields"
       :> Capture "creativeFieldId" Int64
       :> "creativeFieldValues"
       :> Capture "id" Int64
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Deletes an existing creative field value.
type CreativeFieldValuesDelete =
     "dfareporting" :> "v2.2" :> "userprofiles" :>
       Capture "profileId" Int64
       :> "creativeFields"
       :> Capture "creativeFieldId" Int64
       :> "creativeFieldValues"
       :> Capture "id" Int64
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Updates an existing creative field value.
type CreativeFieldValuesUpdate =
     "dfareporting" :> "v2.2" :> "userprofiles" :>
       Capture "profileId" Int64
       :> "creativeFields"
       :> Capture "creativeFieldId" Int64
       :> "creativeFieldValues"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

type DirectorySiteContactsAPI =
     DirectorySiteContactsGet :<|>
       DirectorySiteContactsList

-- | Retrieves a list of directory site contacts, possibly filtered.
type DirectorySiteContactsList =
     "dfareporting" :> "v2.2" :> "userprofiles" :>
       Capture "profileId" Int64
       :> "directorySiteContacts"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "searchString" Text
       :> QueryParam "ids" Int64
       :> QueryParam "directorySiteIds" Int64
       :> QueryParam "sortOrder" Text
       :> QueryParam "key" Text
       :> QueryParam "pageToken" Text
       :> QueryParam "sortField" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "maxResults" Int32
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Gets one directory site contact by ID.
type DirectorySiteContactsGet =
     "dfareporting" :> "v2.2" :> "userprofiles" :>
       Capture "profileId" Int64
       :> "directorySiteContacts"
       :> Capture "id" Int64
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

type DirectorySitesAPI =
     DirectorySitesList :<|>
       DirectorySitesGet :<|> DirectorySitesInsert

-- | Inserts a new directory site.
type DirectorySitesInsert =
     "dfareporting" :> "v2.2" :> "userprofiles" :>
       Capture "profileId" Int64
       :> "directorySites"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Retrieves a list of directory sites, possibly filtered.
type DirectorySitesList =
     "dfareporting" :> "v2.2" :> "userprofiles" :>
       Capture "profileId" Int64
       :> "directorySites"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "searchString" Text
       :> QueryParam "acceptsInterstitialPlacements" Bool
       :> QueryParam "acceptsPublisherPaidPlacements" Bool
       :> QueryParam "ids" Int64
       :> QueryParam "sortOrder" Text
       :> QueryParam "active" Bool
       :> QueryParam "key" Text
       :> QueryParam "countryId" Int64
       :> QueryParam "pageToken" Text
       :> QueryParam "sortField" Text
       :> QueryParam "acceptsInStreamVideoPlacements" Bool
       :> QueryParam "oauth_token" Text
       :> QueryParam "maxResults" Int32
       :> QueryParam "parentId" Int64
       :> QueryParam "dfp_network_code" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Gets one directory site by ID.
type DirectorySitesGet =
     "dfareporting" :> "v2.2" :> "userprofiles" :>
       Capture "profileId" Int64
       :> "directorySites"
       :> Capture "id" Int64
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

type FloodlightActivityGroupsAPI =
     FloodlightActivityGroupsList :<|>
       FloodlightActivityGroupsPatch :<|>
         FloodlightActivityGroupsGet :<|>
           FloodlightActivityGroupsDelete :<|>
             FloodlightActivityGroupsUpdate :<|>
               FloodlightActivityGroupsInsert

-- | Inserts a new floodlight activity group.
type FloodlightActivityGroupsInsert =
     "dfareporting" :> "v2.2" :> "userprofiles" :>
       Capture "profileId" Int64
       :> "floodlightActivityGroups"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Retrieves a list of floodlight activity groups, possibly filtered.
type FloodlightActivityGroupsList =
     "dfareporting" :> "v2.2" :> "userprofiles" :>
       Capture "profileId" Int64
       :> "floodlightActivityGroups"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "floodlightConfigurationId" Int64
       :> QueryParam "userIp" Text
       :> QueryParam "advertiserId" Int64
       :> QueryParam "searchString" Text
       :> QueryParam "ids" Int64
       :> QueryParam "sortOrder" Text
       :> QueryParam "key" Text
       :> QueryParam "pageToken" Text
       :> QueryParam "sortField" Text
       :> QueryParam "type" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "maxResults" Int32
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Updates an existing floodlight activity group. This method supports
-- patch semantics.
type FloodlightActivityGroupsPatch =
     "dfareporting" :> "v2.2" :> "userprofiles" :>
       Capture "profileId" Int64
       :> "floodlightActivityGroups"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "id" Int64
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Gets one floodlight activity group by ID.
type FloodlightActivityGroupsGet =
     "dfareporting" :> "v2.2" :> "userprofiles" :>
       Capture "profileId" Int64
       :> "floodlightActivityGroups"
       :> Capture "id" Int64
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Deletes an existing floodlight activity group.
type FloodlightActivityGroupsDelete =
     "dfareporting" :> "v2.2" :> "userprofiles" :>
       Capture "profileId" Int64
       :> "floodlightActivityGroups"
       :> Capture "id" Int64
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Updates an existing floodlight activity group.
type FloodlightActivityGroupsUpdate =
     "dfareporting" :> "v2.2" :> "userprofiles" :>
       Capture "profileId" Int64
       :> "floodlightActivityGroups"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text
