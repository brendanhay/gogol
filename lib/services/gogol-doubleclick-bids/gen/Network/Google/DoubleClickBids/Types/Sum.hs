{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.DoubleClickBids.Types.Sum
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.DoubleClickBids.Types.Sum where

import Network.Google.Prelude hiding (Bytes)

-- | Format of the generated report.
data QueryMetadataFormat
    = CSV
      -- ^ @CSV@
    | ExcelCSV
      -- ^ @EXCEL_CSV@
    | Xlsx
      -- ^ @XLSX@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable QueryMetadataFormat

instance FromHttpApiData QueryMetadataFormat where
    parseQueryParam = \case
        "CSV" -> Right CSV
        "EXCEL_CSV" -> Right ExcelCSV
        "XLSX" -> Right Xlsx
        x -> Left ("Unable to parse QueryMetadataFormat from: " <> x)

instance ToHttpApiData QueryMetadataFormat where
    toQueryParam = \case
        CSV -> "CSV"
        ExcelCSV -> "EXCEL_CSV"
        Xlsx -> "XLSX"

instance FromJSON QueryMetadataFormat where
    parseJSON = parseJSONText "QueryMetadataFormat"

instance ToJSON QueryMetadataFormat where
    toJSON = toJSONText

-- | Dimension the filter is applied to.
data PathQueryOptionsFilterFilter
    = FilterUnknown
      -- ^ @FILTER_UNKNOWN@
    | FilterDate
      -- ^ @FILTER_DATE@
    | FilterDayOfWeek
      -- ^ @FILTER_DAY_OF_WEEK@
    | FilterWeek
      -- ^ @FILTER_WEEK@
    | FilterMonth
      -- ^ @FILTER_MONTH@
    | FilterYear
      -- ^ @FILTER_YEAR@
    | FilterTimeOfDay
      -- ^ @FILTER_TIME_OF_DAY@
    | FilterConversionDelay
      -- ^ @FILTER_CONVERSION_DELAY@
    | FilterCreativeId
      -- ^ @FILTER_CREATIVE_ID@
    | FilterCreativeSize
      -- ^ @FILTER_CREATIVE_SIZE@
    | FilterCreativeType
      -- ^ @FILTER_CREATIVE_TYPE@
    | FilterExchangeId
      -- ^ @FILTER_EXCHANGE_ID@
    | FilterAdPosition
      -- ^ @FILTER_AD_POSITION@
    | FilterPublicInventory
      -- ^ @FILTER_PUBLIC_INVENTORY@
    | FilterInventorySource
      -- ^ @FILTER_INVENTORY_SOURCE@
    | FilterCity
      -- ^ @FILTER_CITY@
    | FilterRegion
      -- ^ @FILTER_REGION@
    | FilterDma
      -- ^ @FILTER_DMA@
    | FilterCountry
      -- ^ @FILTER_COUNTRY@
    | FilterSiteId
      -- ^ @FILTER_SITE_ID@
    | FilterChannelId
      -- ^ @FILTER_CHANNEL_ID@
    | FilterPartner
      -- ^ @FILTER_PARTNER@
    | FilterAdvertiser
      -- ^ @FILTER_ADVERTISER@
    | FilterInsertionOrder
      -- ^ @FILTER_INSERTION_ORDER@
    | FilterLineItem
      -- ^ @FILTER_LINE_ITEM@
    | FilterPartnerCurrency
      -- ^ @FILTER_PARTNER_CURRENCY@
    | FilterAdvertiserCurrency
      -- ^ @FILTER_ADVERTISER_CURRENCY@
    | FilterAdvertiserTimezone
      -- ^ @FILTER_ADVERTISER_TIMEZONE@
    | FilterLineItemType
      -- ^ @FILTER_LINE_ITEM_TYPE@
    | FilterUserList
      -- ^ @FILTER_USER_LIST@
    | FilterUserListFirstParty
      -- ^ @FILTER_USER_LIST_FIRST_PARTY@
    | FilterUserListThirdParty
      -- ^ @FILTER_USER_LIST_THIRD_PARTY@
    | FilterTargetedUserList
      -- ^ @FILTER_TARGETED_USER_LIST@
    | FilterDataProvider
      -- ^ @FILTER_DATA_PROVIDER@
    | FilterOrderId
      -- ^ @FILTER_ORDER_ID@
    | FilterVideoPlayerSize
      -- ^ @FILTER_VIDEO_PLAYER_SIZE@
    | FilterVideoDurationSeconds
      -- ^ @FILTER_VIDEO_DURATION_SECONDS@
    | FilterKeyword
      -- ^ @FILTER_KEYWORD@
    | FilterPageCategory
      -- ^ @FILTER_PAGE_CATEGORY@
    | FilterCampaignDailyFrequency
      -- ^ @FILTER_CAMPAIGN_DAILY_FREQUENCY@
    | FilterLineItemDailyFrequency
      -- ^ @FILTER_LINE_ITEM_DAILY_FREQUENCY@
    | FilterLineItemLifetimeFrequency
      -- ^ @FILTER_LINE_ITEM_LIFETIME_FREQUENCY@
    | FilterOS
      -- ^ @FILTER_OS@
    | FilterBrowser
      -- ^ @FILTER_BROWSER@
    | FilterCarrier
      -- ^ @FILTER_CARRIER@
    | FilterSiteLanguage
      -- ^ @FILTER_SITE_LANGUAGE@
    | FilterInventoryFormat
      -- ^ @FILTER_INVENTORY_FORMAT@
    | FilterZipCode
      -- ^ @FILTER_ZIP_CODE@
    | FilterVideoRatingTier
      -- ^ @FILTER_VIDEO_RATING_TIER@
    | FilterVideoFormatSupport
      -- ^ @FILTER_VIDEO_FORMAT_SUPPORT@
    | FilterVideoSkippableSupport
      -- ^ @FILTER_VIDEO_SKIPPABLE_SUPPORT@
    | FilterVideoCreativeDuration
      -- ^ @FILTER_VIDEO_CREATIVE_DURATION@
    | FilterPageLayout
      -- ^ @FILTER_PAGE_LAYOUT@
    | FilterVideoAdPositionInStream
      -- ^ @FILTER_VIDEO_AD_POSITION_IN_STREAM@
    | FilterAge
      -- ^ @FILTER_AGE@
    | FilterGender
      -- ^ @FILTER_GENDER@
    | FilterQuarter
      -- ^ @FILTER_QUARTER@
    | FilterTrueviewConversionType
      -- ^ @FILTER_TRUEVIEW_CONVERSION_TYPE@
    | FilterMobileGeo
      -- ^ @FILTER_MOBILE_GEO@
    | FilterMraidSupport
      -- ^ @FILTER_MRAID_SUPPORT@
    | FilterActiveViewExpectedViewability
      -- ^ @FILTER_ACTIVE_VIEW_EXPECTED_VIEWABILITY@
    | FilterVideoCreativeDurationSkippable
      -- ^ @FILTER_VIDEO_CREATIVE_DURATION_SKIPPABLE@
    | FilterNielsenCountryCode
      -- ^ @FILTER_NIELSEN_COUNTRY_CODE@
    | FilterNielsenDeviceId
      -- ^ @FILTER_NIELSEN_DEVICE_ID@
    | FilterNielsenGender
      -- ^ @FILTER_NIELSEN_GENDER@
    | FilterNielsenAge
      -- ^ @FILTER_NIELSEN_AGE@
    | FilterInventorySourceType
      -- ^ @FILTER_INVENTORY_SOURCE_TYPE@
    | FilterCreativeWidth
      -- ^ @FILTER_CREATIVE_WIDTH@
    | FilterCreativeHeight
      -- ^ @FILTER_CREATIVE_HEIGHT@
    | FilterDfpOrderId
      -- ^ @FILTER_DFP_ORDER_ID@
    | FilterTrueviewAge
      -- ^ @FILTER_TRUEVIEW_AGE@
    | FilterTrueviewGender
      -- ^ @FILTER_TRUEVIEW_GENDER@
    | FilterTrueviewParentalStatus
      -- ^ @FILTER_TRUEVIEW_PARENTAL_STATUS@
    | FilterTrueviewRemarketingList
      -- ^ @FILTER_TRUEVIEW_REMARKETING_LIST@
    | FilterTrueviewInterest
      -- ^ @FILTER_TRUEVIEW_INTEREST@
    | FilterTrueviewAdGroupId
      -- ^ @FILTER_TRUEVIEW_AD_GROUP_ID@
    | FilterTrueviewAdGroupAdId
      -- ^ @FILTER_TRUEVIEW_AD_GROUP_AD_ID@
    | FilterTrueviewIarLanguage
      -- ^ @FILTER_TRUEVIEW_IAR_LANGUAGE@
    | FilterTrueviewIarGender
      -- ^ @FILTER_TRUEVIEW_IAR_GENDER@
    | FilterTrueviewIarAge
      -- ^ @FILTER_TRUEVIEW_IAR_AGE@
    | FilterTrueviewIarCategory
      -- ^ @FILTER_TRUEVIEW_IAR_CATEGORY@
    | FilterTrueviewIarCountry
      -- ^ @FILTER_TRUEVIEW_IAR_COUNTRY@
    | FilterTrueviewIarCity
      -- ^ @FILTER_TRUEVIEW_IAR_CITY@
    | FilterTrueviewIarRegion
      -- ^ @FILTER_TRUEVIEW_IAR_REGION@
    | FilterTrueviewIarZipcode
      -- ^ @FILTER_TRUEVIEW_IAR_ZIPCODE@
    | FilterTrueviewIarRemarketingList
      -- ^ @FILTER_TRUEVIEW_IAR_REMARKETING_LIST@
    | FilterTrueviewIarInterest
      -- ^ @FILTER_TRUEVIEW_IAR_INTEREST@
    | FilterTrueviewIarParentalStatus
      -- ^ @FILTER_TRUEVIEW_IAR_PARENTAL_STATUS@
    | FilterTrueviewIarTimeOfDay
      -- ^ @FILTER_TRUEVIEW_IAR_TIME_OF_DAY@
    | FilterTrueviewCustomAffinity
      -- ^ @FILTER_TRUEVIEW_CUSTOM_AFFINITY@
    | FilterTrueviewCategory
      -- ^ @FILTER_TRUEVIEW_CATEGORY@
    | FilterTrueviewKeyword
      -- ^ @FILTER_TRUEVIEW_KEYWORD@
    | FilterTrueviewPlacement
      -- ^ @FILTER_TRUEVIEW_PLACEMENT@
    | FilterTrueviewURL
      -- ^ @FILTER_TRUEVIEW_URL@
    | FilterTrueviewCountry
      -- ^ @FILTER_TRUEVIEW_COUNTRY@
    | FilterTrueviewRegion
      -- ^ @FILTER_TRUEVIEW_REGION@
    | FilterTrueviewCity
      -- ^ @FILTER_TRUEVIEW_CITY@
    | FilterTrueviewDma
      -- ^ @FILTER_TRUEVIEW_DMA@
    | FilterTrueviewZipcode
      -- ^ @FILTER_TRUEVIEW_ZIPCODE@
    | FilterNotSupported
      -- ^ @FILTER_NOT_SUPPORTED@
    | FilterMediaPlan
      -- ^ @FILTER_MEDIA_PLAN@
    | FilterTrueviewIarYouTubeChannel
      -- ^ @FILTER_TRUEVIEW_IAR_YOUTUBE_CHANNEL@
    | FilterTrueviewIarYouTubeVideo
      -- ^ @FILTER_TRUEVIEW_IAR_YOUTUBE_VIDEO@
    | FilterSkippableSupport
      -- ^ @FILTER_SKIPPABLE_SUPPORT@
    | FilterCompanionCreativeId
      -- ^ @FILTER_COMPANION_CREATIVE_ID@
    | FilterBudgetSegmentDescription
      -- ^ @FILTER_BUDGET_SEGMENT_DESCRIPTION@
    | FilterFloodlightActivityId
      -- ^ @FILTER_FLOODLIGHT_ACTIVITY_ID@
    | FilterDeviceModel
      -- ^ @FILTER_DEVICE_MODEL@
    | FilterDeviceMake
      -- ^ @FILTER_DEVICE_MAKE@
    | FilterDeviceType
      -- ^ @FILTER_DEVICE_TYPE@
    | FilterCreativeAttribute
      -- ^ @FILTER_CREATIVE_ATTRIBUTE@
    | FilterInventoryCommitmentType
      -- ^ @FILTER_INVENTORY_COMMITMENT_TYPE@
    | FilterInventoryRateType
      -- ^ @FILTER_INVENTORY_RATE_TYPE@
    | FilterInventoryDeliveryMethod
      -- ^ @FILTER_INVENTORY_DELIVERY_METHOD@
    | FilterInventorySourceExternalId
      -- ^ @FILTER_INVENTORY_SOURCE_EXTERNAL_ID@
    | FilterAuthorizedSellerState
      -- ^ @FILTER_AUTHORIZED_SELLER_STATE@
    | FilterVideoDurationSecondsRange
      -- ^ @FILTER_VIDEO_DURATION_SECONDS_RANGE@
    | FilterPartnerName
      -- ^ @FILTER_PARTNER_NAME@
    | FilterPartnerStatus
      -- ^ @FILTER_PARTNER_STATUS@
    | FilterAdvertiserName
      -- ^ @FILTER_ADVERTISER_NAME@
    | FilterAdvertiserIntegrationCode
      -- ^ @FILTER_ADVERTISER_INTEGRATION_CODE@
    | FilterAdvertiserIntegrationStatus
      -- ^ @FILTER_ADVERTISER_INTEGRATION_STATUS@
    | FilterCarrierName
      -- ^ @FILTER_CARRIER_NAME@
    | FilterChannelName
      -- ^ @FILTER_CHANNEL_NAME@
    | FilterCityName
      -- ^ @FILTER_CITY_NAME@
    | FilterCompanionCreativeName
      -- ^ @FILTER_COMPANION_CREATIVE_NAME@
    | FilterUserListFirstPartyName
      -- ^ @FILTER_USER_LIST_FIRST_PARTY_NAME@
    | FilterUserListThirdPartyName
      -- ^ @FILTER_USER_LIST_THIRD_PARTY_NAME@
    | FilterNielsenReStatementDate
      -- ^ @FILTER_NIELSEN_RESTATEMENT_DATE@
    | FilterNielsenDateRange
      -- ^ @FILTER_NIELSEN_DATE_RANGE@
    | FilterInsertionOrderName
      -- ^ @FILTER_INSERTION_ORDER_NAME@
    | FilterRegionName
      -- ^ @FILTER_REGION_NAME@
    | FilterDmaName
      -- ^ @FILTER_DMA_NAME@
    | FilterTrueviewIarRegionName
      -- ^ @FILTER_TRUEVIEW_IAR_REGION_NAME@
    | FilterTrueviewDmaName
      -- ^ @FILTER_TRUEVIEW_DMA_NAME@
    | FilterTrueviewRegionName
      -- ^ @FILTER_TRUEVIEW_REGION_NAME@
    | FilterActiveViewCustomMetricId
      -- ^ @FILTER_ACTIVE_VIEW_CUSTOM_METRIC_ID@
    | FilterActiveViewCustomMetricName
      -- ^ @FILTER_ACTIVE_VIEW_CUSTOM_METRIC_NAME@
    | FilterAdType
      -- ^ @FILTER_AD_TYPE@
    | FilterAlgorithm
      -- ^ @FILTER_ALGORITHM@
    | FilterAlgorithmId
      -- ^ @FILTER_ALGORITHM_ID@
    | FilterAmpPageRequest
      -- ^ @FILTER_AMP_PAGE_REQUEST@
    | FilterAnonymousInventoryModeling
      -- ^ @FILTER_ANONYMOUS_INVENTORY_MODELING@
    | FilterAppURL
      -- ^ @FILTER_APP_URL@
    | FilterAppURLExcluded
      -- ^ @FILTER_APP_URL_EXCLUDED@
    | FilterAttributedUserList
      -- ^ @FILTER_ATTRIBUTED_USERLIST@
    | FilterAttributedUserListCost
      -- ^ @FILTER_ATTRIBUTED_USERLIST_COST@
    | FilterAttributedUserListType
      -- ^ @FILTER_ATTRIBUTED_USERLIST_TYPE@
    | FilterAttributionModel
      -- ^ @FILTER_ATTRIBUTION_MODEL@
    | FilterAudienceList
      -- ^ @FILTER_AUDIENCE_LIST@
    | FilterAudienceListCost
      -- ^ @FILTER_AUDIENCE_LIST_COST@
    | FilterAudienceListType
      -- ^ @FILTER_AUDIENCE_LIST_TYPE@
    | FilterAudienceName
      -- ^ @FILTER_AUDIENCE_NAME@
    | FilterAudienceType
      -- ^ @FILTER_AUDIENCE_TYPE@
    | FilterBillableOutcome
      -- ^ @FILTER_BILLABLE_OUTCOME@
    | FilterBrandLiftType
      -- ^ @FILTER_BRAND_LIFT_TYPE@
    | FilterChannelType
      -- ^ @FILTER_CHANNEL_TYPE@
    | FilterCmPlacementId
      -- ^ @FILTER_CM_PLACEMENT_ID@
    | FilterConversionSource
      -- ^ @FILTER_CONVERSION_SOURCE@
    | FilterConversionSourceId
      -- ^ @FILTER_CONVERSION_SOURCE_ID@
    | FilterCountryId
      -- ^ @FILTER_COUNTRY_ID@
    | FilterCreative
      -- ^ @FILTER_CREATIVE@
    | FilterCreativeAsset
      -- ^ @FILTER_CREATIVE_ASSET@
    | FilterCreativeIntegrationCode
      -- ^ @FILTER_CREATIVE_INTEGRATION_CODE@
    | FilterCreativeRenderedInAmp
      -- ^ @FILTER_CREATIVE_RENDERED_IN_AMP@
    | FilterCreativeSource
      -- ^ @FILTER_CREATIVE_SOURCE@
    | FilterCreativeStatus
      -- ^ @FILTER_CREATIVE_STATUS@
    | FilterDataProviderName
      -- ^ @FILTER_DATA_PROVIDER_NAME@
    | FilterDetailedDemographics
      -- ^ @FILTER_DETAILED_DEMOGRAPHICS@
    | FilterDetailedDemographicsId
      -- ^ @FILTER_DETAILED_DEMOGRAPHICS_ID@
    | FilterDevice
      -- ^ @FILTER_DEVICE@
    | FilterGamInsertionOrder
      -- ^ @FILTER_GAM_INSERTION_ORDER@
    | FilterGamLineItem
      -- ^ @FILTER_GAM_LINE_ITEM@
    | FilterGamLineItemId
      -- ^ @FILTER_GAM_LINE_ITEM_ID@
    | FilterDigitalContentLabel
      -- ^ @FILTER_DIGITAL_CONTENT_LABEL@
    | FilterDomain
      -- ^ @FILTER_DOMAIN@
    | FilterEligibleCookiesOnFirstPartyAudienceList
      -- ^ @FILTER_ELIGIBLE_COOKIES_ON_FIRST_PARTY_AUDIENCE_LIST@
    | FilterEligibleCookiesOnThirdPartyAudienceListAndInterest
      -- ^ @FILTER_ELIGIBLE_COOKIES_ON_THIRD_PARTY_AUDIENCE_LIST_AND_INTEREST@
    | FilterExchange
      -- ^ @FILTER_EXCHANGE@
    | FilterExchangeCode
      -- ^ @FILTER_EXCHANGE_CODE@
    | FilterExtension
      -- ^ @FILTER_EXTENSION@
    | FilterExtensionStatus
      -- ^ @FILTER_EXTENSION_STATUS@
    | FilterExtensionType
      -- ^ @FILTER_EXTENSION_TYPE@
    | FilterFirstPartyAudienceListCost
      -- ^ @FILTER_FIRST_PARTY_AUDIENCE_LIST_COST@
    | FilterFirstPartyAudienceListType
      -- ^ @FILTER_FIRST_PARTY_AUDIENCE_LIST_TYPE@
    | FilterFloodlightActivity
      -- ^ @FILTER_FLOODLIGHT_ACTIVITY@
    | FilterFormat
      -- ^ @FILTER_FORMAT@
    | FilterGmailAge
      -- ^ @FILTER_GMAIL_AGE@
    | FilterGmailCity
      -- ^ @FILTER_GMAIL_CITY@
    | FilterGmailCountry
      -- ^ @FILTER_GMAIL_COUNTRY@
    | FilterGmailCountryName
      -- ^ @FILTER_GMAIL_COUNTRY_NAME@
    | FilterGmailDeviceType
      -- ^ @FILTER_GMAIL_DEVICE_TYPE@
    | FilterGmailDeviceTypeName
      -- ^ @FILTER_GMAIL_DEVICE_TYPE_NAME@
    | FilterGmailGender
      -- ^ @FILTER_GMAIL_GENDER@
    | FilterGmailRegion
      -- ^ @FILTER_GMAIL_REGION@
    | FilterGmailRemarketingList
      -- ^ @FILTER_GMAIL_REMARKETING_LIST@
    | FilterHouseholdIncome
      -- ^ @FILTER_HOUSEHOLD_INCOME@
    | FilterImpressionCountingMethod
      -- ^ @FILTER_IMPRESSION_COUNTING_METHOD@
    | FilterYouTubeProgrammaticGuaranteedInsertionOrder
      -- ^ @FILTER_YOUTUBE_PROGRAMMATIC_GUARANTEED_INSERTION_ORDER@
    | FilterInsertionOrderIntegrationCode
      -- ^ @FILTER_INSERTION_ORDER_INTEGRATION_CODE@
    | FilterInsertionOrderStatus
      -- ^ @FILTER_INSERTION_ORDER_STATUS@
    | FilterInterest
      -- ^ @FILTER_INTEREST@
    | FilterInventorySourceGroup
      -- ^ @FILTER_INVENTORY_SOURCE_GROUP@
    | FilterInventorySourceGroupId
      -- ^ @FILTER_INVENTORY_SOURCE_GROUP_ID@
    | FilterInventorySourceId
      -- ^ @FILTER_INVENTORY_SOURCE_ID@
    | FilterInventorySourceName
      -- ^ @FILTER_INVENTORY_SOURCE_NAME@
    | FilterLifeEvent
      -- ^ @FILTER_LIFE_EVENT@
    | FilterLifeEvents
      -- ^ @FILTER_LIFE_EVENTS@
    | FilterLineItemIntegrationCode
      -- ^ @FILTER_LINE_ITEM_INTEGRATION_CODE@
    | FilterLineItemName
      -- ^ @FILTER_LINE_ITEM_NAME@
    | FilterLineItemStatus
      -- ^ @FILTER_LINE_ITEM_STATUS@
    | FilterMatchRatio
      -- ^ @FILTER_MATCH_RATIO@
    | FilterMeasurementSource
      -- ^ @FILTER_MEASUREMENT_SOURCE@
    | FilterMediaPlanName
      -- ^ @FILTER_MEDIA_PLAN_NAME@
    | FilterParentalStatus
      -- ^ @FILTER_PARENTAL_STATUS@
    | FilterPlacementAllYouTubeChannels
      -- ^ @FILTER_PLACEMENT_ALL_YOUTUBE_CHANNELS@
    | FilterPlatform
      -- ^ @FILTER_PLATFORM@
    | FilterPlaybackMethod
      -- ^ @FILTER_PLAYBACK_METHOD@
    | FilterPositionInContent
      -- ^ @FILTER_POSITION_IN_CONTENT@
    | FilterPublisherProperty
      -- ^ @FILTER_PUBLISHER_PROPERTY@
    | FilterPublisherPropertyId
      -- ^ @FILTER_PUBLISHER_PROPERTY_ID@
    | FilterPublisherPropertySection
      -- ^ @FILTER_PUBLISHER_PROPERTY_SECTION@
    | FilterPublisherPropertySectionId
      -- ^ @FILTER_PUBLISHER_PROPERTY_SECTION_ID@
    | FilterRefundReason
      -- ^ @FILTER_REFUND_REASON@
    | FilterRemarketingList
      -- ^ @FILTER_REMARKETING_LIST@
    | FilterRewarded
      -- ^ @FILTER_REWARDED@
    | FilterSensitiveCategory
      -- ^ @FILTER_SENSITIVE_CATEGORY@
    | FilterServedPixelDensity
      -- ^ @FILTER_SERVED_PIXEL_DENSITY@
    | FilterTargetedDataProviders
      -- ^ @FILTER_TARGETED_DATA_PROVIDERS@
    | FilterThirdPartyAudienceListCost
      -- ^ @FILTER_THIRD_PARTY_AUDIENCE_LIST_COST@
    | FilterThirdPartyAudienceListType
      -- ^ @FILTER_THIRD_PARTY_AUDIENCE_LIST_TYPE@
    | FilterTrueviewAd
      -- ^ @FILTER_TRUEVIEW_AD@
    | FilterTrueviewAdGroup
      -- ^ @FILTER_TRUEVIEW_AD_GROUP@
    | FilterTrueviewDetailedDemographics
      -- ^ @FILTER_TRUEVIEW_DETAILED_DEMOGRAPHICS@
    | FilterTrueviewDetailedDemographicsId
      -- ^ @FILTER_TRUEVIEW_DETAILED_DEMOGRAPHICS_ID@
    | FilterTrueviewHouseholdIncome
      -- ^ @FILTER_TRUEVIEW_HOUSEHOLD_INCOME@
    | FilterTrueviewIarCountryName
      -- ^ @FILTER_TRUEVIEW_IAR_COUNTRY_NAME@
    | FilterTrueviewRemarketingListName
      -- ^ @FILTER_TRUEVIEW_REMARKETING_LIST_NAME@
    | FilterVariantId
      -- ^ @FILTER_VARIANT_ID@
    | FilterVariantName
      -- ^ @FILTER_VARIANT_NAME@
    | FilterVariantVersion
      -- ^ @FILTER_VARIANT_VERSION@
    | FilterVerificationVideoPlayerSize
      -- ^ @FILTER_VERIFICATION_VIDEO_PLAYER_SIZE@
    | FilterVerificationVideoPosition
      -- ^ @FILTER_VERIFICATION_VIDEO_POSITION@
    | FilterVideoCompanionCreativeSize
      -- ^ @FILTER_VIDEO_COMPANION_CREATIVE_SIZE@
    | FilterVideoContinuousPlay
      -- ^ @FILTER_VIDEO_CONTINUOUS_PLAY@
    | FilterVideoDuration
      -- ^ @FILTER_VIDEO_DURATION@
    | FilterYouTubeAdaptedAudienceList
      -- ^ @FILTER_YOUTUBE_ADAPTED_AUDIENCE_LIST@
    | FilterYouTubeAdVideo
      -- ^ @FILTER_YOUTUBE_AD_VIDEO@
    | FilterYouTubeAdVideoId
      -- ^ @FILTER_YOUTUBE_AD_VIDEO_ID@
    | FilterYouTubeChannel
      -- ^ @FILTER_YOUTUBE_CHANNEL@
    | FilterYouTubeProgrammaticGuaranteedAdvertiser
      -- ^ @FILTER_YOUTUBE_PROGRAMMATIC_GUARANTEED_ADVERTISER@
    | FilterYouTubeProgrammaticGuaranteedPartner
      -- ^ @FILTER_YOUTUBE_PROGRAMMATIC_GUARANTEED_PARTNER@
    | FilterYouTubeVideo
      -- ^ @FILTER_YOUTUBE_VIDEO@
    | FilterZipPostalCode
      -- ^ @FILTER_ZIP_POSTAL_CODE@
    | FilterPlacementNameAllYouTubeChannels
      -- ^ @FILTER_PLACEMENT_NAME_ALL_YOUTUBE_CHANNELS@
    | FilterTrueviewPlacementId
      -- ^ @FILTER_TRUEVIEW_PLACEMENT_ID@
    | FilterPathPatternId
      -- ^ @FILTER_PATH_PATTERN_ID@
    | FilterPathEventIndex
      -- ^ @FILTER_PATH_EVENT_INDEX@
    | FilterEventType
      -- ^ @FILTER_EVENT_TYPE@
    | FilterChannelGrouping
      -- ^ @FILTER_CHANNEL_GROUPING@
    | FilterOmSdkAvailable
      -- ^ @FILTER_OM_SDK_AVAILABLE@
    | FilterDataSource
      -- ^ @FILTER_DATA_SOURCE@
    | FilterCM360PlacementId
      -- ^ @FILTER_CM360_PLACEMENT_ID@
    | FilterTrueviewClickTypeName
      -- ^ @FILTER_TRUEVIEW_CLICK_TYPE_NAME@
    | FilterTrueviewAdTypeName
      -- ^ @FILTER_TRUEVIEW_AD_TYPE_NAME@
    | FilterVideoContentDuration
      -- ^ @FILTER_VIDEO_CONTENT_DURATION@
    | FilterMatchedGenreTarget
      -- ^ @FILTER_MATCHED_GENRE_TARGET@
    | FilterVideoContentLiveStream
      -- ^ @FILTER_VIDEO_CONTENT_LIVE_STREAM@
    | FilterBudgetSegmentType
      -- ^ @FILTER_BUDGET_SEGMENT_TYPE@
    | FilterBudgetSegmentBudget
      -- ^ @FILTER_BUDGET_SEGMENT_BUDGET@
    | FilterBudgetSegmentStartDate
      -- ^ @FILTER_BUDGET_SEGMENT_START_DATE@
    | FilterBudgetSegmentEndDate
      -- ^ @FILTER_BUDGET_SEGMENT_END_DATE@
    | FilterBudgetSegmentPacingPercentage
      -- ^ @FILTER_BUDGET_SEGMENT_PACING_PERCENTAGE@
    | FilterLineItemBudget
      -- ^ @FILTER_LINE_ITEM_BUDGET@
    | FilterLineItemStartDate
      -- ^ @FILTER_LINE_ITEM_START_DATE@
    | FilterLineItemEndDate
      -- ^ @FILTER_LINE_ITEM_END_DATE@
    | FilterInsertionOrderGoalType
      -- ^ @FILTER_INSERTION_ORDER_GOAL_TYPE@
    | FilterLineItemPacingPercentage
      -- ^ @FILTER_LINE_ITEM_PACING_PERCENTAGE@
    | FilterInsertionOrderGoalValue
      -- ^ @FILTER_INSERTION_ORDER_GOAL_VALUE@
    | FilterOmidCapable
      -- ^ @FILTER_OMID_CAPABLE@
    | FilterVendorMeasurementMode
      -- ^ @FILTER_VENDOR_MEASUREMENT_MODE@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable PathQueryOptionsFilterFilter

instance FromHttpApiData PathQueryOptionsFilterFilter where
    parseQueryParam = \case
        "FILTER_UNKNOWN" -> Right FilterUnknown
        "FILTER_DATE" -> Right FilterDate
        "FILTER_DAY_OF_WEEK" -> Right FilterDayOfWeek
        "FILTER_WEEK" -> Right FilterWeek
        "FILTER_MONTH" -> Right FilterMonth
        "FILTER_YEAR" -> Right FilterYear
        "FILTER_TIME_OF_DAY" -> Right FilterTimeOfDay
        "FILTER_CONVERSION_DELAY" -> Right FilterConversionDelay
        "FILTER_CREATIVE_ID" -> Right FilterCreativeId
        "FILTER_CREATIVE_SIZE" -> Right FilterCreativeSize
        "FILTER_CREATIVE_TYPE" -> Right FilterCreativeType
        "FILTER_EXCHANGE_ID" -> Right FilterExchangeId
        "FILTER_AD_POSITION" -> Right FilterAdPosition
        "FILTER_PUBLIC_INVENTORY" -> Right FilterPublicInventory
        "FILTER_INVENTORY_SOURCE" -> Right FilterInventorySource
        "FILTER_CITY" -> Right FilterCity
        "FILTER_REGION" -> Right FilterRegion
        "FILTER_DMA" -> Right FilterDma
        "FILTER_COUNTRY" -> Right FilterCountry
        "FILTER_SITE_ID" -> Right FilterSiteId
        "FILTER_CHANNEL_ID" -> Right FilterChannelId
        "FILTER_PARTNER" -> Right FilterPartner
        "FILTER_ADVERTISER" -> Right FilterAdvertiser
        "FILTER_INSERTION_ORDER" -> Right FilterInsertionOrder
        "FILTER_LINE_ITEM" -> Right FilterLineItem
        "FILTER_PARTNER_CURRENCY" -> Right FilterPartnerCurrency
        "FILTER_ADVERTISER_CURRENCY" -> Right FilterAdvertiserCurrency
        "FILTER_ADVERTISER_TIMEZONE" -> Right FilterAdvertiserTimezone
        "FILTER_LINE_ITEM_TYPE" -> Right FilterLineItemType
        "FILTER_USER_LIST" -> Right FilterUserList
        "FILTER_USER_LIST_FIRST_PARTY" -> Right FilterUserListFirstParty
        "FILTER_USER_LIST_THIRD_PARTY" -> Right FilterUserListThirdParty
        "FILTER_TARGETED_USER_LIST" -> Right FilterTargetedUserList
        "FILTER_DATA_PROVIDER" -> Right FilterDataProvider
        "FILTER_ORDER_ID" -> Right FilterOrderId
        "FILTER_VIDEO_PLAYER_SIZE" -> Right FilterVideoPlayerSize
        "FILTER_VIDEO_DURATION_SECONDS" -> Right FilterVideoDurationSeconds
        "FILTER_KEYWORD" -> Right FilterKeyword
        "FILTER_PAGE_CATEGORY" -> Right FilterPageCategory
        "FILTER_CAMPAIGN_DAILY_FREQUENCY" -> Right FilterCampaignDailyFrequency
        "FILTER_LINE_ITEM_DAILY_FREQUENCY" -> Right FilterLineItemDailyFrequency
        "FILTER_LINE_ITEM_LIFETIME_FREQUENCY" -> Right FilterLineItemLifetimeFrequency
        "FILTER_OS" -> Right FilterOS
        "FILTER_BROWSER" -> Right FilterBrowser
        "FILTER_CARRIER" -> Right FilterCarrier
        "FILTER_SITE_LANGUAGE" -> Right FilterSiteLanguage
        "FILTER_INVENTORY_FORMAT" -> Right FilterInventoryFormat
        "FILTER_ZIP_CODE" -> Right FilterZipCode
        "FILTER_VIDEO_RATING_TIER" -> Right FilterVideoRatingTier
        "FILTER_VIDEO_FORMAT_SUPPORT" -> Right FilterVideoFormatSupport
        "FILTER_VIDEO_SKIPPABLE_SUPPORT" -> Right FilterVideoSkippableSupport
        "FILTER_VIDEO_CREATIVE_DURATION" -> Right FilterVideoCreativeDuration
        "FILTER_PAGE_LAYOUT" -> Right FilterPageLayout
        "FILTER_VIDEO_AD_POSITION_IN_STREAM" -> Right FilterVideoAdPositionInStream
        "FILTER_AGE" -> Right FilterAge
        "FILTER_GENDER" -> Right FilterGender
        "FILTER_QUARTER" -> Right FilterQuarter
        "FILTER_TRUEVIEW_CONVERSION_TYPE" -> Right FilterTrueviewConversionType
        "FILTER_MOBILE_GEO" -> Right FilterMobileGeo
        "FILTER_MRAID_SUPPORT" -> Right FilterMraidSupport
        "FILTER_ACTIVE_VIEW_EXPECTED_VIEWABILITY" -> Right FilterActiveViewExpectedViewability
        "FILTER_VIDEO_CREATIVE_DURATION_SKIPPABLE" -> Right FilterVideoCreativeDurationSkippable
        "FILTER_NIELSEN_COUNTRY_CODE" -> Right FilterNielsenCountryCode
        "FILTER_NIELSEN_DEVICE_ID" -> Right FilterNielsenDeviceId
        "FILTER_NIELSEN_GENDER" -> Right FilterNielsenGender
        "FILTER_NIELSEN_AGE" -> Right FilterNielsenAge
        "FILTER_INVENTORY_SOURCE_TYPE" -> Right FilterInventorySourceType
        "FILTER_CREATIVE_WIDTH" -> Right FilterCreativeWidth
        "FILTER_CREATIVE_HEIGHT" -> Right FilterCreativeHeight
        "FILTER_DFP_ORDER_ID" -> Right FilterDfpOrderId
        "FILTER_TRUEVIEW_AGE" -> Right FilterTrueviewAge
        "FILTER_TRUEVIEW_GENDER" -> Right FilterTrueviewGender
        "FILTER_TRUEVIEW_PARENTAL_STATUS" -> Right FilterTrueviewParentalStatus
        "FILTER_TRUEVIEW_REMARKETING_LIST" -> Right FilterTrueviewRemarketingList
        "FILTER_TRUEVIEW_INTEREST" -> Right FilterTrueviewInterest
        "FILTER_TRUEVIEW_AD_GROUP_ID" -> Right FilterTrueviewAdGroupId
        "FILTER_TRUEVIEW_AD_GROUP_AD_ID" -> Right FilterTrueviewAdGroupAdId
        "FILTER_TRUEVIEW_IAR_LANGUAGE" -> Right FilterTrueviewIarLanguage
        "FILTER_TRUEVIEW_IAR_GENDER" -> Right FilterTrueviewIarGender
        "FILTER_TRUEVIEW_IAR_AGE" -> Right FilterTrueviewIarAge
        "FILTER_TRUEVIEW_IAR_CATEGORY" -> Right FilterTrueviewIarCategory
        "FILTER_TRUEVIEW_IAR_COUNTRY" -> Right FilterTrueviewIarCountry
        "FILTER_TRUEVIEW_IAR_CITY" -> Right FilterTrueviewIarCity
        "FILTER_TRUEVIEW_IAR_REGION" -> Right FilterTrueviewIarRegion
        "FILTER_TRUEVIEW_IAR_ZIPCODE" -> Right FilterTrueviewIarZipcode
        "FILTER_TRUEVIEW_IAR_REMARKETING_LIST" -> Right FilterTrueviewIarRemarketingList
        "FILTER_TRUEVIEW_IAR_INTEREST" -> Right FilterTrueviewIarInterest
        "FILTER_TRUEVIEW_IAR_PARENTAL_STATUS" -> Right FilterTrueviewIarParentalStatus
        "FILTER_TRUEVIEW_IAR_TIME_OF_DAY" -> Right FilterTrueviewIarTimeOfDay
        "FILTER_TRUEVIEW_CUSTOM_AFFINITY" -> Right FilterTrueviewCustomAffinity
        "FILTER_TRUEVIEW_CATEGORY" -> Right FilterTrueviewCategory
        "FILTER_TRUEVIEW_KEYWORD" -> Right FilterTrueviewKeyword
        "FILTER_TRUEVIEW_PLACEMENT" -> Right FilterTrueviewPlacement
        "FILTER_TRUEVIEW_URL" -> Right FilterTrueviewURL
        "FILTER_TRUEVIEW_COUNTRY" -> Right FilterTrueviewCountry
        "FILTER_TRUEVIEW_REGION" -> Right FilterTrueviewRegion
        "FILTER_TRUEVIEW_CITY" -> Right FilterTrueviewCity
        "FILTER_TRUEVIEW_DMA" -> Right FilterTrueviewDma
        "FILTER_TRUEVIEW_ZIPCODE" -> Right FilterTrueviewZipcode
        "FILTER_NOT_SUPPORTED" -> Right FilterNotSupported
        "FILTER_MEDIA_PLAN" -> Right FilterMediaPlan
        "FILTER_TRUEVIEW_IAR_YOUTUBE_CHANNEL" -> Right FilterTrueviewIarYouTubeChannel
        "FILTER_TRUEVIEW_IAR_YOUTUBE_VIDEO" -> Right FilterTrueviewIarYouTubeVideo
        "FILTER_SKIPPABLE_SUPPORT" -> Right FilterSkippableSupport
        "FILTER_COMPANION_CREATIVE_ID" -> Right FilterCompanionCreativeId
        "FILTER_BUDGET_SEGMENT_DESCRIPTION" -> Right FilterBudgetSegmentDescription
        "FILTER_FLOODLIGHT_ACTIVITY_ID" -> Right FilterFloodlightActivityId
        "FILTER_DEVICE_MODEL" -> Right FilterDeviceModel
        "FILTER_DEVICE_MAKE" -> Right FilterDeviceMake
        "FILTER_DEVICE_TYPE" -> Right FilterDeviceType
        "FILTER_CREATIVE_ATTRIBUTE" -> Right FilterCreativeAttribute
        "FILTER_INVENTORY_COMMITMENT_TYPE" -> Right FilterInventoryCommitmentType
        "FILTER_INVENTORY_RATE_TYPE" -> Right FilterInventoryRateType
        "FILTER_INVENTORY_DELIVERY_METHOD" -> Right FilterInventoryDeliveryMethod
        "FILTER_INVENTORY_SOURCE_EXTERNAL_ID" -> Right FilterInventorySourceExternalId
        "FILTER_AUTHORIZED_SELLER_STATE" -> Right FilterAuthorizedSellerState
        "FILTER_VIDEO_DURATION_SECONDS_RANGE" -> Right FilterVideoDurationSecondsRange
        "FILTER_PARTNER_NAME" -> Right FilterPartnerName
        "FILTER_PARTNER_STATUS" -> Right FilterPartnerStatus
        "FILTER_ADVERTISER_NAME" -> Right FilterAdvertiserName
        "FILTER_ADVERTISER_INTEGRATION_CODE" -> Right FilterAdvertiserIntegrationCode
        "FILTER_ADVERTISER_INTEGRATION_STATUS" -> Right FilterAdvertiserIntegrationStatus
        "FILTER_CARRIER_NAME" -> Right FilterCarrierName
        "FILTER_CHANNEL_NAME" -> Right FilterChannelName
        "FILTER_CITY_NAME" -> Right FilterCityName
        "FILTER_COMPANION_CREATIVE_NAME" -> Right FilterCompanionCreativeName
        "FILTER_USER_LIST_FIRST_PARTY_NAME" -> Right FilterUserListFirstPartyName
        "FILTER_USER_LIST_THIRD_PARTY_NAME" -> Right FilterUserListThirdPartyName
        "FILTER_NIELSEN_RESTATEMENT_DATE" -> Right FilterNielsenReStatementDate
        "FILTER_NIELSEN_DATE_RANGE" -> Right FilterNielsenDateRange
        "FILTER_INSERTION_ORDER_NAME" -> Right FilterInsertionOrderName
        "FILTER_REGION_NAME" -> Right FilterRegionName
        "FILTER_DMA_NAME" -> Right FilterDmaName
        "FILTER_TRUEVIEW_IAR_REGION_NAME" -> Right FilterTrueviewIarRegionName
        "FILTER_TRUEVIEW_DMA_NAME" -> Right FilterTrueviewDmaName
        "FILTER_TRUEVIEW_REGION_NAME" -> Right FilterTrueviewRegionName
        "FILTER_ACTIVE_VIEW_CUSTOM_METRIC_ID" -> Right FilterActiveViewCustomMetricId
        "FILTER_ACTIVE_VIEW_CUSTOM_METRIC_NAME" -> Right FilterActiveViewCustomMetricName
        "FILTER_AD_TYPE" -> Right FilterAdType
        "FILTER_ALGORITHM" -> Right FilterAlgorithm
        "FILTER_ALGORITHM_ID" -> Right FilterAlgorithmId
        "FILTER_AMP_PAGE_REQUEST" -> Right FilterAmpPageRequest
        "FILTER_ANONYMOUS_INVENTORY_MODELING" -> Right FilterAnonymousInventoryModeling
        "FILTER_APP_URL" -> Right FilterAppURL
        "FILTER_APP_URL_EXCLUDED" -> Right FilterAppURLExcluded
        "FILTER_ATTRIBUTED_USERLIST" -> Right FilterAttributedUserList
        "FILTER_ATTRIBUTED_USERLIST_COST" -> Right FilterAttributedUserListCost
        "FILTER_ATTRIBUTED_USERLIST_TYPE" -> Right FilterAttributedUserListType
        "FILTER_ATTRIBUTION_MODEL" -> Right FilterAttributionModel
        "FILTER_AUDIENCE_LIST" -> Right FilterAudienceList
        "FILTER_AUDIENCE_LIST_COST" -> Right FilterAudienceListCost
        "FILTER_AUDIENCE_LIST_TYPE" -> Right FilterAudienceListType
        "FILTER_AUDIENCE_NAME" -> Right FilterAudienceName
        "FILTER_AUDIENCE_TYPE" -> Right FilterAudienceType
        "FILTER_BILLABLE_OUTCOME" -> Right FilterBillableOutcome
        "FILTER_BRAND_LIFT_TYPE" -> Right FilterBrandLiftType
        "FILTER_CHANNEL_TYPE" -> Right FilterChannelType
        "FILTER_CM_PLACEMENT_ID" -> Right FilterCmPlacementId
        "FILTER_CONVERSION_SOURCE" -> Right FilterConversionSource
        "FILTER_CONVERSION_SOURCE_ID" -> Right FilterConversionSourceId
        "FILTER_COUNTRY_ID" -> Right FilterCountryId
        "FILTER_CREATIVE" -> Right FilterCreative
        "FILTER_CREATIVE_ASSET" -> Right FilterCreativeAsset
        "FILTER_CREATIVE_INTEGRATION_CODE" -> Right FilterCreativeIntegrationCode
        "FILTER_CREATIVE_RENDERED_IN_AMP" -> Right FilterCreativeRenderedInAmp
        "FILTER_CREATIVE_SOURCE" -> Right FilterCreativeSource
        "FILTER_CREATIVE_STATUS" -> Right FilterCreativeStatus
        "FILTER_DATA_PROVIDER_NAME" -> Right FilterDataProviderName
        "FILTER_DETAILED_DEMOGRAPHICS" -> Right FilterDetailedDemographics
        "FILTER_DETAILED_DEMOGRAPHICS_ID" -> Right FilterDetailedDemographicsId
        "FILTER_DEVICE" -> Right FilterDevice
        "FILTER_GAM_INSERTION_ORDER" -> Right FilterGamInsertionOrder
        "FILTER_GAM_LINE_ITEM" -> Right FilterGamLineItem
        "FILTER_GAM_LINE_ITEM_ID" -> Right FilterGamLineItemId
        "FILTER_DIGITAL_CONTENT_LABEL" -> Right FilterDigitalContentLabel
        "FILTER_DOMAIN" -> Right FilterDomain
        "FILTER_ELIGIBLE_COOKIES_ON_FIRST_PARTY_AUDIENCE_LIST" -> Right FilterEligibleCookiesOnFirstPartyAudienceList
        "FILTER_ELIGIBLE_COOKIES_ON_THIRD_PARTY_AUDIENCE_LIST_AND_INTEREST" -> Right FilterEligibleCookiesOnThirdPartyAudienceListAndInterest
        "FILTER_EXCHANGE" -> Right FilterExchange
        "FILTER_EXCHANGE_CODE" -> Right FilterExchangeCode
        "FILTER_EXTENSION" -> Right FilterExtension
        "FILTER_EXTENSION_STATUS" -> Right FilterExtensionStatus
        "FILTER_EXTENSION_TYPE" -> Right FilterExtensionType
        "FILTER_FIRST_PARTY_AUDIENCE_LIST_COST" -> Right FilterFirstPartyAudienceListCost
        "FILTER_FIRST_PARTY_AUDIENCE_LIST_TYPE" -> Right FilterFirstPartyAudienceListType
        "FILTER_FLOODLIGHT_ACTIVITY" -> Right FilterFloodlightActivity
        "FILTER_FORMAT" -> Right FilterFormat
        "FILTER_GMAIL_AGE" -> Right FilterGmailAge
        "FILTER_GMAIL_CITY" -> Right FilterGmailCity
        "FILTER_GMAIL_COUNTRY" -> Right FilterGmailCountry
        "FILTER_GMAIL_COUNTRY_NAME" -> Right FilterGmailCountryName
        "FILTER_GMAIL_DEVICE_TYPE" -> Right FilterGmailDeviceType
        "FILTER_GMAIL_DEVICE_TYPE_NAME" -> Right FilterGmailDeviceTypeName
        "FILTER_GMAIL_GENDER" -> Right FilterGmailGender
        "FILTER_GMAIL_REGION" -> Right FilterGmailRegion
        "FILTER_GMAIL_REMARKETING_LIST" -> Right FilterGmailRemarketingList
        "FILTER_HOUSEHOLD_INCOME" -> Right FilterHouseholdIncome
        "FILTER_IMPRESSION_COUNTING_METHOD" -> Right FilterImpressionCountingMethod
        "FILTER_YOUTUBE_PROGRAMMATIC_GUARANTEED_INSERTION_ORDER" -> Right FilterYouTubeProgrammaticGuaranteedInsertionOrder
        "FILTER_INSERTION_ORDER_INTEGRATION_CODE" -> Right FilterInsertionOrderIntegrationCode
        "FILTER_INSERTION_ORDER_STATUS" -> Right FilterInsertionOrderStatus
        "FILTER_INTEREST" -> Right FilterInterest
        "FILTER_INVENTORY_SOURCE_GROUP" -> Right FilterInventorySourceGroup
        "FILTER_INVENTORY_SOURCE_GROUP_ID" -> Right FilterInventorySourceGroupId
        "FILTER_INVENTORY_SOURCE_ID" -> Right FilterInventorySourceId
        "FILTER_INVENTORY_SOURCE_NAME" -> Right FilterInventorySourceName
        "FILTER_LIFE_EVENT" -> Right FilterLifeEvent
        "FILTER_LIFE_EVENTS" -> Right FilterLifeEvents
        "FILTER_LINE_ITEM_INTEGRATION_CODE" -> Right FilterLineItemIntegrationCode
        "FILTER_LINE_ITEM_NAME" -> Right FilterLineItemName
        "FILTER_LINE_ITEM_STATUS" -> Right FilterLineItemStatus
        "FILTER_MATCH_RATIO" -> Right FilterMatchRatio
        "FILTER_MEASUREMENT_SOURCE" -> Right FilterMeasurementSource
        "FILTER_MEDIA_PLAN_NAME" -> Right FilterMediaPlanName
        "FILTER_PARENTAL_STATUS" -> Right FilterParentalStatus
        "FILTER_PLACEMENT_ALL_YOUTUBE_CHANNELS" -> Right FilterPlacementAllYouTubeChannels
        "FILTER_PLATFORM" -> Right FilterPlatform
        "FILTER_PLAYBACK_METHOD" -> Right FilterPlaybackMethod
        "FILTER_POSITION_IN_CONTENT" -> Right FilterPositionInContent
        "FILTER_PUBLISHER_PROPERTY" -> Right FilterPublisherProperty
        "FILTER_PUBLISHER_PROPERTY_ID" -> Right FilterPublisherPropertyId
        "FILTER_PUBLISHER_PROPERTY_SECTION" -> Right FilterPublisherPropertySection
        "FILTER_PUBLISHER_PROPERTY_SECTION_ID" -> Right FilterPublisherPropertySectionId
        "FILTER_REFUND_REASON" -> Right FilterRefundReason
        "FILTER_REMARKETING_LIST" -> Right FilterRemarketingList
        "FILTER_REWARDED" -> Right FilterRewarded
        "FILTER_SENSITIVE_CATEGORY" -> Right FilterSensitiveCategory
        "FILTER_SERVED_PIXEL_DENSITY" -> Right FilterServedPixelDensity
        "FILTER_TARGETED_DATA_PROVIDERS" -> Right FilterTargetedDataProviders
        "FILTER_THIRD_PARTY_AUDIENCE_LIST_COST" -> Right FilterThirdPartyAudienceListCost
        "FILTER_THIRD_PARTY_AUDIENCE_LIST_TYPE" -> Right FilterThirdPartyAudienceListType
        "FILTER_TRUEVIEW_AD" -> Right FilterTrueviewAd
        "FILTER_TRUEVIEW_AD_GROUP" -> Right FilterTrueviewAdGroup
        "FILTER_TRUEVIEW_DETAILED_DEMOGRAPHICS" -> Right FilterTrueviewDetailedDemographics
        "FILTER_TRUEVIEW_DETAILED_DEMOGRAPHICS_ID" -> Right FilterTrueviewDetailedDemographicsId
        "FILTER_TRUEVIEW_HOUSEHOLD_INCOME" -> Right FilterTrueviewHouseholdIncome
        "FILTER_TRUEVIEW_IAR_COUNTRY_NAME" -> Right FilterTrueviewIarCountryName
        "FILTER_TRUEVIEW_REMARKETING_LIST_NAME" -> Right FilterTrueviewRemarketingListName
        "FILTER_VARIANT_ID" -> Right FilterVariantId
        "FILTER_VARIANT_NAME" -> Right FilterVariantName
        "FILTER_VARIANT_VERSION" -> Right FilterVariantVersion
        "FILTER_VERIFICATION_VIDEO_PLAYER_SIZE" -> Right FilterVerificationVideoPlayerSize
        "FILTER_VERIFICATION_VIDEO_POSITION" -> Right FilterVerificationVideoPosition
        "FILTER_VIDEO_COMPANION_CREATIVE_SIZE" -> Right FilterVideoCompanionCreativeSize
        "FILTER_VIDEO_CONTINUOUS_PLAY" -> Right FilterVideoContinuousPlay
        "FILTER_VIDEO_DURATION" -> Right FilterVideoDuration
        "FILTER_YOUTUBE_ADAPTED_AUDIENCE_LIST" -> Right FilterYouTubeAdaptedAudienceList
        "FILTER_YOUTUBE_AD_VIDEO" -> Right FilterYouTubeAdVideo
        "FILTER_YOUTUBE_AD_VIDEO_ID" -> Right FilterYouTubeAdVideoId
        "FILTER_YOUTUBE_CHANNEL" -> Right FilterYouTubeChannel
        "FILTER_YOUTUBE_PROGRAMMATIC_GUARANTEED_ADVERTISER" -> Right FilterYouTubeProgrammaticGuaranteedAdvertiser
        "FILTER_YOUTUBE_PROGRAMMATIC_GUARANTEED_PARTNER" -> Right FilterYouTubeProgrammaticGuaranteedPartner
        "FILTER_YOUTUBE_VIDEO" -> Right FilterYouTubeVideo
        "FILTER_ZIP_POSTAL_CODE" -> Right FilterZipPostalCode
        "FILTER_PLACEMENT_NAME_ALL_YOUTUBE_CHANNELS" -> Right FilterPlacementNameAllYouTubeChannels
        "FILTER_TRUEVIEW_PLACEMENT_ID" -> Right FilterTrueviewPlacementId
        "FILTER_PATH_PATTERN_ID" -> Right FilterPathPatternId
        "FILTER_PATH_EVENT_INDEX" -> Right FilterPathEventIndex
        "FILTER_EVENT_TYPE" -> Right FilterEventType
        "FILTER_CHANNEL_GROUPING" -> Right FilterChannelGrouping
        "FILTER_OM_SDK_AVAILABLE" -> Right FilterOmSdkAvailable
        "FILTER_DATA_SOURCE" -> Right FilterDataSource
        "FILTER_CM360_PLACEMENT_ID" -> Right FilterCM360PlacementId
        "FILTER_TRUEVIEW_CLICK_TYPE_NAME" -> Right FilterTrueviewClickTypeName
        "FILTER_TRUEVIEW_AD_TYPE_NAME" -> Right FilterTrueviewAdTypeName
        "FILTER_VIDEO_CONTENT_DURATION" -> Right FilterVideoContentDuration
        "FILTER_MATCHED_GENRE_TARGET" -> Right FilterMatchedGenreTarget
        "FILTER_VIDEO_CONTENT_LIVE_STREAM" -> Right FilterVideoContentLiveStream
        "FILTER_BUDGET_SEGMENT_TYPE" -> Right FilterBudgetSegmentType
        "FILTER_BUDGET_SEGMENT_BUDGET" -> Right FilterBudgetSegmentBudget
        "FILTER_BUDGET_SEGMENT_START_DATE" -> Right FilterBudgetSegmentStartDate
        "FILTER_BUDGET_SEGMENT_END_DATE" -> Right FilterBudgetSegmentEndDate
        "FILTER_BUDGET_SEGMENT_PACING_PERCENTAGE" -> Right FilterBudgetSegmentPacingPercentage
        "FILTER_LINE_ITEM_BUDGET" -> Right FilterLineItemBudget
        "FILTER_LINE_ITEM_START_DATE" -> Right FilterLineItemStartDate
        "FILTER_LINE_ITEM_END_DATE" -> Right FilterLineItemEndDate
        "FILTER_INSERTION_ORDER_GOAL_TYPE" -> Right FilterInsertionOrderGoalType
        "FILTER_LINE_ITEM_PACING_PERCENTAGE" -> Right FilterLineItemPacingPercentage
        "FILTER_INSERTION_ORDER_GOAL_VALUE" -> Right FilterInsertionOrderGoalValue
        "FILTER_OMID_CAPABLE" -> Right FilterOmidCapable
        "FILTER_VENDOR_MEASUREMENT_MODE" -> Right FilterVendorMeasurementMode
        x -> Left ("Unable to parse PathQueryOptionsFilterFilter from: " <> x)

instance ToHttpApiData PathQueryOptionsFilterFilter where
    toQueryParam = \case
        FilterUnknown -> "FILTER_UNKNOWN"
        FilterDate -> "FILTER_DATE"
        FilterDayOfWeek -> "FILTER_DAY_OF_WEEK"
        FilterWeek -> "FILTER_WEEK"
        FilterMonth -> "FILTER_MONTH"
        FilterYear -> "FILTER_YEAR"
        FilterTimeOfDay -> "FILTER_TIME_OF_DAY"
        FilterConversionDelay -> "FILTER_CONVERSION_DELAY"
        FilterCreativeId -> "FILTER_CREATIVE_ID"
        FilterCreativeSize -> "FILTER_CREATIVE_SIZE"
        FilterCreativeType -> "FILTER_CREATIVE_TYPE"
        FilterExchangeId -> "FILTER_EXCHANGE_ID"
        FilterAdPosition -> "FILTER_AD_POSITION"
        FilterPublicInventory -> "FILTER_PUBLIC_INVENTORY"
        FilterInventorySource -> "FILTER_INVENTORY_SOURCE"
        FilterCity -> "FILTER_CITY"
        FilterRegion -> "FILTER_REGION"
        FilterDma -> "FILTER_DMA"
        FilterCountry -> "FILTER_COUNTRY"
        FilterSiteId -> "FILTER_SITE_ID"
        FilterChannelId -> "FILTER_CHANNEL_ID"
        FilterPartner -> "FILTER_PARTNER"
        FilterAdvertiser -> "FILTER_ADVERTISER"
        FilterInsertionOrder -> "FILTER_INSERTION_ORDER"
        FilterLineItem -> "FILTER_LINE_ITEM"
        FilterPartnerCurrency -> "FILTER_PARTNER_CURRENCY"
        FilterAdvertiserCurrency -> "FILTER_ADVERTISER_CURRENCY"
        FilterAdvertiserTimezone -> "FILTER_ADVERTISER_TIMEZONE"
        FilterLineItemType -> "FILTER_LINE_ITEM_TYPE"
        FilterUserList -> "FILTER_USER_LIST"
        FilterUserListFirstParty -> "FILTER_USER_LIST_FIRST_PARTY"
        FilterUserListThirdParty -> "FILTER_USER_LIST_THIRD_PARTY"
        FilterTargetedUserList -> "FILTER_TARGETED_USER_LIST"
        FilterDataProvider -> "FILTER_DATA_PROVIDER"
        FilterOrderId -> "FILTER_ORDER_ID"
        FilterVideoPlayerSize -> "FILTER_VIDEO_PLAYER_SIZE"
        FilterVideoDurationSeconds -> "FILTER_VIDEO_DURATION_SECONDS"
        FilterKeyword -> "FILTER_KEYWORD"
        FilterPageCategory -> "FILTER_PAGE_CATEGORY"
        FilterCampaignDailyFrequency -> "FILTER_CAMPAIGN_DAILY_FREQUENCY"
        FilterLineItemDailyFrequency -> "FILTER_LINE_ITEM_DAILY_FREQUENCY"
        FilterLineItemLifetimeFrequency -> "FILTER_LINE_ITEM_LIFETIME_FREQUENCY"
        FilterOS -> "FILTER_OS"
        FilterBrowser -> "FILTER_BROWSER"
        FilterCarrier -> "FILTER_CARRIER"
        FilterSiteLanguage -> "FILTER_SITE_LANGUAGE"
        FilterInventoryFormat -> "FILTER_INVENTORY_FORMAT"
        FilterZipCode -> "FILTER_ZIP_CODE"
        FilterVideoRatingTier -> "FILTER_VIDEO_RATING_TIER"
        FilterVideoFormatSupport -> "FILTER_VIDEO_FORMAT_SUPPORT"
        FilterVideoSkippableSupport -> "FILTER_VIDEO_SKIPPABLE_SUPPORT"
        FilterVideoCreativeDuration -> "FILTER_VIDEO_CREATIVE_DURATION"
        FilterPageLayout -> "FILTER_PAGE_LAYOUT"
        FilterVideoAdPositionInStream -> "FILTER_VIDEO_AD_POSITION_IN_STREAM"
        FilterAge -> "FILTER_AGE"
        FilterGender -> "FILTER_GENDER"
        FilterQuarter -> "FILTER_QUARTER"
        FilterTrueviewConversionType -> "FILTER_TRUEVIEW_CONVERSION_TYPE"
        FilterMobileGeo -> "FILTER_MOBILE_GEO"
        FilterMraidSupport -> "FILTER_MRAID_SUPPORT"
        FilterActiveViewExpectedViewability -> "FILTER_ACTIVE_VIEW_EXPECTED_VIEWABILITY"
        FilterVideoCreativeDurationSkippable -> "FILTER_VIDEO_CREATIVE_DURATION_SKIPPABLE"
        FilterNielsenCountryCode -> "FILTER_NIELSEN_COUNTRY_CODE"
        FilterNielsenDeviceId -> "FILTER_NIELSEN_DEVICE_ID"
        FilterNielsenGender -> "FILTER_NIELSEN_GENDER"
        FilterNielsenAge -> "FILTER_NIELSEN_AGE"
        FilterInventorySourceType -> "FILTER_INVENTORY_SOURCE_TYPE"
        FilterCreativeWidth -> "FILTER_CREATIVE_WIDTH"
        FilterCreativeHeight -> "FILTER_CREATIVE_HEIGHT"
        FilterDfpOrderId -> "FILTER_DFP_ORDER_ID"
        FilterTrueviewAge -> "FILTER_TRUEVIEW_AGE"
        FilterTrueviewGender -> "FILTER_TRUEVIEW_GENDER"
        FilterTrueviewParentalStatus -> "FILTER_TRUEVIEW_PARENTAL_STATUS"
        FilterTrueviewRemarketingList -> "FILTER_TRUEVIEW_REMARKETING_LIST"
        FilterTrueviewInterest -> "FILTER_TRUEVIEW_INTEREST"
        FilterTrueviewAdGroupId -> "FILTER_TRUEVIEW_AD_GROUP_ID"
        FilterTrueviewAdGroupAdId -> "FILTER_TRUEVIEW_AD_GROUP_AD_ID"
        FilterTrueviewIarLanguage -> "FILTER_TRUEVIEW_IAR_LANGUAGE"
        FilterTrueviewIarGender -> "FILTER_TRUEVIEW_IAR_GENDER"
        FilterTrueviewIarAge -> "FILTER_TRUEVIEW_IAR_AGE"
        FilterTrueviewIarCategory -> "FILTER_TRUEVIEW_IAR_CATEGORY"
        FilterTrueviewIarCountry -> "FILTER_TRUEVIEW_IAR_COUNTRY"
        FilterTrueviewIarCity -> "FILTER_TRUEVIEW_IAR_CITY"
        FilterTrueviewIarRegion -> "FILTER_TRUEVIEW_IAR_REGION"
        FilterTrueviewIarZipcode -> "FILTER_TRUEVIEW_IAR_ZIPCODE"
        FilterTrueviewIarRemarketingList -> "FILTER_TRUEVIEW_IAR_REMARKETING_LIST"
        FilterTrueviewIarInterest -> "FILTER_TRUEVIEW_IAR_INTEREST"
        FilterTrueviewIarParentalStatus -> "FILTER_TRUEVIEW_IAR_PARENTAL_STATUS"
        FilterTrueviewIarTimeOfDay -> "FILTER_TRUEVIEW_IAR_TIME_OF_DAY"
        FilterTrueviewCustomAffinity -> "FILTER_TRUEVIEW_CUSTOM_AFFINITY"
        FilterTrueviewCategory -> "FILTER_TRUEVIEW_CATEGORY"
        FilterTrueviewKeyword -> "FILTER_TRUEVIEW_KEYWORD"
        FilterTrueviewPlacement -> "FILTER_TRUEVIEW_PLACEMENT"
        FilterTrueviewURL -> "FILTER_TRUEVIEW_URL"
        FilterTrueviewCountry -> "FILTER_TRUEVIEW_COUNTRY"
        FilterTrueviewRegion -> "FILTER_TRUEVIEW_REGION"
        FilterTrueviewCity -> "FILTER_TRUEVIEW_CITY"
        FilterTrueviewDma -> "FILTER_TRUEVIEW_DMA"
        FilterTrueviewZipcode -> "FILTER_TRUEVIEW_ZIPCODE"
        FilterNotSupported -> "FILTER_NOT_SUPPORTED"
        FilterMediaPlan -> "FILTER_MEDIA_PLAN"
        FilterTrueviewIarYouTubeChannel -> "FILTER_TRUEVIEW_IAR_YOUTUBE_CHANNEL"
        FilterTrueviewIarYouTubeVideo -> "FILTER_TRUEVIEW_IAR_YOUTUBE_VIDEO"
        FilterSkippableSupport -> "FILTER_SKIPPABLE_SUPPORT"
        FilterCompanionCreativeId -> "FILTER_COMPANION_CREATIVE_ID"
        FilterBudgetSegmentDescription -> "FILTER_BUDGET_SEGMENT_DESCRIPTION"
        FilterFloodlightActivityId -> "FILTER_FLOODLIGHT_ACTIVITY_ID"
        FilterDeviceModel -> "FILTER_DEVICE_MODEL"
        FilterDeviceMake -> "FILTER_DEVICE_MAKE"
        FilterDeviceType -> "FILTER_DEVICE_TYPE"
        FilterCreativeAttribute -> "FILTER_CREATIVE_ATTRIBUTE"
        FilterInventoryCommitmentType -> "FILTER_INVENTORY_COMMITMENT_TYPE"
        FilterInventoryRateType -> "FILTER_INVENTORY_RATE_TYPE"
        FilterInventoryDeliveryMethod -> "FILTER_INVENTORY_DELIVERY_METHOD"
        FilterInventorySourceExternalId -> "FILTER_INVENTORY_SOURCE_EXTERNAL_ID"
        FilterAuthorizedSellerState -> "FILTER_AUTHORIZED_SELLER_STATE"
        FilterVideoDurationSecondsRange -> "FILTER_VIDEO_DURATION_SECONDS_RANGE"
        FilterPartnerName -> "FILTER_PARTNER_NAME"
        FilterPartnerStatus -> "FILTER_PARTNER_STATUS"
        FilterAdvertiserName -> "FILTER_ADVERTISER_NAME"
        FilterAdvertiserIntegrationCode -> "FILTER_ADVERTISER_INTEGRATION_CODE"
        FilterAdvertiserIntegrationStatus -> "FILTER_ADVERTISER_INTEGRATION_STATUS"
        FilterCarrierName -> "FILTER_CARRIER_NAME"
        FilterChannelName -> "FILTER_CHANNEL_NAME"
        FilterCityName -> "FILTER_CITY_NAME"
        FilterCompanionCreativeName -> "FILTER_COMPANION_CREATIVE_NAME"
        FilterUserListFirstPartyName -> "FILTER_USER_LIST_FIRST_PARTY_NAME"
        FilterUserListThirdPartyName -> "FILTER_USER_LIST_THIRD_PARTY_NAME"
        FilterNielsenReStatementDate -> "FILTER_NIELSEN_RESTATEMENT_DATE"
        FilterNielsenDateRange -> "FILTER_NIELSEN_DATE_RANGE"
        FilterInsertionOrderName -> "FILTER_INSERTION_ORDER_NAME"
        FilterRegionName -> "FILTER_REGION_NAME"
        FilterDmaName -> "FILTER_DMA_NAME"
        FilterTrueviewIarRegionName -> "FILTER_TRUEVIEW_IAR_REGION_NAME"
        FilterTrueviewDmaName -> "FILTER_TRUEVIEW_DMA_NAME"
        FilterTrueviewRegionName -> "FILTER_TRUEVIEW_REGION_NAME"
        FilterActiveViewCustomMetricId -> "FILTER_ACTIVE_VIEW_CUSTOM_METRIC_ID"
        FilterActiveViewCustomMetricName -> "FILTER_ACTIVE_VIEW_CUSTOM_METRIC_NAME"
        FilterAdType -> "FILTER_AD_TYPE"
        FilterAlgorithm -> "FILTER_ALGORITHM"
        FilterAlgorithmId -> "FILTER_ALGORITHM_ID"
        FilterAmpPageRequest -> "FILTER_AMP_PAGE_REQUEST"
        FilterAnonymousInventoryModeling -> "FILTER_ANONYMOUS_INVENTORY_MODELING"
        FilterAppURL -> "FILTER_APP_URL"
        FilterAppURLExcluded -> "FILTER_APP_URL_EXCLUDED"
        FilterAttributedUserList -> "FILTER_ATTRIBUTED_USERLIST"
        FilterAttributedUserListCost -> "FILTER_ATTRIBUTED_USERLIST_COST"
        FilterAttributedUserListType -> "FILTER_ATTRIBUTED_USERLIST_TYPE"
        FilterAttributionModel -> "FILTER_ATTRIBUTION_MODEL"
        FilterAudienceList -> "FILTER_AUDIENCE_LIST"
        FilterAudienceListCost -> "FILTER_AUDIENCE_LIST_COST"
        FilterAudienceListType -> "FILTER_AUDIENCE_LIST_TYPE"
        FilterAudienceName -> "FILTER_AUDIENCE_NAME"
        FilterAudienceType -> "FILTER_AUDIENCE_TYPE"
        FilterBillableOutcome -> "FILTER_BILLABLE_OUTCOME"
        FilterBrandLiftType -> "FILTER_BRAND_LIFT_TYPE"
        FilterChannelType -> "FILTER_CHANNEL_TYPE"
        FilterCmPlacementId -> "FILTER_CM_PLACEMENT_ID"
        FilterConversionSource -> "FILTER_CONVERSION_SOURCE"
        FilterConversionSourceId -> "FILTER_CONVERSION_SOURCE_ID"
        FilterCountryId -> "FILTER_COUNTRY_ID"
        FilterCreative -> "FILTER_CREATIVE"
        FilterCreativeAsset -> "FILTER_CREATIVE_ASSET"
        FilterCreativeIntegrationCode -> "FILTER_CREATIVE_INTEGRATION_CODE"
        FilterCreativeRenderedInAmp -> "FILTER_CREATIVE_RENDERED_IN_AMP"
        FilterCreativeSource -> "FILTER_CREATIVE_SOURCE"
        FilterCreativeStatus -> "FILTER_CREATIVE_STATUS"
        FilterDataProviderName -> "FILTER_DATA_PROVIDER_NAME"
        FilterDetailedDemographics -> "FILTER_DETAILED_DEMOGRAPHICS"
        FilterDetailedDemographicsId -> "FILTER_DETAILED_DEMOGRAPHICS_ID"
        FilterDevice -> "FILTER_DEVICE"
        FilterGamInsertionOrder -> "FILTER_GAM_INSERTION_ORDER"
        FilterGamLineItem -> "FILTER_GAM_LINE_ITEM"
        FilterGamLineItemId -> "FILTER_GAM_LINE_ITEM_ID"
        FilterDigitalContentLabel -> "FILTER_DIGITAL_CONTENT_LABEL"
        FilterDomain -> "FILTER_DOMAIN"
        FilterEligibleCookiesOnFirstPartyAudienceList -> "FILTER_ELIGIBLE_COOKIES_ON_FIRST_PARTY_AUDIENCE_LIST"
        FilterEligibleCookiesOnThirdPartyAudienceListAndInterest -> "FILTER_ELIGIBLE_COOKIES_ON_THIRD_PARTY_AUDIENCE_LIST_AND_INTEREST"
        FilterExchange -> "FILTER_EXCHANGE"
        FilterExchangeCode -> "FILTER_EXCHANGE_CODE"
        FilterExtension -> "FILTER_EXTENSION"
        FilterExtensionStatus -> "FILTER_EXTENSION_STATUS"
        FilterExtensionType -> "FILTER_EXTENSION_TYPE"
        FilterFirstPartyAudienceListCost -> "FILTER_FIRST_PARTY_AUDIENCE_LIST_COST"
        FilterFirstPartyAudienceListType -> "FILTER_FIRST_PARTY_AUDIENCE_LIST_TYPE"
        FilterFloodlightActivity -> "FILTER_FLOODLIGHT_ACTIVITY"
        FilterFormat -> "FILTER_FORMAT"
        FilterGmailAge -> "FILTER_GMAIL_AGE"
        FilterGmailCity -> "FILTER_GMAIL_CITY"
        FilterGmailCountry -> "FILTER_GMAIL_COUNTRY"
        FilterGmailCountryName -> "FILTER_GMAIL_COUNTRY_NAME"
        FilterGmailDeviceType -> "FILTER_GMAIL_DEVICE_TYPE"
        FilterGmailDeviceTypeName -> "FILTER_GMAIL_DEVICE_TYPE_NAME"
        FilterGmailGender -> "FILTER_GMAIL_GENDER"
        FilterGmailRegion -> "FILTER_GMAIL_REGION"
        FilterGmailRemarketingList -> "FILTER_GMAIL_REMARKETING_LIST"
        FilterHouseholdIncome -> "FILTER_HOUSEHOLD_INCOME"
        FilterImpressionCountingMethod -> "FILTER_IMPRESSION_COUNTING_METHOD"
        FilterYouTubeProgrammaticGuaranteedInsertionOrder -> "FILTER_YOUTUBE_PROGRAMMATIC_GUARANTEED_INSERTION_ORDER"
        FilterInsertionOrderIntegrationCode -> "FILTER_INSERTION_ORDER_INTEGRATION_CODE"
        FilterInsertionOrderStatus -> "FILTER_INSERTION_ORDER_STATUS"
        FilterInterest -> "FILTER_INTEREST"
        FilterInventorySourceGroup -> "FILTER_INVENTORY_SOURCE_GROUP"
        FilterInventorySourceGroupId -> "FILTER_INVENTORY_SOURCE_GROUP_ID"
        FilterInventorySourceId -> "FILTER_INVENTORY_SOURCE_ID"
        FilterInventorySourceName -> "FILTER_INVENTORY_SOURCE_NAME"
        FilterLifeEvent -> "FILTER_LIFE_EVENT"
        FilterLifeEvents -> "FILTER_LIFE_EVENTS"
        FilterLineItemIntegrationCode -> "FILTER_LINE_ITEM_INTEGRATION_CODE"
        FilterLineItemName -> "FILTER_LINE_ITEM_NAME"
        FilterLineItemStatus -> "FILTER_LINE_ITEM_STATUS"
        FilterMatchRatio -> "FILTER_MATCH_RATIO"
        FilterMeasurementSource -> "FILTER_MEASUREMENT_SOURCE"
        FilterMediaPlanName -> "FILTER_MEDIA_PLAN_NAME"
        FilterParentalStatus -> "FILTER_PARENTAL_STATUS"
        FilterPlacementAllYouTubeChannels -> "FILTER_PLACEMENT_ALL_YOUTUBE_CHANNELS"
        FilterPlatform -> "FILTER_PLATFORM"
        FilterPlaybackMethod -> "FILTER_PLAYBACK_METHOD"
        FilterPositionInContent -> "FILTER_POSITION_IN_CONTENT"
        FilterPublisherProperty -> "FILTER_PUBLISHER_PROPERTY"
        FilterPublisherPropertyId -> "FILTER_PUBLISHER_PROPERTY_ID"
        FilterPublisherPropertySection -> "FILTER_PUBLISHER_PROPERTY_SECTION"
        FilterPublisherPropertySectionId -> "FILTER_PUBLISHER_PROPERTY_SECTION_ID"
        FilterRefundReason -> "FILTER_REFUND_REASON"
        FilterRemarketingList -> "FILTER_REMARKETING_LIST"
        FilterRewarded -> "FILTER_REWARDED"
        FilterSensitiveCategory -> "FILTER_SENSITIVE_CATEGORY"
        FilterServedPixelDensity -> "FILTER_SERVED_PIXEL_DENSITY"
        FilterTargetedDataProviders -> "FILTER_TARGETED_DATA_PROVIDERS"
        FilterThirdPartyAudienceListCost -> "FILTER_THIRD_PARTY_AUDIENCE_LIST_COST"
        FilterThirdPartyAudienceListType -> "FILTER_THIRD_PARTY_AUDIENCE_LIST_TYPE"
        FilterTrueviewAd -> "FILTER_TRUEVIEW_AD"
        FilterTrueviewAdGroup -> "FILTER_TRUEVIEW_AD_GROUP"
        FilterTrueviewDetailedDemographics -> "FILTER_TRUEVIEW_DETAILED_DEMOGRAPHICS"
        FilterTrueviewDetailedDemographicsId -> "FILTER_TRUEVIEW_DETAILED_DEMOGRAPHICS_ID"
        FilterTrueviewHouseholdIncome -> "FILTER_TRUEVIEW_HOUSEHOLD_INCOME"
        FilterTrueviewIarCountryName -> "FILTER_TRUEVIEW_IAR_COUNTRY_NAME"
        FilterTrueviewRemarketingListName -> "FILTER_TRUEVIEW_REMARKETING_LIST_NAME"
        FilterVariantId -> "FILTER_VARIANT_ID"
        FilterVariantName -> "FILTER_VARIANT_NAME"
        FilterVariantVersion -> "FILTER_VARIANT_VERSION"
        FilterVerificationVideoPlayerSize -> "FILTER_VERIFICATION_VIDEO_PLAYER_SIZE"
        FilterVerificationVideoPosition -> "FILTER_VERIFICATION_VIDEO_POSITION"
        FilterVideoCompanionCreativeSize -> "FILTER_VIDEO_COMPANION_CREATIVE_SIZE"
        FilterVideoContinuousPlay -> "FILTER_VIDEO_CONTINUOUS_PLAY"
        FilterVideoDuration -> "FILTER_VIDEO_DURATION"
        FilterYouTubeAdaptedAudienceList -> "FILTER_YOUTUBE_ADAPTED_AUDIENCE_LIST"
        FilterYouTubeAdVideo -> "FILTER_YOUTUBE_AD_VIDEO"
        FilterYouTubeAdVideoId -> "FILTER_YOUTUBE_AD_VIDEO_ID"
        FilterYouTubeChannel -> "FILTER_YOUTUBE_CHANNEL"
        FilterYouTubeProgrammaticGuaranteedAdvertiser -> "FILTER_YOUTUBE_PROGRAMMATIC_GUARANTEED_ADVERTISER"
        FilterYouTubeProgrammaticGuaranteedPartner -> "FILTER_YOUTUBE_PROGRAMMATIC_GUARANTEED_PARTNER"
        FilterYouTubeVideo -> "FILTER_YOUTUBE_VIDEO"
        FilterZipPostalCode -> "FILTER_ZIP_POSTAL_CODE"
        FilterPlacementNameAllYouTubeChannels -> "FILTER_PLACEMENT_NAME_ALL_YOUTUBE_CHANNELS"
        FilterTrueviewPlacementId -> "FILTER_TRUEVIEW_PLACEMENT_ID"
        FilterPathPatternId -> "FILTER_PATH_PATTERN_ID"
        FilterPathEventIndex -> "FILTER_PATH_EVENT_INDEX"
        FilterEventType -> "FILTER_EVENT_TYPE"
        FilterChannelGrouping -> "FILTER_CHANNEL_GROUPING"
        FilterOmSdkAvailable -> "FILTER_OM_SDK_AVAILABLE"
        FilterDataSource -> "FILTER_DATA_SOURCE"
        FilterCM360PlacementId -> "FILTER_CM360_PLACEMENT_ID"
        FilterTrueviewClickTypeName -> "FILTER_TRUEVIEW_CLICK_TYPE_NAME"
        FilterTrueviewAdTypeName -> "FILTER_TRUEVIEW_AD_TYPE_NAME"
        FilterVideoContentDuration -> "FILTER_VIDEO_CONTENT_DURATION"
        FilterMatchedGenreTarget -> "FILTER_MATCHED_GENRE_TARGET"
        FilterVideoContentLiveStream -> "FILTER_VIDEO_CONTENT_LIVE_STREAM"
        FilterBudgetSegmentType -> "FILTER_BUDGET_SEGMENT_TYPE"
        FilterBudgetSegmentBudget -> "FILTER_BUDGET_SEGMENT_BUDGET"
        FilterBudgetSegmentStartDate -> "FILTER_BUDGET_SEGMENT_START_DATE"
        FilterBudgetSegmentEndDate -> "FILTER_BUDGET_SEGMENT_END_DATE"
        FilterBudgetSegmentPacingPercentage -> "FILTER_BUDGET_SEGMENT_PACING_PERCENTAGE"
        FilterLineItemBudget -> "FILTER_LINE_ITEM_BUDGET"
        FilterLineItemStartDate -> "FILTER_LINE_ITEM_START_DATE"
        FilterLineItemEndDate -> "FILTER_LINE_ITEM_END_DATE"
        FilterInsertionOrderGoalType -> "FILTER_INSERTION_ORDER_GOAL_TYPE"
        FilterLineItemPacingPercentage -> "FILTER_LINE_ITEM_PACING_PERCENTAGE"
        FilterInsertionOrderGoalValue -> "FILTER_INSERTION_ORDER_GOAL_VALUE"
        FilterOmidCapable -> "FILTER_OMID_CAPABLE"
        FilterVendorMeasurementMode -> "FILTER_VENDOR_MEASUREMENT_MODE"

instance FromJSON PathQueryOptionsFilterFilter where
    parseJSON = parseJSONText "PathQueryOptionsFilterFilter"

instance ToJSON PathQueryOptionsFilterFilter where
    toJSON = toJSONText

-- | Report type.
data ParametersType
    = TypeGeneral
      -- ^ @TYPE_GENERAL@
    | TypeAudiencePerformance
      -- ^ @TYPE_AUDIENCE_PERFORMANCE@
    | TypeInventoryAvailability
      -- ^ @TYPE_INVENTORY_AVAILABILITY@
    | TypeKeyword
      -- ^ @TYPE_KEYWORD@
    | TypePixelLoad
      -- ^ @TYPE_PIXEL_LOAD@
    | TypeAudienceComPosition
      -- ^ @TYPE_AUDIENCE_COMPOSITION@
    | TypeCrossPartner
      -- ^ @TYPE_CROSS_PARTNER@
    | TypePageCategory
      -- ^ @TYPE_PAGE_CATEGORY@
    | TypeThirdPartyDataProvider
      -- ^ @TYPE_THIRD_PARTY_DATA_PROVIDER@
    | TypeCrossPartnerThirdPartyDataProvider
      -- ^ @TYPE_CROSS_PARTNER_THIRD_PARTY_DATA_PROVIDER@
    | TypeClientSafe
      -- ^ @TYPE_CLIENT_SAFE@
    | TypeOrderId
      -- ^ @TYPE_ORDER_ID@
    | TypeFee
      -- ^ @TYPE_FEE@
    | TypeCrossFee
      -- ^ @TYPE_CROSS_FEE@
    | TypeActiveGrp
      -- ^ @TYPE_ACTIVE_GRP@
    | TypeYouTubeVertical
      -- ^ @TYPE_YOUTUBE_VERTICAL@
    | TypeComscoreVce
      -- ^ @TYPE_COMSCORE_VCE@
    | TypeTrueview
      -- ^ @TYPE_TRUEVIEW@
    | TypeNielsenAudienceProFile
      -- ^ @TYPE_NIELSEN_AUDIENCE_PROFILE@
    | TypeNielsenDailyReachBuild
      -- ^ @TYPE_NIELSEN_DAILY_REACH_BUILD@
    | TypeNielsenSite
      -- ^ @TYPE_NIELSEN_SITE@
    | TypeReachAndFrequency
      -- ^ @TYPE_REACH_AND_FREQUENCY@
    | TypeEstimatedConversion
      -- ^ @TYPE_ESTIMATED_CONVERSION@
    | TypeVerification
      -- ^ @TYPE_VERIFICATION@
    | TypeTrueviewIar
      -- ^ @TYPE_TRUEVIEW_IAR@
    | TypeNielsenOnlineGlobalMarket
      -- ^ @TYPE_NIELSEN_ONLINE_GLOBAL_MARKET@
    | TypePetraNielsenAudienceProFile
      -- ^ @TYPE_PETRA_NIELSEN_AUDIENCE_PROFILE@
    | TypePetraNielsenDailyReachBuild
      -- ^ @TYPE_PETRA_NIELSEN_DAILY_REACH_BUILD@
    | TypePetraNielsenOnlineGlobalMarket
      -- ^ @TYPE_PETRA_NIELSEN_ONLINE_GLOBAL_MARKET@
    | TypeNotSupported
      -- ^ @TYPE_NOT_SUPPORTED@
    | TypeReachAudience
      -- ^ @TYPE_REACH_AUDIENCE@
    | TypeLinearTvSearchLift
      -- ^ @TYPE_LINEAR_TV_SEARCH_LIFT@
    | TypePath
      -- ^ @TYPE_PATH@
    | TypePathAttribution
      -- ^ @TYPE_PATH_ATTRIBUTION@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ParametersType

instance FromHttpApiData ParametersType where
    parseQueryParam = \case
        "TYPE_GENERAL" -> Right TypeGeneral
        "TYPE_AUDIENCE_PERFORMANCE" -> Right TypeAudiencePerformance
        "TYPE_INVENTORY_AVAILABILITY" -> Right TypeInventoryAvailability
        "TYPE_KEYWORD" -> Right TypeKeyword
        "TYPE_PIXEL_LOAD" -> Right TypePixelLoad
        "TYPE_AUDIENCE_COMPOSITION" -> Right TypeAudienceComPosition
        "TYPE_CROSS_PARTNER" -> Right TypeCrossPartner
        "TYPE_PAGE_CATEGORY" -> Right TypePageCategory
        "TYPE_THIRD_PARTY_DATA_PROVIDER" -> Right TypeThirdPartyDataProvider
        "TYPE_CROSS_PARTNER_THIRD_PARTY_DATA_PROVIDER" -> Right TypeCrossPartnerThirdPartyDataProvider
        "TYPE_CLIENT_SAFE" -> Right TypeClientSafe
        "TYPE_ORDER_ID" -> Right TypeOrderId
        "TYPE_FEE" -> Right TypeFee
        "TYPE_CROSS_FEE" -> Right TypeCrossFee
        "TYPE_ACTIVE_GRP" -> Right TypeActiveGrp
        "TYPE_YOUTUBE_VERTICAL" -> Right TypeYouTubeVertical
        "TYPE_COMSCORE_VCE" -> Right TypeComscoreVce
        "TYPE_TRUEVIEW" -> Right TypeTrueview
        "TYPE_NIELSEN_AUDIENCE_PROFILE" -> Right TypeNielsenAudienceProFile
        "TYPE_NIELSEN_DAILY_REACH_BUILD" -> Right TypeNielsenDailyReachBuild
        "TYPE_NIELSEN_SITE" -> Right TypeNielsenSite
        "TYPE_REACH_AND_FREQUENCY" -> Right TypeReachAndFrequency
        "TYPE_ESTIMATED_CONVERSION" -> Right TypeEstimatedConversion
        "TYPE_VERIFICATION" -> Right TypeVerification
        "TYPE_TRUEVIEW_IAR" -> Right TypeTrueviewIar
        "TYPE_NIELSEN_ONLINE_GLOBAL_MARKET" -> Right TypeNielsenOnlineGlobalMarket
        "TYPE_PETRA_NIELSEN_AUDIENCE_PROFILE" -> Right TypePetraNielsenAudienceProFile
        "TYPE_PETRA_NIELSEN_DAILY_REACH_BUILD" -> Right TypePetraNielsenDailyReachBuild
        "TYPE_PETRA_NIELSEN_ONLINE_GLOBAL_MARKET" -> Right TypePetraNielsenOnlineGlobalMarket
        "TYPE_NOT_SUPPORTED" -> Right TypeNotSupported
        "TYPE_REACH_AUDIENCE" -> Right TypeReachAudience
        "TYPE_LINEAR_TV_SEARCH_LIFT" -> Right TypeLinearTvSearchLift
        "TYPE_PATH" -> Right TypePath
        "TYPE_PATH_ATTRIBUTION" -> Right TypePathAttribution
        x -> Left ("Unable to parse ParametersType from: " <> x)

instance ToHttpApiData ParametersType where
    toQueryParam = \case
        TypeGeneral -> "TYPE_GENERAL"
        TypeAudiencePerformance -> "TYPE_AUDIENCE_PERFORMANCE"
        TypeInventoryAvailability -> "TYPE_INVENTORY_AVAILABILITY"
        TypeKeyword -> "TYPE_KEYWORD"
        TypePixelLoad -> "TYPE_PIXEL_LOAD"
        TypeAudienceComPosition -> "TYPE_AUDIENCE_COMPOSITION"
        TypeCrossPartner -> "TYPE_CROSS_PARTNER"
        TypePageCategory -> "TYPE_PAGE_CATEGORY"
        TypeThirdPartyDataProvider -> "TYPE_THIRD_PARTY_DATA_PROVIDER"
        TypeCrossPartnerThirdPartyDataProvider -> "TYPE_CROSS_PARTNER_THIRD_PARTY_DATA_PROVIDER"
        TypeClientSafe -> "TYPE_CLIENT_SAFE"
        TypeOrderId -> "TYPE_ORDER_ID"
        TypeFee -> "TYPE_FEE"
        TypeCrossFee -> "TYPE_CROSS_FEE"
        TypeActiveGrp -> "TYPE_ACTIVE_GRP"
        TypeYouTubeVertical -> "TYPE_YOUTUBE_VERTICAL"
        TypeComscoreVce -> "TYPE_COMSCORE_VCE"
        TypeTrueview -> "TYPE_TRUEVIEW"
        TypeNielsenAudienceProFile -> "TYPE_NIELSEN_AUDIENCE_PROFILE"
        TypeNielsenDailyReachBuild -> "TYPE_NIELSEN_DAILY_REACH_BUILD"
        TypeNielsenSite -> "TYPE_NIELSEN_SITE"
        TypeReachAndFrequency -> "TYPE_REACH_AND_FREQUENCY"
        TypeEstimatedConversion -> "TYPE_ESTIMATED_CONVERSION"
        TypeVerification -> "TYPE_VERIFICATION"
        TypeTrueviewIar -> "TYPE_TRUEVIEW_IAR"
        TypeNielsenOnlineGlobalMarket -> "TYPE_NIELSEN_ONLINE_GLOBAL_MARKET"
        TypePetraNielsenAudienceProFile -> "TYPE_PETRA_NIELSEN_AUDIENCE_PROFILE"
        TypePetraNielsenDailyReachBuild -> "TYPE_PETRA_NIELSEN_DAILY_REACH_BUILD"
        TypePetraNielsenOnlineGlobalMarket -> "TYPE_PETRA_NIELSEN_ONLINE_GLOBAL_MARKET"
        TypeNotSupported -> "TYPE_NOT_SUPPORTED"
        TypeReachAudience -> "TYPE_REACH_AUDIENCE"
        TypeLinearTvSearchLift -> "TYPE_LINEAR_TV_SEARCH_LIFT"
        TypePath -> "TYPE_PATH"
        TypePathAttribution -> "TYPE_PATH_ATTRIBUTION"

instance FromJSON ParametersType where
    parseJSON = parseJSONText "ParametersType"

instance ToJSON ParametersType where
    toJSON = toJSONText

-- | Range of report data.
data QueryMetadataDataRange
    = QMDRCustomDates
      -- ^ @CUSTOM_DATES@
    | QMDRCurrentDay
      -- ^ @CURRENT_DAY@
    | QMDRPreviousDay
      -- ^ @PREVIOUS_DAY@
    | QMDRWeekToDate
      -- ^ @WEEK_TO_DATE@
    | QMDRMonthToDate
      -- ^ @MONTH_TO_DATE@
    | QMDRQuarterToDate
      -- ^ @QUARTER_TO_DATE@
    | QMDRYearToDate
      -- ^ @YEAR_TO_DATE@
    | QMDRPreviousWeek
      -- ^ @PREVIOUS_WEEK@
    | QMDRPreviousHalfMonth
      -- ^ @PREVIOUS_HALF_MONTH@
    | QMDRPreviousMonth
      -- ^ @PREVIOUS_MONTH@
    | QMDRPreviousQuarter
      -- ^ @PREVIOUS_QUARTER@
    | QMDRPreviousYear
      -- ^ @PREVIOUS_YEAR@
    | QMDRLast7Days
      -- ^ @LAST_7_DAYS@
    | QMDRLast30Days
      -- ^ @LAST_30_DAYS@
    | QMDRLast90Days
      -- ^ @LAST_90_DAYS@
    | QMDRLast365Days
      -- ^ @LAST_365_DAYS@
    | QMDRAllTime
      -- ^ @ALL_TIME@
    | QMDRLast14Days
      -- ^ @LAST_14_DAYS@
    | QMDRTypeNotSupported
      -- ^ @TYPE_NOT_SUPPORTED@
    | QMDRLast60Days
      -- ^ @LAST_60_DAYS@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable QueryMetadataDataRange

instance FromHttpApiData QueryMetadataDataRange where
    parseQueryParam = \case
        "CUSTOM_DATES" -> Right QMDRCustomDates
        "CURRENT_DAY" -> Right QMDRCurrentDay
        "PREVIOUS_DAY" -> Right QMDRPreviousDay
        "WEEK_TO_DATE" -> Right QMDRWeekToDate
        "MONTH_TO_DATE" -> Right QMDRMonthToDate
        "QUARTER_TO_DATE" -> Right QMDRQuarterToDate
        "YEAR_TO_DATE" -> Right QMDRYearToDate
        "PREVIOUS_WEEK" -> Right QMDRPreviousWeek
        "PREVIOUS_HALF_MONTH" -> Right QMDRPreviousHalfMonth
        "PREVIOUS_MONTH" -> Right QMDRPreviousMonth
        "PREVIOUS_QUARTER" -> Right QMDRPreviousQuarter
        "PREVIOUS_YEAR" -> Right QMDRPreviousYear
        "LAST_7_DAYS" -> Right QMDRLast7Days
        "LAST_30_DAYS" -> Right QMDRLast30Days
        "LAST_90_DAYS" -> Right QMDRLast90Days
        "LAST_365_DAYS" -> Right QMDRLast365Days
        "ALL_TIME" -> Right QMDRAllTime
        "LAST_14_DAYS" -> Right QMDRLast14Days
        "TYPE_NOT_SUPPORTED" -> Right QMDRTypeNotSupported
        "LAST_60_DAYS" -> Right QMDRLast60Days
        x -> Left ("Unable to parse QueryMetadataDataRange from: " <> x)

instance ToHttpApiData QueryMetadataDataRange where
    toQueryParam = \case
        QMDRCustomDates -> "CUSTOM_DATES"
        QMDRCurrentDay -> "CURRENT_DAY"
        QMDRPreviousDay -> "PREVIOUS_DAY"
        QMDRWeekToDate -> "WEEK_TO_DATE"
        QMDRMonthToDate -> "MONTH_TO_DATE"
        QMDRQuarterToDate -> "QUARTER_TO_DATE"
        QMDRYearToDate -> "YEAR_TO_DATE"
        QMDRPreviousWeek -> "PREVIOUS_WEEK"
        QMDRPreviousHalfMonth -> "PREVIOUS_HALF_MONTH"
        QMDRPreviousMonth -> "PREVIOUS_MONTH"
        QMDRPreviousQuarter -> "PREVIOUS_QUARTER"
        QMDRPreviousYear -> "PREVIOUS_YEAR"
        QMDRLast7Days -> "LAST_7_DAYS"
        QMDRLast30Days -> "LAST_30_DAYS"
        QMDRLast90Days -> "LAST_90_DAYS"
        QMDRLast365Days -> "LAST_365_DAYS"
        QMDRAllTime -> "ALL_TIME"
        QMDRLast14Days -> "LAST_14_DAYS"
        QMDRTypeNotSupported -> "TYPE_NOT_SUPPORTED"
        QMDRLast60Days -> "LAST_60_DAYS"

instance FromJSON QueryMetadataDataRange where
    parseJSON = parseJSONText "QueryMetadataDataRange"

instance ToJSON QueryMetadataDataRange where
    toJSON = toJSONText

data ParametersMetricsItem
    = MetricUnknown
      -- ^ @METRIC_UNKNOWN@
    | MetricImpressions
      -- ^ @METRIC_IMPRESSIONS@
    | MetricClicks
      -- ^ @METRIC_CLICKS@
    | MetricLastImpressions
      -- ^ @METRIC_LAST_IMPRESSIONS@
    | MetricLastClicks
      -- ^ @METRIC_LAST_CLICKS@
    | MetricTotalConversions
      -- ^ @METRIC_TOTAL_CONVERSIONS@
    | MetricMediaCostAdvertiser
      -- ^ @METRIC_MEDIA_COST_ADVERTISER@
    | MetricMediaCostUsd
      -- ^ @METRIC_MEDIA_COST_USD@
    | MetricMediaCostPartner
      -- ^ @METRIC_MEDIA_COST_PARTNER@
    | MetricDataCostAdvertiser
      -- ^ @METRIC_DATA_COST_ADVERTISER@
    | MetricDataCostUsd
      -- ^ @METRIC_DATA_COST_USD@
    | MetricDataCostPartner
      -- ^ @METRIC_DATA_COST_PARTNER@
    | MetricCpmFEE1Advertiser
      -- ^ @METRIC_CPM_FEE1_ADVERTISER@
    | MetricCpmFEE1Usd
      -- ^ @METRIC_CPM_FEE1_USD@
    | MetricCpmFEE1Partner
      -- ^ @METRIC_CPM_FEE1_PARTNER@
    | MetricCpmFEE2Advertiser
      -- ^ @METRIC_CPM_FEE2_ADVERTISER@
    | MetricCpmFEE2Usd
      -- ^ @METRIC_CPM_FEE2_USD@
    | MetricCpmFEE2Partner
      -- ^ @METRIC_CPM_FEE2_PARTNER@
    | MetricMediaFEE1Advertiser
      -- ^ @METRIC_MEDIA_FEE1_ADVERTISER@
    | MetricMediaFEE1Usd
      -- ^ @METRIC_MEDIA_FEE1_USD@
    | MetricMediaFEE1Partner
      -- ^ @METRIC_MEDIA_FEE1_PARTNER@
    | MetricMediaFEE2Advertiser
      -- ^ @METRIC_MEDIA_FEE2_ADVERTISER@
    | MetricMediaFEE2Usd
      -- ^ @METRIC_MEDIA_FEE2_USD@
    | MetricMediaFEE2Partner
      -- ^ @METRIC_MEDIA_FEE2_PARTNER@
    | MetricRevenueAdvertiser
      -- ^ @METRIC_REVENUE_ADVERTISER@
    | MetricRevenueUsd
      -- ^ @METRIC_REVENUE_USD@
    | MetricRevenuePartner
      -- ^ @METRIC_REVENUE_PARTNER@
    | MetricProfitAdvertiser
      -- ^ @METRIC_PROFIT_ADVERTISER@
    | MetricProfitUsd
      -- ^ @METRIC_PROFIT_USD@
    | MetricProfitPartner
      -- ^ @METRIC_PROFIT_PARTNER@
    | MetricProfitMargin
      -- ^ @METRIC_PROFIT_MARGIN@
    | MetricTotalMediaCostUsd
      -- ^ @METRIC_TOTAL_MEDIA_COST_USD@
    | MetricTotalMediaCostPartner
      -- ^ @METRIC_TOTAL_MEDIA_COST_PARTNER@
    | MetricTotalMediaCostAdvertiser
      -- ^ @METRIC_TOTAL_MEDIA_COST_ADVERTISER@
    | MetricBillableCostUsd
      -- ^ @METRIC_BILLABLE_COST_USD@
    | MetricBillableCostPartner
      -- ^ @METRIC_BILLABLE_COST_PARTNER@
    | MetricBillableCostAdvertiser
      -- ^ @METRIC_BILLABLE_COST_ADVERTISER@
    | MetricPlatformFeeUsd
      -- ^ @METRIC_PLATFORM_FEE_USD@
    | MetricPlatformFeePartner
      -- ^ @METRIC_PLATFORM_FEE_PARTNER@
    | MetricPlatformFeeAdvertiser
      -- ^ @METRIC_PLATFORM_FEE_ADVERTISER@
    | MetricVideoCompletionRate
      -- ^ @METRIC_VIDEO_COMPLETION_RATE@
    | MetricProfitEcpmAdvertiser
      -- ^ @METRIC_PROFIT_ECPM_ADVERTISER@
    | MetricProfitEcpmUsd
      -- ^ @METRIC_PROFIT_ECPM_USD@
    | MetricProfitEcpmPartner
      -- ^ @METRIC_PROFIT_ECPM_PARTNER@
    | MetricRevenueEcpmAdvertiser
      -- ^ @METRIC_REVENUE_ECPM_ADVERTISER@
    | MetricRevenueEcpmUsd
      -- ^ @METRIC_REVENUE_ECPM_USD@
    | MetricRevenueEcpmPartner
      -- ^ @METRIC_REVENUE_ECPM_PARTNER@
    | MetricRevenueEcpcAdvertiser
      -- ^ @METRIC_REVENUE_ECPC_ADVERTISER@
    | MetricRevenueEcpcUsd
      -- ^ @METRIC_REVENUE_ECPC_USD@
    | MetricRevenueEcpcPartner
      -- ^ @METRIC_REVENUE_ECPC_PARTNER@
    | MetricRevenueEcpaAdvertiser
      -- ^ @METRIC_REVENUE_ECPA_ADVERTISER@
    | MetricRevenueEcpaUsd
      -- ^ @METRIC_REVENUE_ECPA_USD@
    | MetricRevenueEcpaPartner
      -- ^ @METRIC_REVENUE_ECPA_PARTNER@
    | MetricRevenueEcpapvAdvertiser
      -- ^ @METRIC_REVENUE_ECPAPV_ADVERTISER@
    | MetricRevenueEcpapvUsd
      -- ^ @METRIC_REVENUE_ECPAPV_USD@
    | MetricRevenueEcpapvPartner
      -- ^ @METRIC_REVENUE_ECPAPV_PARTNER@
    | MetricRevenueEcpapcAdvertiser
      -- ^ @METRIC_REVENUE_ECPAPC_ADVERTISER@
    | MetricRevenueEcpapcUsd
      -- ^ @METRIC_REVENUE_ECPAPC_USD@
    | MetricRevenueEcpapcPartner
      -- ^ @METRIC_REVENUE_ECPAPC_PARTNER@
    | MetricMediaCostEcpmAdvertiser
      -- ^ @METRIC_MEDIA_COST_ECPM_ADVERTISER@
    | MetricMediaCostEcpmUsd
      -- ^ @METRIC_MEDIA_COST_ECPM_USD@
    | MetricMediaCostEcpmPartner
      -- ^ @METRIC_MEDIA_COST_ECPM_PARTNER@
    | MetricMediaCostEcpcAdvertiser
      -- ^ @METRIC_MEDIA_COST_ECPC_ADVERTISER@
    | MetricMediaCostEcpcUsd
      -- ^ @METRIC_MEDIA_COST_ECPC_USD@
    | MetricMediaCostEcpcPartner
      -- ^ @METRIC_MEDIA_COST_ECPC_PARTNER@
    | MetricMediaCostEcpaAdvertiser
      -- ^ @METRIC_MEDIA_COST_ECPA_ADVERTISER@
    | MetricMediaCostEcpaUsd
      -- ^ @METRIC_MEDIA_COST_ECPA_USD@
    | MetricMediaCostEcpaPartner
      -- ^ @METRIC_MEDIA_COST_ECPA_PARTNER@
    | MetricMediaCostEcpapvAdvertiser
      -- ^ @METRIC_MEDIA_COST_ECPAPV_ADVERTISER@
    | MetricMediaCostEcpapvUsd
      -- ^ @METRIC_MEDIA_COST_ECPAPV_USD@
    | MetricMediaCostEcpapvPartner
      -- ^ @METRIC_MEDIA_COST_ECPAPV_PARTNER@
    | MetricMediaCostEcpapcAdvertiser
      -- ^ @METRIC_MEDIA_COST_ECPAPC_ADVERTISER@
    | MetricMediaCostEcpapcUsd
      -- ^ @METRIC_MEDIA_COST_ECPAPC_USD@
    | MetricMediaCostEcpapcPartner
      -- ^ @METRIC_MEDIA_COST_ECPAPC_PARTNER@
    | MetricTotalMediaCostEcpmAdvertiser
      -- ^ @METRIC_TOTAL_MEDIA_COST_ECPM_ADVERTISER@
    | MetricTotalMediaCostEcpmUsd
      -- ^ @METRIC_TOTAL_MEDIA_COST_ECPM_USD@
    | MetricTotalMediaCostEcpmPartner
      -- ^ @METRIC_TOTAL_MEDIA_COST_ECPM_PARTNER@
    | MetricTotalMediaCostEcpcAdvertiser
      -- ^ @METRIC_TOTAL_MEDIA_COST_ECPC_ADVERTISER@
    | MetricTotalMediaCostEcpcUsd
      -- ^ @METRIC_TOTAL_MEDIA_COST_ECPC_USD@
    | MetricTotalMediaCostEcpcPartner
      -- ^ @METRIC_TOTAL_MEDIA_COST_ECPC_PARTNER@
    | MetricTotalMediaCostEcpaAdvertiser
      -- ^ @METRIC_TOTAL_MEDIA_COST_ECPA_ADVERTISER@
    | MetricTotalMediaCostEcpaUsd
      -- ^ @METRIC_TOTAL_MEDIA_COST_ECPA_USD@
    | MetricTotalMediaCostEcpaPartner
      -- ^ @METRIC_TOTAL_MEDIA_COST_ECPA_PARTNER@
    | MetricTotalMediaCostEcpapvAdvertiser
      -- ^ @METRIC_TOTAL_MEDIA_COST_ECPAPV_ADVERTISER@
    | MetricTotalMediaCostEcpapvUsd
      -- ^ @METRIC_TOTAL_MEDIA_COST_ECPAPV_USD@
    | MetricTotalMediaCostEcpapvPartner
      -- ^ @METRIC_TOTAL_MEDIA_COST_ECPAPV_PARTNER@
    | MetricTotalMediaCostEcpapcAdvertiser
      -- ^ @METRIC_TOTAL_MEDIA_COST_ECPAPC_ADVERTISER@
    | MetricTotalMediaCostEcpapcUsd
      -- ^ @METRIC_TOTAL_MEDIA_COST_ECPAPC_USD@
    | MetricTotalMediaCostEcpapcPartner
      -- ^ @METRIC_TOTAL_MEDIA_COST_ECPAPC_PARTNER@
    | MetricRichMediaVideoPlays
      -- ^ @METRIC_RICH_MEDIA_VIDEO_PLAYS@
    | MetricRichMediaVideoCompletions
      -- ^ @METRIC_RICH_MEDIA_VIDEO_COMPLETIONS@
    | MetricRichMediaVideoPauses
      -- ^ @METRIC_RICH_MEDIA_VIDEO_PAUSES@
    | MetricRichMediaVideoMutes
      -- ^ @METRIC_RICH_MEDIA_VIDEO_MUTES@
    | MetricRichMediaVideoMidpoints
      -- ^ @METRIC_RICH_MEDIA_VIDEO_MIDPOINTS@
    | MetricRichMediaVideoFullScreens
      -- ^ @METRIC_RICH_MEDIA_VIDEO_FULL_SCREENS@
    | MetricRichMediaVideoFirstQuartileCompletes
      -- ^ @METRIC_RICH_MEDIA_VIDEO_FIRST_QUARTILE_COMPLETES@
    | MetricRichMediaVideoThirdQuartileCompletes
      -- ^ @METRIC_RICH_MEDIA_VIDEO_THIRD_QUARTILE_COMPLETES@
    | MetricClickToPostClickConversionRate
      -- ^ @METRIC_CLICK_TO_POST_CLICK_CONVERSION_RATE@
    | MetricImpressionsToConversionRate
      -- ^ @METRIC_IMPRESSIONS_TO_CONVERSION_RATE@
    | MetricConversionsPerMille
      -- ^ @METRIC_CONVERSIONS_PER_MILLE@
    | MetricCtr
      -- ^ @METRIC_CTR@
    | MetricBidRequests
      -- ^ @METRIC_BID_REQUESTS@
    | MetricUniqueVisitorsCookies
      -- ^ @METRIC_UNIQUE_VISITORS_COOKIES@
    | MetricRevenueEcpcvAdvertiser
      -- ^ @METRIC_REVENUE_ECPCV_ADVERTISER@
    | MetricRevenueEcpcvUsd
      -- ^ @METRIC_REVENUE_ECPCV_USD@
    | MetricRevenueEcpcvPartner
      -- ^ @METRIC_REVENUE_ECPCV_PARTNER@
    | MetricMediaCostEcpcvAdvertiser
      -- ^ @METRIC_MEDIA_COST_ECPCV_ADVERTISER@
    | MetricMediaCostEcpcvUsd
      -- ^ @METRIC_MEDIA_COST_ECPCV_USD@
    | MetricMediaCostEcpcvPartner
      -- ^ @METRIC_MEDIA_COST_ECPCV_PARTNER@
    | MetricTotalMediaCostEcpcvAdvertiser
      -- ^ @METRIC_TOTAL_MEDIA_COST_ECPCV_ADVERTISER@
    | MetricTotalMediaCostEcpcvUsd
      -- ^ @METRIC_TOTAL_MEDIA_COST_ECPCV_USD@
    | MetricTotalMediaCostEcpcvPartner
      -- ^ @METRIC_TOTAL_MEDIA_COST_ECPCV_PARTNER@
    | MetricRichMediaVideoSkips
      -- ^ @METRIC_RICH_MEDIA_VIDEO_SKIPS@
    | MetricFEE2Advertiser
      -- ^ @METRIC_FEE2_ADVERTISER@
    | MetricFEE2Usd
      -- ^ @METRIC_FEE2_USD@
    | MetricFEE2Partner
      -- ^ @METRIC_FEE2_PARTNER@
    | MetricFEE3Advertiser
      -- ^ @METRIC_FEE3_ADVERTISER@
    | MetricFEE3Usd
      -- ^ @METRIC_FEE3_USD@
    | MetricFEE3Partner
      -- ^ @METRIC_FEE3_PARTNER@
    | MetricFEE4Advertiser
      -- ^ @METRIC_FEE4_ADVERTISER@
    | MetricFEE4Usd
      -- ^ @METRIC_FEE4_USD@
    | MetricFEE4Partner
      -- ^ @METRIC_FEE4_PARTNER@
    | MetricFEE5Advertiser
      -- ^ @METRIC_FEE5_ADVERTISER@
    | MetricFEE5Usd
      -- ^ @METRIC_FEE5_USD@
    | MetricFEE5Partner
      -- ^ @METRIC_FEE5_PARTNER@
    | MetricFEE6Advertiser
      -- ^ @METRIC_FEE6_ADVERTISER@
    | MetricFEE6Usd
      -- ^ @METRIC_FEE6_USD@
    | MetricFEE6Partner
      -- ^ @METRIC_FEE6_PARTNER@
    | MetricFEE7Advertiser
      -- ^ @METRIC_FEE7_ADVERTISER@
    | MetricFEE7Usd
      -- ^ @METRIC_FEE7_USD@
    | MetricFEE7Partner
      -- ^ @METRIC_FEE7_PARTNER@
    | MetricFEE8Advertiser
      -- ^ @METRIC_FEE8_ADVERTISER@
    | MetricFEE8Usd
      -- ^ @METRIC_FEE8_USD@
    | MetricFEE8Partner
      -- ^ @METRIC_FEE8_PARTNER@
    | MetricFEE9Advertiser
      -- ^ @METRIC_FEE9_ADVERTISER@
    | MetricFEE9Usd
      -- ^ @METRIC_FEE9_USD@
    | MetricFEE9Partner
      -- ^ @METRIC_FEE9_PARTNER@
    | MetricFEE10Advertiser
      -- ^ @METRIC_FEE10_ADVERTISER@
    | MetricFEE10Usd
      -- ^ @METRIC_FEE10_USD@
    | MetricFEE10Partner
      -- ^ @METRIC_FEE10_PARTNER@
    | MetricFEE11Advertiser
      -- ^ @METRIC_FEE11_ADVERTISER@
    | MetricFEE11Usd
      -- ^ @METRIC_FEE11_USD@
    | MetricFEE11Partner
      -- ^ @METRIC_FEE11_PARTNER@
    | MetricFEE12Advertiser
      -- ^ @METRIC_FEE12_ADVERTISER@
    | MetricFEE12Usd
      -- ^ @METRIC_FEE12_USD@
    | MetricFEE12Partner
      -- ^ @METRIC_FEE12_PARTNER@
    | MetricFEE13Advertiser
      -- ^ @METRIC_FEE13_ADVERTISER@
    | MetricFEE13Usd
      -- ^ @METRIC_FEE13_USD@
    | MetricFEE13Partner
      -- ^ @METRIC_FEE13_PARTNER@
    | MetricFEE14Advertiser
      -- ^ @METRIC_FEE14_ADVERTISER@
    | MetricFEE14Usd
      -- ^ @METRIC_FEE14_USD@
    | MetricFEE14Partner
      -- ^ @METRIC_FEE14_PARTNER@
    | MetricFEE15Advertiser
      -- ^ @METRIC_FEE15_ADVERTISER@
    | MetricFEE15Usd
      -- ^ @METRIC_FEE15_USD@
    | MetricFEE15Partner
      -- ^ @METRIC_FEE15_PARTNER@
    | MetricCpmFEE3Advertiser
      -- ^ @METRIC_CPM_FEE3_ADVERTISER@
    | MetricCpmFEE3Usd
      -- ^ @METRIC_CPM_FEE3_USD@
    | MetricCpmFEE3Partner
      -- ^ @METRIC_CPM_FEE3_PARTNER@
    | MetricCpmFEE4Advertiser
      -- ^ @METRIC_CPM_FEE4_ADVERTISER@
    | MetricCpmFEE4Usd
      -- ^ @METRIC_CPM_FEE4_USD@
    | MetricCpmFEE4Partner
      -- ^ @METRIC_CPM_FEE4_PARTNER@
    | MetricCpmFEE5Advertiser
      -- ^ @METRIC_CPM_FEE5_ADVERTISER@
    | MetricCpmFEE5Usd
      -- ^ @METRIC_CPM_FEE5_USD@
    | MetricCpmFEE5Partner
      -- ^ @METRIC_CPM_FEE5_PARTNER@
    | MetricMediaFEE3Advertiser
      -- ^ @METRIC_MEDIA_FEE3_ADVERTISER@
    | MetricMediaFEE3Usd
      -- ^ @METRIC_MEDIA_FEE3_USD@
    | MetricMediaFEE3Partner
      -- ^ @METRIC_MEDIA_FEE3_PARTNER@
    | MetricMediaFEE4Advertiser
      -- ^ @METRIC_MEDIA_FEE4_ADVERTISER@
    | MetricMediaFEE4Usd
      -- ^ @METRIC_MEDIA_FEE4_USD@
    | MetricMediaFEE4Partner
      -- ^ @METRIC_MEDIA_FEE4_PARTNER@
    | MetricMediaFEE5Advertiser
      -- ^ @METRIC_MEDIA_FEE5_ADVERTISER@
    | MetricMediaFEE5Usd
      -- ^ @METRIC_MEDIA_FEE5_USD@
    | MetricMediaFEE5Partner
      -- ^ @METRIC_MEDIA_FEE5_PARTNER@
    | MetricVideoCompanionImpressions
      -- ^ @METRIC_VIDEO_COMPANION_IMPRESSIONS@
    | MetricVideoCompanionClicks
      -- ^ @METRIC_VIDEO_COMPANION_CLICKS@
    | MetricFEE16Advertiser
      -- ^ @METRIC_FEE16_ADVERTISER@
    | MetricFEE16Usd
      -- ^ @METRIC_FEE16_USD@
    | MetricFEE16Partner
      -- ^ @METRIC_FEE16_PARTNER@
    | MetricFEE17Advertiser
      -- ^ @METRIC_FEE17_ADVERTISER@
    | MetricFEE17Usd
      -- ^ @METRIC_FEE17_USD@
    | MetricFEE17Partner
      -- ^ @METRIC_FEE17_PARTNER@
    | MetricFEE18Advertiser
      -- ^ @METRIC_FEE18_ADVERTISER@
    | MetricFEE18Usd
      -- ^ @METRIC_FEE18_USD@
    | MetricFEE18Partner
      -- ^ @METRIC_FEE18_PARTNER@
    | MetricTrueviewViews
      -- ^ @METRIC_TRUEVIEW_VIEWS@
    | MetricTrueviewUniqueViewers
      -- ^ @METRIC_TRUEVIEW_UNIQUE_VIEWERS@
    | MetricTrueviewEarnedViews
      -- ^ @METRIC_TRUEVIEW_EARNED_VIEWS@
    | MetricTrueviewEarnedSubscribers
      -- ^ @METRIC_TRUEVIEW_EARNED_SUBSCRIBERS@
    | MetricTrueviewEarnedPlayListAdditions
      -- ^ @METRIC_TRUEVIEW_EARNED_PLAYLIST_ADDITIONS@
    | MetricTrueviewEarnedLikes
      -- ^ @METRIC_TRUEVIEW_EARNED_LIKES@
    | MetricTrueviewEarnedShares
      -- ^ @METRIC_TRUEVIEW_EARNED_SHARES@
    | MetricTrueviewImpressionShare
      -- ^ @METRIC_TRUEVIEW_IMPRESSION_SHARE@
    | MetricTrueviewLostIsBudget
      -- ^ @METRIC_TRUEVIEW_LOST_IS_BUDGET@
    | MetricTrueviewLostIsRank
      -- ^ @METRIC_TRUEVIEW_LOST_IS_RANK@
    | MetricTrueviewViewThroughConversion
      -- ^ @METRIC_TRUEVIEW_VIEW_THROUGH_CONVERSION@
    | MetricTrueviewConversionManyPerView
      -- ^ @METRIC_TRUEVIEW_CONVERSION_MANY_PER_VIEW@
    | MetricTrueviewViewRate
      -- ^ @METRIC_TRUEVIEW_VIEW_RATE@
    | MetricTrueviewConversionRateOnePerView
      -- ^ @METRIC_TRUEVIEW_CONVERSION_RATE_ONE_PER_VIEW@
    | MetricTrueviewCpvAdvertiser
      -- ^ @METRIC_TRUEVIEW_CPV_ADVERTISER@
    | MetricTrueviewCpvUsd
      -- ^ @METRIC_TRUEVIEW_CPV_USD@
    | MetricTrueviewCpvPartner
      -- ^ @METRIC_TRUEVIEW_CPV_PARTNER@
    | MetricFEE19Advertiser
      -- ^ @METRIC_FEE19_ADVERTISER@
    | MetricFEE19Usd
      -- ^ @METRIC_FEE19_USD@
    | MetricFEE19Partner
      -- ^ @METRIC_FEE19_PARTNER@
    | MetricTeaTrueviewImpressions
      -- ^ @METRIC_TEA_TRUEVIEW_IMPRESSIONS@
    | MetricTeaTrueviewUniqueCookies
      -- ^ @METRIC_TEA_TRUEVIEW_UNIQUE_COOKIES@
    | MetricFEE20Advertiser
      -- ^ @METRIC_FEE20_ADVERTISER@
    | MetricFEE20Usd
      -- ^ @METRIC_FEE20_USD@
    | MetricFEE20Partner
      -- ^ @METRIC_FEE20_PARTNER@
    | MetricFEE21Advertiser
      -- ^ @METRIC_FEE21_ADVERTISER@
    | MetricFEE21Usd
      -- ^ @METRIC_FEE21_USD@
    | MetricFEE21Partner
      -- ^ @METRIC_FEE21_PARTNER@
    | MetricFEE22Advertiser
      -- ^ @METRIC_FEE22_ADVERTISER@
    | MetricFEE22Usd
      -- ^ @METRIC_FEE22_USD@
    | MetricFEE22Partner
      -- ^ @METRIC_FEE22_PARTNER@
    | MetricTrueviewTotalConversionValuesAdvertiser
      -- ^ @METRIC_TRUEVIEW_TOTAL_CONVERSION_VALUES_ADVERTISER@
    | MetricTrueviewTotalConversionValuesUsd
      -- ^ @METRIC_TRUEVIEW_TOTAL_CONVERSION_VALUES_USD@
    | MetricTrueviewTotalConversionValuesPartner
      -- ^ @METRIC_TRUEVIEW_TOTAL_CONVERSION_VALUES_PARTNER@
    | MetricTrueviewConversionCostManyPerViewAdvertiser
      -- ^ @METRIC_TRUEVIEW_CONVERSION_COST_MANY_PER_VIEW_ADVERTISER@
    | MetricTrueviewConversionCostManyPerViewUsd
      -- ^ @METRIC_TRUEVIEW_CONVERSION_COST_MANY_PER_VIEW_USD@
    | MetricTrueviewConversionCostManyPerViewPartner
      -- ^ @METRIC_TRUEVIEW_CONVERSION_COST_MANY_PER_VIEW_PARTNER@
    | MetricProfitViewableEcpmAdvertiser
      -- ^ @METRIC_PROFIT_VIEWABLE_ECPM_ADVERTISER@
    | MetricProfitViewableEcpmUsd
      -- ^ @METRIC_PROFIT_VIEWABLE_ECPM_USD@
    | MetricProfitViewableEcpmPartner
      -- ^ @METRIC_PROFIT_VIEWABLE_ECPM_PARTNER@
    | MetricRevenueViewableEcpmAdvertiser
      -- ^ @METRIC_REVENUE_VIEWABLE_ECPM_ADVERTISER@
    | MetricRevenueViewableEcpmUsd
      -- ^ @METRIC_REVENUE_VIEWABLE_ECPM_USD@
    | MetricRevenueViewableEcpmPartner
      -- ^ @METRIC_REVENUE_VIEWABLE_ECPM_PARTNER@
    | MetricMediaCostViewableEcpmAdvertiser
      -- ^ @METRIC_MEDIA_COST_VIEWABLE_ECPM_ADVERTISER@
    | MetricMediaCostViewableEcpmUsd
      -- ^ @METRIC_MEDIA_COST_VIEWABLE_ECPM_USD@
    | MetricMediaCostViewableEcpmPartner
      -- ^ @METRIC_MEDIA_COST_VIEWABLE_ECPM_PARTNER@
    | MetricTotalMediaCostViewableEcpmAdvertiser
      -- ^ @METRIC_TOTAL_MEDIA_COST_VIEWABLE_ECPM_ADVERTISER@
    | MetricTotalMediaCostViewableEcpmUsd
      -- ^ @METRIC_TOTAL_MEDIA_COST_VIEWABLE_ECPM_USD@
    | MetricTotalMediaCostViewableEcpmPartner
      -- ^ @METRIC_TOTAL_MEDIA_COST_VIEWABLE_ECPM_PARTNER@
    | MetricTrueviewEngagements
      -- ^ @METRIC_TRUEVIEW_ENGAGEMENTS@
    | MetricTrueviewEngagementRate
      -- ^ @METRIC_TRUEVIEW_ENGAGEMENT_RATE@
    | MetricTrueviewAverageCpeAdvertiser
      -- ^ @METRIC_TRUEVIEW_AVERAGE_CPE_ADVERTISER@
    | MetricTrueviewAverageCpeUsd
      -- ^ @METRIC_TRUEVIEW_AVERAGE_CPE_USD@
    | MetricTrueviewAverageCpePartner
      -- ^ @METRIC_TRUEVIEW_AVERAGE_CPE_PARTNER@
    | MetricActiveViewViewableImpressions
      -- ^ @METRIC_ACTIVE_VIEW_VIEWABLE_IMPRESSIONS@
    | MetricActiveViewEligibleImpressions
      -- ^ @METRIC_ACTIVE_VIEW_ELIGIBLE_IMPRESSIONS@
    | MetricActiveViewMeasurableImpressions
      -- ^ @METRIC_ACTIVE_VIEW_MEASURABLE_IMPRESSIONS@
    | MetricActiveViewPctMeasurableImpressions
      -- ^ @METRIC_ACTIVE_VIEW_PCT_MEASURABLE_IMPRESSIONS@
    | MetricActiveViewPctViewableImpressions
      -- ^ @METRIC_ACTIVE_VIEW_PCT_VIEWABLE_IMPRESSIONS@
    | MetricActiveViewAverageViewableTime
      -- ^ @METRIC_ACTIVE_VIEW_AVERAGE_VIEWABLE_TIME@
    | MetricActiveViewUnmeasurableImpressions
      -- ^ @METRIC_ACTIVE_VIEW_UNMEASURABLE_IMPRESSIONS@
    | MetricActiveViewUnviewableImpressions
      -- ^ @METRIC_ACTIVE_VIEW_UNVIEWABLE_IMPRESSIONS@
    | MetricActiveViewDistributionUnmeasurable
      -- ^ @METRIC_ACTIVE_VIEW_DISTRIBUTION_UNMEASURABLE@
    | MetricActiveViewDistributionUnviewable
      -- ^ @METRIC_ACTIVE_VIEW_DISTRIBUTION_UNVIEWABLE@
    | MetricActiveViewDistributionViewable
      -- ^ @METRIC_ACTIVE_VIEW_DISTRIBUTION_VIEWABLE@
    | MetricActiveViewPercentViewableForTimeThreshold
      -- ^ @METRIC_ACTIVE_VIEW_PERCENT_VIEWABLE_FOR_TIME_THRESHOLD@
    | MetricActiveViewViewableForTimeThreshold
      -- ^ @METRIC_ACTIVE_VIEW_VIEWABLE_FOR_TIME_THRESHOLD@
    | MetricActiveViewPercentVisibleAtStart
      -- ^ @METRIC_ACTIVE_VIEW_PERCENT_VISIBLE_AT_START@
    | MetricActiveViewPercentVisibleFirstQuar
      -- ^ @METRIC_ACTIVE_VIEW_PERCENT_VISIBLE_FIRST_QUAR@
    | MetricActiveViewPercentVisibleSecondQuar
      -- ^ @METRIC_ACTIVE_VIEW_PERCENT_VISIBLE_SECOND_QUAR@
    | MetricActiveViewPercentVisibleThirdQuar
      -- ^ @METRIC_ACTIVE_VIEW_PERCENT_VISIBLE_THIRD_QUAR@
    | MetricActiveViewPercentVisibleOnComplete
      -- ^ @METRIC_ACTIVE_VIEW_PERCENT_VISIBLE_ON_COMPLETE@
    | MetricActiveViewPercentAudibleVisibleAtStart
      -- ^ @METRIC_ACTIVE_VIEW_PERCENT_AUDIBLE_VISIBLE_AT_START@
    | MetricActiveViewPercentAudibleVisibleFirstQuar
      -- ^ @METRIC_ACTIVE_VIEW_PERCENT_AUDIBLE_VISIBLE_FIRST_QUAR@
    | MetricActiveViewPercentAudibleVisibleSecondQuar
      -- ^ @METRIC_ACTIVE_VIEW_PERCENT_AUDIBLE_VISIBLE_SECOND_QUAR@
    | MetricActiveViewPercentAudibleVisibleThirdQuar
      -- ^ @METRIC_ACTIVE_VIEW_PERCENT_AUDIBLE_VISIBLE_THIRD_QUAR@
    | MetricActiveViewPercentAudibleVisibleOnComplete
      -- ^ @METRIC_ACTIVE_VIEW_PERCENT_AUDIBLE_VISIBLE_ON_COMPLETE@
    | MetricActiveViewAudibleVisibleOnCompleteImpressions
      -- ^ @METRIC_ACTIVE_VIEW_AUDIBLE_VISIBLE_ON_COMPLETE_IMPRESSIONS@
    | MetricViewableBidRequests
      -- ^ @METRIC_VIEWABLE_BID_REQUESTS@
    | MetricCookieReachImpressionReach
      -- ^ @METRIC_COOKIE_REACH_IMPRESSION_REACH@
    | MetricCookieReachAverageImpressionFrequency
      -- ^ @METRIC_COOKIE_REACH_AVERAGE_IMPRESSION_FREQUENCY@
    | MetricDBmEngagementRate
      -- ^ @METRIC_DBM_ENGAGEMENT_RATE@
    | MetricRichMediaScrolls
      -- ^ @METRIC_RICH_MEDIA_SCROLLS@
    | MetricCmPostViewRevenue
      -- ^ @METRIC_CM_POST_VIEW_REVENUE@
    | MetricCmPostClickRevenue
      -- ^ @METRIC_CM_POST_CLICK_REVENUE@
    | MetricFloodlightImpressions
      -- ^ @METRIC_FLOODLIGHT_IMPRESSIONS@
    | MetricBillableImpressions
      -- ^ @METRIC_BILLABLE_IMPRESSIONS@
    | MetricNielsenAverageFrequency
      -- ^ @METRIC_NIELSEN_AVERAGE_FREQUENCY@
    | MetricNielsenImpressions
      -- ^ @METRIC_NIELSEN_IMPRESSIONS@
    | MetricNielsenUniqueAudience
      -- ^ @METRIC_NIELSEN_UNIQUE_AUDIENCE@
    | MetricNielsenGrp
      -- ^ @METRIC_NIELSEN_GRP@
    | MetricNielsenImpressionIndex
      -- ^ @METRIC_NIELSEN_IMPRESSION_INDEX@
    | MetricNielsenImpressionsShare
      -- ^ @METRIC_NIELSEN_IMPRESSIONS_SHARE@
    | MetricNielsenPopulation
      -- ^ @METRIC_NIELSEN_POPULATION@
    | MetricNielsenPopulationReach
      -- ^ @METRIC_NIELSEN_POPULATION_REACH@
    | MetricNielsenPopulationShare
      -- ^ @METRIC_NIELSEN_POPULATION_SHARE@
    | MetricNielsenReachIndex
      -- ^ @METRIC_NIELSEN_REACH_INDEX@
    | MetricNielsenReachShare
      -- ^ @METRIC_NIELSEN_REACH_SHARE@
    | MetricActiveViewAudibleFullyOnScreenHalfOfDurationImpressions
      -- ^ @METRIC_ACTIVE_VIEW_AUDIBLE_FULLY_ON_SCREEN_HALF_OF_DURATION_IMPRESSIONS@
    | MetricActiveViewAudibleFullyOnScreenHalfOfDurationMeasurableImpressions
      -- ^ @METRIC_ACTIVE_VIEW_AUDIBLE_FULLY_ON_SCREEN_HALF_OF_DURATION_MEASURABLE_IMPRESSIONS@
    | MetricActiveViewAudibleFullyOnScreenHalfOfDurationRate
      -- ^ @METRIC_ACTIVE_VIEW_AUDIBLE_FULLY_ON_SCREEN_HALF_OF_DURATION_RATE@
    | MetricActiveViewAudibleFullyOnScreenHalfOfDurationTrueviewImpressions
      -- ^ @METRIC_ACTIVE_VIEW_AUDIBLE_FULLY_ON_SCREEN_HALF_OF_DURATION_TRUEVIEW_IMPRESSIONS@
    | MetricActiveViewAudibleFullyOnScreenHalfOfDurationTrueviewMeasurableImpressions
      -- ^ @METRIC_ACTIVE_VIEW_AUDIBLE_FULLY_ON_SCREEN_HALF_OF_DURATION_TRUEVIEW_MEASURABLE_IMPRESSIONS@
    | MetricActiveViewAudibleFullyOnScreenHalfOfDurationTrueviewRate
      -- ^ @METRIC_ACTIVE_VIEW_AUDIBLE_FULLY_ON_SCREEN_HALF_OF_DURATION_TRUEVIEW_RATE@
    | MetricActiveViewCustomMetricMeasurableImpressions
      -- ^ @METRIC_ACTIVE_VIEW_CUSTOM_METRIC_MEASURABLE_IMPRESSIONS@
    | MetricActiveViewCustomMetricViewableImpressions
      -- ^ @METRIC_ACTIVE_VIEW_CUSTOM_METRIC_VIEWABLE_IMPRESSIONS@
    | MetricActiveViewCustomMetricViewableRate
      -- ^ @METRIC_ACTIVE_VIEW_CUSTOM_METRIC_VIEWABLE_RATE@
    | MetricActiveViewPercentAudibleImpressions
      -- ^ @METRIC_ACTIVE_VIEW_PERCENT_AUDIBLE_IMPRESSIONS@
    | MetricActiveViewPercentFullyOnScreen2Sec
      -- ^ @METRIC_ACTIVE_VIEW_PERCENT_FULLY_ON_SCREEN_2_SEC@
    | MetricActiveViewPercentFullScreen
      -- ^ @METRIC_ACTIVE_VIEW_PERCENT_FULL_SCREEN@
    | MetricActiveViewPercentInBackgRound
      -- ^ @METRIC_ACTIVE_VIEW_PERCENT_IN_BACKGROUND@
    | MetricActiveViewPercentOfAdPlayed
      -- ^ @METRIC_ACTIVE_VIEW_PERCENT_OF_AD_PLAYED@
    | MetricActiveViewPercentOfCompletedImpressionsAudibleAndVisible
      -- ^ @METRIC_ACTIVE_VIEW_PERCENT_OF_COMPLETED_IMPRESSIONS_AUDIBLE_AND_VISIBLE@
    | MetricActiveViewPercentOfCompletedImpressionsVisible
      -- ^ @METRIC_ACTIVE_VIEW_PERCENT_OF_COMPLETED_IMPRESSIONS_VISIBLE@
    | MetricActiveViewPercentOfFirstQuartileImpressionsAudibleAndVisible
      -- ^ @METRIC_ACTIVE_VIEW_PERCENT_OF_FIRST_QUARTILE_IMPRESSIONS_AUDIBLE_AND_VISIBLE@
    | MetricActiveViewPercentOfFirstQuartileImpressionsVisible
      -- ^ @METRIC_ACTIVE_VIEW_PERCENT_OF_FIRST_QUARTILE_IMPRESSIONS_VISIBLE@
    | MetricActiveViewPercentOfMidpointImpressionsAudibleAndVisible
      -- ^ @METRIC_ACTIVE_VIEW_PERCENT_OF_MIDPOINT_IMPRESSIONS_AUDIBLE_AND_VISIBLE@
    | MetricActiveViewPercentOfMidpointImpressionsVisible
      -- ^ @METRIC_ACTIVE_VIEW_PERCENT_OF_MIDPOINT_IMPRESSIONS_VISIBLE@
    | MetricActiveViewPercentOfThirdQuartileImpressionsAudibleAndVisible
      -- ^ @METRIC_ACTIVE_VIEW_PERCENT_OF_THIRD_QUARTILE_IMPRESSIONS_AUDIBLE_AND_VISIBLE@
    | MetricActiveViewPercentOfThirdQuartileImpressionsVisible
      -- ^ @METRIC_ACTIVE_VIEW_PERCENT_OF_THIRD_QUARTILE_IMPRESSIONS_VISIBLE@
    | MetricActiveViewPercentPlayTimeAudible
      -- ^ @METRIC_ACTIVE_VIEW_PERCENT_PLAY_TIME_AUDIBLE@
    | MetricActiveViewPercentPlayTimeAudibleAndVisible
      -- ^ @METRIC_ACTIVE_VIEW_PERCENT_PLAY_TIME_AUDIBLE_AND_VISIBLE@
    | MetricActiveViewPercentPlayTimeVisible
      -- ^ @METRIC_ACTIVE_VIEW_PERCENT_PLAY_TIME_VISIBLE@
    | MetricAdaptedAudienceFrequency
      -- ^ @METRIC_ADAPTED_AUDIENCE_FREQUENCY@
    | MetricAdlingoFeeAdvertiserCurrency
      -- ^ @METRIC_ADLINGO_FEE_ADVERTISER_CURRENCY@
    | MetricAudioClientCostEcpclAdvertiserCurrency
      -- ^ @METRIC_AUDIO_CLIENT_COST_ECPCL_ADVERTISER_CURRENCY@
    | MetricAudioMediaCostEcpclAdvertiserCurrency
      -- ^ @METRIC_AUDIO_MEDIA_COST_ECPCL_ADVERTISER_CURRENCY@
    | MetricAudioMutesAudio
      -- ^ @METRIC_AUDIO_MUTES_AUDIO@
    | MetricAudioRevenueEcpclAdvertiserCurrency
      -- ^ @METRIC_AUDIO_REVENUE_ECPCL_ADVERTISER_CURRENCY@
    | MetricAudioUnmutesAudio
      -- ^ @METRIC_AUDIO_UNMUTES_AUDIO@
    | MetricAudioUnmutesVideo
      -- ^ @METRIC_AUDIO_UNMUTES_VIDEO@
    | MetricAverageDisplayTime
      -- ^ @METRIC_AVERAGE_DISPLAY_TIME@
    | MetricAverageImpressionFrequencyPerUser
      -- ^ @METRIC_AVERAGE_IMPRESSION_FREQUENCY_PER_USER@
    | MetricAverageInteractionTime
      -- ^ @METRIC_AVERAGE_INTERACTION_TIME@
    | MetricAverageWatchTimePerImpression
      -- ^ @METRIC_AVERAGE_WATCH_TIME_PER_IMPRESSION@
    | MetricBeginToRenderEligibleImpressions
      -- ^ @METRIC_BEGIN_TO_RENDER_ELIGIBLE_IMPRESSIONS@
    | MetricBeginToRenderImpressions
      -- ^ @METRIC_BEGIN_TO_RENDER_IMPRESSIONS@
    | MetricBenchmarkFrequency
      -- ^ @METRIC_BENCHMARK_FREQUENCY@
    | MetricBrandLiftAbsoluteBrandLift
      -- ^ @METRIC_BRAND_LIFT_ABSOLUTE_BRAND_LIFT@
    | MetricBrandLiftAllSurveyResponses
      -- ^ @METRIC_BRAND_LIFT_ALL_SURVEY_RESPONSES@
    | MetricBrandLiftBaselinePositiveResponseRate
      -- ^ @METRIC_BRAND_LIFT_BASELINE_POSITIVE_RESPONSE_RATE@
    | MetricBrandLiftBaselineSurveyResponses
      -- ^ @METRIC_BRAND_LIFT_BASELINE_SURVEY_RESPONSES@
    | MetricBrandLiftCostPerLiftedUser
      -- ^ @METRIC_BRAND_LIFT_COST_PER_LIFTED_USER@
    | MetricBrandLiftExposedSurveyResponses
      -- ^ @METRIC_BRAND_LIFT_EXPOSED_SURVEY_RESPONSES@
    | MetricBrandLiftHeadroomBrandLift
      -- ^ @METRIC_BRAND_LIFT_HEADROOM_BRAND_LIFT@
    | MetricBrandLiftRelativeBrandLift
      -- ^ @METRIC_BRAND_LIFT_RELATIVE_BRAND_LIFT@
    | MetricBrandLiftUsers
      -- ^ @METRIC_BRAND_LIFT_USERS@
    | MetricCardClicks
      -- ^ @METRIC_CARD_CLICKS@
    | MetricClientCostAdvertiserCurrency
      -- ^ @METRIC_CLIENT_COST_ADVERTISER_CURRENCY@
    | MetricClientCostEcpaAdvertiserCurrency
      -- ^ @METRIC_CLIENT_COST_ECPA_ADVERTISER_CURRENCY@
    | MetricClientCostEcpaPcAdvertiserCurrency
      -- ^ @METRIC_CLIENT_COST_ECPA_PC_ADVERTISER_CURRENCY@
    | MetricClientCostEcpaPvAdvertiserCurrency
      -- ^ @METRIC_CLIENT_COST_ECPA_PV_ADVERTISER_CURRENCY@
    | MetricClientCostEcpcAdvertiserCurrency
      -- ^ @METRIC_CLIENT_COST_ECPC_ADVERTISER_CURRENCY@
    | MetricClientCostEcpmAdvertiserCurrency
      -- ^ @METRIC_CLIENT_COST_ECPM_ADVERTISER_CURRENCY@
    | MetricClientCostViewableEcpmAdvertiserCurrency
      -- ^ @METRIC_CLIENT_COST_VIEWABLE_ECPM_ADVERTISER_CURRENCY@
    | MetricCmPostClickRevenueCrossEnvironment
      -- ^ @METRIC_CM_POST_CLICK_REVENUE_CROSS_ENVIRONMENT@
    | MetricCmPostViewRevenueCrossEnvironment
      -- ^ @METRIC_CM_POST_VIEW_REVENUE_CROSS_ENVIRONMENT@
    | MetricCompanionClicksAudio
      -- ^ @METRIC_COMPANION_CLICKS_AUDIO@
    | MetricCompanionImpressionsAudio
      -- ^ @METRIC_COMPANION_IMPRESSIONS_AUDIO@
    | MetricCompleteListensAudio
      -- ^ @METRIC_COMPLETE_LISTENS_AUDIO@
    | MetricCompletionRateAudio
      -- ^ @METRIC_COMPLETION_RATE_AUDIO@
    | MetricCounters
      -- ^ @METRIC_COUNTERS@
    | MetricCustomFee1AdvertiserCurrency
      -- ^ @METRIC_CUSTOM_FEE_1_ADVERTISER_CURRENCY@
    | MetricCustomFee2AdvertiserCurrency
      -- ^ @METRIC_CUSTOM_FEE_2_ADVERTISER_CURRENCY@
    | MetricCustomFee3AdvertiserCurrency
      -- ^ @METRIC_CUSTOM_FEE_3_ADVERTISER_CURRENCY@
    | MetricCustomFee4AdvertiserCurrency
      -- ^ @METRIC_CUSTOM_FEE_4_ADVERTISER_CURRENCY@
    | MetricCustomFee5AdvertiserCurrency
      -- ^ @METRIC_CUSTOM_FEE_5_ADVERTISER_CURRENCY@
    | MetricCustomValuePer1000Impressions
      -- ^ @METRIC_CUSTOM_VALUE_PER_1000_IMPRESSIONS@
    | MetricEngagements
      -- ^ @METRIC_ENGAGEMENTS@
    | MetricEstimatedCpmForImpressionsWithCustomValueAdvertiserCurrency
      -- ^ @METRIC_ESTIMATED_CPM_FOR_IMPRESSIONS_WITH_CUSTOM_VALUE_ADVERTISER_CURRENCY@
    | MetricEstimatedTotalCostForImpressionsWithCustomValueAdvertiserCurrency
      -- ^ @METRIC_ESTIMATED_TOTAL_COST_FOR_IMPRESSIONS_WITH_CUSTOM_VALUE_ADVERTISER_CURRENCY@
    | MetricExits
      -- ^ @METRIC_EXITS@
    | MetricExpansions
      -- ^ @METRIC_EXPANSIONS@
    | MetricFirstQuartileAudio
      -- ^ @METRIC_FIRST_QUARTILE_AUDIO@
    | MetricGeneralInvalidTrafficGivtImpressions
      -- ^ @METRIC_GENERAL_INVALID_TRAFFIC_GIVT_IMPRESSIONS@
    | MetricGeneralInvalidTrafficGivtTrackedAds
      -- ^ @METRIC_GENERAL_INVALID_TRAFFIC_GIVT_TRACKED_ADS@
    | MetricGivtActiveViewEligibleImpressions
      -- ^ @METRIC_GIVT_ACTIVE_VIEW_ELIGIBLE_IMPRESSIONS@
    | MetricGivtActiveViewMeasurableImpressions
      -- ^ @METRIC_GIVT_ACTIVE_VIEW_MEASURABLE_IMPRESSIONS@
    | MetricGivtActiveViewViewableImpressions
      -- ^ @METRIC_GIVT_ACTIVE_VIEW_VIEWABLE_IMPRESSIONS@
    | MetricGivtBeginToRenderImpressions
      -- ^ @METRIC_GIVT_BEGIN_TO_RENDER_IMPRESSIONS@
    | MetricGivtClicks
      -- ^ @METRIC_GIVT_CLICKS@
    | MetricGmailConversions
      -- ^ @METRIC_GMAIL_CONVERSIONS@
    | MetricGmailPostClickConversions
      -- ^ @METRIC_GMAIL_POST_CLICK_CONVERSIONS@
    | MetricGmailPostViewConversions
      -- ^ @METRIC_GMAIL_POST_VIEW_CONVERSIONS@
    | MetricGmailPotentialViews
      -- ^ @METRIC_GMAIL_POTENTIAL_VIEWS@
    | MetricImpressionsWithCustomValue
      -- ^ @METRIC_IMPRESSIONS_WITH_CUSTOM_VALUE@
    | MetricImpressionsWithPositiveCustomValue
      -- ^ @METRIC_IMPRESSIONS_WITH_POSITIVE_CUSTOM_VALUE@
    | MetricImpressionCustomValueCost
      -- ^ @METRIC_IMPRESSION_CUSTOM_VALUE_COST@
    | MetricInteractiveImpressions
      -- ^ @METRIC_INTERACTIVE_IMPRESSIONS@
    | MetricInvalidActiveViewEligibleImpressions
      -- ^ @METRIC_INVALID_ACTIVE_VIEW_ELIGIBLE_IMPRESSIONS@
    | MetricInvalidActiveViewMeasurableImpressions
      -- ^ @METRIC_INVALID_ACTIVE_VIEW_MEASURABLE_IMPRESSIONS@
    | MetricInvalidActiveViewViewableImpressions
      -- ^ @METRIC_INVALID_ACTIVE_VIEW_VIEWABLE_IMPRESSIONS@
    | MetricInvalidBeginToRenderImpressions
      -- ^ @METRIC_INVALID_BEGIN_TO_RENDER_IMPRESSIONS@
    | MetricInvalidClicks
      -- ^ @METRIC_INVALID_CLICKS@
    | MetricInvalidImpressions
      -- ^ @METRIC_INVALID_IMPRESSIONS@
    | MetricInvalidTrackedAds
      -- ^ @METRIC_INVALID_TRACKED_ADS@
    | MetricMediaCostAdvertiserCurrencyPerStoreVisitAdxOnly
      -- ^ @METRIC_MEDIA_COST_ADVERTISER_CURRENCY_PER_STORE_VISIT_ADX_ONLY@
    | MetricMidpointAudio
      -- ^ @METRIC_MIDPOINT_AUDIO@
    | MetricOriginalAudienceFrequency
      -- ^ @METRIC_ORIGINAL_AUDIENCE_FREQUENCY@
    | MetricPausesAudio
      -- ^ @METRIC_PAUSES_AUDIO@
    | MetricPercentImpressionsWithPositiveCustomValue
      -- ^ @METRIC_PERCENT_IMPRESSIONS_WITH_POSITIVE_CUSTOM_VALUE@
    | MetricPlatformFeeRate
      -- ^ @METRIC_PLATFORM_FEE_RATE@
    | MetricPostClickConversionsCrossEnvironment
      -- ^ @METRIC_POST_CLICK_CONVERSIONS_CROSS_ENVIRONMENT@
    | MetricPostViewConversionsCrossEnvironment
      -- ^ @METRIC_POST_VIEW_CONVERSIONS_CROSS_ENVIRONMENT@
    | MetricPotentialImpressions
      -- ^ @METRIC_POTENTIAL_IMPRESSIONS@
    | MetricPotentialViews
      -- ^ @METRIC_POTENTIAL_VIEWS@
    | MetricPremiumFeeAdvertiserCurrency
      -- ^ @METRIC_PREMIUM_FEE_ADVERTISER_CURRENCY@
    | MetricProgrammaticGuaranteedImpressionsPassedDueToFrequency
      -- ^ @METRIC_PROGRAMMATIC_GUARANTEED_IMPRESSIONS_PASSED_DUE_TO_FREQUENCY@
    | MetricProgrammaticGuaranteedSavingsReInvestedDueToFrequencyAdvertiserCurrency
      -- ^ @METRIC_PROGRAMMATIC_GUARANTEED_SAVINGS_RE_INVESTED_DUE_TO_FREQUENCY_ADVERTISER_CURRENCY@
    | MetricRefundBillableCostAdvertiserCurrency
      -- ^ @METRIC_REFUND_BILLABLE_COST_ADVERTISER_CURRENCY@
    | MetricRefundMediaCostAdvertiserCurrency
      -- ^ @METRIC_REFUND_MEDIA_COST_ADVERTISER_CURRENCY@
    | MetricRefundPlatformFeeAdvertiserCurrency
      -- ^ @METRIC_REFUND_PLATFORM_FEE_ADVERTISER_CURRENCY@
    | MetricRevenueAdvertiserCurrencyPerStoreVisitAdxOnly
      -- ^ @METRIC_REVENUE_ADVERTISER_CURRENCY_PER_STORE_VISIT_ADX_ONLY@
    | MetricRichMediaEngagements
      -- ^ @METRIC_RICH_MEDIA_ENGAGEMENTS@
    | MetricStartsAudio
      -- ^ @METRIC_STARTS_AUDIO@
    | MetricStopsAudio
      -- ^ @METRIC_STOPS_AUDIO@
    | MetricStoreVisitsAdxOnly
      -- ^ @METRIC_STORE_VISITS_ADX_ONLY@
    | MetricStoreVisitConversions
      -- ^ @METRIC_STORE_VISIT_CONVERSIONS@
    | MetricThirdQuartileAudio
      -- ^ @METRIC_THIRD_QUARTILE_AUDIO@
    | MetricTimers
      -- ^ @METRIC_TIMERS@
    | MetricTotalAudioMediaCostEcpclAdvertiserCurrency
      -- ^ @METRIC_TOTAL_AUDIO_MEDIA_COST_ECPCL_ADVERTISER_CURRENCY@
    | MetricTotalConversionsCrossEnvironment
      -- ^ @METRIC_TOTAL_CONVERSIONS_CROSS_ENVIRONMENT@
    | MetricTotalDisplayTime
      -- ^ @METRIC_TOTAL_DISPLAY_TIME@
    | MetricTotalImpressionCustomValue
      -- ^ @METRIC_TOTAL_IMPRESSION_CUSTOM_VALUE@
    | MetricTotalInteractionTime
      -- ^ @METRIC_TOTAL_INTERACTION_TIME@
    | MetricTotalMediaCostAdvertiserCurrencyPerStoreVisitAdxOnly
      -- ^ @METRIC_TOTAL_MEDIA_COST_ADVERTISER_CURRENCY_PER_STORE_VISIT_ADX_ONLY@
    | MetricTotalUsers
      -- ^ @METRIC_TOTAL_USERS@
    | MetricTrackedAds
      -- ^ @METRIC_TRACKED_ADS@
    | MetricTrueviewGeneralInvalidTrafficGivtViews
      -- ^ @METRIC_TRUEVIEW_GENERAL_INVALID_TRAFFIC_GIVT_VIEWS@
    | MetricTrueviewInvalidViews
      -- ^ @METRIC_TRUEVIEW_INVALID_VIEWS@
    | MetricUniqueCookiesWithImpressions
      -- ^ @METRIC_UNIQUE_COOKIES_WITH_IMPRESSIONS@
    | MetricUniqueReachAverageImpressionFrequency
      -- ^ @METRIC_UNIQUE_REACH_AVERAGE_IMPRESSION_FREQUENCY@
    | MetricUniqueReachClickReach
      -- ^ @METRIC_UNIQUE_REACH_CLICK_REACH@
    | MetricUniqueReachImpressionReach
      -- ^ @METRIC_UNIQUE_REACH_IMPRESSION_REACH@
    | MetricUniqueReachTotalReach
      -- ^ @METRIC_UNIQUE_REACH_TOTAL_REACH@
    | MetricVerifiableImpressions
      -- ^ @METRIC_VERIFIABLE_IMPRESSIONS@
    | MetricVideoClientCostEcpcvAdvertiserCurrency
      -- ^ @METRIC_VIDEO_CLIENT_COST_ECPCV_ADVERTISER_CURRENCY@
    | MetricWatchTime
      -- ^ @METRIC_WATCH_TIME@
    | MetricLastTouchTotalConversions
      -- ^ @METRIC_LAST_TOUCH_TOTAL_CONVERSIONS@
    | MetricLastTouchClickThroughConversions
      -- ^ @METRIC_LAST_TOUCH_CLICK_THROUGH_CONVERSIONS@
    | MetricLastTouchViewThroughConversions
      -- ^ @METRIC_LAST_TOUCH_VIEW_THROUGH_CONVERSIONS@
    | MetricTotalPaths
      -- ^ @METRIC_TOTAL_PATHS@
    | MetricTotalExposures
      -- ^ @METRIC_TOTAL_EXPOSURES@
    | MetricPathConversionRate
      -- ^ @METRIC_PATH_CONVERSION_RATE@
    | MetricConvertingPaths
      -- ^ @METRIC_CONVERTING_PATHS@
    | MetricActivityRevenue
      -- ^ @METRIC_ACTIVITY_REVENUE@
    | MetricPercentInvalidImpressionsPreBid
      -- ^ @METRIC_PERCENT_INVALID_IMPRESSIONS_PREBID@
    | MetricGrpCorrectedImpressions
      -- ^ @METRIC_GRP_CORRECTED_IMPRESSIONS@
    | MetricDemoCorrectedClicks
      -- ^ @METRIC_DEMO_CORRECTED_CLICKS@
    | MetricVirtualPeopleImpressionReachByDemo
      -- ^ @METRIC_VIRTUAL_PEOPLE_IMPRESSION_REACH_BY_DEMO@
    | MetricVirtualPeopleClickReachByDemo
      -- ^ @METRIC_VIRTUAL_PEOPLE_CLICK_REACH_BY_DEMO@
    | MetricVirtualPeopleAverageImpressionFrequencyByDemo
      -- ^ @METRIC_VIRTUAL_PEOPLE_AVERAGE_IMPRESSION_FREQUENCY_BY_DEMO@
    | MetricDemoComPositionImpression
      -- ^ @METRIC_DEMO_COMPOSITION_IMPRESSION@
    | MetricVirtualPeopleImpressionReachSharePercent
      -- ^ @METRIC_VIRTUAL_PEOPLE_IMPRESSION_REACH_SHARE_PERCENT@
    | MetricDemoPopulation
      -- ^ @METRIC_DEMO_POPULATION@
    | MetricVirtualPeopleImpressionReachPercent
      -- ^ @METRIC_VIRTUAL_PEOPLE_IMPRESSION_REACH_PERCENT@
    | MetricTargetRatingPoints
      -- ^ @METRIC_TARGET_RATING_POINTS@
    | MetricProvisionalImpressions
      -- ^ @METRIC_PROVISIONAL_IMPRESSIONS@
    | MetricVendorBlockedAds
      -- ^ @METRIC_VENDOR_BLOCKED_ADS@
    | MetricGrpCorrectedViewableImpressions
      -- ^ @METRIC_GRP_CORRECTED_VIEWABLE_IMPRESSIONS@
    | MetricGrpCorrectedViewableImpressionsSharePercent
      -- ^ @METRIC_GRP_CORRECTED_VIEWABLE_IMPRESSIONS_SHARE_PERCENT@
    | MetricViewableGrossRatingPoints
      -- ^ @METRIC_VIEWABLE_GROSS_RATING_POINTS@
    | MetricVirtualPeopleAverageViewableImpressionFrequencyByDemo
      -- ^ @METRIC_VIRTUAL_PEOPLE_AVERAGE_VIEWABLE_IMPRESSION_FREQUENCY_BY_DEMO@
    | MetricVirtualPeopleViewableImpressionReachByDemo
      -- ^ @METRIC_VIRTUAL_PEOPLE_VIEWABLE_IMPRESSION_REACH_BY_DEMO@
    | MetricVirtualPeopleViewableImpressionReachPercent
      -- ^ @METRIC_VIRTUAL_PEOPLE_VIEWABLE_IMPRESSION_REACH_PERCENT@
    | MetricVirtualPeopleViewableImpressionReachSharePercent
      -- ^ @METRIC_VIRTUAL_PEOPLE_VIEWABLE_IMPRESSION_REACH_SHARE_PERCENT@
    | MetricEngagementRate
      -- ^ @METRIC_ENGAGEMENT_RATE@
    | MetricCM360PostViewRevenue
      -- ^ @METRIC_CM360_POST_VIEW_REVENUE@
    | MetricCM360PostClickRevenue
      -- ^ @METRIC_CM360_POST_CLICK_REVENUE@
    | MetricCM360PostClickRevenueCrossEnvironment
      -- ^ @METRIC_CM360_POST_CLICK_REVENUE_CROSS_ENVIRONMENT@
    | MetricCM360PostViewRevenueCrossEnvironment
      -- ^ @METRIC_CM360_POST_VIEW_REVENUE_CROSS_ENVIRONMENT@
    | MetricPercentageFromCurrentIoGoal
      -- ^ @METRIC_PERCENTAGE_FROM_CURRENT_IO_GOAL@
    | MetricDuplicateFloodlightImpressions
      -- ^ @METRIC_DUPLICATE_FLOODLIGHT_IMPRESSIONS@
    | MetricCookieConsentedFloodlightImpressions
      -- ^ @METRIC_COOKIE_CONSENTED_FLOODLIGHT_IMPRESSIONS@
    | MetricCookieUnconsentedFloodlightImpressions
      -- ^ @METRIC_COOKIE_UNCONSENTED_FLOODLIGHT_IMPRESSIONS@
    | MetricTrackingUnconsentedClicks
      -- ^ @METRIC_TRACKING_UNCONSENTED_CLICKS@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ParametersMetricsItem

instance FromHttpApiData ParametersMetricsItem where
    parseQueryParam = \case
        "METRIC_UNKNOWN" -> Right MetricUnknown
        "METRIC_IMPRESSIONS" -> Right MetricImpressions
        "METRIC_CLICKS" -> Right MetricClicks
        "METRIC_LAST_IMPRESSIONS" -> Right MetricLastImpressions
        "METRIC_LAST_CLICKS" -> Right MetricLastClicks
        "METRIC_TOTAL_CONVERSIONS" -> Right MetricTotalConversions
        "METRIC_MEDIA_COST_ADVERTISER" -> Right MetricMediaCostAdvertiser
        "METRIC_MEDIA_COST_USD" -> Right MetricMediaCostUsd
        "METRIC_MEDIA_COST_PARTNER" -> Right MetricMediaCostPartner
        "METRIC_DATA_COST_ADVERTISER" -> Right MetricDataCostAdvertiser
        "METRIC_DATA_COST_USD" -> Right MetricDataCostUsd
        "METRIC_DATA_COST_PARTNER" -> Right MetricDataCostPartner
        "METRIC_CPM_FEE1_ADVERTISER" -> Right MetricCpmFEE1Advertiser
        "METRIC_CPM_FEE1_USD" -> Right MetricCpmFEE1Usd
        "METRIC_CPM_FEE1_PARTNER" -> Right MetricCpmFEE1Partner
        "METRIC_CPM_FEE2_ADVERTISER" -> Right MetricCpmFEE2Advertiser
        "METRIC_CPM_FEE2_USD" -> Right MetricCpmFEE2Usd
        "METRIC_CPM_FEE2_PARTNER" -> Right MetricCpmFEE2Partner
        "METRIC_MEDIA_FEE1_ADVERTISER" -> Right MetricMediaFEE1Advertiser
        "METRIC_MEDIA_FEE1_USD" -> Right MetricMediaFEE1Usd
        "METRIC_MEDIA_FEE1_PARTNER" -> Right MetricMediaFEE1Partner
        "METRIC_MEDIA_FEE2_ADVERTISER" -> Right MetricMediaFEE2Advertiser
        "METRIC_MEDIA_FEE2_USD" -> Right MetricMediaFEE2Usd
        "METRIC_MEDIA_FEE2_PARTNER" -> Right MetricMediaFEE2Partner
        "METRIC_REVENUE_ADVERTISER" -> Right MetricRevenueAdvertiser
        "METRIC_REVENUE_USD" -> Right MetricRevenueUsd
        "METRIC_REVENUE_PARTNER" -> Right MetricRevenuePartner
        "METRIC_PROFIT_ADVERTISER" -> Right MetricProfitAdvertiser
        "METRIC_PROFIT_USD" -> Right MetricProfitUsd
        "METRIC_PROFIT_PARTNER" -> Right MetricProfitPartner
        "METRIC_PROFIT_MARGIN" -> Right MetricProfitMargin
        "METRIC_TOTAL_MEDIA_COST_USD" -> Right MetricTotalMediaCostUsd
        "METRIC_TOTAL_MEDIA_COST_PARTNER" -> Right MetricTotalMediaCostPartner
        "METRIC_TOTAL_MEDIA_COST_ADVERTISER" -> Right MetricTotalMediaCostAdvertiser
        "METRIC_BILLABLE_COST_USD" -> Right MetricBillableCostUsd
        "METRIC_BILLABLE_COST_PARTNER" -> Right MetricBillableCostPartner
        "METRIC_BILLABLE_COST_ADVERTISER" -> Right MetricBillableCostAdvertiser
        "METRIC_PLATFORM_FEE_USD" -> Right MetricPlatformFeeUsd
        "METRIC_PLATFORM_FEE_PARTNER" -> Right MetricPlatformFeePartner
        "METRIC_PLATFORM_FEE_ADVERTISER" -> Right MetricPlatformFeeAdvertiser
        "METRIC_VIDEO_COMPLETION_RATE" -> Right MetricVideoCompletionRate
        "METRIC_PROFIT_ECPM_ADVERTISER" -> Right MetricProfitEcpmAdvertiser
        "METRIC_PROFIT_ECPM_USD" -> Right MetricProfitEcpmUsd
        "METRIC_PROFIT_ECPM_PARTNER" -> Right MetricProfitEcpmPartner
        "METRIC_REVENUE_ECPM_ADVERTISER" -> Right MetricRevenueEcpmAdvertiser
        "METRIC_REVENUE_ECPM_USD" -> Right MetricRevenueEcpmUsd
        "METRIC_REVENUE_ECPM_PARTNER" -> Right MetricRevenueEcpmPartner
        "METRIC_REVENUE_ECPC_ADVERTISER" -> Right MetricRevenueEcpcAdvertiser
        "METRIC_REVENUE_ECPC_USD" -> Right MetricRevenueEcpcUsd
        "METRIC_REVENUE_ECPC_PARTNER" -> Right MetricRevenueEcpcPartner
        "METRIC_REVENUE_ECPA_ADVERTISER" -> Right MetricRevenueEcpaAdvertiser
        "METRIC_REVENUE_ECPA_USD" -> Right MetricRevenueEcpaUsd
        "METRIC_REVENUE_ECPA_PARTNER" -> Right MetricRevenueEcpaPartner
        "METRIC_REVENUE_ECPAPV_ADVERTISER" -> Right MetricRevenueEcpapvAdvertiser
        "METRIC_REVENUE_ECPAPV_USD" -> Right MetricRevenueEcpapvUsd
        "METRIC_REVENUE_ECPAPV_PARTNER" -> Right MetricRevenueEcpapvPartner
        "METRIC_REVENUE_ECPAPC_ADVERTISER" -> Right MetricRevenueEcpapcAdvertiser
        "METRIC_REVENUE_ECPAPC_USD" -> Right MetricRevenueEcpapcUsd
        "METRIC_REVENUE_ECPAPC_PARTNER" -> Right MetricRevenueEcpapcPartner
        "METRIC_MEDIA_COST_ECPM_ADVERTISER" -> Right MetricMediaCostEcpmAdvertiser
        "METRIC_MEDIA_COST_ECPM_USD" -> Right MetricMediaCostEcpmUsd
        "METRIC_MEDIA_COST_ECPM_PARTNER" -> Right MetricMediaCostEcpmPartner
        "METRIC_MEDIA_COST_ECPC_ADVERTISER" -> Right MetricMediaCostEcpcAdvertiser
        "METRIC_MEDIA_COST_ECPC_USD" -> Right MetricMediaCostEcpcUsd
        "METRIC_MEDIA_COST_ECPC_PARTNER" -> Right MetricMediaCostEcpcPartner
        "METRIC_MEDIA_COST_ECPA_ADVERTISER" -> Right MetricMediaCostEcpaAdvertiser
        "METRIC_MEDIA_COST_ECPA_USD" -> Right MetricMediaCostEcpaUsd
        "METRIC_MEDIA_COST_ECPA_PARTNER" -> Right MetricMediaCostEcpaPartner
        "METRIC_MEDIA_COST_ECPAPV_ADVERTISER" -> Right MetricMediaCostEcpapvAdvertiser
        "METRIC_MEDIA_COST_ECPAPV_USD" -> Right MetricMediaCostEcpapvUsd
        "METRIC_MEDIA_COST_ECPAPV_PARTNER" -> Right MetricMediaCostEcpapvPartner
        "METRIC_MEDIA_COST_ECPAPC_ADVERTISER" -> Right MetricMediaCostEcpapcAdvertiser
        "METRIC_MEDIA_COST_ECPAPC_USD" -> Right MetricMediaCostEcpapcUsd
        "METRIC_MEDIA_COST_ECPAPC_PARTNER" -> Right MetricMediaCostEcpapcPartner
        "METRIC_TOTAL_MEDIA_COST_ECPM_ADVERTISER" -> Right MetricTotalMediaCostEcpmAdvertiser
        "METRIC_TOTAL_MEDIA_COST_ECPM_USD" -> Right MetricTotalMediaCostEcpmUsd
        "METRIC_TOTAL_MEDIA_COST_ECPM_PARTNER" -> Right MetricTotalMediaCostEcpmPartner
        "METRIC_TOTAL_MEDIA_COST_ECPC_ADVERTISER" -> Right MetricTotalMediaCostEcpcAdvertiser
        "METRIC_TOTAL_MEDIA_COST_ECPC_USD" -> Right MetricTotalMediaCostEcpcUsd
        "METRIC_TOTAL_MEDIA_COST_ECPC_PARTNER" -> Right MetricTotalMediaCostEcpcPartner
        "METRIC_TOTAL_MEDIA_COST_ECPA_ADVERTISER" -> Right MetricTotalMediaCostEcpaAdvertiser
        "METRIC_TOTAL_MEDIA_COST_ECPA_USD" -> Right MetricTotalMediaCostEcpaUsd
        "METRIC_TOTAL_MEDIA_COST_ECPA_PARTNER" -> Right MetricTotalMediaCostEcpaPartner
        "METRIC_TOTAL_MEDIA_COST_ECPAPV_ADVERTISER" -> Right MetricTotalMediaCostEcpapvAdvertiser
        "METRIC_TOTAL_MEDIA_COST_ECPAPV_USD" -> Right MetricTotalMediaCostEcpapvUsd
        "METRIC_TOTAL_MEDIA_COST_ECPAPV_PARTNER" -> Right MetricTotalMediaCostEcpapvPartner
        "METRIC_TOTAL_MEDIA_COST_ECPAPC_ADVERTISER" -> Right MetricTotalMediaCostEcpapcAdvertiser
        "METRIC_TOTAL_MEDIA_COST_ECPAPC_USD" -> Right MetricTotalMediaCostEcpapcUsd
        "METRIC_TOTAL_MEDIA_COST_ECPAPC_PARTNER" -> Right MetricTotalMediaCostEcpapcPartner
        "METRIC_RICH_MEDIA_VIDEO_PLAYS" -> Right MetricRichMediaVideoPlays
        "METRIC_RICH_MEDIA_VIDEO_COMPLETIONS" -> Right MetricRichMediaVideoCompletions
        "METRIC_RICH_MEDIA_VIDEO_PAUSES" -> Right MetricRichMediaVideoPauses
        "METRIC_RICH_MEDIA_VIDEO_MUTES" -> Right MetricRichMediaVideoMutes
        "METRIC_RICH_MEDIA_VIDEO_MIDPOINTS" -> Right MetricRichMediaVideoMidpoints
        "METRIC_RICH_MEDIA_VIDEO_FULL_SCREENS" -> Right MetricRichMediaVideoFullScreens
        "METRIC_RICH_MEDIA_VIDEO_FIRST_QUARTILE_COMPLETES" -> Right MetricRichMediaVideoFirstQuartileCompletes
        "METRIC_RICH_MEDIA_VIDEO_THIRD_QUARTILE_COMPLETES" -> Right MetricRichMediaVideoThirdQuartileCompletes
        "METRIC_CLICK_TO_POST_CLICK_CONVERSION_RATE" -> Right MetricClickToPostClickConversionRate
        "METRIC_IMPRESSIONS_TO_CONVERSION_RATE" -> Right MetricImpressionsToConversionRate
        "METRIC_CONVERSIONS_PER_MILLE" -> Right MetricConversionsPerMille
        "METRIC_CTR" -> Right MetricCtr
        "METRIC_BID_REQUESTS" -> Right MetricBidRequests
        "METRIC_UNIQUE_VISITORS_COOKIES" -> Right MetricUniqueVisitorsCookies
        "METRIC_REVENUE_ECPCV_ADVERTISER" -> Right MetricRevenueEcpcvAdvertiser
        "METRIC_REVENUE_ECPCV_USD" -> Right MetricRevenueEcpcvUsd
        "METRIC_REVENUE_ECPCV_PARTNER" -> Right MetricRevenueEcpcvPartner
        "METRIC_MEDIA_COST_ECPCV_ADVERTISER" -> Right MetricMediaCostEcpcvAdvertiser
        "METRIC_MEDIA_COST_ECPCV_USD" -> Right MetricMediaCostEcpcvUsd
        "METRIC_MEDIA_COST_ECPCV_PARTNER" -> Right MetricMediaCostEcpcvPartner
        "METRIC_TOTAL_MEDIA_COST_ECPCV_ADVERTISER" -> Right MetricTotalMediaCostEcpcvAdvertiser
        "METRIC_TOTAL_MEDIA_COST_ECPCV_USD" -> Right MetricTotalMediaCostEcpcvUsd
        "METRIC_TOTAL_MEDIA_COST_ECPCV_PARTNER" -> Right MetricTotalMediaCostEcpcvPartner
        "METRIC_RICH_MEDIA_VIDEO_SKIPS" -> Right MetricRichMediaVideoSkips
        "METRIC_FEE2_ADVERTISER" -> Right MetricFEE2Advertiser
        "METRIC_FEE2_USD" -> Right MetricFEE2Usd
        "METRIC_FEE2_PARTNER" -> Right MetricFEE2Partner
        "METRIC_FEE3_ADVERTISER" -> Right MetricFEE3Advertiser
        "METRIC_FEE3_USD" -> Right MetricFEE3Usd
        "METRIC_FEE3_PARTNER" -> Right MetricFEE3Partner
        "METRIC_FEE4_ADVERTISER" -> Right MetricFEE4Advertiser
        "METRIC_FEE4_USD" -> Right MetricFEE4Usd
        "METRIC_FEE4_PARTNER" -> Right MetricFEE4Partner
        "METRIC_FEE5_ADVERTISER" -> Right MetricFEE5Advertiser
        "METRIC_FEE5_USD" -> Right MetricFEE5Usd
        "METRIC_FEE5_PARTNER" -> Right MetricFEE5Partner
        "METRIC_FEE6_ADVERTISER" -> Right MetricFEE6Advertiser
        "METRIC_FEE6_USD" -> Right MetricFEE6Usd
        "METRIC_FEE6_PARTNER" -> Right MetricFEE6Partner
        "METRIC_FEE7_ADVERTISER" -> Right MetricFEE7Advertiser
        "METRIC_FEE7_USD" -> Right MetricFEE7Usd
        "METRIC_FEE7_PARTNER" -> Right MetricFEE7Partner
        "METRIC_FEE8_ADVERTISER" -> Right MetricFEE8Advertiser
        "METRIC_FEE8_USD" -> Right MetricFEE8Usd
        "METRIC_FEE8_PARTNER" -> Right MetricFEE8Partner
        "METRIC_FEE9_ADVERTISER" -> Right MetricFEE9Advertiser
        "METRIC_FEE9_USD" -> Right MetricFEE9Usd
        "METRIC_FEE9_PARTNER" -> Right MetricFEE9Partner
        "METRIC_FEE10_ADVERTISER" -> Right MetricFEE10Advertiser
        "METRIC_FEE10_USD" -> Right MetricFEE10Usd
        "METRIC_FEE10_PARTNER" -> Right MetricFEE10Partner
        "METRIC_FEE11_ADVERTISER" -> Right MetricFEE11Advertiser
        "METRIC_FEE11_USD" -> Right MetricFEE11Usd
        "METRIC_FEE11_PARTNER" -> Right MetricFEE11Partner
        "METRIC_FEE12_ADVERTISER" -> Right MetricFEE12Advertiser
        "METRIC_FEE12_USD" -> Right MetricFEE12Usd
        "METRIC_FEE12_PARTNER" -> Right MetricFEE12Partner
        "METRIC_FEE13_ADVERTISER" -> Right MetricFEE13Advertiser
        "METRIC_FEE13_USD" -> Right MetricFEE13Usd
        "METRIC_FEE13_PARTNER" -> Right MetricFEE13Partner
        "METRIC_FEE14_ADVERTISER" -> Right MetricFEE14Advertiser
        "METRIC_FEE14_USD" -> Right MetricFEE14Usd
        "METRIC_FEE14_PARTNER" -> Right MetricFEE14Partner
        "METRIC_FEE15_ADVERTISER" -> Right MetricFEE15Advertiser
        "METRIC_FEE15_USD" -> Right MetricFEE15Usd
        "METRIC_FEE15_PARTNER" -> Right MetricFEE15Partner
        "METRIC_CPM_FEE3_ADVERTISER" -> Right MetricCpmFEE3Advertiser
        "METRIC_CPM_FEE3_USD" -> Right MetricCpmFEE3Usd
        "METRIC_CPM_FEE3_PARTNER" -> Right MetricCpmFEE3Partner
        "METRIC_CPM_FEE4_ADVERTISER" -> Right MetricCpmFEE4Advertiser
        "METRIC_CPM_FEE4_USD" -> Right MetricCpmFEE4Usd
        "METRIC_CPM_FEE4_PARTNER" -> Right MetricCpmFEE4Partner
        "METRIC_CPM_FEE5_ADVERTISER" -> Right MetricCpmFEE5Advertiser
        "METRIC_CPM_FEE5_USD" -> Right MetricCpmFEE5Usd
        "METRIC_CPM_FEE5_PARTNER" -> Right MetricCpmFEE5Partner
        "METRIC_MEDIA_FEE3_ADVERTISER" -> Right MetricMediaFEE3Advertiser
        "METRIC_MEDIA_FEE3_USD" -> Right MetricMediaFEE3Usd
        "METRIC_MEDIA_FEE3_PARTNER" -> Right MetricMediaFEE3Partner
        "METRIC_MEDIA_FEE4_ADVERTISER" -> Right MetricMediaFEE4Advertiser
        "METRIC_MEDIA_FEE4_USD" -> Right MetricMediaFEE4Usd
        "METRIC_MEDIA_FEE4_PARTNER" -> Right MetricMediaFEE4Partner
        "METRIC_MEDIA_FEE5_ADVERTISER" -> Right MetricMediaFEE5Advertiser
        "METRIC_MEDIA_FEE5_USD" -> Right MetricMediaFEE5Usd
        "METRIC_MEDIA_FEE5_PARTNER" -> Right MetricMediaFEE5Partner
        "METRIC_VIDEO_COMPANION_IMPRESSIONS" -> Right MetricVideoCompanionImpressions
        "METRIC_VIDEO_COMPANION_CLICKS" -> Right MetricVideoCompanionClicks
        "METRIC_FEE16_ADVERTISER" -> Right MetricFEE16Advertiser
        "METRIC_FEE16_USD" -> Right MetricFEE16Usd
        "METRIC_FEE16_PARTNER" -> Right MetricFEE16Partner
        "METRIC_FEE17_ADVERTISER" -> Right MetricFEE17Advertiser
        "METRIC_FEE17_USD" -> Right MetricFEE17Usd
        "METRIC_FEE17_PARTNER" -> Right MetricFEE17Partner
        "METRIC_FEE18_ADVERTISER" -> Right MetricFEE18Advertiser
        "METRIC_FEE18_USD" -> Right MetricFEE18Usd
        "METRIC_FEE18_PARTNER" -> Right MetricFEE18Partner
        "METRIC_TRUEVIEW_VIEWS" -> Right MetricTrueviewViews
        "METRIC_TRUEVIEW_UNIQUE_VIEWERS" -> Right MetricTrueviewUniqueViewers
        "METRIC_TRUEVIEW_EARNED_VIEWS" -> Right MetricTrueviewEarnedViews
        "METRIC_TRUEVIEW_EARNED_SUBSCRIBERS" -> Right MetricTrueviewEarnedSubscribers
        "METRIC_TRUEVIEW_EARNED_PLAYLIST_ADDITIONS" -> Right MetricTrueviewEarnedPlayListAdditions
        "METRIC_TRUEVIEW_EARNED_LIKES" -> Right MetricTrueviewEarnedLikes
        "METRIC_TRUEVIEW_EARNED_SHARES" -> Right MetricTrueviewEarnedShares
        "METRIC_TRUEVIEW_IMPRESSION_SHARE" -> Right MetricTrueviewImpressionShare
        "METRIC_TRUEVIEW_LOST_IS_BUDGET" -> Right MetricTrueviewLostIsBudget
        "METRIC_TRUEVIEW_LOST_IS_RANK" -> Right MetricTrueviewLostIsRank
        "METRIC_TRUEVIEW_VIEW_THROUGH_CONVERSION" -> Right MetricTrueviewViewThroughConversion
        "METRIC_TRUEVIEW_CONVERSION_MANY_PER_VIEW" -> Right MetricTrueviewConversionManyPerView
        "METRIC_TRUEVIEW_VIEW_RATE" -> Right MetricTrueviewViewRate
        "METRIC_TRUEVIEW_CONVERSION_RATE_ONE_PER_VIEW" -> Right MetricTrueviewConversionRateOnePerView
        "METRIC_TRUEVIEW_CPV_ADVERTISER" -> Right MetricTrueviewCpvAdvertiser
        "METRIC_TRUEVIEW_CPV_USD" -> Right MetricTrueviewCpvUsd
        "METRIC_TRUEVIEW_CPV_PARTNER" -> Right MetricTrueviewCpvPartner
        "METRIC_FEE19_ADVERTISER" -> Right MetricFEE19Advertiser
        "METRIC_FEE19_USD" -> Right MetricFEE19Usd
        "METRIC_FEE19_PARTNER" -> Right MetricFEE19Partner
        "METRIC_TEA_TRUEVIEW_IMPRESSIONS" -> Right MetricTeaTrueviewImpressions
        "METRIC_TEA_TRUEVIEW_UNIQUE_COOKIES" -> Right MetricTeaTrueviewUniqueCookies
        "METRIC_FEE20_ADVERTISER" -> Right MetricFEE20Advertiser
        "METRIC_FEE20_USD" -> Right MetricFEE20Usd
        "METRIC_FEE20_PARTNER" -> Right MetricFEE20Partner
        "METRIC_FEE21_ADVERTISER" -> Right MetricFEE21Advertiser
        "METRIC_FEE21_USD" -> Right MetricFEE21Usd
        "METRIC_FEE21_PARTNER" -> Right MetricFEE21Partner
        "METRIC_FEE22_ADVERTISER" -> Right MetricFEE22Advertiser
        "METRIC_FEE22_USD" -> Right MetricFEE22Usd
        "METRIC_FEE22_PARTNER" -> Right MetricFEE22Partner
        "METRIC_TRUEVIEW_TOTAL_CONVERSION_VALUES_ADVERTISER" -> Right MetricTrueviewTotalConversionValuesAdvertiser
        "METRIC_TRUEVIEW_TOTAL_CONVERSION_VALUES_USD" -> Right MetricTrueviewTotalConversionValuesUsd
        "METRIC_TRUEVIEW_TOTAL_CONVERSION_VALUES_PARTNER" -> Right MetricTrueviewTotalConversionValuesPartner
        "METRIC_TRUEVIEW_CONVERSION_COST_MANY_PER_VIEW_ADVERTISER" -> Right MetricTrueviewConversionCostManyPerViewAdvertiser
        "METRIC_TRUEVIEW_CONVERSION_COST_MANY_PER_VIEW_USD" -> Right MetricTrueviewConversionCostManyPerViewUsd
        "METRIC_TRUEVIEW_CONVERSION_COST_MANY_PER_VIEW_PARTNER" -> Right MetricTrueviewConversionCostManyPerViewPartner
        "METRIC_PROFIT_VIEWABLE_ECPM_ADVERTISER" -> Right MetricProfitViewableEcpmAdvertiser
        "METRIC_PROFIT_VIEWABLE_ECPM_USD" -> Right MetricProfitViewableEcpmUsd
        "METRIC_PROFIT_VIEWABLE_ECPM_PARTNER" -> Right MetricProfitViewableEcpmPartner
        "METRIC_REVENUE_VIEWABLE_ECPM_ADVERTISER" -> Right MetricRevenueViewableEcpmAdvertiser
        "METRIC_REVENUE_VIEWABLE_ECPM_USD" -> Right MetricRevenueViewableEcpmUsd
        "METRIC_REVENUE_VIEWABLE_ECPM_PARTNER" -> Right MetricRevenueViewableEcpmPartner
        "METRIC_MEDIA_COST_VIEWABLE_ECPM_ADVERTISER" -> Right MetricMediaCostViewableEcpmAdvertiser
        "METRIC_MEDIA_COST_VIEWABLE_ECPM_USD" -> Right MetricMediaCostViewableEcpmUsd
        "METRIC_MEDIA_COST_VIEWABLE_ECPM_PARTNER" -> Right MetricMediaCostViewableEcpmPartner
        "METRIC_TOTAL_MEDIA_COST_VIEWABLE_ECPM_ADVERTISER" -> Right MetricTotalMediaCostViewableEcpmAdvertiser
        "METRIC_TOTAL_MEDIA_COST_VIEWABLE_ECPM_USD" -> Right MetricTotalMediaCostViewableEcpmUsd
        "METRIC_TOTAL_MEDIA_COST_VIEWABLE_ECPM_PARTNER" -> Right MetricTotalMediaCostViewableEcpmPartner
        "METRIC_TRUEVIEW_ENGAGEMENTS" -> Right MetricTrueviewEngagements
        "METRIC_TRUEVIEW_ENGAGEMENT_RATE" -> Right MetricTrueviewEngagementRate
        "METRIC_TRUEVIEW_AVERAGE_CPE_ADVERTISER" -> Right MetricTrueviewAverageCpeAdvertiser
        "METRIC_TRUEVIEW_AVERAGE_CPE_USD" -> Right MetricTrueviewAverageCpeUsd
        "METRIC_TRUEVIEW_AVERAGE_CPE_PARTNER" -> Right MetricTrueviewAverageCpePartner
        "METRIC_ACTIVE_VIEW_VIEWABLE_IMPRESSIONS" -> Right MetricActiveViewViewableImpressions
        "METRIC_ACTIVE_VIEW_ELIGIBLE_IMPRESSIONS" -> Right MetricActiveViewEligibleImpressions
        "METRIC_ACTIVE_VIEW_MEASURABLE_IMPRESSIONS" -> Right MetricActiveViewMeasurableImpressions
        "METRIC_ACTIVE_VIEW_PCT_MEASURABLE_IMPRESSIONS" -> Right MetricActiveViewPctMeasurableImpressions
        "METRIC_ACTIVE_VIEW_PCT_VIEWABLE_IMPRESSIONS" -> Right MetricActiveViewPctViewableImpressions
        "METRIC_ACTIVE_VIEW_AVERAGE_VIEWABLE_TIME" -> Right MetricActiveViewAverageViewableTime
        "METRIC_ACTIVE_VIEW_UNMEASURABLE_IMPRESSIONS" -> Right MetricActiveViewUnmeasurableImpressions
        "METRIC_ACTIVE_VIEW_UNVIEWABLE_IMPRESSIONS" -> Right MetricActiveViewUnviewableImpressions
        "METRIC_ACTIVE_VIEW_DISTRIBUTION_UNMEASURABLE" -> Right MetricActiveViewDistributionUnmeasurable
        "METRIC_ACTIVE_VIEW_DISTRIBUTION_UNVIEWABLE" -> Right MetricActiveViewDistributionUnviewable
        "METRIC_ACTIVE_VIEW_DISTRIBUTION_VIEWABLE" -> Right MetricActiveViewDistributionViewable
        "METRIC_ACTIVE_VIEW_PERCENT_VIEWABLE_FOR_TIME_THRESHOLD" -> Right MetricActiveViewPercentViewableForTimeThreshold
        "METRIC_ACTIVE_VIEW_VIEWABLE_FOR_TIME_THRESHOLD" -> Right MetricActiveViewViewableForTimeThreshold
        "METRIC_ACTIVE_VIEW_PERCENT_VISIBLE_AT_START" -> Right MetricActiveViewPercentVisibleAtStart
        "METRIC_ACTIVE_VIEW_PERCENT_VISIBLE_FIRST_QUAR" -> Right MetricActiveViewPercentVisibleFirstQuar
        "METRIC_ACTIVE_VIEW_PERCENT_VISIBLE_SECOND_QUAR" -> Right MetricActiveViewPercentVisibleSecondQuar
        "METRIC_ACTIVE_VIEW_PERCENT_VISIBLE_THIRD_QUAR" -> Right MetricActiveViewPercentVisibleThirdQuar
        "METRIC_ACTIVE_VIEW_PERCENT_VISIBLE_ON_COMPLETE" -> Right MetricActiveViewPercentVisibleOnComplete
        "METRIC_ACTIVE_VIEW_PERCENT_AUDIBLE_VISIBLE_AT_START" -> Right MetricActiveViewPercentAudibleVisibleAtStart
        "METRIC_ACTIVE_VIEW_PERCENT_AUDIBLE_VISIBLE_FIRST_QUAR" -> Right MetricActiveViewPercentAudibleVisibleFirstQuar
        "METRIC_ACTIVE_VIEW_PERCENT_AUDIBLE_VISIBLE_SECOND_QUAR" -> Right MetricActiveViewPercentAudibleVisibleSecondQuar
        "METRIC_ACTIVE_VIEW_PERCENT_AUDIBLE_VISIBLE_THIRD_QUAR" -> Right MetricActiveViewPercentAudibleVisibleThirdQuar
        "METRIC_ACTIVE_VIEW_PERCENT_AUDIBLE_VISIBLE_ON_COMPLETE" -> Right MetricActiveViewPercentAudibleVisibleOnComplete
        "METRIC_ACTIVE_VIEW_AUDIBLE_VISIBLE_ON_COMPLETE_IMPRESSIONS" -> Right MetricActiveViewAudibleVisibleOnCompleteImpressions
        "METRIC_VIEWABLE_BID_REQUESTS" -> Right MetricViewableBidRequests
        "METRIC_COOKIE_REACH_IMPRESSION_REACH" -> Right MetricCookieReachImpressionReach
        "METRIC_COOKIE_REACH_AVERAGE_IMPRESSION_FREQUENCY" -> Right MetricCookieReachAverageImpressionFrequency
        "METRIC_DBM_ENGAGEMENT_RATE" -> Right MetricDBmEngagementRate
        "METRIC_RICH_MEDIA_SCROLLS" -> Right MetricRichMediaScrolls
        "METRIC_CM_POST_VIEW_REVENUE" -> Right MetricCmPostViewRevenue
        "METRIC_CM_POST_CLICK_REVENUE" -> Right MetricCmPostClickRevenue
        "METRIC_FLOODLIGHT_IMPRESSIONS" -> Right MetricFloodlightImpressions
        "METRIC_BILLABLE_IMPRESSIONS" -> Right MetricBillableImpressions
        "METRIC_NIELSEN_AVERAGE_FREQUENCY" -> Right MetricNielsenAverageFrequency
        "METRIC_NIELSEN_IMPRESSIONS" -> Right MetricNielsenImpressions
        "METRIC_NIELSEN_UNIQUE_AUDIENCE" -> Right MetricNielsenUniqueAudience
        "METRIC_NIELSEN_GRP" -> Right MetricNielsenGrp
        "METRIC_NIELSEN_IMPRESSION_INDEX" -> Right MetricNielsenImpressionIndex
        "METRIC_NIELSEN_IMPRESSIONS_SHARE" -> Right MetricNielsenImpressionsShare
        "METRIC_NIELSEN_POPULATION" -> Right MetricNielsenPopulation
        "METRIC_NIELSEN_POPULATION_REACH" -> Right MetricNielsenPopulationReach
        "METRIC_NIELSEN_POPULATION_SHARE" -> Right MetricNielsenPopulationShare
        "METRIC_NIELSEN_REACH_INDEX" -> Right MetricNielsenReachIndex
        "METRIC_NIELSEN_REACH_SHARE" -> Right MetricNielsenReachShare
        "METRIC_ACTIVE_VIEW_AUDIBLE_FULLY_ON_SCREEN_HALF_OF_DURATION_IMPRESSIONS" -> Right MetricActiveViewAudibleFullyOnScreenHalfOfDurationImpressions
        "METRIC_ACTIVE_VIEW_AUDIBLE_FULLY_ON_SCREEN_HALF_OF_DURATION_MEASURABLE_IMPRESSIONS" -> Right MetricActiveViewAudibleFullyOnScreenHalfOfDurationMeasurableImpressions
        "METRIC_ACTIVE_VIEW_AUDIBLE_FULLY_ON_SCREEN_HALF_OF_DURATION_RATE" -> Right MetricActiveViewAudibleFullyOnScreenHalfOfDurationRate
        "METRIC_ACTIVE_VIEW_AUDIBLE_FULLY_ON_SCREEN_HALF_OF_DURATION_TRUEVIEW_IMPRESSIONS" -> Right MetricActiveViewAudibleFullyOnScreenHalfOfDurationTrueviewImpressions
        "METRIC_ACTIVE_VIEW_AUDIBLE_FULLY_ON_SCREEN_HALF_OF_DURATION_TRUEVIEW_MEASURABLE_IMPRESSIONS" -> Right MetricActiveViewAudibleFullyOnScreenHalfOfDurationTrueviewMeasurableImpressions
        "METRIC_ACTIVE_VIEW_AUDIBLE_FULLY_ON_SCREEN_HALF_OF_DURATION_TRUEVIEW_RATE" -> Right MetricActiveViewAudibleFullyOnScreenHalfOfDurationTrueviewRate
        "METRIC_ACTIVE_VIEW_CUSTOM_METRIC_MEASURABLE_IMPRESSIONS" -> Right MetricActiveViewCustomMetricMeasurableImpressions
        "METRIC_ACTIVE_VIEW_CUSTOM_METRIC_VIEWABLE_IMPRESSIONS" -> Right MetricActiveViewCustomMetricViewableImpressions
        "METRIC_ACTIVE_VIEW_CUSTOM_METRIC_VIEWABLE_RATE" -> Right MetricActiveViewCustomMetricViewableRate
        "METRIC_ACTIVE_VIEW_PERCENT_AUDIBLE_IMPRESSIONS" -> Right MetricActiveViewPercentAudibleImpressions
        "METRIC_ACTIVE_VIEW_PERCENT_FULLY_ON_SCREEN_2_SEC" -> Right MetricActiveViewPercentFullyOnScreen2Sec
        "METRIC_ACTIVE_VIEW_PERCENT_FULL_SCREEN" -> Right MetricActiveViewPercentFullScreen
        "METRIC_ACTIVE_VIEW_PERCENT_IN_BACKGROUND" -> Right MetricActiveViewPercentInBackgRound
        "METRIC_ACTIVE_VIEW_PERCENT_OF_AD_PLAYED" -> Right MetricActiveViewPercentOfAdPlayed
        "METRIC_ACTIVE_VIEW_PERCENT_OF_COMPLETED_IMPRESSIONS_AUDIBLE_AND_VISIBLE" -> Right MetricActiveViewPercentOfCompletedImpressionsAudibleAndVisible
        "METRIC_ACTIVE_VIEW_PERCENT_OF_COMPLETED_IMPRESSIONS_VISIBLE" -> Right MetricActiveViewPercentOfCompletedImpressionsVisible
        "METRIC_ACTIVE_VIEW_PERCENT_OF_FIRST_QUARTILE_IMPRESSIONS_AUDIBLE_AND_VISIBLE" -> Right MetricActiveViewPercentOfFirstQuartileImpressionsAudibleAndVisible
        "METRIC_ACTIVE_VIEW_PERCENT_OF_FIRST_QUARTILE_IMPRESSIONS_VISIBLE" -> Right MetricActiveViewPercentOfFirstQuartileImpressionsVisible
        "METRIC_ACTIVE_VIEW_PERCENT_OF_MIDPOINT_IMPRESSIONS_AUDIBLE_AND_VISIBLE" -> Right MetricActiveViewPercentOfMidpointImpressionsAudibleAndVisible
        "METRIC_ACTIVE_VIEW_PERCENT_OF_MIDPOINT_IMPRESSIONS_VISIBLE" -> Right MetricActiveViewPercentOfMidpointImpressionsVisible
        "METRIC_ACTIVE_VIEW_PERCENT_OF_THIRD_QUARTILE_IMPRESSIONS_AUDIBLE_AND_VISIBLE" -> Right MetricActiveViewPercentOfThirdQuartileImpressionsAudibleAndVisible
        "METRIC_ACTIVE_VIEW_PERCENT_OF_THIRD_QUARTILE_IMPRESSIONS_VISIBLE" -> Right MetricActiveViewPercentOfThirdQuartileImpressionsVisible
        "METRIC_ACTIVE_VIEW_PERCENT_PLAY_TIME_AUDIBLE" -> Right MetricActiveViewPercentPlayTimeAudible
        "METRIC_ACTIVE_VIEW_PERCENT_PLAY_TIME_AUDIBLE_AND_VISIBLE" -> Right MetricActiveViewPercentPlayTimeAudibleAndVisible
        "METRIC_ACTIVE_VIEW_PERCENT_PLAY_TIME_VISIBLE" -> Right MetricActiveViewPercentPlayTimeVisible
        "METRIC_ADAPTED_AUDIENCE_FREQUENCY" -> Right MetricAdaptedAudienceFrequency
        "METRIC_ADLINGO_FEE_ADVERTISER_CURRENCY" -> Right MetricAdlingoFeeAdvertiserCurrency
        "METRIC_AUDIO_CLIENT_COST_ECPCL_ADVERTISER_CURRENCY" -> Right MetricAudioClientCostEcpclAdvertiserCurrency
        "METRIC_AUDIO_MEDIA_COST_ECPCL_ADVERTISER_CURRENCY" -> Right MetricAudioMediaCostEcpclAdvertiserCurrency
        "METRIC_AUDIO_MUTES_AUDIO" -> Right MetricAudioMutesAudio
        "METRIC_AUDIO_REVENUE_ECPCL_ADVERTISER_CURRENCY" -> Right MetricAudioRevenueEcpclAdvertiserCurrency
        "METRIC_AUDIO_UNMUTES_AUDIO" -> Right MetricAudioUnmutesAudio
        "METRIC_AUDIO_UNMUTES_VIDEO" -> Right MetricAudioUnmutesVideo
        "METRIC_AVERAGE_DISPLAY_TIME" -> Right MetricAverageDisplayTime
        "METRIC_AVERAGE_IMPRESSION_FREQUENCY_PER_USER" -> Right MetricAverageImpressionFrequencyPerUser
        "METRIC_AVERAGE_INTERACTION_TIME" -> Right MetricAverageInteractionTime
        "METRIC_AVERAGE_WATCH_TIME_PER_IMPRESSION" -> Right MetricAverageWatchTimePerImpression
        "METRIC_BEGIN_TO_RENDER_ELIGIBLE_IMPRESSIONS" -> Right MetricBeginToRenderEligibleImpressions
        "METRIC_BEGIN_TO_RENDER_IMPRESSIONS" -> Right MetricBeginToRenderImpressions
        "METRIC_BENCHMARK_FREQUENCY" -> Right MetricBenchmarkFrequency
        "METRIC_BRAND_LIFT_ABSOLUTE_BRAND_LIFT" -> Right MetricBrandLiftAbsoluteBrandLift
        "METRIC_BRAND_LIFT_ALL_SURVEY_RESPONSES" -> Right MetricBrandLiftAllSurveyResponses
        "METRIC_BRAND_LIFT_BASELINE_POSITIVE_RESPONSE_RATE" -> Right MetricBrandLiftBaselinePositiveResponseRate
        "METRIC_BRAND_LIFT_BASELINE_SURVEY_RESPONSES" -> Right MetricBrandLiftBaselineSurveyResponses
        "METRIC_BRAND_LIFT_COST_PER_LIFTED_USER" -> Right MetricBrandLiftCostPerLiftedUser
        "METRIC_BRAND_LIFT_EXPOSED_SURVEY_RESPONSES" -> Right MetricBrandLiftExposedSurveyResponses
        "METRIC_BRAND_LIFT_HEADROOM_BRAND_LIFT" -> Right MetricBrandLiftHeadroomBrandLift
        "METRIC_BRAND_LIFT_RELATIVE_BRAND_LIFT" -> Right MetricBrandLiftRelativeBrandLift
        "METRIC_BRAND_LIFT_USERS" -> Right MetricBrandLiftUsers
        "METRIC_CARD_CLICKS" -> Right MetricCardClicks
        "METRIC_CLIENT_COST_ADVERTISER_CURRENCY" -> Right MetricClientCostAdvertiserCurrency
        "METRIC_CLIENT_COST_ECPA_ADVERTISER_CURRENCY" -> Right MetricClientCostEcpaAdvertiserCurrency
        "METRIC_CLIENT_COST_ECPA_PC_ADVERTISER_CURRENCY" -> Right MetricClientCostEcpaPcAdvertiserCurrency
        "METRIC_CLIENT_COST_ECPA_PV_ADVERTISER_CURRENCY" -> Right MetricClientCostEcpaPvAdvertiserCurrency
        "METRIC_CLIENT_COST_ECPC_ADVERTISER_CURRENCY" -> Right MetricClientCostEcpcAdvertiserCurrency
        "METRIC_CLIENT_COST_ECPM_ADVERTISER_CURRENCY" -> Right MetricClientCostEcpmAdvertiserCurrency
        "METRIC_CLIENT_COST_VIEWABLE_ECPM_ADVERTISER_CURRENCY" -> Right MetricClientCostViewableEcpmAdvertiserCurrency
        "METRIC_CM_POST_CLICK_REVENUE_CROSS_ENVIRONMENT" -> Right MetricCmPostClickRevenueCrossEnvironment
        "METRIC_CM_POST_VIEW_REVENUE_CROSS_ENVIRONMENT" -> Right MetricCmPostViewRevenueCrossEnvironment
        "METRIC_COMPANION_CLICKS_AUDIO" -> Right MetricCompanionClicksAudio
        "METRIC_COMPANION_IMPRESSIONS_AUDIO" -> Right MetricCompanionImpressionsAudio
        "METRIC_COMPLETE_LISTENS_AUDIO" -> Right MetricCompleteListensAudio
        "METRIC_COMPLETION_RATE_AUDIO" -> Right MetricCompletionRateAudio
        "METRIC_COUNTERS" -> Right MetricCounters
        "METRIC_CUSTOM_FEE_1_ADVERTISER_CURRENCY" -> Right MetricCustomFee1AdvertiserCurrency
        "METRIC_CUSTOM_FEE_2_ADVERTISER_CURRENCY" -> Right MetricCustomFee2AdvertiserCurrency
        "METRIC_CUSTOM_FEE_3_ADVERTISER_CURRENCY" -> Right MetricCustomFee3AdvertiserCurrency
        "METRIC_CUSTOM_FEE_4_ADVERTISER_CURRENCY" -> Right MetricCustomFee4AdvertiserCurrency
        "METRIC_CUSTOM_FEE_5_ADVERTISER_CURRENCY" -> Right MetricCustomFee5AdvertiserCurrency
        "METRIC_CUSTOM_VALUE_PER_1000_IMPRESSIONS" -> Right MetricCustomValuePer1000Impressions
        "METRIC_ENGAGEMENTS" -> Right MetricEngagements
        "METRIC_ESTIMATED_CPM_FOR_IMPRESSIONS_WITH_CUSTOM_VALUE_ADVERTISER_CURRENCY" -> Right MetricEstimatedCpmForImpressionsWithCustomValueAdvertiserCurrency
        "METRIC_ESTIMATED_TOTAL_COST_FOR_IMPRESSIONS_WITH_CUSTOM_VALUE_ADVERTISER_CURRENCY" -> Right MetricEstimatedTotalCostForImpressionsWithCustomValueAdvertiserCurrency
        "METRIC_EXITS" -> Right MetricExits
        "METRIC_EXPANSIONS" -> Right MetricExpansions
        "METRIC_FIRST_QUARTILE_AUDIO" -> Right MetricFirstQuartileAudio
        "METRIC_GENERAL_INVALID_TRAFFIC_GIVT_IMPRESSIONS" -> Right MetricGeneralInvalidTrafficGivtImpressions
        "METRIC_GENERAL_INVALID_TRAFFIC_GIVT_TRACKED_ADS" -> Right MetricGeneralInvalidTrafficGivtTrackedAds
        "METRIC_GIVT_ACTIVE_VIEW_ELIGIBLE_IMPRESSIONS" -> Right MetricGivtActiveViewEligibleImpressions
        "METRIC_GIVT_ACTIVE_VIEW_MEASURABLE_IMPRESSIONS" -> Right MetricGivtActiveViewMeasurableImpressions
        "METRIC_GIVT_ACTIVE_VIEW_VIEWABLE_IMPRESSIONS" -> Right MetricGivtActiveViewViewableImpressions
        "METRIC_GIVT_BEGIN_TO_RENDER_IMPRESSIONS" -> Right MetricGivtBeginToRenderImpressions
        "METRIC_GIVT_CLICKS" -> Right MetricGivtClicks
        "METRIC_GMAIL_CONVERSIONS" -> Right MetricGmailConversions
        "METRIC_GMAIL_POST_CLICK_CONVERSIONS" -> Right MetricGmailPostClickConversions
        "METRIC_GMAIL_POST_VIEW_CONVERSIONS" -> Right MetricGmailPostViewConversions
        "METRIC_GMAIL_POTENTIAL_VIEWS" -> Right MetricGmailPotentialViews
        "METRIC_IMPRESSIONS_WITH_CUSTOM_VALUE" -> Right MetricImpressionsWithCustomValue
        "METRIC_IMPRESSIONS_WITH_POSITIVE_CUSTOM_VALUE" -> Right MetricImpressionsWithPositiveCustomValue
        "METRIC_IMPRESSION_CUSTOM_VALUE_COST" -> Right MetricImpressionCustomValueCost
        "METRIC_INTERACTIVE_IMPRESSIONS" -> Right MetricInteractiveImpressions
        "METRIC_INVALID_ACTIVE_VIEW_ELIGIBLE_IMPRESSIONS" -> Right MetricInvalidActiveViewEligibleImpressions
        "METRIC_INVALID_ACTIVE_VIEW_MEASURABLE_IMPRESSIONS" -> Right MetricInvalidActiveViewMeasurableImpressions
        "METRIC_INVALID_ACTIVE_VIEW_VIEWABLE_IMPRESSIONS" -> Right MetricInvalidActiveViewViewableImpressions
        "METRIC_INVALID_BEGIN_TO_RENDER_IMPRESSIONS" -> Right MetricInvalidBeginToRenderImpressions
        "METRIC_INVALID_CLICKS" -> Right MetricInvalidClicks
        "METRIC_INVALID_IMPRESSIONS" -> Right MetricInvalidImpressions
        "METRIC_INVALID_TRACKED_ADS" -> Right MetricInvalidTrackedAds
        "METRIC_MEDIA_COST_ADVERTISER_CURRENCY_PER_STORE_VISIT_ADX_ONLY" -> Right MetricMediaCostAdvertiserCurrencyPerStoreVisitAdxOnly
        "METRIC_MIDPOINT_AUDIO" -> Right MetricMidpointAudio
        "METRIC_ORIGINAL_AUDIENCE_FREQUENCY" -> Right MetricOriginalAudienceFrequency
        "METRIC_PAUSES_AUDIO" -> Right MetricPausesAudio
        "METRIC_PERCENT_IMPRESSIONS_WITH_POSITIVE_CUSTOM_VALUE" -> Right MetricPercentImpressionsWithPositiveCustomValue
        "METRIC_PLATFORM_FEE_RATE" -> Right MetricPlatformFeeRate
        "METRIC_POST_CLICK_CONVERSIONS_CROSS_ENVIRONMENT" -> Right MetricPostClickConversionsCrossEnvironment
        "METRIC_POST_VIEW_CONVERSIONS_CROSS_ENVIRONMENT" -> Right MetricPostViewConversionsCrossEnvironment
        "METRIC_POTENTIAL_IMPRESSIONS" -> Right MetricPotentialImpressions
        "METRIC_POTENTIAL_VIEWS" -> Right MetricPotentialViews
        "METRIC_PREMIUM_FEE_ADVERTISER_CURRENCY" -> Right MetricPremiumFeeAdvertiserCurrency
        "METRIC_PROGRAMMATIC_GUARANTEED_IMPRESSIONS_PASSED_DUE_TO_FREQUENCY" -> Right MetricProgrammaticGuaranteedImpressionsPassedDueToFrequency
        "METRIC_PROGRAMMATIC_GUARANTEED_SAVINGS_RE_INVESTED_DUE_TO_FREQUENCY_ADVERTISER_CURRENCY" -> Right MetricProgrammaticGuaranteedSavingsReInvestedDueToFrequencyAdvertiserCurrency
        "METRIC_REFUND_BILLABLE_COST_ADVERTISER_CURRENCY" -> Right MetricRefundBillableCostAdvertiserCurrency
        "METRIC_REFUND_MEDIA_COST_ADVERTISER_CURRENCY" -> Right MetricRefundMediaCostAdvertiserCurrency
        "METRIC_REFUND_PLATFORM_FEE_ADVERTISER_CURRENCY" -> Right MetricRefundPlatformFeeAdvertiserCurrency
        "METRIC_REVENUE_ADVERTISER_CURRENCY_PER_STORE_VISIT_ADX_ONLY" -> Right MetricRevenueAdvertiserCurrencyPerStoreVisitAdxOnly
        "METRIC_RICH_MEDIA_ENGAGEMENTS" -> Right MetricRichMediaEngagements
        "METRIC_STARTS_AUDIO" -> Right MetricStartsAudio
        "METRIC_STOPS_AUDIO" -> Right MetricStopsAudio
        "METRIC_STORE_VISITS_ADX_ONLY" -> Right MetricStoreVisitsAdxOnly
        "METRIC_STORE_VISIT_CONVERSIONS" -> Right MetricStoreVisitConversions
        "METRIC_THIRD_QUARTILE_AUDIO" -> Right MetricThirdQuartileAudio
        "METRIC_TIMERS" -> Right MetricTimers
        "METRIC_TOTAL_AUDIO_MEDIA_COST_ECPCL_ADVERTISER_CURRENCY" -> Right MetricTotalAudioMediaCostEcpclAdvertiserCurrency
        "METRIC_TOTAL_CONVERSIONS_CROSS_ENVIRONMENT" -> Right MetricTotalConversionsCrossEnvironment
        "METRIC_TOTAL_DISPLAY_TIME" -> Right MetricTotalDisplayTime
        "METRIC_TOTAL_IMPRESSION_CUSTOM_VALUE" -> Right MetricTotalImpressionCustomValue
        "METRIC_TOTAL_INTERACTION_TIME" -> Right MetricTotalInteractionTime
        "METRIC_TOTAL_MEDIA_COST_ADVERTISER_CURRENCY_PER_STORE_VISIT_ADX_ONLY" -> Right MetricTotalMediaCostAdvertiserCurrencyPerStoreVisitAdxOnly
        "METRIC_TOTAL_USERS" -> Right MetricTotalUsers
        "METRIC_TRACKED_ADS" -> Right MetricTrackedAds
        "METRIC_TRUEVIEW_GENERAL_INVALID_TRAFFIC_GIVT_VIEWS" -> Right MetricTrueviewGeneralInvalidTrafficGivtViews
        "METRIC_TRUEVIEW_INVALID_VIEWS" -> Right MetricTrueviewInvalidViews
        "METRIC_UNIQUE_COOKIES_WITH_IMPRESSIONS" -> Right MetricUniqueCookiesWithImpressions
        "METRIC_UNIQUE_REACH_AVERAGE_IMPRESSION_FREQUENCY" -> Right MetricUniqueReachAverageImpressionFrequency
        "METRIC_UNIQUE_REACH_CLICK_REACH" -> Right MetricUniqueReachClickReach
        "METRIC_UNIQUE_REACH_IMPRESSION_REACH" -> Right MetricUniqueReachImpressionReach
        "METRIC_UNIQUE_REACH_TOTAL_REACH" -> Right MetricUniqueReachTotalReach
        "METRIC_VERIFIABLE_IMPRESSIONS" -> Right MetricVerifiableImpressions
        "METRIC_VIDEO_CLIENT_COST_ECPCV_ADVERTISER_CURRENCY" -> Right MetricVideoClientCostEcpcvAdvertiserCurrency
        "METRIC_WATCH_TIME" -> Right MetricWatchTime
        "METRIC_LAST_TOUCH_TOTAL_CONVERSIONS" -> Right MetricLastTouchTotalConversions
        "METRIC_LAST_TOUCH_CLICK_THROUGH_CONVERSIONS" -> Right MetricLastTouchClickThroughConversions
        "METRIC_LAST_TOUCH_VIEW_THROUGH_CONVERSIONS" -> Right MetricLastTouchViewThroughConversions
        "METRIC_TOTAL_PATHS" -> Right MetricTotalPaths
        "METRIC_TOTAL_EXPOSURES" -> Right MetricTotalExposures
        "METRIC_PATH_CONVERSION_RATE" -> Right MetricPathConversionRate
        "METRIC_CONVERTING_PATHS" -> Right MetricConvertingPaths
        "METRIC_ACTIVITY_REVENUE" -> Right MetricActivityRevenue
        "METRIC_PERCENT_INVALID_IMPRESSIONS_PREBID" -> Right MetricPercentInvalidImpressionsPreBid
        "METRIC_GRP_CORRECTED_IMPRESSIONS" -> Right MetricGrpCorrectedImpressions
        "METRIC_DEMO_CORRECTED_CLICKS" -> Right MetricDemoCorrectedClicks
        "METRIC_VIRTUAL_PEOPLE_IMPRESSION_REACH_BY_DEMO" -> Right MetricVirtualPeopleImpressionReachByDemo
        "METRIC_VIRTUAL_PEOPLE_CLICK_REACH_BY_DEMO" -> Right MetricVirtualPeopleClickReachByDemo
        "METRIC_VIRTUAL_PEOPLE_AVERAGE_IMPRESSION_FREQUENCY_BY_DEMO" -> Right MetricVirtualPeopleAverageImpressionFrequencyByDemo
        "METRIC_DEMO_COMPOSITION_IMPRESSION" -> Right MetricDemoComPositionImpression
        "METRIC_VIRTUAL_PEOPLE_IMPRESSION_REACH_SHARE_PERCENT" -> Right MetricVirtualPeopleImpressionReachSharePercent
        "METRIC_DEMO_POPULATION" -> Right MetricDemoPopulation
        "METRIC_VIRTUAL_PEOPLE_IMPRESSION_REACH_PERCENT" -> Right MetricVirtualPeopleImpressionReachPercent
        "METRIC_TARGET_RATING_POINTS" -> Right MetricTargetRatingPoints
        "METRIC_PROVISIONAL_IMPRESSIONS" -> Right MetricProvisionalImpressions
        "METRIC_VENDOR_BLOCKED_ADS" -> Right MetricVendorBlockedAds
        "METRIC_GRP_CORRECTED_VIEWABLE_IMPRESSIONS" -> Right MetricGrpCorrectedViewableImpressions
        "METRIC_GRP_CORRECTED_VIEWABLE_IMPRESSIONS_SHARE_PERCENT" -> Right MetricGrpCorrectedViewableImpressionsSharePercent
        "METRIC_VIEWABLE_GROSS_RATING_POINTS" -> Right MetricViewableGrossRatingPoints
        "METRIC_VIRTUAL_PEOPLE_AVERAGE_VIEWABLE_IMPRESSION_FREQUENCY_BY_DEMO" -> Right MetricVirtualPeopleAverageViewableImpressionFrequencyByDemo
        "METRIC_VIRTUAL_PEOPLE_VIEWABLE_IMPRESSION_REACH_BY_DEMO" -> Right MetricVirtualPeopleViewableImpressionReachByDemo
        "METRIC_VIRTUAL_PEOPLE_VIEWABLE_IMPRESSION_REACH_PERCENT" -> Right MetricVirtualPeopleViewableImpressionReachPercent
        "METRIC_VIRTUAL_PEOPLE_VIEWABLE_IMPRESSION_REACH_SHARE_PERCENT" -> Right MetricVirtualPeopleViewableImpressionReachSharePercent
        "METRIC_ENGAGEMENT_RATE" -> Right MetricEngagementRate
        "METRIC_CM360_POST_VIEW_REVENUE" -> Right MetricCM360PostViewRevenue
        "METRIC_CM360_POST_CLICK_REVENUE" -> Right MetricCM360PostClickRevenue
        "METRIC_CM360_POST_CLICK_REVENUE_CROSS_ENVIRONMENT" -> Right MetricCM360PostClickRevenueCrossEnvironment
        "METRIC_CM360_POST_VIEW_REVENUE_CROSS_ENVIRONMENT" -> Right MetricCM360PostViewRevenueCrossEnvironment
        "METRIC_PERCENTAGE_FROM_CURRENT_IO_GOAL" -> Right MetricPercentageFromCurrentIoGoal
        "METRIC_DUPLICATE_FLOODLIGHT_IMPRESSIONS" -> Right MetricDuplicateFloodlightImpressions
        "METRIC_COOKIE_CONSENTED_FLOODLIGHT_IMPRESSIONS" -> Right MetricCookieConsentedFloodlightImpressions
        "METRIC_COOKIE_UNCONSENTED_FLOODLIGHT_IMPRESSIONS" -> Right MetricCookieUnconsentedFloodlightImpressions
        "METRIC_TRACKING_UNCONSENTED_CLICKS" -> Right MetricTrackingUnconsentedClicks
        x -> Left ("Unable to parse ParametersMetricsItem from: " <> x)

instance ToHttpApiData ParametersMetricsItem where
    toQueryParam = \case
        MetricUnknown -> "METRIC_UNKNOWN"
        MetricImpressions -> "METRIC_IMPRESSIONS"
        MetricClicks -> "METRIC_CLICKS"
        MetricLastImpressions -> "METRIC_LAST_IMPRESSIONS"
        MetricLastClicks -> "METRIC_LAST_CLICKS"
        MetricTotalConversions -> "METRIC_TOTAL_CONVERSIONS"
        MetricMediaCostAdvertiser -> "METRIC_MEDIA_COST_ADVERTISER"
        MetricMediaCostUsd -> "METRIC_MEDIA_COST_USD"
        MetricMediaCostPartner -> "METRIC_MEDIA_COST_PARTNER"
        MetricDataCostAdvertiser -> "METRIC_DATA_COST_ADVERTISER"
        MetricDataCostUsd -> "METRIC_DATA_COST_USD"
        MetricDataCostPartner -> "METRIC_DATA_COST_PARTNER"
        MetricCpmFEE1Advertiser -> "METRIC_CPM_FEE1_ADVERTISER"
        MetricCpmFEE1Usd -> "METRIC_CPM_FEE1_USD"
        MetricCpmFEE1Partner -> "METRIC_CPM_FEE1_PARTNER"
        MetricCpmFEE2Advertiser -> "METRIC_CPM_FEE2_ADVERTISER"
        MetricCpmFEE2Usd -> "METRIC_CPM_FEE2_USD"
        MetricCpmFEE2Partner -> "METRIC_CPM_FEE2_PARTNER"
        MetricMediaFEE1Advertiser -> "METRIC_MEDIA_FEE1_ADVERTISER"
        MetricMediaFEE1Usd -> "METRIC_MEDIA_FEE1_USD"
        MetricMediaFEE1Partner -> "METRIC_MEDIA_FEE1_PARTNER"
        MetricMediaFEE2Advertiser -> "METRIC_MEDIA_FEE2_ADVERTISER"
        MetricMediaFEE2Usd -> "METRIC_MEDIA_FEE2_USD"
        MetricMediaFEE2Partner -> "METRIC_MEDIA_FEE2_PARTNER"
        MetricRevenueAdvertiser -> "METRIC_REVENUE_ADVERTISER"
        MetricRevenueUsd -> "METRIC_REVENUE_USD"
        MetricRevenuePartner -> "METRIC_REVENUE_PARTNER"
        MetricProfitAdvertiser -> "METRIC_PROFIT_ADVERTISER"
        MetricProfitUsd -> "METRIC_PROFIT_USD"
        MetricProfitPartner -> "METRIC_PROFIT_PARTNER"
        MetricProfitMargin -> "METRIC_PROFIT_MARGIN"
        MetricTotalMediaCostUsd -> "METRIC_TOTAL_MEDIA_COST_USD"
        MetricTotalMediaCostPartner -> "METRIC_TOTAL_MEDIA_COST_PARTNER"
        MetricTotalMediaCostAdvertiser -> "METRIC_TOTAL_MEDIA_COST_ADVERTISER"
        MetricBillableCostUsd -> "METRIC_BILLABLE_COST_USD"
        MetricBillableCostPartner -> "METRIC_BILLABLE_COST_PARTNER"
        MetricBillableCostAdvertiser -> "METRIC_BILLABLE_COST_ADVERTISER"
        MetricPlatformFeeUsd -> "METRIC_PLATFORM_FEE_USD"
        MetricPlatformFeePartner -> "METRIC_PLATFORM_FEE_PARTNER"
        MetricPlatformFeeAdvertiser -> "METRIC_PLATFORM_FEE_ADVERTISER"
        MetricVideoCompletionRate -> "METRIC_VIDEO_COMPLETION_RATE"
        MetricProfitEcpmAdvertiser -> "METRIC_PROFIT_ECPM_ADVERTISER"
        MetricProfitEcpmUsd -> "METRIC_PROFIT_ECPM_USD"
        MetricProfitEcpmPartner -> "METRIC_PROFIT_ECPM_PARTNER"
        MetricRevenueEcpmAdvertiser -> "METRIC_REVENUE_ECPM_ADVERTISER"
        MetricRevenueEcpmUsd -> "METRIC_REVENUE_ECPM_USD"
        MetricRevenueEcpmPartner -> "METRIC_REVENUE_ECPM_PARTNER"
        MetricRevenueEcpcAdvertiser -> "METRIC_REVENUE_ECPC_ADVERTISER"
        MetricRevenueEcpcUsd -> "METRIC_REVENUE_ECPC_USD"
        MetricRevenueEcpcPartner -> "METRIC_REVENUE_ECPC_PARTNER"
        MetricRevenueEcpaAdvertiser -> "METRIC_REVENUE_ECPA_ADVERTISER"
        MetricRevenueEcpaUsd -> "METRIC_REVENUE_ECPA_USD"
        MetricRevenueEcpaPartner -> "METRIC_REVENUE_ECPA_PARTNER"
        MetricRevenueEcpapvAdvertiser -> "METRIC_REVENUE_ECPAPV_ADVERTISER"
        MetricRevenueEcpapvUsd -> "METRIC_REVENUE_ECPAPV_USD"
        MetricRevenueEcpapvPartner -> "METRIC_REVENUE_ECPAPV_PARTNER"
        MetricRevenueEcpapcAdvertiser -> "METRIC_REVENUE_ECPAPC_ADVERTISER"
        MetricRevenueEcpapcUsd -> "METRIC_REVENUE_ECPAPC_USD"
        MetricRevenueEcpapcPartner -> "METRIC_REVENUE_ECPAPC_PARTNER"
        MetricMediaCostEcpmAdvertiser -> "METRIC_MEDIA_COST_ECPM_ADVERTISER"
        MetricMediaCostEcpmUsd -> "METRIC_MEDIA_COST_ECPM_USD"
        MetricMediaCostEcpmPartner -> "METRIC_MEDIA_COST_ECPM_PARTNER"
        MetricMediaCostEcpcAdvertiser -> "METRIC_MEDIA_COST_ECPC_ADVERTISER"
        MetricMediaCostEcpcUsd -> "METRIC_MEDIA_COST_ECPC_USD"
        MetricMediaCostEcpcPartner -> "METRIC_MEDIA_COST_ECPC_PARTNER"
        MetricMediaCostEcpaAdvertiser -> "METRIC_MEDIA_COST_ECPA_ADVERTISER"
        MetricMediaCostEcpaUsd -> "METRIC_MEDIA_COST_ECPA_USD"
        MetricMediaCostEcpaPartner -> "METRIC_MEDIA_COST_ECPA_PARTNER"
        MetricMediaCostEcpapvAdvertiser -> "METRIC_MEDIA_COST_ECPAPV_ADVERTISER"
        MetricMediaCostEcpapvUsd -> "METRIC_MEDIA_COST_ECPAPV_USD"
        MetricMediaCostEcpapvPartner -> "METRIC_MEDIA_COST_ECPAPV_PARTNER"
        MetricMediaCostEcpapcAdvertiser -> "METRIC_MEDIA_COST_ECPAPC_ADVERTISER"
        MetricMediaCostEcpapcUsd -> "METRIC_MEDIA_COST_ECPAPC_USD"
        MetricMediaCostEcpapcPartner -> "METRIC_MEDIA_COST_ECPAPC_PARTNER"
        MetricTotalMediaCostEcpmAdvertiser -> "METRIC_TOTAL_MEDIA_COST_ECPM_ADVERTISER"
        MetricTotalMediaCostEcpmUsd -> "METRIC_TOTAL_MEDIA_COST_ECPM_USD"
        MetricTotalMediaCostEcpmPartner -> "METRIC_TOTAL_MEDIA_COST_ECPM_PARTNER"
        MetricTotalMediaCostEcpcAdvertiser -> "METRIC_TOTAL_MEDIA_COST_ECPC_ADVERTISER"
        MetricTotalMediaCostEcpcUsd -> "METRIC_TOTAL_MEDIA_COST_ECPC_USD"
        MetricTotalMediaCostEcpcPartner -> "METRIC_TOTAL_MEDIA_COST_ECPC_PARTNER"
        MetricTotalMediaCostEcpaAdvertiser -> "METRIC_TOTAL_MEDIA_COST_ECPA_ADVERTISER"
        MetricTotalMediaCostEcpaUsd -> "METRIC_TOTAL_MEDIA_COST_ECPA_USD"
        MetricTotalMediaCostEcpaPartner -> "METRIC_TOTAL_MEDIA_COST_ECPA_PARTNER"
        MetricTotalMediaCostEcpapvAdvertiser -> "METRIC_TOTAL_MEDIA_COST_ECPAPV_ADVERTISER"
        MetricTotalMediaCostEcpapvUsd -> "METRIC_TOTAL_MEDIA_COST_ECPAPV_USD"
        MetricTotalMediaCostEcpapvPartner -> "METRIC_TOTAL_MEDIA_COST_ECPAPV_PARTNER"
        MetricTotalMediaCostEcpapcAdvertiser -> "METRIC_TOTAL_MEDIA_COST_ECPAPC_ADVERTISER"
        MetricTotalMediaCostEcpapcUsd -> "METRIC_TOTAL_MEDIA_COST_ECPAPC_USD"
        MetricTotalMediaCostEcpapcPartner -> "METRIC_TOTAL_MEDIA_COST_ECPAPC_PARTNER"
        MetricRichMediaVideoPlays -> "METRIC_RICH_MEDIA_VIDEO_PLAYS"
        MetricRichMediaVideoCompletions -> "METRIC_RICH_MEDIA_VIDEO_COMPLETIONS"
        MetricRichMediaVideoPauses -> "METRIC_RICH_MEDIA_VIDEO_PAUSES"
        MetricRichMediaVideoMutes -> "METRIC_RICH_MEDIA_VIDEO_MUTES"
        MetricRichMediaVideoMidpoints -> "METRIC_RICH_MEDIA_VIDEO_MIDPOINTS"
        MetricRichMediaVideoFullScreens -> "METRIC_RICH_MEDIA_VIDEO_FULL_SCREENS"
        MetricRichMediaVideoFirstQuartileCompletes -> "METRIC_RICH_MEDIA_VIDEO_FIRST_QUARTILE_COMPLETES"
        MetricRichMediaVideoThirdQuartileCompletes -> "METRIC_RICH_MEDIA_VIDEO_THIRD_QUARTILE_COMPLETES"
        MetricClickToPostClickConversionRate -> "METRIC_CLICK_TO_POST_CLICK_CONVERSION_RATE"
        MetricImpressionsToConversionRate -> "METRIC_IMPRESSIONS_TO_CONVERSION_RATE"
        MetricConversionsPerMille -> "METRIC_CONVERSIONS_PER_MILLE"
        MetricCtr -> "METRIC_CTR"
        MetricBidRequests -> "METRIC_BID_REQUESTS"
        MetricUniqueVisitorsCookies -> "METRIC_UNIQUE_VISITORS_COOKIES"
        MetricRevenueEcpcvAdvertiser -> "METRIC_REVENUE_ECPCV_ADVERTISER"
        MetricRevenueEcpcvUsd -> "METRIC_REVENUE_ECPCV_USD"
        MetricRevenueEcpcvPartner -> "METRIC_REVENUE_ECPCV_PARTNER"
        MetricMediaCostEcpcvAdvertiser -> "METRIC_MEDIA_COST_ECPCV_ADVERTISER"
        MetricMediaCostEcpcvUsd -> "METRIC_MEDIA_COST_ECPCV_USD"
        MetricMediaCostEcpcvPartner -> "METRIC_MEDIA_COST_ECPCV_PARTNER"
        MetricTotalMediaCostEcpcvAdvertiser -> "METRIC_TOTAL_MEDIA_COST_ECPCV_ADVERTISER"
        MetricTotalMediaCostEcpcvUsd -> "METRIC_TOTAL_MEDIA_COST_ECPCV_USD"
        MetricTotalMediaCostEcpcvPartner -> "METRIC_TOTAL_MEDIA_COST_ECPCV_PARTNER"
        MetricRichMediaVideoSkips -> "METRIC_RICH_MEDIA_VIDEO_SKIPS"
        MetricFEE2Advertiser -> "METRIC_FEE2_ADVERTISER"
        MetricFEE2Usd -> "METRIC_FEE2_USD"
        MetricFEE2Partner -> "METRIC_FEE2_PARTNER"
        MetricFEE3Advertiser -> "METRIC_FEE3_ADVERTISER"
        MetricFEE3Usd -> "METRIC_FEE3_USD"
        MetricFEE3Partner -> "METRIC_FEE3_PARTNER"
        MetricFEE4Advertiser -> "METRIC_FEE4_ADVERTISER"
        MetricFEE4Usd -> "METRIC_FEE4_USD"
        MetricFEE4Partner -> "METRIC_FEE4_PARTNER"
        MetricFEE5Advertiser -> "METRIC_FEE5_ADVERTISER"
        MetricFEE5Usd -> "METRIC_FEE5_USD"
        MetricFEE5Partner -> "METRIC_FEE5_PARTNER"
        MetricFEE6Advertiser -> "METRIC_FEE6_ADVERTISER"
        MetricFEE6Usd -> "METRIC_FEE6_USD"
        MetricFEE6Partner -> "METRIC_FEE6_PARTNER"
        MetricFEE7Advertiser -> "METRIC_FEE7_ADVERTISER"
        MetricFEE7Usd -> "METRIC_FEE7_USD"
        MetricFEE7Partner -> "METRIC_FEE7_PARTNER"
        MetricFEE8Advertiser -> "METRIC_FEE8_ADVERTISER"
        MetricFEE8Usd -> "METRIC_FEE8_USD"
        MetricFEE8Partner -> "METRIC_FEE8_PARTNER"
        MetricFEE9Advertiser -> "METRIC_FEE9_ADVERTISER"
        MetricFEE9Usd -> "METRIC_FEE9_USD"
        MetricFEE9Partner -> "METRIC_FEE9_PARTNER"
        MetricFEE10Advertiser -> "METRIC_FEE10_ADVERTISER"
        MetricFEE10Usd -> "METRIC_FEE10_USD"
        MetricFEE10Partner -> "METRIC_FEE10_PARTNER"
        MetricFEE11Advertiser -> "METRIC_FEE11_ADVERTISER"
        MetricFEE11Usd -> "METRIC_FEE11_USD"
        MetricFEE11Partner -> "METRIC_FEE11_PARTNER"
        MetricFEE12Advertiser -> "METRIC_FEE12_ADVERTISER"
        MetricFEE12Usd -> "METRIC_FEE12_USD"
        MetricFEE12Partner -> "METRIC_FEE12_PARTNER"
        MetricFEE13Advertiser -> "METRIC_FEE13_ADVERTISER"
        MetricFEE13Usd -> "METRIC_FEE13_USD"
        MetricFEE13Partner -> "METRIC_FEE13_PARTNER"
        MetricFEE14Advertiser -> "METRIC_FEE14_ADVERTISER"
        MetricFEE14Usd -> "METRIC_FEE14_USD"
        MetricFEE14Partner -> "METRIC_FEE14_PARTNER"
        MetricFEE15Advertiser -> "METRIC_FEE15_ADVERTISER"
        MetricFEE15Usd -> "METRIC_FEE15_USD"
        MetricFEE15Partner -> "METRIC_FEE15_PARTNER"
        MetricCpmFEE3Advertiser -> "METRIC_CPM_FEE3_ADVERTISER"
        MetricCpmFEE3Usd -> "METRIC_CPM_FEE3_USD"
        MetricCpmFEE3Partner -> "METRIC_CPM_FEE3_PARTNER"
        MetricCpmFEE4Advertiser -> "METRIC_CPM_FEE4_ADVERTISER"
        MetricCpmFEE4Usd -> "METRIC_CPM_FEE4_USD"
        MetricCpmFEE4Partner -> "METRIC_CPM_FEE4_PARTNER"
        MetricCpmFEE5Advertiser -> "METRIC_CPM_FEE5_ADVERTISER"
        MetricCpmFEE5Usd -> "METRIC_CPM_FEE5_USD"
        MetricCpmFEE5Partner -> "METRIC_CPM_FEE5_PARTNER"
        MetricMediaFEE3Advertiser -> "METRIC_MEDIA_FEE3_ADVERTISER"
        MetricMediaFEE3Usd -> "METRIC_MEDIA_FEE3_USD"
        MetricMediaFEE3Partner -> "METRIC_MEDIA_FEE3_PARTNER"
        MetricMediaFEE4Advertiser -> "METRIC_MEDIA_FEE4_ADVERTISER"
        MetricMediaFEE4Usd -> "METRIC_MEDIA_FEE4_USD"
        MetricMediaFEE4Partner -> "METRIC_MEDIA_FEE4_PARTNER"
        MetricMediaFEE5Advertiser -> "METRIC_MEDIA_FEE5_ADVERTISER"
        MetricMediaFEE5Usd -> "METRIC_MEDIA_FEE5_USD"
        MetricMediaFEE5Partner -> "METRIC_MEDIA_FEE5_PARTNER"
        MetricVideoCompanionImpressions -> "METRIC_VIDEO_COMPANION_IMPRESSIONS"
        MetricVideoCompanionClicks -> "METRIC_VIDEO_COMPANION_CLICKS"
        MetricFEE16Advertiser -> "METRIC_FEE16_ADVERTISER"
        MetricFEE16Usd -> "METRIC_FEE16_USD"
        MetricFEE16Partner -> "METRIC_FEE16_PARTNER"
        MetricFEE17Advertiser -> "METRIC_FEE17_ADVERTISER"
        MetricFEE17Usd -> "METRIC_FEE17_USD"
        MetricFEE17Partner -> "METRIC_FEE17_PARTNER"
        MetricFEE18Advertiser -> "METRIC_FEE18_ADVERTISER"
        MetricFEE18Usd -> "METRIC_FEE18_USD"
        MetricFEE18Partner -> "METRIC_FEE18_PARTNER"
        MetricTrueviewViews -> "METRIC_TRUEVIEW_VIEWS"
        MetricTrueviewUniqueViewers -> "METRIC_TRUEVIEW_UNIQUE_VIEWERS"
        MetricTrueviewEarnedViews -> "METRIC_TRUEVIEW_EARNED_VIEWS"
        MetricTrueviewEarnedSubscribers -> "METRIC_TRUEVIEW_EARNED_SUBSCRIBERS"
        MetricTrueviewEarnedPlayListAdditions -> "METRIC_TRUEVIEW_EARNED_PLAYLIST_ADDITIONS"
        MetricTrueviewEarnedLikes -> "METRIC_TRUEVIEW_EARNED_LIKES"
        MetricTrueviewEarnedShares -> "METRIC_TRUEVIEW_EARNED_SHARES"
        MetricTrueviewImpressionShare -> "METRIC_TRUEVIEW_IMPRESSION_SHARE"
        MetricTrueviewLostIsBudget -> "METRIC_TRUEVIEW_LOST_IS_BUDGET"
        MetricTrueviewLostIsRank -> "METRIC_TRUEVIEW_LOST_IS_RANK"
        MetricTrueviewViewThroughConversion -> "METRIC_TRUEVIEW_VIEW_THROUGH_CONVERSION"
        MetricTrueviewConversionManyPerView -> "METRIC_TRUEVIEW_CONVERSION_MANY_PER_VIEW"
        MetricTrueviewViewRate -> "METRIC_TRUEVIEW_VIEW_RATE"
        MetricTrueviewConversionRateOnePerView -> "METRIC_TRUEVIEW_CONVERSION_RATE_ONE_PER_VIEW"
        MetricTrueviewCpvAdvertiser -> "METRIC_TRUEVIEW_CPV_ADVERTISER"
        MetricTrueviewCpvUsd -> "METRIC_TRUEVIEW_CPV_USD"
        MetricTrueviewCpvPartner -> "METRIC_TRUEVIEW_CPV_PARTNER"
        MetricFEE19Advertiser -> "METRIC_FEE19_ADVERTISER"
        MetricFEE19Usd -> "METRIC_FEE19_USD"
        MetricFEE19Partner -> "METRIC_FEE19_PARTNER"
        MetricTeaTrueviewImpressions -> "METRIC_TEA_TRUEVIEW_IMPRESSIONS"
        MetricTeaTrueviewUniqueCookies -> "METRIC_TEA_TRUEVIEW_UNIQUE_COOKIES"
        MetricFEE20Advertiser -> "METRIC_FEE20_ADVERTISER"
        MetricFEE20Usd -> "METRIC_FEE20_USD"
        MetricFEE20Partner -> "METRIC_FEE20_PARTNER"
        MetricFEE21Advertiser -> "METRIC_FEE21_ADVERTISER"
        MetricFEE21Usd -> "METRIC_FEE21_USD"
        MetricFEE21Partner -> "METRIC_FEE21_PARTNER"
        MetricFEE22Advertiser -> "METRIC_FEE22_ADVERTISER"
        MetricFEE22Usd -> "METRIC_FEE22_USD"
        MetricFEE22Partner -> "METRIC_FEE22_PARTNER"
        MetricTrueviewTotalConversionValuesAdvertiser -> "METRIC_TRUEVIEW_TOTAL_CONVERSION_VALUES_ADVERTISER"
        MetricTrueviewTotalConversionValuesUsd -> "METRIC_TRUEVIEW_TOTAL_CONVERSION_VALUES_USD"
        MetricTrueviewTotalConversionValuesPartner -> "METRIC_TRUEVIEW_TOTAL_CONVERSION_VALUES_PARTNER"
        MetricTrueviewConversionCostManyPerViewAdvertiser -> "METRIC_TRUEVIEW_CONVERSION_COST_MANY_PER_VIEW_ADVERTISER"
        MetricTrueviewConversionCostManyPerViewUsd -> "METRIC_TRUEVIEW_CONVERSION_COST_MANY_PER_VIEW_USD"
        MetricTrueviewConversionCostManyPerViewPartner -> "METRIC_TRUEVIEW_CONVERSION_COST_MANY_PER_VIEW_PARTNER"
        MetricProfitViewableEcpmAdvertiser -> "METRIC_PROFIT_VIEWABLE_ECPM_ADVERTISER"
        MetricProfitViewableEcpmUsd -> "METRIC_PROFIT_VIEWABLE_ECPM_USD"
        MetricProfitViewableEcpmPartner -> "METRIC_PROFIT_VIEWABLE_ECPM_PARTNER"
        MetricRevenueViewableEcpmAdvertiser -> "METRIC_REVENUE_VIEWABLE_ECPM_ADVERTISER"
        MetricRevenueViewableEcpmUsd -> "METRIC_REVENUE_VIEWABLE_ECPM_USD"
        MetricRevenueViewableEcpmPartner -> "METRIC_REVENUE_VIEWABLE_ECPM_PARTNER"
        MetricMediaCostViewableEcpmAdvertiser -> "METRIC_MEDIA_COST_VIEWABLE_ECPM_ADVERTISER"
        MetricMediaCostViewableEcpmUsd -> "METRIC_MEDIA_COST_VIEWABLE_ECPM_USD"
        MetricMediaCostViewableEcpmPartner -> "METRIC_MEDIA_COST_VIEWABLE_ECPM_PARTNER"
        MetricTotalMediaCostViewableEcpmAdvertiser -> "METRIC_TOTAL_MEDIA_COST_VIEWABLE_ECPM_ADVERTISER"
        MetricTotalMediaCostViewableEcpmUsd -> "METRIC_TOTAL_MEDIA_COST_VIEWABLE_ECPM_USD"
        MetricTotalMediaCostViewableEcpmPartner -> "METRIC_TOTAL_MEDIA_COST_VIEWABLE_ECPM_PARTNER"
        MetricTrueviewEngagements -> "METRIC_TRUEVIEW_ENGAGEMENTS"
        MetricTrueviewEngagementRate -> "METRIC_TRUEVIEW_ENGAGEMENT_RATE"
        MetricTrueviewAverageCpeAdvertiser -> "METRIC_TRUEVIEW_AVERAGE_CPE_ADVERTISER"
        MetricTrueviewAverageCpeUsd -> "METRIC_TRUEVIEW_AVERAGE_CPE_USD"
        MetricTrueviewAverageCpePartner -> "METRIC_TRUEVIEW_AVERAGE_CPE_PARTNER"
        MetricActiveViewViewableImpressions -> "METRIC_ACTIVE_VIEW_VIEWABLE_IMPRESSIONS"
        MetricActiveViewEligibleImpressions -> "METRIC_ACTIVE_VIEW_ELIGIBLE_IMPRESSIONS"
        MetricActiveViewMeasurableImpressions -> "METRIC_ACTIVE_VIEW_MEASURABLE_IMPRESSIONS"
        MetricActiveViewPctMeasurableImpressions -> "METRIC_ACTIVE_VIEW_PCT_MEASURABLE_IMPRESSIONS"
        MetricActiveViewPctViewableImpressions -> "METRIC_ACTIVE_VIEW_PCT_VIEWABLE_IMPRESSIONS"
        MetricActiveViewAverageViewableTime -> "METRIC_ACTIVE_VIEW_AVERAGE_VIEWABLE_TIME"
        MetricActiveViewUnmeasurableImpressions -> "METRIC_ACTIVE_VIEW_UNMEASURABLE_IMPRESSIONS"
        MetricActiveViewUnviewableImpressions -> "METRIC_ACTIVE_VIEW_UNVIEWABLE_IMPRESSIONS"
        MetricActiveViewDistributionUnmeasurable -> "METRIC_ACTIVE_VIEW_DISTRIBUTION_UNMEASURABLE"
        MetricActiveViewDistributionUnviewable -> "METRIC_ACTIVE_VIEW_DISTRIBUTION_UNVIEWABLE"
        MetricActiveViewDistributionViewable -> "METRIC_ACTIVE_VIEW_DISTRIBUTION_VIEWABLE"
        MetricActiveViewPercentViewableForTimeThreshold -> "METRIC_ACTIVE_VIEW_PERCENT_VIEWABLE_FOR_TIME_THRESHOLD"
        MetricActiveViewViewableForTimeThreshold -> "METRIC_ACTIVE_VIEW_VIEWABLE_FOR_TIME_THRESHOLD"
        MetricActiveViewPercentVisibleAtStart -> "METRIC_ACTIVE_VIEW_PERCENT_VISIBLE_AT_START"
        MetricActiveViewPercentVisibleFirstQuar -> "METRIC_ACTIVE_VIEW_PERCENT_VISIBLE_FIRST_QUAR"
        MetricActiveViewPercentVisibleSecondQuar -> "METRIC_ACTIVE_VIEW_PERCENT_VISIBLE_SECOND_QUAR"
        MetricActiveViewPercentVisibleThirdQuar -> "METRIC_ACTIVE_VIEW_PERCENT_VISIBLE_THIRD_QUAR"
        MetricActiveViewPercentVisibleOnComplete -> "METRIC_ACTIVE_VIEW_PERCENT_VISIBLE_ON_COMPLETE"
        MetricActiveViewPercentAudibleVisibleAtStart -> "METRIC_ACTIVE_VIEW_PERCENT_AUDIBLE_VISIBLE_AT_START"
        MetricActiveViewPercentAudibleVisibleFirstQuar -> "METRIC_ACTIVE_VIEW_PERCENT_AUDIBLE_VISIBLE_FIRST_QUAR"
        MetricActiveViewPercentAudibleVisibleSecondQuar -> "METRIC_ACTIVE_VIEW_PERCENT_AUDIBLE_VISIBLE_SECOND_QUAR"
        MetricActiveViewPercentAudibleVisibleThirdQuar -> "METRIC_ACTIVE_VIEW_PERCENT_AUDIBLE_VISIBLE_THIRD_QUAR"
        MetricActiveViewPercentAudibleVisibleOnComplete -> "METRIC_ACTIVE_VIEW_PERCENT_AUDIBLE_VISIBLE_ON_COMPLETE"
        MetricActiveViewAudibleVisibleOnCompleteImpressions -> "METRIC_ACTIVE_VIEW_AUDIBLE_VISIBLE_ON_COMPLETE_IMPRESSIONS"
        MetricViewableBidRequests -> "METRIC_VIEWABLE_BID_REQUESTS"
        MetricCookieReachImpressionReach -> "METRIC_COOKIE_REACH_IMPRESSION_REACH"
        MetricCookieReachAverageImpressionFrequency -> "METRIC_COOKIE_REACH_AVERAGE_IMPRESSION_FREQUENCY"
        MetricDBmEngagementRate -> "METRIC_DBM_ENGAGEMENT_RATE"
        MetricRichMediaScrolls -> "METRIC_RICH_MEDIA_SCROLLS"
        MetricCmPostViewRevenue -> "METRIC_CM_POST_VIEW_REVENUE"
        MetricCmPostClickRevenue -> "METRIC_CM_POST_CLICK_REVENUE"
        MetricFloodlightImpressions -> "METRIC_FLOODLIGHT_IMPRESSIONS"
        MetricBillableImpressions -> "METRIC_BILLABLE_IMPRESSIONS"
        MetricNielsenAverageFrequency -> "METRIC_NIELSEN_AVERAGE_FREQUENCY"
        MetricNielsenImpressions -> "METRIC_NIELSEN_IMPRESSIONS"
        MetricNielsenUniqueAudience -> "METRIC_NIELSEN_UNIQUE_AUDIENCE"
        MetricNielsenGrp -> "METRIC_NIELSEN_GRP"
        MetricNielsenImpressionIndex -> "METRIC_NIELSEN_IMPRESSION_INDEX"
        MetricNielsenImpressionsShare -> "METRIC_NIELSEN_IMPRESSIONS_SHARE"
        MetricNielsenPopulation -> "METRIC_NIELSEN_POPULATION"
        MetricNielsenPopulationReach -> "METRIC_NIELSEN_POPULATION_REACH"
        MetricNielsenPopulationShare -> "METRIC_NIELSEN_POPULATION_SHARE"
        MetricNielsenReachIndex -> "METRIC_NIELSEN_REACH_INDEX"
        MetricNielsenReachShare -> "METRIC_NIELSEN_REACH_SHARE"
        MetricActiveViewAudibleFullyOnScreenHalfOfDurationImpressions -> "METRIC_ACTIVE_VIEW_AUDIBLE_FULLY_ON_SCREEN_HALF_OF_DURATION_IMPRESSIONS"
        MetricActiveViewAudibleFullyOnScreenHalfOfDurationMeasurableImpressions -> "METRIC_ACTIVE_VIEW_AUDIBLE_FULLY_ON_SCREEN_HALF_OF_DURATION_MEASURABLE_IMPRESSIONS"
        MetricActiveViewAudibleFullyOnScreenHalfOfDurationRate -> "METRIC_ACTIVE_VIEW_AUDIBLE_FULLY_ON_SCREEN_HALF_OF_DURATION_RATE"
        MetricActiveViewAudibleFullyOnScreenHalfOfDurationTrueviewImpressions -> "METRIC_ACTIVE_VIEW_AUDIBLE_FULLY_ON_SCREEN_HALF_OF_DURATION_TRUEVIEW_IMPRESSIONS"
        MetricActiveViewAudibleFullyOnScreenHalfOfDurationTrueviewMeasurableImpressions -> "METRIC_ACTIVE_VIEW_AUDIBLE_FULLY_ON_SCREEN_HALF_OF_DURATION_TRUEVIEW_MEASURABLE_IMPRESSIONS"
        MetricActiveViewAudibleFullyOnScreenHalfOfDurationTrueviewRate -> "METRIC_ACTIVE_VIEW_AUDIBLE_FULLY_ON_SCREEN_HALF_OF_DURATION_TRUEVIEW_RATE"
        MetricActiveViewCustomMetricMeasurableImpressions -> "METRIC_ACTIVE_VIEW_CUSTOM_METRIC_MEASURABLE_IMPRESSIONS"
        MetricActiveViewCustomMetricViewableImpressions -> "METRIC_ACTIVE_VIEW_CUSTOM_METRIC_VIEWABLE_IMPRESSIONS"
        MetricActiveViewCustomMetricViewableRate -> "METRIC_ACTIVE_VIEW_CUSTOM_METRIC_VIEWABLE_RATE"
        MetricActiveViewPercentAudibleImpressions -> "METRIC_ACTIVE_VIEW_PERCENT_AUDIBLE_IMPRESSIONS"
        MetricActiveViewPercentFullyOnScreen2Sec -> "METRIC_ACTIVE_VIEW_PERCENT_FULLY_ON_SCREEN_2_SEC"
        MetricActiveViewPercentFullScreen -> "METRIC_ACTIVE_VIEW_PERCENT_FULL_SCREEN"
        MetricActiveViewPercentInBackgRound -> "METRIC_ACTIVE_VIEW_PERCENT_IN_BACKGROUND"
        MetricActiveViewPercentOfAdPlayed -> "METRIC_ACTIVE_VIEW_PERCENT_OF_AD_PLAYED"
        MetricActiveViewPercentOfCompletedImpressionsAudibleAndVisible -> "METRIC_ACTIVE_VIEW_PERCENT_OF_COMPLETED_IMPRESSIONS_AUDIBLE_AND_VISIBLE"
        MetricActiveViewPercentOfCompletedImpressionsVisible -> "METRIC_ACTIVE_VIEW_PERCENT_OF_COMPLETED_IMPRESSIONS_VISIBLE"
        MetricActiveViewPercentOfFirstQuartileImpressionsAudibleAndVisible -> "METRIC_ACTIVE_VIEW_PERCENT_OF_FIRST_QUARTILE_IMPRESSIONS_AUDIBLE_AND_VISIBLE"
        MetricActiveViewPercentOfFirstQuartileImpressionsVisible -> "METRIC_ACTIVE_VIEW_PERCENT_OF_FIRST_QUARTILE_IMPRESSIONS_VISIBLE"
        MetricActiveViewPercentOfMidpointImpressionsAudibleAndVisible -> "METRIC_ACTIVE_VIEW_PERCENT_OF_MIDPOINT_IMPRESSIONS_AUDIBLE_AND_VISIBLE"
        MetricActiveViewPercentOfMidpointImpressionsVisible -> "METRIC_ACTIVE_VIEW_PERCENT_OF_MIDPOINT_IMPRESSIONS_VISIBLE"
        MetricActiveViewPercentOfThirdQuartileImpressionsAudibleAndVisible -> "METRIC_ACTIVE_VIEW_PERCENT_OF_THIRD_QUARTILE_IMPRESSIONS_AUDIBLE_AND_VISIBLE"
        MetricActiveViewPercentOfThirdQuartileImpressionsVisible -> "METRIC_ACTIVE_VIEW_PERCENT_OF_THIRD_QUARTILE_IMPRESSIONS_VISIBLE"
        MetricActiveViewPercentPlayTimeAudible -> "METRIC_ACTIVE_VIEW_PERCENT_PLAY_TIME_AUDIBLE"
        MetricActiveViewPercentPlayTimeAudibleAndVisible -> "METRIC_ACTIVE_VIEW_PERCENT_PLAY_TIME_AUDIBLE_AND_VISIBLE"
        MetricActiveViewPercentPlayTimeVisible -> "METRIC_ACTIVE_VIEW_PERCENT_PLAY_TIME_VISIBLE"
        MetricAdaptedAudienceFrequency -> "METRIC_ADAPTED_AUDIENCE_FREQUENCY"
        MetricAdlingoFeeAdvertiserCurrency -> "METRIC_ADLINGO_FEE_ADVERTISER_CURRENCY"
        MetricAudioClientCostEcpclAdvertiserCurrency -> "METRIC_AUDIO_CLIENT_COST_ECPCL_ADVERTISER_CURRENCY"
        MetricAudioMediaCostEcpclAdvertiserCurrency -> "METRIC_AUDIO_MEDIA_COST_ECPCL_ADVERTISER_CURRENCY"
        MetricAudioMutesAudio -> "METRIC_AUDIO_MUTES_AUDIO"
        MetricAudioRevenueEcpclAdvertiserCurrency -> "METRIC_AUDIO_REVENUE_ECPCL_ADVERTISER_CURRENCY"
        MetricAudioUnmutesAudio -> "METRIC_AUDIO_UNMUTES_AUDIO"
        MetricAudioUnmutesVideo -> "METRIC_AUDIO_UNMUTES_VIDEO"
        MetricAverageDisplayTime -> "METRIC_AVERAGE_DISPLAY_TIME"
        MetricAverageImpressionFrequencyPerUser -> "METRIC_AVERAGE_IMPRESSION_FREQUENCY_PER_USER"
        MetricAverageInteractionTime -> "METRIC_AVERAGE_INTERACTION_TIME"
        MetricAverageWatchTimePerImpression -> "METRIC_AVERAGE_WATCH_TIME_PER_IMPRESSION"
        MetricBeginToRenderEligibleImpressions -> "METRIC_BEGIN_TO_RENDER_ELIGIBLE_IMPRESSIONS"
        MetricBeginToRenderImpressions -> "METRIC_BEGIN_TO_RENDER_IMPRESSIONS"
        MetricBenchmarkFrequency -> "METRIC_BENCHMARK_FREQUENCY"
        MetricBrandLiftAbsoluteBrandLift -> "METRIC_BRAND_LIFT_ABSOLUTE_BRAND_LIFT"
        MetricBrandLiftAllSurveyResponses -> "METRIC_BRAND_LIFT_ALL_SURVEY_RESPONSES"
        MetricBrandLiftBaselinePositiveResponseRate -> "METRIC_BRAND_LIFT_BASELINE_POSITIVE_RESPONSE_RATE"
        MetricBrandLiftBaselineSurveyResponses -> "METRIC_BRAND_LIFT_BASELINE_SURVEY_RESPONSES"
        MetricBrandLiftCostPerLiftedUser -> "METRIC_BRAND_LIFT_COST_PER_LIFTED_USER"
        MetricBrandLiftExposedSurveyResponses -> "METRIC_BRAND_LIFT_EXPOSED_SURVEY_RESPONSES"
        MetricBrandLiftHeadroomBrandLift -> "METRIC_BRAND_LIFT_HEADROOM_BRAND_LIFT"
        MetricBrandLiftRelativeBrandLift -> "METRIC_BRAND_LIFT_RELATIVE_BRAND_LIFT"
        MetricBrandLiftUsers -> "METRIC_BRAND_LIFT_USERS"
        MetricCardClicks -> "METRIC_CARD_CLICKS"
        MetricClientCostAdvertiserCurrency -> "METRIC_CLIENT_COST_ADVERTISER_CURRENCY"
        MetricClientCostEcpaAdvertiserCurrency -> "METRIC_CLIENT_COST_ECPA_ADVERTISER_CURRENCY"
        MetricClientCostEcpaPcAdvertiserCurrency -> "METRIC_CLIENT_COST_ECPA_PC_ADVERTISER_CURRENCY"
        MetricClientCostEcpaPvAdvertiserCurrency -> "METRIC_CLIENT_COST_ECPA_PV_ADVERTISER_CURRENCY"
        MetricClientCostEcpcAdvertiserCurrency -> "METRIC_CLIENT_COST_ECPC_ADVERTISER_CURRENCY"
        MetricClientCostEcpmAdvertiserCurrency -> "METRIC_CLIENT_COST_ECPM_ADVERTISER_CURRENCY"
        MetricClientCostViewableEcpmAdvertiserCurrency -> "METRIC_CLIENT_COST_VIEWABLE_ECPM_ADVERTISER_CURRENCY"
        MetricCmPostClickRevenueCrossEnvironment -> "METRIC_CM_POST_CLICK_REVENUE_CROSS_ENVIRONMENT"
        MetricCmPostViewRevenueCrossEnvironment -> "METRIC_CM_POST_VIEW_REVENUE_CROSS_ENVIRONMENT"
        MetricCompanionClicksAudio -> "METRIC_COMPANION_CLICKS_AUDIO"
        MetricCompanionImpressionsAudio -> "METRIC_COMPANION_IMPRESSIONS_AUDIO"
        MetricCompleteListensAudio -> "METRIC_COMPLETE_LISTENS_AUDIO"
        MetricCompletionRateAudio -> "METRIC_COMPLETION_RATE_AUDIO"
        MetricCounters -> "METRIC_COUNTERS"
        MetricCustomFee1AdvertiserCurrency -> "METRIC_CUSTOM_FEE_1_ADVERTISER_CURRENCY"
        MetricCustomFee2AdvertiserCurrency -> "METRIC_CUSTOM_FEE_2_ADVERTISER_CURRENCY"
        MetricCustomFee3AdvertiserCurrency -> "METRIC_CUSTOM_FEE_3_ADVERTISER_CURRENCY"
        MetricCustomFee4AdvertiserCurrency -> "METRIC_CUSTOM_FEE_4_ADVERTISER_CURRENCY"
        MetricCustomFee5AdvertiserCurrency -> "METRIC_CUSTOM_FEE_5_ADVERTISER_CURRENCY"
        MetricCustomValuePer1000Impressions -> "METRIC_CUSTOM_VALUE_PER_1000_IMPRESSIONS"
        MetricEngagements -> "METRIC_ENGAGEMENTS"
        MetricEstimatedCpmForImpressionsWithCustomValueAdvertiserCurrency -> "METRIC_ESTIMATED_CPM_FOR_IMPRESSIONS_WITH_CUSTOM_VALUE_ADVERTISER_CURRENCY"
        MetricEstimatedTotalCostForImpressionsWithCustomValueAdvertiserCurrency -> "METRIC_ESTIMATED_TOTAL_COST_FOR_IMPRESSIONS_WITH_CUSTOM_VALUE_ADVERTISER_CURRENCY"
        MetricExits -> "METRIC_EXITS"
        MetricExpansions -> "METRIC_EXPANSIONS"
        MetricFirstQuartileAudio -> "METRIC_FIRST_QUARTILE_AUDIO"
        MetricGeneralInvalidTrafficGivtImpressions -> "METRIC_GENERAL_INVALID_TRAFFIC_GIVT_IMPRESSIONS"
        MetricGeneralInvalidTrafficGivtTrackedAds -> "METRIC_GENERAL_INVALID_TRAFFIC_GIVT_TRACKED_ADS"
        MetricGivtActiveViewEligibleImpressions -> "METRIC_GIVT_ACTIVE_VIEW_ELIGIBLE_IMPRESSIONS"
        MetricGivtActiveViewMeasurableImpressions -> "METRIC_GIVT_ACTIVE_VIEW_MEASURABLE_IMPRESSIONS"
        MetricGivtActiveViewViewableImpressions -> "METRIC_GIVT_ACTIVE_VIEW_VIEWABLE_IMPRESSIONS"
        MetricGivtBeginToRenderImpressions -> "METRIC_GIVT_BEGIN_TO_RENDER_IMPRESSIONS"
        MetricGivtClicks -> "METRIC_GIVT_CLICKS"
        MetricGmailConversions -> "METRIC_GMAIL_CONVERSIONS"
        MetricGmailPostClickConversions -> "METRIC_GMAIL_POST_CLICK_CONVERSIONS"
        MetricGmailPostViewConversions -> "METRIC_GMAIL_POST_VIEW_CONVERSIONS"
        MetricGmailPotentialViews -> "METRIC_GMAIL_POTENTIAL_VIEWS"
        MetricImpressionsWithCustomValue -> "METRIC_IMPRESSIONS_WITH_CUSTOM_VALUE"
        MetricImpressionsWithPositiveCustomValue -> "METRIC_IMPRESSIONS_WITH_POSITIVE_CUSTOM_VALUE"
        MetricImpressionCustomValueCost -> "METRIC_IMPRESSION_CUSTOM_VALUE_COST"
        MetricInteractiveImpressions -> "METRIC_INTERACTIVE_IMPRESSIONS"
        MetricInvalidActiveViewEligibleImpressions -> "METRIC_INVALID_ACTIVE_VIEW_ELIGIBLE_IMPRESSIONS"
        MetricInvalidActiveViewMeasurableImpressions -> "METRIC_INVALID_ACTIVE_VIEW_MEASURABLE_IMPRESSIONS"
        MetricInvalidActiveViewViewableImpressions -> "METRIC_INVALID_ACTIVE_VIEW_VIEWABLE_IMPRESSIONS"
        MetricInvalidBeginToRenderImpressions -> "METRIC_INVALID_BEGIN_TO_RENDER_IMPRESSIONS"
        MetricInvalidClicks -> "METRIC_INVALID_CLICKS"
        MetricInvalidImpressions -> "METRIC_INVALID_IMPRESSIONS"
        MetricInvalidTrackedAds -> "METRIC_INVALID_TRACKED_ADS"
        MetricMediaCostAdvertiserCurrencyPerStoreVisitAdxOnly -> "METRIC_MEDIA_COST_ADVERTISER_CURRENCY_PER_STORE_VISIT_ADX_ONLY"
        MetricMidpointAudio -> "METRIC_MIDPOINT_AUDIO"
        MetricOriginalAudienceFrequency -> "METRIC_ORIGINAL_AUDIENCE_FREQUENCY"
        MetricPausesAudio -> "METRIC_PAUSES_AUDIO"
        MetricPercentImpressionsWithPositiveCustomValue -> "METRIC_PERCENT_IMPRESSIONS_WITH_POSITIVE_CUSTOM_VALUE"
        MetricPlatformFeeRate -> "METRIC_PLATFORM_FEE_RATE"
        MetricPostClickConversionsCrossEnvironment -> "METRIC_POST_CLICK_CONVERSIONS_CROSS_ENVIRONMENT"
        MetricPostViewConversionsCrossEnvironment -> "METRIC_POST_VIEW_CONVERSIONS_CROSS_ENVIRONMENT"
        MetricPotentialImpressions -> "METRIC_POTENTIAL_IMPRESSIONS"
        MetricPotentialViews -> "METRIC_POTENTIAL_VIEWS"
        MetricPremiumFeeAdvertiserCurrency -> "METRIC_PREMIUM_FEE_ADVERTISER_CURRENCY"
        MetricProgrammaticGuaranteedImpressionsPassedDueToFrequency -> "METRIC_PROGRAMMATIC_GUARANTEED_IMPRESSIONS_PASSED_DUE_TO_FREQUENCY"
        MetricProgrammaticGuaranteedSavingsReInvestedDueToFrequencyAdvertiserCurrency -> "METRIC_PROGRAMMATIC_GUARANTEED_SAVINGS_RE_INVESTED_DUE_TO_FREQUENCY_ADVERTISER_CURRENCY"
        MetricRefundBillableCostAdvertiserCurrency -> "METRIC_REFUND_BILLABLE_COST_ADVERTISER_CURRENCY"
        MetricRefundMediaCostAdvertiserCurrency -> "METRIC_REFUND_MEDIA_COST_ADVERTISER_CURRENCY"
        MetricRefundPlatformFeeAdvertiserCurrency -> "METRIC_REFUND_PLATFORM_FEE_ADVERTISER_CURRENCY"
        MetricRevenueAdvertiserCurrencyPerStoreVisitAdxOnly -> "METRIC_REVENUE_ADVERTISER_CURRENCY_PER_STORE_VISIT_ADX_ONLY"
        MetricRichMediaEngagements -> "METRIC_RICH_MEDIA_ENGAGEMENTS"
        MetricStartsAudio -> "METRIC_STARTS_AUDIO"
        MetricStopsAudio -> "METRIC_STOPS_AUDIO"
        MetricStoreVisitsAdxOnly -> "METRIC_STORE_VISITS_ADX_ONLY"
        MetricStoreVisitConversions -> "METRIC_STORE_VISIT_CONVERSIONS"
        MetricThirdQuartileAudio -> "METRIC_THIRD_QUARTILE_AUDIO"
        MetricTimers -> "METRIC_TIMERS"
        MetricTotalAudioMediaCostEcpclAdvertiserCurrency -> "METRIC_TOTAL_AUDIO_MEDIA_COST_ECPCL_ADVERTISER_CURRENCY"
        MetricTotalConversionsCrossEnvironment -> "METRIC_TOTAL_CONVERSIONS_CROSS_ENVIRONMENT"
        MetricTotalDisplayTime -> "METRIC_TOTAL_DISPLAY_TIME"
        MetricTotalImpressionCustomValue -> "METRIC_TOTAL_IMPRESSION_CUSTOM_VALUE"
        MetricTotalInteractionTime -> "METRIC_TOTAL_INTERACTION_TIME"
        MetricTotalMediaCostAdvertiserCurrencyPerStoreVisitAdxOnly -> "METRIC_TOTAL_MEDIA_COST_ADVERTISER_CURRENCY_PER_STORE_VISIT_ADX_ONLY"
        MetricTotalUsers -> "METRIC_TOTAL_USERS"
        MetricTrackedAds -> "METRIC_TRACKED_ADS"
        MetricTrueviewGeneralInvalidTrafficGivtViews -> "METRIC_TRUEVIEW_GENERAL_INVALID_TRAFFIC_GIVT_VIEWS"
        MetricTrueviewInvalidViews -> "METRIC_TRUEVIEW_INVALID_VIEWS"
        MetricUniqueCookiesWithImpressions -> "METRIC_UNIQUE_COOKIES_WITH_IMPRESSIONS"
        MetricUniqueReachAverageImpressionFrequency -> "METRIC_UNIQUE_REACH_AVERAGE_IMPRESSION_FREQUENCY"
        MetricUniqueReachClickReach -> "METRIC_UNIQUE_REACH_CLICK_REACH"
        MetricUniqueReachImpressionReach -> "METRIC_UNIQUE_REACH_IMPRESSION_REACH"
        MetricUniqueReachTotalReach -> "METRIC_UNIQUE_REACH_TOTAL_REACH"
        MetricVerifiableImpressions -> "METRIC_VERIFIABLE_IMPRESSIONS"
        MetricVideoClientCostEcpcvAdvertiserCurrency -> "METRIC_VIDEO_CLIENT_COST_ECPCV_ADVERTISER_CURRENCY"
        MetricWatchTime -> "METRIC_WATCH_TIME"
        MetricLastTouchTotalConversions -> "METRIC_LAST_TOUCH_TOTAL_CONVERSIONS"
        MetricLastTouchClickThroughConversions -> "METRIC_LAST_TOUCH_CLICK_THROUGH_CONVERSIONS"
        MetricLastTouchViewThroughConversions -> "METRIC_LAST_TOUCH_VIEW_THROUGH_CONVERSIONS"
        MetricTotalPaths -> "METRIC_TOTAL_PATHS"
        MetricTotalExposures -> "METRIC_TOTAL_EXPOSURES"
        MetricPathConversionRate -> "METRIC_PATH_CONVERSION_RATE"
        MetricConvertingPaths -> "METRIC_CONVERTING_PATHS"
        MetricActivityRevenue -> "METRIC_ACTIVITY_REVENUE"
        MetricPercentInvalidImpressionsPreBid -> "METRIC_PERCENT_INVALID_IMPRESSIONS_PREBID"
        MetricGrpCorrectedImpressions -> "METRIC_GRP_CORRECTED_IMPRESSIONS"
        MetricDemoCorrectedClicks -> "METRIC_DEMO_CORRECTED_CLICKS"
        MetricVirtualPeopleImpressionReachByDemo -> "METRIC_VIRTUAL_PEOPLE_IMPRESSION_REACH_BY_DEMO"
        MetricVirtualPeopleClickReachByDemo -> "METRIC_VIRTUAL_PEOPLE_CLICK_REACH_BY_DEMO"
        MetricVirtualPeopleAverageImpressionFrequencyByDemo -> "METRIC_VIRTUAL_PEOPLE_AVERAGE_IMPRESSION_FREQUENCY_BY_DEMO"
        MetricDemoComPositionImpression -> "METRIC_DEMO_COMPOSITION_IMPRESSION"
        MetricVirtualPeopleImpressionReachSharePercent -> "METRIC_VIRTUAL_PEOPLE_IMPRESSION_REACH_SHARE_PERCENT"
        MetricDemoPopulation -> "METRIC_DEMO_POPULATION"
        MetricVirtualPeopleImpressionReachPercent -> "METRIC_VIRTUAL_PEOPLE_IMPRESSION_REACH_PERCENT"
        MetricTargetRatingPoints -> "METRIC_TARGET_RATING_POINTS"
        MetricProvisionalImpressions -> "METRIC_PROVISIONAL_IMPRESSIONS"
        MetricVendorBlockedAds -> "METRIC_VENDOR_BLOCKED_ADS"
        MetricGrpCorrectedViewableImpressions -> "METRIC_GRP_CORRECTED_VIEWABLE_IMPRESSIONS"
        MetricGrpCorrectedViewableImpressionsSharePercent -> "METRIC_GRP_CORRECTED_VIEWABLE_IMPRESSIONS_SHARE_PERCENT"
        MetricViewableGrossRatingPoints -> "METRIC_VIEWABLE_GROSS_RATING_POINTS"
        MetricVirtualPeopleAverageViewableImpressionFrequencyByDemo -> "METRIC_VIRTUAL_PEOPLE_AVERAGE_VIEWABLE_IMPRESSION_FREQUENCY_BY_DEMO"
        MetricVirtualPeopleViewableImpressionReachByDemo -> "METRIC_VIRTUAL_PEOPLE_VIEWABLE_IMPRESSION_REACH_BY_DEMO"
        MetricVirtualPeopleViewableImpressionReachPercent -> "METRIC_VIRTUAL_PEOPLE_VIEWABLE_IMPRESSION_REACH_PERCENT"
        MetricVirtualPeopleViewableImpressionReachSharePercent -> "METRIC_VIRTUAL_PEOPLE_VIEWABLE_IMPRESSION_REACH_SHARE_PERCENT"
        MetricEngagementRate -> "METRIC_ENGAGEMENT_RATE"
        MetricCM360PostViewRevenue -> "METRIC_CM360_POST_VIEW_REVENUE"
        MetricCM360PostClickRevenue -> "METRIC_CM360_POST_CLICK_REVENUE"
        MetricCM360PostClickRevenueCrossEnvironment -> "METRIC_CM360_POST_CLICK_REVENUE_CROSS_ENVIRONMENT"
        MetricCM360PostViewRevenueCrossEnvironment -> "METRIC_CM360_POST_VIEW_REVENUE_CROSS_ENVIRONMENT"
        MetricPercentageFromCurrentIoGoal -> "METRIC_PERCENTAGE_FROM_CURRENT_IO_GOAL"
        MetricDuplicateFloodlightImpressions -> "METRIC_DUPLICATE_FLOODLIGHT_IMPRESSIONS"
        MetricCookieConsentedFloodlightImpressions -> "METRIC_COOKIE_CONSENTED_FLOODLIGHT_IMPRESSIONS"
        MetricCookieUnconsentedFloodlightImpressions -> "METRIC_COOKIE_UNCONSENTED_FLOODLIGHT_IMPRESSIONS"
        MetricTrackingUnconsentedClicks -> "METRIC_TRACKING_UNCONSENTED_CLICKS"

instance FromJSON ParametersMetricsItem where
    parseJSON = parseJSONText "ParametersMetricsItem"

instance ToJSON ParametersMetricsItem where
    toJSON = toJSONText

-- | How often the query is run.
data QueryScheduleFrequency
    = OneTime
      -- ^ @ONE_TIME@
    | Daily
      -- ^ @DAILY@
    | Weekly
      -- ^ @WEEKLY@
    | SemiMonthly
      -- ^ @SEMI_MONTHLY@
    | Monthly
      -- ^ @MONTHLY@
    | Quarterly
      -- ^ @QUARTERLY@
    | Yearly
      -- ^ @YEARLY@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable QueryScheduleFrequency

instance FromHttpApiData QueryScheduleFrequency where
    parseQueryParam = \case
        "ONE_TIME" -> Right OneTime
        "DAILY" -> Right Daily
        "WEEKLY" -> Right Weekly
        "SEMI_MONTHLY" -> Right SemiMonthly
        "MONTHLY" -> Right Monthly
        "QUARTERLY" -> Right Quarterly
        "YEARLY" -> Right Yearly
        x -> Left ("Unable to parse QueryScheduleFrequency from: " <> x)

instance ToHttpApiData QueryScheduleFrequency where
    toQueryParam = \case
        OneTime -> "ONE_TIME"
        Daily -> "DAILY"
        Weekly -> "WEEKLY"
        SemiMonthly -> "SEMI_MONTHLY"
        Monthly -> "MONTHLY"
        Quarterly -> "QUARTERLY"
        Yearly -> "YEARLY"

instance FromJSON QueryScheduleFrequency where
    parseJSON = parseJSONText "QueryScheduleFrequency"

instance ToJSON QueryScheduleFrequency where
    toJSON = toJSONText

-- | Indicates how the filter should be matched to the value.
data PathQueryOptionsFilterMatch
    = Unknown
      -- ^ @UNKNOWN@
    | Exact
      -- ^ @EXACT@
    | Partial
      -- ^ @PARTIAL@
    | BeginsWith
      -- ^ @BEGINS_WITH@
    | WildcardExpression
      -- ^ @WILDCARD_EXPRESSION@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable PathQueryOptionsFilterMatch

instance FromHttpApiData PathQueryOptionsFilterMatch where
    parseQueryParam = \case
        "UNKNOWN" -> Right Unknown
        "EXACT" -> Right Exact
        "PARTIAL" -> Right Partial
        "BEGINS_WITH" -> Right BeginsWith
        "WILDCARD_EXPRESSION" -> Right WildcardExpression
        x -> Left ("Unable to parse PathQueryOptionsFilterMatch from: " <> x)

instance ToHttpApiData PathQueryOptionsFilterMatch where
    toQueryParam = \case
        Unknown -> "UNKNOWN"
        Exact -> "EXACT"
        Partial -> "PARTIAL"
        BeginsWith -> "BEGINS_WITH"
        WildcardExpression -> "WILDCARD_EXPRESSION"

instance FromJSON PathQueryOptionsFilterMatch where
    parseJSON = parseJSONText "PathQueryOptionsFilterMatch"

instance ToJSON PathQueryOptionsFilterMatch where
    toJSON = toJSONText

-- | V1 error format.
data Xgafv
    = X1
      -- ^ @1@
      -- v1 error format
    | X2
      -- ^ @2@
      -- v2 error format
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable Xgafv

instance FromHttpApiData Xgafv where
    parseQueryParam = \case
        "1" -> Right X1
        "2" -> Right X2
        x -> Left ("Unable to parse Xgafv from: " <> x)

instance ToHttpApiData Xgafv where
    toQueryParam = \case
        X1 -> "1"
        X2 -> "2"

instance FromJSON Xgafv where
    parseJSON = parseJSONText "Xgafv"

instance ToJSON Xgafv where
    toJSON = toJSONText

-- | Indicates the position of the path the filter should match to (first,
-- last, or any event in path).
data PathFilterPathMatchPosition
    = Any
      -- ^ @ANY@
    | First
      -- ^ @FIRST@
    | Last
      -- ^ @LAST@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable PathFilterPathMatchPosition

instance FromHttpApiData PathFilterPathMatchPosition where
    parseQueryParam = \case
        "ANY" -> Right Any
        "FIRST" -> Right First
        "LAST" -> Right Last
        x -> Left ("Unable to parse PathFilterPathMatchPosition from: " <> x)

instance ToHttpApiData PathFilterPathMatchPosition where
    toQueryParam = \case
        Any -> "ANY"
        First -> "FIRST"
        Last -> "LAST"

instance FromJSON PathFilterPathMatchPosition where
    parseJSON = parseJSONText "PathFilterPathMatchPosition"

instance ToJSON PathFilterPathMatchPosition where
    toJSON = toJSONText

-- | Filter type.
data FilterPairType
    = FPTFilterUnknown
      -- ^ @FILTER_UNKNOWN@
    | FPTFilterDate
      -- ^ @FILTER_DATE@
    | FPTFilterDayOfWeek
      -- ^ @FILTER_DAY_OF_WEEK@
    | FPTFilterWeek
      -- ^ @FILTER_WEEK@
    | FPTFilterMonth
      -- ^ @FILTER_MONTH@
    | FPTFilterYear
      -- ^ @FILTER_YEAR@
    | FPTFilterTimeOfDay
      -- ^ @FILTER_TIME_OF_DAY@
    | FPTFilterConversionDelay
      -- ^ @FILTER_CONVERSION_DELAY@
    | FPTFilterCreativeId
      -- ^ @FILTER_CREATIVE_ID@
    | FPTFilterCreativeSize
      -- ^ @FILTER_CREATIVE_SIZE@
    | FPTFilterCreativeType
      -- ^ @FILTER_CREATIVE_TYPE@
    | FPTFilterExchangeId
      -- ^ @FILTER_EXCHANGE_ID@
    | FPTFilterAdPosition
      -- ^ @FILTER_AD_POSITION@
    | FPTFilterPublicInventory
      -- ^ @FILTER_PUBLIC_INVENTORY@
    | FPTFilterInventorySource
      -- ^ @FILTER_INVENTORY_SOURCE@
    | FPTFilterCity
      -- ^ @FILTER_CITY@
    | FPTFilterRegion
      -- ^ @FILTER_REGION@
    | FPTFilterDma
      -- ^ @FILTER_DMA@
    | FPTFilterCountry
      -- ^ @FILTER_COUNTRY@
    | FPTFilterSiteId
      -- ^ @FILTER_SITE_ID@
    | FPTFilterChannelId
      -- ^ @FILTER_CHANNEL_ID@
    | FPTFilterPartner
      -- ^ @FILTER_PARTNER@
    | FPTFilterAdvertiser
      -- ^ @FILTER_ADVERTISER@
    | FPTFilterInsertionOrder
      -- ^ @FILTER_INSERTION_ORDER@
    | FPTFilterLineItem
      -- ^ @FILTER_LINE_ITEM@
    | FPTFilterPartnerCurrency
      -- ^ @FILTER_PARTNER_CURRENCY@
    | FPTFilterAdvertiserCurrency
      -- ^ @FILTER_ADVERTISER_CURRENCY@
    | FPTFilterAdvertiserTimezone
      -- ^ @FILTER_ADVERTISER_TIMEZONE@
    | FPTFilterLineItemType
      -- ^ @FILTER_LINE_ITEM_TYPE@
    | FPTFilterUserList
      -- ^ @FILTER_USER_LIST@
    | FPTFilterUserListFirstParty
      -- ^ @FILTER_USER_LIST_FIRST_PARTY@
    | FPTFilterUserListThirdParty
      -- ^ @FILTER_USER_LIST_THIRD_PARTY@
    | FPTFilterTargetedUserList
      -- ^ @FILTER_TARGETED_USER_LIST@
    | FPTFilterDataProvider
      -- ^ @FILTER_DATA_PROVIDER@
    | FPTFilterOrderId
      -- ^ @FILTER_ORDER_ID@
    | FPTFilterVideoPlayerSize
      -- ^ @FILTER_VIDEO_PLAYER_SIZE@
    | FPTFilterVideoDurationSeconds
      -- ^ @FILTER_VIDEO_DURATION_SECONDS@
    | FPTFilterKeyword
      -- ^ @FILTER_KEYWORD@
    | FPTFilterPageCategory
      -- ^ @FILTER_PAGE_CATEGORY@
    | FPTFilterCampaignDailyFrequency
      -- ^ @FILTER_CAMPAIGN_DAILY_FREQUENCY@
    | FPTFilterLineItemDailyFrequency
      -- ^ @FILTER_LINE_ITEM_DAILY_FREQUENCY@
    | FPTFilterLineItemLifetimeFrequency
      -- ^ @FILTER_LINE_ITEM_LIFETIME_FREQUENCY@
    | FPTFilterOS
      -- ^ @FILTER_OS@
    | FPTFilterBrowser
      -- ^ @FILTER_BROWSER@
    | FPTFilterCarrier
      -- ^ @FILTER_CARRIER@
    | FPTFilterSiteLanguage
      -- ^ @FILTER_SITE_LANGUAGE@
    | FPTFilterInventoryFormat
      -- ^ @FILTER_INVENTORY_FORMAT@
    | FPTFilterZipCode
      -- ^ @FILTER_ZIP_CODE@
    | FPTFilterVideoRatingTier
      -- ^ @FILTER_VIDEO_RATING_TIER@
    | FPTFilterVideoFormatSupport
      -- ^ @FILTER_VIDEO_FORMAT_SUPPORT@
    | FPTFilterVideoSkippableSupport
      -- ^ @FILTER_VIDEO_SKIPPABLE_SUPPORT@
    | FPTFilterVideoCreativeDuration
      -- ^ @FILTER_VIDEO_CREATIVE_DURATION@
    | FPTFilterPageLayout
      -- ^ @FILTER_PAGE_LAYOUT@
    | FPTFilterVideoAdPositionInStream
      -- ^ @FILTER_VIDEO_AD_POSITION_IN_STREAM@
    | FPTFilterAge
      -- ^ @FILTER_AGE@
    | FPTFilterGender
      -- ^ @FILTER_GENDER@
    | FPTFilterQuarter
      -- ^ @FILTER_QUARTER@
    | FPTFilterTrueviewConversionType
      -- ^ @FILTER_TRUEVIEW_CONVERSION_TYPE@
    | FPTFilterMobileGeo
      -- ^ @FILTER_MOBILE_GEO@
    | FPTFilterMraidSupport
      -- ^ @FILTER_MRAID_SUPPORT@
    | FPTFilterActiveViewExpectedViewability
      -- ^ @FILTER_ACTIVE_VIEW_EXPECTED_VIEWABILITY@
    | FPTFilterVideoCreativeDurationSkippable
      -- ^ @FILTER_VIDEO_CREATIVE_DURATION_SKIPPABLE@
    | FPTFilterNielsenCountryCode
      -- ^ @FILTER_NIELSEN_COUNTRY_CODE@
    | FPTFilterNielsenDeviceId
      -- ^ @FILTER_NIELSEN_DEVICE_ID@
    | FPTFilterNielsenGender
      -- ^ @FILTER_NIELSEN_GENDER@
    | FPTFilterNielsenAge
      -- ^ @FILTER_NIELSEN_AGE@
    | FPTFilterInventorySourceType
      -- ^ @FILTER_INVENTORY_SOURCE_TYPE@
    | FPTFilterCreativeWidth
      -- ^ @FILTER_CREATIVE_WIDTH@
    | FPTFilterCreativeHeight
      -- ^ @FILTER_CREATIVE_HEIGHT@
    | FPTFilterDfpOrderId
      -- ^ @FILTER_DFP_ORDER_ID@
    | FPTFilterTrueviewAge
      -- ^ @FILTER_TRUEVIEW_AGE@
    | FPTFilterTrueviewGender
      -- ^ @FILTER_TRUEVIEW_GENDER@
    | FPTFilterTrueviewParentalStatus
      -- ^ @FILTER_TRUEVIEW_PARENTAL_STATUS@
    | FPTFilterTrueviewRemarketingList
      -- ^ @FILTER_TRUEVIEW_REMARKETING_LIST@
    | FPTFilterTrueviewInterest
      -- ^ @FILTER_TRUEVIEW_INTEREST@
    | FPTFilterTrueviewAdGroupId
      -- ^ @FILTER_TRUEVIEW_AD_GROUP_ID@
    | FPTFilterTrueviewAdGroupAdId
      -- ^ @FILTER_TRUEVIEW_AD_GROUP_AD_ID@
    | FPTFilterTrueviewIarLanguage
      -- ^ @FILTER_TRUEVIEW_IAR_LANGUAGE@
    | FPTFilterTrueviewIarGender
      -- ^ @FILTER_TRUEVIEW_IAR_GENDER@
    | FPTFilterTrueviewIarAge
      -- ^ @FILTER_TRUEVIEW_IAR_AGE@
    | FPTFilterTrueviewIarCategory
      -- ^ @FILTER_TRUEVIEW_IAR_CATEGORY@
    | FPTFilterTrueviewIarCountry
      -- ^ @FILTER_TRUEVIEW_IAR_COUNTRY@
    | FPTFilterTrueviewIarCity
      -- ^ @FILTER_TRUEVIEW_IAR_CITY@
    | FPTFilterTrueviewIarRegion
      -- ^ @FILTER_TRUEVIEW_IAR_REGION@
    | FPTFilterTrueviewIarZipcode
      -- ^ @FILTER_TRUEVIEW_IAR_ZIPCODE@
    | FPTFilterTrueviewIarRemarketingList
      -- ^ @FILTER_TRUEVIEW_IAR_REMARKETING_LIST@
    | FPTFilterTrueviewIarInterest
      -- ^ @FILTER_TRUEVIEW_IAR_INTEREST@
    | FPTFilterTrueviewIarParentalStatus
      -- ^ @FILTER_TRUEVIEW_IAR_PARENTAL_STATUS@
    | FPTFilterTrueviewIarTimeOfDay
      -- ^ @FILTER_TRUEVIEW_IAR_TIME_OF_DAY@
    | FPTFilterTrueviewCustomAffinity
      -- ^ @FILTER_TRUEVIEW_CUSTOM_AFFINITY@
    | FPTFilterTrueviewCategory
      -- ^ @FILTER_TRUEVIEW_CATEGORY@
    | FPTFilterTrueviewKeyword
      -- ^ @FILTER_TRUEVIEW_KEYWORD@
    | FPTFilterTrueviewPlacement
      -- ^ @FILTER_TRUEVIEW_PLACEMENT@
    | FPTFilterTrueviewURL
      -- ^ @FILTER_TRUEVIEW_URL@
    | FPTFilterTrueviewCountry
      -- ^ @FILTER_TRUEVIEW_COUNTRY@
    | FPTFilterTrueviewRegion
      -- ^ @FILTER_TRUEVIEW_REGION@
    | FPTFilterTrueviewCity
      -- ^ @FILTER_TRUEVIEW_CITY@
    | FPTFilterTrueviewDma
      -- ^ @FILTER_TRUEVIEW_DMA@
    | FPTFilterTrueviewZipcode
      -- ^ @FILTER_TRUEVIEW_ZIPCODE@
    | FPTFilterNotSupported
      -- ^ @FILTER_NOT_SUPPORTED@
    | FPTFilterMediaPlan
      -- ^ @FILTER_MEDIA_PLAN@
    | FPTFilterTrueviewIarYouTubeChannel
      -- ^ @FILTER_TRUEVIEW_IAR_YOUTUBE_CHANNEL@
    | FPTFilterTrueviewIarYouTubeVideo
      -- ^ @FILTER_TRUEVIEW_IAR_YOUTUBE_VIDEO@
    | FPTFilterSkippableSupport
      -- ^ @FILTER_SKIPPABLE_SUPPORT@
    | FPTFilterCompanionCreativeId
      -- ^ @FILTER_COMPANION_CREATIVE_ID@
    | FPTFilterBudgetSegmentDescription
      -- ^ @FILTER_BUDGET_SEGMENT_DESCRIPTION@
    | FPTFilterFloodlightActivityId
      -- ^ @FILTER_FLOODLIGHT_ACTIVITY_ID@
    | FPTFilterDeviceModel
      -- ^ @FILTER_DEVICE_MODEL@
    | FPTFilterDeviceMake
      -- ^ @FILTER_DEVICE_MAKE@
    | FPTFilterDeviceType
      -- ^ @FILTER_DEVICE_TYPE@
    | FPTFilterCreativeAttribute
      -- ^ @FILTER_CREATIVE_ATTRIBUTE@
    | FPTFilterInventoryCommitmentType
      -- ^ @FILTER_INVENTORY_COMMITMENT_TYPE@
    | FPTFilterInventoryRateType
      -- ^ @FILTER_INVENTORY_RATE_TYPE@
    | FPTFilterInventoryDeliveryMethod
      -- ^ @FILTER_INVENTORY_DELIVERY_METHOD@
    | FPTFilterInventorySourceExternalId
      -- ^ @FILTER_INVENTORY_SOURCE_EXTERNAL_ID@
    | FPTFilterAuthorizedSellerState
      -- ^ @FILTER_AUTHORIZED_SELLER_STATE@
    | FPTFilterVideoDurationSecondsRange
      -- ^ @FILTER_VIDEO_DURATION_SECONDS_RANGE@
    | FPTFilterPartnerName
      -- ^ @FILTER_PARTNER_NAME@
    | FPTFilterPartnerStatus
      -- ^ @FILTER_PARTNER_STATUS@
    | FPTFilterAdvertiserName
      -- ^ @FILTER_ADVERTISER_NAME@
    | FPTFilterAdvertiserIntegrationCode
      -- ^ @FILTER_ADVERTISER_INTEGRATION_CODE@
    | FPTFilterAdvertiserIntegrationStatus
      -- ^ @FILTER_ADVERTISER_INTEGRATION_STATUS@
    | FPTFilterCarrierName
      -- ^ @FILTER_CARRIER_NAME@
    | FPTFilterChannelName
      -- ^ @FILTER_CHANNEL_NAME@
    | FPTFilterCityName
      -- ^ @FILTER_CITY_NAME@
    | FPTFilterCompanionCreativeName
      -- ^ @FILTER_COMPANION_CREATIVE_NAME@
    | FPTFilterUserListFirstPartyName
      -- ^ @FILTER_USER_LIST_FIRST_PARTY_NAME@
    | FPTFilterUserListThirdPartyName
      -- ^ @FILTER_USER_LIST_THIRD_PARTY_NAME@
    | FPTFilterNielsenReStatementDate
      -- ^ @FILTER_NIELSEN_RESTATEMENT_DATE@
    | FPTFilterNielsenDateRange
      -- ^ @FILTER_NIELSEN_DATE_RANGE@
    | FPTFilterInsertionOrderName
      -- ^ @FILTER_INSERTION_ORDER_NAME@
    | FPTFilterRegionName
      -- ^ @FILTER_REGION_NAME@
    | FPTFilterDmaName
      -- ^ @FILTER_DMA_NAME@
    | FPTFilterTrueviewIarRegionName
      -- ^ @FILTER_TRUEVIEW_IAR_REGION_NAME@
    | FPTFilterTrueviewDmaName
      -- ^ @FILTER_TRUEVIEW_DMA_NAME@
    | FPTFilterTrueviewRegionName
      -- ^ @FILTER_TRUEVIEW_REGION_NAME@
    | FPTFilterActiveViewCustomMetricId
      -- ^ @FILTER_ACTIVE_VIEW_CUSTOM_METRIC_ID@
    | FPTFilterActiveViewCustomMetricName
      -- ^ @FILTER_ACTIVE_VIEW_CUSTOM_METRIC_NAME@
    | FPTFilterAdType
      -- ^ @FILTER_AD_TYPE@
    | FPTFilterAlgorithm
      -- ^ @FILTER_ALGORITHM@
    | FPTFilterAlgorithmId
      -- ^ @FILTER_ALGORITHM_ID@
    | FPTFilterAmpPageRequest
      -- ^ @FILTER_AMP_PAGE_REQUEST@
    | FPTFilterAnonymousInventoryModeling
      -- ^ @FILTER_ANONYMOUS_INVENTORY_MODELING@
    | FPTFilterAppURL
      -- ^ @FILTER_APP_URL@
    | FPTFilterAppURLExcluded
      -- ^ @FILTER_APP_URL_EXCLUDED@
    | FPTFilterAttributedUserList
      -- ^ @FILTER_ATTRIBUTED_USERLIST@
    | FPTFilterAttributedUserListCost
      -- ^ @FILTER_ATTRIBUTED_USERLIST_COST@
    | FPTFilterAttributedUserListType
      -- ^ @FILTER_ATTRIBUTED_USERLIST_TYPE@
    | FPTFilterAttributionModel
      -- ^ @FILTER_ATTRIBUTION_MODEL@
    | FPTFilterAudienceList
      -- ^ @FILTER_AUDIENCE_LIST@
    | FPTFilterAudienceListCost
      -- ^ @FILTER_AUDIENCE_LIST_COST@
    | FPTFilterAudienceListType
      -- ^ @FILTER_AUDIENCE_LIST_TYPE@
    | FPTFilterAudienceName
      -- ^ @FILTER_AUDIENCE_NAME@
    | FPTFilterAudienceType
      -- ^ @FILTER_AUDIENCE_TYPE@
    | FPTFilterBillableOutcome
      -- ^ @FILTER_BILLABLE_OUTCOME@
    | FPTFilterBrandLiftType
      -- ^ @FILTER_BRAND_LIFT_TYPE@
    | FPTFilterChannelType
      -- ^ @FILTER_CHANNEL_TYPE@
    | FPTFilterCmPlacementId
      -- ^ @FILTER_CM_PLACEMENT_ID@
    | FPTFilterConversionSource
      -- ^ @FILTER_CONVERSION_SOURCE@
    | FPTFilterConversionSourceId
      -- ^ @FILTER_CONVERSION_SOURCE_ID@
    | FPTFilterCountryId
      -- ^ @FILTER_COUNTRY_ID@
    | FPTFilterCreative
      -- ^ @FILTER_CREATIVE@
    | FPTFilterCreativeAsset
      -- ^ @FILTER_CREATIVE_ASSET@
    | FPTFilterCreativeIntegrationCode
      -- ^ @FILTER_CREATIVE_INTEGRATION_CODE@
    | FPTFilterCreativeRenderedInAmp
      -- ^ @FILTER_CREATIVE_RENDERED_IN_AMP@
    | FPTFilterCreativeSource
      -- ^ @FILTER_CREATIVE_SOURCE@
    | FPTFilterCreativeStatus
      -- ^ @FILTER_CREATIVE_STATUS@
    | FPTFilterDataProviderName
      -- ^ @FILTER_DATA_PROVIDER_NAME@
    | FPTFilterDetailedDemographics
      -- ^ @FILTER_DETAILED_DEMOGRAPHICS@
    | FPTFilterDetailedDemographicsId
      -- ^ @FILTER_DETAILED_DEMOGRAPHICS_ID@
    | FPTFilterDevice
      -- ^ @FILTER_DEVICE@
    | FPTFilterGamInsertionOrder
      -- ^ @FILTER_GAM_INSERTION_ORDER@
    | FPTFilterGamLineItem
      -- ^ @FILTER_GAM_LINE_ITEM@
    | FPTFilterGamLineItemId
      -- ^ @FILTER_GAM_LINE_ITEM_ID@
    | FPTFilterDigitalContentLabel
      -- ^ @FILTER_DIGITAL_CONTENT_LABEL@
    | FPTFilterDomain
      -- ^ @FILTER_DOMAIN@
    | FPTFilterEligibleCookiesOnFirstPartyAudienceList
      -- ^ @FILTER_ELIGIBLE_COOKIES_ON_FIRST_PARTY_AUDIENCE_LIST@
    | FPTFilterEligibleCookiesOnThirdPartyAudienceListAndInterest
      -- ^ @FILTER_ELIGIBLE_COOKIES_ON_THIRD_PARTY_AUDIENCE_LIST_AND_INTEREST@
    | FPTFilterExchange
      -- ^ @FILTER_EXCHANGE@
    | FPTFilterExchangeCode
      -- ^ @FILTER_EXCHANGE_CODE@
    | FPTFilterExtension
      -- ^ @FILTER_EXTENSION@
    | FPTFilterExtensionStatus
      -- ^ @FILTER_EXTENSION_STATUS@
    | FPTFilterExtensionType
      -- ^ @FILTER_EXTENSION_TYPE@
    | FPTFilterFirstPartyAudienceListCost
      -- ^ @FILTER_FIRST_PARTY_AUDIENCE_LIST_COST@
    | FPTFilterFirstPartyAudienceListType
      -- ^ @FILTER_FIRST_PARTY_AUDIENCE_LIST_TYPE@
    | FPTFilterFloodlightActivity
      -- ^ @FILTER_FLOODLIGHT_ACTIVITY@
    | FPTFilterFormat
      -- ^ @FILTER_FORMAT@
    | FPTFilterGmailAge
      -- ^ @FILTER_GMAIL_AGE@
    | FPTFilterGmailCity
      -- ^ @FILTER_GMAIL_CITY@
    | FPTFilterGmailCountry
      -- ^ @FILTER_GMAIL_COUNTRY@
    | FPTFilterGmailCountryName
      -- ^ @FILTER_GMAIL_COUNTRY_NAME@
    | FPTFilterGmailDeviceType
      -- ^ @FILTER_GMAIL_DEVICE_TYPE@
    | FPTFilterGmailDeviceTypeName
      -- ^ @FILTER_GMAIL_DEVICE_TYPE_NAME@
    | FPTFilterGmailGender
      -- ^ @FILTER_GMAIL_GENDER@
    | FPTFilterGmailRegion
      -- ^ @FILTER_GMAIL_REGION@
    | FPTFilterGmailRemarketingList
      -- ^ @FILTER_GMAIL_REMARKETING_LIST@
    | FPTFilterHouseholdIncome
      -- ^ @FILTER_HOUSEHOLD_INCOME@
    | FPTFilterImpressionCountingMethod
      -- ^ @FILTER_IMPRESSION_COUNTING_METHOD@
    | FPTFilterYouTubeProgrammaticGuaranteedInsertionOrder
      -- ^ @FILTER_YOUTUBE_PROGRAMMATIC_GUARANTEED_INSERTION_ORDER@
    | FPTFilterInsertionOrderIntegrationCode
      -- ^ @FILTER_INSERTION_ORDER_INTEGRATION_CODE@
    | FPTFilterInsertionOrderStatus
      -- ^ @FILTER_INSERTION_ORDER_STATUS@
    | FPTFilterInterest
      -- ^ @FILTER_INTEREST@
    | FPTFilterInventorySourceGroup
      -- ^ @FILTER_INVENTORY_SOURCE_GROUP@
    | FPTFilterInventorySourceGroupId
      -- ^ @FILTER_INVENTORY_SOURCE_GROUP_ID@
    | FPTFilterInventorySourceId
      -- ^ @FILTER_INVENTORY_SOURCE_ID@
    | FPTFilterInventorySourceName
      -- ^ @FILTER_INVENTORY_SOURCE_NAME@
    | FPTFilterLifeEvent
      -- ^ @FILTER_LIFE_EVENT@
    | FPTFilterLifeEvents
      -- ^ @FILTER_LIFE_EVENTS@
    | FPTFilterLineItemIntegrationCode
      -- ^ @FILTER_LINE_ITEM_INTEGRATION_CODE@
    | FPTFilterLineItemName
      -- ^ @FILTER_LINE_ITEM_NAME@
    | FPTFilterLineItemStatus
      -- ^ @FILTER_LINE_ITEM_STATUS@
    | FPTFilterMatchRatio
      -- ^ @FILTER_MATCH_RATIO@
    | FPTFilterMeasurementSource
      -- ^ @FILTER_MEASUREMENT_SOURCE@
    | FPTFilterMediaPlanName
      -- ^ @FILTER_MEDIA_PLAN_NAME@
    | FPTFilterParentalStatus
      -- ^ @FILTER_PARENTAL_STATUS@
    | FPTFilterPlacementAllYouTubeChannels
      -- ^ @FILTER_PLACEMENT_ALL_YOUTUBE_CHANNELS@
    | FPTFilterPlatform
      -- ^ @FILTER_PLATFORM@
    | FPTFilterPlaybackMethod
      -- ^ @FILTER_PLAYBACK_METHOD@
    | FPTFilterPositionInContent
      -- ^ @FILTER_POSITION_IN_CONTENT@
    | FPTFilterPublisherProperty
      -- ^ @FILTER_PUBLISHER_PROPERTY@
    | FPTFilterPublisherPropertyId
      -- ^ @FILTER_PUBLISHER_PROPERTY_ID@
    | FPTFilterPublisherPropertySection
      -- ^ @FILTER_PUBLISHER_PROPERTY_SECTION@
    | FPTFilterPublisherPropertySectionId
      -- ^ @FILTER_PUBLISHER_PROPERTY_SECTION_ID@
    | FPTFilterRefundReason
      -- ^ @FILTER_REFUND_REASON@
    | FPTFilterRemarketingList
      -- ^ @FILTER_REMARKETING_LIST@
    | FPTFilterRewarded
      -- ^ @FILTER_REWARDED@
    | FPTFilterSensitiveCategory
      -- ^ @FILTER_SENSITIVE_CATEGORY@
    | FPTFilterServedPixelDensity
      -- ^ @FILTER_SERVED_PIXEL_DENSITY@
    | FPTFilterTargetedDataProviders
      -- ^ @FILTER_TARGETED_DATA_PROVIDERS@
    | FPTFilterThirdPartyAudienceListCost
      -- ^ @FILTER_THIRD_PARTY_AUDIENCE_LIST_COST@
    | FPTFilterThirdPartyAudienceListType
      -- ^ @FILTER_THIRD_PARTY_AUDIENCE_LIST_TYPE@
    | FPTFilterTrueviewAd
      -- ^ @FILTER_TRUEVIEW_AD@
    | FPTFilterTrueviewAdGroup
      -- ^ @FILTER_TRUEVIEW_AD_GROUP@
    | FPTFilterTrueviewDetailedDemographics
      -- ^ @FILTER_TRUEVIEW_DETAILED_DEMOGRAPHICS@
    | FPTFilterTrueviewDetailedDemographicsId
      -- ^ @FILTER_TRUEVIEW_DETAILED_DEMOGRAPHICS_ID@
    | FPTFilterTrueviewHouseholdIncome
      -- ^ @FILTER_TRUEVIEW_HOUSEHOLD_INCOME@
    | FPTFilterTrueviewIarCountryName
      -- ^ @FILTER_TRUEVIEW_IAR_COUNTRY_NAME@
    | FPTFilterTrueviewRemarketingListName
      -- ^ @FILTER_TRUEVIEW_REMARKETING_LIST_NAME@
    | FPTFilterVariantId
      -- ^ @FILTER_VARIANT_ID@
    | FPTFilterVariantName
      -- ^ @FILTER_VARIANT_NAME@
    | FPTFilterVariantVersion
      -- ^ @FILTER_VARIANT_VERSION@
    | FPTFilterVerificationVideoPlayerSize
      -- ^ @FILTER_VERIFICATION_VIDEO_PLAYER_SIZE@
    | FPTFilterVerificationVideoPosition
      -- ^ @FILTER_VERIFICATION_VIDEO_POSITION@
    | FPTFilterVideoCompanionCreativeSize
      -- ^ @FILTER_VIDEO_COMPANION_CREATIVE_SIZE@
    | FPTFilterVideoContinuousPlay
      -- ^ @FILTER_VIDEO_CONTINUOUS_PLAY@
    | FPTFilterVideoDuration
      -- ^ @FILTER_VIDEO_DURATION@
    | FPTFilterYouTubeAdaptedAudienceList
      -- ^ @FILTER_YOUTUBE_ADAPTED_AUDIENCE_LIST@
    | FPTFilterYouTubeAdVideo
      -- ^ @FILTER_YOUTUBE_AD_VIDEO@
    | FPTFilterYouTubeAdVideoId
      -- ^ @FILTER_YOUTUBE_AD_VIDEO_ID@
    | FPTFilterYouTubeChannel
      -- ^ @FILTER_YOUTUBE_CHANNEL@
    | FPTFilterYouTubeProgrammaticGuaranteedAdvertiser
      -- ^ @FILTER_YOUTUBE_PROGRAMMATIC_GUARANTEED_ADVERTISER@
    | FPTFilterYouTubeProgrammaticGuaranteedPartner
      -- ^ @FILTER_YOUTUBE_PROGRAMMATIC_GUARANTEED_PARTNER@
    | FPTFilterYouTubeVideo
      -- ^ @FILTER_YOUTUBE_VIDEO@
    | FPTFilterZipPostalCode
      -- ^ @FILTER_ZIP_POSTAL_CODE@
    | FPTFilterPlacementNameAllYouTubeChannels
      -- ^ @FILTER_PLACEMENT_NAME_ALL_YOUTUBE_CHANNELS@
    | FPTFilterTrueviewPlacementId
      -- ^ @FILTER_TRUEVIEW_PLACEMENT_ID@
    | FPTFilterPathPatternId
      -- ^ @FILTER_PATH_PATTERN_ID@
    | FPTFilterPathEventIndex
      -- ^ @FILTER_PATH_EVENT_INDEX@
    | FPTFilterEventType
      -- ^ @FILTER_EVENT_TYPE@
    | FPTFilterChannelGrouping
      -- ^ @FILTER_CHANNEL_GROUPING@
    | FPTFilterOmSdkAvailable
      -- ^ @FILTER_OM_SDK_AVAILABLE@
    | FPTFilterDataSource
      -- ^ @FILTER_DATA_SOURCE@
    | FPTFilterCM360PlacementId
      -- ^ @FILTER_CM360_PLACEMENT_ID@
    | FPTFilterTrueviewClickTypeName
      -- ^ @FILTER_TRUEVIEW_CLICK_TYPE_NAME@
    | FPTFilterTrueviewAdTypeName
      -- ^ @FILTER_TRUEVIEW_AD_TYPE_NAME@
    | FPTFilterVideoContentDuration
      -- ^ @FILTER_VIDEO_CONTENT_DURATION@
    | FPTFilterMatchedGenreTarget
      -- ^ @FILTER_MATCHED_GENRE_TARGET@
    | FPTFilterVideoContentLiveStream
      -- ^ @FILTER_VIDEO_CONTENT_LIVE_STREAM@
    | FPTFilterBudgetSegmentType
      -- ^ @FILTER_BUDGET_SEGMENT_TYPE@
    | FPTFilterBudgetSegmentBudget
      -- ^ @FILTER_BUDGET_SEGMENT_BUDGET@
    | FPTFilterBudgetSegmentStartDate
      -- ^ @FILTER_BUDGET_SEGMENT_START_DATE@
    | FPTFilterBudgetSegmentEndDate
      -- ^ @FILTER_BUDGET_SEGMENT_END_DATE@
    | FPTFilterBudgetSegmentPacingPercentage
      -- ^ @FILTER_BUDGET_SEGMENT_PACING_PERCENTAGE@
    | FPTFilterLineItemBudget
      -- ^ @FILTER_LINE_ITEM_BUDGET@
    | FPTFilterLineItemStartDate
      -- ^ @FILTER_LINE_ITEM_START_DATE@
    | FPTFilterLineItemEndDate
      -- ^ @FILTER_LINE_ITEM_END_DATE@
    | FPTFilterInsertionOrderGoalType
      -- ^ @FILTER_INSERTION_ORDER_GOAL_TYPE@
    | FPTFilterLineItemPacingPercentage
      -- ^ @FILTER_LINE_ITEM_PACING_PERCENTAGE@
    | FPTFilterInsertionOrderGoalValue
      -- ^ @FILTER_INSERTION_ORDER_GOAL_VALUE@
    | FPTFilterOmidCapable
      -- ^ @FILTER_OMID_CAPABLE@
    | FPTFilterVendorMeasurementMode
      -- ^ @FILTER_VENDOR_MEASUREMENT_MODE@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable FilterPairType

instance FromHttpApiData FilterPairType where
    parseQueryParam = \case
        "FILTER_UNKNOWN" -> Right FPTFilterUnknown
        "FILTER_DATE" -> Right FPTFilterDate
        "FILTER_DAY_OF_WEEK" -> Right FPTFilterDayOfWeek
        "FILTER_WEEK" -> Right FPTFilterWeek
        "FILTER_MONTH" -> Right FPTFilterMonth
        "FILTER_YEAR" -> Right FPTFilterYear
        "FILTER_TIME_OF_DAY" -> Right FPTFilterTimeOfDay
        "FILTER_CONVERSION_DELAY" -> Right FPTFilterConversionDelay
        "FILTER_CREATIVE_ID" -> Right FPTFilterCreativeId
        "FILTER_CREATIVE_SIZE" -> Right FPTFilterCreativeSize
        "FILTER_CREATIVE_TYPE" -> Right FPTFilterCreativeType
        "FILTER_EXCHANGE_ID" -> Right FPTFilterExchangeId
        "FILTER_AD_POSITION" -> Right FPTFilterAdPosition
        "FILTER_PUBLIC_INVENTORY" -> Right FPTFilterPublicInventory
        "FILTER_INVENTORY_SOURCE" -> Right FPTFilterInventorySource
        "FILTER_CITY" -> Right FPTFilterCity
        "FILTER_REGION" -> Right FPTFilterRegion
        "FILTER_DMA" -> Right FPTFilterDma
        "FILTER_COUNTRY" -> Right FPTFilterCountry
        "FILTER_SITE_ID" -> Right FPTFilterSiteId
        "FILTER_CHANNEL_ID" -> Right FPTFilterChannelId
        "FILTER_PARTNER" -> Right FPTFilterPartner
        "FILTER_ADVERTISER" -> Right FPTFilterAdvertiser
        "FILTER_INSERTION_ORDER" -> Right FPTFilterInsertionOrder
        "FILTER_LINE_ITEM" -> Right FPTFilterLineItem
        "FILTER_PARTNER_CURRENCY" -> Right FPTFilterPartnerCurrency
        "FILTER_ADVERTISER_CURRENCY" -> Right FPTFilterAdvertiserCurrency
        "FILTER_ADVERTISER_TIMEZONE" -> Right FPTFilterAdvertiserTimezone
        "FILTER_LINE_ITEM_TYPE" -> Right FPTFilterLineItemType
        "FILTER_USER_LIST" -> Right FPTFilterUserList
        "FILTER_USER_LIST_FIRST_PARTY" -> Right FPTFilterUserListFirstParty
        "FILTER_USER_LIST_THIRD_PARTY" -> Right FPTFilterUserListThirdParty
        "FILTER_TARGETED_USER_LIST" -> Right FPTFilterTargetedUserList
        "FILTER_DATA_PROVIDER" -> Right FPTFilterDataProvider
        "FILTER_ORDER_ID" -> Right FPTFilterOrderId
        "FILTER_VIDEO_PLAYER_SIZE" -> Right FPTFilterVideoPlayerSize
        "FILTER_VIDEO_DURATION_SECONDS" -> Right FPTFilterVideoDurationSeconds
        "FILTER_KEYWORD" -> Right FPTFilterKeyword
        "FILTER_PAGE_CATEGORY" -> Right FPTFilterPageCategory
        "FILTER_CAMPAIGN_DAILY_FREQUENCY" -> Right FPTFilterCampaignDailyFrequency
        "FILTER_LINE_ITEM_DAILY_FREQUENCY" -> Right FPTFilterLineItemDailyFrequency
        "FILTER_LINE_ITEM_LIFETIME_FREQUENCY" -> Right FPTFilterLineItemLifetimeFrequency
        "FILTER_OS" -> Right FPTFilterOS
        "FILTER_BROWSER" -> Right FPTFilterBrowser
        "FILTER_CARRIER" -> Right FPTFilterCarrier
        "FILTER_SITE_LANGUAGE" -> Right FPTFilterSiteLanguage
        "FILTER_INVENTORY_FORMAT" -> Right FPTFilterInventoryFormat
        "FILTER_ZIP_CODE" -> Right FPTFilterZipCode
        "FILTER_VIDEO_RATING_TIER" -> Right FPTFilterVideoRatingTier
        "FILTER_VIDEO_FORMAT_SUPPORT" -> Right FPTFilterVideoFormatSupport
        "FILTER_VIDEO_SKIPPABLE_SUPPORT" -> Right FPTFilterVideoSkippableSupport
        "FILTER_VIDEO_CREATIVE_DURATION" -> Right FPTFilterVideoCreativeDuration
        "FILTER_PAGE_LAYOUT" -> Right FPTFilterPageLayout
        "FILTER_VIDEO_AD_POSITION_IN_STREAM" -> Right FPTFilterVideoAdPositionInStream
        "FILTER_AGE" -> Right FPTFilterAge
        "FILTER_GENDER" -> Right FPTFilterGender
        "FILTER_QUARTER" -> Right FPTFilterQuarter
        "FILTER_TRUEVIEW_CONVERSION_TYPE" -> Right FPTFilterTrueviewConversionType
        "FILTER_MOBILE_GEO" -> Right FPTFilterMobileGeo
        "FILTER_MRAID_SUPPORT" -> Right FPTFilterMraidSupport
        "FILTER_ACTIVE_VIEW_EXPECTED_VIEWABILITY" -> Right FPTFilterActiveViewExpectedViewability
        "FILTER_VIDEO_CREATIVE_DURATION_SKIPPABLE" -> Right FPTFilterVideoCreativeDurationSkippable
        "FILTER_NIELSEN_COUNTRY_CODE" -> Right FPTFilterNielsenCountryCode
        "FILTER_NIELSEN_DEVICE_ID" -> Right FPTFilterNielsenDeviceId
        "FILTER_NIELSEN_GENDER" -> Right FPTFilterNielsenGender
        "FILTER_NIELSEN_AGE" -> Right FPTFilterNielsenAge
        "FILTER_INVENTORY_SOURCE_TYPE" -> Right FPTFilterInventorySourceType
        "FILTER_CREATIVE_WIDTH" -> Right FPTFilterCreativeWidth
        "FILTER_CREATIVE_HEIGHT" -> Right FPTFilterCreativeHeight
        "FILTER_DFP_ORDER_ID" -> Right FPTFilterDfpOrderId
        "FILTER_TRUEVIEW_AGE" -> Right FPTFilterTrueviewAge
        "FILTER_TRUEVIEW_GENDER" -> Right FPTFilterTrueviewGender
        "FILTER_TRUEVIEW_PARENTAL_STATUS" -> Right FPTFilterTrueviewParentalStatus
        "FILTER_TRUEVIEW_REMARKETING_LIST" -> Right FPTFilterTrueviewRemarketingList
        "FILTER_TRUEVIEW_INTEREST" -> Right FPTFilterTrueviewInterest
        "FILTER_TRUEVIEW_AD_GROUP_ID" -> Right FPTFilterTrueviewAdGroupId
        "FILTER_TRUEVIEW_AD_GROUP_AD_ID" -> Right FPTFilterTrueviewAdGroupAdId
        "FILTER_TRUEVIEW_IAR_LANGUAGE" -> Right FPTFilterTrueviewIarLanguage
        "FILTER_TRUEVIEW_IAR_GENDER" -> Right FPTFilterTrueviewIarGender
        "FILTER_TRUEVIEW_IAR_AGE" -> Right FPTFilterTrueviewIarAge
        "FILTER_TRUEVIEW_IAR_CATEGORY" -> Right FPTFilterTrueviewIarCategory
        "FILTER_TRUEVIEW_IAR_COUNTRY" -> Right FPTFilterTrueviewIarCountry
        "FILTER_TRUEVIEW_IAR_CITY" -> Right FPTFilterTrueviewIarCity
        "FILTER_TRUEVIEW_IAR_REGION" -> Right FPTFilterTrueviewIarRegion
        "FILTER_TRUEVIEW_IAR_ZIPCODE" -> Right FPTFilterTrueviewIarZipcode
        "FILTER_TRUEVIEW_IAR_REMARKETING_LIST" -> Right FPTFilterTrueviewIarRemarketingList
        "FILTER_TRUEVIEW_IAR_INTEREST" -> Right FPTFilterTrueviewIarInterest
        "FILTER_TRUEVIEW_IAR_PARENTAL_STATUS" -> Right FPTFilterTrueviewIarParentalStatus
        "FILTER_TRUEVIEW_IAR_TIME_OF_DAY" -> Right FPTFilterTrueviewIarTimeOfDay
        "FILTER_TRUEVIEW_CUSTOM_AFFINITY" -> Right FPTFilterTrueviewCustomAffinity
        "FILTER_TRUEVIEW_CATEGORY" -> Right FPTFilterTrueviewCategory
        "FILTER_TRUEVIEW_KEYWORD" -> Right FPTFilterTrueviewKeyword
        "FILTER_TRUEVIEW_PLACEMENT" -> Right FPTFilterTrueviewPlacement
        "FILTER_TRUEVIEW_URL" -> Right FPTFilterTrueviewURL
        "FILTER_TRUEVIEW_COUNTRY" -> Right FPTFilterTrueviewCountry
        "FILTER_TRUEVIEW_REGION" -> Right FPTFilterTrueviewRegion
        "FILTER_TRUEVIEW_CITY" -> Right FPTFilterTrueviewCity
        "FILTER_TRUEVIEW_DMA" -> Right FPTFilterTrueviewDma
        "FILTER_TRUEVIEW_ZIPCODE" -> Right FPTFilterTrueviewZipcode
        "FILTER_NOT_SUPPORTED" -> Right FPTFilterNotSupported
        "FILTER_MEDIA_PLAN" -> Right FPTFilterMediaPlan
        "FILTER_TRUEVIEW_IAR_YOUTUBE_CHANNEL" -> Right FPTFilterTrueviewIarYouTubeChannel
        "FILTER_TRUEVIEW_IAR_YOUTUBE_VIDEO" -> Right FPTFilterTrueviewIarYouTubeVideo
        "FILTER_SKIPPABLE_SUPPORT" -> Right FPTFilterSkippableSupport
        "FILTER_COMPANION_CREATIVE_ID" -> Right FPTFilterCompanionCreativeId
        "FILTER_BUDGET_SEGMENT_DESCRIPTION" -> Right FPTFilterBudgetSegmentDescription
        "FILTER_FLOODLIGHT_ACTIVITY_ID" -> Right FPTFilterFloodlightActivityId
        "FILTER_DEVICE_MODEL" -> Right FPTFilterDeviceModel
        "FILTER_DEVICE_MAKE" -> Right FPTFilterDeviceMake
        "FILTER_DEVICE_TYPE" -> Right FPTFilterDeviceType
        "FILTER_CREATIVE_ATTRIBUTE" -> Right FPTFilterCreativeAttribute
        "FILTER_INVENTORY_COMMITMENT_TYPE" -> Right FPTFilterInventoryCommitmentType
        "FILTER_INVENTORY_RATE_TYPE" -> Right FPTFilterInventoryRateType
        "FILTER_INVENTORY_DELIVERY_METHOD" -> Right FPTFilterInventoryDeliveryMethod
        "FILTER_INVENTORY_SOURCE_EXTERNAL_ID" -> Right FPTFilterInventorySourceExternalId
        "FILTER_AUTHORIZED_SELLER_STATE" -> Right FPTFilterAuthorizedSellerState
        "FILTER_VIDEO_DURATION_SECONDS_RANGE" -> Right FPTFilterVideoDurationSecondsRange
        "FILTER_PARTNER_NAME" -> Right FPTFilterPartnerName
        "FILTER_PARTNER_STATUS" -> Right FPTFilterPartnerStatus
        "FILTER_ADVERTISER_NAME" -> Right FPTFilterAdvertiserName
        "FILTER_ADVERTISER_INTEGRATION_CODE" -> Right FPTFilterAdvertiserIntegrationCode
        "FILTER_ADVERTISER_INTEGRATION_STATUS" -> Right FPTFilterAdvertiserIntegrationStatus
        "FILTER_CARRIER_NAME" -> Right FPTFilterCarrierName
        "FILTER_CHANNEL_NAME" -> Right FPTFilterChannelName
        "FILTER_CITY_NAME" -> Right FPTFilterCityName
        "FILTER_COMPANION_CREATIVE_NAME" -> Right FPTFilterCompanionCreativeName
        "FILTER_USER_LIST_FIRST_PARTY_NAME" -> Right FPTFilterUserListFirstPartyName
        "FILTER_USER_LIST_THIRD_PARTY_NAME" -> Right FPTFilterUserListThirdPartyName
        "FILTER_NIELSEN_RESTATEMENT_DATE" -> Right FPTFilterNielsenReStatementDate
        "FILTER_NIELSEN_DATE_RANGE" -> Right FPTFilterNielsenDateRange
        "FILTER_INSERTION_ORDER_NAME" -> Right FPTFilterInsertionOrderName
        "FILTER_REGION_NAME" -> Right FPTFilterRegionName
        "FILTER_DMA_NAME" -> Right FPTFilterDmaName
        "FILTER_TRUEVIEW_IAR_REGION_NAME" -> Right FPTFilterTrueviewIarRegionName
        "FILTER_TRUEVIEW_DMA_NAME" -> Right FPTFilterTrueviewDmaName
        "FILTER_TRUEVIEW_REGION_NAME" -> Right FPTFilterTrueviewRegionName
        "FILTER_ACTIVE_VIEW_CUSTOM_METRIC_ID" -> Right FPTFilterActiveViewCustomMetricId
        "FILTER_ACTIVE_VIEW_CUSTOM_METRIC_NAME" -> Right FPTFilterActiveViewCustomMetricName
        "FILTER_AD_TYPE" -> Right FPTFilterAdType
        "FILTER_ALGORITHM" -> Right FPTFilterAlgorithm
        "FILTER_ALGORITHM_ID" -> Right FPTFilterAlgorithmId
        "FILTER_AMP_PAGE_REQUEST" -> Right FPTFilterAmpPageRequest
        "FILTER_ANONYMOUS_INVENTORY_MODELING" -> Right FPTFilterAnonymousInventoryModeling
        "FILTER_APP_URL" -> Right FPTFilterAppURL
        "FILTER_APP_URL_EXCLUDED" -> Right FPTFilterAppURLExcluded
        "FILTER_ATTRIBUTED_USERLIST" -> Right FPTFilterAttributedUserList
        "FILTER_ATTRIBUTED_USERLIST_COST" -> Right FPTFilterAttributedUserListCost
        "FILTER_ATTRIBUTED_USERLIST_TYPE" -> Right FPTFilterAttributedUserListType
        "FILTER_ATTRIBUTION_MODEL" -> Right FPTFilterAttributionModel
        "FILTER_AUDIENCE_LIST" -> Right FPTFilterAudienceList
        "FILTER_AUDIENCE_LIST_COST" -> Right FPTFilterAudienceListCost
        "FILTER_AUDIENCE_LIST_TYPE" -> Right FPTFilterAudienceListType
        "FILTER_AUDIENCE_NAME" -> Right FPTFilterAudienceName
        "FILTER_AUDIENCE_TYPE" -> Right FPTFilterAudienceType
        "FILTER_BILLABLE_OUTCOME" -> Right FPTFilterBillableOutcome
        "FILTER_BRAND_LIFT_TYPE" -> Right FPTFilterBrandLiftType
        "FILTER_CHANNEL_TYPE" -> Right FPTFilterChannelType
        "FILTER_CM_PLACEMENT_ID" -> Right FPTFilterCmPlacementId
        "FILTER_CONVERSION_SOURCE" -> Right FPTFilterConversionSource
        "FILTER_CONVERSION_SOURCE_ID" -> Right FPTFilterConversionSourceId
        "FILTER_COUNTRY_ID" -> Right FPTFilterCountryId
        "FILTER_CREATIVE" -> Right FPTFilterCreative
        "FILTER_CREATIVE_ASSET" -> Right FPTFilterCreativeAsset
        "FILTER_CREATIVE_INTEGRATION_CODE" -> Right FPTFilterCreativeIntegrationCode
        "FILTER_CREATIVE_RENDERED_IN_AMP" -> Right FPTFilterCreativeRenderedInAmp
        "FILTER_CREATIVE_SOURCE" -> Right FPTFilterCreativeSource
        "FILTER_CREATIVE_STATUS" -> Right FPTFilterCreativeStatus
        "FILTER_DATA_PROVIDER_NAME" -> Right FPTFilterDataProviderName
        "FILTER_DETAILED_DEMOGRAPHICS" -> Right FPTFilterDetailedDemographics
        "FILTER_DETAILED_DEMOGRAPHICS_ID" -> Right FPTFilterDetailedDemographicsId
        "FILTER_DEVICE" -> Right FPTFilterDevice
        "FILTER_GAM_INSERTION_ORDER" -> Right FPTFilterGamInsertionOrder
        "FILTER_GAM_LINE_ITEM" -> Right FPTFilterGamLineItem
        "FILTER_GAM_LINE_ITEM_ID" -> Right FPTFilterGamLineItemId
        "FILTER_DIGITAL_CONTENT_LABEL" -> Right FPTFilterDigitalContentLabel
        "FILTER_DOMAIN" -> Right FPTFilterDomain
        "FILTER_ELIGIBLE_COOKIES_ON_FIRST_PARTY_AUDIENCE_LIST" -> Right FPTFilterEligibleCookiesOnFirstPartyAudienceList
        "FILTER_ELIGIBLE_COOKIES_ON_THIRD_PARTY_AUDIENCE_LIST_AND_INTEREST" -> Right FPTFilterEligibleCookiesOnThirdPartyAudienceListAndInterest
        "FILTER_EXCHANGE" -> Right FPTFilterExchange
        "FILTER_EXCHANGE_CODE" -> Right FPTFilterExchangeCode
        "FILTER_EXTENSION" -> Right FPTFilterExtension
        "FILTER_EXTENSION_STATUS" -> Right FPTFilterExtensionStatus
        "FILTER_EXTENSION_TYPE" -> Right FPTFilterExtensionType
        "FILTER_FIRST_PARTY_AUDIENCE_LIST_COST" -> Right FPTFilterFirstPartyAudienceListCost
        "FILTER_FIRST_PARTY_AUDIENCE_LIST_TYPE" -> Right FPTFilterFirstPartyAudienceListType
        "FILTER_FLOODLIGHT_ACTIVITY" -> Right FPTFilterFloodlightActivity
        "FILTER_FORMAT" -> Right FPTFilterFormat
        "FILTER_GMAIL_AGE" -> Right FPTFilterGmailAge
        "FILTER_GMAIL_CITY" -> Right FPTFilterGmailCity
        "FILTER_GMAIL_COUNTRY" -> Right FPTFilterGmailCountry
        "FILTER_GMAIL_COUNTRY_NAME" -> Right FPTFilterGmailCountryName
        "FILTER_GMAIL_DEVICE_TYPE" -> Right FPTFilterGmailDeviceType
        "FILTER_GMAIL_DEVICE_TYPE_NAME" -> Right FPTFilterGmailDeviceTypeName
        "FILTER_GMAIL_GENDER" -> Right FPTFilterGmailGender
        "FILTER_GMAIL_REGION" -> Right FPTFilterGmailRegion
        "FILTER_GMAIL_REMARKETING_LIST" -> Right FPTFilterGmailRemarketingList
        "FILTER_HOUSEHOLD_INCOME" -> Right FPTFilterHouseholdIncome
        "FILTER_IMPRESSION_COUNTING_METHOD" -> Right FPTFilterImpressionCountingMethod
        "FILTER_YOUTUBE_PROGRAMMATIC_GUARANTEED_INSERTION_ORDER" -> Right FPTFilterYouTubeProgrammaticGuaranteedInsertionOrder
        "FILTER_INSERTION_ORDER_INTEGRATION_CODE" -> Right FPTFilterInsertionOrderIntegrationCode
        "FILTER_INSERTION_ORDER_STATUS" -> Right FPTFilterInsertionOrderStatus
        "FILTER_INTEREST" -> Right FPTFilterInterest
        "FILTER_INVENTORY_SOURCE_GROUP" -> Right FPTFilterInventorySourceGroup
        "FILTER_INVENTORY_SOURCE_GROUP_ID" -> Right FPTFilterInventorySourceGroupId
        "FILTER_INVENTORY_SOURCE_ID" -> Right FPTFilterInventorySourceId
        "FILTER_INVENTORY_SOURCE_NAME" -> Right FPTFilterInventorySourceName
        "FILTER_LIFE_EVENT" -> Right FPTFilterLifeEvent
        "FILTER_LIFE_EVENTS" -> Right FPTFilterLifeEvents
        "FILTER_LINE_ITEM_INTEGRATION_CODE" -> Right FPTFilterLineItemIntegrationCode
        "FILTER_LINE_ITEM_NAME" -> Right FPTFilterLineItemName
        "FILTER_LINE_ITEM_STATUS" -> Right FPTFilterLineItemStatus
        "FILTER_MATCH_RATIO" -> Right FPTFilterMatchRatio
        "FILTER_MEASUREMENT_SOURCE" -> Right FPTFilterMeasurementSource
        "FILTER_MEDIA_PLAN_NAME" -> Right FPTFilterMediaPlanName
        "FILTER_PARENTAL_STATUS" -> Right FPTFilterParentalStatus
        "FILTER_PLACEMENT_ALL_YOUTUBE_CHANNELS" -> Right FPTFilterPlacementAllYouTubeChannels
        "FILTER_PLATFORM" -> Right FPTFilterPlatform
        "FILTER_PLAYBACK_METHOD" -> Right FPTFilterPlaybackMethod
        "FILTER_POSITION_IN_CONTENT" -> Right FPTFilterPositionInContent
        "FILTER_PUBLISHER_PROPERTY" -> Right FPTFilterPublisherProperty
        "FILTER_PUBLISHER_PROPERTY_ID" -> Right FPTFilterPublisherPropertyId
        "FILTER_PUBLISHER_PROPERTY_SECTION" -> Right FPTFilterPublisherPropertySection
        "FILTER_PUBLISHER_PROPERTY_SECTION_ID" -> Right FPTFilterPublisherPropertySectionId
        "FILTER_REFUND_REASON" -> Right FPTFilterRefundReason
        "FILTER_REMARKETING_LIST" -> Right FPTFilterRemarketingList
        "FILTER_REWARDED" -> Right FPTFilterRewarded
        "FILTER_SENSITIVE_CATEGORY" -> Right FPTFilterSensitiveCategory
        "FILTER_SERVED_PIXEL_DENSITY" -> Right FPTFilterServedPixelDensity
        "FILTER_TARGETED_DATA_PROVIDERS" -> Right FPTFilterTargetedDataProviders
        "FILTER_THIRD_PARTY_AUDIENCE_LIST_COST" -> Right FPTFilterThirdPartyAudienceListCost
        "FILTER_THIRD_PARTY_AUDIENCE_LIST_TYPE" -> Right FPTFilterThirdPartyAudienceListType
        "FILTER_TRUEVIEW_AD" -> Right FPTFilterTrueviewAd
        "FILTER_TRUEVIEW_AD_GROUP" -> Right FPTFilterTrueviewAdGroup
        "FILTER_TRUEVIEW_DETAILED_DEMOGRAPHICS" -> Right FPTFilterTrueviewDetailedDemographics
        "FILTER_TRUEVIEW_DETAILED_DEMOGRAPHICS_ID" -> Right FPTFilterTrueviewDetailedDemographicsId
        "FILTER_TRUEVIEW_HOUSEHOLD_INCOME" -> Right FPTFilterTrueviewHouseholdIncome
        "FILTER_TRUEVIEW_IAR_COUNTRY_NAME" -> Right FPTFilterTrueviewIarCountryName
        "FILTER_TRUEVIEW_REMARKETING_LIST_NAME" -> Right FPTFilterTrueviewRemarketingListName
        "FILTER_VARIANT_ID" -> Right FPTFilterVariantId
        "FILTER_VARIANT_NAME" -> Right FPTFilterVariantName
        "FILTER_VARIANT_VERSION" -> Right FPTFilterVariantVersion
        "FILTER_VERIFICATION_VIDEO_PLAYER_SIZE" -> Right FPTFilterVerificationVideoPlayerSize
        "FILTER_VERIFICATION_VIDEO_POSITION" -> Right FPTFilterVerificationVideoPosition
        "FILTER_VIDEO_COMPANION_CREATIVE_SIZE" -> Right FPTFilterVideoCompanionCreativeSize
        "FILTER_VIDEO_CONTINUOUS_PLAY" -> Right FPTFilterVideoContinuousPlay
        "FILTER_VIDEO_DURATION" -> Right FPTFilterVideoDuration
        "FILTER_YOUTUBE_ADAPTED_AUDIENCE_LIST" -> Right FPTFilterYouTubeAdaptedAudienceList
        "FILTER_YOUTUBE_AD_VIDEO" -> Right FPTFilterYouTubeAdVideo
        "FILTER_YOUTUBE_AD_VIDEO_ID" -> Right FPTFilterYouTubeAdVideoId
        "FILTER_YOUTUBE_CHANNEL" -> Right FPTFilterYouTubeChannel
        "FILTER_YOUTUBE_PROGRAMMATIC_GUARANTEED_ADVERTISER" -> Right FPTFilterYouTubeProgrammaticGuaranteedAdvertiser
        "FILTER_YOUTUBE_PROGRAMMATIC_GUARANTEED_PARTNER" -> Right FPTFilterYouTubeProgrammaticGuaranteedPartner
        "FILTER_YOUTUBE_VIDEO" -> Right FPTFilterYouTubeVideo
        "FILTER_ZIP_POSTAL_CODE" -> Right FPTFilterZipPostalCode
        "FILTER_PLACEMENT_NAME_ALL_YOUTUBE_CHANNELS" -> Right FPTFilterPlacementNameAllYouTubeChannels
        "FILTER_TRUEVIEW_PLACEMENT_ID" -> Right FPTFilterTrueviewPlacementId
        "FILTER_PATH_PATTERN_ID" -> Right FPTFilterPathPatternId
        "FILTER_PATH_EVENT_INDEX" -> Right FPTFilterPathEventIndex
        "FILTER_EVENT_TYPE" -> Right FPTFilterEventType
        "FILTER_CHANNEL_GROUPING" -> Right FPTFilterChannelGrouping
        "FILTER_OM_SDK_AVAILABLE" -> Right FPTFilterOmSdkAvailable
        "FILTER_DATA_SOURCE" -> Right FPTFilterDataSource
        "FILTER_CM360_PLACEMENT_ID" -> Right FPTFilterCM360PlacementId
        "FILTER_TRUEVIEW_CLICK_TYPE_NAME" -> Right FPTFilterTrueviewClickTypeName
        "FILTER_TRUEVIEW_AD_TYPE_NAME" -> Right FPTFilterTrueviewAdTypeName
        "FILTER_VIDEO_CONTENT_DURATION" -> Right FPTFilterVideoContentDuration
        "FILTER_MATCHED_GENRE_TARGET" -> Right FPTFilterMatchedGenreTarget
        "FILTER_VIDEO_CONTENT_LIVE_STREAM" -> Right FPTFilterVideoContentLiveStream
        "FILTER_BUDGET_SEGMENT_TYPE" -> Right FPTFilterBudgetSegmentType
        "FILTER_BUDGET_SEGMENT_BUDGET" -> Right FPTFilterBudgetSegmentBudget
        "FILTER_BUDGET_SEGMENT_START_DATE" -> Right FPTFilterBudgetSegmentStartDate
        "FILTER_BUDGET_SEGMENT_END_DATE" -> Right FPTFilterBudgetSegmentEndDate
        "FILTER_BUDGET_SEGMENT_PACING_PERCENTAGE" -> Right FPTFilterBudgetSegmentPacingPercentage
        "FILTER_LINE_ITEM_BUDGET" -> Right FPTFilterLineItemBudget
        "FILTER_LINE_ITEM_START_DATE" -> Right FPTFilterLineItemStartDate
        "FILTER_LINE_ITEM_END_DATE" -> Right FPTFilterLineItemEndDate
        "FILTER_INSERTION_ORDER_GOAL_TYPE" -> Right FPTFilterInsertionOrderGoalType
        "FILTER_LINE_ITEM_PACING_PERCENTAGE" -> Right FPTFilterLineItemPacingPercentage
        "FILTER_INSERTION_ORDER_GOAL_VALUE" -> Right FPTFilterInsertionOrderGoalValue
        "FILTER_OMID_CAPABLE" -> Right FPTFilterOmidCapable
        "FILTER_VENDOR_MEASUREMENT_MODE" -> Right FPTFilterVendorMeasurementMode
        x -> Left ("Unable to parse FilterPairType from: " <> x)

instance ToHttpApiData FilterPairType where
    toQueryParam = \case
        FPTFilterUnknown -> "FILTER_UNKNOWN"
        FPTFilterDate -> "FILTER_DATE"
        FPTFilterDayOfWeek -> "FILTER_DAY_OF_WEEK"
        FPTFilterWeek -> "FILTER_WEEK"
        FPTFilterMonth -> "FILTER_MONTH"
        FPTFilterYear -> "FILTER_YEAR"
        FPTFilterTimeOfDay -> "FILTER_TIME_OF_DAY"
        FPTFilterConversionDelay -> "FILTER_CONVERSION_DELAY"
        FPTFilterCreativeId -> "FILTER_CREATIVE_ID"
        FPTFilterCreativeSize -> "FILTER_CREATIVE_SIZE"
        FPTFilterCreativeType -> "FILTER_CREATIVE_TYPE"
        FPTFilterExchangeId -> "FILTER_EXCHANGE_ID"
        FPTFilterAdPosition -> "FILTER_AD_POSITION"
        FPTFilterPublicInventory -> "FILTER_PUBLIC_INVENTORY"
        FPTFilterInventorySource -> "FILTER_INVENTORY_SOURCE"
        FPTFilterCity -> "FILTER_CITY"
        FPTFilterRegion -> "FILTER_REGION"
        FPTFilterDma -> "FILTER_DMA"
        FPTFilterCountry -> "FILTER_COUNTRY"
        FPTFilterSiteId -> "FILTER_SITE_ID"
        FPTFilterChannelId -> "FILTER_CHANNEL_ID"
        FPTFilterPartner -> "FILTER_PARTNER"
        FPTFilterAdvertiser -> "FILTER_ADVERTISER"
        FPTFilterInsertionOrder -> "FILTER_INSERTION_ORDER"
        FPTFilterLineItem -> "FILTER_LINE_ITEM"
        FPTFilterPartnerCurrency -> "FILTER_PARTNER_CURRENCY"
        FPTFilterAdvertiserCurrency -> "FILTER_ADVERTISER_CURRENCY"
        FPTFilterAdvertiserTimezone -> "FILTER_ADVERTISER_TIMEZONE"
        FPTFilterLineItemType -> "FILTER_LINE_ITEM_TYPE"
        FPTFilterUserList -> "FILTER_USER_LIST"
        FPTFilterUserListFirstParty -> "FILTER_USER_LIST_FIRST_PARTY"
        FPTFilterUserListThirdParty -> "FILTER_USER_LIST_THIRD_PARTY"
        FPTFilterTargetedUserList -> "FILTER_TARGETED_USER_LIST"
        FPTFilterDataProvider -> "FILTER_DATA_PROVIDER"
        FPTFilterOrderId -> "FILTER_ORDER_ID"
        FPTFilterVideoPlayerSize -> "FILTER_VIDEO_PLAYER_SIZE"
        FPTFilterVideoDurationSeconds -> "FILTER_VIDEO_DURATION_SECONDS"
        FPTFilterKeyword -> "FILTER_KEYWORD"
        FPTFilterPageCategory -> "FILTER_PAGE_CATEGORY"
        FPTFilterCampaignDailyFrequency -> "FILTER_CAMPAIGN_DAILY_FREQUENCY"
        FPTFilterLineItemDailyFrequency -> "FILTER_LINE_ITEM_DAILY_FREQUENCY"
        FPTFilterLineItemLifetimeFrequency -> "FILTER_LINE_ITEM_LIFETIME_FREQUENCY"
        FPTFilterOS -> "FILTER_OS"
        FPTFilterBrowser -> "FILTER_BROWSER"
        FPTFilterCarrier -> "FILTER_CARRIER"
        FPTFilterSiteLanguage -> "FILTER_SITE_LANGUAGE"
        FPTFilterInventoryFormat -> "FILTER_INVENTORY_FORMAT"
        FPTFilterZipCode -> "FILTER_ZIP_CODE"
        FPTFilterVideoRatingTier -> "FILTER_VIDEO_RATING_TIER"
        FPTFilterVideoFormatSupport -> "FILTER_VIDEO_FORMAT_SUPPORT"
        FPTFilterVideoSkippableSupport -> "FILTER_VIDEO_SKIPPABLE_SUPPORT"
        FPTFilterVideoCreativeDuration -> "FILTER_VIDEO_CREATIVE_DURATION"
        FPTFilterPageLayout -> "FILTER_PAGE_LAYOUT"
        FPTFilterVideoAdPositionInStream -> "FILTER_VIDEO_AD_POSITION_IN_STREAM"
        FPTFilterAge -> "FILTER_AGE"
        FPTFilterGender -> "FILTER_GENDER"
        FPTFilterQuarter -> "FILTER_QUARTER"
        FPTFilterTrueviewConversionType -> "FILTER_TRUEVIEW_CONVERSION_TYPE"
        FPTFilterMobileGeo -> "FILTER_MOBILE_GEO"
        FPTFilterMraidSupport -> "FILTER_MRAID_SUPPORT"
        FPTFilterActiveViewExpectedViewability -> "FILTER_ACTIVE_VIEW_EXPECTED_VIEWABILITY"
        FPTFilterVideoCreativeDurationSkippable -> "FILTER_VIDEO_CREATIVE_DURATION_SKIPPABLE"
        FPTFilterNielsenCountryCode -> "FILTER_NIELSEN_COUNTRY_CODE"
        FPTFilterNielsenDeviceId -> "FILTER_NIELSEN_DEVICE_ID"
        FPTFilterNielsenGender -> "FILTER_NIELSEN_GENDER"
        FPTFilterNielsenAge -> "FILTER_NIELSEN_AGE"
        FPTFilterInventorySourceType -> "FILTER_INVENTORY_SOURCE_TYPE"
        FPTFilterCreativeWidth -> "FILTER_CREATIVE_WIDTH"
        FPTFilterCreativeHeight -> "FILTER_CREATIVE_HEIGHT"
        FPTFilterDfpOrderId -> "FILTER_DFP_ORDER_ID"
        FPTFilterTrueviewAge -> "FILTER_TRUEVIEW_AGE"
        FPTFilterTrueviewGender -> "FILTER_TRUEVIEW_GENDER"
        FPTFilterTrueviewParentalStatus -> "FILTER_TRUEVIEW_PARENTAL_STATUS"
        FPTFilterTrueviewRemarketingList -> "FILTER_TRUEVIEW_REMARKETING_LIST"
        FPTFilterTrueviewInterest -> "FILTER_TRUEVIEW_INTEREST"
        FPTFilterTrueviewAdGroupId -> "FILTER_TRUEVIEW_AD_GROUP_ID"
        FPTFilterTrueviewAdGroupAdId -> "FILTER_TRUEVIEW_AD_GROUP_AD_ID"
        FPTFilterTrueviewIarLanguage -> "FILTER_TRUEVIEW_IAR_LANGUAGE"
        FPTFilterTrueviewIarGender -> "FILTER_TRUEVIEW_IAR_GENDER"
        FPTFilterTrueviewIarAge -> "FILTER_TRUEVIEW_IAR_AGE"
        FPTFilterTrueviewIarCategory -> "FILTER_TRUEVIEW_IAR_CATEGORY"
        FPTFilterTrueviewIarCountry -> "FILTER_TRUEVIEW_IAR_COUNTRY"
        FPTFilterTrueviewIarCity -> "FILTER_TRUEVIEW_IAR_CITY"
        FPTFilterTrueviewIarRegion -> "FILTER_TRUEVIEW_IAR_REGION"
        FPTFilterTrueviewIarZipcode -> "FILTER_TRUEVIEW_IAR_ZIPCODE"
        FPTFilterTrueviewIarRemarketingList -> "FILTER_TRUEVIEW_IAR_REMARKETING_LIST"
        FPTFilterTrueviewIarInterest -> "FILTER_TRUEVIEW_IAR_INTEREST"
        FPTFilterTrueviewIarParentalStatus -> "FILTER_TRUEVIEW_IAR_PARENTAL_STATUS"
        FPTFilterTrueviewIarTimeOfDay -> "FILTER_TRUEVIEW_IAR_TIME_OF_DAY"
        FPTFilterTrueviewCustomAffinity -> "FILTER_TRUEVIEW_CUSTOM_AFFINITY"
        FPTFilterTrueviewCategory -> "FILTER_TRUEVIEW_CATEGORY"
        FPTFilterTrueviewKeyword -> "FILTER_TRUEVIEW_KEYWORD"
        FPTFilterTrueviewPlacement -> "FILTER_TRUEVIEW_PLACEMENT"
        FPTFilterTrueviewURL -> "FILTER_TRUEVIEW_URL"
        FPTFilterTrueviewCountry -> "FILTER_TRUEVIEW_COUNTRY"
        FPTFilterTrueviewRegion -> "FILTER_TRUEVIEW_REGION"
        FPTFilterTrueviewCity -> "FILTER_TRUEVIEW_CITY"
        FPTFilterTrueviewDma -> "FILTER_TRUEVIEW_DMA"
        FPTFilterTrueviewZipcode -> "FILTER_TRUEVIEW_ZIPCODE"
        FPTFilterNotSupported -> "FILTER_NOT_SUPPORTED"
        FPTFilterMediaPlan -> "FILTER_MEDIA_PLAN"
        FPTFilterTrueviewIarYouTubeChannel -> "FILTER_TRUEVIEW_IAR_YOUTUBE_CHANNEL"
        FPTFilterTrueviewIarYouTubeVideo -> "FILTER_TRUEVIEW_IAR_YOUTUBE_VIDEO"
        FPTFilterSkippableSupport -> "FILTER_SKIPPABLE_SUPPORT"
        FPTFilterCompanionCreativeId -> "FILTER_COMPANION_CREATIVE_ID"
        FPTFilterBudgetSegmentDescription -> "FILTER_BUDGET_SEGMENT_DESCRIPTION"
        FPTFilterFloodlightActivityId -> "FILTER_FLOODLIGHT_ACTIVITY_ID"
        FPTFilterDeviceModel -> "FILTER_DEVICE_MODEL"
        FPTFilterDeviceMake -> "FILTER_DEVICE_MAKE"
        FPTFilterDeviceType -> "FILTER_DEVICE_TYPE"
        FPTFilterCreativeAttribute -> "FILTER_CREATIVE_ATTRIBUTE"
        FPTFilterInventoryCommitmentType -> "FILTER_INVENTORY_COMMITMENT_TYPE"
        FPTFilterInventoryRateType -> "FILTER_INVENTORY_RATE_TYPE"
        FPTFilterInventoryDeliveryMethod -> "FILTER_INVENTORY_DELIVERY_METHOD"
        FPTFilterInventorySourceExternalId -> "FILTER_INVENTORY_SOURCE_EXTERNAL_ID"
        FPTFilterAuthorizedSellerState -> "FILTER_AUTHORIZED_SELLER_STATE"
        FPTFilterVideoDurationSecondsRange -> "FILTER_VIDEO_DURATION_SECONDS_RANGE"
        FPTFilterPartnerName -> "FILTER_PARTNER_NAME"
        FPTFilterPartnerStatus -> "FILTER_PARTNER_STATUS"
        FPTFilterAdvertiserName -> "FILTER_ADVERTISER_NAME"
        FPTFilterAdvertiserIntegrationCode -> "FILTER_ADVERTISER_INTEGRATION_CODE"
        FPTFilterAdvertiserIntegrationStatus -> "FILTER_ADVERTISER_INTEGRATION_STATUS"
        FPTFilterCarrierName -> "FILTER_CARRIER_NAME"
        FPTFilterChannelName -> "FILTER_CHANNEL_NAME"
        FPTFilterCityName -> "FILTER_CITY_NAME"
        FPTFilterCompanionCreativeName -> "FILTER_COMPANION_CREATIVE_NAME"
        FPTFilterUserListFirstPartyName -> "FILTER_USER_LIST_FIRST_PARTY_NAME"
        FPTFilterUserListThirdPartyName -> "FILTER_USER_LIST_THIRD_PARTY_NAME"
        FPTFilterNielsenReStatementDate -> "FILTER_NIELSEN_RESTATEMENT_DATE"
        FPTFilterNielsenDateRange -> "FILTER_NIELSEN_DATE_RANGE"
        FPTFilterInsertionOrderName -> "FILTER_INSERTION_ORDER_NAME"
        FPTFilterRegionName -> "FILTER_REGION_NAME"
        FPTFilterDmaName -> "FILTER_DMA_NAME"
        FPTFilterTrueviewIarRegionName -> "FILTER_TRUEVIEW_IAR_REGION_NAME"
        FPTFilterTrueviewDmaName -> "FILTER_TRUEVIEW_DMA_NAME"
        FPTFilterTrueviewRegionName -> "FILTER_TRUEVIEW_REGION_NAME"
        FPTFilterActiveViewCustomMetricId -> "FILTER_ACTIVE_VIEW_CUSTOM_METRIC_ID"
        FPTFilterActiveViewCustomMetricName -> "FILTER_ACTIVE_VIEW_CUSTOM_METRIC_NAME"
        FPTFilterAdType -> "FILTER_AD_TYPE"
        FPTFilterAlgorithm -> "FILTER_ALGORITHM"
        FPTFilterAlgorithmId -> "FILTER_ALGORITHM_ID"
        FPTFilterAmpPageRequest -> "FILTER_AMP_PAGE_REQUEST"
        FPTFilterAnonymousInventoryModeling -> "FILTER_ANONYMOUS_INVENTORY_MODELING"
        FPTFilterAppURL -> "FILTER_APP_URL"
        FPTFilterAppURLExcluded -> "FILTER_APP_URL_EXCLUDED"
        FPTFilterAttributedUserList -> "FILTER_ATTRIBUTED_USERLIST"
        FPTFilterAttributedUserListCost -> "FILTER_ATTRIBUTED_USERLIST_COST"
        FPTFilterAttributedUserListType -> "FILTER_ATTRIBUTED_USERLIST_TYPE"
        FPTFilterAttributionModel -> "FILTER_ATTRIBUTION_MODEL"
        FPTFilterAudienceList -> "FILTER_AUDIENCE_LIST"
        FPTFilterAudienceListCost -> "FILTER_AUDIENCE_LIST_COST"
        FPTFilterAudienceListType -> "FILTER_AUDIENCE_LIST_TYPE"
        FPTFilterAudienceName -> "FILTER_AUDIENCE_NAME"
        FPTFilterAudienceType -> "FILTER_AUDIENCE_TYPE"
        FPTFilterBillableOutcome -> "FILTER_BILLABLE_OUTCOME"
        FPTFilterBrandLiftType -> "FILTER_BRAND_LIFT_TYPE"
        FPTFilterChannelType -> "FILTER_CHANNEL_TYPE"
        FPTFilterCmPlacementId -> "FILTER_CM_PLACEMENT_ID"
        FPTFilterConversionSource -> "FILTER_CONVERSION_SOURCE"
        FPTFilterConversionSourceId -> "FILTER_CONVERSION_SOURCE_ID"
        FPTFilterCountryId -> "FILTER_COUNTRY_ID"
        FPTFilterCreative -> "FILTER_CREATIVE"
        FPTFilterCreativeAsset -> "FILTER_CREATIVE_ASSET"
        FPTFilterCreativeIntegrationCode -> "FILTER_CREATIVE_INTEGRATION_CODE"
        FPTFilterCreativeRenderedInAmp -> "FILTER_CREATIVE_RENDERED_IN_AMP"
        FPTFilterCreativeSource -> "FILTER_CREATIVE_SOURCE"
        FPTFilterCreativeStatus -> "FILTER_CREATIVE_STATUS"
        FPTFilterDataProviderName -> "FILTER_DATA_PROVIDER_NAME"
        FPTFilterDetailedDemographics -> "FILTER_DETAILED_DEMOGRAPHICS"
        FPTFilterDetailedDemographicsId -> "FILTER_DETAILED_DEMOGRAPHICS_ID"
        FPTFilterDevice -> "FILTER_DEVICE"
        FPTFilterGamInsertionOrder -> "FILTER_GAM_INSERTION_ORDER"
        FPTFilterGamLineItem -> "FILTER_GAM_LINE_ITEM"
        FPTFilterGamLineItemId -> "FILTER_GAM_LINE_ITEM_ID"
        FPTFilterDigitalContentLabel -> "FILTER_DIGITAL_CONTENT_LABEL"
        FPTFilterDomain -> "FILTER_DOMAIN"
        FPTFilterEligibleCookiesOnFirstPartyAudienceList -> "FILTER_ELIGIBLE_COOKIES_ON_FIRST_PARTY_AUDIENCE_LIST"
        FPTFilterEligibleCookiesOnThirdPartyAudienceListAndInterest -> "FILTER_ELIGIBLE_COOKIES_ON_THIRD_PARTY_AUDIENCE_LIST_AND_INTEREST"
        FPTFilterExchange -> "FILTER_EXCHANGE"
        FPTFilterExchangeCode -> "FILTER_EXCHANGE_CODE"
        FPTFilterExtension -> "FILTER_EXTENSION"
        FPTFilterExtensionStatus -> "FILTER_EXTENSION_STATUS"
        FPTFilterExtensionType -> "FILTER_EXTENSION_TYPE"
        FPTFilterFirstPartyAudienceListCost -> "FILTER_FIRST_PARTY_AUDIENCE_LIST_COST"
        FPTFilterFirstPartyAudienceListType -> "FILTER_FIRST_PARTY_AUDIENCE_LIST_TYPE"
        FPTFilterFloodlightActivity -> "FILTER_FLOODLIGHT_ACTIVITY"
        FPTFilterFormat -> "FILTER_FORMAT"
        FPTFilterGmailAge -> "FILTER_GMAIL_AGE"
        FPTFilterGmailCity -> "FILTER_GMAIL_CITY"
        FPTFilterGmailCountry -> "FILTER_GMAIL_COUNTRY"
        FPTFilterGmailCountryName -> "FILTER_GMAIL_COUNTRY_NAME"
        FPTFilterGmailDeviceType -> "FILTER_GMAIL_DEVICE_TYPE"
        FPTFilterGmailDeviceTypeName -> "FILTER_GMAIL_DEVICE_TYPE_NAME"
        FPTFilterGmailGender -> "FILTER_GMAIL_GENDER"
        FPTFilterGmailRegion -> "FILTER_GMAIL_REGION"
        FPTFilterGmailRemarketingList -> "FILTER_GMAIL_REMARKETING_LIST"
        FPTFilterHouseholdIncome -> "FILTER_HOUSEHOLD_INCOME"
        FPTFilterImpressionCountingMethod -> "FILTER_IMPRESSION_COUNTING_METHOD"
        FPTFilterYouTubeProgrammaticGuaranteedInsertionOrder -> "FILTER_YOUTUBE_PROGRAMMATIC_GUARANTEED_INSERTION_ORDER"
        FPTFilterInsertionOrderIntegrationCode -> "FILTER_INSERTION_ORDER_INTEGRATION_CODE"
        FPTFilterInsertionOrderStatus -> "FILTER_INSERTION_ORDER_STATUS"
        FPTFilterInterest -> "FILTER_INTEREST"
        FPTFilterInventorySourceGroup -> "FILTER_INVENTORY_SOURCE_GROUP"
        FPTFilterInventorySourceGroupId -> "FILTER_INVENTORY_SOURCE_GROUP_ID"
        FPTFilterInventorySourceId -> "FILTER_INVENTORY_SOURCE_ID"
        FPTFilterInventorySourceName -> "FILTER_INVENTORY_SOURCE_NAME"
        FPTFilterLifeEvent -> "FILTER_LIFE_EVENT"
        FPTFilterLifeEvents -> "FILTER_LIFE_EVENTS"
        FPTFilterLineItemIntegrationCode -> "FILTER_LINE_ITEM_INTEGRATION_CODE"
        FPTFilterLineItemName -> "FILTER_LINE_ITEM_NAME"
        FPTFilterLineItemStatus -> "FILTER_LINE_ITEM_STATUS"
        FPTFilterMatchRatio -> "FILTER_MATCH_RATIO"
        FPTFilterMeasurementSource -> "FILTER_MEASUREMENT_SOURCE"
        FPTFilterMediaPlanName -> "FILTER_MEDIA_PLAN_NAME"
        FPTFilterParentalStatus -> "FILTER_PARENTAL_STATUS"
        FPTFilterPlacementAllYouTubeChannels -> "FILTER_PLACEMENT_ALL_YOUTUBE_CHANNELS"
        FPTFilterPlatform -> "FILTER_PLATFORM"
        FPTFilterPlaybackMethod -> "FILTER_PLAYBACK_METHOD"
        FPTFilterPositionInContent -> "FILTER_POSITION_IN_CONTENT"
        FPTFilterPublisherProperty -> "FILTER_PUBLISHER_PROPERTY"
        FPTFilterPublisherPropertyId -> "FILTER_PUBLISHER_PROPERTY_ID"
        FPTFilterPublisherPropertySection -> "FILTER_PUBLISHER_PROPERTY_SECTION"
        FPTFilterPublisherPropertySectionId -> "FILTER_PUBLISHER_PROPERTY_SECTION_ID"
        FPTFilterRefundReason -> "FILTER_REFUND_REASON"
        FPTFilterRemarketingList -> "FILTER_REMARKETING_LIST"
        FPTFilterRewarded -> "FILTER_REWARDED"
        FPTFilterSensitiveCategory -> "FILTER_SENSITIVE_CATEGORY"
        FPTFilterServedPixelDensity -> "FILTER_SERVED_PIXEL_DENSITY"
        FPTFilterTargetedDataProviders -> "FILTER_TARGETED_DATA_PROVIDERS"
        FPTFilterThirdPartyAudienceListCost -> "FILTER_THIRD_PARTY_AUDIENCE_LIST_COST"
        FPTFilterThirdPartyAudienceListType -> "FILTER_THIRD_PARTY_AUDIENCE_LIST_TYPE"
        FPTFilterTrueviewAd -> "FILTER_TRUEVIEW_AD"
        FPTFilterTrueviewAdGroup -> "FILTER_TRUEVIEW_AD_GROUP"
        FPTFilterTrueviewDetailedDemographics -> "FILTER_TRUEVIEW_DETAILED_DEMOGRAPHICS"
        FPTFilterTrueviewDetailedDemographicsId -> "FILTER_TRUEVIEW_DETAILED_DEMOGRAPHICS_ID"
        FPTFilterTrueviewHouseholdIncome -> "FILTER_TRUEVIEW_HOUSEHOLD_INCOME"
        FPTFilterTrueviewIarCountryName -> "FILTER_TRUEVIEW_IAR_COUNTRY_NAME"
        FPTFilterTrueviewRemarketingListName -> "FILTER_TRUEVIEW_REMARKETING_LIST_NAME"
        FPTFilterVariantId -> "FILTER_VARIANT_ID"
        FPTFilterVariantName -> "FILTER_VARIANT_NAME"
        FPTFilterVariantVersion -> "FILTER_VARIANT_VERSION"
        FPTFilterVerificationVideoPlayerSize -> "FILTER_VERIFICATION_VIDEO_PLAYER_SIZE"
        FPTFilterVerificationVideoPosition -> "FILTER_VERIFICATION_VIDEO_POSITION"
        FPTFilterVideoCompanionCreativeSize -> "FILTER_VIDEO_COMPANION_CREATIVE_SIZE"
        FPTFilterVideoContinuousPlay -> "FILTER_VIDEO_CONTINUOUS_PLAY"
        FPTFilterVideoDuration -> "FILTER_VIDEO_DURATION"
        FPTFilterYouTubeAdaptedAudienceList -> "FILTER_YOUTUBE_ADAPTED_AUDIENCE_LIST"
        FPTFilterYouTubeAdVideo -> "FILTER_YOUTUBE_AD_VIDEO"
        FPTFilterYouTubeAdVideoId -> "FILTER_YOUTUBE_AD_VIDEO_ID"
        FPTFilterYouTubeChannel -> "FILTER_YOUTUBE_CHANNEL"
        FPTFilterYouTubeProgrammaticGuaranteedAdvertiser -> "FILTER_YOUTUBE_PROGRAMMATIC_GUARANTEED_ADVERTISER"
        FPTFilterYouTubeProgrammaticGuaranteedPartner -> "FILTER_YOUTUBE_PROGRAMMATIC_GUARANTEED_PARTNER"
        FPTFilterYouTubeVideo -> "FILTER_YOUTUBE_VIDEO"
        FPTFilterZipPostalCode -> "FILTER_ZIP_POSTAL_CODE"
        FPTFilterPlacementNameAllYouTubeChannels -> "FILTER_PLACEMENT_NAME_ALL_YOUTUBE_CHANNELS"
        FPTFilterTrueviewPlacementId -> "FILTER_TRUEVIEW_PLACEMENT_ID"
        FPTFilterPathPatternId -> "FILTER_PATH_PATTERN_ID"
        FPTFilterPathEventIndex -> "FILTER_PATH_EVENT_INDEX"
        FPTFilterEventType -> "FILTER_EVENT_TYPE"
        FPTFilterChannelGrouping -> "FILTER_CHANNEL_GROUPING"
        FPTFilterOmSdkAvailable -> "FILTER_OM_SDK_AVAILABLE"
        FPTFilterDataSource -> "FILTER_DATA_SOURCE"
        FPTFilterCM360PlacementId -> "FILTER_CM360_PLACEMENT_ID"
        FPTFilterTrueviewClickTypeName -> "FILTER_TRUEVIEW_CLICK_TYPE_NAME"
        FPTFilterTrueviewAdTypeName -> "FILTER_TRUEVIEW_AD_TYPE_NAME"
        FPTFilterVideoContentDuration -> "FILTER_VIDEO_CONTENT_DURATION"
        FPTFilterMatchedGenreTarget -> "FILTER_MATCHED_GENRE_TARGET"
        FPTFilterVideoContentLiveStream -> "FILTER_VIDEO_CONTENT_LIVE_STREAM"
        FPTFilterBudgetSegmentType -> "FILTER_BUDGET_SEGMENT_TYPE"
        FPTFilterBudgetSegmentBudget -> "FILTER_BUDGET_SEGMENT_BUDGET"
        FPTFilterBudgetSegmentStartDate -> "FILTER_BUDGET_SEGMENT_START_DATE"
        FPTFilterBudgetSegmentEndDate -> "FILTER_BUDGET_SEGMENT_END_DATE"
        FPTFilterBudgetSegmentPacingPercentage -> "FILTER_BUDGET_SEGMENT_PACING_PERCENTAGE"
        FPTFilterLineItemBudget -> "FILTER_LINE_ITEM_BUDGET"
        FPTFilterLineItemStartDate -> "FILTER_LINE_ITEM_START_DATE"
        FPTFilterLineItemEndDate -> "FILTER_LINE_ITEM_END_DATE"
        FPTFilterInsertionOrderGoalType -> "FILTER_INSERTION_ORDER_GOAL_TYPE"
        FPTFilterLineItemPacingPercentage -> "FILTER_LINE_ITEM_PACING_PERCENTAGE"
        FPTFilterInsertionOrderGoalValue -> "FILTER_INSERTION_ORDER_GOAL_VALUE"
        FPTFilterOmidCapable -> "FILTER_OMID_CAPABLE"
        FPTFilterVendorMeasurementMode -> "FILTER_VENDOR_MEASUREMENT_MODE"

instance FromJSON FilterPairType where
    parseJSON = parseJSONText "FilterPairType"

instance ToJSON FilterPairType where
    toJSON = toJSONText

-- | Report data range used to generate the report.
data RunQueryRequestDataRange
    = RQRDRCustomDates
      -- ^ @CUSTOM_DATES@
    | RQRDRCurrentDay
      -- ^ @CURRENT_DAY@
    | RQRDRPreviousDay
      -- ^ @PREVIOUS_DAY@
    | RQRDRWeekToDate
      -- ^ @WEEK_TO_DATE@
    | RQRDRMonthToDate
      -- ^ @MONTH_TO_DATE@
    | RQRDRQuarterToDate
      -- ^ @QUARTER_TO_DATE@
    | RQRDRYearToDate
      -- ^ @YEAR_TO_DATE@
    | RQRDRPreviousWeek
      -- ^ @PREVIOUS_WEEK@
    | RQRDRPreviousHalfMonth
      -- ^ @PREVIOUS_HALF_MONTH@
    | RQRDRPreviousMonth
      -- ^ @PREVIOUS_MONTH@
    | RQRDRPreviousQuarter
      -- ^ @PREVIOUS_QUARTER@
    | RQRDRPreviousYear
      -- ^ @PREVIOUS_YEAR@
    | RQRDRLast7Days
      -- ^ @LAST_7_DAYS@
    | RQRDRLast30Days
      -- ^ @LAST_30_DAYS@
    | RQRDRLast90Days
      -- ^ @LAST_90_DAYS@
    | RQRDRLast365Days
      -- ^ @LAST_365_DAYS@
    | RQRDRAllTime
      -- ^ @ALL_TIME@
    | RQRDRLast14Days
      -- ^ @LAST_14_DAYS@
    | RQRDRTypeNotSupported
      -- ^ @TYPE_NOT_SUPPORTED@
    | RQRDRLast60Days
      -- ^ @LAST_60_DAYS@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable RunQueryRequestDataRange

instance FromHttpApiData RunQueryRequestDataRange where
    parseQueryParam = \case
        "CUSTOM_DATES" -> Right RQRDRCustomDates
        "CURRENT_DAY" -> Right RQRDRCurrentDay
        "PREVIOUS_DAY" -> Right RQRDRPreviousDay
        "WEEK_TO_DATE" -> Right RQRDRWeekToDate
        "MONTH_TO_DATE" -> Right RQRDRMonthToDate
        "QUARTER_TO_DATE" -> Right RQRDRQuarterToDate
        "YEAR_TO_DATE" -> Right RQRDRYearToDate
        "PREVIOUS_WEEK" -> Right RQRDRPreviousWeek
        "PREVIOUS_HALF_MONTH" -> Right RQRDRPreviousHalfMonth
        "PREVIOUS_MONTH" -> Right RQRDRPreviousMonth
        "PREVIOUS_QUARTER" -> Right RQRDRPreviousQuarter
        "PREVIOUS_YEAR" -> Right RQRDRPreviousYear
        "LAST_7_DAYS" -> Right RQRDRLast7Days
        "LAST_30_DAYS" -> Right RQRDRLast30Days
        "LAST_90_DAYS" -> Right RQRDRLast90Days
        "LAST_365_DAYS" -> Right RQRDRLast365Days
        "ALL_TIME" -> Right RQRDRAllTime
        "LAST_14_DAYS" -> Right RQRDRLast14Days
        "TYPE_NOT_SUPPORTED" -> Right RQRDRTypeNotSupported
        "LAST_60_DAYS" -> Right RQRDRLast60Days
        x -> Left ("Unable to parse RunQueryRequestDataRange from: " <> x)

instance ToHttpApiData RunQueryRequestDataRange where
    toQueryParam = \case
        RQRDRCustomDates -> "CUSTOM_DATES"
        RQRDRCurrentDay -> "CURRENT_DAY"
        RQRDRPreviousDay -> "PREVIOUS_DAY"
        RQRDRWeekToDate -> "WEEK_TO_DATE"
        RQRDRMonthToDate -> "MONTH_TO_DATE"
        RQRDRQuarterToDate -> "QUARTER_TO_DATE"
        RQRDRYearToDate -> "YEAR_TO_DATE"
        RQRDRPreviousWeek -> "PREVIOUS_WEEK"
        RQRDRPreviousHalfMonth -> "PREVIOUS_HALF_MONTH"
        RQRDRPreviousMonth -> "PREVIOUS_MONTH"
        RQRDRPreviousQuarter -> "PREVIOUS_QUARTER"
        RQRDRPreviousYear -> "PREVIOUS_YEAR"
        RQRDRLast7Days -> "LAST_7_DAYS"
        RQRDRLast30Days -> "LAST_30_DAYS"
        RQRDRLast90Days -> "LAST_90_DAYS"
        RQRDRLast365Days -> "LAST_365_DAYS"
        RQRDRAllTime -> "ALL_TIME"
        RQRDRLast14Days -> "LAST_14_DAYS"
        RQRDRTypeNotSupported -> "TYPE_NOT_SUPPORTED"
        RQRDRLast60Days -> "LAST_60_DAYS"

instance FromJSON RunQueryRequestDataRange where
    parseJSON = parseJSONText "RunQueryRequestDataRange"

instance ToJSON RunQueryRequestDataRange where
    toJSON = toJSONText

-- | The state of the report.
data ReportStatusState
    = Running
      -- ^ @RUNNING@
    | Done
      -- ^ @DONE@
    | Failed
      -- ^ @FAILED@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ReportStatusState

instance FromHttpApiData ReportStatusState where
    parseQueryParam = \case
        "RUNNING" -> Right Running
        "DONE" -> Right Done
        "FAILED" -> Right Failed
        x -> Left ("Unable to parse ReportStatusState from: " <> x)

instance ToHttpApiData ReportStatusState where
    toQueryParam = \case
        Running -> "RUNNING"
        Done -> "DONE"
        Failed -> "FAILED"

instance FromJSON ReportStatusState where
    parseJSON = parseJSONText "ReportStatusState"

instance ToJSON ReportStatusState where
    toJSON = toJSONText

data ParametersGroupBysItem
    = PGBIFilterUnknown
      -- ^ @FILTER_UNKNOWN@
    | PGBIFilterDate
      -- ^ @FILTER_DATE@
    | PGBIFilterDayOfWeek
      -- ^ @FILTER_DAY_OF_WEEK@
    | PGBIFilterWeek
      -- ^ @FILTER_WEEK@
    | PGBIFilterMonth
      -- ^ @FILTER_MONTH@
    | PGBIFilterYear
      -- ^ @FILTER_YEAR@
    | PGBIFilterTimeOfDay
      -- ^ @FILTER_TIME_OF_DAY@
    | PGBIFilterConversionDelay
      -- ^ @FILTER_CONVERSION_DELAY@
    | PGBIFilterCreativeId
      -- ^ @FILTER_CREATIVE_ID@
    | PGBIFilterCreativeSize
      -- ^ @FILTER_CREATIVE_SIZE@
    | PGBIFilterCreativeType
      -- ^ @FILTER_CREATIVE_TYPE@
    | PGBIFilterExchangeId
      -- ^ @FILTER_EXCHANGE_ID@
    | PGBIFilterAdPosition
      -- ^ @FILTER_AD_POSITION@
    | PGBIFilterPublicInventory
      -- ^ @FILTER_PUBLIC_INVENTORY@
    | PGBIFilterInventorySource
      -- ^ @FILTER_INVENTORY_SOURCE@
    | PGBIFilterCity
      -- ^ @FILTER_CITY@
    | PGBIFilterRegion
      -- ^ @FILTER_REGION@
    | PGBIFilterDma
      -- ^ @FILTER_DMA@
    | PGBIFilterCountry
      -- ^ @FILTER_COUNTRY@
    | PGBIFilterSiteId
      -- ^ @FILTER_SITE_ID@
    | PGBIFilterChannelId
      -- ^ @FILTER_CHANNEL_ID@
    | PGBIFilterPartner
      -- ^ @FILTER_PARTNER@
    | PGBIFilterAdvertiser
      -- ^ @FILTER_ADVERTISER@
    | PGBIFilterInsertionOrder
      -- ^ @FILTER_INSERTION_ORDER@
    | PGBIFilterLineItem
      -- ^ @FILTER_LINE_ITEM@
    | PGBIFilterPartnerCurrency
      -- ^ @FILTER_PARTNER_CURRENCY@
    | PGBIFilterAdvertiserCurrency
      -- ^ @FILTER_ADVERTISER_CURRENCY@
    | PGBIFilterAdvertiserTimezone
      -- ^ @FILTER_ADVERTISER_TIMEZONE@
    | PGBIFilterLineItemType
      -- ^ @FILTER_LINE_ITEM_TYPE@
    | PGBIFilterUserList
      -- ^ @FILTER_USER_LIST@
    | PGBIFilterUserListFirstParty
      -- ^ @FILTER_USER_LIST_FIRST_PARTY@
    | PGBIFilterUserListThirdParty
      -- ^ @FILTER_USER_LIST_THIRD_PARTY@
    | PGBIFilterTargetedUserList
      -- ^ @FILTER_TARGETED_USER_LIST@
    | PGBIFilterDataProvider
      -- ^ @FILTER_DATA_PROVIDER@
    | PGBIFilterOrderId
      -- ^ @FILTER_ORDER_ID@
    | PGBIFilterVideoPlayerSize
      -- ^ @FILTER_VIDEO_PLAYER_SIZE@
    | PGBIFilterVideoDurationSeconds
      -- ^ @FILTER_VIDEO_DURATION_SECONDS@
    | PGBIFilterKeyword
      -- ^ @FILTER_KEYWORD@
    | PGBIFilterPageCategory
      -- ^ @FILTER_PAGE_CATEGORY@
    | PGBIFilterCampaignDailyFrequency
      -- ^ @FILTER_CAMPAIGN_DAILY_FREQUENCY@
    | PGBIFilterLineItemDailyFrequency
      -- ^ @FILTER_LINE_ITEM_DAILY_FREQUENCY@
    | PGBIFilterLineItemLifetimeFrequency
      -- ^ @FILTER_LINE_ITEM_LIFETIME_FREQUENCY@
    | PGBIFilterOS
      -- ^ @FILTER_OS@
    | PGBIFilterBrowser
      -- ^ @FILTER_BROWSER@
    | PGBIFilterCarrier
      -- ^ @FILTER_CARRIER@
    | PGBIFilterSiteLanguage
      -- ^ @FILTER_SITE_LANGUAGE@
    | PGBIFilterInventoryFormat
      -- ^ @FILTER_INVENTORY_FORMAT@
    | PGBIFilterZipCode
      -- ^ @FILTER_ZIP_CODE@
    | PGBIFilterVideoRatingTier
      -- ^ @FILTER_VIDEO_RATING_TIER@
    | PGBIFilterVideoFormatSupport
      -- ^ @FILTER_VIDEO_FORMAT_SUPPORT@
    | PGBIFilterVideoSkippableSupport
      -- ^ @FILTER_VIDEO_SKIPPABLE_SUPPORT@
    | PGBIFilterVideoCreativeDuration
      -- ^ @FILTER_VIDEO_CREATIVE_DURATION@
    | PGBIFilterPageLayout
      -- ^ @FILTER_PAGE_LAYOUT@
    | PGBIFilterVideoAdPositionInStream
      -- ^ @FILTER_VIDEO_AD_POSITION_IN_STREAM@
    | PGBIFilterAge
      -- ^ @FILTER_AGE@
    | PGBIFilterGender
      -- ^ @FILTER_GENDER@
    | PGBIFilterQuarter
      -- ^ @FILTER_QUARTER@
    | PGBIFilterTrueviewConversionType
      -- ^ @FILTER_TRUEVIEW_CONVERSION_TYPE@
    | PGBIFilterMobileGeo
      -- ^ @FILTER_MOBILE_GEO@
    | PGBIFilterMraidSupport
      -- ^ @FILTER_MRAID_SUPPORT@
    | PGBIFilterActiveViewExpectedViewability
      -- ^ @FILTER_ACTIVE_VIEW_EXPECTED_VIEWABILITY@
    | PGBIFilterVideoCreativeDurationSkippable
      -- ^ @FILTER_VIDEO_CREATIVE_DURATION_SKIPPABLE@
    | PGBIFilterNielsenCountryCode
      -- ^ @FILTER_NIELSEN_COUNTRY_CODE@
    | PGBIFilterNielsenDeviceId
      -- ^ @FILTER_NIELSEN_DEVICE_ID@
    | PGBIFilterNielsenGender
      -- ^ @FILTER_NIELSEN_GENDER@
    | PGBIFilterNielsenAge
      -- ^ @FILTER_NIELSEN_AGE@
    | PGBIFilterInventorySourceType
      -- ^ @FILTER_INVENTORY_SOURCE_TYPE@
    | PGBIFilterCreativeWidth
      -- ^ @FILTER_CREATIVE_WIDTH@
    | PGBIFilterCreativeHeight
      -- ^ @FILTER_CREATIVE_HEIGHT@
    | PGBIFilterDfpOrderId
      -- ^ @FILTER_DFP_ORDER_ID@
    | PGBIFilterTrueviewAge
      -- ^ @FILTER_TRUEVIEW_AGE@
    | PGBIFilterTrueviewGender
      -- ^ @FILTER_TRUEVIEW_GENDER@
    | PGBIFilterTrueviewParentalStatus
      -- ^ @FILTER_TRUEVIEW_PARENTAL_STATUS@
    | PGBIFilterTrueviewRemarketingList
      -- ^ @FILTER_TRUEVIEW_REMARKETING_LIST@
    | PGBIFilterTrueviewInterest
      -- ^ @FILTER_TRUEVIEW_INTEREST@
    | PGBIFilterTrueviewAdGroupId
      -- ^ @FILTER_TRUEVIEW_AD_GROUP_ID@
    | PGBIFilterTrueviewAdGroupAdId
      -- ^ @FILTER_TRUEVIEW_AD_GROUP_AD_ID@
    | PGBIFilterTrueviewIarLanguage
      -- ^ @FILTER_TRUEVIEW_IAR_LANGUAGE@
    | PGBIFilterTrueviewIarGender
      -- ^ @FILTER_TRUEVIEW_IAR_GENDER@
    | PGBIFilterTrueviewIarAge
      -- ^ @FILTER_TRUEVIEW_IAR_AGE@
    | PGBIFilterTrueviewIarCategory
      -- ^ @FILTER_TRUEVIEW_IAR_CATEGORY@
    | PGBIFilterTrueviewIarCountry
      -- ^ @FILTER_TRUEVIEW_IAR_COUNTRY@
    | PGBIFilterTrueviewIarCity
      -- ^ @FILTER_TRUEVIEW_IAR_CITY@
    | PGBIFilterTrueviewIarRegion
      -- ^ @FILTER_TRUEVIEW_IAR_REGION@
    | PGBIFilterTrueviewIarZipcode
      -- ^ @FILTER_TRUEVIEW_IAR_ZIPCODE@
    | PGBIFilterTrueviewIarRemarketingList
      -- ^ @FILTER_TRUEVIEW_IAR_REMARKETING_LIST@
    | PGBIFilterTrueviewIarInterest
      -- ^ @FILTER_TRUEVIEW_IAR_INTEREST@
    | PGBIFilterTrueviewIarParentalStatus
      -- ^ @FILTER_TRUEVIEW_IAR_PARENTAL_STATUS@
    | PGBIFilterTrueviewIarTimeOfDay
      -- ^ @FILTER_TRUEVIEW_IAR_TIME_OF_DAY@
    | PGBIFilterTrueviewCustomAffinity
      -- ^ @FILTER_TRUEVIEW_CUSTOM_AFFINITY@
    | PGBIFilterTrueviewCategory
      -- ^ @FILTER_TRUEVIEW_CATEGORY@
    | PGBIFilterTrueviewKeyword
      -- ^ @FILTER_TRUEVIEW_KEYWORD@
    | PGBIFilterTrueviewPlacement
      -- ^ @FILTER_TRUEVIEW_PLACEMENT@
    | PGBIFilterTrueviewURL
      -- ^ @FILTER_TRUEVIEW_URL@
    | PGBIFilterTrueviewCountry
      -- ^ @FILTER_TRUEVIEW_COUNTRY@
    | PGBIFilterTrueviewRegion
      -- ^ @FILTER_TRUEVIEW_REGION@
    | PGBIFilterTrueviewCity
      -- ^ @FILTER_TRUEVIEW_CITY@
    | PGBIFilterTrueviewDma
      -- ^ @FILTER_TRUEVIEW_DMA@
    | PGBIFilterTrueviewZipcode
      -- ^ @FILTER_TRUEVIEW_ZIPCODE@
    | PGBIFilterNotSupported
      -- ^ @FILTER_NOT_SUPPORTED@
    | PGBIFilterMediaPlan
      -- ^ @FILTER_MEDIA_PLAN@
    | PGBIFilterTrueviewIarYouTubeChannel
      -- ^ @FILTER_TRUEVIEW_IAR_YOUTUBE_CHANNEL@
    | PGBIFilterTrueviewIarYouTubeVideo
      -- ^ @FILTER_TRUEVIEW_IAR_YOUTUBE_VIDEO@
    | PGBIFilterSkippableSupport
      -- ^ @FILTER_SKIPPABLE_SUPPORT@
    | PGBIFilterCompanionCreativeId
      -- ^ @FILTER_COMPANION_CREATIVE_ID@
    | PGBIFilterBudgetSegmentDescription
      -- ^ @FILTER_BUDGET_SEGMENT_DESCRIPTION@
    | PGBIFilterFloodlightActivityId
      -- ^ @FILTER_FLOODLIGHT_ACTIVITY_ID@
    | PGBIFilterDeviceModel
      -- ^ @FILTER_DEVICE_MODEL@
    | PGBIFilterDeviceMake
      -- ^ @FILTER_DEVICE_MAKE@
    | PGBIFilterDeviceType
      -- ^ @FILTER_DEVICE_TYPE@
    | PGBIFilterCreativeAttribute
      -- ^ @FILTER_CREATIVE_ATTRIBUTE@
    | PGBIFilterInventoryCommitmentType
      -- ^ @FILTER_INVENTORY_COMMITMENT_TYPE@
    | PGBIFilterInventoryRateType
      -- ^ @FILTER_INVENTORY_RATE_TYPE@
    | PGBIFilterInventoryDeliveryMethod
      -- ^ @FILTER_INVENTORY_DELIVERY_METHOD@
    | PGBIFilterInventorySourceExternalId
      -- ^ @FILTER_INVENTORY_SOURCE_EXTERNAL_ID@
    | PGBIFilterAuthorizedSellerState
      -- ^ @FILTER_AUTHORIZED_SELLER_STATE@
    | PGBIFilterVideoDurationSecondsRange
      -- ^ @FILTER_VIDEO_DURATION_SECONDS_RANGE@
    | PGBIFilterPartnerName
      -- ^ @FILTER_PARTNER_NAME@
    | PGBIFilterPartnerStatus
      -- ^ @FILTER_PARTNER_STATUS@
    | PGBIFilterAdvertiserName
      -- ^ @FILTER_ADVERTISER_NAME@
    | PGBIFilterAdvertiserIntegrationCode
      -- ^ @FILTER_ADVERTISER_INTEGRATION_CODE@
    | PGBIFilterAdvertiserIntegrationStatus
      -- ^ @FILTER_ADVERTISER_INTEGRATION_STATUS@
    | PGBIFilterCarrierName
      -- ^ @FILTER_CARRIER_NAME@
    | PGBIFilterChannelName
      -- ^ @FILTER_CHANNEL_NAME@
    | PGBIFilterCityName
      -- ^ @FILTER_CITY_NAME@
    | PGBIFilterCompanionCreativeName
      -- ^ @FILTER_COMPANION_CREATIVE_NAME@
    | PGBIFilterUserListFirstPartyName
      -- ^ @FILTER_USER_LIST_FIRST_PARTY_NAME@
    | PGBIFilterUserListThirdPartyName
      -- ^ @FILTER_USER_LIST_THIRD_PARTY_NAME@
    | PGBIFilterNielsenReStatementDate
      -- ^ @FILTER_NIELSEN_RESTATEMENT_DATE@
    | PGBIFilterNielsenDateRange
      -- ^ @FILTER_NIELSEN_DATE_RANGE@
    | PGBIFilterInsertionOrderName
      -- ^ @FILTER_INSERTION_ORDER_NAME@
    | PGBIFilterRegionName
      -- ^ @FILTER_REGION_NAME@
    | PGBIFilterDmaName
      -- ^ @FILTER_DMA_NAME@
    | PGBIFilterTrueviewIarRegionName
      -- ^ @FILTER_TRUEVIEW_IAR_REGION_NAME@
    | PGBIFilterTrueviewDmaName
      -- ^ @FILTER_TRUEVIEW_DMA_NAME@
    | PGBIFilterTrueviewRegionName
      -- ^ @FILTER_TRUEVIEW_REGION_NAME@
    | PGBIFilterActiveViewCustomMetricId
      -- ^ @FILTER_ACTIVE_VIEW_CUSTOM_METRIC_ID@
    | PGBIFilterActiveViewCustomMetricName
      -- ^ @FILTER_ACTIVE_VIEW_CUSTOM_METRIC_NAME@
    | PGBIFilterAdType
      -- ^ @FILTER_AD_TYPE@
    | PGBIFilterAlgorithm
      -- ^ @FILTER_ALGORITHM@
    | PGBIFilterAlgorithmId
      -- ^ @FILTER_ALGORITHM_ID@
    | PGBIFilterAmpPageRequest
      -- ^ @FILTER_AMP_PAGE_REQUEST@
    | PGBIFilterAnonymousInventoryModeling
      -- ^ @FILTER_ANONYMOUS_INVENTORY_MODELING@
    | PGBIFilterAppURL
      -- ^ @FILTER_APP_URL@
    | PGBIFilterAppURLExcluded
      -- ^ @FILTER_APP_URL_EXCLUDED@
    | PGBIFilterAttributedUserList
      -- ^ @FILTER_ATTRIBUTED_USERLIST@
    | PGBIFilterAttributedUserListCost
      -- ^ @FILTER_ATTRIBUTED_USERLIST_COST@
    | PGBIFilterAttributedUserListType
      -- ^ @FILTER_ATTRIBUTED_USERLIST_TYPE@
    | PGBIFilterAttributionModel
      -- ^ @FILTER_ATTRIBUTION_MODEL@
    | PGBIFilterAudienceList
      -- ^ @FILTER_AUDIENCE_LIST@
    | PGBIFilterAudienceListCost
      -- ^ @FILTER_AUDIENCE_LIST_COST@
    | PGBIFilterAudienceListType
      -- ^ @FILTER_AUDIENCE_LIST_TYPE@
    | PGBIFilterAudienceName
      -- ^ @FILTER_AUDIENCE_NAME@
    | PGBIFilterAudienceType
      -- ^ @FILTER_AUDIENCE_TYPE@
    | PGBIFilterBillableOutcome
      -- ^ @FILTER_BILLABLE_OUTCOME@
    | PGBIFilterBrandLiftType
      -- ^ @FILTER_BRAND_LIFT_TYPE@
    | PGBIFilterChannelType
      -- ^ @FILTER_CHANNEL_TYPE@
    | PGBIFilterCmPlacementId
      -- ^ @FILTER_CM_PLACEMENT_ID@
    | PGBIFilterConversionSource
      -- ^ @FILTER_CONVERSION_SOURCE@
    | PGBIFilterConversionSourceId
      -- ^ @FILTER_CONVERSION_SOURCE_ID@
    | PGBIFilterCountryId
      -- ^ @FILTER_COUNTRY_ID@
    | PGBIFilterCreative
      -- ^ @FILTER_CREATIVE@
    | PGBIFilterCreativeAsset
      -- ^ @FILTER_CREATIVE_ASSET@
    | PGBIFilterCreativeIntegrationCode
      -- ^ @FILTER_CREATIVE_INTEGRATION_CODE@
    | PGBIFilterCreativeRenderedInAmp
      -- ^ @FILTER_CREATIVE_RENDERED_IN_AMP@
    | PGBIFilterCreativeSource
      -- ^ @FILTER_CREATIVE_SOURCE@
    | PGBIFilterCreativeStatus
      -- ^ @FILTER_CREATIVE_STATUS@
    | PGBIFilterDataProviderName
      -- ^ @FILTER_DATA_PROVIDER_NAME@
    | PGBIFilterDetailedDemographics
      -- ^ @FILTER_DETAILED_DEMOGRAPHICS@
    | PGBIFilterDetailedDemographicsId
      -- ^ @FILTER_DETAILED_DEMOGRAPHICS_ID@
    | PGBIFilterDevice
      -- ^ @FILTER_DEVICE@
    | PGBIFilterGamInsertionOrder
      -- ^ @FILTER_GAM_INSERTION_ORDER@
    | PGBIFilterGamLineItem
      -- ^ @FILTER_GAM_LINE_ITEM@
    | PGBIFilterGamLineItemId
      -- ^ @FILTER_GAM_LINE_ITEM_ID@
    | PGBIFilterDigitalContentLabel
      -- ^ @FILTER_DIGITAL_CONTENT_LABEL@
    | PGBIFilterDomain
      -- ^ @FILTER_DOMAIN@
    | PGBIFilterEligibleCookiesOnFirstPartyAudienceList
      -- ^ @FILTER_ELIGIBLE_COOKIES_ON_FIRST_PARTY_AUDIENCE_LIST@
    | PGBIFilterEligibleCookiesOnThirdPartyAudienceListAndInterest
      -- ^ @FILTER_ELIGIBLE_COOKIES_ON_THIRD_PARTY_AUDIENCE_LIST_AND_INTEREST@
    | PGBIFilterExchange
      -- ^ @FILTER_EXCHANGE@
    | PGBIFilterExchangeCode
      -- ^ @FILTER_EXCHANGE_CODE@
    | PGBIFilterExtension
      -- ^ @FILTER_EXTENSION@
    | PGBIFilterExtensionStatus
      -- ^ @FILTER_EXTENSION_STATUS@
    | PGBIFilterExtensionType
      -- ^ @FILTER_EXTENSION_TYPE@
    | PGBIFilterFirstPartyAudienceListCost
      -- ^ @FILTER_FIRST_PARTY_AUDIENCE_LIST_COST@
    | PGBIFilterFirstPartyAudienceListType
      -- ^ @FILTER_FIRST_PARTY_AUDIENCE_LIST_TYPE@
    | PGBIFilterFloodlightActivity
      -- ^ @FILTER_FLOODLIGHT_ACTIVITY@
    | PGBIFilterFormat
      -- ^ @FILTER_FORMAT@
    | PGBIFilterGmailAge
      -- ^ @FILTER_GMAIL_AGE@
    | PGBIFilterGmailCity
      -- ^ @FILTER_GMAIL_CITY@
    | PGBIFilterGmailCountry
      -- ^ @FILTER_GMAIL_COUNTRY@
    | PGBIFilterGmailCountryName
      -- ^ @FILTER_GMAIL_COUNTRY_NAME@
    | PGBIFilterGmailDeviceType
      -- ^ @FILTER_GMAIL_DEVICE_TYPE@
    | PGBIFilterGmailDeviceTypeName
      -- ^ @FILTER_GMAIL_DEVICE_TYPE_NAME@
    | PGBIFilterGmailGender
      -- ^ @FILTER_GMAIL_GENDER@
    | PGBIFilterGmailRegion
      -- ^ @FILTER_GMAIL_REGION@
    | PGBIFilterGmailRemarketingList
      -- ^ @FILTER_GMAIL_REMARKETING_LIST@
    | PGBIFilterHouseholdIncome
      -- ^ @FILTER_HOUSEHOLD_INCOME@
    | PGBIFilterImpressionCountingMethod
      -- ^ @FILTER_IMPRESSION_COUNTING_METHOD@
    | PGBIFilterYouTubeProgrammaticGuaranteedInsertionOrder
      -- ^ @FILTER_YOUTUBE_PROGRAMMATIC_GUARANTEED_INSERTION_ORDER@
    | PGBIFilterInsertionOrderIntegrationCode
      -- ^ @FILTER_INSERTION_ORDER_INTEGRATION_CODE@
    | PGBIFilterInsertionOrderStatus
      -- ^ @FILTER_INSERTION_ORDER_STATUS@
    | PGBIFilterInterest
      -- ^ @FILTER_INTEREST@
    | PGBIFilterInventorySourceGroup
      -- ^ @FILTER_INVENTORY_SOURCE_GROUP@
    | PGBIFilterInventorySourceGroupId
      -- ^ @FILTER_INVENTORY_SOURCE_GROUP_ID@
    | PGBIFilterInventorySourceId
      -- ^ @FILTER_INVENTORY_SOURCE_ID@
    | PGBIFilterInventorySourceName
      -- ^ @FILTER_INVENTORY_SOURCE_NAME@
    | PGBIFilterLifeEvent
      -- ^ @FILTER_LIFE_EVENT@
    | PGBIFilterLifeEvents
      -- ^ @FILTER_LIFE_EVENTS@
    | PGBIFilterLineItemIntegrationCode
      -- ^ @FILTER_LINE_ITEM_INTEGRATION_CODE@
    | PGBIFilterLineItemName
      -- ^ @FILTER_LINE_ITEM_NAME@
    | PGBIFilterLineItemStatus
      -- ^ @FILTER_LINE_ITEM_STATUS@
    | PGBIFilterMatchRatio
      -- ^ @FILTER_MATCH_RATIO@
    | PGBIFilterMeasurementSource
      -- ^ @FILTER_MEASUREMENT_SOURCE@
    | PGBIFilterMediaPlanName
      -- ^ @FILTER_MEDIA_PLAN_NAME@
    | PGBIFilterParentalStatus
      -- ^ @FILTER_PARENTAL_STATUS@
    | PGBIFilterPlacementAllYouTubeChannels
      -- ^ @FILTER_PLACEMENT_ALL_YOUTUBE_CHANNELS@
    | PGBIFilterPlatform
      -- ^ @FILTER_PLATFORM@
    | PGBIFilterPlaybackMethod
      -- ^ @FILTER_PLAYBACK_METHOD@
    | PGBIFilterPositionInContent
      -- ^ @FILTER_POSITION_IN_CONTENT@
    | PGBIFilterPublisherProperty
      -- ^ @FILTER_PUBLISHER_PROPERTY@
    | PGBIFilterPublisherPropertyId
      -- ^ @FILTER_PUBLISHER_PROPERTY_ID@
    | PGBIFilterPublisherPropertySection
      -- ^ @FILTER_PUBLISHER_PROPERTY_SECTION@
    | PGBIFilterPublisherPropertySectionId
      -- ^ @FILTER_PUBLISHER_PROPERTY_SECTION_ID@
    | PGBIFilterRefundReason
      -- ^ @FILTER_REFUND_REASON@
    | PGBIFilterRemarketingList
      -- ^ @FILTER_REMARKETING_LIST@
    | PGBIFilterRewarded
      -- ^ @FILTER_REWARDED@
    | PGBIFilterSensitiveCategory
      -- ^ @FILTER_SENSITIVE_CATEGORY@
    | PGBIFilterServedPixelDensity
      -- ^ @FILTER_SERVED_PIXEL_DENSITY@
    | PGBIFilterTargetedDataProviders
      -- ^ @FILTER_TARGETED_DATA_PROVIDERS@
    | PGBIFilterThirdPartyAudienceListCost
      -- ^ @FILTER_THIRD_PARTY_AUDIENCE_LIST_COST@
    | PGBIFilterThirdPartyAudienceListType
      -- ^ @FILTER_THIRD_PARTY_AUDIENCE_LIST_TYPE@
    | PGBIFilterTrueviewAd
      -- ^ @FILTER_TRUEVIEW_AD@
    | PGBIFilterTrueviewAdGroup
      -- ^ @FILTER_TRUEVIEW_AD_GROUP@
    | PGBIFilterTrueviewDetailedDemographics
      -- ^ @FILTER_TRUEVIEW_DETAILED_DEMOGRAPHICS@
    | PGBIFilterTrueviewDetailedDemographicsId
      -- ^ @FILTER_TRUEVIEW_DETAILED_DEMOGRAPHICS_ID@
    | PGBIFilterTrueviewHouseholdIncome
      -- ^ @FILTER_TRUEVIEW_HOUSEHOLD_INCOME@
    | PGBIFilterTrueviewIarCountryName
      -- ^ @FILTER_TRUEVIEW_IAR_COUNTRY_NAME@
    | PGBIFilterTrueviewRemarketingListName
      -- ^ @FILTER_TRUEVIEW_REMARKETING_LIST_NAME@
    | PGBIFilterVariantId
      -- ^ @FILTER_VARIANT_ID@
    | PGBIFilterVariantName
      -- ^ @FILTER_VARIANT_NAME@
    | PGBIFilterVariantVersion
      -- ^ @FILTER_VARIANT_VERSION@
    | PGBIFilterVerificationVideoPlayerSize
      -- ^ @FILTER_VERIFICATION_VIDEO_PLAYER_SIZE@
    | PGBIFilterVerificationVideoPosition
      -- ^ @FILTER_VERIFICATION_VIDEO_POSITION@
    | PGBIFilterVideoCompanionCreativeSize
      -- ^ @FILTER_VIDEO_COMPANION_CREATIVE_SIZE@
    | PGBIFilterVideoContinuousPlay
      -- ^ @FILTER_VIDEO_CONTINUOUS_PLAY@
    | PGBIFilterVideoDuration
      -- ^ @FILTER_VIDEO_DURATION@
    | PGBIFilterYouTubeAdaptedAudienceList
      -- ^ @FILTER_YOUTUBE_ADAPTED_AUDIENCE_LIST@
    | PGBIFilterYouTubeAdVideo
      -- ^ @FILTER_YOUTUBE_AD_VIDEO@
    | PGBIFilterYouTubeAdVideoId
      -- ^ @FILTER_YOUTUBE_AD_VIDEO_ID@
    | PGBIFilterYouTubeChannel
      -- ^ @FILTER_YOUTUBE_CHANNEL@
    | PGBIFilterYouTubeProgrammaticGuaranteedAdvertiser
      -- ^ @FILTER_YOUTUBE_PROGRAMMATIC_GUARANTEED_ADVERTISER@
    | PGBIFilterYouTubeProgrammaticGuaranteedPartner
      -- ^ @FILTER_YOUTUBE_PROGRAMMATIC_GUARANTEED_PARTNER@
    | PGBIFilterYouTubeVideo
      -- ^ @FILTER_YOUTUBE_VIDEO@
    | PGBIFilterZipPostalCode
      -- ^ @FILTER_ZIP_POSTAL_CODE@
    | PGBIFilterPlacementNameAllYouTubeChannels
      -- ^ @FILTER_PLACEMENT_NAME_ALL_YOUTUBE_CHANNELS@
    | PGBIFilterTrueviewPlacementId
      -- ^ @FILTER_TRUEVIEW_PLACEMENT_ID@
    | PGBIFilterPathPatternId
      -- ^ @FILTER_PATH_PATTERN_ID@
    | PGBIFilterPathEventIndex
      -- ^ @FILTER_PATH_EVENT_INDEX@
    | PGBIFilterEventType
      -- ^ @FILTER_EVENT_TYPE@
    | PGBIFilterChannelGrouping
      -- ^ @FILTER_CHANNEL_GROUPING@
    | PGBIFilterOmSdkAvailable
      -- ^ @FILTER_OM_SDK_AVAILABLE@
    | PGBIFilterDataSource
      -- ^ @FILTER_DATA_SOURCE@
    | PGBIFilterCM360PlacementId
      -- ^ @FILTER_CM360_PLACEMENT_ID@
    | PGBIFilterTrueviewClickTypeName
      -- ^ @FILTER_TRUEVIEW_CLICK_TYPE_NAME@
    | PGBIFilterTrueviewAdTypeName
      -- ^ @FILTER_TRUEVIEW_AD_TYPE_NAME@
    | PGBIFilterVideoContentDuration
      -- ^ @FILTER_VIDEO_CONTENT_DURATION@
    | PGBIFilterMatchedGenreTarget
      -- ^ @FILTER_MATCHED_GENRE_TARGET@
    | PGBIFilterVideoContentLiveStream
      -- ^ @FILTER_VIDEO_CONTENT_LIVE_STREAM@
    | PGBIFilterBudgetSegmentType
      -- ^ @FILTER_BUDGET_SEGMENT_TYPE@
    | PGBIFilterBudgetSegmentBudget
      -- ^ @FILTER_BUDGET_SEGMENT_BUDGET@
    | PGBIFilterBudgetSegmentStartDate
      -- ^ @FILTER_BUDGET_SEGMENT_START_DATE@
    | PGBIFilterBudgetSegmentEndDate
      -- ^ @FILTER_BUDGET_SEGMENT_END_DATE@
    | PGBIFilterBudgetSegmentPacingPercentage
      -- ^ @FILTER_BUDGET_SEGMENT_PACING_PERCENTAGE@
    | PGBIFilterLineItemBudget
      -- ^ @FILTER_LINE_ITEM_BUDGET@
    | PGBIFilterLineItemStartDate
      -- ^ @FILTER_LINE_ITEM_START_DATE@
    | PGBIFilterLineItemEndDate
      -- ^ @FILTER_LINE_ITEM_END_DATE@
    | PGBIFilterInsertionOrderGoalType
      -- ^ @FILTER_INSERTION_ORDER_GOAL_TYPE@
    | PGBIFilterLineItemPacingPercentage
      -- ^ @FILTER_LINE_ITEM_PACING_PERCENTAGE@
    | PGBIFilterInsertionOrderGoalValue
      -- ^ @FILTER_INSERTION_ORDER_GOAL_VALUE@
    | PGBIFilterOmidCapable
      -- ^ @FILTER_OMID_CAPABLE@
    | PGBIFilterVendorMeasurementMode
      -- ^ @FILTER_VENDOR_MEASUREMENT_MODE@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ParametersGroupBysItem

instance FromHttpApiData ParametersGroupBysItem where
    parseQueryParam = \case
        "FILTER_UNKNOWN" -> Right PGBIFilterUnknown
        "FILTER_DATE" -> Right PGBIFilterDate
        "FILTER_DAY_OF_WEEK" -> Right PGBIFilterDayOfWeek
        "FILTER_WEEK" -> Right PGBIFilterWeek
        "FILTER_MONTH" -> Right PGBIFilterMonth
        "FILTER_YEAR" -> Right PGBIFilterYear
        "FILTER_TIME_OF_DAY" -> Right PGBIFilterTimeOfDay
        "FILTER_CONVERSION_DELAY" -> Right PGBIFilterConversionDelay
        "FILTER_CREATIVE_ID" -> Right PGBIFilterCreativeId
        "FILTER_CREATIVE_SIZE" -> Right PGBIFilterCreativeSize
        "FILTER_CREATIVE_TYPE" -> Right PGBIFilterCreativeType
        "FILTER_EXCHANGE_ID" -> Right PGBIFilterExchangeId
        "FILTER_AD_POSITION" -> Right PGBIFilterAdPosition
        "FILTER_PUBLIC_INVENTORY" -> Right PGBIFilterPublicInventory
        "FILTER_INVENTORY_SOURCE" -> Right PGBIFilterInventorySource
        "FILTER_CITY" -> Right PGBIFilterCity
        "FILTER_REGION" -> Right PGBIFilterRegion
        "FILTER_DMA" -> Right PGBIFilterDma
        "FILTER_COUNTRY" -> Right PGBIFilterCountry
        "FILTER_SITE_ID" -> Right PGBIFilterSiteId
        "FILTER_CHANNEL_ID" -> Right PGBIFilterChannelId
        "FILTER_PARTNER" -> Right PGBIFilterPartner
        "FILTER_ADVERTISER" -> Right PGBIFilterAdvertiser
        "FILTER_INSERTION_ORDER" -> Right PGBIFilterInsertionOrder
        "FILTER_LINE_ITEM" -> Right PGBIFilterLineItem
        "FILTER_PARTNER_CURRENCY" -> Right PGBIFilterPartnerCurrency
        "FILTER_ADVERTISER_CURRENCY" -> Right PGBIFilterAdvertiserCurrency
        "FILTER_ADVERTISER_TIMEZONE" -> Right PGBIFilterAdvertiserTimezone
        "FILTER_LINE_ITEM_TYPE" -> Right PGBIFilterLineItemType
        "FILTER_USER_LIST" -> Right PGBIFilterUserList
        "FILTER_USER_LIST_FIRST_PARTY" -> Right PGBIFilterUserListFirstParty
        "FILTER_USER_LIST_THIRD_PARTY" -> Right PGBIFilterUserListThirdParty
        "FILTER_TARGETED_USER_LIST" -> Right PGBIFilterTargetedUserList
        "FILTER_DATA_PROVIDER" -> Right PGBIFilterDataProvider
        "FILTER_ORDER_ID" -> Right PGBIFilterOrderId
        "FILTER_VIDEO_PLAYER_SIZE" -> Right PGBIFilterVideoPlayerSize
        "FILTER_VIDEO_DURATION_SECONDS" -> Right PGBIFilterVideoDurationSeconds
        "FILTER_KEYWORD" -> Right PGBIFilterKeyword
        "FILTER_PAGE_CATEGORY" -> Right PGBIFilterPageCategory
        "FILTER_CAMPAIGN_DAILY_FREQUENCY" -> Right PGBIFilterCampaignDailyFrequency
        "FILTER_LINE_ITEM_DAILY_FREQUENCY" -> Right PGBIFilterLineItemDailyFrequency
        "FILTER_LINE_ITEM_LIFETIME_FREQUENCY" -> Right PGBIFilterLineItemLifetimeFrequency
        "FILTER_OS" -> Right PGBIFilterOS
        "FILTER_BROWSER" -> Right PGBIFilterBrowser
        "FILTER_CARRIER" -> Right PGBIFilterCarrier
        "FILTER_SITE_LANGUAGE" -> Right PGBIFilterSiteLanguage
        "FILTER_INVENTORY_FORMAT" -> Right PGBIFilterInventoryFormat
        "FILTER_ZIP_CODE" -> Right PGBIFilterZipCode
        "FILTER_VIDEO_RATING_TIER" -> Right PGBIFilterVideoRatingTier
        "FILTER_VIDEO_FORMAT_SUPPORT" -> Right PGBIFilterVideoFormatSupport
        "FILTER_VIDEO_SKIPPABLE_SUPPORT" -> Right PGBIFilterVideoSkippableSupport
        "FILTER_VIDEO_CREATIVE_DURATION" -> Right PGBIFilterVideoCreativeDuration
        "FILTER_PAGE_LAYOUT" -> Right PGBIFilterPageLayout
        "FILTER_VIDEO_AD_POSITION_IN_STREAM" -> Right PGBIFilterVideoAdPositionInStream
        "FILTER_AGE" -> Right PGBIFilterAge
        "FILTER_GENDER" -> Right PGBIFilterGender
        "FILTER_QUARTER" -> Right PGBIFilterQuarter
        "FILTER_TRUEVIEW_CONVERSION_TYPE" -> Right PGBIFilterTrueviewConversionType
        "FILTER_MOBILE_GEO" -> Right PGBIFilterMobileGeo
        "FILTER_MRAID_SUPPORT" -> Right PGBIFilterMraidSupport
        "FILTER_ACTIVE_VIEW_EXPECTED_VIEWABILITY" -> Right PGBIFilterActiveViewExpectedViewability
        "FILTER_VIDEO_CREATIVE_DURATION_SKIPPABLE" -> Right PGBIFilterVideoCreativeDurationSkippable
        "FILTER_NIELSEN_COUNTRY_CODE" -> Right PGBIFilterNielsenCountryCode
        "FILTER_NIELSEN_DEVICE_ID" -> Right PGBIFilterNielsenDeviceId
        "FILTER_NIELSEN_GENDER" -> Right PGBIFilterNielsenGender
        "FILTER_NIELSEN_AGE" -> Right PGBIFilterNielsenAge
        "FILTER_INVENTORY_SOURCE_TYPE" -> Right PGBIFilterInventorySourceType
        "FILTER_CREATIVE_WIDTH" -> Right PGBIFilterCreativeWidth
        "FILTER_CREATIVE_HEIGHT" -> Right PGBIFilterCreativeHeight
        "FILTER_DFP_ORDER_ID" -> Right PGBIFilterDfpOrderId
        "FILTER_TRUEVIEW_AGE" -> Right PGBIFilterTrueviewAge
        "FILTER_TRUEVIEW_GENDER" -> Right PGBIFilterTrueviewGender
        "FILTER_TRUEVIEW_PARENTAL_STATUS" -> Right PGBIFilterTrueviewParentalStatus
        "FILTER_TRUEVIEW_REMARKETING_LIST" -> Right PGBIFilterTrueviewRemarketingList
        "FILTER_TRUEVIEW_INTEREST" -> Right PGBIFilterTrueviewInterest
        "FILTER_TRUEVIEW_AD_GROUP_ID" -> Right PGBIFilterTrueviewAdGroupId
        "FILTER_TRUEVIEW_AD_GROUP_AD_ID" -> Right PGBIFilterTrueviewAdGroupAdId
        "FILTER_TRUEVIEW_IAR_LANGUAGE" -> Right PGBIFilterTrueviewIarLanguage
        "FILTER_TRUEVIEW_IAR_GENDER" -> Right PGBIFilterTrueviewIarGender
        "FILTER_TRUEVIEW_IAR_AGE" -> Right PGBIFilterTrueviewIarAge
        "FILTER_TRUEVIEW_IAR_CATEGORY" -> Right PGBIFilterTrueviewIarCategory
        "FILTER_TRUEVIEW_IAR_COUNTRY" -> Right PGBIFilterTrueviewIarCountry
        "FILTER_TRUEVIEW_IAR_CITY" -> Right PGBIFilterTrueviewIarCity
        "FILTER_TRUEVIEW_IAR_REGION" -> Right PGBIFilterTrueviewIarRegion
        "FILTER_TRUEVIEW_IAR_ZIPCODE" -> Right PGBIFilterTrueviewIarZipcode
        "FILTER_TRUEVIEW_IAR_REMARKETING_LIST" -> Right PGBIFilterTrueviewIarRemarketingList
        "FILTER_TRUEVIEW_IAR_INTEREST" -> Right PGBIFilterTrueviewIarInterest
        "FILTER_TRUEVIEW_IAR_PARENTAL_STATUS" -> Right PGBIFilterTrueviewIarParentalStatus
        "FILTER_TRUEVIEW_IAR_TIME_OF_DAY" -> Right PGBIFilterTrueviewIarTimeOfDay
        "FILTER_TRUEVIEW_CUSTOM_AFFINITY" -> Right PGBIFilterTrueviewCustomAffinity
        "FILTER_TRUEVIEW_CATEGORY" -> Right PGBIFilterTrueviewCategory
        "FILTER_TRUEVIEW_KEYWORD" -> Right PGBIFilterTrueviewKeyword
        "FILTER_TRUEVIEW_PLACEMENT" -> Right PGBIFilterTrueviewPlacement
        "FILTER_TRUEVIEW_URL" -> Right PGBIFilterTrueviewURL
        "FILTER_TRUEVIEW_COUNTRY" -> Right PGBIFilterTrueviewCountry
        "FILTER_TRUEVIEW_REGION" -> Right PGBIFilterTrueviewRegion
        "FILTER_TRUEVIEW_CITY" -> Right PGBIFilterTrueviewCity
        "FILTER_TRUEVIEW_DMA" -> Right PGBIFilterTrueviewDma
        "FILTER_TRUEVIEW_ZIPCODE" -> Right PGBIFilterTrueviewZipcode
        "FILTER_NOT_SUPPORTED" -> Right PGBIFilterNotSupported
        "FILTER_MEDIA_PLAN" -> Right PGBIFilterMediaPlan
        "FILTER_TRUEVIEW_IAR_YOUTUBE_CHANNEL" -> Right PGBIFilterTrueviewIarYouTubeChannel
        "FILTER_TRUEVIEW_IAR_YOUTUBE_VIDEO" -> Right PGBIFilterTrueviewIarYouTubeVideo
        "FILTER_SKIPPABLE_SUPPORT" -> Right PGBIFilterSkippableSupport
        "FILTER_COMPANION_CREATIVE_ID" -> Right PGBIFilterCompanionCreativeId
        "FILTER_BUDGET_SEGMENT_DESCRIPTION" -> Right PGBIFilterBudgetSegmentDescription
        "FILTER_FLOODLIGHT_ACTIVITY_ID" -> Right PGBIFilterFloodlightActivityId
        "FILTER_DEVICE_MODEL" -> Right PGBIFilterDeviceModel
        "FILTER_DEVICE_MAKE" -> Right PGBIFilterDeviceMake
        "FILTER_DEVICE_TYPE" -> Right PGBIFilterDeviceType
        "FILTER_CREATIVE_ATTRIBUTE" -> Right PGBIFilterCreativeAttribute
        "FILTER_INVENTORY_COMMITMENT_TYPE" -> Right PGBIFilterInventoryCommitmentType
        "FILTER_INVENTORY_RATE_TYPE" -> Right PGBIFilterInventoryRateType
        "FILTER_INVENTORY_DELIVERY_METHOD" -> Right PGBIFilterInventoryDeliveryMethod
        "FILTER_INVENTORY_SOURCE_EXTERNAL_ID" -> Right PGBIFilterInventorySourceExternalId
        "FILTER_AUTHORIZED_SELLER_STATE" -> Right PGBIFilterAuthorizedSellerState
        "FILTER_VIDEO_DURATION_SECONDS_RANGE" -> Right PGBIFilterVideoDurationSecondsRange
        "FILTER_PARTNER_NAME" -> Right PGBIFilterPartnerName
        "FILTER_PARTNER_STATUS" -> Right PGBIFilterPartnerStatus
        "FILTER_ADVERTISER_NAME" -> Right PGBIFilterAdvertiserName
        "FILTER_ADVERTISER_INTEGRATION_CODE" -> Right PGBIFilterAdvertiserIntegrationCode
        "FILTER_ADVERTISER_INTEGRATION_STATUS" -> Right PGBIFilterAdvertiserIntegrationStatus
        "FILTER_CARRIER_NAME" -> Right PGBIFilterCarrierName
        "FILTER_CHANNEL_NAME" -> Right PGBIFilterChannelName
        "FILTER_CITY_NAME" -> Right PGBIFilterCityName
        "FILTER_COMPANION_CREATIVE_NAME" -> Right PGBIFilterCompanionCreativeName
        "FILTER_USER_LIST_FIRST_PARTY_NAME" -> Right PGBIFilterUserListFirstPartyName
        "FILTER_USER_LIST_THIRD_PARTY_NAME" -> Right PGBIFilterUserListThirdPartyName
        "FILTER_NIELSEN_RESTATEMENT_DATE" -> Right PGBIFilterNielsenReStatementDate
        "FILTER_NIELSEN_DATE_RANGE" -> Right PGBIFilterNielsenDateRange
        "FILTER_INSERTION_ORDER_NAME" -> Right PGBIFilterInsertionOrderName
        "FILTER_REGION_NAME" -> Right PGBIFilterRegionName
        "FILTER_DMA_NAME" -> Right PGBIFilterDmaName
        "FILTER_TRUEVIEW_IAR_REGION_NAME" -> Right PGBIFilterTrueviewIarRegionName
        "FILTER_TRUEVIEW_DMA_NAME" -> Right PGBIFilterTrueviewDmaName
        "FILTER_TRUEVIEW_REGION_NAME" -> Right PGBIFilterTrueviewRegionName
        "FILTER_ACTIVE_VIEW_CUSTOM_METRIC_ID" -> Right PGBIFilterActiveViewCustomMetricId
        "FILTER_ACTIVE_VIEW_CUSTOM_METRIC_NAME" -> Right PGBIFilterActiveViewCustomMetricName
        "FILTER_AD_TYPE" -> Right PGBIFilterAdType
        "FILTER_ALGORITHM" -> Right PGBIFilterAlgorithm
        "FILTER_ALGORITHM_ID" -> Right PGBIFilterAlgorithmId
        "FILTER_AMP_PAGE_REQUEST" -> Right PGBIFilterAmpPageRequest
        "FILTER_ANONYMOUS_INVENTORY_MODELING" -> Right PGBIFilterAnonymousInventoryModeling
        "FILTER_APP_URL" -> Right PGBIFilterAppURL
        "FILTER_APP_URL_EXCLUDED" -> Right PGBIFilterAppURLExcluded
        "FILTER_ATTRIBUTED_USERLIST" -> Right PGBIFilterAttributedUserList
        "FILTER_ATTRIBUTED_USERLIST_COST" -> Right PGBIFilterAttributedUserListCost
        "FILTER_ATTRIBUTED_USERLIST_TYPE" -> Right PGBIFilterAttributedUserListType
        "FILTER_ATTRIBUTION_MODEL" -> Right PGBIFilterAttributionModel
        "FILTER_AUDIENCE_LIST" -> Right PGBIFilterAudienceList
        "FILTER_AUDIENCE_LIST_COST" -> Right PGBIFilterAudienceListCost
        "FILTER_AUDIENCE_LIST_TYPE" -> Right PGBIFilterAudienceListType
        "FILTER_AUDIENCE_NAME" -> Right PGBIFilterAudienceName
        "FILTER_AUDIENCE_TYPE" -> Right PGBIFilterAudienceType
        "FILTER_BILLABLE_OUTCOME" -> Right PGBIFilterBillableOutcome
        "FILTER_BRAND_LIFT_TYPE" -> Right PGBIFilterBrandLiftType
        "FILTER_CHANNEL_TYPE" -> Right PGBIFilterChannelType
        "FILTER_CM_PLACEMENT_ID" -> Right PGBIFilterCmPlacementId
        "FILTER_CONVERSION_SOURCE" -> Right PGBIFilterConversionSource
        "FILTER_CONVERSION_SOURCE_ID" -> Right PGBIFilterConversionSourceId
        "FILTER_COUNTRY_ID" -> Right PGBIFilterCountryId
        "FILTER_CREATIVE" -> Right PGBIFilterCreative
        "FILTER_CREATIVE_ASSET" -> Right PGBIFilterCreativeAsset
        "FILTER_CREATIVE_INTEGRATION_CODE" -> Right PGBIFilterCreativeIntegrationCode
        "FILTER_CREATIVE_RENDERED_IN_AMP" -> Right PGBIFilterCreativeRenderedInAmp
        "FILTER_CREATIVE_SOURCE" -> Right PGBIFilterCreativeSource
        "FILTER_CREATIVE_STATUS" -> Right PGBIFilterCreativeStatus
        "FILTER_DATA_PROVIDER_NAME" -> Right PGBIFilterDataProviderName
        "FILTER_DETAILED_DEMOGRAPHICS" -> Right PGBIFilterDetailedDemographics
        "FILTER_DETAILED_DEMOGRAPHICS_ID" -> Right PGBIFilterDetailedDemographicsId
        "FILTER_DEVICE" -> Right PGBIFilterDevice
        "FILTER_GAM_INSERTION_ORDER" -> Right PGBIFilterGamInsertionOrder
        "FILTER_GAM_LINE_ITEM" -> Right PGBIFilterGamLineItem
        "FILTER_GAM_LINE_ITEM_ID" -> Right PGBIFilterGamLineItemId
        "FILTER_DIGITAL_CONTENT_LABEL" -> Right PGBIFilterDigitalContentLabel
        "FILTER_DOMAIN" -> Right PGBIFilterDomain
        "FILTER_ELIGIBLE_COOKIES_ON_FIRST_PARTY_AUDIENCE_LIST" -> Right PGBIFilterEligibleCookiesOnFirstPartyAudienceList
        "FILTER_ELIGIBLE_COOKIES_ON_THIRD_PARTY_AUDIENCE_LIST_AND_INTEREST" -> Right PGBIFilterEligibleCookiesOnThirdPartyAudienceListAndInterest
        "FILTER_EXCHANGE" -> Right PGBIFilterExchange
        "FILTER_EXCHANGE_CODE" -> Right PGBIFilterExchangeCode
        "FILTER_EXTENSION" -> Right PGBIFilterExtension
        "FILTER_EXTENSION_STATUS" -> Right PGBIFilterExtensionStatus
        "FILTER_EXTENSION_TYPE" -> Right PGBIFilterExtensionType
        "FILTER_FIRST_PARTY_AUDIENCE_LIST_COST" -> Right PGBIFilterFirstPartyAudienceListCost
        "FILTER_FIRST_PARTY_AUDIENCE_LIST_TYPE" -> Right PGBIFilterFirstPartyAudienceListType
        "FILTER_FLOODLIGHT_ACTIVITY" -> Right PGBIFilterFloodlightActivity
        "FILTER_FORMAT" -> Right PGBIFilterFormat
        "FILTER_GMAIL_AGE" -> Right PGBIFilterGmailAge
        "FILTER_GMAIL_CITY" -> Right PGBIFilterGmailCity
        "FILTER_GMAIL_COUNTRY" -> Right PGBIFilterGmailCountry
        "FILTER_GMAIL_COUNTRY_NAME" -> Right PGBIFilterGmailCountryName
        "FILTER_GMAIL_DEVICE_TYPE" -> Right PGBIFilterGmailDeviceType
        "FILTER_GMAIL_DEVICE_TYPE_NAME" -> Right PGBIFilterGmailDeviceTypeName
        "FILTER_GMAIL_GENDER" -> Right PGBIFilterGmailGender
        "FILTER_GMAIL_REGION" -> Right PGBIFilterGmailRegion
        "FILTER_GMAIL_REMARKETING_LIST" -> Right PGBIFilterGmailRemarketingList
        "FILTER_HOUSEHOLD_INCOME" -> Right PGBIFilterHouseholdIncome
        "FILTER_IMPRESSION_COUNTING_METHOD" -> Right PGBIFilterImpressionCountingMethod
        "FILTER_YOUTUBE_PROGRAMMATIC_GUARANTEED_INSERTION_ORDER" -> Right PGBIFilterYouTubeProgrammaticGuaranteedInsertionOrder
        "FILTER_INSERTION_ORDER_INTEGRATION_CODE" -> Right PGBIFilterInsertionOrderIntegrationCode
        "FILTER_INSERTION_ORDER_STATUS" -> Right PGBIFilterInsertionOrderStatus
        "FILTER_INTEREST" -> Right PGBIFilterInterest
        "FILTER_INVENTORY_SOURCE_GROUP" -> Right PGBIFilterInventorySourceGroup
        "FILTER_INVENTORY_SOURCE_GROUP_ID" -> Right PGBIFilterInventorySourceGroupId
        "FILTER_INVENTORY_SOURCE_ID" -> Right PGBIFilterInventorySourceId
        "FILTER_INVENTORY_SOURCE_NAME" -> Right PGBIFilterInventorySourceName
        "FILTER_LIFE_EVENT" -> Right PGBIFilterLifeEvent
        "FILTER_LIFE_EVENTS" -> Right PGBIFilterLifeEvents
        "FILTER_LINE_ITEM_INTEGRATION_CODE" -> Right PGBIFilterLineItemIntegrationCode
        "FILTER_LINE_ITEM_NAME" -> Right PGBIFilterLineItemName
        "FILTER_LINE_ITEM_STATUS" -> Right PGBIFilterLineItemStatus
        "FILTER_MATCH_RATIO" -> Right PGBIFilterMatchRatio
        "FILTER_MEASUREMENT_SOURCE" -> Right PGBIFilterMeasurementSource
        "FILTER_MEDIA_PLAN_NAME" -> Right PGBIFilterMediaPlanName
        "FILTER_PARENTAL_STATUS" -> Right PGBIFilterParentalStatus
        "FILTER_PLACEMENT_ALL_YOUTUBE_CHANNELS" -> Right PGBIFilterPlacementAllYouTubeChannels
        "FILTER_PLATFORM" -> Right PGBIFilterPlatform
        "FILTER_PLAYBACK_METHOD" -> Right PGBIFilterPlaybackMethod
        "FILTER_POSITION_IN_CONTENT" -> Right PGBIFilterPositionInContent
        "FILTER_PUBLISHER_PROPERTY" -> Right PGBIFilterPublisherProperty
        "FILTER_PUBLISHER_PROPERTY_ID" -> Right PGBIFilterPublisherPropertyId
        "FILTER_PUBLISHER_PROPERTY_SECTION" -> Right PGBIFilterPublisherPropertySection
        "FILTER_PUBLISHER_PROPERTY_SECTION_ID" -> Right PGBIFilterPublisherPropertySectionId
        "FILTER_REFUND_REASON" -> Right PGBIFilterRefundReason
        "FILTER_REMARKETING_LIST" -> Right PGBIFilterRemarketingList
        "FILTER_REWARDED" -> Right PGBIFilterRewarded
        "FILTER_SENSITIVE_CATEGORY" -> Right PGBIFilterSensitiveCategory
        "FILTER_SERVED_PIXEL_DENSITY" -> Right PGBIFilterServedPixelDensity
        "FILTER_TARGETED_DATA_PROVIDERS" -> Right PGBIFilterTargetedDataProviders
        "FILTER_THIRD_PARTY_AUDIENCE_LIST_COST" -> Right PGBIFilterThirdPartyAudienceListCost
        "FILTER_THIRD_PARTY_AUDIENCE_LIST_TYPE" -> Right PGBIFilterThirdPartyAudienceListType
        "FILTER_TRUEVIEW_AD" -> Right PGBIFilterTrueviewAd
        "FILTER_TRUEVIEW_AD_GROUP" -> Right PGBIFilterTrueviewAdGroup
        "FILTER_TRUEVIEW_DETAILED_DEMOGRAPHICS" -> Right PGBIFilterTrueviewDetailedDemographics
        "FILTER_TRUEVIEW_DETAILED_DEMOGRAPHICS_ID" -> Right PGBIFilterTrueviewDetailedDemographicsId
        "FILTER_TRUEVIEW_HOUSEHOLD_INCOME" -> Right PGBIFilterTrueviewHouseholdIncome
        "FILTER_TRUEVIEW_IAR_COUNTRY_NAME" -> Right PGBIFilterTrueviewIarCountryName
        "FILTER_TRUEVIEW_REMARKETING_LIST_NAME" -> Right PGBIFilterTrueviewRemarketingListName
        "FILTER_VARIANT_ID" -> Right PGBIFilterVariantId
        "FILTER_VARIANT_NAME" -> Right PGBIFilterVariantName
        "FILTER_VARIANT_VERSION" -> Right PGBIFilterVariantVersion
        "FILTER_VERIFICATION_VIDEO_PLAYER_SIZE" -> Right PGBIFilterVerificationVideoPlayerSize
        "FILTER_VERIFICATION_VIDEO_POSITION" -> Right PGBIFilterVerificationVideoPosition
        "FILTER_VIDEO_COMPANION_CREATIVE_SIZE" -> Right PGBIFilterVideoCompanionCreativeSize
        "FILTER_VIDEO_CONTINUOUS_PLAY" -> Right PGBIFilterVideoContinuousPlay
        "FILTER_VIDEO_DURATION" -> Right PGBIFilterVideoDuration
        "FILTER_YOUTUBE_ADAPTED_AUDIENCE_LIST" -> Right PGBIFilterYouTubeAdaptedAudienceList
        "FILTER_YOUTUBE_AD_VIDEO" -> Right PGBIFilterYouTubeAdVideo
        "FILTER_YOUTUBE_AD_VIDEO_ID" -> Right PGBIFilterYouTubeAdVideoId
        "FILTER_YOUTUBE_CHANNEL" -> Right PGBIFilterYouTubeChannel
        "FILTER_YOUTUBE_PROGRAMMATIC_GUARANTEED_ADVERTISER" -> Right PGBIFilterYouTubeProgrammaticGuaranteedAdvertiser
        "FILTER_YOUTUBE_PROGRAMMATIC_GUARANTEED_PARTNER" -> Right PGBIFilterYouTubeProgrammaticGuaranteedPartner
        "FILTER_YOUTUBE_VIDEO" -> Right PGBIFilterYouTubeVideo
        "FILTER_ZIP_POSTAL_CODE" -> Right PGBIFilterZipPostalCode
        "FILTER_PLACEMENT_NAME_ALL_YOUTUBE_CHANNELS" -> Right PGBIFilterPlacementNameAllYouTubeChannels
        "FILTER_TRUEVIEW_PLACEMENT_ID" -> Right PGBIFilterTrueviewPlacementId
        "FILTER_PATH_PATTERN_ID" -> Right PGBIFilterPathPatternId
        "FILTER_PATH_EVENT_INDEX" -> Right PGBIFilterPathEventIndex
        "FILTER_EVENT_TYPE" -> Right PGBIFilterEventType
        "FILTER_CHANNEL_GROUPING" -> Right PGBIFilterChannelGrouping
        "FILTER_OM_SDK_AVAILABLE" -> Right PGBIFilterOmSdkAvailable
        "FILTER_DATA_SOURCE" -> Right PGBIFilterDataSource
        "FILTER_CM360_PLACEMENT_ID" -> Right PGBIFilterCM360PlacementId
        "FILTER_TRUEVIEW_CLICK_TYPE_NAME" -> Right PGBIFilterTrueviewClickTypeName
        "FILTER_TRUEVIEW_AD_TYPE_NAME" -> Right PGBIFilterTrueviewAdTypeName
        "FILTER_VIDEO_CONTENT_DURATION" -> Right PGBIFilterVideoContentDuration
        "FILTER_MATCHED_GENRE_TARGET" -> Right PGBIFilterMatchedGenreTarget
        "FILTER_VIDEO_CONTENT_LIVE_STREAM" -> Right PGBIFilterVideoContentLiveStream
        "FILTER_BUDGET_SEGMENT_TYPE" -> Right PGBIFilterBudgetSegmentType
        "FILTER_BUDGET_SEGMENT_BUDGET" -> Right PGBIFilterBudgetSegmentBudget
        "FILTER_BUDGET_SEGMENT_START_DATE" -> Right PGBIFilterBudgetSegmentStartDate
        "FILTER_BUDGET_SEGMENT_END_DATE" -> Right PGBIFilterBudgetSegmentEndDate
        "FILTER_BUDGET_SEGMENT_PACING_PERCENTAGE" -> Right PGBIFilterBudgetSegmentPacingPercentage
        "FILTER_LINE_ITEM_BUDGET" -> Right PGBIFilterLineItemBudget
        "FILTER_LINE_ITEM_START_DATE" -> Right PGBIFilterLineItemStartDate
        "FILTER_LINE_ITEM_END_DATE" -> Right PGBIFilterLineItemEndDate
        "FILTER_INSERTION_ORDER_GOAL_TYPE" -> Right PGBIFilterInsertionOrderGoalType
        "FILTER_LINE_ITEM_PACING_PERCENTAGE" -> Right PGBIFilterLineItemPacingPercentage
        "FILTER_INSERTION_ORDER_GOAL_VALUE" -> Right PGBIFilterInsertionOrderGoalValue
        "FILTER_OMID_CAPABLE" -> Right PGBIFilterOmidCapable
        "FILTER_VENDOR_MEASUREMENT_MODE" -> Right PGBIFilterVendorMeasurementMode
        x -> Left ("Unable to parse ParametersGroupBysItem from: " <> x)

instance ToHttpApiData ParametersGroupBysItem where
    toQueryParam = \case
        PGBIFilterUnknown -> "FILTER_UNKNOWN"
        PGBIFilterDate -> "FILTER_DATE"
        PGBIFilterDayOfWeek -> "FILTER_DAY_OF_WEEK"
        PGBIFilterWeek -> "FILTER_WEEK"
        PGBIFilterMonth -> "FILTER_MONTH"
        PGBIFilterYear -> "FILTER_YEAR"
        PGBIFilterTimeOfDay -> "FILTER_TIME_OF_DAY"
        PGBIFilterConversionDelay -> "FILTER_CONVERSION_DELAY"
        PGBIFilterCreativeId -> "FILTER_CREATIVE_ID"
        PGBIFilterCreativeSize -> "FILTER_CREATIVE_SIZE"
        PGBIFilterCreativeType -> "FILTER_CREATIVE_TYPE"
        PGBIFilterExchangeId -> "FILTER_EXCHANGE_ID"
        PGBIFilterAdPosition -> "FILTER_AD_POSITION"
        PGBIFilterPublicInventory -> "FILTER_PUBLIC_INVENTORY"
        PGBIFilterInventorySource -> "FILTER_INVENTORY_SOURCE"
        PGBIFilterCity -> "FILTER_CITY"
        PGBIFilterRegion -> "FILTER_REGION"
        PGBIFilterDma -> "FILTER_DMA"
        PGBIFilterCountry -> "FILTER_COUNTRY"
        PGBIFilterSiteId -> "FILTER_SITE_ID"
        PGBIFilterChannelId -> "FILTER_CHANNEL_ID"
        PGBIFilterPartner -> "FILTER_PARTNER"
        PGBIFilterAdvertiser -> "FILTER_ADVERTISER"
        PGBIFilterInsertionOrder -> "FILTER_INSERTION_ORDER"
        PGBIFilterLineItem -> "FILTER_LINE_ITEM"
        PGBIFilterPartnerCurrency -> "FILTER_PARTNER_CURRENCY"
        PGBIFilterAdvertiserCurrency -> "FILTER_ADVERTISER_CURRENCY"
        PGBIFilterAdvertiserTimezone -> "FILTER_ADVERTISER_TIMEZONE"
        PGBIFilterLineItemType -> "FILTER_LINE_ITEM_TYPE"
        PGBIFilterUserList -> "FILTER_USER_LIST"
        PGBIFilterUserListFirstParty -> "FILTER_USER_LIST_FIRST_PARTY"
        PGBIFilterUserListThirdParty -> "FILTER_USER_LIST_THIRD_PARTY"
        PGBIFilterTargetedUserList -> "FILTER_TARGETED_USER_LIST"
        PGBIFilterDataProvider -> "FILTER_DATA_PROVIDER"
        PGBIFilterOrderId -> "FILTER_ORDER_ID"
        PGBIFilterVideoPlayerSize -> "FILTER_VIDEO_PLAYER_SIZE"
        PGBIFilterVideoDurationSeconds -> "FILTER_VIDEO_DURATION_SECONDS"
        PGBIFilterKeyword -> "FILTER_KEYWORD"
        PGBIFilterPageCategory -> "FILTER_PAGE_CATEGORY"
        PGBIFilterCampaignDailyFrequency -> "FILTER_CAMPAIGN_DAILY_FREQUENCY"
        PGBIFilterLineItemDailyFrequency -> "FILTER_LINE_ITEM_DAILY_FREQUENCY"
        PGBIFilterLineItemLifetimeFrequency -> "FILTER_LINE_ITEM_LIFETIME_FREQUENCY"
        PGBIFilterOS -> "FILTER_OS"
        PGBIFilterBrowser -> "FILTER_BROWSER"
        PGBIFilterCarrier -> "FILTER_CARRIER"
        PGBIFilterSiteLanguage -> "FILTER_SITE_LANGUAGE"
        PGBIFilterInventoryFormat -> "FILTER_INVENTORY_FORMAT"
        PGBIFilterZipCode -> "FILTER_ZIP_CODE"
        PGBIFilterVideoRatingTier -> "FILTER_VIDEO_RATING_TIER"
        PGBIFilterVideoFormatSupport -> "FILTER_VIDEO_FORMAT_SUPPORT"
        PGBIFilterVideoSkippableSupport -> "FILTER_VIDEO_SKIPPABLE_SUPPORT"
        PGBIFilterVideoCreativeDuration -> "FILTER_VIDEO_CREATIVE_DURATION"
        PGBIFilterPageLayout -> "FILTER_PAGE_LAYOUT"
        PGBIFilterVideoAdPositionInStream -> "FILTER_VIDEO_AD_POSITION_IN_STREAM"
        PGBIFilterAge -> "FILTER_AGE"
        PGBIFilterGender -> "FILTER_GENDER"
        PGBIFilterQuarter -> "FILTER_QUARTER"
        PGBIFilterTrueviewConversionType -> "FILTER_TRUEVIEW_CONVERSION_TYPE"
        PGBIFilterMobileGeo -> "FILTER_MOBILE_GEO"
        PGBIFilterMraidSupport -> "FILTER_MRAID_SUPPORT"
        PGBIFilterActiveViewExpectedViewability -> "FILTER_ACTIVE_VIEW_EXPECTED_VIEWABILITY"
        PGBIFilterVideoCreativeDurationSkippable -> "FILTER_VIDEO_CREATIVE_DURATION_SKIPPABLE"
        PGBIFilterNielsenCountryCode -> "FILTER_NIELSEN_COUNTRY_CODE"
        PGBIFilterNielsenDeviceId -> "FILTER_NIELSEN_DEVICE_ID"
        PGBIFilterNielsenGender -> "FILTER_NIELSEN_GENDER"
        PGBIFilterNielsenAge -> "FILTER_NIELSEN_AGE"
        PGBIFilterInventorySourceType -> "FILTER_INVENTORY_SOURCE_TYPE"
        PGBIFilterCreativeWidth -> "FILTER_CREATIVE_WIDTH"
        PGBIFilterCreativeHeight -> "FILTER_CREATIVE_HEIGHT"
        PGBIFilterDfpOrderId -> "FILTER_DFP_ORDER_ID"
        PGBIFilterTrueviewAge -> "FILTER_TRUEVIEW_AGE"
        PGBIFilterTrueviewGender -> "FILTER_TRUEVIEW_GENDER"
        PGBIFilterTrueviewParentalStatus -> "FILTER_TRUEVIEW_PARENTAL_STATUS"
        PGBIFilterTrueviewRemarketingList -> "FILTER_TRUEVIEW_REMARKETING_LIST"
        PGBIFilterTrueviewInterest -> "FILTER_TRUEVIEW_INTEREST"
        PGBIFilterTrueviewAdGroupId -> "FILTER_TRUEVIEW_AD_GROUP_ID"
        PGBIFilterTrueviewAdGroupAdId -> "FILTER_TRUEVIEW_AD_GROUP_AD_ID"
        PGBIFilterTrueviewIarLanguage -> "FILTER_TRUEVIEW_IAR_LANGUAGE"
        PGBIFilterTrueviewIarGender -> "FILTER_TRUEVIEW_IAR_GENDER"
        PGBIFilterTrueviewIarAge -> "FILTER_TRUEVIEW_IAR_AGE"
        PGBIFilterTrueviewIarCategory -> "FILTER_TRUEVIEW_IAR_CATEGORY"
        PGBIFilterTrueviewIarCountry -> "FILTER_TRUEVIEW_IAR_COUNTRY"
        PGBIFilterTrueviewIarCity -> "FILTER_TRUEVIEW_IAR_CITY"
        PGBIFilterTrueviewIarRegion -> "FILTER_TRUEVIEW_IAR_REGION"
        PGBIFilterTrueviewIarZipcode -> "FILTER_TRUEVIEW_IAR_ZIPCODE"
        PGBIFilterTrueviewIarRemarketingList -> "FILTER_TRUEVIEW_IAR_REMARKETING_LIST"
        PGBIFilterTrueviewIarInterest -> "FILTER_TRUEVIEW_IAR_INTEREST"
        PGBIFilterTrueviewIarParentalStatus -> "FILTER_TRUEVIEW_IAR_PARENTAL_STATUS"
        PGBIFilterTrueviewIarTimeOfDay -> "FILTER_TRUEVIEW_IAR_TIME_OF_DAY"
        PGBIFilterTrueviewCustomAffinity -> "FILTER_TRUEVIEW_CUSTOM_AFFINITY"
        PGBIFilterTrueviewCategory -> "FILTER_TRUEVIEW_CATEGORY"
        PGBIFilterTrueviewKeyword -> "FILTER_TRUEVIEW_KEYWORD"
        PGBIFilterTrueviewPlacement -> "FILTER_TRUEVIEW_PLACEMENT"
        PGBIFilterTrueviewURL -> "FILTER_TRUEVIEW_URL"
        PGBIFilterTrueviewCountry -> "FILTER_TRUEVIEW_COUNTRY"
        PGBIFilterTrueviewRegion -> "FILTER_TRUEVIEW_REGION"
        PGBIFilterTrueviewCity -> "FILTER_TRUEVIEW_CITY"
        PGBIFilterTrueviewDma -> "FILTER_TRUEVIEW_DMA"
        PGBIFilterTrueviewZipcode -> "FILTER_TRUEVIEW_ZIPCODE"
        PGBIFilterNotSupported -> "FILTER_NOT_SUPPORTED"
        PGBIFilterMediaPlan -> "FILTER_MEDIA_PLAN"
        PGBIFilterTrueviewIarYouTubeChannel -> "FILTER_TRUEVIEW_IAR_YOUTUBE_CHANNEL"
        PGBIFilterTrueviewIarYouTubeVideo -> "FILTER_TRUEVIEW_IAR_YOUTUBE_VIDEO"
        PGBIFilterSkippableSupport -> "FILTER_SKIPPABLE_SUPPORT"
        PGBIFilterCompanionCreativeId -> "FILTER_COMPANION_CREATIVE_ID"
        PGBIFilterBudgetSegmentDescription -> "FILTER_BUDGET_SEGMENT_DESCRIPTION"
        PGBIFilterFloodlightActivityId -> "FILTER_FLOODLIGHT_ACTIVITY_ID"
        PGBIFilterDeviceModel -> "FILTER_DEVICE_MODEL"
        PGBIFilterDeviceMake -> "FILTER_DEVICE_MAKE"
        PGBIFilterDeviceType -> "FILTER_DEVICE_TYPE"
        PGBIFilterCreativeAttribute -> "FILTER_CREATIVE_ATTRIBUTE"
        PGBIFilterInventoryCommitmentType -> "FILTER_INVENTORY_COMMITMENT_TYPE"
        PGBIFilterInventoryRateType -> "FILTER_INVENTORY_RATE_TYPE"
        PGBIFilterInventoryDeliveryMethod -> "FILTER_INVENTORY_DELIVERY_METHOD"
        PGBIFilterInventorySourceExternalId -> "FILTER_INVENTORY_SOURCE_EXTERNAL_ID"
        PGBIFilterAuthorizedSellerState -> "FILTER_AUTHORIZED_SELLER_STATE"
        PGBIFilterVideoDurationSecondsRange -> "FILTER_VIDEO_DURATION_SECONDS_RANGE"
        PGBIFilterPartnerName -> "FILTER_PARTNER_NAME"
        PGBIFilterPartnerStatus -> "FILTER_PARTNER_STATUS"
        PGBIFilterAdvertiserName -> "FILTER_ADVERTISER_NAME"
        PGBIFilterAdvertiserIntegrationCode -> "FILTER_ADVERTISER_INTEGRATION_CODE"
        PGBIFilterAdvertiserIntegrationStatus -> "FILTER_ADVERTISER_INTEGRATION_STATUS"
        PGBIFilterCarrierName -> "FILTER_CARRIER_NAME"
        PGBIFilterChannelName -> "FILTER_CHANNEL_NAME"
        PGBIFilterCityName -> "FILTER_CITY_NAME"
        PGBIFilterCompanionCreativeName -> "FILTER_COMPANION_CREATIVE_NAME"
        PGBIFilterUserListFirstPartyName -> "FILTER_USER_LIST_FIRST_PARTY_NAME"
        PGBIFilterUserListThirdPartyName -> "FILTER_USER_LIST_THIRD_PARTY_NAME"
        PGBIFilterNielsenReStatementDate -> "FILTER_NIELSEN_RESTATEMENT_DATE"
        PGBIFilterNielsenDateRange -> "FILTER_NIELSEN_DATE_RANGE"
        PGBIFilterInsertionOrderName -> "FILTER_INSERTION_ORDER_NAME"
        PGBIFilterRegionName -> "FILTER_REGION_NAME"
        PGBIFilterDmaName -> "FILTER_DMA_NAME"
        PGBIFilterTrueviewIarRegionName -> "FILTER_TRUEVIEW_IAR_REGION_NAME"
        PGBIFilterTrueviewDmaName -> "FILTER_TRUEVIEW_DMA_NAME"
        PGBIFilterTrueviewRegionName -> "FILTER_TRUEVIEW_REGION_NAME"
        PGBIFilterActiveViewCustomMetricId -> "FILTER_ACTIVE_VIEW_CUSTOM_METRIC_ID"
        PGBIFilterActiveViewCustomMetricName -> "FILTER_ACTIVE_VIEW_CUSTOM_METRIC_NAME"
        PGBIFilterAdType -> "FILTER_AD_TYPE"
        PGBIFilterAlgorithm -> "FILTER_ALGORITHM"
        PGBIFilterAlgorithmId -> "FILTER_ALGORITHM_ID"
        PGBIFilterAmpPageRequest -> "FILTER_AMP_PAGE_REQUEST"
        PGBIFilterAnonymousInventoryModeling -> "FILTER_ANONYMOUS_INVENTORY_MODELING"
        PGBIFilterAppURL -> "FILTER_APP_URL"
        PGBIFilterAppURLExcluded -> "FILTER_APP_URL_EXCLUDED"
        PGBIFilterAttributedUserList -> "FILTER_ATTRIBUTED_USERLIST"
        PGBIFilterAttributedUserListCost -> "FILTER_ATTRIBUTED_USERLIST_COST"
        PGBIFilterAttributedUserListType -> "FILTER_ATTRIBUTED_USERLIST_TYPE"
        PGBIFilterAttributionModel -> "FILTER_ATTRIBUTION_MODEL"
        PGBIFilterAudienceList -> "FILTER_AUDIENCE_LIST"
        PGBIFilterAudienceListCost -> "FILTER_AUDIENCE_LIST_COST"
        PGBIFilterAudienceListType -> "FILTER_AUDIENCE_LIST_TYPE"
        PGBIFilterAudienceName -> "FILTER_AUDIENCE_NAME"
        PGBIFilterAudienceType -> "FILTER_AUDIENCE_TYPE"
        PGBIFilterBillableOutcome -> "FILTER_BILLABLE_OUTCOME"
        PGBIFilterBrandLiftType -> "FILTER_BRAND_LIFT_TYPE"
        PGBIFilterChannelType -> "FILTER_CHANNEL_TYPE"
        PGBIFilterCmPlacementId -> "FILTER_CM_PLACEMENT_ID"
        PGBIFilterConversionSource -> "FILTER_CONVERSION_SOURCE"
        PGBIFilterConversionSourceId -> "FILTER_CONVERSION_SOURCE_ID"
        PGBIFilterCountryId -> "FILTER_COUNTRY_ID"
        PGBIFilterCreative -> "FILTER_CREATIVE"
        PGBIFilterCreativeAsset -> "FILTER_CREATIVE_ASSET"
        PGBIFilterCreativeIntegrationCode -> "FILTER_CREATIVE_INTEGRATION_CODE"
        PGBIFilterCreativeRenderedInAmp -> "FILTER_CREATIVE_RENDERED_IN_AMP"
        PGBIFilterCreativeSource -> "FILTER_CREATIVE_SOURCE"
        PGBIFilterCreativeStatus -> "FILTER_CREATIVE_STATUS"
        PGBIFilterDataProviderName -> "FILTER_DATA_PROVIDER_NAME"
        PGBIFilterDetailedDemographics -> "FILTER_DETAILED_DEMOGRAPHICS"
        PGBIFilterDetailedDemographicsId -> "FILTER_DETAILED_DEMOGRAPHICS_ID"
        PGBIFilterDevice -> "FILTER_DEVICE"
        PGBIFilterGamInsertionOrder -> "FILTER_GAM_INSERTION_ORDER"
        PGBIFilterGamLineItem -> "FILTER_GAM_LINE_ITEM"
        PGBIFilterGamLineItemId -> "FILTER_GAM_LINE_ITEM_ID"
        PGBIFilterDigitalContentLabel -> "FILTER_DIGITAL_CONTENT_LABEL"
        PGBIFilterDomain -> "FILTER_DOMAIN"
        PGBIFilterEligibleCookiesOnFirstPartyAudienceList -> "FILTER_ELIGIBLE_COOKIES_ON_FIRST_PARTY_AUDIENCE_LIST"
        PGBIFilterEligibleCookiesOnThirdPartyAudienceListAndInterest -> "FILTER_ELIGIBLE_COOKIES_ON_THIRD_PARTY_AUDIENCE_LIST_AND_INTEREST"
        PGBIFilterExchange -> "FILTER_EXCHANGE"
        PGBIFilterExchangeCode -> "FILTER_EXCHANGE_CODE"
        PGBIFilterExtension -> "FILTER_EXTENSION"
        PGBIFilterExtensionStatus -> "FILTER_EXTENSION_STATUS"
        PGBIFilterExtensionType -> "FILTER_EXTENSION_TYPE"
        PGBIFilterFirstPartyAudienceListCost -> "FILTER_FIRST_PARTY_AUDIENCE_LIST_COST"
        PGBIFilterFirstPartyAudienceListType -> "FILTER_FIRST_PARTY_AUDIENCE_LIST_TYPE"
        PGBIFilterFloodlightActivity -> "FILTER_FLOODLIGHT_ACTIVITY"
        PGBIFilterFormat -> "FILTER_FORMAT"
        PGBIFilterGmailAge -> "FILTER_GMAIL_AGE"
        PGBIFilterGmailCity -> "FILTER_GMAIL_CITY"
        PGBIFilterGmailCountry -> "FILTER_GMAIL_COUNTRY"
        PGBIFilterGmailCountryName -> "FILTER_GMAIL_COUNTRY_NAME"
        PGBIFilterGmailDeviceType -> "FILTER_GMAIL_DEVICE_TYPE"
        PGBIFilterGmailDeviceTypeName -> "FILTER_GMAIL_DEVICE_TYPE_NAME"
        PGBIFilterGmailGender -> "FILTER_GMAIL_GENDER"
        PGBIFilterGmailRegion -> "FILTER_GMAIL_REGION"
        PGBIFilterGmailRemarketingList -> "FILTER_GMAIL_REMARKETING_LIST"
        PGBIFilterHouseholdIncome -> "FILTER_HOUSEHOLD_INCOME"
        PGBIFilterImpressionCountingMethod -> "FILTER_IMPRESSION_COUNTING_METHOD"
        PGBIFilterYouTubeProgrammaticGuaranteedInsertionOrder -> "FILTER_YOUTUBE_PROGRAMMATIC_GUARANTEED_INSERTION_ORDER"
        PGBIFilterInsertionOrderIntegrationCode -> "FILTER_INSERTION_ORDER_INTEGRATION_CODE"
        PGBIFilterInsertionOrderStatus -> "FILTER_INSERTION_ORDER_STATUS"
        PGBIFilterInterest -> "FILTER_INTEREST"
        PGBIFilterInventorySourceGroup -> "FILTER_INVENTORY_SOURCE_GROUP"
        PGBIFilterInventorySourceGroupId -> "FILTER_INVENTORY_SOURCE_GROUP_ID"
        PGBIFilterInventorySourceId -> "FILTER_INVENTORY_SOURCE_ID"
        PGBIFilterInventorySourceName -> "FILTER_INVENTORY_SOURCE_NAME"
        PGBIFilterLifeEvent -> "FILTER_LIFE_EVENT"
        PGBIFilterLifeEvents -> "FILTER_LIFE_EVENTS"
        PGBIFilterLineItemIntegrationCode -> "FILTER_LINE_ITEM_INTEGRATION_CODE"
        PGBIFilterLineItemName -> "FILTER_LINE_ITEM_NAME"
        PGBIFilterLineItemStatus -> "FILTER_LINE_ITEM_STATUS"
        PGBIFilterMatchRatio -> "FILTER_MATCH_RATIO"
        PGBIFilterMeasurementSource -> "FILTER_MEASUREMENT_SOURCE"
        PGBIFilterMediaPlanName -> "FILTER_MEDIA_PLAN_NAME"
        PGBIFilterParentalStatus -> "FILTER_PARENTAL_STATUS"
        PGBIFilterPlacementAllYouTubeChannels -> "FILTER_PLACEMENT_ALL_YOUTUBE_CHANNELS"
        PGBIFilterPlatform -> "FILTER_PLATFORM"
        PGBIFilterPlaybackMethod -> "FILTER_PLAYBACK_METHOD"
        PGBIFilterPositionInContent -> "FILTER_POSITION_IN_CONTENT"
        PGBIFilterPublisherProperty -> "FILTER_PUBLISHER_PROPERTY"
        PGBIFilterPublisherPropertyId -> "FILTER_PUBLISHER_PROPERTY_ID"
        PGBIFilterPublisherPropertySection -> "FILTER_PUBLISHER_PROPERTY_SECTION"
        PGBIFilterPublisherPropertySectionId -> "FILTER_PUBLISHER_PROPERTY_SECTION_ID"
        PGBIFilterRefundReason -> "FILTER_REFUND_REASON"
        PGBIFilterRemarketingList -> "FILTER_REMARKETING_LIST"
        PGBIFilterRewarded -> "FILTER_REWARDED"
        PGBIFilterSensitiveCategory -> "FILTER_SENSITIVE_CATEGORY"
        PGBIFilterServedPixelDensity -> "FILTER_SERVED_PIXEL_DENSITY"
        PGBIFilterTargetedDataProviders -> "FILTER_TARGETED_DATA_PROVIDERS"
        PGBIFilterThirdPartyAudienceListCost -> "FILTER_THIRD_PARTY_AUDIENCE_LIST_COST"
        PGBIFilterThirdPartyAudienceListType -> "FILTER_THIRD_PARTY_AUDIENCE_LIST_TYPE"
        PGBIFilterTrueviewAd -> "FILTER_TRUEVIEW_AD"
        PGBIFilterTrueviewAdGroup -> "FILTER_TRUEVIEW_AD_GROUP"
        PGBIFilterTrueviewDetailedDemographics -> "FILTER_TRUEVIEW_DETAILED_DEMOGRAPHICS"
        PGBIFilterTrueviewDetailedDemographicsId -> "FILTER_TRUEVIEW_DETAILED_DEMOGRAPHICS_ID"
        PGBIFilterTrueviewHouseholdIncome -> "FILTER_TRUEVIEW_HOUSEHOLD_INCOME"
        PGBIFilterTrueviewIarCountryName -> "FILTER_TRUEVIEW_IAR_COUNTRY_NAME"
        PGBIFilterTrueviewRemarketingListName -> "FILTER_TRUEVIEW_REMARKETING_LIST_NAME"
        PGBIFilterVariantId -> "FILTER_VARIANT_ID"
        PGBIFilterVariantName -> "FILTER_VARIANT_NAME"
        PGBIFilterVariantVersion -> "FILTER_VARIANT_VERSION"
        PGBIFilterVerificationVideoPlayerSize -> "FILTER_VERIFICATION_VIDEO_PLAYER_SIZE"
        PGBIFilterVerificationVideoPosition -> "FILTER_VERIFICATION_VIDEO_POSITION"
        PGBIFilterVideoCompanionCreativeSize -> "FILTER_VIDEO_COMPANION_CREATIVE_SIZE"
        PGBIFilterVideoContinuousPlay -> "FILTER_VIDEO_CONTINUOUS_PLAY"
        PGBIFilterVideoDuration -> "FILTER_VIDEO_DURATION"
        PGBIFilterYouTubeAdaptedAudienceList -> "FILTER_YOUTUBE_ADAPTED_AUDIENCE_LIST"
        PGBIFilterYouTubeAdVideo -> "FILTER_YOUTUBE_AD_VIDEO"
        PGBIFilterYouTubeAdVideoId -> "FILTER_YOUTUBE_AD_VIDEO_ID"
        PGBIFilterYouTubeChannel -> "FILTER_YOUTUBE_CHANNEL"
        PGBIFilterYouTubeProgrammaticGuaranteedAdvertiser -> "FILTER_YOUTUBE_PROGRAMMATIC_GUARANTEED_ADVERTISER"
        PGBIFilterYouTubeProgrammaticGuaranteedPartner -> "FILTER_YOUTUBE_PROGRAMMATIC_GUARANTEED_PARTNER"
        PGBIFilterYouTubeVideo -> "FILTER_YOUTUBE_VIDEO"
        PGBIFilterZipPostalCode -> "FILTER_ZIP_POSTAL_CODE"
        PGBIFilterPlacementNameAllYouTubeChannels -> "FILTER_PLACEMENT_NAME_ALL_YOUTUBE_CHANNELS"
        PGBIFilterTrueviewPlacementId -> "FILTER_TRUEVIEW_PLACEMENT_ID"
        PGBIFilterPathPatternId -> "FILTER_PATH_PATTERN_ID"
        PGBIFilterPathEventIndex -> "FILTER_PATH_EVENT_INDEX"
        PGBIFilterEventType -> "FILTER_EVENT_TYPE"
        PGBIFilterChannelGrouping -> "FILTER_CHANNEL_GROUPING"
        PGBIFilterOmSdkAvailable -> "FILTER_OM_SDK_AVAILABLE"
        PGBIFilterDataSource -> "FILTER_DATA_SOURCE"
        PGBIFilterCM360PlacementId -> "FILTER_CM360_PLACEMENT_ID"
        PGBIFilterTrueviewClickTypeName -> "FILTER_TRUEVIEW_CLICK_TYPE_NAME"
        PGBIFilterTrueviewAdTypeName -> "FILTER_TRUEVIEW_AD_TYPE_NAME"
        PGBIFilterVideoContentDuration -> "FILTER_VIDEO_CONTENT_DURATION"
        PGBIFilterMatchedGenreTarget -> "FILTER_MATCHED_GENRE_TARGET"
        PGBIFilterVideoContentLiveStream -> "FILTER_VIDEO_CONTENT_LIVE_STREAM"
        PGBIFilterBudgetSegmentType -> "FILTER_BUDGET_SEGMENT_TYPE"
        PGBIFilterBudgetSegmentBudget -> "FILTER_BUDGET_SEGMENT_BUDGET"
        PGBIFilterBudgetSegmentStartDate -> "FILTER_BUDGET_SEGMENT_START_DATE"
        PGBIFilterBudgetSegmentEndDate -> "FILTER_BUDGET_SEGMENT_END_DATE"
        PGBIFilterBudgetSegmentPacingPercentage -> "FILTER_BUDGET_SEGMENT_PACING_PERCENTAGE"
        PGBIFilterLineItemBudget -> "FILTER_LINE_ITEM_BUDGET"
        PGBIFilterLineItemStartDate -> "FILTER_LINE_ITEM_START_DATE"
        PGBIFilterLineItemEndDate -> "FILTER_LINE_ITEM_END_DATE"
        PGBIFilterInsertionOrderGoalType -> "FILTER_INSERTION_ORDER_GOAL_TYPE"
        PGBIFilterLineItemPacingPercentage -> "FILTER_LINE_ITEM_PACING_PERCENTAGE"
        PGBIFilterInsertionOrderGoalValue -> "FILTER_INSERTION_ORDER_GOAL_VALUE"
        PGBIFilterOmidCapable -> "FILTER_OMID_CAPABLE"
        PGBIFilterVendorMeasurementMode -> "FILTER_VENDOR_MEASUREMENT_MODE"

instance FromJSON ParametersGroupBysItem where
    parseJSON = parseJSONText "ParametersGroupBysItem"

instance ToJSON ParametersGroupBysItem where
    toJSON = toJSONText

-- | Error code that shows why the report was not created.
data ReportFailureErrorCode
    = AuthenticationError
      -- ^ @AUTHENTICATION_ERROR@
    | UnauthorizedAPIAccess
      -- ^ @UNAUTHORIZED_API_ACCESS@
    | ServerError
      -- ^ @SERVER_ERROR@
    | ValidationError
      -- ^ @VALIDATION_ERROR@
    | ReportingFatalError
      -- ^ @REPORTING_FATAL_ERROR@
    | ReportingTransientError
      -- ^ @REPORTING_TRANSIENT_ERROR@
    | ReportingImcompatibleMetrics
      -- ^ @REPORTING_IMCOMPATIBLE_METRICS@
    | ReportingIllegalFilename
      -- ^ @REPORTING_ILLEGAL_FILENAME@
    | ReportingQueryNotFound
      -- ^ @REPORTING_QUERY_NOT_FOUND@
    | ReportingBucketNotFound
      -- ^ @REPORTING_BUCKET_NOT_FOUND@
    | ReportingCreateBucketFailed
      -- ^ @REPORTING_CREATE_BUCKET_FAILED@
    | ReportingDeleteBucketFailed
      -- ^ @REPORTING_DELETE_BUCKET_FAILED@
    | ReportingUpdateBucketPermissionFailed
      -- ^ @REPORTING_UPDATE_BUCKET_PERMISSION_FAILED@
    | ReportingWriteBucketObjectFailed
      -- ^ @REPORTING_WRITE_BUCKET_OBJECT_FAILED@
    | DeprecatedReportingInvalidQuery
      -- ^ @DEPRECATED_REPORTING_INVALID_QUERY@
    | ReportingInvalidQueryTooManyUnfilteredLargeGroupBys
      -- ^ @REPORTING_INVALID_QUERY_TOO_MANY_UNFILTERED_LARGE_GROUP_BYS@
    | ReportingInvalidQueryTitleMissing
      -- ^ @REPORTING_INVALID_QUERY_TITLE_MISSING@
    | ReportingInvalidQueryMissingPartnerAndAdvertiserFilters
      -- ^ @REPORTING_INVALID_QUERY_MISSING_PARTNER_AND_ADVERTISER_FILTERS@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ReportFailureErrorCode

instance FromHttpApiData ReportFailureErrorCode where
    parseQueryParam = \case
        "AUTHENTICATION_ERROR" -> Right AuthenticationError
        "UNAUTHORIZED_API_ACCESS" -> Right UnauthorizedAPIAccess
        "SERVER_ERROR" -> Right ServerError
        "VALIDATION_ERROR" -> Right ValidationError
        "REPORTING_FATAL_ERROR" -> Right ReportingFatalError
        "REPORTING_TRANSIENT_ERROR" -> Right ReportingTransientError
        "REPORTING_IMCOMPATIBLE_METRICS" -> Right ReportingImcompatibleMetrics
        "REPORTING_ILLEGAL_FILENAME" -> Right ReportingIllegalFilename
        "REPORTING_QUERY_NOT_FOUND" -> Right ReportingQueryNotFound
        "REPORTING_BUCKET_NOT_FOUND" -> Right ReportingBucketNotFound
        "REPORTING_CREATE_BUCKET_FAILED" -> Right ReportingCreateBucketFailed
        "REPORTING_DELETE_BUCKET_FAILED" -> Right ReportingDeleteBucketFailed
        "REPORTING_UPDATE_BUCKET_PERMISSION_FAILED" -> Right ReportingUpdateBucketPermissionFailed
        "REPORTING_WRITE_BUCKET_OBJECT_FAILED" -> Right ReportingWriteBucketObjectFailed
        "DEPRECATED_REPORTING_INVALID_QUERY" -> Right DeprecatedReportingInvalidQuery
        "REPORTING_INVALID_QUERY_TOO_MANY_UNFILTERED_LARGE_GROUP_BYS" -> Right ReportingInvalidQueryTooManyUnfilteredLargeGroupBys
        "REPORTING_INVALID_QUERY_TITLE_MISSING" -> Right ReportingInvalidQueryTitleMissing
        "REPORTING_INVALID_QUERY_MISSING_PARTNER_AND_ADVERTISER_FILTERS" -> Right ReportingInvalidQueryMissingPartnerAndAdvertiserFilters
        x -> Left ("Unable to parse ReportFailureErrorCode from: " <> x)

instance ToHttpApiData ReportFailureErrorCode where
    toQueryParam = \case
        AuthenticationError -> "AUTHENTICATION_ERROR"
        UnauthorizedAPIAccess -> "UNAUTHORIZED_API_ACCESS"
        ServerError -> "SERVER_ERROR"
        ValidationError -> "VALIDATION_ERROR"
        ReportingFatalError -> "REPORTING_FATAL_ERROR"
        ReportingTransientError -> "REPORTING_TRANSIENT_ERROR"
        ReportingImcompatibleMetrics -> "REPORTING_IMCOMPATIBLE_METRICS"
        ReportingIllegalFilename -> "REPORTING_ILLEGAL_FILENAME"
        ReportingQueryNotFound -> "REPORTING_QUERY_NOT_FOUND"
        ReportingBucketNotFound -> "REPORTING_BUCKET_NOT_FOUND"
        ReportingCreateBucketFailed -> "REPORTING_CREATE_BUCKET_FAILED"
        ReportingDeleteBucketFailed -> "REPORTING_DELETE_BUCKET_FAILED"
        ReportingUpdateBucketPermissionFailed -> "REPORTING_UPDATE_BUCKET_PERMISSION_FAILED"
        ReportingWriteBucketObjectFailed -> "REPORTING_WRITE_BUCKET_OBJECT_FAILED"
        DeprecatedReportingInvalidQuery -> "DEPRECATED_REPORTING_INVALID_QUERY"
        ReportingInvalidQueryTooManyUnfilteredLargeGroupBys -> "REPORTING_INVALID_QUERY_TOO_MANY_UNFILTERED_LARGE_GROUP_BYS"
        ReportingInvalidQueryTitleMissing -> "REPORTING_INVALID_QUERY_TITLE_MISSING"
        ReportingInvalidQueryMissingPartnerAndAdvertiserFilters -> "REPORTING_INVALID_QUERY_MISSING_PARTNER_AND_ADVERTISER_FILTERS"

instance FromJSON ReportFailureErrorCode where
    parseJSON = parseJSONText "ReportFailureErrorCode"

instance ToJSON ReportFailureErrorCode where
    toJSON = toJSONText

-- | The file type of the report.
data ReportStatusFormat
    = RSFCSV
      -- ^ @CSV@
    | RSFExcelCSV
      -- ^ @EXCEL_CSV@
    | RSFXlsx
      -- ^ @XLSX@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ReportStatusFormat

instance FromHttpApiData ReportStatusFormat where
    parseQueryParam = \case
        "CSV" -> Right RSFCSV
        "EXCEL_CSV" -> Right RSFExcelCSV
        "XLSX" -> Right RSFXlsx
        x -> Left ("Unable to parse ReportStatusFormat from: " <> x)

instance ToHttpApiData ReportStatusFormat where
    toQueryParam = \case
        RSFCSV -> "CSV"
        RSFExcelCSV -> "EXCEL_CSV"
        RSFXlsx -> "XLSX"

instance FromJSON ReportStatusFormat where
    parseJSON = parseJSONText "ReportStatusFormat"

instance ToJSON ReportStatusFormat where
    toJSON = toJSONText
