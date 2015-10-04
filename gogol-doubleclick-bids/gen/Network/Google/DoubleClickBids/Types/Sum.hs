{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.DoubleClickBids.Types.Sum
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.DoubleClickBids.Types.Sum where

import           Network.Google.Prelude

-- | How often the query is run.
data Frequency
    = Daily
      -- ^ @DAILY@
    | Monthly
      -- ^ @MONTHLY@
    | OneTime
      -- ^ @ONE_TIME@
    | Quarterly
      -- ^ @QUARTERLY@
    | SemiMonthly
      -- ^ @SEMI_MONTHLY@
    | Weekly
      -- ^ @WEEKLY@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable Frequency

instance FromText Frequency where
    fromText = \case
        "DAILY" -> Just Daily
        "MONTHLY" -> Just Monthly
        "ONE_TIME" -> Just OneTime
        "QUARTERLY" -> Just Quarterly
        "SEMI_MONTHLY" -> Just SemiMonthly
        "WEEKLY" -> Just Weekly
        _ -> Nothing

instance ToText Frequency where
    toText = \case
        Daily -> "DAILY"
        Monthly -> "MONTHLY"
        OneTime -> "ONE_TIME"
        Quarterly -> "QUARTERLY"
        SemiMonthly -> "SEMI_MONTHLY"
        Weekly -> "WEEKLY"

instance FromJSON Frequency where
    parseJSON = parseJSONText "Frequency"

instance ToJSON Frequency where
    toJSON = toJSONText

-- | The state of the report.
data State
    = SDone
      -- ^ @DONE@
    | SFailed
      -- ^ @FAILED@
    | SRunning
      -- ^ @RUNNING@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable State

instance FromText State where
    fromText = \case
        "DONE" -> Just SDone
        "FAILED" -> Just SFailed
        "RUNNING" -> Just SRunning
        _ -> Nothing

instance ToText State where
    toText = \case
        SDone -> "DONE"
        SFailed -> "FAILED"
        SRunning -> "RUNNING"

instance FromJSON State where
    parseJSON = parseJSONText "State"

instance ToJSON State where
    toJSON = toJSONText

data GroupBysItem
    = FilterActiveViewExpectedViewability
      -- ^ @FILTER_ACTIVE_VIEW_EXPECTED_VIEWABILITY@
    | FilterActivityId
      -- ^ @FILTER_ACTIVITY_ID@
    | FilterAdvertiser
      -- ^ @FILTER_ADVERTISER@
    | FilterAdvertiserCurrency
      -- ^ @FILTER_ADVERTISER_CURRENCY@
    | FilterAdvertiserTimezone
      -- ^ @FILTER_ADVERTISER_TIMEZONE@
    | FilterAdPosition
      -- ^ @FILTER_AD_POSITION@
    | FilterAge
      -- ^ @FILTER_AGE@
    | FilterBrandsafeChannelId
      -- ^ @FILTER_BRANDSAFE_CHANNEL_ID@
    | FilterBrowser
      -- ^ @FILTER_BROWSER@
    | FilterCampaignDailyFrequency
      -- ^ @FILTER_CAMPAIGN_DAILY_FREQUENCY@
    | FilterCarrier
      -- ^ @FILTER_CARRIER@
    | FilterChannelId
      -- ^ @FILTER_CHANNEL_ID@
    | FilterCity
      -- ^ @FILTER_CITY@
    | FilterConversionDelay
      -- ^ @FILTER_CONVERSION_DELAY@
    | FilterCountry
      -- ^ @FILTER_COUNTRY@
    | FilterCreativeId
      -- ^ @FILTER_CREATIVE_ID@
    | FilterCreativeSize
      -- ^ @FILTER_CREATIVE_SIZE@
    | FilterCreativeType
      -- ^ @FILTER_CREATIVE_TYPE@
    | FilterDataProvider
      -- ^ @FILTER_DATA_PROVIDER@
    | FilterDate
      -- ^ @FILTER_DATE@
    | FilterDayOfWeek
      -- ^ @FILTER_DAY_OF_WEEK@
    | FilterDma
      -- ^ @FILTER_DMA@
    | FilterExchangeId
      -- ^ @FILTER_EXCHANGE_ID@
    | FilterFloodlightPixelId
      -- ^ @FILTER_FLOODLIGHT_PIXEL_ID@
    | FilterGender
      -- ^ @FILTER_GENDER@
    | FilterInsertionOrder
      -- ^ @FILTER_INSERTION_ORDER@
    | FilterInventoryFormat
      -- ^ @FILTER_INVENTORY_FORMAT@
    | FilterInventorySource
      -- ^ @FILTER_INVENTORY_SOURCE@
    | FilterInventorySourceType
      -- ^ @FILTER_INVENTORY_SOURCE_TYPE@
    | FilterKeyword
      -- ^ @FILTER_KEYWORD@
    | FilterLineItem
      -- ^ @FILTER_LINE_ITEM@
    | FilterLineItemDailyFrequency
      -- ^ @FILTER_LINE_ITEM_DAILY_FREQUENCY@
    | FilterLineItemLifetimeFrequency
      -- ^ @FILTER_LINE_ITEM_LIFETIME_FREQUENCY@
    | FilterLineItemType
      -- ^ @FILTER_LINE_ITEM_TYPE@
    | FilterMobileDeviceMake
      -- ^ @FILTER_MOBILE_DEVICE_MAKE@
    | FilterMobileDeviceMakeModel
      -- ^ @FILTER_MOBILE_DEVICE_MAKE_MODEL@
    | FilterMobileDeviceType
      -- ^ @FILTER_MOBILE_DEVICE_TYPE@
    | FilterMobileGeo
      -- ^ @FILTER_MOBILE_GEO@
    | FilterMonth
      -- ^ @FILTER_MONTH@
    | FilterMraidSupport
      -- ^ @FILTER_MRAID_SUPPORT@
    | FilterNielsenAge
      -- ^ @FILTER_NIELSEN_AGE@
    | FilterNielsenCountryCode
      -- ^ @FILTER_NIELSEN_COUNTRY_CODE@
    | FilterNielsenDeviceId
      -- ^ @FILTER_NIELSEN_DEVICE_ID@
    | FilterNielsenGender
      -- ^ @FILTER_NIELSEN_GENDER@
    | FilterOrderId
      -- ^ @FILTER_ORDER_ID@
    | FilterOS
      -- ^ @FILTER_OS@
    | FilterPageCategory
      -- ^ @FILTER_PAGE_CATEGORY@
    | FilterPageLayout
      -- ^ @FILTER_PAGE_LAYOUT@
    | FilterPartner
      -- ^ @FILTER_PARTNER@
    | FilterPartnerCurrency
      -- ^ @FILTER_PARTNER_CURRENCY@
    | FilterPublicInventory
      -- ^ @FILTER_PUBLIC_INVENTORY@
    | FilterQuarter
      -- ^ @FILTER_QUARTER@
    | FilterRegion
      -- ^ @FILTER_REGION@
    | FilterRegularChannelId
      -- ^ @FILTER_REGULAR_CHANNEL_ID@
    | FilterSiteId
      -- ^ @FILTER_SITE_ID@
    | FilterSiteLanguage
      -- ^ @FILTER_SITE_LANGUAGE@
    | FilterTargetedUserList
      -- ^ @FILTER_TARGETED_USER_LIST@
    | FilterTimeOfDay
      -- ^ @FILTER_TIME_OF_DAY@
    | FilterTrueviewConversionType
      -- ^ @FILTER_TRUEVIEW_CONVERSION_TYPE@
    | FilterUnknown
      -- ^ @FILTER_UNKNOWN@
    | FilterUserList
      -- ^ @FILTER_USER_LIST@
    | FilterUserListFirstParty
      -- ^ @FILTER_USER_LIST_FIRST_PARTY@
    | FilterUserListThirdParty
      -- ^ @FILTER_USER_LIST_THIRD_PARTY@
    | FilterVideoAdPositionInStream
      -- ^ @FILTER_VIDEO_AD_POSITION_IN_STREAM@
    | FilterVideoCompanionSize
      -- ^ @FILTER_VIDEO_COMPANION_SIZE@
    | FilterVideoCompanionType
      -- ^ @FILTER_VIDEO_COMPANION_TYPE@
    | FilterVideoCreativeDuration
      -- ^ @FILTER_VIDEO_CREATIVE_DURATION@
    | FilterVideoCreativeDurationSkippable
      -- ^ @FILTER_VIDEO_CREATIVE_DURATION_SKIPPABLE@
    | FilterVideoDurationSeconds
      -- ^ @FILTER_VIDEO_DURATION_SECONDS@
    | FilterVideoFormatSupport
      -- ^ @FILTER_VIDEO_FORMAT_SUPPORT@
    | FilterVideoInventoryType
      -- ^ @FILTER_VIDEO_INVENTORY_TYPE@
    | FilterVideoPlayerSize
      -- ^ @FILTER_VIDEO_PLAYER_SIZE@
    | FilterVideoRatingTier
      -- ^ @FILTER_VIDEO_RATING_TIER@
    | FilterVideoSkippableSupport
      -- ^ @FILTER_VIDEO_SKIPPABLE_SUPPORT@
    | FilterVideoVpaidSupport
      -- ^ @FILTER_VIDEO_VPAID_SUPPORT@
    | FilterWeek
      -- ^ @FILTER_WEEK@
    | FilterYear
      -- ^ @FILTER_YEAR@
    | FilterYouTubeVertical
      -- ^ @FILTER_YOUTUBE_VERTICAL@
    | FilterZipCode
      -- ^ @FILTER_ZIP_CODE@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable GroupBysItem

instance FromText GroupBysItem where
    fromText = \case
        "FILTER_ACTIVE_VIEW_EXPECTED_VIEWABILITY" -> Just FilterActiveViewExpectedViewability
        "FILTER_ACTIVITY_ID" -> Just FilterActivityId
        "FILTER_ADVERTISER" -> Just FilterAdvertiser
        "FILTER_ADVERTISER_CURRENCY" -> Just FilterAdvertiserCurrency
        "FILTER_ADVERTISER_TIMEZONE" -> Just FilterAdvertiserTimezone
        "FILTER_AD_POSITION" -> Just FilterAdPosition
        "FILTER_AGE" -> Just FilterAge
        "FILTER_BRANDSAFE_CHANNEL_ID" -> Just FilterBrandsafeChannelId
        "FILTER_BROWSER" -> Just FilterBrowser
        "FILTER_CAMPAIGN_DAILY_FREQUENCY" -> Just FilterCampaignDailyFrequency
        "FILTER_CARRIER" -> Just FilterCarrier
        "FILTER_CHANNEL_ID" -> Just FilterChannelId
        "FILTER_CITY" -> Just FilterCity
        "FILTER_CONVERSION_DELAY" -> Just FilterConversionDelay
        "FILTER_COUNTRY" -> Just FilterCountry
        "FILTER_CREATIVE_ID" -> Just FilterCreativeId
        "FILTER_CREATIVE_SIZE" -> Just FilterCreativeSize
        "FILTER_CREATIVE_TYPE" -> Just FilterCreativeType
        "FILTER_DATA_PROVIDER" -> Just FilterDataProvider
        "FILTER_DATE" -> Just FilterDate
        "FILTER_DAY_OF_WEEK" -> Just FilterDayOfWeek
        "FILTER_DMA" -> Just FilterDma
        "FILTER_EXCHANGE_ID" -> Just FilterExchangeId
        "FILTER_FLOODLIGHT_PIXEL_ID" -> Just FilterFloodlightPixelId
        "FILTER_GENDER" -> Just FilterGender
        "FILTER_INSERTION_ORDER" -> Just FilterInsertionOrder
        "FILTER_INVENTORY_FORMAT" -> Just FilterInventoryFormat
        "FILTER_INVENTORY_SOURCE" -> Just FilterInventorySource
        "FILTER_INVENTORY_SOURCE_TYPE" -> Just FilterInventorySourceType
        "FILTER_KEYWORD" -> Just FilterKeyword
        "FILTER_LINE_ITEM" -> Just FilterLineItem
        "FILTER_LINE_ITEM_DAILY_FREQUENCY" -> Just FilterLineItemDailyFrequency
        "FILTER_LINE_ITEM_LIFETIME_FREQUENCY" -> Just FilterLineItemLifetimeFrequency
        "FILTER_LINE_ITEM_TYPE" -> Just FilterLineItemType
        "FILTER_MOBILE_DEVICE_MAKE" -> Just FilterMobileDeviceMake
        "FILTER_MOBILE_DEVICE_MAKE_MODEL" -> Just FilterMobileDeviceMakeModel
        "FILTER_MOBILE_DEVICE_TYPE" -> Just FilterMobileDeviceType
        "FILTER_MOBILE_GEO" -> Just FilterMobileGeo
        "FILTER_MONTH" -> Just FilterMonth
        "FILTER_MRAID_SUPPORT" -> Just FilterMraidSupport
        "FILTER_NIELSEN_AGE" -> Just FilterNielsenAge
        "FILTER_NIELSEN_COUNTRY_CODE" -> Just FilterNielsenCountryCode
        "FILTER_NIELSEN_DEVICE_ID" -> Just FilterNielsenDeviceId
        "FILTER_NIELSEN_GENDER" -> Just FilterNielsenGender
        "FILTER_ORDER_ID" -> Just FilterOrderId
        "FILTER_OS" -> Just FilterOS
        "FILTER_PAGE_CATEGORY" -> Just FilterPageCategory
        "FILTER_PAGE_LAYOUT" -> Just FilterPageLayout
        "FILTER_PARTNER" -> Just FilterPartner
        "FILTER_PARTNER_CURRENCY" -> Just FilterPartnerCurrency
        "FILTER_PUBLIC_INVENTORY" -> Just FilterPublicInventory
        "FILTER_QUARTER" -> Just FilterQuarter
        "FILTER_REGION" -> Just FilterRegion
        "FILTER_REGULAR_CHANNEL_ID" -> Just FilterRegularChannelId
        "FILTER_SITE_ID" -> Just FilterSiteId
        "FILTER_SITE_LANGUAGE" -> Just FilterSiteLanguage
        "FILTER_TARGETED_USER_LIST" -> Just FilterTargetedUserList
        "FILTER_TIME_OF_DAY" -> Just FilterTimeOfDay
        "FILTER_TRUEVIEW_CONVERSION_TYPE" -> Just FilterTrueviewConversionType
        "FILTER_UNKNOWN" -> Just FilterUnknown
        "FILTER_USER_LIST" -> Just FilterUserList
        "FILTER_USER_LIST_FIRST_PARTY" -> Just FilterUserListFirstParty
        "FILTER_USER_LIST_THIRD_PARTY" -> Just FilterUserListThirdParty
        "FILTER_VIDEO_AD_POSITION_IN_STREAM" -> Just FilterVideoAdPositionInStream
        "FILTER_VIDEO_COMPANION_SIZE" -> Just FilterVideoCompanionSize
        "FILTER_VIDEO_COMPANION_TYPE" -> Just FilterVideoCompanionType
        "FILTER_VIDEO_CREATIVE_DURATION" -> Just FilterVideoCreativeDuration
        "FILTER_VIDEO_CREATIVE_DURATION_SKIPPABLE" -> Just FilterVideoCreativeDurationSkippable
        "FILTER_VIDEO_DURATION_SECONDS" -> Just FilterVideoDurationSeconds
        "FILTER_VIDEO_FORMAT_SUPPORT" -> Just FilterVideoFormatSupport
        "FILTER_VIDEO_INVENTORY_TYPE" -> Just FilterVideoInventoryType
        "FILTER_VIDEO_PLAYER_SIZE" -> Just FilterVideoPlayerSize
        "FILTER_VIDEO_RATING_TIER" -> Just FilterVideoRatingTier
        "FILTER_VIDEO_SKIPPABLE_SUPPORT" -> Just FilterVideoSkippableSupport
        "FILTER_VIDEO_VPAID_SUPPORT" -> Just FilterVideoVpaidSupport
        "FILTER_WEEK" -> Just FilterWeek
        "FILTER_YEAR" -> Just FilterYear
        "FILTER_YOUTUBE_VERTICAL" -> Just FilterYouTubeVertical
        "FILTER_ZIP_CODE" -> Just FilterZipCode
        _ -> Nothing

instance ToText GroupBysItem where
    toText = \case
        FilterActiveViewExpectedViewability -> "FILTER_ACTIVE_VIEW_EXPECTED_VIEWABILITY"
        FilterActivityId -> "FILTER_ACTIVITY_ID"
        FilterAdvertiser -> "FILTER_ADVERTISER"
        FilterAdvertiserCurrency -> "FILTER_ADVERTISER_CURRENCY"
        FilterAdvertiserTimezone -> "FILTER_ADVERTISER_TIMEZONE"
        FilterAdPosition -> "FILTER_AD_POSITION"
        FilterAge -> "FILTER_AGE"
        FilterBrandsafeChannelId -> "FILTER_BRANDSAFE_CHANNEL_ID"
        FilterBrowser -> "FILTER_BROWSER"
        FilterCampaignDailyFrequency -> "FILTER_CAMPAIGN_DAILY_FREQUENCY"
        FilterCarrier -> "FILTER_CARRIER"
        FilterChannelId -> "FILTER_CHANNEL_ID"
        FilterCity -> "FILTER_CITY"
        FilterConversionDelay -> "FILTER_CONVERSION_DELAY"
        FilterCountry -> "FILTER_COUNTRY"
        FilterCreativeId -> "FILTER_CREATIVE_ID"
        FilterCreativeSize -> "FILTER_CREATIVE_SIZE"
        FilterCreativeType -> "FILTER_CREATIVE_TYPE"
        FilterDataProvider -> "FILTER_DATA_PROVIDER"
        FilterDate -> "FILTER_DATE"
        FilterDayOfWeek -> "FILTER_DAY_OF_WEEK"
        FilterDma -> "FILTER_DMA"
        FilterExchangeId -> "FILTER_EXCHANGE_ID"
        FilterFloodlightPixelId -> "FILTER_FLOODLIGHT_PIXEL_ID"
        FilterGender -> "FILTER_GENDER"
        FilterInsertionOrder -> "FILTER_INSERTION_ORDER"
        FilterInventoryFormat -> "FILTER_INVENTORY_FORMAT"
        FilterInventorySource -> "FILTER_INVENTORY_SOURCE"
        FilterInventorySourceType -> "FILTER_INVENTORY_SOURCE_TYPE"
        FilterKeyword -> "FILTER_KEYWORD"
        FilterLineItem -> "FILTER_LINE_ITEM"
        FilterLineItemDailyFrequency -> "FILTER_LINE_ITEM_DAILY_FREQUENCY"
        FilterLineItemLifetimeFrequency -> "FILTER_LINE_ITEM_LIFETIME_FREQUENCY"
        FilterLineItemType -> "FILTER_LINE_ITEM_TYPE"
        FilterMobileDeviceMake -> "FILTER_MOBILE_DEVICE_MAKE"
        FilterMobileDeviceMakeModel -> "FILTER_MOBILE_DEVICE_MAKE_MODEL"
        FilterMobileDeviceType -> "FILTER_MOBILE_DEVICE_TYPE"
        FilterMobileGeo -> "FILTER_MOBILE_GEO"
        FilterMonth -> "FILTER_MONTH"
        FilterMraidSupport -> "FILTER_MRAID_SUPPORT"
        FilterNielsenAge -> "FILTER_NIELSEN_AGE"
        FilterNielsenCountryCode -> "FILTER_NIELSEN_COUNTRY_CODE"
        FilterNielsenDeviceId -> "FILTER_NIELSEN_DEVICE_ID"
        FilterNielsenGender -> "FILTER_NIELSEN_GENDER"
        FilterOrderId -> "FILTER_ORDER_ID"
        FilterOS -> "FILTER_OS"
        FilterPageCategory -> "FILTER_PAGE_CATEGORY"
        FilterPageLayout -> "FILTER_PAGE_LAYOUT"
        FilterPartner -> "FILTER_PARTNER"
        FilterPartnerCurrency -> "FILTER_PARTNER_CURRENCY"
        FilterPublicInventory -> "FILTER_PUBLIC_INVENTORY"
        FilterQuarter -> "FILTER_QUARTER"
        FilterRegion -> "FILTER_REGION"
        FilterRegularChannelId -> "FILTER_REGULAR_CHANNEL_ID"
        FilterSiteId -> "FILTER_SITE_ID"
        FilterSiteLanguage -> "FILTER_SITE_LANGUAGE"
        FilterTargetedUserList -> "FILTER_TARGETED_USER_LIST"
        FilterTimeOfDay -> "FILTER_TIME_OF_DAY"
        FilterTrueviewConversionType -> "FILTER_TRUEVIEW_CONVERSION_TYPE"
        FilterUnknown -> "FILTER_UNKNOWN"
        FilterUserList -> "FILTER_USER_LIST"
        FilterUserListFirstParty -> "FILTER_USER_LIST_FIRST_PARTY"
        FilterUserListThirdParty -> "FILTER_USER_LIST_THIRD_PARTY"
        FilterVideoAdPositionInStream -> "FILTER_VIDEO_AD_POSITION_IN_STREAM"
        FilterVideoCompanionSize -> "FILTER_VIDEO_COMPANION_SIZE"
        FilterVideoCompanionType -> "FILTER_VIDEO_COMPANION_TYPE"
        FilterVideoCreativeDuration -> "FILTER_VIDEO_CREATIVE_DURATION"
        FilterVideoCreativeDurationSkippable -> "FILTER_VIDEO_CREATIVE_DURATION_SKIPPABLE"
        FilterVideoDurationSeconds -> "FILTER_VIDEO_DURATION_SECONDS"
        FilterVideoFormatSupport -> "FILTER_VIDEO_FORMAT_SUPPORT"
        FilterVideoInventoryType -> "FILTER_VIDEO_INVENTORY_TYPE"
        FilterVideoPlayerSize -> "FILTER_VIDEO_PLAYER_SIZE"
        FilterVideoRatingTier -> "FILTER_VIDEO_RATING_TIER"
        FilterVideoSkippableSupport -> "FILTER_VIDEO_SKIPPABLE_SUPPORT"
        FilterVideoVpaidSupport -> "FILTER_VIDEO_VPAID_SUPPORT"
        FilterWeek -> "FILTER_WEEK"
        FilterYear -> "FILTER_YEAR"
        FilterYouTubeVertical -> "FILTER_YOUTUBE_VERTICAL"
        FilterZipCode -> "FILTER_ZIP_CODE"

instance FromJSON GroupBysItem where
    parseJSON = parseJSONText "GroupBysItem"

instance ToJSON GroupBysItem where
    toJSON = toJSONText

-- | Report type.
data ParametersType
    = TypeActiveGrp
      -- ^ @TYPE_ACTIVE_GRP@
    | TypeAudienceComPosition
      -- ^ @TYPE_AUDIENCE_COMPOSITION@
    | TypeAudiencePerformance
      -- ^ @TYPE_AUDIENCE_PERFORMANCE@
    | TypeClientSafe
      -- ^ @TYPE_CLIENT_SAFE@
    | TypeComscoreVce
      -- ^ @TYPE_COMSCORE_VCE@
    | TypeCrossFee
      -- ^ @TYPE_CROSS_FEE@
    | TypeCrossPartner
      -- ^ @TYPE_CROSS_PARTNER@
    | TypeCrossPartnerThirdPartyDataProvider
      -- ^ @TYPE_CROSS_PARTNER_THIRD_PARTY_DATA_PROVIDER@
    | TypeEstimatedConversion
      -- ^ @TYPE_ESTIMATED_CONVERSION@
    | TypeFee
      -- ^ @TYPE_FEE@
    | TypeGeneral
      -- ^ @TYPE_GENERAL@
    | TypeInventoryAvailability
      -- ^ @TYPE_INVENTORY_AVAILABILITY@
    | TypeKeyword
      -- ^ @TYPE_KEYWORD@
    | TypeNielsenAudienceProfile
      -- ^ @TYPE_NIELSEN_AUDIENCE_PROFILE@
    | TypeNielsenDailyReachBuild
      -- ^ @TYPE_NIELSEN_DAILY_REACH_BUILD@
    | TypeNielsenSite
      -- ^ @TYPE_NIELSEN_SITE@
    | TypeOrderId
      -- ^ @TYPE_ORDER_ID@
    | TypePageCategory
      -- ^ @TYPE_PAGE_CATEGORY@
    | TypePixelLoad
      -- ^ @TYPE_PIXEL_LOAD@
    | TypeReachAndFrequency
      -- ^ @TYPE_REACH_AND_FREQUENCY@
    | TypeThirdPartyDataProvider
      -- ^ @TYPE_THIRD_PARTY_DATA_PROVIDER@
    | TypeTrueview
      -- ^ @TYPE_TRUEVIEW@
    | TypeTrueviewIar
      -- ^ @TYPE_TRUEVIEW_IAR@
    | TypeVerification
      -- ^ @TYPE_VERIFICATION@
    | TypeYouTubeVertical
      -- ^ @TYPE_YOUTUBE_VERTICAL@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable ParametersType

instance FromText ParametersType where
    fromText = \case
        "TYPE_ACTIVE_GRP" -> Just TypeActiveGrp
        "TYPE_AUDIENCE_COMPOSITION" -> Just TypeAudienceComPosition
        "TYPE_AUDIENCE_PERFORMANCE" -> Just TypeAudiencePerformance
        "TYPE_CLIENT_SAFE" -> Just TypeClientSafe
        "TYPE_COMSCORE_VCE" -> Just TypeComscoreVce
        "TYPE_CROSS_FEE" -> Just TypeCrossFee
        "TYPE_CROSS_PARTNER" -> Just TypeCrossPartner
        "TYPE_CROSS_PARTNER_THIRD_PARTY_DATA_PROVIDER" -> Just TypeCrossPartnerThirdPartyDataProvider
        "TYPE_ESTIMATED_CONVERSION" -> Just TypeEstimatedConversion
        "TYPE_FEE" -> Just TypeFee
        "TYPE_GENERAL" -> Just TypeGeneral
        "TYPE_INVENTORY_AVAILABILITY" -> Just TypeInventoryAvailability
        "TYPE_KEYWORD" -> Just TypeKeyword
        "TYPE_NIELSEN_AUDIENCE_PROFILE" -> Just TypeNielsenAudienceProfile
        "TYPE_NIELSEN_DAILY_REACH_BUILD" -> Just TypeNielsenDailyReachBuild
        "TYPE_NIELSEN_SITE" -> Just TypeNielsenSite
        "TYPE_ORDER_ID" -> Just TypeOrderId
        "TYPE_PAGE_CATEGORY" -> Just TypePageCategory
        "TYPE_PIXEL_LOAD" -> Just TypePixelLoad
        "TYPE_REACH_AND_FREQUENCY" -> Just TypeReachAndFrequency
        "TYPE_THIRD_PARTY_DATA_PROVIDER" -> Just TypeThirdPartyDataProvider
        "TYPE_TRUEVIEW" -> Just TypeTrueview
        "TYPE_TRUEVIEW_IAR" -> Just TypeTrueviewIar
        "TYPE_VERIFICATION" -> Just TypeVerification
        "TYPE_YOUTUBE_VERTICAL" -> Just TypeYouTubeVertical
        _ -> Nothing

instance ToText ParametersType where
    toText = \case
        TypeActiveGrp -> "TYPE_ACTIVE_GRP"
        TypeAudienceComPosition -> "TYPE_AUDIENCE_COMPOSITION"
        TypeAudiencePerformance -> "TYPE_AUDIENCE_PERFORMANCE"
        TypeClientSafe -> "TYPE_CLIENT_SAFE"
        TypeComscoreVce -> "TYPE_COMSCORE_VCE"
        TypeCrossFee -> "TYPE_CROSS_FEE"
        TypeCrossPartner -> "TYPE_CROSS_PARTNER"
        TypeCrossPartnerThirdPartyDataProvider -> "TYPE_CROSS_PARTNER_THIRD_PARTY_DATA_PROVIDER"
        TypeEstimatedConversion -> "TYPE_ESTIMATED_CONVERSION"
        TypeFee -> "TYPE_FEE"
        TypeGeneral -> "TYPE_GENERAL"
        TypeInventoryAvailability -> "TYPE_INVENTORY_AVAILABILITY"
        TypeKeyword -> "TYPE_KEYWORD"
        TypeNielsenAudienceProfile -> "TYPE_NIELSEN_AUDIENCE_PROFILE"
        TypeNielsenDailyReachBuild -> "TYPE_NIELSEN_DAILY_REACH_BUILD"
        TypeNielsenSite -> "TYPE_NIELSEN_SITE"
        TypeOrderId -> "TYPE_ORDER_ID"
        TypePageCategory -> "TYPE_PAGE_CATEGORY"
        TypePixelLoad -> "TYPE_PIXEL_LOAD"
        TypeReachAndFrequency -> "TYPE_REACH_AND_FREQUENCY"
        TypeThirdPartyDataProvider -> "TYPE_THIRD_PARTY_DATA_PROVIDER"
        TypeTrueview -> "TYPE_TRUEVIEW"
        TypeTrueviewIar -> "TYPE_TRUEVIEW_IAR"
        TypeVerification -> "TYPE_VERIFICATION"
        TypeYouTubeVertical -> "TYPE_YOUTUBE_VERTICAL"

instance FromJSON ParametersType where
    parseJSON = parseJSONText "ParametersType"

instance ToJSON ParametersType where
    toJSON = toJSONText

-- | Filter type used to filter line items to fetch.
data FilterType
    = AdvertiserId
      -- ^ @ADVERTISER_ID@
    | InsertionOrderId
      -- ^ @INSERTION_ORDER_ID@
    | LineItemId
      -- ^ @LINE_ITEM_ID@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable FilterType

instance FromText FilterType where
    fromText = \case
        "ADVERTISER_ID" -> Just AdvertiserId
        "INSERTION_ORDER_ID" -> Just InsertionOrderId
        "LINE_ITEM_ID" -> Just LineItemId
        _ -> Nothing

instance ToText FilterType where
    toText = \case
        AdvertiserId -> "ADVERTISER_ID"
        InsertionOrderId -> "INSERTION_ORDER_ID"
        LineItemId -> "LINE_ITEM_ID"

instance FromJSON FilterType where
    parseJSON = parseJSONText "FilterType"

instance ToJSON FilterType where
    toJSON = toJSONText

-- | Format of the generated report.
data Format
    = CSV
      -- ^ @CSV@
    | ExcelCSV
      -- ^ @EXCEL_CSV@
    | Xlsx
      -- ^ @XLSX@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable Format

instance FromText Format where
    fromText = \case
        "CSV" -> Just CSV
        "EXCEL_CSV" -> Just ExcelCSV
        "XLSX" -> Just Xlsx
        _ -> Nothing

instance ToText Format where
    toText = \case
        CSV -> "CSV"
        ExcelCSV -> "EXCEL_CSV"
        Xlsx -> "XLSX"

instance FromJSON Format where
    parseJSON = parseJSONText "Format"

instance ToJSON Format where
    toJSON = toJSONText

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

instance FromJSON UploadLineItemsRequestFormat where
    parseJSON = parseJSONText "UploadLineItemsRequestFormat"

instance ToJSON UploadLineItemsRequestFormat where
    toJSON = toJSONText

-- | Range of report data.
data DataRange
    = AllTime
      -- ^ @ALL_TIME@
    | CurrentDay
      -- ^ @CURRENT_DAY@
    | CustomDates
      -- ^ @CUSTOM_DATES@
    | Last14Days
      -- ^ @LAST_14_DAYS@
    | Last30Days
      -- ^ @LAST_30_DAYS@
    | Last365Days
      -- ^ @LAST_365_DAYS@
    | Last7Days
      -- ^ @LAST_7_DAYS@
    | Last90Days
      -- ^ @LAST_90_DAYS@
    | MonthToDate
      -- ^ @MONTH_TO_DATE@
    | PreviousDay
      -- ^ @PREVIOUS_DAY@
    | PreviousHalfMonth
      -- ^ @PREVIOUS_HALF_MONTH@
    | PreviousMonth
      -- ^ @PREVIOUS_MONTH@
    | PreviousQuarter
      -- ^ @PREVIOUS_QUARTER@
    | PreviousWeek
      -- ^ @PREVIOUS_WEEK@
    | PreviousYear
      -- ^ @PREVIOUS_YEAR@
    | QuarterToDate
      -- ^ @QUARTER_TO_DATE@
    | WeekToDate
      -- ^ @WEEK_TO_DATE@
    | YearToDate
      -- ^ @YEAR_TO_DATE@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable DataRange

instance FromText DataRange where
    fromText = \case
        "ALL_TIME" -> Just AllTime
        "CURRENT_DAY" -> Just CurrentDay
        "CUSTOM_DATES" -> Just CustomDates
        "LAST_14_DAYS" -> Just Last14Days
        "LAST_30_DAYS" -> Just Last30Days
        "LAST_365_DAYS" -> Just Last365Days
        "LAST_7_DAYS" -> Just Last7Days
        "LAST_90_DAYS" -> Just Last90Days
        "MONTH_TO_DATE" -> Just MonthToDate
        "PREVIOUS_DAY" -> Just PreviousDay
        "PREVIOUS_HALF_MONTH" -> Just PreviousHalfMonth
        "PREVIOUS_MONTH" -> Just PreviousMonth
        "PREVIOUS_QUARTER" -> Just PreviousQuarter
        "PREVIOUS_WEEK" -> Just PreviousWeek
        "PREVIOUS_YEAR" -> Just PreviousYear
        "QUARTER_TO_DATE" -> Just QuarterToDate
        "WEEK_TO_DATE" -> Just WeekToDate
        "YEAR_TO_DATE" -> Just YearToDate
        _ -> Nothing

instance ToText DataRange where
    toText = \case
        AllTime -> "ALL_TIME"
        CurrentDay -> "CURRENT_DAY"
        CustomDates -> "CUSTOM_DATES"
        Last14Days -> "LAST_14_DAYS"
        Last30Days -> "LAST_30_DAYS"
        Last365Days -> "LAST_365_DAYS"
        Last7Days -> "LAST_7_DAYS"
        Last90Days -> "LAST_90_DAYS"
        MonthToDate -> "MONTH_TO_DATE"
        PreviousDay -> "PREVIOUS_DAY"
        PreviousHalfMonth -> "PREVIOUS_HALF_MONTH"
        PreviousMonth -> "PREVIOUS_MONTH"
        PreviousQuarter -> "PREVIOUS_QUARTER"
        PreviousWeek -> "PREVIOUS_WEEK"
        PreviousYear -> "PREVIOUS_YEAR"
        QuarterToDate -> "QUARTER_TO_DATE"
        WeekToDate -> "WEEK_TO_DATE"
        YearToDate -> "YEAR_TO_DATE"

instance FromJSON DataRange where
    parseJSON = parseJSONText "DataRange"

instance ToJSON DataRange where
    toJSON = toJSONText

data MetricsItem
    = MetricBidRequests
      -- ^ @METRIC_BID_REQUESTS@
    | MetricBillableCostAdvertiser
      -- ^ @METRIC_BILLABLE_COST_ADVERTISER@
    | MetricBillableCostPartner
      -- ^ @METRIC_BILLABLE_COST_PARTNER@
    | MetricBillableCostUsd
      -- ^ @METRIC_BILLABLE_COST_USD@
    | MetricClicks
      -- ^ @METRIC_CLICKS@
    | MetricClickToPostClickConversionRate
      -- ^ @METRIC_CLICK_TO_POST_CLICK_CONVERSION_RATE@
    | MetricComscoreVceAudienceAvgFrequency
      -- ^ @METRIC_COMSCORE_VCE_AUDIENCE_AVG_FREQUENCY@
    | MetricComscoreVceAudienceImpressions
      -- ^ @METRIC_COMSCORE_VCE_AUDIENCE_IMPRESSIONS@
    | MetricComscoreVceAudienceImpressionsShare
      -- ^ @METRIC_COMSCORE_VCE_AUDIENCE_IMPRESSIONS_SHARE@
    | MetricComscoreVceAudienceReachPct
      -- ^ @METRIC_COMSCORE_VCE_AUDIENCE_REACH_PCT@
    | MetricComscoreVceAudienceSharePct
      -- ^ @METRIC_COMSCORE_VCE_AUDIENCE_SHARE_PCT@
    | MetricComscoreVceGrossRatingPoints
      -- ^ @METRIC_COMSCORE_VCE_GROSS_RATING_POINTS@
    | MetricComscoreVcePopulation
      -- ^ @METRIC_COMSCORE_VCE_POPULATION@
    | MetricComscoreVceUniqueAudience
      -- ^ @METRIC_COMSCORE_VCE_UNIQUE_AUDIENCE@
    | MetricConversionsPerMille
      -- ^ @METRIC_CONVERSIONS_PER_MILLE@
    | MetricCpmFEE1Advertiser
      -- ^ @METRIC_CPM_FEE1_ADVERTISER@
    | MetricCpmFEE1Partner
      -- ^ @METRIC_CPM_FEE1_PARTNER@
    | MetricCpmFEE1Usd
      -- ^ @METRIC_CPM_FEE1_USD@
    | MetricCpmFEE2Advertiser
      -- ^ @METRIC_CPM_FEE2_ADVERTISER@
    | MetricCpmFEE2Partner
      -- ^ @METRIC_CPM_FEE2_PARTNER@
    | MetricCpmFEE2Usd
      -- ^ @METRIC_CPM_FEE2_USD@
    | MetricCpmFEE3Advertiser
      -- ^ @METRIC_CPM_FEE3_ADVERTISER@
    | MetricCpmFEE3Partner
      -- ^ @METRIC_CPM_FEE3_PARTNER@
    | MetricCpmFEE3Usd
      -- ^ @METRIC_CPM_FEE3_USD@
    | MetricCpmFEE4Advertiser
      -- ^ @METRIC_CPM_FEE4_ADVERTISER@
    | MetricCpmFEE4Partner
      -- ^ @METRIC_CPM_FEE4_PARTNER@
    | MetricCpmFEE4Usd
      -- ^ @METRIC_CPM_FEE4_USD@
    | MetricCpmFEE5Advertiser
      -- ^ @METRIC_CPM_FEE5_ADVERTISER@
    | MetricCpmFEE5Partner
      -- ^ @METRIC_CPM_FEE5_PARTNER@
    | MetricCpmFEE5Usd
      -- ^ @METRIC_CPM_FEE5_USD@
    | MetricCtr
      -- ^ @METRIC_CTR@
    | MetricDataCostAdvertiser
      -- ^ @METRIC_DATA_COST_ADVERTISER@
    | MetricDataCostPartner
      -- ^ @METRIC_DATA_COST_PARTNER@
    | MetricDataCostUsd
      -- ^ @METRIC_DATA_COST_USD@
    | MetricFEE10Advertiser
      -- ^ @METRIC_FEE10_ADVERTISER@
    | MetricFEE10Partner
      -- ^ @METRIC_FEE10_PARTNER@
    | MetricFEE10Usd
      -- ^ @METRIC_FEE10_USD@
    | MetricFEE11Advertiser
      -- ^ @METRIC_FEE11_ADVERTISER@
    | MetricFEE11Partner
      -- ^ @METRIC_FEE11_PARTNER@
    | MetricFEE11Usd
      -- ^ @METRIC_FEE11_USD@
    | MetricFEE12Advertiser
      -- ^ @METRIC_FEE12_ADVERTISER@
    | MetricFEE12Partner
      -- ^ @METRIC_FEE12_PARTNER@
    | MetricFEE12Usd
      -- ^ @METRIC_FEE12_USD@
    | MetricFEE13Advertiser
      -- ^ @METRIC_FEE13_ADVERTISER@
    | MetricFEE13Partner
      -- ^ @METRIC_FEE13_PARTNER@
    | MetricFEE13Usd
      -- ^ @METRIC_FEE13_USD@
    | MetricFEE14Advertiser
      -- ^ @METRIC_FEE14_ADVERTISER@
    | MetricFEE14Partner
      -- ^ @METRIC_FEE14_PARTNER@
    | MetricFEE14Usd
      -- ^ @METRIC_FEE14_USD@
    | MetricFEE15Advertiser
      -- ^ @METRIC_FEE15_ADVERTISER@
    | MetricFEE15Partner
      -- ^ @METRIC_FEE15_PARTNER@
    | MetricFEE15Usd
      -- ^ @METRIC_FEE15_USD@
    | MetricFEE16Advertiser
      -- ^ @METRIC_FEE16_ADVERTISER@
    | MetricFEE16Partner
      -- ^ @METRIC_FEE16_PARTNER@
    | MetricFEE16Usd
      -- ^ @METRIC_FEE16_USD@
    | MetricFEE17Advertiser
      -- ^ @METRIC_FEE17_ADVERTISER@
    | MetricFEE17Partner
      -- ^ @METRIC_FEE17_PARTNER@
    | MetricFEE17Usd
      -- ^ @METRIC_FEE17_USD@
    | MetricFEE18Advertiser
      -- ^ @METRIC_FEE18_ADVERTISER@
    | MetricFEE18Partner
      -- ^ @METRIC_FEE18_PARTNER@
    | MetricFEE18Usd
      -- ^ @METRIC_FEE18_USD@
    | MetricFEE19Advertiser
      -- ^ @METRIC_FEE19_ADVERTISER@
    | MetricFEE19Partner
      -- ^ @METRIC_FEE19_PARTNER@
    | MetricFEE19Usd
      -- ^ @METRIC_FEE19_USD@
    | MetricFEE20Advertiser
      -- ^ @METRIC_FEE20_ADVERTISER@
    | MetricFEE20Partner
      -- ^ @METRIC_FEE20_PARTNER@
    | MetricFEE20Usd
      -- ^ @METRIC_FEE20_USD@
    | MetricFEE2Advertiser
      -- ^ @METRIC_FEE2_ADVERTISER@
    | MetricFEE2Partner
      -- ^ @METRIC_FEE2_PARTNER@
    | MetricFEE2Usd
      -- ^ @METRIC_FEE2_USD@
    | MetricFEE3Advertiser
      -- ^ @METRIC_FEE3_ADVERTISER@
    | MetricFEE3Partner
      -- ^ @METRIC_FEE3_PARTNER@
    | MetricFEE3Usd
      -- ^ @METRIC_FEE3_USD@
    | MetricFEE4Advertiser
      -- ^ @METRIC_FEE4_ADVERTISER@
    | MetricFEE4Partner
      -- ^ @METRIC_FEE4_PARTNER@
    | MetricFEE4Usd
      -- ^ @METRIC_FEE4_USD@
    | MetricFEE5Advertiser
      -- ^ @METRIC_FEE5_ADVERTISER@
    | MetricFEE5Partner
      -- ^ @METRIC_FEE5_PARTNER@
    | MetricFEE5Usd
      -- ^ @METRIC_FEE5_USD@
    | MetricFEE6Advertiser
      -- ^ @METRIC_FEE6_ADVERTISER@
    | MetricFEE6Partner
      -- ^ @METRIC_FEE6_PARTNER@
    | MetricFEE6Usd
      -- ^ @METRIC_FEE6_USD@
    | MetricFEE7Advertiser
      -- ^ @METRIC_FEE7_ADVERTISER@
    | MetricFEE7Partner
      -- ^ @METRIC_FEE7_PARTNER@
    | MetricFEE7Usd
      -- ^ @METRIC_FEE7_USD@
    | MetricFEE8Advertiser
      -- ^ @METRIC_FEE8_ADVERTISER@
    | MetricFEE8Partner
      -- ^ @METRIC_FEE8_PARTNER@
    | MetricFEE8Usd
      -- ^ @METRIC_FEE8_USD@
    | MetricFEE9Advertiser
      -- ^ @METRIC_FEE9_ADVERTISER@
    | MetricFEE9Partner
      -- ^ @METRIC_FEE9_PARTNER@
    | MetricFEE9Usd
      -- ^ @METRIC_FEE9_USD@
    | MetricImpressions
      -- ^ @METRIC_IMPRESSIONS@
    | MetricImpressionsToConversionRate
      -- ^ @METRIC_IMPRESSIONS_TO_CONVERSION_RATE@
    | MetricLastClicks
      -- ^ @METRIC_LAST_CLICKS@
    | MetricLastImpressions
      -- ^ @METRIC_LAST_IMPRESSIONS@
    | MetricMediaCostAdvertiser
      -- ^ @METRIC_MEDIA_COST_ADVERTISER@
    | MetricMediaCostEcpapcAdvertiser
      -- ^ @METRIC_MEDIA_COST_ECPAPC_ADVERTISER@
    | MetricMediaCostEcpapcPartner
      -- ^ @METRIC_MEDIA_COST_ECPAPC_PARTNER@
    | MetricMediaCostEcpapcUsd
      -- ^ @METRIC_MEDIA_COST_ECPAPC_USD@
    | MetricMediaCostEcpapvAdvertiser
      -- ^ @METRIC_MEDIA_COST_ECPAPV_ADVERTISER@
    | MetricMediaCostEcpapvPartner
      -- ^ @METRIC_MEDIA_COST_ECPAPV_PARTNER@
    | MetricMediaCostEcpapvUsd
      -- ^ @METRIC_MEDIA_COST_ECPAPV_USD@
    | MetricMediaCostEcpaAdvertiser
      -- ^ @METRIC_MEDIA_COST_ECPA_ADVERTISER@
    | MetricMediaCostEcpaPartner
      -- ^ @METRIC_MEDIA_COST_ECPA_PARTNER@
    | MetricMediaCostEcpaUsd
      -- ^ @METRIC_MEDIA_COST_ECPA_USD@
    | MetricMediaCostEcpcvAdvertiser
      -- ^ @METRIC_MEDIA_COST_ECPCV_ADVERTISER@
    | MetricMediaCostEcpcvPartner
      -- ^ @METRIC_MEDIA_COST_ECPCV_PARTNER@
    | MetricMediaCostEcpcvUsd
      -- ^ @METRIC_MEDIA_COST_ECPCV_USD@
    | MetricMediaCostEcpcAdvertiser
      -- ^ @METRIC_MEDIA_COST_ECPC_ADVERTISER@
    | MetricMediaCostEcpcPartner
      -- ^ @METRIC_MEDIA_COST_ECPC_PARTNER@
    | MetricMediaCostEcpcUsd
      -- ^ @METRIC_MEDIA_COST_ECPC_USD@
    | MetricMediaCostEcpmAdvertiser
      -- ^ @METRIC_MEDIA_COST_ECPM_ADVERTISER@
    | MetricMediaCostEcpmPartner
      -- ^ @METRIC_MEDIA_COST_ECPM_PARTNER@
    | MetricMediaCostEcpmUsd
      -- ^ @METRIC_MEDIA_COST_ECPM_USD@
    | MetricMediaCostPartner
      -- ^ @METRIC_MEDIA_COST_PARTNER@
    | MetricMediaCostUsd
      -- ^ @METRIC_MEDIA_COST_USD@
    | MetricMediaFEE1Advertiser
      -- ^ @METRIC_MEDIA_FEE1_ADVERTISER@
    | MetricMediaFEE1Partner
      -- ^ @METRIC_MEDIA_FEE1_PARTNER@
    | MetricMediaFEE1Usd
      -- ^ @METRIC_MEDIA_FEE1_USD@
    | MetricMediaFEE2Advertiser
      -- ^ @METRIC_MEDIA_FEE2_ADVERTISER@
    | MetricMediaFEE2Partner
      -- ^ @METRIC_MEDIA_FEE2_PARTNER@
    | MetricMediaFEE2Usd
      -- ^ @METRIC_MEDIA_FEE2_USD@
    | MetricMediaFEE3Advertiser
      -- ^ @METRIC_MEDIA_FEE3_ADVERTISER@
    | MetricMediaFEE3Partner
      -- ^ @METRIC_MEDIA_FEE3_PARTNER@
    | MetricMediaFEE3Usd
      -- ^ @METRIC_MEDIA_FEE3_USD@
    | MetricMediaFEE4Advertiser
      -- ^ @METRIC_MEDIA_FEE4_ADVERTISER@
    | MetricMediaFEE4Partner
      -- ^ @METRIC_MEDIA_FEE4_PARTNER@
    | MetricMediaFEE4Usd
      -- ^ @METRIC_MEDIA_FEE4_USD@
    | MetricMediaFEE5Advertiser
      -- ^ @METRIC_MEDIA_FEE5_ADVERTISER@
    | MetricMediaFEE5Partner
      -- ^ @METRIC_MEDIA_FEE5_PARTNER@
    | MetricMediaFEE5Usd
      -- ^ @METRIC_MEDIA_FEE5_USD@
    | MetricPixelLoads
      -- ^ @METRIC_PIXEL_LOADS@
    | MetricPlatformFeeAdvertiser
      -- ^ @METRIC_PLATFORM_FEE_ADVERTISER@
    | MetricPlatformFeePartner
      -- ^ @METRIC_PLATFORM_FEE_PARTNER@
    | MetricPlatformFeeUsd
      -- ^ @METRIC_PLATFORM_FEE_USD@
    | MetricPostClickDfaRevenue
      -- ^ @METRIC_POST_CLICK_DFA_REVENUE@
    | MetricPostViewDfaRevenue
      -- ^ @METRIC_POST_VIEW_DFA_REVENUE@
    | MetricProfitAdvertiser
      -- ^ @METRIC_PROFIT_ADVERTISER@
    | MetricProfitEcpapcAdvertiser
      -- ^ @METRIC_PROFIT_ECPAPC_ADVERTISER@
    | MetricProfitEcpapcPartner
      -- ^ @METRIC_PROFIT_ECPAPC_PARTNER@
    | MetricProfitEcpapcUsd
      -- ^ @METRIC_PROFIT_ECPAPC_USD@
    | MetricProfitEcpapvAdvertiser
      -- ^ @METRIC_PROFIT_ECPAPV_ADVERTISER@
    | MetricProfitEcpapvPartner
      -- ^ @METRIC_PROFIT_ECPAPV_PARTNER@
    | MetricProfitEcpapvUsd
      -- ^ @METRIC_PROFIT_ECPAPV_USD@
    | MetricProfitEcpaAdvertiser
      -- ^ @METRIC_PROFIT_ECPA_ADVERTISER@
    | MetricProfitEcpaPartner
      -- ^ @METRIC_PROFIT_ECPA_PARTNER@
    | MetricProfitEcpaUsd
      -- ^ @METRIC_PROFIT_ECPA_USD@
    | MetricProfitEcpcAdvertiser
      -- ^ @METRIC_PROFIT_ECPC_ADVERTISER@
    | MetricProfitEcpcPartner
      -- ^ @METRIC_PROFIT_ECPC_PARTNER@
    | MetricProfitEcpcUsd
      -- ^ @METRIC_PROFIT_ECPC_USD@
    | MetricProfitEcpmAdvertiser
      -- ^ @METRIC_PROFIT_ECPM_ADVERTISER@
    | MetricProfitEcpmPartner
      -- ^ @METRIC_PROFIT_ECPM_PARTNER@
    | MetricProfitEcpmUsd
      -- ^ @METRIC_PROFIT_ECPM_USD@
    | MetricProfitMargin
      -- ^ @METRIC_PROFIT_MARGIN@
    | MetricProfitPartner
      -- ^ @METRIC_PROFIT_PARTNER@
    | MetricProfitUsd
      -- ^ @METRIC_PROFIT_USD@
    | MetricRevenueAdvertiser
      -- ^ @METRIC_REVENUE_ADVERTISER@
    | MetricRevenueEcpapcAdvertiser
      -- ^ @METRIC_REVENUE_ECPAPC_ADVERTISER@
    | MetricRevenueEcpapcPartner
      -- ^ @METRIC_REVENUE_ECPAPC_PARTNER@
    | MetricRevenueEcpapcUsd
      -- ^ @METRIC_REVENUE_ECPAPC_USD@
    | MetricRevenueEcpapvAdvertiser
      -- ^ @METRIC_REVENUE_ECPAPV_ADVERTISER@
    | MetricRevenueEcpapvPartner
      -- ^ @METRIC_REVENUE_ECPAPV_PARTNER@
    | MetricRevenueEcpapvUsd
      -- ^ @METRIC_REVENUE_ECPAPV_USD@
    | MetricRevenueEcpaAdvertiser
      -- ^ @METRIC_REVENUE_ECPA_ADVERTISER@
    | MetricRevenueEcpaPartner
      -- ^ @METRIC_REVENUE_ECPA_PARTNER@
    | MetricRevenueEcpaUsd
      -- ^ @METRIC_REVENUE_ECPA_USD@
    | MetricRevenueEcpcvAdvertiser
      -- ^ @METRIC_REVENUE_ECPCV_ADVERTISER@
    | MetricRevenueEcpcvPartner
      -- ^ @METRIC_REVENUE_ECPCV_PARTNER@
    | MetricRevenueEcpcvUsd
      -- ^ @METRIC_REVENUE_ECPCV_USD@
    | MetricRevenueEcpcAdvertiser
      -- ^ @METRIC_REVENUE_ECPC_ADVERTISER@
    | MetricRevenueEcpcPartner
      -- ^ @METRIC_REVENUE_ECPC_PARTNER@
    | MetricRevenueEcpcUsd
      -- ^ @METRIC_REVENUE_ECPC_USD@
    | MetricRevenueEcpmAdvertiser
      -- ^ @METRIC_REVENUE_ECPM_ADVERTISER@
    | MetricRevenueEcpmPartner
      -- ^ @METRIC_REVENUE_ECPM_PARTNER@
    | MetricRevenueEcpmUsd
      -- ^ @METRIC_REVENUE_ECPM_USD@
    | MetricRevenuePartner
      -- ^ @METRIC_REVENUE_PARTNER@
    | MetricRevenueUsd
      -- ^ @METRIC_REVENUE_USD@
    | MetricRichMediaVideoCompletions
      -- ^ @METRIC_RICH_MEDIA_VIDEO_COMPLETIONS@
    | MetricRichMediaVideoFirstQuartileCompletes
      -- ^ @METRIC_RICH_MEDIA_VIDEO_FIRST_QUARTILE_COMPLETES@
    | MetricRichMediaVideoFullScreens
      -- ^ @METRIC_RICH_MEDIA_VIDEO_FULL_SCREENS@
    | MetricRichMediaVideoMidpoints
      -- ^ @METRIC_RICH_MEDIA_VIDEO_MIDPOINTS@
    | MetricRichMediaVideoMutes
      -- ^ @METRIC_RICH_MEDIA_VIDEO_MUTES@
    | MetricRichMediaVideoPauses
      -- ^ @METRIC_RICH_MEDIA_VIDEO_PAUSES@
    | MetricRichMediaVideoPlays
      -- ^ @METRIC_RICH_MEDIA_VIDEO_PLAYS@
    | MetricRichMediaVideoSkips
      -- ^ @METRIC_RICH_MEDIA_VIDEO_SKIPS@
    | MetricRichMediaVideoThirdQuartileCompletes
      -- ^ @METRIC_RICH_MEDIA_VIDEO_THIRD_QUARTILE_COMPLETES@
    | MetricTeaTrueviewImpressions
      -- ^ @METRIC_TEA_TRUEVIEW_IMPRESSIONS@
    | MetricTeaTrueviewUniqueCookies
      -- ^ @METRIC_TEA_TRUEVIEW_UNIQUE_COOKIES@
    | MetricTeaTrueviewUniquePeople
      -- ^ @METRIC_TEA_TRUEVIEW_UNIQUE_PEOPLE@
    | MetricTotalConversions
      -- ^ @METRIC_TOTAL_CONVERSIONS@
    | MetricTotalMediaCostAdvertiser
      -- ^ @METRIC_TOTAL_MEDIA_COST_ADVERTISER@
    | MetricTotalMediaCostEcpapcAdvertiser
      -- ^ @METRIC_TOTAL_MEDIA_COST_ECPAPC_ADVERTISER@
    | MetricTotalMediaCostEcpapcPartner
      -- ^ @METRIC_TOTAL_MEDIA_COST_ECPAPC_PARTNER@
    | MetricTotalMediaCostEcpapcUsd
      -- ^ @METRIC_TOTAL_MEDIA_COST_ECPAPC_USD@
    | MetricTotalMediaCostEcpapvAdvertiser
      -- ^ @METRIC_TOTAL_MEDIA_COST_ECPAPV_ADVERTISER@
    | MetricTotalMediaCostEcpapvPartner
      -- ^ @METRIC_TOTAL_MEDIA_COST_ECPAPV_PARTNER@
    | MetricTotalMediaCostEcpapvUsd
      -- ^ @METRIC_TOTAL_MEDIA_COST_ECPAPV_USD@
    | MetricTotalMediaCostEcpaAdvertiser
      -- ^ @METRIC_TOTAL_MEDIA_COST_ECPA_ADVERTISER@
    | MetricTotalMediaCostEcpaPartner
      -- ^ @METRIC_TOTAL_MEDIA_COST_ECPA_PARTNER@
    | MetricTotalMediaCostEcpaUsd
      -- ^ @METRIC_TOTAL_MEDIA_COST_ECPA_USD@
    | MetricTotalMediaCostEcpcvAdvertiser
      -- ^ @METRIC_TOTAL_MEDIA_COST_ECPCV_ADVERTISER@
    | MetricTotalMediaCostEcpcvPartner
      -- ^ @METRIC_TOTAL_MEDIA_COST_ECPCV_PARTNER@
    | MetricTotalMediaCostEcpcvUsd
      -- ^ @METRIC_TOTAL_MEDIA_COST_ECPCV_USD@
    | MetricTotalMediaCostEcpcAdvertiser
      -- ^ @METRIC_TOTAL_MEDIA_COST_ECPC_ADVERTISER@
    | MetricTotalMediaCostEcpcPartner
      -- ^ @METRIC_TOTAL_MEDIA_COST_ECPC_PARTNER@
    | MetricTotalMediaCostEcpcUsd
      -- ^ @METRIC_TOTAL_MEDIA_COST_ECPC_USD@
    | MetricTotalMediaCostEcpmAdvertiser
      -- ^ @METRIC_TOTAL_MEDIA_COST_ECPM_ADVERTISER@
    | MetricTotalMediaCostEcpmPartner
      -- ^ @METRIC_TOTAL_MEDIA_COST_ECPM_PARTNER@
    | MetricTotalMediaCostEcpmUsd
      -- ^ @METRIC_TOTAL_MEDIA_COST_ECPM_USD@
    | MetricTotalMediaCostPartner
      -- ^ @METRIC_TOTAL_MEDIA_COST_PARTNER@
    | MetricTotalMediaCostUsd
      -- ^ @METRIC_TOTAL_MEDIA_COST_USD@
    | MetricTrueviewConversionManyPerView
      -- ^ @METRIC_TRUEVIEW_CONVERSION_MANY_PER_VIEW@
    | MetricTrueviewConversionOnePerView
      -- ^ @METRIC_TRUEVIEW_CONVERSION_ONE_PER_VIEW@
    | MetricTrueviewConversionRateOnePerView
      -- ^ @METRIC_TRUEVIEW_CONVERSION_RATE_ONE_PER_VIEW@
    | MetricTrueviewCostConversionManyPerViewRatio
      -- ^ @METRIC_TRUEVIEW_COST_CONVERSION_MANY_PER_VIEW_RATIO@
    | MetricTrueviewCostConversionOnePerViewRatio
      -- ^ @METRIC_TRUEVIEW_COST_CONVERSION_ONE_PER_VIEW_RATIO@
    | MetricTrueviewCpvAdvertiser
      -- ^ @METRIC_TRUEVIEW_CPV_ADVERTISER@
    | MetricTrueviewCpvPartner
      -- ^ @METRIC_TRUEVIEW_CPV_PARTNER@
    | MetricTrueviewCpvUsd
      -- ^ @METRIC_TRUEVIEW_CPV_USD@
    | MetricTrueviewEarnedLikes
      -- ^ @METRIC_TRUEVIEW_EARNED_LIKES@
    | MetricTrueviewEarnedPlayListAdditions
      -- ^ @METRIC_TRUEVIEW_EARNED_PLAYLIST_ADDITIONS@
    | MetricTrueviewEarnedShares
      -- ^ @METRIC_TRUEVIEW_EARNED_SHARES@
    | MetricTrueviewEarnedSubscribers
      -- ^ @METRIC_TRUEVIEW_EARNED_SUBSCRIBERS@
    | MetricTrueviewEarnedViews
      -- ^ @METRIC_TRUEVIEW_EARNED_VIEWS@
    | MetricTrueviewImpressionShare
      -- ^ @METRIC_TRUEVIEW_IMPRESSION_SHARE@
    | MetricTrueviewLostIsBudget
      -- ^ @METRIC_TRUEVIEW_LOST_IS_BUDGET@
    | MetricTrueviewLostIsRank
      -- ^ @METRIC_TRUEVIEW_LOST_IS_RANK@
    | MetricTrueviewTotalConversionValue
      -- ^ @METRIC_TRUEVIEW_TOTAL_CONVERSION_VALUE@
    | MetricTrueviewUniqueViewers
      -- ^ @METRIC_TRUEVIEW_UNIQUE_VIEWERS@
    | MetricTrueviewValueConversionManyPerViewRatio
      -- ^ @METRIC_TRUEVIEW_VALUE_CONVERSION_MANY_PER_VIEW_RATIO@
    | MetricTrueviewValueConversionOnePerViewRatio
      -- ^ @METRIC_TRUEVIEW_VALUE_CONVERSION_ONE_PER_VIEW_RATIO@
    | MetricTrueviewViews
      -- ^ @METRIC_TRUEVIEW_VIEWS@
    | MetricTrueviewViewRate
      -- ^ @METRIC_TRUEVIEW_VIEW_RATE@
    | MetricTrueviewViewThroughConversion
      -- ^ @METRIC_TRUEVIEW_VIEW_THROUGH_CONVERSION@
    | MetricUniqueVisitorsCookies
      -- ^ @METRIC_UNIQUE_VISITORS_COOKIES@
    | MetricUnknown
      -- ^ @METRIC_UNKNOWN@
    | MetricVideoCompanionClicks
      -- ^ @METRIC_VIDEO_COMPANION_CLICKS@
    | MetricVideoCompanionImpressions
      -- ^ @METRIC_VIDEO_COMPANION_IMPRESSIONS@
    | MetricVideoCompletionRate
      -- ^ @METRIC_VIDEO_COMPLETION_RATE@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable MetricsItem

instance FromText MetricsItem where
    fromText = \case
        "METRIC_BID_REQUESTS" -> Just MetricBidRequests
        "METRIC_BILLABLE_COST_ADVERTISER" -> Just MetricBillableCostAdvertiser
        "METRIC_BILLABLE_COST_PARTNER" -> Just MetricBillableCostPartner
        "METRIC_BILLABLE_COST_USD" -> Just MetricBillableCostUsd
        "METRIC_CLICKS" -> Just MetricClicks
        "METRIC_CLICK_TO_POST_CLICK_CONVERSION_RATE" -> Just MetricClickToPostClickConversionRate
        "METRIC_COMSCORE_VCE_AUDIENCE_AVG_FREQUENCY" -> Just MetricComscoreVceAudienceAvgFrequency
        "METRIC_COMSCORE_VCE_AUDIENCE_IMPRESSIONS" -> Just MetricComscoreVceAudienceImpressions
        "METRIC_COMSCORE_VCE_AUDIENCE_IMPRESSIONS_SHARE" -> Just MetricComscoreVceAudienceImpressionsShare
        "METRIC_COMSCORE_VCE_AUDIENCE_REACH_PCT" -> Just MetricComscoreVceAudienceReachPct
        "METRIC_COMSCORE_VCE_AUDIENCE_SHARE_PCT" -> Just MetricComscoreVceAudienceSharePct
        "METRIC_COMSCORE_VCE_GROSS_RATING_POINTS" -> Just MetricComscoreVceGrossRatingPoints
        "METRIC_COMSCORE_VCE_POPULATION" -> Just MetricComscoreVcePopulation
        "METRIC_COMSCORE_VCE_UNIQUE_AUDIENCE" -> Just MetricComscoreVceUniqueAudience
        "METRIC_CONVERSIONS_PER_MILLE" -> Just MetricConversionsPerMille
        "METRIC_CPM_FEE1_ADVERTISER" -> Just MetricCpmFEE1Advertiser
        "METRIC_CPM_FEE1_PARTNER" -> Just MetricCpmFEE1Partner
        "METRIC_CPM_FEE1_USD" -> Just MetricCpmFEE1Usd
        "METRIC_CPM_FEE2_ADVERTISER" -> Just MetricCpmFEE2Advertiser
        "METRIC_CPM_FEE2_PARTNER" -> Just MetricCpmFEE2Partner
        "METRIC_CPM_FEE2_USD" -> Just MetricCpmFEE2Usd
        "METRIC_CPM_FEE3_ADVERTISER" -> Just MetricCpmFEE3Advertiser
        "METRIC_CPM_FEE3_PARTNER" -> Just MetricCpmFEE3Partner
        "METRIC_CPM_FEE3_USD" -> Just MetricCpmFEE3Usd
        "METRIC_CPM_FEE4_ADVERTISER" -> Just MetricCpmFEE4Advertiser
        "METRIC_CPM_FEE4_PARTNER" -> Just MetricCpmFEE4Partner
        "METRIC_CPM_FEE4_USD" -> Just MetricCpmFEE4Usd
        "METRIC_CPM_FEE5_ADVERTISER" -> Just MetricCpmFEE5Advertiser
        "METRIC_CPM_FEE5_PARTNER" -> Just MetricCpmFEE5Partner
        "METRIC_CPM_FEE5_USD" -> Just MetricCpmFEE5Usd
        "METRIC_CTR" -> Just MetricCtr
        "METRIC_DATA_COST_ADVERTISER" -> Just MetricDataCostAdvertiser
        "METRIC_DATA_COST_PARTNER" -> Just MetricDataCostPartner
        "METRIC_DATA_COST_USD" -> Just MetricDataCostUsd
        "METRIC_FEE10_ADVERTISER" -> Just MetricFEE10Advertiser
        "METRIC_FEE10_PARTNER" -> Just MetricFEE10Partner
        "METRIC_FEE10_USD" -> Just MetricFEE10Usd
        "METRIC_FEE11_ADVERTISER" -> Just MetricFEE11Advertiser
        "METRIC_FEE11_PARTNER" -> Just MetricFEE11Partner
        "METRIC_FEE11_USD" -> Just MetricFEE11Usd
        "METRIC_FEE12_ADVERTISER" -> Just MetricFEE12Advertiser
        "METRIC_FEE12_PARTNER" -> Just MetricFEE12Partner
        "METRIC_FEE12_USD" -> Just MetricFEE12Usd
        "METRIC_FEE13_ADVERTISER" -> Just MetricFEE13Advertiser
        "METRIC_FEE13_PARTNER" -> Just MetricFEE13Partner
        "METRIC_FEE13_USD" -> Just MetricFEE13Usd
        "METRIC_FEE14_ADVERTISER" -> Just MetricFEE14Advertiser
        "METRIC_FEE14_PARTNER" -> Just MetricFEE14Partner
        "METRIC_FEE14_USD" -> Just MetricFEE14Usd
        "METRIC_FEE15_ADVERTISER" -> Just MetricFEE15Advertiser
        "METRIC_FEE15_PARTNER" -> Just MetricFEE15Partner
        "METRIC_FEE15_USD" -> Just MetricFEE15Usd
        "METRIC_FEE16_ADVERTISER" -> Just MetricFEE16Advertiser
        "METRIC_FEE16_PARTNER" -> Just MetricFEE16Partner
        "METRIC_FEE16_USD" -> Just MetricFEE16Usd
        "METRIC_FEE17_ADVERTISER" -> Just MetricFEE17Advertiser
        "METRIC_FEE17_PARTNER" -> Just MetricFEE17Partner
        "METRIC_FEE17_USD" -> Just MetricFEE17Usd
        "METRIC_FEE18_ADVERTISER" -> Just MetricFEE18Advertiser
        "METRIC_FEE18_PARTNER" -> Just MetricFEE18Partner
        "METRIC_FEE18_USD" -> Just MetricFEE18Usd
        "METRIC_FEE19_ADVERTISER" -> Just MetricFEE19Advertiser
        "METRIC_FEE19_PARTNER" -> Just MetricFEE19Partner
        "METRIC_FEE19_USD" -> Just MetricFEE19Usd
        "METRIC_FEE20_ADVERTISER" -> Just MetricFEE20Advertiser
        "METRIC_FEE20_PARTNER" -> Just MetricFEE20Partner
        "METRIC_FEE20_USD" -> Just MetricFEE20Usd
        "METRIC_FEE2_ADVERTISER" -> Just MetricFEE2Advertiser
        "METRIC_FEE2_PARTNER" -> Just MetricFEE2Partner
        "METRIC_FEE2_USD" -> Just MetricFEE2Usd
        "METRIC_FEE3_ADVERTISER" -> Just MetricFEE3Advertiser
        "METRIC_FEE3_PARTNER" -> Just MetricFEE3Partner
        "METRIC_FEE3_USD" -> Just MetricFEE3Usd
        "METRIC_FEE4_ADVERTISER" -> Just MetricFEE4Advertiser
        "METRIC_FEE4_PARTNER" -> Just MetricFEE4Partner
        "METRIC_FEE4_USD" -> Just MetricFEE4Usd
        "METRIC_FEE5_ADVERTISER" -> Just MetricFEE5Advertiser
        "METRIC_FEE5_PARTNER" -> Just MetricFEE5Partner
        "METRIC_FEE5_USD" -> Just MetricFEE5Usd
        "METRIC_FEE6_ADVERTISER" -> Just MetricFEE6Advertiser
        "METRIC_FEE6_PARTNER" -> Just MetricFEE6Partner
        "METRIC_FEE6_USD" -> Just MetricFEE6Usd
        "METRIC_FEE7_ADVERTISER" -> Just MetricFEE7Advertiser
        "METRIC_FEE7_PARTNER" -> Just MetricFEE7Partner
        "METRIC_FEE7_USD" -> Just MetricFEE7Usd
        "METRIC_FEE8_ADVERTISER" -> Just MetricFEE8Advertiser
        "METRIC_FEE8_PARTNER" -> Just MetricFEE8Partner
        "METRIC_FEE8_USD" -> Just MetricFEE8Usd
        "METRIC_FEE9_ADVERTISER" -> Just MetricFEE9Advertiser
        "METRIC_FEE9_PARTNER" -> Just MetricFEE9Partner
        "METRIC_FEE9_USD" -> Just MetricFEE9Usd
        "METRIC_IMPRESSIONS" -> Just MetricImpressions
        "METRIC_IMPRESSIONS_TO_CONVERSION_RATE" -> Just MetricImpressionsToConversionRate
        "METRIC_LAST_CLICKS" -> Just MetricLastClicks
        "METRIC_LAST_IMPRESSIONS" -> Just MetricLastImpressions
        "METRIC_MEDIA_COST_ADVERTISER" -> Just MetricMediaCostAdvertiser
        "METRIC_MEDIA_COST_ECPAPC_ADVERTISER" -> Just MetricMediaCostEcpapcAdvertiser
        "METRIC_MEDIA_COST_ECPAPC_PARTNER" -> Just MetricMediaCostEcpapcPartner
        "METRIC_MEDIA_COST_ECPAPC_USD" -> Just MetricMediaCostEcpapcUsd
        "METRIC_MEDIA_COST_ECPAPV_ADVERTISER" -> Just MetricMediaCostEcpapvAdvertiser
        "METRIC_MEDIA_COST_ECPAPV_PARTNER" -> Just MetricMediaCostEcpapvPartner
        "METRIC_MEDIA_COST_ECPAPV_USD" -> Just MetricMediaCostEcpapvUsd
        "METRIC_MEDIA_COST_ECPA_ADVERTISER" -> Just MetricMediaCostEcpaAdvertiser
        "METRIC_MEDIA_COST_ECPA_PARTNER" -> Just MetricMediaCostEcpaPartner
        "METRIC_MEDIA_COST_ECPA_USD" -> Just MetricMediaCostEcpaUsd
        "METRIC_MEDIA_COST_ECPCV_ADVERTISER" -> Just MetricMediaCostEcpcvAdvertiser
        "METRIC_MEDIA_COST_ECPCV_PARTNER" -> Just MetricMediaCostEcpcvPartner
        "METRIC_MEDIA_COST_ECPCV_USD" -> Just MetricMediaCostEcpcvUsd
        "METRIC_MEDIA_COST_ECPC_ADVERTISER" -> Just MetricMediaCostEcpcAdvertiser
        "METRIC_MEDIA_COST_ECPC_PARTNER" -> Just MetricMediaCostEcpcPartner
        "METRIC_MEDIA_COST_ECPC_USD" -> Just MetricMediaCostEcpcUsd
        "METRIC_MEDIA_COST_ECPM_ADVERTISER" -> Just MetricMediaCostEcpmAdvertiser
        "METRIC_MEDIA_COST_ECPM_PARTNER" -> Just MetricMediaCostEcpmPartner
        "METRIC_MEDIA_COST_ECPM_USD" -> Just MetricMediaCostEcpmUsd
        "METRIC_MEDIA_COST_PARTNER" -> Just MetricMediaCostPartner
        "METRIC_MEDIA_COST_USD" -> Just MetricMediaCostUsd
        "METRIC_MEDIA_FEE1_ADVERTISER" -> Just MetricMediaFEE1Advertiser
        "METRIC_MEDIA_FEE1_PARTNER" -> Just MetricMediaFEE1Partner
        "METRIC_MEDIA_FEE1_USD" -> Just MetricMediaFEE1Usd
        "METRIC_MEDIA_FEE2_ADVERTISER" -> Just MetricMediaFEE2Advertiser
        "METRIC_MEDIA_FEE2_PARTNER" -> Just MetricMediaFEE2Partner
        "METRIC_MEDIA_FEE2_USD" -> Just MetricMediaFEE2Usd
        "METRIC_MEDIA_FEE3_ADVERTISER" -> Just MetricMediaFEE3Advertiser
        "METRIC_MEDIA_FEE3_PARTNER" -> Just MetricMediaFEE3Partner
        "METRIC_MEDIA_FEE3_USD" -> Just MetricMediaFEE3Usd
        "METRIC_MEDIA_FEE4_ADVERTISER" -> Just MetricMediaFEE4Advertiser
        "METRIC_MEDIA_FEE4_PARTNER" -> Just MetricMediaFEE4Partner
        "METRIC_MEDIA_FEE4_USD" -> Just MetricMediaFEE4Usd
        "METRIC_MEDIA_FEE5_ADVERTISER" -> Just MetricMediaFEE5Advertiser
        "METRIC_MEDIA_FEE5_PARTNER" -> Just MetricMediaFEE5Partner
        "METRIC_MEDIA_FEE5_USD" -> Just MetricMediaFEE5Usd
        "METRIC_PIXEL_LOADS" -> Just MetricPixelLoads
        "METRIC_PLATFORM_FEE_ADVERTISER" -> Just MetricPlatformFeeAdvertiser
        "METRIC_PLATFORM_FEE_PARTNER" -> Just MetricPlatformFeePartner
        "METRIC_PLATFORM_FEE_USD" -> Just MetricPlatformFeeUsd
        "METRIC_POST_CLICK_DFA_REVENUE" -> Just MetricPostClickDfaRevenue
        "METRIC_POST_VIEW_DFA_REVENUE" -> Just MetricPostViewDfaRevenue
        "METRIC_PROFIT_ADVERTISER" -> Just MetricProfitAdvertiser
        "METRIC_PROFIT_ECPAPC_ADVERTISER" -> Just MetricProfitEcpapcAdvertiser
        "METRIC_PROFIT_ECPAPC_PARTNER" -> Just MetricProfitEcpapcPartner
        "METRIC_PROFIT_ECPAPC_USD" -> Just MetricProfitEcpapcUsd
        "METRIC_PROFIT_ECPAPV_ADVERTISER" -> Just MetricProfitEcpapvAdvertiser
        "METRIC_PROFIT_ECPAPV_PARTNER" -> Just MetricProfitEcpapvPartner
        "METRIC_PROFIT_ECPAPV_USD" -> Just MetricProfitEcpapvUsd
        "METRIC_PROFIT_ECPA_ADVERTISER" -> Just MetricProfitEcpaAdvertiser
        "METRIC_PROFIT_ECPA_PARTNER" -> Just MetricProfitEcpaPartner
        "METRIC_PROFIT_ECPA_USD" -> Just MetricProfitEcpaUsd
        "METRIC_PROFIT_ECPC_ADVERTISER" -> Just MetricProfitEcpcAdvertiser
        "METRIC_PROFIT_ECPC_PARTNER" -> Just MetricProfitEcpcPartner
        "METRIC_PROFIT_ECPC_USD" -> Just MetricProfitEcpcUsd
        "METRIC_PROFIT_ECPM_ADVERTISER" -> Just MetricProfitEcpmAdvertiser
        "METRIC_PROFIT_ECPM_PARTNER" -> Just MetricProfitEcpmPartner
        "METRIC_PROFIT_ECPM_USD" -> Just MetricProfitEcpmUsd
        "METRIC_PROFIT_MARGIN" -> Just MetricProfitMargin
        "METRIC_PROFIT_PARTNER" -> Just MetricProfitPartner
        "METRIC_PROFIT_USD" -> Just MetricProfitUsd
        "METRIC_REVENUE_ADVERTISER" -> Just MetricRevenueAdvertiser
        "METRIC_REVENUE_ECPAPC_ADVERTISER" -> Just MetricRevenueEcpapcAdvertiser
        "METRIC_REVENUE_ECPAPC_PARTNER" -> Just MetricRevenueEcpapcPartner
        "METRIC_REVENUE_ECPAPC_USD" -> Just MetricRevenueEcpapcUsd
        "METRIC_REVENUE_ECPAPV_ADVERTISER" -> Just MetricRevenueEcpapvAdvertiser
        "METRIC_REVENUE_ECPAPV_PARTNER" -> Just MetricRevenueEcpapvPartner
        "METRIC_REVENUE_ECPAPV_USD" -> Just MetricRevenueEcpapvUsd
        "METRIC_REVENUE_ECPA_ADVERTISER" -> Just MetricRevenueEcpaAdvertiser
        "METRIC_REVENUE_ECPA_PARTNER" -> Just MetricRevenueEcpaPartner
        "METRIC_REVENUE_ECPA_USD" -> Just MetricRevenueEcpaUsd
        "METRIC_REVENUE_ECPCV_ADVERTISER" -> Just MetricRevenueEcpcvAdvertiser
        "METRIC_REVENUE_ECPCV_PARTNER" -> Just MetricRevenueEcpcvPartner
        "METRIC_REVENUE_ECPCV_USD" -> Just MetricRevenueEcpcvUsd
        "METRIC_REVENUE_ECPC_ADVERTISER" -> Just MetricRevenueEcpcAdvertiser
        "METRIC_REVENUE_ECPC_PARTNER" -> Just MetricRevenueEcpcPartner
        "METRIC_REVENUE_ECPC_USD" -> Just MetricRevenueEcpcUsd
        "METRIC_REVENUE_ECPM_ADVERTISER" -> Just MetricRevenueEcpmAdvertiser
        "METRIC_REVENUE_ECPM_PARTNER" -> Just MetricRevenueEcpmPartner
        "METRIC_REVENUE_ECPM_USD" -> Just MetricRevenueEcpmUsd
        "METRIC_REVENUE_PARTNER" -> Just MetricRevenuePartner
        "METRIC_REVENUE_USD" -> Just MetricRevenueUsd
        "METRIC_RICH_MEDIA_VIDEO_COMPLETIONS" -> Just MetricRichMediaVideoCompletions
        "METRIC_RICH_MEDIA_VIDEO_FIRST_QUARTILE_COMPLETES" -> Just MetricRichMediaVideoFirstQuartileCompletes
        "METRIC_RICH_MEDIA_VIDEO_FULL_SCREENS" -> Just MetricRichMediaVideoFullScreens
        "METRIC_RICH_MEDIA_VIDEO_MIDPOINTS" -> Just MetricRichMediaVideoMidpoints
        "METRIC_RICH_MEDIA_VIDEO_MUTES" -> Just MetricRichMediaVideoMutes
        "METRIC_RICH_MEDIA_VIDEO_PAUSES" -> Just MetricRichMediaVideoPauses
        "METRIC_RICH_MEDIA_VIDEO_PLAYS" -> Just MetricRichMediaVideoPlays
        "METRIC_RICH_MEDIA_VIDEO_SKIPS" -> Just MetricRichMediaVideoSkips
        "METRIC_RICH_MEDIA_VIDEO_THIRD_QUARTILE_COMPLETES" -> Just MetricRichMediaVideoThirdQuartileCompletes
        "METRIC_TEA_TRUEVIEW_IMPRESSIONS" -> Just MetricTeaTrueviewImpressions
        "METRIC_TEA_TRUEVIEW_UNIQUE_COOKIES" -> Just MetricTeaTrueviewUniqueCookies
        "METRIC_TEA_TRUEVIEW_UNIQUE_PEOPLE" -> Just MetricTeaTrueviewUniquePeople
        "METRIC_TOTAL_CONVERSIONS" -> Just MetricTotalConversions
        "METRIC_TOTAL_MEDIA_COST_ADVERTISER" -> Just MetricTotalMediaCostAdvertiser
        "METRIC_TOTAL_MEDIA_COST_ECPAPC_ADVERTISER" -> Just MetricTotalMediaCostEcpapcAdvertiser
        "METRIC_TOTAL_MEDIA_COST_ECPAPC_PARTNER" -> Just MetricTotalMediaCostEcpapcPartner
        "METRIC_TOTAL_MEDIA_COST_ECPAPC_USD" -> Just MetricTotalMediaCostEcpapcUsd
        "METRIC_TOTAL_MEDIA_COST_ECPAPV_ADVERTISER" -> Just MetricTotalMediaCostEcpapvAdvertiser
        "METRIC_TOTAL_MEDIA_COST_ECPAPV_PARTNER" -> Just MetricTotalMediaCostEcpapvPartner
        "METRIC_TOTAL_MEDIA_COST_ECPAPV_USD" -> Just MetricTotalMediaCostEcpapvUsd
        "METRIC_TOTAL_MEDIA_COST_ECPA_ADVERTISER" -> Just MetricTotalMediaCostEcpaAdvertiser
        "METRIC_TOTAL_MEDIA_COST_ECPA_PARTNER" -> Just MetricTotalMediaCostEcpaPartner
        "METRIC_TOTAL_MEDIA_COST_ECPA_USD" -> Just MetricTotalMediaCostEcpaUsd
        "METRIC_TOTAL_MEDIA_COST_ECPCV_ADVERTISER" -> Just MetricTotalMediaCostEcpcvAdvertiser
        "METRIC_TOTAL_MEDIA_COST_ECPCV_PARTNER" -> Just MetricTotalMediaCostEcpcvPartner
        "METRIC_TOTAL_MEDIA_COST_ECPCV_USD" -> Just MetricTotalMediaCostEcpcvUsd
        "METRIC_TOTAL_MEDIA_COST_ECPC_ADVERTISER" -> Just MetricTotalMediaCostEcpcAdvertiser
        "METRIC_TOTAL_MEDIA_COST_ECPC_PARTNER" -> Just MetricTotalMediaCostEcpcPartner
        "METRIC_TOTAL_MEDIA_COST_ECPC_USD" -> Just MetricTotalMediaCostEcpcUsd
        "METRIC_TOTAL_MEDIA_COST_ECPM_ADVERTISER" -> Just MetricTotalMediaCostEcpmAdvertiser
        "METRIC_TOTAL_MEDIA_COST_ECPM_PARTNER" -> Just MetricTotalMediaCostEcpmPartner
        "METRIC_TOTAL_MEDIA_COST_ECPM_USD" -> Just MetricTotalMediaCostEcpmUsd
        "METRIC_TOTAL_MEDIA_COST_PARTNER" -> Just MetricTotalMediaCostPartner
        "METRIC_TOTAL_MEDIA_COST_USD" -> Just MetricTotalMediaCostUsd
        "METRIC_TRUEVIEW_CONVERSION_MANY_PER_VIEW" -> Just MetricTrueviewConversionManyPerView
        "METRIC_TRUEVIEW_CONVERSION_ONE_PER_VIEW" -> Just MetricTrueviewConversionOnePerView
        "METRIC_TRUEVIEW_CONVERSION_RATE_ONE_PER_VIEW" -> Just MetricTrueviewConversionRateOnePerView
        "METRIC_TRUEVIEW_COST_CONVERSION_MANY_PER_VIEW_RATIO" -> Just MetricTrueviewCostConversionManyPerViewRatio
        "METRIC_TRUEVIEW_COST_CONVERSION_ONE_PER_VIEW_RATIO" -> Just MetricTrueviewCostConversionOnePerViewRatio
        "METRIC_TRUEVIEW_CPV_ADVERTISER" -> Just MetricTrueviewCpvAdvertiser
        "METRIC_TRUEVIEW_CPV_PARTNER" -> Just MetricTrueviewCpvPartner
        "METRIC_TRUEVIEW_CPV_USD" -> Just MetricTrueviewCpvUsd
        "METRIC_TRUEVIEW_EARNED_LIKES" -> Just MetricTrueviewEarnedLikes
        "METRIC_TRUEVIEW_EARNED_PLAYLIST_ADDITIONS" -> Just MetricTrueviewEarnedPlayListAdditions
        "METRIC_TRUEVIEW_EARNED_SHARES" -> Just MetricTrueviewEarnedShares
        "METRIC_TRUEVIEW_EARNED_SUBSCRIBERS" -> Just MetricTrueviewEarnedSubscribers
        "METRIC_TRUEVIEW_EARNED_VIEWS" -> Just MetricTrueviewEarnedViews
        "METRIC_TRUEVIEW_IMPRESSION_SHARE" -> Just MetricTrueviewImpressionShare
        "METRIC_TRUEVIEW_LOST_IS_BUDGET" -> Just MetricTrueviewLostIsBudget
        "METRIC_TRUEVIEW_LOST_IS_RANK" -> Just MetricTrueviewLostIsRank
        "METRIC_TRUEVIEW_TOTAL_CONVERSION_VALUE" -> Just MetricTrueviewTotalConversionValue
        "METRIC_TRUEVIEW_UNIQUE_VIEWERS" -> Just MetricTrueviewUniqueViewers
        "METRIC_TRUEVIEW_VALUE_CONVERSION_MANY_PER_VIEW_RATIO" -> Just MetricTrueviewValueConversionManyPerViewRatio
        "METRIC_TRUEVIEW_VALUE_CONVERSION_ONE_PER_VIEW_RATIO" -> Just MetricTrueviewValueConversionOnePerViewRatio
        "METRIC_TRUEVIEW_VIEWS" -> Just MetricTrueviewViews
        "METRIC_TRUEVIEW_VIEW_RATE" -> Just MetricTrueviewViewRate
        "METRIC_TRUEVIEW_VIEW_THROUGH_CONVERSION" -> Just MetricTrueviewViewThroughConversion
        "METRIC_UNIQUE_VISITORS_COOKIES" -> Just MetricUniqueVisitorsCookies
        "METRIC_UNKNOWN" -> Just MetricUnknown
        "METRIC_VIDEO_COMPANION_CLICKS" -> Just MetricVideoCompanionClicks
        "METRIC_VIDEO_COMPANION_IMPRESSIONS" -> Just MetricVideoCompanionImpressions
        "METRIC_VIDEO_COMPLETION_RATE" -> Just MetricVideoCompletionRate
        _ -> Nothing

instance ToText MetricsItem where
    toText = \case
        MetricBidRequests -> "METRIC_BID_REQUESTS"
        MetricBillableCostAdvertiser -> "METRIC_BILLABLE_COST_ADVERTISER"
        MetricBillableCostPartner -> "METRIC_BILLABLE_COST_PARTNER"
        MetricBillableCostUsd -> "METRIC_BILLABLE_COST_USD"
        MetricClicks -> "METRIC_CLICKS"
        MetricClickToPostClickConversionRate -> "METRIC_CLICK_TO_POST_CLICK_CONVERSION_RATE"
        MetricComscoreVceAudienceAvgFrequency -> "METRIC_COMSCORE_VCE_AUDIENCE_AVG_FREQUENCY"
        MetricComscoreVceAudienceImpressions -> "METRIC_COMSCORE_VCE_AUDIENCE_IMPRESSIONS"
        MetricComscoreVceAudienceImpressionsShare -> "METRIC_COMSCORE_VCE_AUDIENCE_IMPRESSIONS_SHARE"
        MetricComscoreVceAudienceReachPct -> "METRIC_COMSCORE_VCE_AUDIENCE_REACH_PCT"
        MetricComscoreVceAudienceSharePct -> "METRIC_COMSCORE_VCE_AUDIENCE_SHARE_PCT"
        MetricComscoreVceGrossRatingPoints -> "METRIC_COMSCORE_VCE_GROSS_RATING_POINTS"
        MetricComscoreVcePopulation -> "METRIC_COMSCORE_VCE_POPULATION"
        MetricComscoreVceUniqueAudience -> "METRIC_COMSCORE_VCE_UNIQUE_AUDIENCE"
        MetricConversionsPerMille -> "METRIC_CONVERSIONS_PER_MILLE"
        MetricCpmFEE1Advertiser -> "METRIC_CPM_FEE1_ADVERTISER"
        MetricCpmFEE1Partner -> "METRIC_CPM_FEE1_PARTNER"
        MetricCpmFEE1Usd -> "METRIC_CPM_FEE1_USD"
        MetricCpmFEE2Advertiser -> "METRIC_CPM_FEE2_ADVERTISER"
        MetricCpmFEE2Partner -> "METRIC_CPM_FEE2_PARTNER"
        MetricCpmFEE2Usd -> "METRIC_CPM_FEE2_USD"
        MetricCpmFEE3Advertiser -> "METRIC_CPM_FEE3_ADVERTISER"
        MetricCpmFEE3Partner -> "METRIC_CPM_FEE3_PARTNER"
        MetricCpmFEE3Usd -> "METRIC_CPM_FEE3_USD"
        MetricCpmFEE4Advertiser -> "METRIC_CPM_FEE4_ADVERTISER"
        MetricCpmFEE4Partner -> "METRIC_CPM_FEE4_PARTNER"
        MetricCpmFEE4Usd -> "METRIC_CPM_FEE4_USD"
        MetricCpmFEE5Advertiser -> "METRIC_CPM_FEE5_ADVERTISER"
        MetricCpmFEE5Partner -> "METRIC_CPM_FEE5_PARTNER"
        MetricCpmFEE5Usd -> "METRIC_CPM_FEE5_USD"
        MetricCtr -> "METRIC_CTR"
        MetricDataCostAdvertiser -> "METRIC_DATA_COST_ADVERTISER"
        MetricDataCostPartner -> "METRIC_DATA_COST_PARTNER"
        MetricDataCostUsd -> "METRIC_DATA_COST_USD"
        MetricFEE10Advertiser -> "METRIC_FEE10_ADVERTISER"
        MetricFEE10Partner -> "METRIC_FEE10_PARTNER"
        MetricFEE10Usd -> "METRIC_FEE10_USD"
        MetricFEE11Advertiser -> "METRIC_FEE11_ADVERTISER"
        MetricFEE11Partner -> "METRIC_FEE11_PARTNER"
        MetricFEE11Usd -> "METRIC_FEE11_USD"
        MetricFEE12Advertiser -> "METRIC_FEE12_ADVERTISER"
        MetricFEE12Partner -> "METRIC_FEE12_PARTNER"
        MetricFEE12Usd -> "METRIC_FEE12_USD"
        MetricFEE13Advertiser -> "METRIC_FEE13_ADVERTISER"
        MetricFEE13Partner -> "METRIC_FEE13_PARTNER"
        MetricFEE13Usd -> "METRIC_FEE13_USD"
        MetricFEE14Advertiser -> "METRIC_FEE14_ADVERTISER"
        MetricFEE14Partner -> "METRIC_FEE14_PARTNER"
        MetricFEE14Usd -> "METRIC_FEE14_USD"
        MetricFEE15Advertiser -> "METRIC_FEE15_ADVERTISER"
        MetricFEE15Partner -> "METRIC_FEE15_PARTNER"
        MetricFEE15Usd -> "METRIC_FEE15_USD"
        MetricFEE16Advertiser -> "METRIC_FEE16_ADVERTISER"
        MetricFEE16Partner -> "METRIC_FEE16_PARTNER"
        MetricFEE16Usd -> "METRIC_FEE16_USD"
        MetricFEE17Advertiser -> "METRIC_FEE17_ADVERTISER"
        MetricFEE17Partner -> "METRIC_FEE17_PARTNER"
        MetricFEE17Usd -> "METRIC_FEE17_USD"
        MetricFEE18Advertiser -> "METRIC_FEE18_ADVERTISER"
        MetricFEE18Partner -> "METRIC_FEE18_PARTNER"
        MetricFEE18Usd -> "METRIC_FEE18_USD"
        MetricFEE19Advertiser -> "METRIC_FEE19_ADVERTISER"
        MetricFEE19Partner -> "METRIC_FEE19_PARTNER"
        MetricFEE19Usd -> "METRIC_FEE19_USD"
        MetricFEE20Advertiser -> "METRIC_FEE20_ADVERTISER"
        MetricFEE20Partner -> "METRIC_FEE20_PARTNER"
        MetricFEE20Usd -> "METRIC_FEE20_USD"
        MetricFEE2Advertiser -> "METRIC_FEE2_ADVERTISER"
        MetricFEE2Partner -> "METRIC_FEE2_PARTNER"
        MetricFEE2Usd -> "METRIC_FEE2_USD"
        MetricFEE3Advertiser -> "METRIC_FEE3_ADVERTISER"
        MetricFEE3Partner -> "METRIC_FEE3_PARTNER"
        MetricFEE3Usd -> "METRIC_FEE3_USD"
        MetricFEE4Advertiser -> "METRIC_FEE4_ADVERTISER"
        MetricFEE4Partner -> "METRIC_FEE4_PARTNER"
        MetricFEE4Usd -> "METRIC_FEE4_USD"
        MetricFEE5Advertiser -> "METRIC_FEE5_ADVERTISER"
        MetricFEE5Partner -> "METRIC_FEE5_PARTNER"
        MetricFEE5Usd -> "METRIC_FEE5_USD"
        MetricFEE6Advertiser -> "METRIC_FEE6_ADVERTISER"
        MetricFEE6Partner -> "METRIC_FEE6_PARTNER"
        MetricFEE6Usd -> "METRIC_FEE6_USD"
        MetricFEE7Advertiser -> "METRIC_FEE7_ADVERTISER"
        MetricFEE7Partner -> "METRIC_FEE7_PARTNER"
        MetricFEE7Usd -> "METRIC_FEE7_USD"
        MetricFEE8Advertiser -> "METRIC_FEE8_ADVERTISER"
        MetricFEE8Partner -> "METRIC_FEE8_PARTNER"
        MetricFEE8Usd -> "METRIC_FEE8_USD"
        MetricFEE9Advertiser -> "METRIC_FEE9_ADVERTISER"
        MetricFEE9Partner -> "METRIC_FEE9_PARTNER"
        MetricFEE9Usd -> "METRIC_FEE9_USD"
        MetricImpressions -> "METRIC_IMPRESSIONS"
        MetricImpressionsToConversionRate -> "METRIC_IMPRESSIONS_TO_CONVERSION_RATE"
        MetricLastClicks -> "METRIC_LAST_CLICKS"
        MetricLastImpressions -> "METRIC_LAST_IMPRESSIONS"
        MetricMediaCostAdvertiser -> "METRIC_MEDIA_COST_ADVERTISER"
        MetricMediaCostEcpapcAdvertiser -> "METRIC_MEDIA_COST_ECPAPC_ADVERTISER"
        MetricMediaCostEcpapcPartner -> "METRIC_MEDIA_COST_ECPAPC_PARTNER"
        MetricMediaCostEcpapcUsd -> "METRIC_MEDIA_COST_ECPAPC_USD"
        MetricMediaCostEcpapvAdvertiser -> "METRIC_MEDIA_COST_ECPAPV_ADVERTISER"
        MetricMediaCostEcpapvPartner -> "METRIC_MEDIA_COST_ECPAPV_PARTNER"
        MetricMediaCostEcpapvUsd -> "METRIC_MEDIA_COST_ECPAPV_USD"
        MetricMediaCostEcpaAdvertiser -> "METRIC_MEDIA_COST_ECPA_ADVERTISER"
        MetricMediaCostEcpaPartner -> "METRIC_MEDIA_COST_ECPA_PARTNER"
        MetricMediaCostEcpaUsd -> "METRIC_MEDIA_COST_ECPA_USD"
        MetricMediaCostEcpcvAdvertiser -> "METRIC_MEDIA_COST_ECPCV_ADVERTISER"
        MetricMediaCostEcpcvPartner -> "METRIC_MEDIA_COST_ECPCV_PARTNER"
        MetricMediaCostEcpcvUsd -> "METRIC_MEDIA_COST_ECPCV_USD"
        MetricMediaCostEcpcAdvertiser -> "METRIC_MEDIA_COST_ECPC_ADVERTISER"
        MetricMediaCostEcpcPartner -> "METRIC_MEDIA_COST_ECPC_PARTNER"
        MetricMediaCostEcpcUsd -> "METRIC_MEDIA_COST_ECPC_USD"
        MetricMediaCostEcpmAdvertiser -> "METRIC_MEDIA_COST_ECPM_ADVERTISER"
        MetricMediaCostEcpmPartner -> "METRIC_MEDIA_COST_ECPM_PARTNER"
        MetricMediaCostEcpmUsd -> "METRIC_MEDIA_COST_ECPM_USD"
        MetricMediaCostPartner -> "METRIC_MEDIA_COST_PARTNER"
        MetricMediaCostUsd -> "METRIC_MEDIA_COST_USD"
        MetricMediaFEE1Advertiser -> "METRIC_MEDIA_FEE1_ADVERTISER"
        MetricMediaFEE1Partner -> "METRIC_MEDIA_FEE1_PARTNER"
        MetricMediaFEE1Usd -> "METRIC_MEDIA_FEE1_USD"
        MetricMediaFEE2Advertiser -> "METRIC_MEDIA_FEE2_ADVERTISER"
        MetricMediaFEE2Partner -> "METRIC_MEDIA_FEE2_PARTNER"
        MetricMediaFEE2Usd -> "METRIC_MEDIA_FEE2_USD"
        MetricMediaFEE3Advertiser -> "METRIC_MEDIA_FEE3_ADVERTISER"
        MetricMediaFEE3Partner -> "METRIC_MEDIA_FEE3_PARTNER"
        MetricMediaFEE3Usd -> "METRIC_MEDIA_FEE3_USD"
        MetricMediaFEE4Advertiser -> "METRIC_MEDIA_FEE4_ADVERTISER"
        MetricMediaFEE4Partner -> "METRIC_MEDIA_FEE4_PARTNER"
        MetricMediaFEE4Usd -> "METRIC_MEDIA_FEE4_USD"
        MetricMediaFEE5Advertiser -> "METRIC_MEDIA_FEE5_ADVERTISER"
        MetricMediaFEE5Partner -> "METRIC_MEDIA_FEE5_PARTNER"
        MetricMediaFEE5Usd -> "METRIC_MEDIA_FEE5_USD"
        MetricPixelLoads -> "METRIC_PIXEL_LOADS"
        MetricPlatformFeeAdvertiser -> "METRIC_PLATFORM_FEE_ADVERTISER"
        MetricPlatformFeePartner -> "METRIC_PLATFORM_FEE_PARTNER"
        MetricPlatformFeeUsd -> "METRIC_PLATFORM_FEE_USD"
        MetricPostClickDfaRevenue -> "METRIC_POST_CLICK_DFA_REVENUE"
        MetricPostViewDfaRevenue -> "METRIC_POST_VIEW_DFA_REVENUE"
        MetricProfitAdvertiser -> "METRIC_PROFIT_ADVERTISER"
        MetricProfitEcpapcAdvertiser -> "METRIC_PROFIT_ECPAPC_ADVERTISER"
        MetricProfitEcpapcPartner -> "METRIC_PROFIT_ECPAPC_PARTNER"
        MetricProfitEcpapcUsd -> "METRIC_PROFIT_ECPAPC_USD"
        MetricProfitEcpapvAdvertiser -> "METRIC_PROFIT_ECPAPV_ADVERTISER"
        MetricProfitEcpapvPartner -> "METRIC_PROFIT_ECPAPV_PARTNER"
        MetricProfitEcpapvUsd -> "METRIC_PROFIT_ECPAPV_USD"
        MetricProfitEcpaAdvertiser -> "METRIC_PROFIT_ECPA_ADVERTISER"
        MetricProfitEcpaPartner -> "METRIC_PROFIT_ECPA_PARTNER"
        MetricProfitEcpaUsd -> "METRIC_PROFIT_ECPA_USD"
        MetricProfitEcpcAdvertiser -> "METRIC_PROFIT_ECPC_ADVERTISER"
        MetricProfitEcpcPartner -> "METRIC_PROFIT_ECPC_PARTNER"
        MetricProfitEcpcUsd -> "METRIC_PROFIT_ECPC_USD"
        MetricProfitEcpmAdvertiser -> "METRIC_PROFIT_ECPM_ADVERTISER"
        MetricProfitEcpmPartner -> "METRIC_PROFIT_ECPM_PARTNER"
        MetricProfitEcpmUsd -> "METRIC_PROFIT_ECPM_USD"
        MetricProfitMargin -> "METRIC_PROFIT_MARGIN"
        MetricProfitPartner -> "METRIC_PROFIT_PARTNER"
        MetricProfitUsd -> "METRIC_PROFIT_USD"
        MetricRevenueAdvertiser -> "METRIC_REVENUE_ADVERTISER"
        MetricRevenueEcpapcAdvertiser -> "METRIC_REVENUE_ECPAPC_ADVERTISER"
        MetricRevenueEcpapcPartner -> "METRIC_REVENUE_ECPAPC_PARTNER"
        MetricRevenueEcpapcUsd -> "METRIC_REVENUE_ECPAPC_USD"
        MetricRevenueEcpapvAdvertiser -> "METRIC_REVENUE_ECPAPV_ADVERTISER"
        MetricRevenueEcpapvPartner -> "METRIC_REVENUE_ECPAPV_PARTNER"
        MetricRevenueEcpapvUsd -> "METRIC_REVENUE_ECPAPV_USD"
        MetricRevenueEcpaAdvertiser -> "METRIC_REVENUE_ECPA_ADVERTISER"
        MetricRevenueEcpaPartner -> "METRIC_REVENUE_ECPA_PARTNER"
        MetricRevenueEcpaUsd -> "METRIC_REVENUE_ECPA_USD"
        MetricRevenueEcpcvAdvertiser -> "METRIC_REVENUE_ECPCV_ADVERTISER"
        MetricRevenueEcpcvPartner -> "METRIC_REVENUE_ECPCV_PARTNER"
        MetricRevenueEcpcvUsd -> "METRIC_REVENUE_ECPCV_USD"
        MetricRevenueEcpcAdvertiser -> "METRIC_REVENUE_ECPC_ADVERTISER"
        MetricRevenueEcpcPartner -> "METRIC_REVENUE_ECPC_PARTNER"
        MetricRevenueEcpcUsd -> "METRIC_REVENUE_ECPC_USD"
        MetricRevenueEcpmAdvertiser -> "METRIC_REVENUE_ECPM_ADVERTISER"
        MetricRevenueEcpmPartner -> "METRIC_REVENUE_ECPM_PARTNER"
        MetricRevenueEcpmUsd -> "METRIC_REVENUE_ECPM_USD"
        MetricRevenuePartner -> "METRIC_REVENUE_PARTNER"
        MetricRevenueUsd -> "METRIC_REVENUE_USD"
        MetricRichMediaVideoCompletions -> "METRIC_RICH_MEDIA_VIDEO_COMPLETIONS"
        MetricRichMediaVideoFirstQuartileCompletes -> "METRIC_RICH_MEDIA_VIDEO_FIRST_QUARTILE_COMPLETES"
        MetricRichMediaVideoFullScreens -> "METRIC_RICH_MEDIA_VIDEO_FULL_SCREENS"
        MetricRichMediaVideoMidpoints -> "METRIC_RICH_MEDIA_VIDEO_MIDPOINTS"
        MetricRichMediaVideoMutes -> "METRIC_RICH_MEDIA_VIDEO_MUTES"
        MetricRichMediaVideoPauses -> "METRIC_RICH_MEDIA_VIDEO_PAUSES"
        MetricRichMediaVideoPlays -> "METRIC_RICH_MEDIA_VIDEO_PLAYS"
        MetricRichMediaVideoSkips -> "METRIC_RICH_MEDIA_VIDEO_SKIPS"
        MetricRichMediaVideoThirdQuartileCompletes -> "METRIC_RICH_MEDIA_VIDEO_THIRD_QUARTILE_COMPLETES"
        MetricTeaTrueviewImpressions -> "METRIC_TEA_TRUEVIEW_IMPRESSIONS"
        MetricTeaTrueviewUniqueCookies -> "METRIC_TEA_TRUEVIEW_UNIQUE_COOKIES"
        MetricTeaTrueviewUniquePeople -> "METRIC_TEA_TRUEVIEW_UNIQUE_PEOPLE"
        MetricTotalConversions -> "METRIC_TOTAL_CONVERSIONS"
        MetricTotalMediaCostAdvertiser -> "METRIC_TOTAL_MEDIA_COST_ADVERTISER"
        MetricTotalMediaCostEcpapcAdvertiser -> "METRIC_TOTAL_MEDIA_COST_ECPAPC_ADVERTISER"
        MetricTotalMediaCostEcpapcPartner -> "METRIC_TOTAL_MEDIA_COST_ECPAPC_PARTNER"
        MetricTotalMediaCostEcpapcUsd -> "METRIC_TOTAL_MEDIA_COST_ECPAPC_USD"
        MetricTotalMediaCostEcpapvAdvertiser -> "METRIC_TOTAL_MEDIA_COST_ECPAPV_ADVERTISER"
        MetricTotalMediaCostEcpapvPartner -> "METRIC_TOTAL_MEDIA_COST_ECPAPV_PARTNER"
        MetricTotalMediaCostEcpapvUsd -> "METRIC_TOTAL_MEDIA_COST_ECPAPV_USD"
        MetricTotalMediaCostEcpaAdvertiser -> "METRIC_TOTAL_MEDIA_COST_ECPA_ADVERTISER"
        MetricTotalMediaCostEcpaPartner -> "METRIC_TOTAL_MEDIA_COST_ECPA_PARTNER"
        MetricTotalMediaCostEcpaUsd -> "METRIC_TOTAL_MEDIA_COST_ECPA_USD"
        MetricTotalMediaCostEcpcvAdvertiser -> "METRIC_TOTAL_MEDIA_COST_ECPCV_ADVERTISER"
        MetricTotalMediaCostEcpcvPartner -> "METRIC_TOTAL_MEDIA_COST_ECPCV_PARTNER"
        MetricTotalMediaCostEcpcvUsd -> "METRIC_TOTAL_MEDIA_COST_ECPCV_USD"
        MetricTotalMediaCostEcpcAdvertiser -> "METRIC_TOTAL_MEDIA_COST_ECPC_ADVERTISER"
        MetricTotalMediaCostEcpcPartner -> "METRIC_TOTAL_MEDIA_COST_ECPC_PARTNER"
        MetricTotalMediaCostEcpcUsd -> "METRIC_TOTAL_MEDIA_COST_ECPC_USD"
        MetricTotalMediaCostEcpmAdvertiser -> "METRIC_TOTAL_MEDIA_COST_ECPM_ADVERTISER"
        MetricTotalMediaCostEcpmPartner -> "METRIC_TOTAL_MEDIA_COST_ECPM_PARTNER"
        MetricTotalMediaCostEcpmUsd -> "METRIC_TOTAL_MEDIA_COST_ECPM_USD"
        MetricTotalMediaCostPartner -> "METRIC_TOTAL_MEDIA_COST_PARTNER"
        MetricTotalMediaCostUsd -> "METRIC_TOTAL_MEDIA_COST_USD"
        MetricTrueviewConversionManyPerView -> "METRIC_TRUEVIEW_CONVERSION_MANY_PER_VIEW"
        MetricTrueviewConversionOnePerView -> "METRIC_TRUEVIEW_CONVERSION_ONE_PER_VIEW"
        MetricTrueviewConversionRateOnePerView -> "METRIC_TRUEVIEW_CONVERSION_RATE_ONE_PER_VIEW"
        MetricTrueviewCostConversionManyPerViewRatio -> "METRIC_TRUEVIEW_COST_CONVERSION_MANY_PER_VIEW_RATIO"
        MetricTrueviewCostConversionOnePerViewRatio -> "METRIC_TRUEVIEW_COST_CONVERSION_ONE_PER_VIEW_RATIO"
        MetricTrueviewCpvAdvertiser -> "METRIC_TRUEVIEW_CPV_ADVERTISER"
        MetricTrueviewCpvPartner -> "METRIC_TRUEVIEW_CPV_PARTNER"
        MetricTrueviewCpvUsd -> "METRIC_TRUEVIEW_CPV_USD"
        MetricTrueviewEarnedLikes -> "METRIC_TRUEVIEW_EARNED_LIKES"
        MetricTrueviewEarnedPlayListAdditions -> "METRIC_TRUEVIEW_EARNED_PLAYLIST_ADDITIONS"
        MetricTrueviewEarnedShares -> "METRIC_TRUEVIEW_EARNED_SHARES"
        MetricTrueviewEarnedSubscribers -> "METRIC_TRUEVIEW_EARNED_SUBSCRIBERS"
        MetricTrueviewEarnedViews -> "METRIC_TRUEVIEW_EARNED_VIEWS"
        MetricTrueviewImpressionShare -> "METRIC_TRUEVIEW_IMPRESSION_SHARE"
        MetricTrueviewLostIsBudget -> "METRIC_TRUEVIEW_LOST_IS_BUDGET"
        MetricTrueviewLostIsRank -> "METRIC_TRUEVIEW_LOST_IS_RANK"
        MetricTrueviewTotalConversionValue -> "METRIC_TRUEVIEW_TOTAL_CONVERSION_VALUE"
        MetricTrueviewUniqueViewers -> "METRIC_TRUEVIEW_UNIQUE_VIEWERS"
        MetricTrueviewValueConversionManyPerViewRatio -> "METRIC_TRUEVIEW_VALUE_CONVERSION_MANY_PER_VIEW_RATIO"
        MetricTrueviewValueConversionOnePerViewRatio -> "METRIC_TRUEVIEW_VALUE_CONVERSION_ONE_PER_VIEW_RATIO"
        MetricTrueviewViews -> "METRIC_TRUEVIEW_VIEWS"
        MetricTrueviewViewRate -> "METRIC_TRUEVIEW_VIEW_RATE"
        MetricTrueviewViewThroughConversion -> "METRIC_TRUEVIEW_VIEW_THROUGH_CONVERSION"
        MetricUniqueVisitorsCookies -> "METRIC_UNIQUE_VISITORS_COOKIES"
        MetricUnknown -> "METRIC_UNKNOWN"
        MetricVideoCompanionClicks -> "METRIC_VIDEO_COMPANION_CLICKS"
        MetricVideoCompanionImpressions -> "METRIC_VIDEO_COMPANION_IMPRESSIONS"
        MetricVideoCompletionRate -> "METRIC_VIDEO_COMPLETION_RATE"

instance FromJSON MetricsItem where
    parseJSON = parseJSONText "MetricsItem"

instance ToJSON MetricsItem where
    toJSON = toJSONText

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

instance FromJSON RunQueryRequestDataRange where
    parseJSON = parseJSONText "RunQueryRequestDataRange"

instance ToJSON RunQueryRequestDataRange where
    toJSON = toJSONText

-- | Error code that shows why the report was not created.
data ErrorCode
    = AuthenticationError
      -- ^ @AUTHENTICATION_ERROR@
    | DeprecatedReportingInvalidQuery
      -- ^ @DEPRECATED_REPORTING_INVALID_QUERY@
    | ReportingBucketNotFound
      -- ^ @REPORTING_BUCKET_NOT_FOUND@
    | ReportingCreateBucketFailed
      -- ^ @REPORTING_CREATE_BUCKET_FAILED@
    | ReportingDeleteBucketFailed
      -- ^ @REPORTING_DELETE_BUCKET_FAILED@
    | ReportingFatalError
      -- ^ @REPORTING_FATAL_ERROR@
    | ReportingIllegalFilename
      -- ^ @REPORTING_ILLEGAL_FILENAME@
    | ReportingImcompatibleMetrics
      -- ^ @REPORTING_IMCOMPATIBLE_METRICS@
    | ReportingInvalidQueryMissingPartnerAndAdvertiserFilters
      -- ^ @REPORTING_INVALID_QUERY_MISSING_PARTNER_AND_ADVERTISER_FILTERS@
    | ReportingInvalidQueryTitleMissing
      -- ^ @REPORTING_INVALID_QUERY_TITLE_MISSING@
    | ReportingInvalidQueryTooManyUnfilteredLargeGroupBys
      -- ^ @REPORTING_INVALID_QUERY_TOO_MANY_UNFILTERED_LARGE_GROUP_BYS@
    | ReportingQueryNotFound
      -- ^ @REPORTING_QUERY_NOT_FOUND@
    | ReportingTransientError
      -- ^ @REPORTING_TRANSIENT_ERROR@
    | ReportingUpdateBucketPermissionFailed
      -- ^ @REPORTING_UPDATE_BUCKET_PERMISSION_FAILED@
    | ReportingWriteBucketObjectFailed
      -- ^ @REPORTING_WRITE_BUCKET_OBJECT_FAILED@
    | ServerError
      -- ^ @SERVER_ERROR@
    | UnauthorizedAPIAccess
      -- ^ @UNAUTHORIZED_API_ACCESS@
    | ValidationError
      -- ^ @VALIDATION_ERROR@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable ErrorCode

instance FromText ErrorCode where
    fromText = \case
        "AUTHENTICATION_ERROR" -> Just AuthenticationError
        "DEPRECATED_REPORTING_INVALID_QUERY" -> Just DeprecatedReportingInvalidQuery
        "REPORTING_BUCKET_NOT_FOUND" -> Just ReportingBucketNotFound
        "REPORTING_CREATE_BUCKET_FAILED" -> Just ReportingCreateBucketFailed
        "REPORTING_DELETE_BUCKET_FAILED" -> Just ReportingDeleteBucketFailed
        "REPORTING_FATAL_ERROR" -> Just ReportingFatalError
        "REPORTING_ILLEGAL_FILENAME" -> Just ReportingIllegalFilename
        "REPORTING_IMCOMPATIBLE_METRICS" -> Just ReportingImcompatibleMetrics
        "REPORTING_INVALID_QUERY_MISSING_PARTNER_AND_ADVERTISER_FILTERS" -> Just ReportingInvalidQueryMissingPartnerAndAdvertiserFilters
        "REPORTING_INVALID_QUERY_TITLE_MISSING" -> Just ReportingInvalidQueryTitleMissing
        "REPORTING_INVALID_QUERY_TOO_MANY_UNFILTERED_LARGE_GROUP_BYS" -> Just ReportingInvalidQueryTooManyUnfilteredLargeGroupBys
        "REPORTING_QUERY_NOT_FOUND" -> Just ReportingQueryNotFound
        "REPORTING_TRANSIENT_ERROR" -> Just ReportingTransientError
        "REPORTING_UPDATE_BUCKET_PERMISSION_FAILED" -> Just ReportingUpdateBucketPermissionFailed
        "REPORTING_WRITE_BUCKET_OBJECT_FAILED" -> Just ReportingWriteBucketObjectFailed
        "SERVER_ERROR" -> Just ServerError
        "UNAUTHORIZED_API_ACCESS" -> Just UnauthorizedAPIAccess
        "VALIDATION_ERROR" -> Just ValidationError
        _ -> Nothing

instance ToText ErrorCode where
    toText = \case
        AuthenticationError -> "AUTHENTICATION_ERROR"
        DeprecatedReportingInvalidQuery -> "DEPRECATED_REPORTING_INVALID_QUERY"
        ReportingBucketNotFound -> "REPORTING_BUCKET_NOT_FOUND"
        ReportingCreateBucketFailed -> "REPORTING_CREATE_BUCKET_FAILED"
        ReportingDeleteBucketFailed -> "REPORTING_DELETE_BUCKET_FAILED"
        ReportingFatalError -> "REPORTING_FATAL_ERROR"
        ReportingIllegalFilename -> "REPORTING_ILLEGAL_FILENAME"
        ReportingImcompatibleMetrics -> "REPORTING_IMCOMPATIBLE_METRICS"
        ReportingInvalidQueryMissingPartnerAndAdvertiserFilters -> "REPORTING_INVALID_QUERY_MISSING_PARTNER_AND_ADVERTISER_FILTERS"
        ReportingInvalidQueryTitleMissing -> "REPORTING_INVALID_QUERY_TITLE_MISSING"
        ReportingInvalidQueryTooManyUnfilteredLargeGroupBys -> "REPORTING_INVALID_QUERY_TOO_MANY_UNFILTERED_LARGE_GROUP_BYS"
        ReportingQueryNotFound -> "REPORTING_QUERY_NOT_FOUND"
        ReportingTransientError -> "REPORTING_TRANSIENT_ERROR"
        ReportingUpdateBucketPermissionFailed -> "REPORTING_UPDATE_BUCKET_PERMISSION_FAILED"
        ReportingWriteBucketObjectFailed -> "REPORTING_WRITE_BUCKET_OBJECT_FAILED"
        ServerError -> "SERVER_ERROR"
        UnauthorizedAPIAccess -> "UNAUTHORIZED_API_ACCESS"
        ValidationError -> "VALIDATION_ERROR"

instance FromJSON ErrorCode where
    parseJSON = parseJSONText "ErrorCode"

instance ToJSON ErrorCode where
    toJSON = toJSONText

-- | Filter type.
data Type
    = TFilterActiveViewExpectedViewability
      -- ^ @FILTER_ACTIVE_VIEW_EXPECTED_VIEWABILITY@
    | TFilterActivityId
      -- ^ @FILTER_ACTIVITY_ID@
    | TFilterAdvertiser
      -- ^ @FILTER_ADVERTISER@
    | TFilterAdvertiserCurrency
      -- ^ @FILTER_ADVERTISER_CURRENCY@
    | TFilterAdvertiserTimezone
      -- ^ @FILTER_ADVERTISER_TIMEZONE@
    | TFilterAdPosition
      -- ^ @FILTER_AD_POSITION@
    | TFilterAge
      -- ^ @FILTER_AGE@
    | TFilterBrandsafeChannelId
      -- ^ @FILTER_BRANDSAFE_CHANNEL_ID@
    | TFilterBrowser
      -- ^ @FILTER_BROWSER@
    | TFilterCampaignDailyFrequency
      -- ^ @FILTER_CAMPAIGN_DAILY_FREQUENCY@
    | TFilterCarrier
      -- ^ @FILTER_CARRIER@
    | TFilterChannelId
      -- ^ @FILTER_CHANNEL_ID@
    | TFilterCity
      -- ^ @FILTER_CITY@
    | TFilterConversionDelay
      -- ^ @FILTER_CONVERSION_DELAY@
    | TFilterCountry
      -- ^ @FILTER_COUNTRY@
    | TFilterCreativeId
      -- ^ @FILTER_CREATIVE_ID@
    | TFilterCreativeSize
      -- ^ @FILTER_CREATIVE_SIZE@
    | TFilterCreativeType
      -- ^ @FILTER_CREATIVE_TYPE@
    | TFilterDataProvider
      -- ^ @FILTER_DATA_PROVIDER@
    | TFilterDate
      -- ^ @FILTER_DATE@
    | TFilterDayOfWeek
      -- ^ @FILTER_DAY_OF_WEEK@
    | TFilterDma
      -- ^ @FILTER_DMA@
    | TFilterExchangeId
      -- ^ @FILTER_EXCHANGE_ID@
    | TFilterFloodlightPixelId
      -- ^ @FILTER_FLOODLIGHT_PIXEL_ID@
    | TFilterGender
      -- ^ @FILTER_GENDER@
    | TFilterInsertionOrder
      -- ^ @FILTER_INSERTION_ORDER@
    | TFilterInventoryFormat
      -- ^ @FILTER_INVENTORY_FORMAT@
    | TFilterInventorySource
      -- ^ @FILTER_INVENTORY_SOURCE@
    | TFilterInventorySourceType
      -- ^ @FILTER_INVENTORY_SOURCE_TYPE@
    | TFilterKeyword
      -- ^ @FILTER_KEYWORD@
    | TFilterLineItem
      -- ^ @FILTER_LINE_ITEM@
    | TFilterLineItemDailyFrequency
      -- ^ @FILTER_LINE_ITEM_DAILY_FREQUENCY@
    | TFilterLineItemLifetimeFrequency
      -- ^ @FILTER_LINE_ITEM_LIFETIME_FREQUENCY@
    | TFilterLineItemType
      -- ^ @FILTER_LINE_ITEM_TYPE@
    | TFilterMobileDeviceMake
      -- ^ @FILTER_MOBILE_DEVICE_MAKE@
    | TFilterMobileDeviceMakeModel
      -- ^ @FILTER_MOBILE_DEVICE_MAKE_MODEL@
    | TFilterMobileDeviceType
      -- ^ @FILTER_MOBILE_DEVICE_TYPE@
    | TFilterMobileGeo
      -- ^ @FILTER_MOBILE_GEO@
    | TFilterMonth
      -- ^ @FILTER_MONTH@
    | TFilterMraidSupport
      -- ^ @FILTER_MRAID_SUPPORT@
    | TFilterNielsenAge
      -- ^ @FILTER_NIELSEN_AGE@
    | TFilterNielsenCountryCode
      -- ^ @FILTER_NIELSEN_COUNTRY_CODE@
    | TFilterNielsenDeviceId
      -- ^ @FILTER_NIELSEN_DEVICE_ID@
    | TFilterNielsenGender
      -- ^ @FILTER_NIELSEN_GENDER@
    | TFilterOrderId
      -- ^ @FILTER_ORDER_ID@
    | TFilterOS
      -- ^ @FILTER_OS@
    | TFilterPageCategory
      -- ^ @FILTER_PAGE_CATEGORY@
    | TFilterPageLayout
      -- ^ @FILTER_PAGE_LAYOUT@
    | TFilterPartner
      -- ^ @FILTER_PARTNER@
    | TFilterPartnerCurrency
      -- ^ @FILTER_PARTNER_CURRENCY@
    | TFilterPublicInventory
      -- ^ @FILTER_PUBLIC_INVENTORY@
    | TFilterQuarter
      -- ^ @FILTER_QUARTER@
    | TFilterRegion
      -- ^ @FILTER_REGION@
    | TFilterRegularChannelId
      -- ^ @FILTER_REGULAR_CHANNEL_ID@
    | TFilterSiteId
      -- ^ @FILTER_SITE_ID@
    | TFilterSiteLanguage
      -- ^ @FILTER_SITE_LANGUAGE@
    | TFilterTargetedUserList
      -- ^ @FILTER_TARGETED_USER_LIST@
    | TFilterTimeOfDay
      -- ^ @FILTER_TIME_OF_DAY@
    | TFilterTrueviewConversionType
      -- ^ @FILTER_TRUEVIEW_CONVERSION_TYPE@
    | TFilterUnknown
      -- ^ @FILTER_UNKNOWN@
    | TFilterUserList
      -- ^ @FILTER_USER_LIST@
    | TFilterUserListFirstParty
      -- ^ @FILTER_USER_LIST_FIRST_PARTY@
    | TFilterUserListThirdParty
      -- ^ @FILTER_USER_LIST_THIRD_PARTY@
    | TFilterVideoAdPositionInStream
      -- ^ @FILTER_VIDEO_AD_POSITION_IN_STREAM@
    | TFilterVideoCompanionSize
      -- ^ @FILTER_VIDEO_COMPANION_SIZE@
    | TFilterVideoCompanionType
      -- ^ @FILTER_VIDEO_COMPANION_TYPE@
    | TFilterVideoCreativeDuration
      -- ^ @FILTER_VIDEO_CREATIVE_DURATION@
    | TFilterVideoCreativeDurationSkippable
      -- ^ @FILTER_VIDEO_CREATIVE_DURATION_SKIPPABLE@
    | TFilterVideoDurationSeconds
      -- ^ @FILTER_VIDEO_DURATION_SECONDS@
    | TFilterVideoFormatSupport
      -- ^ @FILTER_VIDEO_FORMAT_SUPPORT@
    | TFilterVideoInventoryType
      -- ^ @FILTER_VIDEO_INVENTORY_TYPE@
    | TFilterVideoPlayerSize
      -- ^ @FILTER_VIDEO_PLAYER_SIZE@
    | TFilterVideoRatingTier
      -- ^ @FILTER_VIDEO_RATING_TIER@
    | TFilterVideoSkippableSupport
      -- ^ @FILTER_VIDEO_SKIPPABLE_SUPPORT@
    | TFilterVideoVpaidSupport
      -- ^ @FILTER_VIDEO_VPAID_SUPPORT@
    | TFilterWeek
      -- ^ @FILTER_WEEK@
    | TFilterYear
      -- ^ @FILTER_YEAR@
    | TFilterYouTubeVertical
      -- ^ @FILTER_YOUTUBE_VERTICAL@
    | TFilterZipCode
      -- ^ @FILTER_ZIP_CODE@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable Type

instance FromText Type where
    fromText = \case
        "FILTER_ACTIVE_VIEW_EXPECTED_VIEWABILITY" -> Just TFilterActiveViewExpectedViewability
        "FILTER_ACTIVITY_ID" -> Just TFilterActivityId
        "FILTER_ADVERTISER" -> Just TFilterAdvertiser
        "FILTER_ADVERTISER_CURRENCY" -> Just TFilterAdvertiserCurrency
        "FILTER_ADVERTISER_TIMEZONE" -> Just TFilterAdvertiserTimezone
        "FILTER_AD_POSITION" -> Just TFilterAdPosition
        "FILTER_AGE" -> Just TFilterAge
        "FILTER_BRANDSAFE_CHANNEL_ID" -> Just TFilterBrandsafeChannelId
        "FILTER_BROWSER" -> Just TFilterBrowser
        "FILTER_CAMPAIGN_DAILY_FREQUENCY" -> Just TFilterCampaignDailyFrequency
        "FILTER_CARRIER" -> Just TFilterCarrier
        "FILTER_CHANNEL_ID" -> Just TFilterChannelId
        "FILTER_CITY" -> Just TFilterCity
        "FILTER_CONVERSION_DELAY" -> Just TFilterConversionDelay
        "FILTER_COUNTRY" -> Just TFilterCountry
        "FILTER_CREATIVE_ID" -> Just TFilterCreativeId
        "FILTER_CREATIVE_SIZE" -> Just TFilterCreativeSize
        "FILTER_CREATIVE_TYPE" -> Just TFilterCreativeType
        "FILTER_DATA_PROVIDER" -> Just TFilterDataProvider
        "FILTER_DATE" -> Just TFilterDate
        "FILTER_DAY_OF_WEEK" -> Just TFilterDayOfWeek
        "FILTER_DMA" -> Just TFilterDma
        "FILTER_EXCHANGE_ID" -> Just TFilterExchangeId
        "FILTER_FLOODLIGHT_PIXEL_ID" -> Just TFilterFloodlightPixelId
        "FILTER_GENDER" -> Just TFilterGender
        "FILTER_INSERTION_ORDER" -> Just TFilterInsertionOrder
        "FILTER_INVENTORY_FORMAT" -> Just TFilterInventoryFormat
        "FILTER_INVENTORY_SOURCE" -> Just TFilterInventorySource
        "FILTER_INVENTORY_SOURCE_TYPE" -> Just TFilterInventorySourceType
        "FILTER_KEYWORD" -> Just TFilterKeyword
        "FILTER_LINE_ITEM" -> Just TFilterLineItem
        "FILTER_LINE_ITEM_DAILY_FREQUENCY" -> Just TFilterLineItemDailyFrequency
        "FILTER_LINE_ITEM_LIFETIME_FREQUENCY" -> Just TFilterLineItemLifetimeFrequency
        "FILTER_LINE_ITEM_TYPE" -> Just TFilterLineItemType
        "FILTER_MOBILE_DEVICE_MAKE" -> Just TFilterMobileDeviceMake
        "FILTER_MOBILE_DEVICE_MAKE_MODEL" -> Just TFilterMobileDeviceMakeModel
        "FILTER_MOBILE_DEVICE_TYPE" -> Just TFilterMobileDeviceType
        "FILTER_MOBILE_GEO" -> Just TFilterMobileGeo
        "FILTER_MONTH" -> Just TFilterMonth
        "FILTER_MRAID_SUPPORT" -> Just TFilterMraidSupport
        "FILTER_NIELSEN_AGE" -> Just TFilterNielsenAge
        "FILTER_NIELSEN_COUNTRY_CODE" -> Just TFilterNielsenCountryCode
        "FILTER_NIELSEN_DEVICE_ID" -> Just TFilterNielsenDeviceId
        "FILTER_NIELSEN_GENDER" -> Just TFilterNielsenGender
        "FILTER_ORDER_ID" -> Just TFilterOrderId
        "FILTER_OS" -> Just TFilterOS
        "FILTER_PAGE_CATEGORY" -> Just TFilterPageCategory
        "FILTER_PAGE_LAYOUT" -> Just TFilterPageLayout
        "FILTER_PARTNER" -> Just TFilterPartner
        "FILTER_PARTNER_CURRENCY" -> Just TFilterPartnerCurrency
        "FILTER_PUBLIC_INVENTORY" -> Just TFilterPublicInventory
        "FILTER_QUARTER" -> Just TFilterQuarter
        "FILTER_REGION" -> Just TFilterRegion
        "FILTER_REGULAR_CHANNEL_ID" -> Just TFilterRegularChannelId
        "FILTER_SITE_ID" -> Just TFilterSiteId
        "FILTER_SITE_LANGUAGE" -> Just TFilterSiteLanguage
        "FILTER_TARGETED_USER_LIST" -> Just TFilterTargetedUserList
        "FILTER_TIME_OF_DAY" -> Just TFilterTimeOfDay
        "FILTER_TRUEVIEW_CONVERSION_TYPE" -> Just TFilterTrueviewConversionType
        "FILTER_UNKNOWN" -> Just TFilterUnknown
        "FILTER_USER_LIST" -> Just TFilterUserList
        "FILTER_USER_LIST_FIRST_PARTY" -> Just TFilterUserListFirstParty
        "FILTER_USER_LIST_THIRD_PARTY" -> Just TFilterUserListThirdParty
        "FILTER_VIDEO_AD_POSITION_IN_STREAM" -> Just TFilterVideoAdPositionInStream
        "FILTER_VIDEO_COMPANION_SIZE" -> Just TFilterVideoCompanionSize
        "FILTER_VIDEO_COMPANION_TYPE" -> Just TFilterVideoCompanionType
        "FILTER_VIDEO_CREATIVE_DURATION" -> Just TFilterVideoCreativeDuration
        "FILTER_VIDEO_CREATIVE_DURATION_SKIPPABLE" -> Just TFilterVideoCreativeDurationSkippable
        "FILTER_VIDEO_DURATION_SECONDS" -> Just TFilterVideoDurationSeconds
        "FILTER_VIDEO_FORMAT_SUPPORT" -> Just TFilterVideoFormatSupport
        "FILTER_VIDEO_INVENTORY_TYPE" -> Just TFilterVideoInventoryType
        "FILTER_VIDEO_PLAYER_SIZE" -> Just TFilterVideoPlayerSize
        "FILTER_VIDEO_RATING_TIER" -> Just TFilterVideoRatingTier
        "FILTER_VIDEO_SKIPPABLE_SUPPORT" -> Just TFilterVideoSkippableSupport
        "FILTER_VIDEO_VPAID_SUPPORT" -> Just TFilterVideoVpaidSupport
        "FILTER_WEEK" -> Just TFilterWeek
        "FILTER_YEAR" -> Just TFilterYear
        "FILTER_YOUTUBE_VERTICAL" -> Just TFilterYouTubeVertical
        "FILTER_ZIP_CODE" -> Just TFilterZipCode
        _ -> Nothing

instance ToText Type where
    toText = \case
        TFilterActiveViewExpectedViewability -> "FILTER_ACTIVE_VIEW_EXPECTED_VIEWABILITY"
        TFilterActivityId -> "FILTER_ACTIVITY_ID"
        TFilterAdvertiser -> "FILTER_ADVERTISER"
        TFilterAdvertiserCurrency -> "FILTER_ADVERTISER_CURRENCY"
        TFilterAdvertiserTimezone -> "FILTER_ADVERTISER_TIMEZONE"
        TFilterAdPosition -> "FILTER_AD_POSITION"
        TFilterAge -> "FILTER_AGE"
        TFilterBrandsafeChannelId -> "FILTER_BRANDSAFE_CHANNEL_ID"
        TFilterBrowser -> "FILTER_BROWSER"
        TFilterCampaignDailyFrequency -> "FILTER_CAMPAIGN_DAILY_FREQUENCY"
        TFilterCarrier -> "FILTER_CARRIER"
        TFilterChannelId -> "FILTER_CHANNEL_ID"
        TFilterCity -> "FILTER_CITY"
        TFilterConversionDelay -> "FILTER_CONVERSION_DELAY"
        TFilterCountry -> "FILTER_COUNTRY"
        TFilterCreativeId -> "FILTER_CREATIVE_ID"
        TFilterCreativeSize -> "FILTER_CREATIVE_SIZE"
        TFilterCreativeType -> "FILTER_CREATIVE_TYPE"
        TFilterDataProvider -> "FILTER_DATA_PROVIDER"
        TFilterDate -> "FILTER_DATE"
        TFilterDayOfWeek -> "FILTER_DAY_OF_WEEK"
        TFilterDma -> "FILTER_DMA"
        TFilterExchangeId -> "FILTER_EXCHANGE_ID"
        TFilterFloodlightPixelId -> "FILTER_FLOODLIGHT_PIXEL_ID"
        TFilterGender -> "FILTER_GENDER"
        TFilterInsertionOrder -> "FILTER_INSERTION_ORDER"
        TFilterInventoryFormat -> "FILTER_INVENTORY_FORMAT"
        TFilterInventorySource -> "FILTER_INVENTORY_SOURCE"
        TFilterInventorySourceType -> "FILTER_INVENTORY_SOURCE_TYPE"
        TFilterKeyword -> "FILTER_KEYWORD"
        TFilterLineItem -> "FILTER_LINE_ITEM"
        TFilterLineItemDailyFrequency -> "FILTER_LINE_ITEM_DAILY_FREQUENCY"
        TFilterLineItemLifetimeFrequency -> "FILTER_LINE_ITEM_LIFETIME_FREQUENCY"
        TFilterLineItemType -> "FILTER_LINE_ITEM_TYPE"
        TFilterMobileDeviceMake -> "FILTER_MOBILE_DEVICE_MAKE"
        TFilterMobileDeviceMakeModel -> "FILTER_MOBILE_DEVICE_MAKE_MODEL"
        TFilterMobileDeviceType -> "FILTER_MOBILE_DEVICE_TYPE"
        TFilterMobileGeo -> "FILTER_MOBILE_GEO"
        TFilterMonth -> "FILTER_MONTH"
        TFilterMraidSupport -> "FILTER_MRAID_SUPPORT"
        TFilterNielsenAge -> "FILTER_NIELSEN_AGE"
        TFilterNielsenCountryCode -> "FILTER_NIELSEN_COUNTRY_CODE"
        TFilterNielsenDeviceId -> "FILTER_NIELSEN_DEVICE_ID"
        TFilterNielsenGender -> "FILTER_NIELSEN_GENDER"
        TFilterOrderId -> "FILTER_ORDER_ID"
        TFilterOS -> "FILTER_OS"
        TFilterPageCategory -> "FILTER_PAGE_CATEGORY"
        TFilterPageLayout -> "FILTER_PAGE_LAYOUT"
        TFilterPartner -> "FILTER_PARTNER"
        TFilterPartnerCurrency -> "FILTER_PARTNER_CURRENCY"
        TFilterPublicInventory -> "FILTER_PUBLIC_INVENTORY"
        TFilterQuarter -> "FILTER_QUARTER"
        TFilterRegion -> "FILTER_REGION"
        TFilterRegularChannelId -> "FILTER_REGULAR_CHANNEL_ID"
        TFilterSiteId -> "FILTER_SITE_ID"
        TFilterSiteLanguage -> "FILTER_SITE_LANGUAGE"
        TFilterTargetedUserList -> "FILTER_TARGETED_USER_LIST"
        TFilterTimeOfDay -> "FILTER_TIME_OF_DAY"
        TFilterTrueviewConversionType -> "FILTER_TRUEVIEW_CONVERSION_TYPE"
        TFilterUnknown -> "FILTER_UNKNOWN"
        TFilterUserList -> "FILTER_USER_LIST"
        TFilterUserListFirstParty -> "FILTER_USER_LIST_FIRST_PARTY"
        TFilterUserListThirdParty -> "FILTER_USER_LIST_THIRD_PARTY"
        TFilterVideoAdPositionInStream -> "FILTER_VIDEO_AD_POSITION_IN_STREAM"
        TFilterVideoCompanionSize -> "FILTER_VIDEO_COMPANION_SIZE"
        TFilterVideoCompanionType -> "FILTER_VIDEO_COMPANION_TYPE"
        TFilterVideoCreativeDuration -> "FILTER_VIDEO_CREATIVE_DURATION"
        TFilterVideoCreativeDurationSkippable -> "FILTER_VIDEO_CREATIVE_DURATION_SKIPPABLE"
        TFilterVideoDurationSeconds -> "FILTER_VIDEO_DURATION_SECONDS"
        TFilterVideoFormatSupport -> "FILTER_VIDEO_FORMAT_SUPPORT"
        TFilterVideoInventoryType -> "FILTER_VIDEO_INVENTORY_TYPE"
        TFilterVideoPlayerSize -> "FILTER_VIDEO_PLAYER_SIZE"
        TFilterVideoRatingTier -> "FILTER_VIDEO_RATING_TIER"
        TFilterVideoSkippableSupport -> "FILTER_VIDEO_SKIPPABLE_SUPPORT"
        TFilterVideoVpaidSupport -> "FILTER_VIDEO_VPAID_SUPPORT"
        TFilterWeek -> "FILTER_WEEK"
        TFilterYear -> "FILTER_YEAR"
        TFilterYouTubeVertical -> "FILTER_YOUTUBE_VERTICAL"
        TFilterZipCode -> "FILTER_ZIP_CODE"

instance FromJSON Type where
    parseJSON = parseJSONText "Type"

instance ToJSON Type where
    toJSON = toJSONText

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

instance FromJSON DownloadLineItemsRequestFormat where
    parseJSON = parseJSONText "DownloadLineItemsRequestFormat"

instance ToJSON DownloadLineItemsRequestFormat where
    toJSON = toJSONText

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

instance FromJSON ReportStatusFormat where
    parseJSON = parseJSONText "ReportStatusFormat"

instance ToJSON ReportStatusFormat where
    toJSON = toJSONText
