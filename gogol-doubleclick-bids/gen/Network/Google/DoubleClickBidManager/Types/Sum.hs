{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}

-- |
-- Module      : Network.Google.DoubleClickBidManager.Types.Sum
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.DoubleClickBidManager.Types.Sum where

import           Network.Google.Prelude

-- | Filter type used to filter line items to fetch.
data DownloadLineItemsRequestFilterType
    = DLIRFTAdvertiserId
      -- ^ @ADVERTISER_ID@
    | DLIRFTInsertionOrderId
      -- ^ @INSERTION_ORDER_ID@
    | DLIRFTLineItemId
      -- ^ @LINE_ITEM_ID@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable DownloadLineItemsRequestFilterType

-- | Format in which the line items will be returned. Default to CSV.
data DownloadLineItemsRequestFormat
    = DLIRFCSV
      -- ^ @CSV@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable DownloadLineItemsRequestFormat

-- | Filter type.
data FilterPairType
    = FPTFilterActiveViewExpectedViewability
      -- ^ @FILTER_ACTIVE_VIEW_EXPECTED_VIEWABILITY@
    | FPTFilterActivityId
      -- ^ @FILTER_ACTIVITY_ID@
    | FPTFilterAdvertiser
      -- ^ @FILTER_ADVERTISER@
    | FPTFilterAdvertiserCurrency
      -- ^ @FILTER_ADVERTISER_CURRENCY@
    | FPTFilterAdvertiserTimezone
      -- ^ @FILTER_ADVERTISER_TIMEZONE@
    | FPTFilterAdPosition
      -- ^ @FILTER_AD_POSITION@
    | FPTFilterAge
      -- ^ @FILTER_AGE@
    | FPTFilterBrandsafeChannelId
      -- ^ @FILTER_BRANDSAFE_CHANNEL_ID@
    | FPTFilterBrowser
      -- ^ @FILTER_BROWSER@
    | FPTFilterCampaignDailyFrequency
      -- ^ @FILTER_CAMPAIGN_DAILY_FREQUENCY@
    | FPTFilterCarrier
      -- ^ @FILTER_CARRIER@
    | FPTFilterChannelId
      -- ^ @FILTER_CHANNEL_ID@
    | FPTFilterCity
      -- ^ @FILTER_CITY@
    | FPTFilterConversionDelay
      -- ^ @FILTER_CONVERSION_DELAY@
    | FPTFilterCountry
      -- ^ @FILTER_COUNTRY@
    | FPTFilterCreativeId
      -- ^ @FILTER_CREATIVE_ID@
    | FPTFilterCreativeSize
      -- ^ @FILTER_CREATIVE_SIZE@
    | FPTFilterCreativeType
      -- ^ @FILTER_CREATIVE_TYPE@
    | FPTFilterDataProvider
      -- ^ @FILTER_DATA_PROVIDER@
    | FPTFilterDate
      -- ^ @FILTER_DATE@
    | FPTFilterDayOfWeek
      -- ^ @FILTER_DAY_OF_WEEK@
    | FPTFilterDma
      -- ^ @FILTER_DMA@
    | FPTFilterExchangeId
      -- ^ @FILTER_EXCHANGE_ID@
    | FPTFilterFloodlightPixelId
      -- ^ @FILTER_FLOODLIGHT_PIXEL_ID@
    | FPTFilterGender
      -- ^ @FILTER_GENDER@
    | FPTFilterInsertionOrder
      -- ^ @FILTER_INSERTION_ORDER@
    | FPTFilterInventoryFormat
      -- ^ @FILTER_INVENTORY_FORMAT@
    | FPTFilterInventorySource
      -- ^ @FILTER_INVENTORY_SOURCE@
    | FPTFilterInventorySourceType
      -- ^ @FILTER_INVENTORY_SOURCE_TYPE@
    | FPTFilterKeyword
      -- ^ @FILTER_KEYWORD@
    | FPTFilterLineItem
      -- ^ @FILTER_LINE_ITEM@
    | FPTFilterLineItemDailyFrequency
      -- ^ @FILTER_LINE_ITEM_DAILY_FREQUENCY@
    | FPTFilterLineItemLifetimeFrequency
      -- ^ @FILTER_LINE_ITEM_LIFETIME_FREQUENCY@
    | FPTFilterLineItemType
      -- ^ @FILTER_LINE_ITEM_TYPE@
    | FPTFilterMobileDeviceMake
      -- ^ @FILTER_MOBILE_DEVICE_MAKE@
    | FPTFilterMobileDeviceMakeModel
      -- ^ @FILTER_MOBILE_DEVICE_MAKE_MODEL@
    | FPTFilterMobileDeviceType
      -- ^ @FILTER_MOBILE_DEVICE_TYPE@
    | FPTFilterMobileGeo
      -- ^ @FILTER_MOBILE_GEO@
    | FPTFilterMonth
      -- ^ @FILTER_MONTH@
    | FPTFilterMraidSupport
      -- ^ @FILTER_MRAID_SUPPORT@
    | FPTFilterNielsenAge
      -- ^ @FILTER_NIELSEN_AGE@
    | FPTFilterNielsenCountryCode
      -- ^ @FILTER_NIELSEN_COUNTRY_CODE@
    | FPTFilterNielsenDeviceId
      -- ^ @FILTER_NIELSEN_DEVICE_ID@
    | FPTFilterNielsenGender
      -- ^ @FILTER_NIELSEN_GENDER@
    | FPTFilterOrderId
      -- ^ @FILTER_ORDER_ID@
    | FPTFilterOs
      -- ^ @FILTER_OS@
    | FPTFilterPageCategory
      -- ^ @FILTER_PAGE_CATEGORY@
    | FPTFilterPageLayout
      -- ^ @FILTER_PAGE_LAYOUT@
    | FPTFilterPartner
      -- ^ @FILTER_PARTNER@
    | FPTFilterPartnerCurrency
      -- ^ @FILTER_PARTNER_CURRENCY@
    | FPTFilterPublicInventory
      -- ^ @FILTER_PUBLIC_INVENTORY@
    | FPTFilterQuarter
      -- ^ @FILTER_QUARTER@
    | FPTFilterRegion
      -- ^ @FILTER_REGION@
    | FPTFilterRegularChannelId
      -- ^ @FILTER_REGULAR_CHANNEL_ID@
    | FPTFilterSiteId
      -- ^ @FILTER_SITE_ID@
    | FPTFilterSiteLanguage
      -- ^ @FILTER_SITE_LANGUAGE@
    | FPTFilterTargetedUserList
      -- ^ @FILTER_TARGETED_USER_LIST@
    | FPTFilterTimeOfDay
      -- ^ @FILTER_TIME_OF_DAY@
    | FPTFilterTrueviewConversionType
      -- ^ @FILTER_TRUEVIEW_CONVERSION_TYPE@
    | FPTFilterUnknown
      -- ^ @FILTER_UNKNOWN@
    | FPTFilterUserList
      -- ^ @FILTER_USER_LIST@
    | FPTFilterUserListFirstParty
      -- ^ @FILTER_USER_LIST_FIRST_PARTY@
    | FPTFilterUserListThirdParty
      -- ^ @FILTER_USER_LIST_THIRD_PARTY@
    | FPTFilterVideoAdPositionInStream
      -- ^ @FILTER_VIDEO_AD_POSITION_IN_STREAM@
    | FPTFilterVideoCompanionSize
      -- ^ @FILTER_VIDEO_COMPANION_SIZE@
    | FPTFilterVideoCompanionType
      -- ^ @FILTER_VIDEO_COMPANION_TYPE@
    | FPTFilterVideoCreativeDuration
      -- ^ @FILTER_VIDEO_CREATIVE_DURATION@
    | FPTFilterVideoCreativeDurationSkippable
      -- ^ @FILTER_VIDEO_CREATIVE_DURATION_SKIPPABLE@
    | FPTFilterVideoDurationSeconds
      -- ^ @FILTER_VIDEO_DURATION_SECONDS@
    | FPTFilterVideoFormatSupport
      -- ^ @FILTER_VIDEO_FORMAT_SUPPORT@
    | FPTFilterVideoInventoryType
      -- ^ @FILTER_VIDEO_INVENTORY_TYPE@
    | FPTFilterVideoPlayerSize
      -- ^ @FILTER_VIDEO_PLAYER_SIZE@
    | FPTFilterVideoRatingTier
      -- ^ @FILTER_VIDEO_RATING_TIER@
    | FPTFilterVideoSkippableSupport
      -- ^ @FILTER_VIDEO_SKIPPABLE_SUPPORT@
    | FPTFilterVideoVpaidSupport
      -- ^ @FILTER_VIDEO_VPAID_SUPPORT@
    | FPTFilterWeek
      -- ^ @FILTER_WEEK@
    | FPTFilterYear
      -- ^ @FILTER_YEAR@
    | FPTFilterYoutubeVertical
      -- ^ @FILTER_YOUTUBE_VERTICAL@
    | FPTFilterZipCode
      -- ^ @FILTER_ZIP_CODE@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable FilterPairType

data ParametersItemGroupBys
    = PIGBFilterActiveViewExpectedViewability
      -- ^ @FILTER_ACTIVE_VIEW_EXPECTED_VIEWABILITY@
    | PIGBFilterActivityId
      -- ^ @FILTER_ACTIVITY_ID@
    | PIGBFilterAdvertiser
      -- ^ @FILTER_ADVERTISER@
    | PIGBFilterAdvertiserCurrency
      -- ^ @FILTER_ADVERTISER_CURRENCY@
    | PIGBFilterAdvertiserTimezone
      -- ^ @FILTER_ADVERTISER_TIMEZONE@
    | PIGBFilterAdPosition
      -- ^ @FILTER_AD_POSITION@
    | PIGBFilterAge
      -- ^ @FILTER_AGE@
    | PIGBFilterBrandsafeChannelId
      -- ^ @FILTER_BRANDSAFE_CHANNEL_ID@
    | PIGBFilterBrowser
      -- ^ @FILTER_BROWSER@
    | PIGBFilterCampaignDailyFrequency
      -- ^ @FILTER_CAMPAIGN_DAILY_FREQUENCY@
    | PIGBFilterCarrier
      -- ^ @FILTER_CARRIER@
    | PIGBFilterChannelId
      -- ^ @FILTER_CHANNEL_ID@
    | PIGBFilterCity
      -- ^ @FILTER_CITY@
    | PIGBFilterConversionDelay
      -- ^ @FILTER_CONVERSION_DELAY@
    | PIGBFilterCountry
      -- ^ @FILTER_COUNTRY@
    | PIGBFilterCreativeId
      -- ^ @FILTER_CREATIVE_ID@
    | PIGBFilterCreativeSize
      -- ^ @FILTER_CREATIVE_SIZE@
    | PIGBFilterCreativeType
      -- ^ @FILTER_CREATIVE_TYPE@
    | PIGBFilterDataProvider
      -- ^ @FILTER_DATA_PROVIDER@
    | PIGBFilterDate
      -- ^ @FILTER_DATE@
    | PIGBFilterDayOfWeek
      -- ^ @FILTER_DAY_OF_WEEK@
    | PIGBFilterDma
      -- ^ @FILTER_DMA@
    | PIGBFilterExchangeId
      -- ^ @FILTER_EXCHANGE_ID@
    | PIGBFilterFloodlightPixelId
      -- ^ @FILTER_FLOODLIGHT_PIXEL_ID@
    | PIGBFilterGender
      -- ^ @FILTER_GENDER@
    | PIGBFilterInsertionOrder
      -- ^ @FILTER_INSERTION_ORDER@
    | PIGBFilterInventoryFormat
      -- ^ @FILTER_INVENTORY_FORMAT@
    | PIGBFilterInventorySource
      -- ^ @FILTER_INVENTORY_SOURCE@
    | PIGBFilterInventorySourceType
      -- ^ @FILTER_INVENTORY_SOURCE_TYPE@
    | PIGBFilterKeyword
      -- ^ @FILTER_KEYWORD@
    | PIGBFilterLineItem
      -- ^ @FILTER_LINE_ITEM@
    | PIGBFilterLineItemDailyFrequency
      -- ^ @FILTER_LINE_ITEM_DAILY_FREQUENCY@
    | PIGBFilterLineItemLifetimeFrequency
      -- ^ @FILTER_LINE_ITEM_LIFETIME_FREQUENCY@
    | PIGBFilterLineItemType
      -- ^ @FILTER_LINE_ITEM_TYPE@
    | PIGBFilterMobileDeviceMake
      -- ^ @FILTER_MOBILE_DEVICE_MAKE@
    | PIGBFilterMobileDeviceMakeModel
      -- ^ @FILTER_MOBILE_DEVICE_MAKE_MODEL@
    | PIGBFilterMobileDeviceType
      -- ^ @FILTER_MOBILE_DEVICE_TYPE@
    | PIGBFilterMobileGeo
      -- ^ @FILTER_MOBILE_GEO@
    | PIGBFilterMonth
      -- ^ @FILTER_MONTH@
    | PIGBFilterMraidSupport
      -- ^ @FILTER_MRAID_SUPPORT@
    | PIGBFilterNielsenAge
      -- ^ @FILTER_NIELSEN_AGE@
    | PIGBFilterNielsenCountryCode
      -- ^ @FILTER_NIELSEN_COUNTRY_CODE@
    | PIGBFilterNielsenDeviceId
      -- ^ @FILTER_NIELSEN_DEVICE_ID@
    | PIGBFilterNielsenGender
      -- ^ @FILTER_NIELSEN_GENDER@
    | PIGBFilterOrderId
      -- ^ @FILTER_ORDER_ID@
    | PIGBFilterOs
      -- ^ @FILTER_OS@
    | PIGBFilterPageCategory
      -- ^ @FILTER_PAGE_CATEGORY@
    | PIGBFilterPageLayout
      -- ^ @FILTER_PAGE_LAYOUT@
    | PIGBFilterPartner
      -- ^ @FILTER_PARTNER@
    | PIGBFilterPartnerCurrency
      -- ^ @FILTER_PARTNER_CURRENCY@
    | PIGBFilterPublicInventory
      -- ^ @FILTER_PUBLIC_INVENTORY@
    | PIGBFilterQuarter
      -- ^ @FILTER_QUARTER@
    | PIGBFilterRegion
      -- ^ @FILTER_REGION@
    | PIGBFilterRegularChannelId
      -- ^ @FILTER_REGULAR_CHANNEL_ID@
    | PIGBFilterSiteId
      -- ^ @FILTER_SITE_ID@
    | PIGBFilterSiteLanguage
      -- ^ @FILTER_SITE_LANGUAGE@
    | PIGBFilterTargetedUserList
      -- ^ @FILTER_TARGETED_USER_LIST@
    | PIGBFilterTimeOfDay
      -- ^ @FILTER_TIME_OF_DAY@
    | PIGBFilterTrueviewConversionType
      -- ^ @FILTER_TRUEVIEW_CONVERSION_TYPE@
    | PIGBFilterUnknown
      -- ^ @FILTER_UNKNOWN@
    | PIGBFilterUserList
      -- ^ @FILTER_USER_LIST@
    | PIGBFilterUserListFirstParty
      -- ^ @FILTER_USER_LIST_FIRST_PARTY@
    | PIGBFilterUserListThirdParty
      -- ^ @FILTER_USER_LIST_THIRD_PARTY@
    | PIGBFilterVideoAdPositionInStream
      -- ^ @FILTER_VIDEO_AD_POSITION_IN_STREAM@
    | PIGBFilterVideoCompanionSize
      -- ^ @FILTER_VIDEO_COMPANION_SIZE@
    | PIGBFilterVideoCompanionType
      -- ^ @FILTER_VIDEO_COMPANION_TYPE@
    | PIGBFilterVideoCreativeDuration
      -- ^ @FILTER_VIDEO_CREATIVE_DURATION@
    | PIGBFilterVideoCreativeDurationSkippable
      -- ^ @FILTER_VIDEO_CREATIVE_DURATION_SKIPPABLE@
    | PIGBFilterVideoDurationSeconds
      -- ^ @FILTER_VIDEO_DURATION_SECONDS@
    | PIGBFilterVideoFormatSupport
      -- ^ @FILTER_VIDEO_FORMAT_SUPPORT@
    | PIGBFilterVideoInventoryType
      -- ^ @FILTER_VIDEO_INVENTORY_TYPE@
    | PIGBFilterVideoPlayerSize
      -- ^ @FILTER_VIDEO_PLAYER_SIZE@
    | PIGBFilterVideoRatingTier
      -- ^ @FILTER_VIDEO_RATING_TIER@
    | PIGBFilterVideoSkippableSupport
      -- ^ @FILTER_VIDEO_SKIPPABLE_SUPPORT@
    | PIGBFilterVideoVpaidSupport
      -- ^ @FILTER_VIDEO_VPAID_SUPPORT@
    | PIGBFilterWeek
      -- ^ @FILTER_WEEK@
    | PIGBFilterYear
      -- ^ @FILTER_YEAR@
    | PIGBFilterYoutubeVertical
      -- ^ @FILTER_YOUTUBE_VERTICAL@
    | PIGBFilterZipCode
      -- ^ @FILTER_ZIP_CODE@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable ParametersItemGroupBys

data ParametersItemMetrics
    = PIMMetricBidRequests
      -- ^ @METRIC_BID_REQUESTS@
    | PIMMetricBillableCostAdvertiser
      -- ^ @METRIC_BILLABLE_COST_ADVERTISER@
    | PIMMetricBillableCostPartner
      -- ^ @METRIC_BILLABLE_COST_PARTNER@
    | PIMMetricBillableCostUsd
      -- ^ @METRIC_BILLABLE_COST_USD@
    | PIMMetricClicks
      -- ^ @METRIC_CLICKS@
    | PIMMetricClickToPostClickConversionRate
      -- ^ @METRIC_CLICK_TO_POST_CLICK_CONVERSION_RATE@
    | PIMMetricComscoreVceAudienceAvgFrequency
      -- ^ @METRIC_COMSCORE_VCE_AUDIENCE_AVG_FREQUENCY@
    | PIMMetricComscoreVceAudienceImpressions
      -- ^ @METRIC_COMSCORE_VCE_AUDIENCE_IMPRESSIONS@
    | PIMMetricComscoreVceAudienceImpressionsShare
      -- ^ @METRIC_COMSCORE_VCE_AUDIENCE_IMPRESSIONS_SHARE@
    | PIMMetricComscoreVceAudienceReachPct
      -- ^ @METRIC_COMSCORE_VCE_AUDIENCE_REACH_PCT@
    | PIMMetricComscoreVceAudienceSharePct
      -- ^ @METRIC_COMSCORE_VCE_AUDIENCE_SHARE_PCT@
    | PIMMetricComscoreVceGrossRatingPoints
      -- ^ @METRIC_COMSCORE_VCE_GROSS_RATING_POINTS@
    | PIMMetricComscoreVcePopulation
      -- ^ @METRIC_COMSCORE_VCE_POPULATION@
    | PIMMetricComscoreVceUniqueAudience
      -- ^ @METRIC_COMSCORE_VCE_UNIQUE_AUDIENCE@
    | PIMMetricConversionsPerMille
      -- ^ @METRIC_CONVERSIONS_PER_MILLE@
    | PIMMetricCpmFEE1Advertiser
      -- ^ @METRIC_CPM_FEE1_ADVERTISER@
    | PIMMetricCpmFEE1Partner
      -- ^ @METRIC_CPM_FEE1_PARTNER@
    | PIMMetricCpmFEE1Usd
      -- ^ @METRIC_CPM_FEE1_USD@
    | PIMMetricCpmFEE2Advertiser
      -- ^ @METRIC_CPM_FEE2_ADVERTISER@
    | PIMMetricCpmFEE2Partner
      -- ^ @METRIC_CPM_FEE2_PARTNER@
    | PIMMetricCpmFEE2Usd
      -- ^ @METRIC_CPM_FEE2_USD@
    | PIMMetricCpmFEE3Advertiser
      -- ^ @METRIC_CPM_FEE3_ADVERTISER@
    | PIMMetricCpmFEE3Partner
      -- ^ @METRIC_CPM_FEE3_PARTNER@
    | PIMMetricCpmFEE3Usd
      -- ^ @METRIC_CPM_FEE3_USD@
    | PIMMetricCpmFEE4Advertiser
      -- ^ @METRIC_CPM_FEE4_ADVERTISER@
    | PIMMetricCpmFEE4Partner
      -- ^ @METRIC_CPM_FEE4_PARTNER@
    | PIMMetricCpmFEE4Usd
      -- ^ @METRIC_CPM_FEE4_USD@
    | PIMMetricCpmFEE5Advertiser
      -- ^ @METRIC_CPM_FEE5_ADVERTISER@
    | PIMMetricCpmFEE5Partner
      -- ^ @METRIC_CPM_FEE5_PARTNER@
    | PIMMetricCpmFEE5Usd
      -- ^ @METRIC_CPM_FEE5_USD@
    | PIMMetricCtr
      -- ^ @METRIC_CTR@
    | PIMMetricDataCostAdvertiser
      -- ^ @METRIC_DATA_COST_ADVERTISER@
    | PIMMetricDataCostPartner
      -- ^ @METRIC_DATA_COST_PARTNER@
    | PIMMetricDataCostUsd
      -- ^ @METRIC_DATA_COST_USD@
    | PIMMetricFEE10Advertiser
      -- ^ @METRIC_FEE10_ADVERTISER@
    | PIMMetricFEE10Partner
      -- ^ @METRIC_FEE10_PARTNER@
    | PIMMetricFEE10Usd
      -- ^ @METRIC_FEE10_USD@
    | PIMMetricFEE11Advertiser
      -- ^ @METRIC_FEE11_ADVERTISER@
    | PIMMetricFEE11Partner
      -- ^ @METRIC_FEE11_PARTNER@
    | PIMMetricFEE11Usd
      -- ^ @METRIC_FEE11_USD@
    | PIMMetricFEE12Advertiser
      -- ^ @METRIC_FEE12_ADVERTISER@
    | PIMMetricFEE12Partner
      -- ^ @METRIC_FEE12_PARTNER@
    | PIMMetricFEE12Usd
      -- ^ @METRIC_FEE12_USD@
    | PIMMetricFEE13Advertiser
      -- ^ @METRIC_FEE13_ADVERTISER@
    | PIMMetricFEE13Partner
      -- ^ @METRIC_FEE13_PARTNER@
    | PIMMetricFEE13Usd
      -- ^ @METRIC_FEE13_USD@
    | PIMMetricFEE14Advertiser
      -- ^ @METRIC_FEE14_ADVERTISER@
    | PIMMetricFEE14Partner
      -- ^ @METRIC_FEE14_PARTNER@
    | PIMMetricFEE14Usd
      -- ^ @METRIC_FEE14_USD@
    | PIMMetricFEE15Advertiser
      -- ^ @METRIC_FEE15_ADVERTISER@
    | PIMMetricFEE15Partner
      -- ^ @METRIC_FEE15_PARTNER@
    | PIMMetricFEE15Usd
      -- ^ @METRIC_FEE15_USD@
    | PIMMetricFEE16Advertiser
      -- ^ @METRIC_FEE16_ADVERTISER@
    | PIMMetricFEE16Partner
      -- ^ @METRIC_FEE16_PARTNER@
    | PIMMetricFEE16Usd
      -- ^ @METRIC_FEE16_USD@
    | PIMMetricFEE17Advertiser
      -- ^ @METRIC_FEE17_ADVERTISER@
    | PIMMetricFEE17Partner
      -- ^ @METRIC_FEE17_PARTNER@
    | PIMMetricFEE17Usd
      -- ^ @METRIC_FEE17_USD@
    | PIMMetricFEE18Advertiser
      -- ^ @METRIC_FEE18_ADVERTISER@
    | PIMMetricFEE18Partner
      -- ^ @METRIC_FEE18_PARTNER@
    | PIMMetricFEE18Usd
      -- ^ @METRIC_FEE18_USD@
    | PIMMetricFEE19Advertiser
      -- ^ @METRIC_FEE19_ADVERTISER@
    | PIMMetricFEE19Partner
      -- ^ @METRIC_FEE19_PARTNER@
    | PIMMetricFEE19Usd
      -- ^ @METRIC_FEE19_USD@
    | PIMMetricFEE20Advertiser
      -- ^ @METRIC_FEE20_ADVERTISER@
    | PIMMetricFEE20Partner
      -- ^ @METRIC_FEE20_PARTNER@
    | PIMMetricFEE20Usd
      -- ^ @METRIC_FEE20_USD@
    | PIMMetricFEE2Advertiser
      -- ^ @METRIC_FEE2_ADVERTISER@
    | PIMMetricFEE2Partner
      -- ^ @METRIC_FEE2_PARTNER@
    | PIMMetricFEE2Usd
      -- ^ @METRIC_FEE2_USD@
    | PIMMetricFEE3Advertiser
      -- ^ @METRIC_FEE3_ADVERTISER@
    | PIMMetricFEE3Partner
      -- ^ @METRIC_FEE3_PARTNER@
    | PIMMetricFEE3Usd
      -- ^ @METRIC_FEE3_USD@
    | PIMMetricFEE4Advertiser
      -- ^ @METRIC_FEE4_ADVERTISER@
    | PIMMetricFEE4Partner
      -- ^ @METRIC_FEE4_PARTNER@
    | PIMMetricFEE4Usd
      -- ^ @METRIC_FEE4_USD@
    | PIMMetricFEE5Advertiser
      -- ^ @METRIC_FEE5_ADVERTISER@
    | PIMMetricFEE5Partner
      -- ^ @METRIC_FEE5_PARTNER@
    | PIMMetricFEE5Usd
      -- ^ @METRIC_FEE5_USD@
    | PIMMetricFEE6Advertiser
      -- ^ @METRIC_FEE6_ADVERTISER@
    | PIMMetricFEE6Partner
      -- ^ @METRIC_FEE6_PARTNER@
    | PIMMetricFEE6Usd
      -- ^ @METRIC_FEE6_USD@
    | PIMMetricFEE7Advertiser
      -- ^ @METRIC_FEE7_ADVERTISER@
    | PIMMetricFEE7Partner
      -- ^ @METRIC_FEE7_PARTNER@
    | PIMMetricFEE7Usd
      -- ^ @METRIC_FEE7_USD@
    | PIMMetricFEE8Advertiser
      -- ^ @METRIC_FEE8_ADVERTISER@
    | PIMMetricFEE8Partner
      -- ^ @METRIC_FEE8_PARTNER@
    | PIMMetricFEE8Usd
      -- ^ @METRIC_FEE8_USD@
    | PIMMetricFEE9Advertiser
      -- ^ @METRIC_FEE9_ADVERTISER@
    | PIMMetricFEE9Partner
      -- ^ @METRIC_FEE9_PARTNER@
    | PIMMetricFEE9Usd
      -- ^ @METRIC_FEE9_USD@
    | PIMMetricImpressions
      -- ^ @METRIC_IMPRESSIONS@
    | PIMMetricImpressionsToConversionRate
      -- ^ @METRIC_IMPRESSIONS_TO_CONVERSION_RATE@
    | PIMMetricLastClicks
      -- ^ @METRIC_LAST_CLICKS@
    | PIMMetricLastImpressions
      -- ^ @METRIC_LAST_IMPRESSIONS@
    | PIMMetricMediaCostAdvertiser
      -- ^ @METRIC_MEDIA_COST_ADVERTISER@
    | PIMMetricMediaCostEcpapcAdvertiser
      -- ^ @METRIC_MEDIA_COST_ECPAPC_ADVERTISER@
    | PIMMetricMediaCostEcpapcPartner
      -- ^ @METRIC_MEDIA_COST_ECPAPC_PARTNER@
    | PIMMetricMediaCostEcpapcUsd
      -- ^ @METRIC_MEDIA_COST_ECPAPC_USD@
    | PIMMetricMediaCostEcpapvAdvertiser
      -- ^ @METRIC_MEDIA_COST_ECPAPV_ADVERTISER@
    | PIMMetricMediaCostEcpapvPartner
      -- ^ @METRIC_MEDIA_COST_ECPAPV_PARTNER@
    | PIMMetricMediaCostEcpapvUsd
      -- ^ @METRIC_MEDIA_COST_ECPAPV_USD@
    | PIMMetricMediaCostEcpaAdvertiser
      -- ^ @METRIC_MEDIA_COST_ECPA_ADVERTISER@
    | PIMMetricMediaCostEcpaPartner
      -- ^ @METRIC_MEDIA_COST_ECPA_PARTNER@
    | PIMMetricMediaCostEcpaUsd
      -- ^ @METRIC_MEDIA_COST_ECPA_USD@
    | PIMMetricMediaCostEcpcvAdvertiser
      -- ^ @METRIC_MEDIA_COST_ECPCV_ADVERTISER@
    | PIMMetricMediaCostEcpcvPartner
      -- ^ @METRIC_MEDIA_COST_ECPCV_PARTNER@
    | PIMMetricMediaCostEcpcvUsd
      -- ^ @METRIC_MEDIA_COST_ECPCV_USD@
    | PIMMetricMediaCostEcpcAdvertiser
      -- ^ @METRIC_MEDIA_COST_ECPC_ADVERTISER@
    | PIMMetricMediaCostEcpcPartner
      -- ^ @METRIC_MEDIA_COST_ECPC_PARTNER@
    | PIMMetricMediaCostEcpcUsd
      -- ^ @METRIC_MEDIA_COST_ECPC_USD@
    | PIMMetricMediaCostEcpmAdvertiser
      -- ^ @METRIC_MEDIA_COST_ECPM_ADVERTISER@
    | PIMMetricMediaCostEcpmPartner
      -- ^ @METRIC_MEDIA_COST_ECPM_PARTNER@
    | PIMMetricMediaCostEcpmUsd
      -- ^ @METRIC_MEDIA_COST_ECPM_USD@
    | PIMMetricMediaCostPartner
      -- ^ @METRIC_MEDIA_COST_PARTNER@
    | PIMMetricMediaCostUsd
      -- ^ @METRIC_MEDIA_COST_USD@
    | PIMMetricMediaFEE1Advertiser
      -- ^ @METRIC_MEDIA_FEE1_ADVERTISER@
    | PIMMetricMediaFEE1Partner
      -- ^ @METRIC_MEDIA_FEE1_PARTNER@
    | PIMMetricMediaFEE1Usd
      -- ^ @METRIC_MEDIA_FEE1_USD@
    | PIMMetricMediaFEE2Advertiser
      -- ^ @METRIC_MEDIA_FEE2_ADVERTISER@
    | PIMMetricMediaFEE2Partner
      -- ^ @METRIC_MEDIA_FEE2_PARTNER@
    | PIMMetricMediaFEE2Usd
      -- ^ @METRIC_MEDIA_FEE2_USD@
    | PIMMetricMediaFEE3Advertiser
      -- ^ @METRIC_MEDIA_FEE3_ADVERTISER@
    | PIMMetricMediaFEE3Partner
      -- ^ @METRIC_MEDIA_FEE3_PARTNER@
    | PIMMetricMediaFEE3Usd
      -- ^ @METRIC_MEDIA_FEE3_USD@
    | PIMMetricMediaFEE4Advertiser
      -- ^ @METRIC_MEDIA_FEE4_ADVERTISER@
    | PIMMetricMediaFEE4Partner
      -- ^ @METRIC_MEDIA_FEE4_PARTNER@
    | PIMMetricMediaFEE4Usd
      -- ^ @METRIC_MEDIA_FEE4_USD@
    | PIMMetricMediaFEE5Advertiser
      -- ^ @METRIC_MEDIA_FEE5_ADVERTISER@
    | PIMMetricMediaFEE5Partner
      -- ^ @METRIC_MEDIA_FEE5_PARTNER@
    | PIMMetricMediaFEE5Usd
      -- ^ @METRIC_MEDIA_FEE5_USD@
    | PIMMetricPixelLoads
      -- ^ @METRIC_PIXEL_LOADS@
    | PIMMetricPlatformFeeAdvertiser
      -- ^ @METRIC_PLATFORM_FEE_ADVERTISER@
    | PIMMetricPlatformFeePartner
      -- ^ @METRIC_PLATFORM_FEE_PARTNER@
    | PIMMetricPlatformFeeUsd
      -- ^ @METRIC_PLATFORM_FEE_USD@
    | PIMMetricPostClickDfaRevenue
      -- ^ @METRIC_POST_CLICK_DFA_REVENUE@
    | PIMMetricPostViewDfaRevenue
      -- ^ @METRIC_POST_VIEW_DFA_REVENUE@
    | PIMMetricProfitAdvertiser
      -- ^ @METRIC_PROFIT_ADVERTISER@
    | PIMMetricProfitEcpapcAdvertiser
      -- ^ @METRIC_PROFIT_ECPAPC_ADVERTISER@
    | PIMMetricProfitEcpapcPartner
      -- ^ @METRIC_PROFIT_ECPAPC_PARTNER@
    | PIMMetricProfitEcpapcUsd
      -- ^ @METRIC_PROFIT_ECPAPC_USD@
    | PIMMetricProfitEcpapvAdvertiser
      -- ^ @METRIC_PROFIT_ECPAPV_ADVERTISER@
    | PIMMetricProfitEcpapvPartner
      -- ^ @METRIC_PROFIT_ECPAPV_PARTNER@
    | PIMMetricProfitEcpapvUsd
      -- ^ @METRIC_PROFIT_ECPAPV_USD@
    | PIMMetricProfitEcpaAdvertiser
      -- ^ @METRIC_PROFIT_ECPA_ADVERTISER@
    | PIMMetricProfitEcpaPartner
      -- ^ @METRIC_PROFIT_ECPA_PARTNER@
    | PIMMetricProfitEcpaUsd
      -- ^ @METRIC_PROFIT_ECPA_USD@
    | PIMMetricProfitEcpcAdvertiser
      -- ^ @METRIC_PROFIT_ECPC_ADVERTISER@
    | PIMMetricProfitEcpcPartner
      -- ^ @METRIC_PROFIT_ECPC_PARTNER@
    | PIMMetricProfitEcpcUsd
      -- ^ @METRIC_PROFIT_ECPC_USD@
    | PIMMetricProfitEcpmAdvertiser
      -- ^ @METRIC_PROFIT_ECPM_ADVERTISER@
    | PIMMetricProfitEcpmPartner
      -- ^ @METRIC_PROFIT_ECPM_PARTNER@
    | PIMMetricProfitEcpmUsd
      -- ^ @METRIC_PROFIT_ECPM_USD@
    | PIMMetricProfitMargin
      -- ^ @METRIC_PROFIT_MARGIN@
    | PIMMetricProfitPartner
      -- ^ @METRIC_PROFIT_PARTNER@
    | PIMMetricProfitUsd
      -- ^ @METRIC_PROFIT_USD@
    | PIMMetricRevenueAdvertiser
      -- ^ @METRIC_REVENUE_ADVERTISER@
    | PIMMetricRevenueEcpapcAdvertiser
      -- ^ @METRIC_REVENUE_ECPAPC_ADVERTISER@
    | PIMMetricRevenueEcpapcPartner
      -- ^ @METRIC_REVENUE_ECPAPC_PARTNER@
    | PIMMetricRevenueEcpapcUsd
      -- ^ @METRIC_REVENUE_ECPAPC_USD@
    | PIMMetricRevenueEcpapvAdvertiser
      -- ^ @METRIC_REVENUE_ECPAPV_ADVERTISER@
    | PIMMetricRevenueEcpapvPartner
      -- ^ @METRIC_REVENUE_ECPAPV_PARTNER@
    | PIMMetricRevenueEcpapvUsd
      -- ^ @METRIC_REVENUE_ECPAPV_USD@
    | PIMMetricRevenueEcpaAdvertiser
      -- ^ @METRIC_REVENUE_ECPA_ADVERTISER@
    | PIMMetricRevenueEcpaPartner
      -- ^ @METRIC_REVENUE_ECPA_PARTNER@
    | PIMMetricRevenueEcpaUsd
      -- ^ @METRIC_REVENUE_ECPA_USD@
    | PIMMetricRevenueEcpcvAdvertiser
      -- ^ @METRIC_REVENUE_ECPCV_ADVERTISER@
    | PIMMetricRevenueEcpcvPartner
      -- ^ @METRIC_REVENUE_ECPCV_PARTNER@
    | PIMMetricRevenueEcpcvUsd
      -- ^ @METRIC_REVENUE_ECPCV_USD@
    | PIMMetricRevenueEcpcAdvertiser
      -- ^ @METRIC_REVENUE_ECPC_ADVERTISER@
    | PIMMetricRevenueEcpcPartner
      -- ^ @METRIC_REVENUE_ECPC_PARTNER@
    | PIMMetricRevenueEcpcUsd
      -- ^ @METRIC_REVENUE_ECPC_USD@
    | PIMMetricRevenueEcpmAdvertiser
      -- ^ @METRIC_REVENUE_ECPM_ADVERTISER@
    | PIMMetricRevenueEcpmPartner
      -- ^ @METRIC_REVENUE_ECPM_PARTNER@
    | PIMMetricRevenueEcpmUsd
      -- ^ @METRIC_REVENUE_ECPM_USD@
    | PIMMetricRevenuePartner
      -- ^ @METRIC_REVENUE_PARTNER@
    | PIMMetricRevenueUsd
      -- ^ @METRIC_REVENUE_USD@
    | PIMMetricRichMediaVideoCompletions
      -- ^ @METRIC_RICH_MEDIA_VIDEO_COMPLETIONS@
    | PIMMetricRichMediaVideoFirstQuartileCompletes
      -- ^ @METRIC_RICH_MEDIA_VIDEO_FIRST_QUARTILE_COMPLETES@
    | PIMMetricRichMediaVideoFullScreens
      -- ^ @METRIC_RICH_MEDIA_VIDEO_FULL_SCREENS@
    | PIMMetricRichMediaVideoMidpoints
      -- ^ @METRIC_RICH_MEDIA_VIDEO_MIDPOINTS@
    | PIMMetricRichMediaVideoMutes
      -- ^ @METRIC_RICH_MEDIA_VIDEO_MUTES@
    | PIMMetricRichMediaVideoPauses
      -- ^ @METRIC_RICH_MEDIA_VIDEO_PAUSES@
    | PIMMetricRichMediaVideoPlays
      -- ^ @METRIC_RICH_MEDIA_VIDEO_PLAYS@
    | PIMMetricRichMediaVideoSkips
      -- ^ @METRIC_RICH_MEDIA_VIDEO_SKIPS@
    | PIMMetricRichMediaVideoThirdQuartileCompletes
      -- ^ @METRIC_RICH_MEDIA_VIDEO_THIRD_QUARTILE_COMPLETES@
    | PIMMetricTeaTrueviewImpressions
      -- ^ @METRIC_TEA_TRUEVIEW_IMPRESSIONS@
    | PIMMetricTeaTrueviewUniqueCookies
      -- ^ @METRIC_TEA_TRUEVIEW_UNIQUE_COOKIES@
    | PIMMetricTeaTrueviewUniquePeople
      -- ^ @METRIC_TEA_TRUEVIEW_UNIQUE_PEOPLE@
    | PIMMetricTotalConversions
      -- ^ @METRIC_TOTAL_CONVERSIONS@
    | PIMMetricTotalMediaCostAdvertiser
      -- ^ @METRIC_TOTAL_MEDIA_COST_ADVERTISER@
    | PIMMetricTotalMediaCostEcpapcAdvertiser
      -- ^ @METRIC_TOTAL_MEDIA_COST_ECPAPC_ADVERTISER@
    | PIMMetricTotalMediaCostEcpapcPartner
      -- ^ @METRIC_TOTAL_MEDIA_COST_ECPAPC_PARTNER@
    | PIMMetricTotalMediaCostEcpapcUsd
      -- ^ @METRIC_TOTAL_MEDIA_COST_ECPAPC_USD@
    | PIMMetricTotalMediaCostEcpapvAdvertiser
      -- ^ @METRIC_TOTAL_MEDIA_COST_ECPAPV_ADVERTISER@
    | PIMMetricTotalMediaCostEcpapvPartner
      -- ^ @METRIC_TOTAL_MEDIA_COST_ECPAPV_PARTNER@
    | PIMMetricTotalMediaCostEcpapvUsd
      -- ^ @METRIC_TOTAL_MEDIA_COST_ECPAPV_USD@
    | PIMMetricTotalMediaCostEcpaAdvertiser
      -- ^ @METRIC_TOTAL_MEDIA_COST_ECPA_ADVERTISER@
    | PIMMetricTotalMediaCostEcpaPartner
      -- ^ @METRIC_TOTAL_MEDIA_COST_ECPA_PARTNER@
    | PIMMetricTotalMediaCostEcpaUsd
      -- ^ @METRIC_TOTAL_MEDIA_COST_ECPA_USD@
    | PIMMetricTotalMediaCostEcpcvAdvertiser
      -- ^ @METRIC_TOTAL_MEDIA_COST_ECPCV_ADVERTISER@
    | PIMMetricTotalMediaCostEcpcvPartner
      -- ^ @METRIC_TOTAL_MEDIA_COST_ECPCV_PARTNER@
    | PIMMetricTotalMediaCostEcpcvUsd
      -- ^ @METRIC_TOTAL_MEDIA_COST_ECPCV_USD@
    | PIMMetricTotalMediaCostEcpcAdvertiser
      -- ^ @METRIC_TOTAL_MEDIA_COST_ECPC_ADVERTISER@
    | PIMMetricTotalMediaCostEcpcPartner
      -- ^ @METRIC_TOTAL_MEDIA_COST_ECPC_PARTNER@
    | PIMMetricTotalMediaCostEcpcUsd
      -- ^ @METRIC_TOTAL_MEDIA_COST_ECPC_USD@
    | PIMMetricTotalMediaCostEcpmAdvertiser
      -- ^ @METRIC_TOTAL_MEDIA_COST_ECPM_ADVERTISER@
    | PIMMetricTotalMediaCostEcpmPartner
      -- ^ @METRIC_TOTAL_MEDIA_COST_ECPM_PARTNER@
    | PIMMetricTotalMediaCostEcpmUsd
      -- ^ @METRIC_TOTAL_MEDIA_COST_ECPM_USD@
    | PIMMetricTotalMediaCostPartner
      -- ^ @METRIC_TOTAL_MEDIA_COST_PARTNER@
    | PIMMetricTotalMediaCostUsd
      -- ^ @METRIC_TOTAL_MEDIA_COST_USD@
    | PIMMetricTrueviewConversionManyPerView
      -- ^ @METRIC_TRUEVIEW_CONVERSION_MANY_PER_VIEW@
    | PIMMetricTrueviewConversionOnePerView
      -- ^ @METRIC_TRUEVIEW_CONVERSION_ONE_PER_VIEW@
    | PIMMetricTrueviewConversionRateOnePerView
      -- ^ @METRIC_TRUEVIEW_CONVERSION_RATE_ONE_PER_VIEW@
    | PIMMetricTrueviewCostConversionManyPerViewRatio
      -- ^ @METRIC_TRUEVIEW_COST_CONVERSION_MANY_PER_VIEW_RATIO@
    | PIMMetricTrueviewCostConversionOnePerViewRatio
      -- ^ @METRIC_TRUEVIEW_COST_CONVERSION_ONE_PER_VIEW_RATIO@
    | PIMMetricTrueviewCpvAdvertiser
      -- ^ @METRIC_TRUEVIEW_CPV_ADVERTISER@
    | PIMMetricTrueviewCpvPartner
      -- ^ @METRIC_TRUEVIEW_CPV_PARTNER@
    | PIMMetricTrueviewCpvUsd
      -- ^ @METRIC_TRUEVIEW_CPV_USD@
    | PIMMetricTrueviewEarnedLikes
      -- ^ @METRIC_TRUEVIEW_EARNED_LIKES@
    | PIMMetricTrueviewEarnedPlaylistAdditions
      -- ^ @METRIC_TRUEVIEW_EARNED_PLAYLIST_ADDITIONS@
    | PIMMetricTrueviewEarnedShares
      -- ^ @METRIC_TRUEVIEW_EARNED_SHARES@
    | PIMMetricTrueviewEarnedSubscribers
      -- ^ @METRIC_TRUEVIEW_EARNED_SUBSCRIBERS@
    | PIMMetricTrueviewEarnedViews
      -- ^ @METRIC_TRUEVIEW_EARNED_VIEWS@
    | PIMMetricTrueviewImpressionShare
      -- ^ @METRIC_TRUEVIEW_IMPRESSION_SHARE@
    | PIMMetricTrueviewLostIsBudget
      -- ^ @METRIC_TRUEVIEW_LOST_IS_BUDGET@
    | PIMMetricTrueviewLostIsRank
      -- ^ @METRIC_TRUEVIEW_LOST_IS_RANK@
    | PIMMetricTrueviewTotalConversionValue
      -- ^ @METRIC_TRUEVIEW_TOTAL_CONVERSION_VALUE@
    | PIMMetricTrueviewUniqueViewers
      -- ^ @METRIC_TRUEVIEW_UNIQUE_VIEWERS@
    | PIMMetricTrueviewValueConversionManyPerViewRatio
      -- ^ @METRIC_TRUEVIEW_VALUE_CONVERSION_MANY_PER_VIEW_RATIO@
    | PIMMetricTrueviewValueConversionOnePerViewRatio
      -- ^ @METRIC_TRUEVIEW_VALUE_CONVERSION_ONE_PER_VIEW_RATIO@
    | PIMMetricTrueviewViews
      -- ^ @METRIC_TRUEVIEW_VIEWS@
    | PIMMetricTrueviewViewRate
      -- ^ @METRIC_TRUEVIEW_VIEW_RATE@
    | PIMMetricTrueviewViewThroughConversion
      -- ^ @METRIC_TRUEVIEW_VIEW_THROUGH_CONVERSION@
    | PIMMetricUniqueVisitorsCookies
      -- ^ @METRIC_UNIQUE_VISITORS_COOKIES@
    | PIMMetricUnknown
      -- ^ @METRIC_UNKNOWN@
    | PIMMetricVideoCompanionClicks
      -- ^ @METRIC_VIDEO_COMPANION_CLICKS@
    | PIMMetricVideoCompanionImpressions
      -- ^ @METRIC_VIDEO_COMPANION_IMPRESSIONS@
    | PIMMetricVideoCompletionRate
      -- ^ @METRIC_VIDEO_COMPLETION_RATE@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable ParametersItemMetrics

-- | Report type.
data ParametersType
    = PTTypeActiveGrp
      -- ^ @TYPE_ACTIVE_GRP@
    | PTTypeAudienceComposition
      -- ^ @TYPE_AUDIENCE_COMPOSITION@
    | PTTypeAudiencePerformance
      -- ^ @TYPE_AUDIENCE_PERFORMANCE@
    | PTTypeClientSafe
      -- ^ @TYPE_CLIENT_SAFE@
    | PTTypeComscoreVce
      -- ^ @TYPE_COMSCORE_VCE@
    | PTTypeCrossFee
      -- ^ @TYPE_CROSS_FEE@
    | PTTypeCrossPartner
      -- ^ @TYPE_CROSS_PARTNER@
    | PTTypeCrossPartnerThirdPartyDataProvider
      -- ^ @TYPE_CROSS_PARTNER_THIRD_PARTY_DATA_PROVIDER@
    | PTTypeEstimatedConversion
      -- ^ @TYPE_ESTIMATED_CONVERSION@
    | PTTypeFee
      -- ^ @TYPE_FEE@
    | PTTypeGeneral
      -- ^ @TYPE_GENERAL@
    | PTTypeInventoryAvailability
      -- ^ @TYPE_INVENTORY_AVAILABILITY@
    | PTTypeKeyword
      -- ^ @TYPE_KEYWORD@
    | PTTypeNielsenAudienceProfile
      -- ^ @TYPE_NIELSEN_AUDIENCE_PROFILE@
    | PTTypeNielsenDailyReachBuild
      -- ^ @TYPE_NIELSEN_DAILY_REACH_BUILD@
    | PTTypeNielsenSite
      -- ^ @TYPE_NIELSEN_SITE@
    | PTTypeOrderId
      -- ^ @TYPE_ORDER_ID@
    | PTTypePageCategory
      -- ^ @TYPE_PAGE_CATEGORY@
    | PTTypePixelLoad
      -- ^ @TYPE_PIXEL_LOAD@
    | PTTypeReachAndFrequency
      -- ^ @TYPE_REACH_AND_FREQUENCY@
    | PTTypeThirdPartyDataProvider
      -- ^ @TYPE_THIRD_PARTY_DATA_PROVIDER@
    | PTTypeTrueview
      -- ^ @TYPE_TRUEVIEW@
    | PTTypeTrueviewIar
      -- ^ @TYPE_TRUEVIEW_IAR@
    | PTTypeVerification
      -- ^ @TYPE_VERIFICATION@
    | PTTypeYoutubeVertical
      -- ^ @TYPE_YOUTUBE_VERTICAL@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable ParametersType

-- | Range of report data.
data QueryMetadataDataRange
    = QMDRAllTime
      -- ^ @ALL_TIME@
    | QMDRCurrentDay
      -- ^ @CURRENT_DAY@
    | QMDRCustomDates
      -- ^ @CUSTOM_DATES@
    | QMDRLast14Days
      -- ^ @LAST_14_DAYS@
    | QMDRLast30Days
      -- ^ @LAST_30_DAYS@
    | QMDRLast365Days
      -- ^ @LAST_365_DAYS@
    | QMDRLast7Days
      -- ^ @LAST_7_DAYS@
    | QMDRLast90Days
      -- ^ @LAST_90_DAYS@
    | QMDRMonthToDate
      -- ^ @MONTH_TO_DATE@
    | QMDRPreviousDay
      -- ^ @PREVIOUS_DAY@
    | QMDRPreviousHalfMonth
      -- ^ @PREVIOUS_HALF_MONTH@
    | QMDRPreviousMonth
      -- ^ @PREVIOUS_MONTH@
    | QMDRPreviousQuarter
      -- ^ @PREVIOUS_QUARTER@
    | QMDRPreviousWeek
      -- ^ @PREVIOUS_WEEK@
    | QMDRPreviousYear
      -- ^ @PREVIOUS_YEAR@
    | QMDRQuarterToDate
      -- ^ @QUARTER_TO_DATE@
    | QMDRWeekToDate
      -- ^ @WEEK_TO_DATE@
    | QMDRYearToDate
      -- ^ @YEAR_TO_DATE@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable QueryMetadataDataRange

-- | Format of the generated report.
data QueryMetadataFormat
    = QMFCSV
      -- ^ @CSV@
    | QMFExcelCSV
      -- ^ @EXCEL_CSV@
    | QMFXlsx
      -- ^ @XLSX@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable QueryMetadataFormat

-- | How often the query is run.
data QueryScheduleFrequency
    = QSFDaily
      -- ^ @DAILY@
    | QSFMonthly
      -- ^ @MONTHLY@
    | QSFOneTime
      -- ^ @ONE_TIME@
    | QSFQuarterly
      -- ^ @QUARTERLY@
    | QSFSemiMonthly
      -- ^ @SEMI_MONTHLY@
    | QSFWeekly
      -- ^ @WEEKLY@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable QueryScheduleFrequency

-- | Error code that shows why the report was not created.
data ReportFailureErrorCode
    = RFECAuthenticationError
      -- ^ @AUTHENTICATION_ERROR@
    | RFECDeprecatedReportingInvalidQuery
      -- ^ @DEPRECATED_REPORTING_INVALID_QUERY@
    | RFECReportingBucketNotFound
      -- ^ @REPORTING_BUCKET_NOT_FOUND@
    | RFECReportingCreateBucketFailed
      -- ^ @REPORTING_CREATE_BUCKET_FAILED@
    | RFECReportingDeleteBucketFailed
      -- ^ @REPORTING_DELETE_BUCKET_FAILED@
    | RFECReportingFatalError
      -- ^ @REPORTING_FATAL_ERROR@
    | RFECReportingIllegalFilename
      -- ^ @REPORTING_ILLEGAL_FILENAME@
    | RFECReportingImcompatibleMetrics
      -- ^ @REPORTING_IMCOMPATIBLE_METRICS@
    | RFECReportingInvalidQueryMissingPartnerAndAdvertiserFilters
      -- ^ @REPORTING_INVALID_QUERY_MISSING_PARTNER_AND_ADVERTISER_FILTERS@
    | RFECReportingInvalidQueryTitleMissing
      -- ^ @REPORTING_INVALID_QUERY_TITLE_MISSING@
    | RFECReportingInvalidQueryTooManyUnfilteredLargeGroupBys
      -- ^ @REPORTING_INVALID_QUERY_TOO_MANY_UNFILTERED_LARGE_GROUP_BYS@
    | RFECReportingQueryNotFound
      -- ^ @REPORTING_QUERY_NOT_FOUND@
    | RFECReportingTransientError
      -- ^ @REPORTING_TRANSIENT_ERROR@
    | RFECReportingUpdateBucketPermissionFailed
      -- ^ @REPORTING_UPDATE_BUCKET_PERMISSION_FAILED@
    | RFECReportingWriteBucketObjectFailed
      -- ^ @REPORTING_WRITE_BUCKET_OBJECT_FAILED@
    | RFECServerError
      -- ^ @SERVER_ERROR@
    | RFECUnauthorizedAPIAccess
      -- ^ @UNAUTHORIZED_API_ACCESS@
    | RFECValidationError
      -- ^ @VALIDATION_ERROR@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable ReportFailureErrorCode

-- | The file type of the report.
data ReportStatusFormat
    = RSFCSV
      -- ^ @CSV@
    | RSFExcelCSV
      -- ^ @EXCEL_CSV@
    | RSFXlsx
      -- ^ @XLSX@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable ReportStatusFormat

-- | The state of the report.
data ReportStatusState
    = RSSDone
      -- ^ @DONE@
    | RSSFailed
      -- ^ @FAILED@
    | RSSRunning
      -- ^ @RUNNING@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable ReportStatusState

-- | Report data range used to generate the report.
data RunQueryRequestDataRange
    = RQRDRAllTime
      -- ^ @ALL_TIME@
    | RQRDRCurrentDay
      -- ^ @CURRENT_DAY@
    | RQRDRCustomDates
      -- ^ @CUSTOM_DATES@
    | RQRDRLast14Days
      -- ^ @LAST_14_DAYS@
    | RQRDRLast30Days
      -- ^ @LAST_30_DAYS@
    | RQRDRLast365Days
      -- ^ @LAST_365_DAYS@
    | RQRDRLast7Days
      -- ^ @LAST_7_DAYS@
    | RQRDRLast90Days
      -- ^ @LAST_90_DAYS@
    | RQRDRMonthToDate
      -- ^ @MONTH_TO_DATE@
    | RQRDRPreviousDay
      -- ^ @PREVIOUS_DAY@
    | RQRDRPreviousHalfMonth
      -- ^ @PREVIOUS_HALF_MONTH@
    | RQRDRPreviousMonth
      -- ^ @PREVIOUS_MONTH@
    | RQRDRPreviousQuarter
      -- ^ @PREVIOUS_QUARTER@
    | RQRDRPreviousWeek
      -- ^ @PREVIOUS_WEEK@
    | RQRDRPreviousYear
      -- ^ @PREVIOUS_YEAR@
    | RQRDRQuarterToDate
      -- ^ @QUARTER_TO_DATE@
    | RQRDRWeekToDate
      -- ^ @WEEK_TO_DATE@
    | RQRDRYearToDate
      -- ^ @YEAR_TO_DATE@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable RunQueryRequestDataRange

-- | Format the line items are in. Default to CSV.
data UploadLineItemsRequestFormat
    = ULIRFCSV
      -- ^ @CSV@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable UploadLineItemsRequestFormat
