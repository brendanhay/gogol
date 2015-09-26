{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

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

instance FromText DownloadLineItemsRequestFilterType where
    fromText = \case
        "ADVERTISER_ID" -> Just DLIRFTAdvertiserId
        "INSERTION_ORDER_ID" -> Just DLIRFTInsertionOrderId
        "LINE_ITEM_ID" -> Just DLIRFTLineItemId
        _ -> Nothing

instance ToText DownloadLineItemsRequestFilterType where
    toText = \case
        DLIRFTAdvertiserId -> "ADVERTISER_ID"
        DLIRFTInsertionOrderId -> "INSERTION_ORDER_ID"
        DLIRFTLineItemId -> "LINE_ITEM_ID"

-- | Format in which the line items will be returned. Default to CSV.
data DownloadLineItemsRequestFormat
    = DLIRFCSV
      -- ^ @CSV@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable DownloadLineItemsRequestFormat

instance FromText DownloadLineItemsRequestFormat where
    fromText = \case
        "CSV" -> Just DLIRFCSV
        _ -> Nothing

instance ToText DownloadLineItemsRequestFormat where
    toText = \case
        DLIRFCSV -> "CSV"

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

instance FromText FilterPairType where
    fromText = \case
        "FILTER_ACTIVE_VIEW_EXPECTED_VIEWABILITY" -> Just FPTFilterActiveViewExpectedViewability
        "FILTER_ACTIVITY_ID" -> Just FPTFilterActivityId
        "FILTER_ADVERTISER" -> Just FPTFilterAdvertiser
        "FILTER_ADVERTISER_CURRENCY" -> Just FPTFilterAdvertiserCurrency
        "FILTER_ADVERTISER_TIMEZONE" -> Just FPTFilterAdvertiserTimezone
        "FILTER_AD_POSITION" -> Just FPTFilterAdPosition
        "FILTER_AGE" -> Just FPTFilterAge
        "FILTER_BRANDSAFE_CHANNEL_ID" -> Just FPTFilterBrandsafeChannelId
        "FILTER_BROWSER" -> Just FPTFilterBrowser
        "FILTER_CAMPAIGN_DAILY_FREQUENCY" -> Just FPTFilterCampaignDailyFrequency
        "FILTER_CARRIER" -> Just FPTFilterCarrier
        "FILTER_CHANNEL_ID" -> Just FPTFilterChannelId
        "FILTER_CITY" -> Just FPTFilterCity
        "FILTER_CONVERSION_DELAY" -> Just FPTFilterConversionDelay
        "FILTER_COUNTRY" -> Just FPTFilterCountry
        "FILTER_CREATIVE_ID" -> Just FPTFilterCreativeId
        "FILTER_CREATIVE_SIZE" -> Just FPTFilterCreativeSize
        "FILTER_CREATIVE_TYPE" -> Just FPTFilterCreativeType
        "FILTER_DATA_PROVIDER" -> Just FPTFilterDataProvider
        "FILTER_DATE" -> Just FPTFilterDate
        "FILTER_DAY_OF_WEEK" -> Just FPTFilterDayOfWeek
        "FILTER_DMA" -> Just FPTFilterDma
        "FILTER_EXCHANGE_ID" -> Just FPTFilterExchangeId
        "FILTER_FLOODLIGHT_PIXEL_ID" -> Just FPTFilterFloodlightPixelId
        "FILTER_GENDER" -> Just FPTFilterGender
        "FILTER_INSERTION_ORDER" -> Just FPTFilterInsertionOrder
        "FILTER_INVENTORY_FORMAT" -> Just FPTFilterInventoryFormat
        "FILTER_INVENTORY_SOURCE" -> Just FPTFilterInventorySource
        "FILTER_INVENTORY_SOURCE_TYPE" -> Just FPTFilterInventorySourceType
        "FILTER_KEYWORD" -> Just FPTFilterKeyword
        "FILTER_LINE_ITEM" -> Just FPTFilterLineItem
        "FILTER_LINE_ITEM_DAILY_FREQUENCY" -> Just FPTFilterLineItemDailyFrequency
        "FILTER_LINE_ITEM_LIFETIME_FREQUENCY" -> Just FPTFilterLineItemLifetimeFrequency
        "FILTER_LINE_ITEM_TYPE" -> Just FPTFilterLineItemType
        "FILTER_MOBILE_DEVICE_MAKE" -> Just FPTFilterMobileDeviceMake
        "FILTER_MOBILE_DEVICE_MAKE_MODEL" -> Just FPTFilterMobileDeviceMakeModel
        "FILTER_MOBILE_DEVICE_TYPE" -> Just FPTFilterMobileDeviceType
        "FILTER_MOBILE_GEO" -> Just FPTFilterMobileGeo
        "FILTER_MONTH" -> Just FPTFilterMonth
        "FILTER_MRAID_SUPPORT" -> Just FPTFilterMraidSupport
        "FILTER_NIELSEN_AGE" -> Just FPTFilterNielsenAge
        "FILTER_NIELSEN_COUNTRY_CODE" -> Just FPTFilterNielsenCountryCode
        "FILTER_NIELSEN_DEVICE_ID" -> Just FPTFilterNielsenDeviceId
        "FILTER_NIELSEN_GENDER" -> Just FPTFilterNielsenGender
        "FILTER_ORDER_ID" -> Just FPTFilterOrderId
        "FILTER_OS" -> Just FPTFilterOs
        "FILTER_PAGE_CATEGORY" -> Just FPTFilterPageCategory
        "FILTER_PAGE_LAYOUT" -> Just FPTFilterPageLayout
        "FILTER_PARTNER" -> Just FPTFilterPartner
        "FILTER_PARTNER_CURRENCY" -> Just FPTFilterPartnerCurrency
        "FILTER_PUBLIC_INVENTORY" -> Just FPTFilterPublicInventory
        "FILTER_QUARTER" -> Just FPTFilterQuarter
        "FILTER_REGION" -> Just FPTFilterRegion
        "FILTER_REGULAR_CHANNEL_ID" -> Just FPTFilterRegularChannelId
        "FILTER_SITE_ID" -> Just FPTFilterSiteId
        "FILTER_SITE_LANGUAGE" -> Just FPTFilterSiteLanguage
        "FILTER_TARGETED_USER_LIST" -> Just FPTFilterTargetedUserList
        "FILTER_TIME_OF_DAY" -> Just FPTFilterTimeOfDay
        "FILTER_TRUEVIEW_CONVERSION_TYPE" -> Just FPTFilterTrueviewConversionType
        "FILTER_UNKNOWN" -> Just FPTFilterUnknown
        "FILTER_USER_LIST" -> Just FPTFilterUserList
        "FILTER_USER_LIST_FIRST_PARTY" -> Just FPTFilterUserListFirstParty
        "FILTER_USER_LIST_THIRD_PARTY" -> Just FPTFilterUserListThirdParty
        "FILTER_VIDEO_AD_POSITION_IN_STREAM" -> Just FPTFilterVideoAdPositionInStream
        "FILTER_VIDEO_COMPANION_SIZE" -> Just FPTFilterVideoCompanionSize
        "FILTER_VIDEO_COMPANION_TYPE" -> Just FPTFilterVideoCompanionType
        "FILTER_VIDEO_CREATIVE_DURATION" -> Just FPTFilterVideoCreativeDuration
        "FILTER_VIDEO_CREATIVE_DURATION_SKIPPABLE" -> Just FPTFilterVideoCreativeDurationSkippable
        "FILTER_VIDEO_DURATION_SECONDS" -> Just FPTFilterVideoDurationSeconds
        "FILTER_VIDEO_FORMAT_SUPPORT" -> Just FPTFilterVideoFormatSupport
        "FILTER_VIDEO_INVENTORY_TYPE" -> Just FPTFilterVideoInventoryType
        "FILTER_VIDEO_PLAYER_SIZE" -> Just FPTFilterVideoPlayerSize
        "FILTER_VIDEO_RATING_TIER" -> Just FPTFilterVideoRatingTier
        "FILTER_VIDEO_SKIPPABLE_SUPPORT" -> Just FPTFilterVideoSkippableSupport
        "FILTER_VIDEO_VPAID_SUPPORT" -> Just FPTFilterVideoVpaidSupport
        "FILTER_WEEK" -> Just FPTFilterWeek
        "FILTER_YEAR" -> Just FPTFilterYear
        "FILTER_YOUTUBE_VERTICAL" -> Just FPTFilterYoutubeVertical
        "FILTER_ZIP_CODE" -> Just FPTFilterZipCode
        _ -> Nothing

instance ToText FilterPairType where
    toText = \case
        FPTFilterActiveViewExpectedViewability -> "FILTER_ACTIVE_VIEW_EXPECTED_VIEWABILITY"
        FPTFilterActivityId -> "FILTER_ACTIVITY_ID"
        FPTFilterAdvertiser -> "FILTER_ADVERTISER"
        FPTFilterAdvertiserCurrency -> "FILTER_ADVERTISER_CURRENCY"
        FPTFilterAdvertiserTimezone -> "FILTER_ADVERTISER_TIMEZONE"
        FPTFilterAdPosition -> "FILTER_AD_POSITION"
        FPTFilterAge -> "FILTER_AGE"
        FPTFilterBrandsafeChannelId -> "FILTER_BRANDSAFE_CHANNEL_ID"
        FPTFilterBrowser -> "FILTER_BROWSER"
        FPTFilterCampaignDailyFrequency -> "FILTER_CAMPAIGN_DAILY_FREQUENCY"
        FPTFilterCarrier -> "FILTER_CARRIER"
        FPTFilterChannelId -> "FILTER_CHANNEL_ID"
        FPTFilterCity -> "FILTER_CITY"
        FPTFilterConversionDelay -> "FILTER_CONVERSION_DELAY"
        FPTFilterCountry -> "FILTER_COUNTRY"
        FPTFilterCreativeId -> "FILTER_CREATIVE_ID"
        FPTFilterCreativeSize -> "FILTER_CREATIVE_SIZE"
        FPTFilterCreativeType -> "FILTER_CREATIVE_TYPE"
        FPTFilterDataProvider -> "FILTER_DATA_PROVIDER"
        FPTFilterDate -> "FILTER_DATE"
        FPTFilterDayOfWeek -> "FILTER_DAY_OF_WEEK"
        FPTFilterDma -> "FILTER_DMA"
        FPTFilterExchangeId -> "FILTER_EXCHANGE_ID"
        FPTFilterFloodlightPixelId -> "FILTER_FLOODLIGHT_PIXEL_ID"
        FPTFilterGender -> "FILTER_GENDER"
        FPTFilterInsertionOrder -> "FILTER_INSERTION_ORDER"
        FPTFilterInventoryFormat -> "FILTER_INVENTORY_FORMAT"
        FPTFilterInventorySource -> "FILTER_INVENTORY_SOURCE"
        FPTFilterInventorySourceType -> "FILTER_INVENTORY_SOURCE_TYPE"
        FPTFilterKeyword -> "FILTER_KEYWORD"
        FPTFilterLineItem -> "FILTER_LINE_ITEM"
        FPTFilterLineItemDailyFrequency -> "FILTER_LINE_ITEM_DAILY_FREQUENCY"
        FPTFilterLineItemLifetimeFrequency -> "FILTER_LINE_ITEM_LIFETIME_FREQUENCY"
        FPTFilterLineItemType -> "FILTER_LINE_ITEM_TYPE"
        FPTFilterMobileDeviceMake -> "FILTER_MOBILE_DEVICE_MAKE"
        FPTFilterMobileDeviceMakeModel -> "FILTER_MOBILE_DEVICE_MAKE_MODEL"
        FPTFilterMobileDeviceType -> "FILTER_MOBILE_DEVICE_TYPE"
        FPTFilterMobileGeo -> "FILTER_MOBILE_GEO"
        FPTFilterMonth -> "FILTER_MONTH"
        FPTFilterMraidSupport -> "FILTER_MRAID_SUPPORT"
        FPTFilterNielsenAge -> "FILTER_NIELSEN_AGE"
        FPTFilterNielsenCountryCode -> "FILTER_NIELSEN_COUNTRY_CODE"
        FPTFilterNielsenDeviceId -> "FILTER_NIELSEN_DEVICE_ID"
        FPTFilterNielsenGender -> "FILTER_NIELSEN_GENDER"
        FPTFilterOrderId -> "FILTER_ORDER_ID"
        FPTFilterOs -> "FILTER_OS"
        FPTFilterPageCategory -> "FILTER_PAGE_CATEGORY"
        FPTFilterPageLayout -> "FILTER_PAGE_LAYOUT"
        FPTFilterPartner -> "FILTER_PARTNER"
        FPTFilterPartnerCurrency -> "FILTER_PARTNER_CURRENCY"
        FPTFilterPublicInventory -> "FILTER_PUBLIC_INVENTORY"
        FPTFilterQuarter -> "FILTER_QUARTER"
        FPTFilterRegion -> "FILTER_REGION"
        FPTFilterRegularChannelId -> "FILTER_REGULAR_CHANNEL_ID"
        FPTFilterSiteId -> "FILTER_SITE_ID"
        FPTFilterSiteLanguage -> "FILTER_SITE_LANGUAGE"
        FPTFilterTargetedUserList -> "FILTER_TARGETED_USER_LIST"
        FPTFilterTimeOfDay -> "FILTER_TIME_OF_DAY"
        FPTFilterTrueviewConversionType -> "FILTER_TRUEVIEW_CONVERSION_TYPE"
        FPTFilterUnknown -> "FILTER_UNKNOWN"
        FPTFilterUserList -> "FILTER_USER_LIST"
        FPTFilterUserListFirstParty -> "FILTER_USER_LIST_FIRST_PARTY"
        FPTFilterUserListThirdParty -> "FILTER_USER_LIST_THIRD_PARTY"
        FPTFilterVideoAdPositionInStream -> "FILTER_VIDEO_AD_POSITION_IN_STREAM"
        FPTFilterVideoCompanionSize -> "FILTER_VIDEO_COMPANION_SIZE"
        FPTFilterVideoCompanionType -> "FILTER_VIDEO_COMPANION_TYPE"
        FPTFilterVideoCreativeDuration -> "FILTER_VIDEO_CREATIVE_DURATION"
        FPTFilterVideoCreativeDurationSkippable -> "FILTER_VIDEO_CREATIVE_DURATION_SKIPPABLE"
        FPTFilterVideoDurationSeconds -> "FILTER_VIDEO_DURATION_SECONDS"
        FPTFilterVideoFormatSupport -> "FILTER_VIDEO_FORMAT_SUPPORT"
        FPTFilterVideoInventoryType -> "FILTER_VIDEO_INVENTORY_TYPE"
        FPTFilterVideoPlayerSize -> "FILTER_VIDEO_PLAYER_SIZE"
        FPTFilterVideoRatingTier -> "FILTER_VIDEO_RATING_TIER"
        FPTFilterVideoSkippableSupport -> "FILTER_VIDEO_SKIPPABLE_SUPPORT"
        FPTFilterVideoVpaidSupport -> "FILTER_VIDEO_VPAID_SUPPORT"
        FPTFilterWeek -> "FILTER_WEEK"
        FPTFilterYear -> "FILTER_YEAR"
        FPTFilterYoutubeVertical -> "FILTER_YOUTUBE_VERTICAL"
        FPTFilterZipCode -> "FILTER_ZIP_CODE"

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

instance FromText ParametersItemGroupBys where
    fromText = \case
        "FILTER_ACTIVE_VIEW_EXPECTED_VIEWABILITY" -> Just PIGBFilterActiveViewExpectedViewability
        "FILTER_ACTIVITY_ID" -> Just PIGBFilterActivityId
        "FILTER_ADVERTISER" -> Just PIGBFilterAdvertiser
        "FILTER_ADVERTISER_CURRENCY" -> Just PIGBFilterAdvertiserCurrency
        "FILTER_ADVERTISER_TIMEZONE" -> Just PIGBFilterAdvertiserTimezone
        "FILTER_AD_POSITION" -> Just PIGBFilterAdPosition
        "FILTER_AGE" -> Just PIGBFilterAge
        "FILTER_BRANDSAFE_CHANNEL_ID" -> Just PIGBFilterBrandsafeChannelId
        "FILTER_BROWSER" -> Just PIGBFilterBrowser
        "FILTER_CAMPAIGN_DAILY_FREQUENCY" -> Just PIGBFilterCampaignDailyFrequency
        "FILTER_CARRIER" -> Just PIGBFilterCarrier
        "FILTER_CHANNEL_ID" -> Just PIGBFilterChannelId
        "FILTER_CITY" -> Just PIGBFilterCity
        "FILTER_CONVERSION_DELAY" -> Just PIGBFilterConversionDelay
        "FILTER_COUNTRY" -> Just PIGBFilterCountry
        "FILTER_CREATIVE_ID" -> Just PIGBFilterCreativeId
        "FILTER_CREATIVE_SIZE" -> Just PIGBFilterCreativeSize
        "FILTER_CREATIVE_TYPE" -> Just PIGBFilterCreativeType
        "FILTER_DATA_PROVIDER" -> Just PIGBFilterDataProvider
        "FILTER_DATE" -> Just PIGBFilterDate
        "FILTER_DAY_OF_WEEK" -> Just PIGBFilterDayOfWeek
        "FILTER_DMA" -> Just PIGBFilterDma
        "FILTER_EXCHANGE_ID" -> Just PIGBFilterExchangeId
        "FILTER_FLOODLIGHT_PIXEL_ID" -> Just PIGBFilterFloodlightPixelId
        "FILTER_GENDER" -> Just PIGBFilterGender
        "FILTER_INSERTION_ORDER" -> Just PIGBFilterInsertionOrder
        "FILTER_INVENTORY_FORMAT" -> Just PIGBFilterInventoryFormat
        "FILTER_INVENTORY_SOURCE" -> Just PIGBFilterInventorySource
        "FILTER_INVENTORY_SOURCE_TYPE" -> Just PIGBFilterInventorySourceType
        "FILTER_KEYWORD" -> Just PIGBFilterKeyword
        "FILTER_LINE_ITEM" -> Just PIGBFilterLineItem
        "FILTER_LINE_ITEM_DAILY_FREQUENCY" -> Just PIGBFilterLineItemDailyFrequency
        "FILTER_LINE_ITEM_LIFETIME_FREQUENCY" -> Just PIGBFilterLineItemLifetimeFrequency
        "FILTER_LINE_ITEM_TYPE" -> Just PIGBFilterLineItemType
        "FILTER_MOBILE_DEVICE_MAKE" -> Just PIGBFilterMobileDeviceMake
        "FILTER_MOBILE_DEVICE_MAKE_MODEL" -> Just PIGBFilterMobileDeviceMakeModel
        "FILTER_MOBILE_DEVICE_TYPE" -> Just PIGBFilterMobileDeviceType
        "FILTER_MOBILE_GEO" -> Just PIGBFilterMobileGeo
        "FILTER_MONTH" -> Just PIGBFilterMonth
        "FILTER_MRAID_SUPPORT" -> Just PIGBFilterMraidSupport
        "FILTER_NIELSEN_AGE" -> Just PIGBFilterNielsenAge
        "FILTER_NIELSEN_COUNTRY_CODE" -> Just PIGBFilterNielsenCountryCode
        "FILTER_NIELSEN_DEVICE_ID" -> Just PIGBFilterNielsenDeviceId
        "FILTER_NIELSEN_GENDER" -> Just PIGBFilterNielsenGender
        "FILTER_ORDER_ID" -> Just PIGBFilterOrderId
        "FILTER_OS" -> Just PIGBFilterOs
        "FILTER_PAGE_CATEGORY" -> Just PIGBFilterPageCategory
        "FILTER_PAGE_LAYOUT" -> Just PIGBFilterPageLayout
        "FILTER_PARTNER" -> Just PIGBFilterPartner
        "FILTER_PARTNER_CURRENCY" -> Just PIGBFilterPartnerCurrency
        "FILTER_PUBLIC_INVENTORY" -> Just PIGBFilterPublicInventory
        "FILTER_QUARTER" -> Just PIGBFilterQuarter
        "FILTER_REGION" -> Just PIGBFilterRegion
        "FILTER_REGULAR_CHANNEL_ID" -> Just PIGBFilterRegularChannelId
        "FILTER_SITE_ID" -> Just PIGBFilterSiteId
        "FILTER_SITE_LANGUAGE" -> Just PIGBFilterSiteLanguage
        "FILTER_TARGETED_USER_LIST" -> Just PIGBFilterTargetedUserList
        "FILTER_TIME_OF_DAY" -> Just PIGBFilterTimeOfDay
        "FILTER_TRUEVIEW_CONVERSION_TYPE" -> Just PIGBFilterTrueviewConversionType
        "FILTER_UNKNOWN" -> Just PIGBFilterUnknown
        "FILTER_USER_LIST" -> Just PIGBFilterUserList
        "FILTER_USER_LIST_FIRST_PARTY" -> Just PIGBFilterUserListFirstParty
        "FILTER_USER_LIST_THIRD_PARTY" -> Just PIGBFilterUserListThirdParty
        "FILTER_VIDEO_AD_POSITION_IN_STREAM" -> Just PIGBFilterVideoAdPositionInStream
        "FILTER_VIDEO_COMPANION_SIZE" -> Just PIGBFilterVideoCompanionSize
        "FILTER_VIDEO_COMPANION_TYPE" -> Just PIGBFilterVideoCompanionType
        "FILTER_VIDEO_CREATIVE_DURATION" -> Just PIGBFilterVideoCreativeDuration
        "FILTER_VIDEO_CREATIVE_DURATION_SKIPPABLE" -> Just PIGBFilterVideoCreativeDurationSkippable
        "FILTER_VIDEO_DURATION_SECONDS" -> Just PIGBFilterVideoDurationSeconds
        "FILTER_VIDEO_FORMAT_SUPPORT" -> Just PIGBFilterVideoFormatSupport
        "FILTER_VIDEO_INVENTORY_TYPE" -> Just PIGBFilterVideoInventoryType
        "FILTER_VIDEO_PLAYER_SIZE" -> Just PIGBFilterVideoPlayerSize
        "FILTER_VIDEO_RATING_TIER" -> Just PIGBFilterVideoRatingTier
        "FILTER_VIDEO_SKIPPABLE_SUPPORT" -> Just PIGBFilterVideoSkippableSupport
        "FILTER_VIDEO_VPAID_SUPPORT" -> Just PIGBFilterVideoVpaidSupport
        "FILTER_WEEK" -> Just PIGBFilterWeek
        "FILTER_YEAR" -> Just PIGBFilterYear
        "FILTER_YOUTUBE_VERTICAL" -> Just PIGBFilterYoutubeVertical
        "FILTER_ZIP_CODE" -> Just PIGBFilterZipCode
        _ -> Nothing

instance ToText ParametersItemGroupBys where
    toText = \case
        PIGBFilterActiveViewExpectedViewability -> "FILTER_ACTIVE_VIEW_EXPECTED_VIEWABILITY"
        PIGBFilterActivityId -> "FILTER_ACTIVITY_ID"
        PIGBFilterAdvertiser -> "FILTER_ADVERTISER"
        PIGBFilterAdvertiserCurrency -> "FILTER_ADVERTISER_CURRENCY"
        PIGBFilterAdvertiserTimezone -> "FILTER_ADVERTISER_TIMEZONE"
        PIGBFilterAdPosition -> "FILTER_AD_POSITION"
        PIGBFilterAge -> "FILTER_AGE"
        PIGBFilterBrandsafeChannelId -> "FILTER_BRANDSAFE_CHANNEL_ID"
        PIGBFilterBrowser -> "FILTER_BROWSER"
        PIGBFilterCampaignDailyFrequency -> "FILTER_CAMPAIGN_DAILY_FREQUENCY"
        PIGBFilterCarrier -> "FILTER_CARRIER"
        PIGBFilterChannelId -> "FILTER_CHANNEL_ID"
        PIGBFilterCity -> "FILTER_CITY"
        PIGBFilterConversionDelay -> "FILTER_CONVERSION_DELAY"
        PIGBFilterCountry -> "FILTER_COUNTRY"
        PIGBFilterCreativeId -> "FILTER_CREATIVE_ID"
        PIGBFilterCreativeSize -> "FILTER_CREATIVE_SIZE"
        PIGBFilterCreativeType -> "FILTER_CREATIVE_TYPE"
        PIGBFilterDataProvider -> "FILTER_DATA_PROVIDER"
        PIGBFilterDate -> "FILTER_DATE"
        PIGBFilterDayOfWeek -> "FILTER_DAY_OF_WEEK"
        PIGBFilterDma -> "FILTER_DMA"
        PIGBFilterExchangeId -> "FILTER_EXCHANGE_ID"
        PIGBFilterFloodlightPixelId -> "FILTER_FLOODLIGHT_PIXEL_ID"
        PIGBFilterGender -> "FILTER_GENDER"
        PIGBFilterInsertionOrder -> "FILTER_INSERTION_ORDER"
        PIGBFilterInventoryFormat -> "FILTER_INVENTORY_FORMAT"
        PIGBFilterInventorySource -> "FILTER_INVENTORY_SOURCE"
        PIGBFilterInventorySourceType -> "FILTER_INVENTORY_SOURCE_TYPE"
        PIGBFilterKeyword -> "FILTER_KEYWORD"
        PIGBFilterLineItem -> "FILTER_LINE_ITEM"
        PIGBFilterLineItemDailyFrequency -> "FILTER_LINE_ITEM_DAILY_FREQUENCY"
        PIGBFilterLineItemLifetimeFrequency -> "FILTER_LINE_ITEM_LIFETIME_FREQUENCY"
        PIGBFilterLineItemType -> "FILTER_LINE_ITEM_TYPE"
        PIGBFilterMobileDeviceMake -> "FILTER_MOBILE_DEVICE_MAKE"
        PIGBFilterMobileDeviceMakeModel -> "FILTER_MOBILE_DEVICE_MAKE_MODEL"
        PIGBFilterMobileDeviceType -> "FILTER_MOBILE_DEVICE_TYPE"
        PIGBFilterMobileGeo -> "FILTER_MOBILE_GEO"
        PIGBFilterMonth -> "FILTER_MONTH"
        PIGBFilterMraidSupport -> "FILTER_MRAID_SUPPORT"
        PIGBFilterNielsenAge -> "FILTER_NIELSEN_AGE"
        PIGBFilterNielsenCountryCode -> "FILTER_NIELSEN_COUNTRY_CODE"
        PIGBFilterNielsenDeviceId -> "FILTER_NIELSEN_DEVICE_ID"
        PIGBFilterNielsenGender -> "FILTER_NIELSEN_GENDER"
        PIGBFilterOrderId -> "FILTER_ORDER_ID"
        PIGBFilterOs -> "FILTER_OS"
        PIGBFilterPageCategory -> "FILTER_PAGE_CATEGORY"
        PIGBFilterPageLayout -> "FILTER_PAGE_LAYOUT"
        PIGBFilterPartner -> "FILTER_PARTNER"
        PIGBFilterPartnerCurrency -> "FILTER_PARTNER_CURRENCY"
        PIGBFilterPublicInventory -> "FILTER_PUBLIC_INVENTORY"
        PIGBFilterQuarter -> "FILTER_QUARTER"
        PIGBFilterRegion -> "FILTER_REGION"
        PIGBFilterRegularChannelId -> "FILTER_REGULAR_CHANNEL_ID"
        PIGBFilterSiteId -> "FILTER_SITE_ID"
        PIGBFilterSiteLanguage -> "FILTER_SITE_LANGUAGE"
        PIGBFilterTargetedUserList -> "FILTER_TARGETED_USER_LIST"
        PIGBFilterTimeOfDay -> "FILTER_TIME_OF_DAY"
        PIGBFilterTrueviewConversionType -> "FILTER_TRUEVIEW_CONVERSION_TYPE"
        PIGBFilterUnknown -> "FILTER_UNKNOWN"
        PIGBFilterUserList -> "FILTER_USER_LIST"
        PIGBFilterUserListFirstParty -> "FILTER_USER_LIST_FIRST_PARTY"
        PIGBFilterUserListThirdParty -> "FILTER_USER_LIST_THIRD_PARTY"
        PIGBFilterVideoAdPositionInStream -> "FILTER_VIDEO_AD_POSITION_IN_STREAM"
        PIGBFilterVideoCompanionSize -> "FILTER_VIDEO_COMPANION_SIZE"
        PIGBFilterVideoCompanionType -> "FILTER_VIDEO_COMPANION_TYPE"
        PIGBFilterVideoCreativeDuration -> "FILTER_VIDEO_CREATIVE_DURATION"
        PIGBFilterVideoCreativeDurationSkippable -> "FILTER_VIDEO_CREATIVE_DURATION_SKIPPABLE"
        PIGBFilterVideoDurationSeconds -> "FILTER_VIDEO_DURATION_SECONDS"
        PIGBFilterVideoFormatSupport -> "FILTER_VIDEO_FORMAT_SUPPORT"
        PIGBFilterVideoInventoryType -> "FILTER_VIDEO_INVENTORY_TYPE"
        PIGBFilterVideoPlayerSize -> "FILTER_VIDEO_PLAYER_SIZE"
        PIGBFilterVideoRatingTier -> "FILTER_VIDEO_RATING_TIER"
        PIGBFilterVideoSkippableSupport -> "FILTER_VIDEO_SKIPPABLE_SUPPORT"
        PIGBFilterVideoVpaidSupport -> "FILTER_VIDEO_VPAID_SUPPORT"
        PIGBFilterWeek -> "FILTER_WEEK"
        PIGBFilterYear -> "FILTER_YEAR"
        PIGBFilterYoutubeVertical -> "FILTER_YOUTUBE_VERTICAL"
        PIGBFilterZipCode -> "FILTER_ZIP_CODE"

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

instance FromText ParametersItemMetrics where
    fromText = \case
        "METRIC_BID_REQUESTS" -> Just PIMMetricBidRequests
        "METRIC_BILLABLE_COST_ADVERTISER" -> Just PIMMetricBillableCostAdvertiser
        "METRIC_BILLABLE_COST_PARTNER" -> Just PIMMetricBillableCostPartner
        "METRIC_BILLABLE_COST_USD" -> Just PIMMetricBillableCostUsd
        "METRIC_CLICKS" -> Just PIMMetricClicks
        "METRIC_CLICK_TO_POST_CLICK_CONVERSION_RATE" -> Just PIMMetricClickToPostClickConversionRate
        "METRIC_COMSCORE_VCE_AUDIENCE_AVG_FREQUENCY" -> Just PIMMetricComscoreVceAudienceAvgFrequency
        "METRIC_COMSCORE_VCE_AUDIENCE_IMPRESSIONS" -> Just PIMMetricComscoreVceAudienceImpressions
        "METRIC_COMSCORE_VCE_AUDIENCE_IMPRESSIONS_SHARE" -> Just PIMMetricComscoreVceAudienceImpressionsShare
        "METRIC_COMSCORE_VCE_AUDIENCE_REACH_PCT" -> Just PIMMetricComscoreVceAudienceReachPct
        "METRIC_COMSCORE_VCE_AUDIENCE_SHARE_PCT" -> Just PIMMetricComscoreVceAudienceSharePct
        "METRIC_COMSCORE_VCE_GROSS_RATING_POINTS" -> Just PIMMetricComscoreVceGrossRatingPoints
        "METRIC_COMSCORE_VCE_POPULATION" -> Just PIMMetricComscoreVcePopulation
        "METRIC_COMSCORE_VCE_UNIQUE_AUDIENCE" -> Just PIMMetricComscoreVceUniqueAudience
        "METRIC_CONVERSIONS_PER_MILLE" -> Just PIMMetricConversionsPerMille
        "METRIC_CPM_FEE1_ADVERTISER" -> Just PIMMetricCpmFEE1Advertiser
        "METRIC_CPM_FEE1_PARTNER" -> Just PIMMetricCpmFEE1Partner
        "METRIC_CPM_FEE1_USD" -> Just PIMMetricCpmFEE1Usd
        "METRIC_CPM_FEE2_ADVERTISER" -> Just PIMMetricCpmFEE2Advertiser
        "METRIC_CPM_FEE2_PARTNER" -> Just PIMMetricCpmFEE2Partner
        "METRIC_CPM_FEE2_USD" -> Just PIMMetricCpmFEE2Usd
        "METRIC_CPM_FEE3_ADVERTISER" -> Just PIMMetricCpmFEE3Advertiser
        "METRIC_CPM_FEE3_PARTNER" -> Just PIMMetricCpmFEE3Partner
        "METRIC_CPM_FEE3_USD" -> Just PIMMetricCpmFEE3Usd
        "METRIC_CPM_FEE4_ADVERTISER" -> Just PIMMetricCpmFEE4Advertiser
        "METRIC_CPM_FEE4_PARTNER" -> Just PIMMetricCpmFEE4Partner
        "METRIC_CPM_FEE4_USD" -> Just PIMMetricCpmFEE4Usd
        "METRIC_CPM_FEE5_ADVERTISER" -> Just PIMMetricCpmFEE5Advertiser
        "METRIC_CPM_FEE5_PARTNER" -> Just PIMMetricCpmFEE5Partner
        "METRIC_CPM_FEE5_USD" -> Just PIMMetricCpmFEE5Usd
        "METRIC_CTR" -> Just PIMMetricCtr
        "METRIC_DATA_COST_ADVERTISER" -> Just PIMMetricDataCostAdvertiser
        "METRIC_DATA_COST_PARTNER" -> Just PIMMetricDataCostPartner
        "METRIC_DATA_COST_USD" -> Just PIMMetricDataCostUsd
        "METRIC_FEE10_ADVERTISER" -> Just PIMMetricFEE10Advertiser
        "METRIC_FEE10_PARTNER" -> Just PIMMetricFEE10Partner
        "METRIC_FEE10_USD" -> Just PIMMetricFEE10Usd
        "METRIC_FEE11_ADVERTISER" -> Just PIMMetricFEE11Advertiser
        "METRIC_FEE11_PARTNER" -> Just PIMMetricFEE11Partner
        "METRIC_FEE11_USD" -> Just PIMMetricFEE11Usd
        "METRIC_FEE12_ADVERTISER" -> Just PIMMetricFEE12Advertiser
        "METRIC_FEE12_PARTNER" -> Just PIMMetricFEE12Partner
        "METRIC_FEE12_USD" -> Just PIMMetricFEE12Usd
        "METRIC_FEE13_ADVERTISER" -> Just PIMMetricFEE13Advertiser
        "METRIC_FEE13_PARTNER" -> Just PIMMetricFEE13Partner
        "METRIC_FEE13_USD" -> Just PIMMetricFEE13Usd
        "METRIC_FEE14_ADVERTISER" -> Just PIMMetricFEE14Advertiser
        "METRIC_FEE14_PARTNER" -> Just PIMMetricFEE14Partner
        "METRIC_FEE14_USD" -> Just PIMMetricFEE14Usd
        "METRIC_FEE15_ADVERTISER" -> Just PIMMetricFEE15Advertiser
        "METRIC_FEE15_PARTNER" -> Just PIMMetricFEE15Partner
        "METRIC_FEE15_USD" -> Just PIMMetricFEE15Usd
        "METRIC_FEE16_ADVERTISER" -> Just PIMMetricFEE16Advertiser
        "METRIC_FEE16_PARTNER" -> Just PIMMetricFEE16Partner
        "METRIC_FEE16_USD" -> Just PIMMetricFEE16Usd
        "METRIC_FEE17_ADVERTISER" -> Just PIMMetricFEE17Advertiser
        "METRIC_FEE17_PARTNER" -> Just PIMMetricFEE17Partner
        "METRIC_FEE17_USD" -> Just PIMMetricFEE17Usd
        "METRIC_FEE18_ADVERTISER" -> Just PIMMetricFEE18Advertiser
        "METRIC_FEE18_PARTNER" -> Just PIMMetricFEE18Partner
        "METRIC_FEE18_USD" -> Just PIMMetricFEE18Usd
        "METRIC_FEE19_ADVERTISER" -> Just PIMMetricFEE19Advertiser
        "METRIC_FEE19_PARTNER" -> Just PIMMetricFEE19Partner
        "METRIC_FEE19_USD" -> Just PIMMetricFEE19Usd
        "METRIC_FEE20_ADVERTISER" -> Just PIMMetricFEE20Advertiser
        "METRIC_FEE20_PARTNER" -> Just PIMMetricFEE20Partner
        "METRIC_FEE20_USD" -> Just PIMMetricFEE20Usd
        "METRIC_FEE2_ADVERTISER" -> Just PIMMetricFEE2Advertiser
        "METRIC_FEE2_PARTNER" -> Just PIMMetricFEE2Partner
        "METRIC_FEE2_USD" -> Just PIMMetricFEE2Usd
        "METRIC_FEE3_ADVERTISER" -> Just PIMMetricFEE3Advertiser
        "METRIC_FEE3_PARTNER" -> Just PIMMetricFEE3Partner
        "METRIC_FEE3_USD" -> Just PIMMetricFEE3Usd
        "METRIC_FEE4_ADVERTISER" -> Just PIMMetricFEE4Advertiser
        "METRIC_FEE4_PARTNER" -> Just PIMMetricFEE4Partner
        "METRIC_FEE4_USD" -> Just PIMMetricFEE4Usd
        "METRIC_FEE5_ADVERTISER" -> Just PIMMetricFEE5Advertiser
        "METRIC_FEE5_PARTNER" -> Just PIMMetricFEE5Partner
        "METRIC_FEE5_USD" -> Just PIMMetricFEE5Usd
        "METRIC_FEE6_ADVERTISER" -> Just PIMMetricFEE6Advertiser
        "METRIC_FEE6_PARTNER" -> Just PIMMetricFEE6Partner
        "METRIC_FEE6_USD" -> Just PIMMetricFEE6Usd
        "METRIC_FEE7_ADVERTISER" -> Just PIMMetricFEE7Advertiser
        "METRIC_FEE7_PARTNER" -> Just PIMMetricFEE7Partner
        "METRIC_FEE7_USD" -> Just PIMMetricFEE7Usd
        "METRIC_FEE8_ADVERTISER" -> Just PIMMetricFEE8Advertiser
        "METRIC_FEE8_PARTNER" -> Just PIMMetricFEE8Partner
        "METRIC_FEE8_USD" -> Just PIMMetricFEE8Usd
        "METRIC_FEE9_ADVERTISER" -> Just PIMMetricFEE9Advertiser
        "METRIC_FEE9_PARTNER" -> Just PIMMetricFEE9Partner
        "METRIC_FEE9_USD" -> Just PIMMetricFEE9Usd
        "METRIC_IMPRESSIONS" -> Just PIMMetricImpressions
        "METRIC_IMPRESSIONS_TO_CONVERSION_RATE" -> Just PIMMetricImpressionsToConversionRate
        "METRIC_LAST_CLICKS" -> Just PIMMetricLastClicks
        "METRIC_LAST_IMPRESSIONS" -> Just PIMMetricLastImpressions
        "METRIC_MEDIA_COST_ADVERTISER" -> Just PIMMetricMediaCostAdvertiser
        "METRIC_MEDIA_COST_ECPAPC_ADVERTISER" -> Just PIMMetricMediaCostEcpapcAdvertiser
        "METRIC_MEDIA_COST_ECPAPC_PARTNER" -> Just PIMMetricMediaCostEcpapcPartner
        "METRIC_MEDIA_COST_ECPAPC_USD" -> Just PIMMetricMediaCostEcpapcUsd
        "METRIC_MEDIA_COST_ECPAPV_ADVERTISER" -> Just PIMMetricMediaCostEcpapvAdvertiser
        "METRIC_MEDIA_COST_ECPAPV_PARTNER" -> Just PIMMetricMediaCostEcpapvPartner
        "METRIC_MEDIA_COST_ECPAPV_USD" -> Just PIMMetricMediaCostEcpapvUsd
        "METRIC_MEDIA_COST_ECPA_ADVERTISER" -> Just PIMMetricMediaCostEcpaAdvertiser
        "METRIC_MEDIA_COST_ECPA_PARTNER" -> Just PIMMetricMediaCostEcpaPartner
        "METRIC_MEDIA_COST_ECPA_USD" -> Just PIMMetricMediaCostEcpaUsd
        "METRIC_MEDIA_COST_ECPCV_ADVERTISER" -> Just PIMMetricMediaCostEcpcvAdvertiser
        "METRIC_MEDIA_COST_ECPCV_PARTNER" -> Just PIMMetricMediaCostEcpcvPartner
        "METRIC_MEDIA_COST_ECPCV_USD" -> Just PIMMetricMediaCostEcpcvUsd
        "METRIC_MEDIA_COST_ECPC_ADVERTISER" -> Just PIMMetricMediaCostEcpcAdvertiser
        "METRIC_MEDIA_COST_ECPC_PARTNER" -> Just PIMMetricMediaCostEcpcPartner
        "METRIC_MEDIA_COST_ECPC_USD" -> Just PIMMetricMediaCostEcpcUsd
        "METRIC_MEDIA_COST_ECPM_ADVERTISER" -> Just PIMMetricMediaCostEcpmAdvertiser
        "METRIC_MEDIA_COST_ECPM_PARTNER" -> Just PIMMetricMediaCostEcpmPartner
        "METRIC_MEDIA_COST_ECPM_USD" -> Just PIMMetricMediaCostEcpmUsd
        "METRIC_MEDIA_COST_PARTNER" -> Just PIMMetricMediaCostPartner
        "METRIC_MEDIA_COST_USD" -> Just PIMMetricMediaCostUsd
        "METRIC_MEDIA_FEE1_ADVERTISER" -> Just PIMMetricMediaFEE1Advertiser
        "METRIC_MEDIA_FEE1_PARTNER" -> Just PIMMetricMediaFEE1Partner
        "METRIC_MEDIA_FEE1_USD" -> Just PIMMetricMediaFEE1Usd
        "METRIC_MEDIA_FEE2_ADVERTISER" -> Just PIMMetricMediaFEE2Advertiser
        "METRIC_MEDIA_FEE2_PARTNER" -> Just PIMMetricMediaFEE2Partner
        "METRIC_MEDIA_FEE2_USD" -> Just PIMMetricMediaFEE2Usd
        "METRIC_MEDIA_FEE3_ADVERTISER" -> Just PIMMetricMediaFEE3Advertiser
        "METRIC_MEDIA_FEE3_PARTNER" -> Just PIMMetricMediaFEE3Partner
        "METRIC_MEDIA_FEE3_USD" -> Just PIMMetricMediaFEE3Usd
        "METRIC_MEDIA_FEE4_ADVERTISER" -> Just PIMMetricMediaFEE4Advertiser
        "METRIC_MEDIA_FEE4_PARTNER" -> Just PIMMetricMediaFEE4Partner
        "METRIC_MEDIA_FEE4_USD" -> Just PIMMetricMediaFEE4Usd
        "METRIC_MEDIA_FEE5_ADVERTISER" -> Just PIMMetricMediaFEE5Advertiser
        "METRIC_MEDIA_FEE5_PARTNER" -> Just PIMMetricMediaFEE5Partner
        "METRIC_MEDIA_FEE5_USD" -> Just PIMMetricMediaFEE5Usd
        "METRIC_PIXEL_LOADS" -> Just PIMMetricPixelLoads
        "METRIC_PLATFORM_FEE_ADVERTISER" -> Just PIMMetricPlatformFeeAdvertiser
        "METRIC_PLATFORM_FEE_PARTNER" -> Just PIMMetricPlatformFeePartner
        "METRIC_PLATFORM_FEE_USD" -> Just PIMMetricPlatformFeeUsd
        "METRIC_POST_CLICK_DFA_REVENUE" -> Just PIMMetricPostClickDfaRevenue
        "METRIC_POST_VIEW_DFA_REVENUE" -> Just PIMMetricPostViewDfaRevenue
        "METRIC_PROFIT_ADVERTISER" -> Just PIMMetricProfitAdvertiser
        "METRIC_PROFIT_ECPAPC_ADVERTISER" -> Just PIMMetricProfitEcpapcAdvertiser
        "METRIC_PROFIT_ECPAPC_PARTNER" -> Just PIMMetricProfitEcpapcPartner
        "METRIC_PROFIT_ECPAPC_USD" -> Just PIMMetricProfitEcpapcUsd
        "METRIC_PROFIT_ECPAPV_ADVERTISER" -> Just PIMMetricProfitEcpapvAdvertiser
        "METRIC_PROFIT_ECPAPV_PARTNER" -> Just PIMMetricProfitEcpapvPartner
        "METRIC_PROFIT_ECPAPV_USD" -> Just PIMMetricProfitEcpapvUsd
        "METRIC_PROFIT_ECPA_ADVERTISER" -> Just PIMMetricProfitEcpaAdvertiser
        "METRIC_PROFIT_ECPA_PARTNER" -> Just PIMMetricProfitEcpaPartner
        "METRIC_PROFIT_ECPA_USD" -> Just PIMMetricProfitEcpaUsd
        "METRIC_PROFIT_ECPC_ADVERTISER" -> Just PIMMetricProfitEcpcAdvertiser
        "METRIC_PROFIT_ECPC_PARTNER" -> Just PIMMetricProfitEcpcPartner
        "METRIC_PROFIT_ECPC_USD" -> Just PIMMetricProfitEcpcUsd
        "METRIC_PROFIT_ECPM_ADVERTISER" -> Just PIMMetricProfitEcpmAdvertiser
        "METRIC_PROFIT_ECPM_PARTNER" -> Just PIMMetricProfitEcpmPartner
        "METRIC_PROFIT_ECPM_USD" -> Just PIMMetricProfitEcpmUsd
        "METRIC_PROFIT_MARGIN" -> Just PIMMetricProfitMargin
        "METRIC_PROFIT_PARTNER" -> Just PIMMetricProfitPartner
        "METRIC_PROFIT_USD" -> Just PIMMetricProfitUsd
        "METRIC_REVENUE_ADVERTISER" -> Just PIMMetricRevenueAdvertiser
        "METRIC_REVENUE_ECPAPC_ADVERTISER" -> Just PIMMetricRevenueEcpapcAdvertiser
        "METRIC_REVENUE_ECPAPC_PARTNER" -> Just PIMMetricRevenueEcpapcPartner
        "METRIC_REVENUE_ECPAPC_USD" -> Just PIMMetricRevenueEcpapcUsd
        "METRIC_REVENUE_ECPAPV_ADVERTISER" -> Just PIMMetricRevenueEcpapvAdvertiser
        "METRIC_REVENUE_ECPAPV_PARTNER" -> Just PIMMetricRevenueEcpapvPartner
        "METRIC_REVENUE_ECPAPV_USD" -> Just PIMMetricRevenueEcpapvUsd
        "METRIC_REVENUE_ECPA_ADVERTISER" -> Just PIMMetricRevenueEcpaAdvertiser
        "METRIC_REVENUE_ECPA_PARTNER" -> Just PIMMetricRevenueEcpaPartner
        "METRIC_REVENUE_ECPA_USD" -> Just PIMMetricRevenueEcpaUsd
        "METRIC_REVENUE_ECPCV_ADVERTISER" -> Just PIMMetricRevenueEcpcvAdvertiser
        "METRIC_REVENUE_ECPCV_PARTNER" -> Just PIMMetricRevenueEcpcvPartner
        "METRIC_REVENUE_ECPCV_USD" -> Just PIMMetricRevenueEcpcvUsd
        "METRIC_REVENUE_ECPC_ADVERTISER" -> Just PIMMetricRevenueEcpcAdvertiser
        "METRIC_REVENUE_ECPC_PARTNER" -> Just PIMMetricRevenueEcpcPartner
        "METRIC_REVENUE_ECPC_USD" -> Just PIMMetricRevenueEcpcUsd
        "METRIC_REVENUE_ECPM_ADVERTISER" -> Just PIMMetricRevenueEcpmAdvertiser
        "METRIC_REVENUE_ECPM_PARTNER" -> Just PIMMetricRevenueEcpmPartner
        "METRIC_REVENUE_ECPM_USD" -> Just PIMMetricRevenueEcpmUsd
        "METRIC_REVENUE_PARTNER" -> Just PIMMetricRevenuePartner
        "METRIC_REVENUE_USD" -> Just PIMMetricRevenueUsd
        "METRIC_RICH_MEDIA_VIDEO_COMPLETIONS" -> Just PIMMetricRichMediaVideoCompletions
        "METRIC_RICH_MEDIA_VIDEO_FIRST_QUARTILE_COMPLETES" -> Just PIMMetricRichMediaVideoFirstQuartileCompletes
        "METRIC_RICH_MEDIA_VIDEO_FULL_SCREENS" -> Just PIMMetricRichMediaVideoFullScreens
        "METRIC_RICH_MEDIA_VIDEO_MIDPOINTS" -> Just PIMMetricRichMediaVideoMidpoints
        "METRIC_RICH_MEDIA_VIDEO_MUTES" -> Just PIMMetricRichMediaVideoMutes
        "METRIC_RICH_MEDIA_VIDEO_PAUSES" -> Just PIMMetricRichMediaVideoPauses
        "METRIC_RICH_MEDIA_VIDEO_PLAYS" -> Just PIMMetricRichMediaVideoPlays
        "METRIC_RICH_MEDIA_VIDEO_SKIPS" -> Just PIMMetricRichMediaVideoSkips
        "METRIC_RICH_MEDIA_VIDEO_THIRD_QUARTILE_COMPLETES" -> Just PIMMetricRichMediaVideoThirdQuartileCompletes
        "METRIC_TEA_TRUEVIEW_IMPRESSIONS" -> Just PIMMetricTeaTrueviewImpressions
        "METRIC_TEA_TRUEVIEW_UNIQUE_COOKIES" -> Just PIMMetricTeaTrueviewUniqueCookies
        "METRIC_TEA_TRUEVIEW_UNIQUE_PEOPLE" -> Just PIMMetricTeaTrueviewUniquePeople
        "METRIC_TOTAL_CONVERSIONS" -> Just PIMMetricTotalConversions
        "METRIC_TOTAL_MEDIA_COST_ADVERTISER" -> Just PIMMetricTotalMediaCostAdvertiser
        "METRIC_TOTAL_MEDIA_COST_ECPAPC_ADVERTISER" -> Just PIMMetricTotalMediaCostEcpapcAdvertiser
        "METRIC_TOTAL_MEDIA_COST_ECPAPC_PARTNER" -> Just PIMMetricTotalMediaCostEcpapcPartner
        "METRIC_TOTAL_MEDIA_COST_ECPAPC_USD" -> Just PIMMetricTotalMediaCostEcpapcUsd
        "METRIC_TOTAL_MEDIA_COST_ECPAPV_ADVERTISER" -> Just PIMMetricTotalMediaCostEcpapvAdvertiser
        "METRIC_TOTAL_MEDIA_COST_ECPAPV_PARTNER" -> Just PIMMetricTotalMediaCostEcpapvPartner
        "METRIC_TOTAL_MEDIA_COST_ECPAPV_USD" -> Just PIMMetricTotalMediaCostEcpapvUsd
        "METRIC_TOTAL_MEDIA_COST_ECPA_ADVERTISER" -> Just PIMMetricTotalMediaCostEcpaAdvertiser
        "METRIC_TOTAL_MEDIA_COST_ECPA_PARTNER" -> Just PIMMetricTotalMediaCostEcpaPartner
        "METRIC_TOTAL_MEDIA_COST_ECPA_USD" -> Just PIMMetricTotalMediaCostEcpaUsd
        "METRIC_TOTAL_MEDIA_COST_ECPCV_ADVERTISER" -> Just PIMMetricTotalMediaCostEcpcvAdvertiser
        "METRIC_TOTAL_MEDIA_COST_ECPCV_PARTNER" -> Just PIMMetricTotalMediaCostEcpcvPartner
        "METRIC_TOTAL_MEDIA_COST_ECPCV_USD" -> Just PIMMetricTotalMediaCostEcpcvUsd
        "METRIC_TOTAL_MEDIA_COST_ECPC_ADVERTISER" -> Just PIMMetricTotalMediaCostEcpcAdvertiser
        "METRIC_TOTAL_MEDIA_COST_ECPC_PARTNER" -> Just PIMMetricTotalMediaCostEcpcPartner
        "METRIC_TOTAL_MEDIA_COST_ECPC_USD" -> Just PIMMetricTotalMediaCostEcpcUsd
        "METRIC_TOTAL_MEDIA_COST_ECPM_ADVERTISER" -> Just PIMMetricTotalMediaCostEcpmAdvertiser
        "METRIC_TOTAL_MEDIA_COST_ECPM_PARTNER" -> Just PIMMetricTotalMediaCostEcpmPartner
        "METRIC_TOTAL_MEDIA_COST_ECPM_USD" -> Just PIMMetricTotalMediaCostEcpmUsd
        "METRIC_TOTAL_MEDIA_COST_PARTNER" -> Just PIMMetricTotalMediaCostPartner
        "METRIC_TOTAL_MEDIA_COST_USD" -> Just PIMMetricTotalMediaCostUsd
        "METRIC_TRUEVIEW_CONVERSION_MANY_PER_VIEW" -> Just PIMMetricTrueviewConversionManyPerView
        "METRIC_TRUEVIEW_CONVERSION_ONE_PER_VIEW" -> Just PIMMetricTrueviewConversionOnePerView
        "METRIC_TRUEVIEW_CONVERSION_RATE_ONE_PER_VIEW" -> Just PIMMetricTrueviewConversionRateOnePerView
        "METRIC_TRUEVIEW_COST_CONVERSION_MANY_PER_VIEW_RATIO" -> Just PIMMetricTrueviewCostConversionManyPerViewRatio
        "METRIC_TRUEVIEW_COST_CONVERSION_ONE_PER_VIEW_RATIO" -> Just PIMMetricTrueviewCostConversionOnePerViewRatio
        "METRIC_TRUEVIEW_CPV_ADVERTISER" -> Just PIMMetricTrueviewCpvAdvertiser
        "METRIC_TRUEVIEW_CPV_PARTNER" -> Just PIMMetricTrueviewCpvPartner
        "METRIC_TRUEVIEW_CPV_USD" -> Just PIMMetricTrueviewCpvUsd
        "METRIC_TRUEVIEW_EARNED_LIKES" -> Just PIMMetricTrueviewEarnedLikes
        "METRIC_TRUEVIEW_EARNED_PLAYLIST_ADDITIONS" -> Just PIMMetricTrueviewEarnedPlaylistAdditions
        "METRIC_TRUEVIEW_EARNED_SHARES" -> Just PIMMetricTrueviewEarnedShares
        "METRIC_TRUEVIEW_EARNED_SUBSCRIBERS" -> Just PIMMetricTrueviewEarnedSubscribers
        "METRIC_TRUEVIEW_EARNED_VIEWS" -> Just PIMMetricTrueviewEarnedViews
        "METRIC_TRUEVIEW_IMPRESSION_SHARE" -> Just PIMMetricTrueviewImpressionShare
        "METRIC_TRUEVIEW_LOST_IS_BUDGET" -> Just PIMMetricTrueviewLostIsBudget
        "METRIC_TRUEVIEW_LOST_IS_RANK" -> Just PIMMetricTrueviewLostIsRank
        "METRIC_TRUEVIEW_TOTAL_CONVERSION_VALUE" -> Just PIMMetricTrueviewTotalConversionValue
        "METRIC_TRUEVIEW_UNIQUE_VIEWERS" -> Just PIMMetricTrueviewUniqueViewers
        "METRIC_TRUEVIEW_VALUE_CONVERSION_MANY_PER_VIEW_RATIO" -> Just PIMMetricTrueviewValueConversionManyPerViewRatio
        "METRIC_TRUEVIEW_VALUE_CONVERSION_ONE_PER_VIEW_RATIO" -> Just PIMMetricTrueviewValueConversionOnePerViewRatio
        "METRIC_TRUEVIEW_VIEWS" -> Just PIMMetricTrueviewViews
        "METRIC_TRUEVIEW_VIEW_RATE" -> Just PIMMetricTrueviewViewRate
        "METRIC_TRUEVIEW_VIEW_THROUGH_CONVERSION" -> Just PIMMetricTrueviewViewThroughConversion
        "METRIC_UNIQUE_VISITORS_COOKIES" -> Just PIMMetricUniqueVisitorsCookies
        "METRIC_UNKNOWN" -> Just PIMMetricUnknown
        "METRIC_VIDEO_COMPANION_CLICKS" -> Just PIMMetricVideoCompanionClicks
        "METRIC_VIDEO_COMPANION_IMPRESSIONS" -> Just PIMMetricVideoCompanionImpressions
        "METRIC_VIDEO_COMPLETION_RATE" -> Just PIMMetricVideoCompletionRate
        _ -> Nothing

instance ToText ParametersItemMetrics where
    toText = \case
        PIMMetricBidRequests -> "METRIC_BID_REQUESTS"
        PIMMetricBillableCostAdvertiser -> "METRIC_BILLABLE_COST_ADVERTISER"
        PIMMetricBillableCostPartner -> "METRIC_BILLABLE_COST_PARTNER"
        PIMMetricBillableCostUsd -> "METRIC_BILLABLE_COST_USD"
        PIMMetricClicks -> "METRIC_CLICKS"
        PIMMetricClickToPostClickConversionRate -> "METRIC_CLICK_TO_POST_CLICK_CONVERSION_RATE"
        PIMMetricComscoreVceAudienceAvgFrequency -> "METRIC_COMSCORE_VCE_AUDIENCE_AVG_FREQUENCY"
        PIMMetricComscoreVceAudienceImpressions -> "METRIC_COMSCORE_VCE_AUDIENCE_IMPRESSIONS"
        PIMMetricComscoreVceAudienceImpressionsShare -> "METRIC_COMSCORE_VCE_AUDIENCE_IMPRESSIONS_SHARE"
        PIMMetricComscoreVceAudienceReachPct -> "METRIC_COMSCORE_VCE_AUDIENCE_REACH_PCT"
        PIMMetricComscoreVceAudienceSharePct -> "METRIC_COMSCORE_VCE_AUDIENCE_SHARE_PCT"
        PIMMetricComscoreVceGrossRatingPoints -> "METRIC_COMSCORE_VCE_GROSS_RATING_POINTS"
        PIMMetricComscoreVcePopulation -> "METRIC_COMSCORE_VCE_POPULATION"
        PIMMetricComscoreVceUniqueAudience -> "METRIC_COMSCORE_VCE_UNIQUE_AUDIENCE"
        PIMMetricConversionsPerMille -> "METRIC_CONVERSIONS_PER_MILLE"
        PIMMetricCpmFEE1Advertiser -> "METRIC_CPM_FEE1_ADVERTISER"
        PIMMetricCpmFEE1Partner -> "METRIC_CPM_FEE1_PARTNER"
        PIMMetricCpmFEE1Usd -> "METRIC_CPM_FEE1_USD"
        PIMMetricCpmFEE2Advertiser -> "METRIC_CPM_FEE2_ADVERTISER"
        PIMMetricCpmFEE2Partner -> "METRIC_CPM_FEE2_PARTNER"
        PIMMetricCpmFEE2Usd -> "METRIC_CPM_FEE2_USD"
        PIMMetricCpmFEE3Advertiser -> "METRIC_CPM_FEE3_ADVERTISER"
        PIMMetricCpmFEE3Partner -> "METRIC_CPM_FEE3_PARTNER"
        PIMMetricCpmFEE3Usd -> "METRIC_CPM_FEE3_USD"
        PIMMetricCpmFEE4Advertiser -> "METRIC_CPM_FEE4_ADVERTISER"
        PIMMetricCpmFEE4Partner -> "METRIC_CPM_FEE4_PARTNER"
        PIMMetricCpmFEE4Usd -> "METRIC_CPM_FEE4_USD"
        PIMMetricCpmFEE5Advertiser -> "METRIC_CPM_FEE5_ADVERTISER"
        PIMMetricCpmFEE5Partner -> "METRIC_CPM_FEE5_PARTNER"
        PIMMetricCpmFEE5Usd -> "METRIC_CPM_FEE5_USD"
        PIMMetricCtr -> "METRIC_CTR"
        PIMMetricDataCostAdvertiser -> "METRIC_DATA_COST_ADVERTISER"
        PIMMetricDataCostPartner -> "METRIC_DATA_COST_PARTNER"
        PIMMetricDataCostUsd -> "METRIC_DATA_COST_USD"
        PIMMetricFEE10Advertiser -> "METRIC_FEE10_ADVERTISER"
        PIMMetricFEE10Partner -> "METRIC_FEE10_PARTNER"
        PIMMetricFEE10Usd -> "METRIC_FEE10_USD"
        PIMMetricFEE11Advertiser -> "METRIC_FEE11_ADVERTISER"
        PIMMetricFEE11Partner -> "METRIC_FEE11_PARTNER"
        PIMMetricFEE11Usd -> "METRIC_FEE11_USD"
        PIMMetricFEE12Advertiser -> "METRIC_FEE12_ADVERTISER"
        PIMMetricFEE12Partner -> "METRIC_FEE12_PARTNER"
        PIMMetricFEE12Usd -> "METRIC_FEE12_USD"
        PIMMetricFEE13Advertiser -> "METRIC_FEE13_ADVERTISER"
        PIMMetricFEE13Partner -> "METRIC_FEE13_PARTNER"
        PIMMetricFEE13Usd -> "METRIC_FEE13_USD"
        PIMMetricFEE14Advertiser -> "METRIC_FEE14_ADVERTISER"
        PIMMetricFEE14Partner -> "METRIC_FEE14_PARTNER"
        PIMMetricFEE14Usd -> "METRIC_FEE14_USD"
        PIMMetricFEE15Advertiser -> "METRIC_FEE15_ADVERTISER"
        PIMMetricFEE15Partner -> "METRIC_FEE15_PARTNER"
        PIMMetricFEE15Usd -> "METRIC_FEE15_USD"
        PIMMetricFEE16Advertiser -> "METRIC_FEE16_ADVERTISER"
        PIMMetricFEE16Partner -> "METRIC_FEE16_PARTNER"
        PIMMetricFEE16Usd -> "METRIC_FEE16_USD"
        PIMMetricFEE17Advertiser -> "METRIC_FEE17_ADVERTISER"
        PIMMetricFEE17Partner -> "METRIC_FEE17_PARTNER"
        PIMMetricFEE17Usd -> "METRIC_FEE17_USD"
        PIMMetricFEE18Advertiser -> "METRIC_FEE18_ADVERTISER"
        PIMMetricFEE18Partner -> "METRIC_FEE18_PARTNER"
        PIMMetricFEE18Usd -> "METRIC_FEE18_USD"
        PIMMetricFEE19Advertiser -> "METRIC_FEE19_ADVERTISER"
        PIMMetricFEE19Partner -> "METRIC_FEE19_PARTNER"
        PIMMetricFEE19Usd -> "METRIC_FEE19_USD"
        PIMMetricFEE20Advertiser -> "METRIC_FEE20_ADVERTISER"
        PIMMetricFEE20Partner -> "METRIC_FEE20_PARTNER"
        PIMMetricFEE20Usd -> "METRIC_FEE20_USD"
        PIMMetricFEE2Advertiser -> "METRIC_FEE2_ADVERTISER"
        PIMMetricFEE2Partner -> "METRIC_FEE2_PARTNER"
        PIMMetricFEE2Usd -> "METRIC_FEE2_USD"
        PIMMetricFEE3Advertiser -> "METRIC_FEE3_ADVERTISER"
        PIMMetricFEE3Partner -> "METRIC_FEE3_PARTNER"
        PIMMetricFEE3Usd -> "METRIC_FEE3_USD"
        PIMMetricFEE4Advertiser -> "METRIC_FEE4_ADVERTISER"
        PIMMetricFEE4Partner -> "METRIC_FEE4_PARTNER"
        PIMMetricFEE4Usd -> "METRIC_FEE4_USD"
        PIMMetricFEE5Advertiser -> "METRIC_FEE5_ADVERTISER"
        PIMMetricFEE5Partner -> "METRIC_FEE5_PARTNER"
        PIMMetricFEE5Usd -> "METRIC_FEE5_USD"
        PIMMetricFEE6Advertiser -> "METRIC_FEE6_ADVERTISER"
        PIMMetricFEE6Partner -> "METRIC_FEE6_PARTNER"
        PIMMetricFEE6Usd -> "METRIC_FEE6_USD"
        PIMMetricFEE7Advertiser -> "METRIC_FEE7_ADVERTISER"
        PIMMetricFEE7Partner -> "METRIC_FEE7_PARTNER"
        PIMMetricFEE7Usd -> "METRIC_FEE7_USD"
        PIMMetricFEE8Advertiser -> "METRIC_FEE8_ADVERTISER"
        PIMMetricFEE8Partner -> "METRIC_FEE8_PARTNER"
        PIMMetricFEE8Usd -> "METRIC_FEE8_USD"
        PIMMetricFEE9Advertiser -> "METRIC_FEE9_ADVERTISER"
        PIMMetricFEE9Partner -> "METRIC_FEE9_PARTNER"
        PIMMetricFEE9Usd -> "METRIC_FEE9_USD"
        PIMMetricImpressions -> "METRIC_IMPRESSIONS"
        PIMMetricImpressionsToConversionRate -> "METRIC_IMPRESSIONS_TO_CONVERSION_RATE"
        PIMMetricLastClicks -> "METRIC_LAST_CLICKS"
        PIMMetricLastImpressions -> "METRIC_LAST_IMPRESSIONS"
        PIMMetricMediaCostAdvertiser -> "METRIC_MEDIA_COST_ADVERTISER"
        PIMMetricMediaCostEcpapcAdvertiser -> "METRIC_MEDIA_COST_ECPAPC_ADVERTISER"
        PIMMetricMediaCostEcpapcPartner -> "METRIC_MEDIA_COST_ECPAPC_PARTNER"
        PIMMetricMediaCostEcpapcUsd -> "METRIC_MEDIA_COST_ECPAPC_USD"
        PIMMetricMediaCostEcpapvAdvertiser -> "METRIC_MEDIA_COST_ECPAPV_ADVERTISER"
        PIMMetricMediaCostEcpapvPartner -> "METRIC_MEDIA_COST_ECPAPV_PARTNER"
        PIMMetricMediaCostEcpapvUsd -> "METRIC_MEDIA_COST_ECPAPV_USD"
        PIMMetricMediaCostEcpaAdvertiser -> "METRIC_MEDIA_COST_ECPA_ADVERTISER"
        PIMMetricMediaCostEcpaPartner -> "METRIC_MEDIA_COST_ECPA_PARTNER"
        PIMMetricMediaCostEcpaUsd -> "METRIC_MEDIA_COST_ECPA_USD"
        PIMMetricMediaCostEcpcvAdvertiser -> "METRIC_MEDIA_COST_ECPCV_ADVERTISER"
        PIMMetricMediaCostEcpcvPartner -> "METRIC_MEDIA_COST_ECPCV_PARTNER"
        PIMMetricMediaCostEcpcvUsd -> "METRIC_MEDIA_COST_ECPCV_USD"
        PIMMetricMediaCostEcpcAdvertiser -> "METRIC_MEDIA_COST_ECPC_ADVERTISER"
        PIMMetricMediaCostEcpcPartner -> "METRIC_MEDIA_COST_ECPC_PARTNER"
        PIMMetricMediaCostEcpcUsd -> "METRIC_MEDIA_COST_ECPC_USD"
        PIMMetricMediaCostEcpmAdvertiser -> "METRIC_MEDIA_COST_ECPM_ADVERTISER"
        PIMMetricMediaCostEcpmPartner -> "METRIC_MEDIA_COST_ECPM_PARTNER"
        PIMMetricMediaCostEcpmUsd -> "METRIC_MEDIA_COST_ECPM_USD"
        PIMMetricMediaCostPartner -> "METRIC_MEDIA_COST_PARTNER"
        PIMMetricMediaCostUsd -> "METRIC_MEDIA_COST_USD"
        PIMMetricMediaFEE1Advertiser -> "METRIC_MEDIA_FEE1_ADVERTISER"
        PIMMetricMediaFEE1Partner -> "METRIC_MEDIA_FEE1_PARTNER"
        PIMMetricMediaFEE1Usd -> "METRIC_MEDIA_FEE1_USD"
        PIMMetricMediaFEE2Advertiser -> "METRIC_MEDIA_FEE2_ADVERTISER"
        PIMMetricMediaFEE2Partner -> "METRIC_MEDIA_FEE2_PARTNER"
        PIMMetricMediaFEE2Usd -> "METRIC_MEDIA_FEE2_USD"
        PIMMetricMediaFEE3Advertiser -> "METRIC_MEDIA_FEE3_ADVERTISER"
        PIMMetricMediaFEE3Partner -> "METRIC_MEDIA_FEE3_PARTNER"
        PIMMetricMediaFEE3Usd -> "METRIC_MEDIA_FEE3_USD"
        PIMMetricMediaFEE4Advertiser -> "METRIC_MEDIA_FEE4_ADVERTISER"
        PIMMetricMediaFEE4Partner -> "METRIC_MEDIA_FEE4_PARTNER"
        PIMMetricMediaFEE4Usd -> "METRIC_MEDIA_FEE4_USD"
        PIMMetricMediaFEE5Advertiser -> "METRIC_MEDIA_FEE5_ADVERTISER"
        PIMMetricMediaFEE5Partner -> "METRIC_MEDIA_FEE5_PARTNER"
        PIMMetricMediaFEE5Usd -> "METRIC_MEDIA_FEE5_USD"
        PIMMetricPixelLoads -> "METRIC_PIXEL_LOADS"
        PIMMetricPlatformFeeAdvertiser -> "METRIC_PLATFORM_FEE_ADVERTISER"
        PIMMetricPlatformFeePartner -> "METRIC_PLATFORM_FEE_PARTNER"
        PIMMetricPlatformFeeUsd -> "METRIC_PLATFORM_FEE_USD"
        PIMMetricPostClickDfaRevenue -> "METRIC_POST_CLICK_DFA_REVENUE"
        PIMMetricPostViewDfaRevenue -> "METRIC_POST_VIEW_DFA_REVENUE"
        PIMMetricProfitAdvertiser -> "METRIC_PROFIT_ADVERTISER"
        PIMMetricProfitEcpapcAdvertiser -> "METRIC_PROFIT_ECPAPC_ADVERTISER"
        PIMMetricProfitEcpapcPartner -> "METRIC_PROFIT_ECPAPC_PARTNER"
        PIMMetricProfitEcpapcUsd -> "METRIC_PROFIT_ECPAPC_USD"
        PIMMetricProfitEcpapvAdvertiser -> "METRIC_PROFIT_ECPAPV_ADVERTISER"
        PIMMetricProfitEcpapvPartner -> "METRIC_PROFIT_ECPAPV_PARTNER"
        PIMMetricProfitEcpapvUsd -> "METRIC_PROFIT_ECPAPV_USD"
        PIMMetricProfitEcpaAdvertiser -> "METRIC_PROFIT_ECPA_ADVERTISER"
        PIMMetricProfitEcpaPartner -> "METRIC_PROFIT_ECPA_PARTNER"
        PIMMetricProfitEcpaUsd -> "METRIC_PROFIT_ECPA_USD"
        PIMMetricProfitEcpcAdvertiser -> "METRIC_PROFIT_ECPC_ADVERTISER"
        PIMMetricProfitEcpcPartner -> "METRIC_PROFIT_ECPC_PARTNER"
        PIMMetricProfitEcpcUsd -> "METRIC_PROFIT_ECPC_USD"
        PIMMetricProfitEcpmAdvertiser -> "METRIC_PROFIT_ECPM_ADVERTISER"
        PIMMetricProfitEcpmPartner -> "METRIC_PROFIT_ECPM_PARTNER"
        PIMMetricProfitEcpmUsd -> "METRIC_PROFIT_ECPM_USD"
        PIMMetricProfitMargin -> "METRIC_PROFIT_MARGIN"
        PIMMetricProfitPartner -> "METRIC_PROFIT_PARTNER"
        PIMMetricProfitUsd -> "METRIC_PROFIT_USD"
        PIMMetricRevenueAdvertiser -> "METRIC_REVENUE_ADVERTISER"
        PIMMetricRevenueEcpapcAdvertiser -> "METRIC_REVENUE_ECPAPC_ADVERTISER"
        PIMMetricRevenueEcpapcPartner -> "METRIC_REVENUE_ECPAPC_PARTNER"
        PIMMetricRevenueEcpapcUsd -> "METRIC_REVENUE_ECPAPC_USD"
        PIMMetricRevenueEcpapvAdvertiser -> "METRIC_REVENUE_ECPAPV_ADVERTISER"
        PIMMetricRevenueEcpapvPartner -> "METRIC_REVENUE_ECPAPV_PARTNER"
        PIMMetricRevenueEcpapvUsd -> "METRIC_REVENUE_ECPAPV_USD"
        PIMMetricRevenueEcpaAdvertiser -> "METRIC_REVENUE_ECPA_ADVERTISER"
        PIMMetricRevenueEcpaPartner -> "METRIC_REVENUE_ECPA_PARTNER"
        PIMMetricRevenueEcpaUsd -> "METRIC_REVENUE_ECPA_USD"
        PIMMetricRevenueEcpcvAdvertiser -> "METRIC_REVENUE_ECPCV_ADVERTISER"
        PIMMetricRevenueEcpcvPartner -> "METRIC_REVENUE_ECPCV_PARTNER"
        PIMMetricRevenueEcpcvUsd -> "METRIC_REVENUE_ECPCV_USD"
        PIMMetricRevenueEcpcAdvertiser -> "METRIC_REVENUE_ECPC_ADVERTISER"
        PIMMetricRevenueEcpcPartner -> "METRIC_REVENUE_ECPC_PARTNER"
        PIMMetricRevenueEcpcUsd -> "METRIC_REVENUE_ECPC_USD"
        PIMMetricRevenueEcpmAdvertiser -> "METRIC_REVENUE_ECPM_ADVERTISER"
        PIMMetricRevenueEcpmPartner -> "METRIC_REVENUE_ECPM_PARTNER"
        PIMMetricRevenueEcpmUsd -> "METRIC_REVENUE_ECPM_USD"
        PIMMetricRevenuePartner -> "METRIC_REVENUE_PARTNER"
        PIMMetricRevenueUsd -> "METRIC_REVENUE_USD"
        PIMMetricRichMediaVideoCompletions -> "METRIC_RICH_MEDIA_VIDEO_COMPLETIONS"
        PIMMetricRichMediaVideoFirstQuartileCompletes -> "METRIC_RICH_MEDIA_VIDEO_FIRST_QUARTILE_COMPLETES"
        PIMMetricRichMediaVideoFullScreens -> "METRIC_RICH_MEDIA_VIDEO_FULL_SCREENS"
        PIMMetricRichMediaVideoMidpoints -> "METRIC_RICH_MEDIA_VIDEO_MIDPOINTS"
        PIMMetricRichMediaVideoMutes -> "METRIC_RICH_MEDIA_VIDEO_MUTES"
        PIMMetricRichMediaVideoPauses -> "METRIC_RICH_MEDIA_VIDEO_PAUSES"
        PIMMetricRichMediaVideoPlays -> "METRIC_RICH_MEDIA_VIDEO_PLAYS"
        PIMMetricRichMediaVideoSkips -> "METRIC_RICH_MEDIA_VIDEO_SKIPS"
        PIMMetricRichMediaVideoThirdQuartileCompletes -> "METRIC_RICH_MEDIA_VIDEO_THIRD_QUARTILE_COMPLETES"
        PIMMetricTeaTrueviewImpressions -> "METRIC_TEA_TRUEVIEW_IMPRESSIONS"
        PIMMetricTeaTrueviewUniqueCookies -> "METRIC_TEA_TRUEVIEW_UNIQUE_COOKIES"
        PIMMetricTeaTrueviewUniquePeople -> "METRIC_TEA_TRUEVIEW_UNIQUE_PEOPLE"
        PIMMetricTotalConversions -> "METRIC_TOTAL_CONVERSIONS"
        PIMMetricTotalMediaCostAdvertiser -> "METRIC_TOTAL_MEDIA_COST_ADVERTISER"
        PIMMetricTotalMediaCostEcpapcAdvertiser -> "METRIC_TOTAL_MEDIA_COST_ECPAPC_ADVERTISER"
        PIMMetricTotalMediaCostEcpapcPartner -> "METRIC_TOTAL_MEDIA_COST_ECPAPC_PARTNER"
        PIMMetricTotalMediaCostEcpapcUsd -> "METRIC_TOTAL_MEDIA_COST_ECPAPC_USD"
        PIMMetricTotalMediaCostEcpapvAdvertiser -> "METRIC_TOTAL_MEDIA_COST_ECPAPV_ADVERTISER"
        PIMMetricTotalMediaCostEcpapvPartner -> "METRIC_TOTAL_MEDIA_COST_ECPAPV_PARTNER"
        PIMMetricTotalMediaCostEcpapvUsd -> "METRIC_TOTAL_MEDIA_COST_ECPAPV_USD"
        PIMMetricTotalMediaCostEcpaAdvertiser -> "METRIC_TOTAL_MEDIA_COST_ECPA_ADVERTISER"
        PIMMetricTotalMediaCostEcpaPartner -> "METRIC_TOTAL_MEDIA_COST_ECPA_PARTNER"
        PIMMetricTotalMediaCostEcpaUsd -> "METRIC_TOTAL_MEDIA_COST_ECPA_USD"
        PIMMetricTotalMediaCostEcpcvAdvertiser -> "METRIC_TOTAL_MEDIA_COST_ECPCV_ADVERTISER"
        PIMMetricTotalMediaCostEcpcvPartner -> "METRIC_TOTAL_MEDIA_COST_ECPCV_PARTNER"
        PIMMetricTotalMediaCostEcpcvUsd -> "METRIC_TOTAL_MEDIA_COST_ECPCV_USD"
        PIMMetricTotalMediaCostEcpcAdvertiser -> "METRIC_TOTAL_MEDIA_COST_ECPC_ADVERTISER"
        PIMMetricTotalMediaCostEcpcPartner -> "METRIC_TOTAL_MEDIA_COST_ECPC_PARTNER"
        PIMMetricTotalMediaCostEcpcUsd -> "METRIC_TOTAL_MEDIA_COST_ECPC_USD"
        PIMMetricTotalMediaCostEcpmAdvertiser -> "METRIC_TOTAL_MEDIA_COST_ECPM_ADVERTISER"
        PIMMetricTotalMediaCostEcpmPartner -> "METRIC_TOTAL_MEDIA_COST_ECPM_PARTNER"
        PIMMetricTotalMediaCostEcpmUsd -> "METRIC_TOTAL_MEDIA_COST_ECPM_USD"
        PIMMetricTotalMediaCostPartner -> "METRIC_TOTAL_MEDIA_COST_PARTNER"
        PIMMetricTotalMediaCostUsd -> "METRIC_TOTAL_MEDIA_COST_USD"
        PIMMetricTrueviewConversionManyPerView -> "METRIC_TRUEVIEW_CONVERSION_MANY_PER_VIEW"
        PIMMetricTrueviewConversionOnePerView -> "METRIC_TRUEVIEW_CONVERSION_ONE_PER_VIEW"
        PIMMetricTrueviewConversionRateOnePerView -> "METRIC_TRUEVIEW_CONVERSION_RATE_ONE_PER_VIEW"
        PIMMetricTrueviewCostConversionManyPerViewRatio -> "METRIC_TRUEVIEW_COST_CONVERSION_MANY_PER_VIEW_RATIO"
        PIMMetricTrueviewCostConversionOnePerViewRatio -> "METRIC_TRUEVIEW_COST_CONVERSION_ONE_PER_VIEW_RATIO"
        PIMMetricTrueviewCpvAdvertiser -> "METRIC_TRUEVIEW_CPV_ADVERTISER"
        PIMMetricTrueviewCpvPartner -> "METRIC_TRUEVIEW_CPV_PARTNER"
        PIMMetricTrueviewCpvUsd -> "METRIC_TRUEVIEW_CPV_USD"
        PIMMetricTrueviewEarnedLikes -> "METRIC_TRUEVIEW_EARNED_LIKES"
        PIMMetricTrueviewEarnedPlaylistAdditions -> "METRIC_TRUEVIEW_EARNED_PLAYLIST_ADDITIONS"
        PIMMetricTrueviewEarnedShares -> "METRIC_TRUEVIEW_EARNED_SHARES"
        PIMMetricTrueviewEarnedSubscribers -> "METRIC_TRUEVIEW_EARNED_SUBSCRIBERS"
        PIMMetricTrueviewEarnedViews -> "METRIC_TRUEVIEW_EARNED_VIEWS"
        PIMMetricTrueviewImpressionShare -> "METRIC_TRUEVIEW_IMPRESSION_SHARE"
        PIMMetricTrueviewLostIsBudget -> "METRIC_TRUEVIEW_LOST_IS_BUDGET"
        PIMMetricTrueviewLostIsRank -> "METRIC_TRUEVIEW_LOST_IS_RANK"
        PIMMetricTrueviewTotalConversionValue -> "METRIC_TRUEVIEW_TOTAL_CONVERSION_VALUE"
        PIMMetricTrueviewUniqueViewers -> "METRIC_TRUEVIEW_UNIQUE_VIEWERS"
        PIMMetricTrueviewValueConversionManyPerViewRatio -> "METRIC_TRUEVIEW_VALUE_CONVERSION_MANY_PER_VIEW_RATIO"
        PIMMetricTrueviewValueConversionOnePerViewRatio -> "METRIC_TRUEVIEW_VALUE_CONVERSION_ONE_PER_VIEW_RATIO"
        PIMMetricTrueviewViews -> "METRIC_TRUEVIEW_VIEWS"
        PIMMetricTrueviewViewRate -> "METRIC_TRUEVIEW_VIEW_RATE"
        PIMMetricTrueviewViewThroughConversion -> "METRIC_TRUEVIEW_VIEW_THROUGH_CONVERSION"
        PIMMetricUniqueVisitorsCookies -> "METRIC_UNIQUE_VISITORS_COOKIES"
        PIMMetricUnknown -> "METRIC_UNKNOWN"
        PIMMetricVideoCompanionClicks -> "METRIC_VIDEO_COMPANION_CLICKS"
        PIMMetricVideoCompanionImpressions -> "METRIC_VIDEO_COMPANION_IMPRESSIONS"
        PIMMetricVideoCompletionRate -> "METRIC_VIDEO_COMPLETION_RATE"

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

instance FromText ParametersType where
    fromText = \case
        "TYPE_ACTIVE_GRP" -> Just PTTypeActiveGrp
        "TYPE_AUDIENCE_COMPOSITION" -> Just PTTypeAudienceComposition
        "TYPE_AUDIENCE_PERFORMANCE" -> Just PTTypeAudiencePerformance
        "TYPE_CLIENT_SAFE" -> Just PTTypeClientSafe
        "TYPE_COMSCORE_VCE" -> Just PTTypeComscoreVce
        "TYPE_CROSS_FEE" -> Just PTTypeCrossFee
        "TYPE_CROSS_PARTNER" -> Just PTTypeCrossPartner
        "TYPE_CROSS_PARTNER_THIRD_PARTY_DATA_PROVIDER" -> Just PTTypeCrossPartnerThirdPartyDataProvider
        "TYPE_ESTIMATED_CONVERSION" -> Just PTTypeEstimatedConversion
        "TYPE_FEE" -> Just PTTypeFee
        "TYPE_GENERAL" -> Just PTTypeGeneral
        "TYPE_INVENTORY_AVAILABILITY" -> Just PTTypeInventoryAvailability
        "TYPE_KEYWORD" -> Just PTTypeKeyword
        "TYPE_NIELSEN_AUDIENCE_PROFILE" -> Just PTTypeNielsenAudienceProfile
        "TYPE_NIELSEN_DAILY_REACH_BUILD" -> Just PTTypeNielsenDailyReachBuild
        "TYPE_NIELSEN_SITE" -> Just PTTypeNielsenSite
        "TYPE_ORDER_ID" -> Just PTTypeOrderId
        "TYPE_PAGE_CATEGORY" -> Just PTTypePageCategory
        "TYPE_PIXEL_LOAD" -> Just PTTypePixelLoad
        "TYPE_REACH_AND_FREQUENCY" -> Just PTTypeReachAndFrequency
        "TYPE_THIRD_PARTY_DATA_PROVIDER" -> Just PTTypeThirdPartyDataProvider
        "TYPE_TRUEVIEW" -> Just PTTypeTrueview
        "TYPE_TRUEVIEW_IAR" -> Just PTTypeTrueviewIar
        "TYPE_VERIFICATION" -> Just PTTypeVerification
        "TYPE_YOUTUBE_VERTICAL" -> Just PTTypeYoutubeVertical
        _ -> Nothing

instance ToText ParametersType where
    toText = \case
        PTTypeActiveGrp -> "TYPE_ACTIVE_GRP"
        PTTypeAudienceComposition -> "TYPE_AUDIENCE_COMPOSITION"
        PTTypeAudiencePerformance -> "TYPE_AUDIENCE_PERFORMANCE"
        PTTypeClientSafe -> "TYPE_CLIENT_SAFE"
        PTTypeComscoreVce -> "TYPE_COMSCORE_VCE"
        PTTypeCrossFee -> "TYPE_CROSS_FEE"
        PTTypeCrossPartner -> "TYPE_CROSS_PARTNER"
        PTTypeCrossPartnerThirdPartyDataProvider -> "TYPE_CROSS_PARTNER_THIRD_PARTY_DATA_PROVIDER"
        PTTypeEstimatedConversion -> "TYPE_ESTIMATED_CONVERSION"
        PTTypeFee -> "TYPE_FEE"
        PTTypeGeneral -> "TYPE_GENERAL"
        PTTypeInventoryAvailability -> "TYPE_INVENTORY_AVAILABILITY"
        PTTypeKeyword -> "TYPE_KEYWORD"
        PTTypeNielsenAudienceProfile -> "TYPE_NIELSEN_AUDIENCE_PROFILE"
        PTTypeNielsenDailyReachBuild -> "TYPE_NIELSEN_DAILY_REACH_BUILD"
        PTTypeNielsenSite -> "TYPE_NIELSEN_SITE"
        PTTypeOrderId -> "TYPE_ORDER_ID"
        PTTypePageCategory -> "TYPE_PAGE_CATEGORY"
        PTTypePixelLoad -> "TYPE_PIXEL_LOAD"
        PTTypeReachAndFrequency -> "TYPE_REACH_AND_FREQUENCY"
        PTTypeThirdPartyDataProvider -> "TYPE_THIRD_PARTY_DATA_PROVIDER"
        PTTypeTrueview -> "TYPE_TRUEVIEW"
        PTTypeTrueviewIar -> "TYPE_TRUEVIEW_IAR"
        PTTypeVerification -> "TYPE_VERIFICATION"
        PTTypeYoutubeVertical -> "TYPE_YOUTUBE_VERTICAL"

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

instance FromText QueryMetadataDataRange where
    fromText = \case
        "ALL_TIME" -> Just QMDRAllTime
        "CURRENT_DAY" -> Just QMDRCurrentDay
        "CUSTOM_DATES" -> Just QMDRCustomDates
        "LAST_14_DAYS" -> Just QMDRLast14Days
        "LAST_30_DAYS" -> Just QMDRLast30Days
        "LAST_365_DAYS" -> Just QMDRLast365Days
        "LAST_7_DAYS" -> Just QMDRLast7Days
        "LAST_90_DAYS" -> Just QMDRLast90Days
        "MONTH_TO_DATE" -> Just QMDRMonthToDate
        "PREVIOUS_DAY" -> Just QMDRPreviousDay
        "PREVIOUS_HALF_MONTH" -> Just QMDRPreviousHalfMonth
        "PREVIOUS_MONTH" -> Just QMDRPreviousMonth
        "PREVIOUS_QUARTER" -> Just QMDRPreviousQuarter
        "PREVIOUS_WEEK" -> Just QMDRPreviousWeek
        "PREVIOUS_YEAR" -> Just QMDRPreviousYear
        "QUARTER_TO_DATE" -> Just QMDRQuarterToDate
        "WEEK_TO_DATE" -> Just QMDRWeekToDate
        "YEAR_TO_DATE" -> Just QMDRYearToDate
        _ -> Nothing

instance ToText QueryMetadataDataRange where
    toText = \case
        QMDRAllTime -> "ALL_TIME"
        QMDRCurrentDay -> "CURRENT_DAY"
        QMDRCustomDates -> "CUSTOM_DATES"
        QMDRLast14Days -> "LAST_14_DAYS"
        QMDRLast30Days -> "LAST_30_DAYS"
        QMDRLast365Days -> "LAST_365_DAYS"
        QMDRLast7Days -> "LAST_7_DAYS"
        QMDRLast90Days -> "LAST_90_DAYS"
        QMDRMonthToDate -> "MONTH_TO_DATE"
        QMDRPreviousDay -> "PREVIOUS_DAY"
        QMDRPreviousHalfMonth -> "PREVIOUS_HALF_MONTH"
        QMDRPreviousMonth -> "PREVIOUS_MONTH"
        QMDRPreviousQuarter -> "PREVIOUS_QUARTER"
        QMDRPreviousWeek -> "PREVIOUS_WEEK"
        QMDRPreviousYear -> "PREVIOUS_YEAR"
        QMDRQuarterToDate -> "QUARTER_TO_DATE"
        QMDRWeekToDate -> "WEEK_TO_DATE"
        QMDRYearToDate -> "YEAR_TO_DATE"

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

instance FromText QueryMetadataFormat where
    fromText = \case
        "CSV" -> Just QMFCSV
        "EXCEL_CSV" -> Just QMFExcelCSV
        "XLSX" -> Just QMFXlsx
        _ -> Nothing

instance ToText QueryMetadataFormat where
    toText = \case
        QMFCSV -> "CSV"
        QMFExcelCSV -> "EXCEL_CSV"
        QMFXlsx -> "XLSX"

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

instance FromText QueryScheduleFrequency where
    fromText = \case
        "DAILY" -> Just QSFDaily
        "MONTHLY" -> Just QSFMonthly
        "ONE_TIME" -> Just QSFOneTime
        "QUARTERLY" -> Just QSFQuarterly
        "SEMI_MONTHLY" -> Just QSFSemiMonthly
        "WEEKLY" -> Just QSFWeekly
        _ -> Nothing

instance ToText QueryScheduleFrequency where
    toText = \case
        QSFDaily -> "DAILY"
        QSFMonthly -> "MONTHLY"
        QSFOneTime -> "ONE_TIME"
        QSFQuarterly -> "QUARTERLY"
        QSFSemiMonthly -> "SEMI_MONTHLY"
        QSFWeekly -> "WEEKLY"

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

instance FromText ReportFailureErrorCode where
    fromText = \case
        "AUTHENTICATION_ERROR" -> Just RFECAuthenticationError
        "DEPRECATED_REPORTING_INVALID_QUERY" -> Just RFECDeprecatedReportingInvalidQuery
        "REPORTING_BUCKET_NOT_FOUND" -> Just RFECReportingBucketNotFound
        "REPORTING_CREATE_BUCKET_FAILED" -> Just RFECReportingCreateBucketFailed
        "REPORTING_DELETE_BUCKET_FAILED" -> Just RFECReportingDeleteBucketFailed
        "REPORTING_FATAL_ERROR" -> Just RFECReportingFatalError
        "REPORTING_ILLEGAL_FILENAME" -> Just RFECReportingIllegalFilename
        "REPORTING_IMCOMPATIBLE_METRICS" -> Just RFECReportingImcompatibleMetrics
        "REPORTING_INVALID_QUERY_MISSING_PARTNER_AND_ADVERTISER_FILTERS" -> Just RFECReportingInvalidQueryMissingPartnerAndAdvertiserFilters
        "REPORTING_INVALID_QUERY_TITLE_MISSING" -> Just RFECReportingInvalidQueryTitleMissing
        "REPORTING_INVALID_QUERY_TOO_MANY_UNFILTERED_LARGE_GROUP_BYS" -> Just RFECReportingInvalidQueryTooManyUnfilteredLargeGroupBys
        "REPORTING_QUERY_NOT_FOUND" -> Just RFECReportingQueryNotFound
        "REPORTING_TRANSIENT_ERROR" -> Just RFECReportingTransientError
        "REPORTING_UPDATE_BUCKET_PERMISSION_FAILED" -> Just RFECReportingUpdateBucketPermissionFailed
        "REPORTING_WRITE_BUCKET_OBJECT_FAILED" -> Just RFECReportingWriteBucketObjectFailed
        "SERVER_ERROR" -> Just RFECServerError
        "UNAUTHORIZED_API_ACCESS" -> Just RFECUnauthorizedAPIAccess
        "VALIDATION_ERROR" -> Just RFECValidationError
        _ -> Nothing

instance ToText ReportFailureErrorCode where
    toText = \case
        RFECAuthenticationError -> "AUTHENTICATION_ERROR"
        RFECDeprecatedReportingInvalidQuery -> "DEPRECATED_REPORTING_INVALID_QUERY"
        RFECReportingBucketNotFound -> "REPORTING_BUCKET_NOT_FOUND"
        RFECReportingCreateBucketFailed -> "REPORTING_CREATE_BUCKET_FAILED"
        RFECReportingDeleteBucketFailed -> "REPORTING_DELETE_BUCKET_FAILED"
        RFECReportingFatalError -> "REPORTING_FATAL_ERROR"
        RFECReportingIllegalFilename -> "REPORTING_ILLEGAL_FILENAME"
        RFECReportingImcompatibleMetrics -> "REPORTING_IMCOMPATIBLE_METRICS"
        RFECReportingInvalidQueryMissingPartnerAndAdvertiserFilters -> "REPORTING_INVALID_QUERY_MISSING_PARTNER_AND_ADVERTISER_FILTERS"
        RFECReportingInvalidQueryTitleMissing -> "REPORTING_INVALID_QUERY_TITLE_MISSING"
        RFECReportingInvalidQueryTooManyUnfilteredLargeGroupBys -> "REPORTING_INVALID_QUERY_TOO_MANY_UNFILTERED_LARGE_GROUP_BYS"
        RFECReportingQueryNotFound -> "REPORTING_QUERY_NOT_FOUND"
        RFECReportingTransientError -> "REPORTING_TRANSIENT_ERROR"
        RFECReportingUpdateBucketPermissionFailed -> "REPORTING_UPDATE_BUCKET_PERMISSION_FAILED"
        RFECReportingWriteBucketObjectFailed -> "REPORTING_WRITE_BUCKET_OBJECT_FAILED"
        RFECServerError -> "SERVER_ERROR"
        RFECUnauthorizedAPIAccess -> "UNAUTHORIZED_API_ACCESS"
        RFECValidationError -> "VALIDATION_ERROR"

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

instance FromText ReportStatusFormat where
    fromText = \case
        "CSV" -> Just RSFCSV
        "EXCEL_CSV" -> Just RSFExcelCSV
        "XLSX" -> Just RSFXlsx
        _ -> Nothing

instance ToText ReportStatusFormat where
    toText = \case
        RSFCSV -> "CSV"
        RSFExcelCSV -> "EXCEL_CSV"
        RSFXlsx -> "XLSX"

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

instance FromText ReportStatusState where
    fromText = \case
        "DONE" -> Just RSSDone
        "FAILED" -> Just RSSFailed
        "RUNNING" -> Just RSSRunning
        _ -> Nothing

instance ToText ReportStatusState where
    toText = \case
        RSSDone -> "DONE"
        RSSFailed -> "FAILED"
        RSSRunning -> "RUNNING"

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

instance FromText RunQueryRequestDataRange where
    fromText = \case
        "ALL_TIME" -> Just RQRDRAllTime
        "CURRENT_DAY" -> Just RQRDRCurrentDay
        "CUSTOM_DATES" -> Just RQRDRCustomDates
        "LAST_14_DAYS" -> Just RQRDRLast14Days
        "LAST_30_DAYS" -> Just RQRDRLast30Days
        "LAST_365_DAYS" -> Just RQRDRLast365Days
        "LAST_7_DAYS" -> Just RQRDRLast7Days
        "LAST_90_DAYS" -> Just RQRDRLast90Days
        "MONTH_TO_DATE" -> Just RQRDRMonthToDate
        "PREVIOUS_DAY" -> Just RQRDRPreviousDay
        "PREVIOUS_HALF_MONTH" -> Just RQRDRPreviousHalfMonth
        "PREVIOUS_MONTH" -> Just RQRDRPreviousMonth
        "PREVIOUS_QUARTER" -> Just RQRDRPreviousQuarter
        "PREVIOUS_WEEK" -> Just RQRDRPreviousWeek
        "PREVIOUS_YEAR" -> Just RQRDRPreviousYear
        "QUARTER_TO_DATE" -> Just RQRDRQuarterToDate
        "WEEK_TO_DATE" -> Just RQRDRWeekToDate
        "YEAR_TO_DATE" -> Just RQRDRYearToDate
        _ -> Nothing

instance ToText RunQueryRequestDataRange where
    toText = \case
        RQRDRAllTime -> "ALL_TIME"
        RQRDRCurrentDay -> "CURRENT_DAY"
        RQRDRCustomDates -> "CUSTOM_DATES"
        RQRDRLast14Days -> "LAST_14_DAYS"
        RQRDRLast30Days -> "LAST_30_DAYS"
        RQRDRLast365Days -> "LAST_365_DAYS"
        RQRDRLast7Days -> "LAST_7_DAYS"
        RQRDRLast90Days -> "LAST_90_DAYS"
        RQRDRMonthToDate -> "MONTH_TO_DATE"
        RQRDRPreviousDay -> "PREVIOUS_DAY"
        RQRDRPreviousHalfMonth -> "PREVIOUS_HALF_MONTH"
        RQRDRPreviousMonth -> "PREVIOUS_MONTH"
        RQRDRPreviousQuarter -> "PREVIOUS_QUARTER"
        RQRDRPreviousWeek -> "PREVIOUS_WEEK"
        RQRDRPreviousYear -> "PREVIOUS_YEAR"
        RQRDRQuarterToDate -> "QUARTER_TO_DATE"
        RQRDRWeekToDate -> "WEEK_TO_DATE"
        RQRDRYearToDate -> "YEAR_TO_DATE"

-- | Format the line items are in. Default to CSV.
data UploadLineItemsRequestFormat
    = ULIRFCSV
      -- ^ @CSV@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable UploadLineItemsRequestFormat

instance FromText UploadLineItemsRequestFormat where
    fromText = \case
        "CSV" -> Just ULIRFCSV
        _ -> Nothing

instance ToText UploadLineItemsRequestFormat where
    toText = \case
        ULIRFCSV -> "CSV"
