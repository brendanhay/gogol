{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.DoubleClickBids.Types.Sum
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.DoubleClickBids.Types.Sum where

import           Network.Google.Prelude

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
    | TypeNielsenAudienceProFile
      -- ^ @TYPE_NIELSEN_AUDIENCE_PROFILE@
    | TypeNielsenDailyReachBuild
      -- ^ @TYPE_NIELSEN_DAILY_REACH_BUILD@
    | TypeNielsenOnlineGlobalMarket
      -- ^ @TYPE_NIELSEN_ONLINE_GLOBAL_MARKET@
    | TypeNielsenSite
      -- ^ @TYPE_NIELSEN_SITE@
    | TypeNotSupported
      -- ^ @TYPE_NOT_SUPPORTED@
    | TypeOrderId
      -- ^ @TYPE_ORDER_ID@
    | TypePageCategory
      -- ^ @TYPE_PAGE_CATEGORY@
    | TypePetraNielsenAudienceProFile
      -- ^ @TYPE_PETRA_NIELSEN_AUDIENCE_PROFILE@
    | TypePetraNielsenDailyReachBuild
      -- ^ @TYPE_PETRA_NIELSEN_DAILY_REACH_BUILD@
    | TypePetraNielsenOnlineGlobalMarket
      -- ^ @TYPE_PETRA_NIELSEN_ONLINE_GLOBAL_MARKET@
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
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ParametersType

instance FromHttpApiData ParametersType where
    parseQueryParam = \case
        "TYPE_ACTIVE_GRP" -> Right TypeActiveGrp
        "TYPE_AUDIENCE_COMPOSITION" -> Right TypeAudienceComPosition
        "TYPE_AUDIENCE_PERFORMANCE" -> Right TypeAudiencePerformance
        "TYPE_CLIENT_SAFE" -> Right TypeClientSafe
        "TYPE_COMSCORE_VCE" -> Right TypeComscoreVce
        "TYPE_CROSS_FEE" -> Right TypeCrossFee
        "TYPE_CROSS_PARTNER" -> Right TypeCrossPartner
        "TYPE_CROSS_PARTNER_THIRD_PARTY_DATA_PROVIDER" -> Right TypeCrossPartnerThirdPartyDataProvider
        "TYPE_ESTIMATED_CONVERSION" -> Right TypeEstimatedConversion
        "TYPE_FEE" -> Right TypeFee
        "TYPE_GENERAL" -> Right TypeGeneral
        "TYPE_INVENTORY_AVAILABILITY" -> Right TypeInventoryAvailability
        "TYPE_KEYWORD" -> Right TypeKeyword
        "TYPE_NIELSEN_AUDIENCE_PROFILE" -> Right TypeNielsenAudienceProFile
        "TYPE_NIELSEN_DAILY_REACH_BUILD" -> Right TypeNielsenDailyReachBuild
        "TYPE_NIELSEN_ONLINE_GLOBAL_MARKET" -> Right TypeNielsenOnlineGlobalMarket
        "TYPE_NIELSEN_SITE" -> Right TypeNielsenSite
        "TYPE_NOT_SUPPORTED" -> Right TypeNotSupported
        "TYPE_ORDER_ID" -> Right TypeOrderId
        "TYPE_PAGE_CATEGORY" -> Right TypePageCategory
        "TYPE_PETRA_NIELSEN_AUDIENCE_PROFILE" -> Right TypePetraNielsenAudienceProFile
        "TYPE_PETRA_NIELSEN_DAILY_REACH_BUILD" -> Right TypePetraNielsenDailyReachBuild
        "TYPE_PETRA_NIELSEN_ONLINE_GLOBAL_MARKET" -> Right TypePetraNielsenOnlineGlobalMarket
        "TYPE_PIXEL_LOAD" -> Right TypePixelLoad
        "TYPE_REACH_AND_FREQUENCY" -> Right TypeReachAndFrequency
        "TYPE_THIRD_PARTY_DATA_PROVIDER" -> Right TypeThirdPartyDataProvider
        "TYPE_TRUEVIEW" -> Right TypeTrueview
        "TYPE_TRUEVIEW_IAR" -> Right TypeTrueviewIar
        "TYPE_VERIFICATION" -> Right TypeVerification
        "TYPE_YOUTUBE_VERTICAL" -> Right TypeYouTubeVertical
        x -> Left ("Unable to parse ParametersType from: " <> x)

instance ToHttpApiData ParametersType where
    toQueryParam = \case
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
        TypeNielsenAudienceProFile -> "TYPE_NIELSEN_AUDIENCE_PROFILE"
        TypeNielsenDailyReachBuild -> "TYPE_NIELSEN_DAILY_REACH_BUILD"
        TypeNielsenOnlineGlobalMarket -> "TYPE_NIELSEN_ONLINE_GLOBAL_MARKET"
        TypeNielsenSite -> "TYPE_NIELSEN_SITE"
        TypeNotSupported -> "TYPE_NOT_SUPPORTED"
        TypeOrderId -> "TYPE_ORDER_ID"
        TypePageCategory -> "TYPE_PAGE_CATEGORY"
        TypePetraNielsenAudienceProFile -> "TYPE_PETRA_NIELSEN_AUDIENCE_PROFILE"
        TypePetraNielsenDailyReachBuild -> "TYPE_PETRA_NIELSEN_DAILY_REACH_BUILD"
        TypePetraNielsenOnlineGlobalMarket -> "TYPE_PETRA_NIELSEN_ONLINE_GLOBAL_MARKET"
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
data DownloadLineItemsRequestFilterType
    = AdvertiserId
      -- ^ @ADVERTISER_ID@
    | InsertionOrderId
      -- ^ @INSERTION_ORDER_ID@
    | LineItemId
      -- ^ @LINE_ITEM_ID@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable DownloadLineItemsRequestFilterType

instance FromHttpApiData DownloadLineItemsRequestFilterType where
    parseQueryParam = \case
        "ADVERTISER_ID" -> Right AdvertiserId
        "INSERTION_ORDER_ID" -> Right InsertionOrderId
        "LINE_ITEM_ID" -> Right LineItemId
        x -> Left ("Unable to parse DownloadLineItemsRequestFilterType from: " <> x)

instance ToHttpApiData DownloadLineItemsRequestFilterType where
    toQueryParam = \case
        AdvertiserId -> "ADVERTISER_ID"
        InsertionOrderId -> "INSERTION_ORDER_ID"
        LineItemId -> "LINE_ITEM_ID"

instance FromJSON DownloadLineItemsRequestFilterType where
    parseJSON = parseJSONText "DownloadLineItemsRequestFilterType"

instance ToJSON DownloadLineItemsRequestFilterType where
    toJSON = toJSONText

-- | Filter type used to filter line items to fetch.
data DownloadRequestFilterType
    = DRFTAdvertiserId
      -- ^ @ADVERTISER_ID@
    | DRFTInsertionOrderId
      -- ^ @INSERTION_ORDER_ID@
    | DRFTLineItemId
      -- ^ @LINE_ITEM_ID@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable DownloadRequestFilterType

instance FromHttpApiData DownloadRequestFilterType where
    parseQueryParam = \case
        "ADVERTISER_ID" -> Right DRFTAdvertiserId
        "INSERTION_ORDER_ID" -> Right DRFTInsertionOrderId
        "LINE_ITEM_ID" -> Right DRFTLineItemId
        x -> Left ("Unable to parse DownloadRequestFilterType from: " <> x)

instance ToHttpApiData DownloadRequestFilterType where
    toQueryParam = \case
        DRFTAdvertiserId -> "ADVERTISER_ID"
        DRFTInsertionOrderId -> "INSERTION_ORDER_ID"
        DRFTLineItemId -> "LINE_ITEM_ID"

instance FromJSON DownloadRequestFilterType where
    parseJSON = parseJSONText "DownloadRequestFilterType"

instance ToJSON DownloadRequestFilterType where
    toJSON = toJSONText

data DownloadRequestFileTypesItem
    = AD
      -- ^ @AD@
    | AdGroup
      -- ^ @AD_GROUP@
    | InsertionOrder
      -- ^ @INSERTION_ORDER@
    | LineItem
      -- ^ @LINE_ITEM@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable DownloadRequestFileTypesItem

instance FromHttpApiData DownloadRequestFileTypesItem where
    parseQueryParam = \case
        "AD" -> Right AD
        "AD_GROUP" -> Right AdGroup
        "INSERTION_ORDER" -> Right InsertionOrder
        "LINE_ITEM" -> Right LineItem
        x -> Left ("Unable to parse DownloadRequestFileTypesItem from: " <> x)

instance ToHttpApiData DownloadRequestFileTypesItem where
    toQueryParam = \case
        AD -> "AD"
        AdGroup -> "AD_GROUP"
        InsertionOrder -> "INSERTION_ORDER"
        LineItem -> "LINE_ITEM"

instance FromJSON DownloadRequestFileTypesItem where
    parseJSON = parseJSONText "DownloadRequestFileTypesItem"

instance ToJSON DownloadRequestFileTypesItem where
    toJSON = toJSONText

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
    | QMDRTypeNotSupported
      -- ^ @TYPE_NOT_SUPPORTED@
    | QMDRWeekToDate
      -- ^ @WEEK_TO_DATE@
    | QMDRYearToDate
      -- ^ @YEAR_TO_DATE@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable QueryMetadataDataRange

instance FromHttpApiData QueryMetadataDataRange where
    parseQueryParam = \case
        "ALL_TIME" -> Right QMDRAllTime
        "CURRENT_DAY" -> Right QMDRCurrentDay
        "CUSTOM_DATES" -> Right QMDRCustomDates
        "LAST_14_DAYS" -> Right QMDRLast14Days
        "LAST_30_DAYS" -> Right QMDRLast30Days
        "LAST_365_DAYS" -> Right QMDRLast365Days
        "LAST_7_DAYS" -> Right QMDRLast7Days
        "LAST_90_DAYS" -> Right QMDRLast90Days
        "MONTH_TO_DATE" -> Right QMDRMonthToDate
        "PREVIOUS_DAY" -> Right QMDRPreviousDay
        "PREVIOUS_HALF_MONTH" -> Right QMDRPreviousHalfMonth
        "PREVIOUS_MONTH" -> Right QMDRPreviousMonth
        "PREVIOUS_QUARTER" -> Right QMDRPreviousQuarter
        "PREVIOUS_WEEK" -> Right QMDRPreviousWeek
        "PREVIOUS_YEAR" -> Right QMDRPreviousYear
        "QUARTER_TO_DATE" -> Right QMDRQuarterToDate
        "TYPE_NOT_SUPPORTED" -> Right QMDRTypeNotSupported
        "WEEK_TO_DATE" -> Right QMDRWeekToDate
        "YEAR_TO_DATE" -> Right QMDRYearToDate
        x -> Left ("Unable to parse QueryMetadataDataRange from: " <> x)

instance ToHttpApiData QueryMetadataDataRange where
    toQueryParam = \case
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
        QMDRTypeNotSupported -> "TYPE_NOT_SUPPORTED"
        QMDRWeekToDate -> "WEEK_TO_DATE"
        QMDRYearToDate -> "YEAR_TO_DATE"

instance FromJSON QueryMetadataDataRange where
    parseJSON = parseJSONText "QueryMetadataDataRange"

instance ToJSON QueryMetadataDataRange where
    toJSON = toJSONText

data ParametersMetricsItem
    = MetricActiveViewAverageViewableTime
      -- ^ @METRIC_ACTIVE_VIEW_AVERAGE_VIEWABLE_TIME@
    | MetricActiveViewDistributionUnmeasurable
      -- ^ @METRIC_ACTIVE_VIEW_DISTRIBUTION_UNMEASURABLE@
    | MetricActiveViewDistributionUnviewable
      -- ^ @METRIC_ACTIVE_VIEW_DISTRIBUTION_UNVIEWABLE@
    | MetricActiveViewDistributionViewable
      -- ^ @METRIC_ACTIVE_VIEW_DISTRIBUTION_VIEWABLE@
    | MetricActiveViewEligibleImpressions
      -- ^ @METRIC_ACTIVE_VIEW_ELIGIBLE_IMPRESSIONS@
    | MetricActiveViewMeasurableImpressions
      -- ^ @METRIC_ACTIVE_VIEW_MEASURABLE_IMPRESSIONS@
    | MetricActiveViewPctMeasurableImpressions
      -- ^ @METRIC_ACTIVE_VIEW_PCT_MEASURABLE_IMPRESSIONS@
    | MetricActiveViewPctViewableImpressions
      -- ^ @METRIC_ACTIVE_VIEW_PCT_VIEWABLE_IMPRESSIONS@
    | MetricActiveViewUnmeasurableImpressions
      -- ^ @METRIC_ACTIVE_VIEW_UNMEASURABLE_IMPRESSIONS@
    | MetricActiveViewUnviewableImpressions
      -- ^ @METRIC_ACTIVE_VIEW_UNVIEWABLE_IMPRESSIONS@
    | MetricActiveViewViewableImpressions
      -- ^ @METRIC_ACTIVE_VIEW_VIEWABLE_IMPRESSIONS@
    | MetricBidRequests
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
    | MetricFEE21Advertiser
      -- ^ @METRIC_FEE21_ADVERTISER@
    | MetricFEE21Partner
      -- ^ @METRIC_FEE21_PARTNER@
    | MetricFEE21Usd
      -- ^ @METRIC_FEE21_USD@
    | MetricFEE22Advertiser
      -- ^ @METRIC_FEE22_ADVERTISER@
    | MetricFEE22Partner
      -- ^ @METRIC_FEE22_PARTNER@
    | MetricFEE22Usd
      -- ^ @METRIC_FEE22_USD@
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
    | MetricMediaCostViewableEcpmAdvertiser
      -- ^ @METRIC_MEDIA_COST_VIEWABLE_ECPM_ADVERTISER@
    | MetricMediaCostViewableEcpmPartner
      -- ^ @METRIC_MEDIA_COST_VIEWABLE_ECPM_PARTNER@
    | MetricMediaCostViewableEcpmUsd
      -- ^ @METRIC_MEDIA_COST_VIEWABLE_ECPM_USD@
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
    | MetricProfitViewableEcpmAdvertiser
      -- ^ @METRIC_PROFIT_VIEWABLE_ECPM_ADVERTISER@
    | MetricProfitViewableEcpmPartner
      -- ^ @METRIC_PROFIT_VIEWABLE_ECPM_PARTNER@
    | MetricProfitViewableEcpmUsd
      -- ^ @METRIC_PROFIT_VIEWABLE_ECPM_USD@
    | MetricReachCookieReach
      -- ^ @METRIC_REACH_COOKIE_REACH@
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
    | MetricRevenueViewableEcpmAdvertiser
      -- ^ @METRIC_REVENUE_VIEWABLE_ECPM_ADVERTISER@
    | MetricRevenueViewableEcpmPartner
      -- ^ @METRIC_REVENUE_VIEWABLE_ECPM_PARTNER@
    | MetricRevenueViewableEcpmUsd
      -- ^ @METRIC_REVENUE_VIEWABLE_ECPM_USD@
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
    | MetricTotalMediaCostViewableEcpmAdvertiser
      -- ^ @METRIC_TOTAL_MEDIA_COST_VIEWABLE_ECPM_ADVERTISER@
    | MetricTotalMediaCostViewableEcpmPartner
      -- ^ @METRIC_TOTAL_MEDIA_COST_VIEWABLE_ECPM_PARTNER@
    | MetricTotalMediaCostViewableEcpmUsd
      -- ^ @METRIC_TOTAL_MEDIA_COST_VIEWABLE_ECPM_USD@
    | MetricTrueviewAverageCpeAdvertiser
      -- ^ @METRIC_TRUEVIEW_AVERAGE_CPE_ADVERTISER@
    | MetricTrueviewAverageCpePartner
      -- ^ @METRIC_TRUEVIEW_AVERAGE_CPE_PARTNER@
    | MetricTrueviewAverageCpeUsd
      -- ^ @METRIC_TRUEVIEW_AVERAGE_CPE_USD@
    | MetricTrueviewConversionCostManyPerViewAdvertiser
      -- ^ @METRIC_TRUEVIEW_CONVERSION_COST_MANY_PER_VIEW_ADVERTISER@
    | MetricTrueviewConversionCostManyPerViewPartner
      -- ^ @METRIC_TRUEVIEW_CONVERSION_COST_MANY_PER_VIEW_PARTNER@
    | MetricTrueviewConversionCostManyPerViewUsd
      -- ^ @METRIC_TRUEVIEW_CONVERSION_COST_MANY_PER_VIEW_USD@
    | MetricTrueviewConversionCostOnePerViewAdvertiser
      -- ^ @METRIC_TRUEVIEW_CONVERSION_COST_ONE_PER_VIEW_ADVERTISER@
    | MetricTrueviewConversionCostOnePerViewPartner
      -- ^ @METRIC_TRUEVIEW_CONVERSION_COST_ONE_PER_VIEW_PARTNER@
    | MetricTrueviewConversionCostOnePerViewUsd
      -- ^ @METRIC_TRUEVIEW_CONVERSION_COST_ONE_PER_VIEW_USD@
    | MetricTrueviewConversionManyPerView
      -- ^ @METRIC_TRUEVIEW_CONVERSION_MANY_PER_VIEW@
    | MetricTrueviewConversionOnePerView
      -- ^ @METRIC_TRUEVIEW_CONVERSION_ONE_PER_VIEW@
    | MetricTrueviewConversionRateOnePerView
      -- ^ @METRIC_TRUEVIEW_CONVERSION_RATE_ONE_PER_VIEW@
    | MetricTrueviewConversionValueManyPerViewAdvertiser
      -- ^ @METRIC_TRUEVIEW_CONVERSION_VALUE_MANY_PER_VIEW_ADVERTISER@
    | MetricTrueviewConversionValueManyPerViewPartner
      -- ^ @METRIC_TRUEVIEW_CONVERSION_VALUE_MANY_PER_VIEW_PARTNER@
    | MetricTrueviewConversionValueManyPerViewUsd
      -- ^ @METRIC_TRUEVIEW_CONVERSION_VALUE_MANY_PER_VIEW_USD@
    | MetricTrueviewConversionValueOnePerViewAdvertiser
      -- ^ @METRIC_TRUEVIEW_CONVERSION_VALUE_ONE_PER_VIEW_ADVERTISER@
    | MetricTrueviewConversionValueOnePerViewPartner
      -- ^ @METRIC_TRUEVIEW_CONVERSION_VALUE_ONE_PER_VIEW_PARTNER@
    | MetricTrueviewConversionValueOnePerViewUsd
      -- ^ @METRIC_TRUEVIEW_CONVERSION_VALUE_ONE_PER_VIEW_USD@
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
    | MetricTrueviewEngagements
      -- ^ @METRIC_TRUEVIEW_ENGAGEMENTS@
    | MetricTrueviewEngagementRate
      -- ^ @METRIC_TRUEVIEW_ENGAGEMENT_RATE@
    | MetricTrueviewImpressionShare
      -- ^ @METRIC_TRUEVIEW_IMPRESSION_SHARE@
    | MetricTrueviewLostIsBudget
      -- ^ @METRIC_TRUEVIEW_LOST_IS_BUDGET@
    | MetricTrueviewLostIsRank
      -- ^ @METRIC_TRUEVIEW_LOST_IS_RANK@
    | MetricTrueviewTotalConversionValue
      -- ^ @METRIC_TRUEVIEW_TOTAL_CONVERSION_VALUE@
    | MetricTrueviewTotalConversionValuesAdvertiser
      -- ^ @METRIC_TRUEVIEW_TOTAL_CONVERSION_VALUES_ADVERTISER@
    | MetricTrueviewTotalConversionValuesPartner
      -- ^ @METRIC_TRUEVIEW_TOTAL_CONVERSION_VALUES_PARTNER@
    | MetricTrueviewTotalConversionValuesUsd
      -- ^ @METRIC_TRUEVIEW_TOTAL_CONVERSION_VALUES_USD@
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
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ParametersMetricsItem

instance FromHttpApiData ParametersMetricsItem where
    parseQueryParam = \case
        "METRIC_ACTIVE_VIEW_AVERAGE_VIEWABLE_TIME" -> Right MetricActiveViewAverageViewableTime
        "METRIC_ACTIVE_VIEW_DISTRIBUTION_UNMEASURABLE" -> Right MetricActiveViewDistributionUnmeasurable
        "METRIC_ACTIVE_VIEW_DISTRIBUTION_UNVIEWABLE" -> Right MetricActiveViewDistributionUnviewable
        "METRIC_ACTIVE_VIEW_DISTRIBUTION_VIEWABLE" -> Right MetricActiveViewDistributionViewable
        "METRIC_ACTIVE_VIEW_ELIGIBLE_IMPRESSIONS" -> Right MetricActiveViewEligibleImpressions
        "METRIC_ACTIVE_VIEW_MEASURABLE_IMPRESSIONS" -> Right MetricActiveViewMeasurableImpressions
        "METRIC_ACTIVE_VIEW_PCT_MEASURABLE_IMPRESSIONS" -> Right MetricActiveViewPctMeasurableImpressions
        "METRIC_ACTIVE_VIEW_PCT_VIEWABLE_IMPRESSIONS" -> Right MetricActiveViewPctViewableImpressions
        "METRIC_ACTIVE_VIEW_UNMEASURABLE_IMPRESSIONS" -> Right MetricActiveViewUnmeasurableImpressions
        "METRIC_ACTIVE_VIEW_UNVIEWABLE_IMPRESSIONS" -> Right MetricActiveViewUnviewableImpressions
        "METRIC_ACTIVE_VIEW_VIEWABLE_IMPRESSIONS" -> Right MetricActiveViewViewableImpressions
        "METRIC_BID_REQUESTS" -> Right MetricBidRequests
        "METRIC_BILLABLE_COST_ADVERTISER" -> Right MetricBillableCostAdvertiser
        "METRIC_BILLABLE_COST_PARTNER" -> Right MetricBillableCostPartner
        "METRIC_BILLABLE_COST_USD" -> Right MetricBillableCostUsd
        "METRIC_CLICKS" -> Right MetricClicks
        "METRIC_CLICK_TO_POST_CLICK_CONVERSION_RATE" -> Right MetricClickToPostClickConversionRate
        "METRIC_COMSCORE_VCE_AUDIENCE_AVG_FREQUENCY" -> Right MetricComscoreVceAudienceAvgFrequency
        "METRIC_COMSCORE_VCE_AUDIENCE_IMPRESSIONS" -> Right MetricComscoreVceAudienceImpressions
        "METRIC_COMSCORE_VCE_AUDIENCE_IMPRESSIONS_SHARE" -> Right MetricComscoreVceAudienceImpressionsShare
        "METRIC_COMSCORE_VCE_AUDIENCE_REACH_PCT" -> Right MetricComscoreVceAudienceReachPct
        "METRIC_COMSCORE_VCE_AUDIENCE_SHARE_PCT" -> Right MetricComscoreVceAudienceSharePct
        "METRIC_COMSCORE_VCE_GROSS_RATING_POINTS" -> Right MetricComscoreVceGrossRatingPoints
        "METRIC_COMSCORE_VCE_POPULATION" -> Right MetricComscoreVcePopulation
        "METRIC_COMSCORE_VCE_UNIQUE_AUDIENCE" -> Right MetricComscoreVceUniqueAudience
        "METRIC_CONVERSIONS_PER_MILLE" -> Right MetricConversionsPerMille
        "METRIC_CPM_FEE1_ADVERTISER" -> Right MetricCpmFEE1Advertiser
        "METRIC_CPM_FEE1_PARTNER" -> Right MetricCpmFEE1Partner
        "METRIC_CPM_FEE1_USD" -> Right MetricCpmFEE1Usd
        "METRIC_CPM_FEE2_ADVERTISER" -> Right MetricCpmFEE2Advertiser
        "METRIC_CPM_FEE2_PARTNER" -> Right MetricCpmFEE2Partner
        "METRIC_CPM_FEE2_USD" -> Right MetricCpmFEE2Usd
        "METRIC_CPM_FEE3_ADVERTISER" -> Right MetricCpmFEE3Advertiser
        "METRIC_CPM_FEE3_PARTNER" -> Right MetricCpmFEE3Partner
        "METRIC_CPM_FEE3_USD" -> Right MetricCpmFEE3Usd
        "METRIC_CPM_FEE4_ADVERTISER" -> Right MetricCpmFEE4Advertiser
        "METRIC_CPM_FEE4_PARTNER" -> Right MetricCpmFEE4Partner
        "METRIC_CPM_FEE4_USD" -> Right MetricCpmFEE4Usd
        "METRIC_CPM_FEE5_ADVERTISER" -> Right MetricCpmFEE5Advertiser
        "METRIC_CPM_FEE5_PARTNER" -> Right MetricCpmFEE5Partner
        "METRIC_CPM_FEE5_USD" -> Right MetricCpmFEE5Usd
        "METRIC_CTR" -> Right MetricCtr
        "METRIC_DATA_COST_ADVERTISER" -> Right MetricDataCostAdvertiser
        "METRIC_DATA_COST_PARTNER" -> Right MetricDataCostPartner
        "METRIC_DATA_COST_USD" -> Right MetricDataCostUsd
        "METRIC_FEE10_ADVERTISER" -> Right MetricFEE10Advertiser
        "METRIC_FEE10_PARTNER" -> Right MetricFEE10Partner
        "METRIC_FEE10_USD" -> Right MetricFEE10Usd
        "METRIC_FEE11_ADVERTISER" -> Right MetricFEE11Advertiser
        "METRIC_FEE11_PARTNER" -> Right MetricFEE11Partner
        "METRIC_FEE11_USD" -> Right MetricFEE11Usd
        "METRIC_FEE12_ADVERTISER" -> Right MetricFEE12Advertiser
        "METRIC_FEE12_PARTNER" -> Right MetricFEE12Partner
        "METRIC_FEE12_USD" -> Right MetricFEE12Usd
        "METRIC_FEE13_ADVERTISER" -> Right MetricFEE13Advertiser
        "METRIC_FEE13_PARTNER" -> Right MetricFEE13Partner
        "METRIC_FEE13_USD" -> Right MetricFEE13Usd
        "METRIC_FEE14_ADVERTISER" -> Right MetricFEE14Advertiser
        "METRIC_FEE14_PARTNER" -> Right MetricFEE14Partner
        "METRIC_FEE14_USD" -> Right MetricFEE14Usd
        "METRIC_FEE15_ADVERTISER" -> Right MetricFEE15Advertiser
        "METRIC_FEE15_PARTNER" -> Right MetricFEE15Partner
        "METRIC_FEE15_USD" -> Right MetricFEE15Usd
        "METRIC_FEE16_ADVERTISER" -> Right MetricFEE16Advertiser
        "METRIC_FEE16_PARTNER" -> Right MetricFEE16Partner
        "METRIC_FEE16_USD" -> Right MetricFEE16Usd
        "METRIC_FEE17_ADVERTISER" -> Right MetricFEE17Advertiser
        "METRIC_FEE17_PARTNER" -> Right MetricFEE17Partner
        "METRIC_FEE17_USD" -> Right MetricFEE17Usd
        "METRIC_FEE18_ADVERTISER" -> Right MetricFEE18Advertiser
        "METRIC_FEE18_PARTNER" -> Right MetricFEE18Partner
        "METRIC_FEE18_USD" -> Right MetricFEE18Usd
        "METRIC_FEE19_ADVERTISER" -> Right MetricFEE19Advertiser
        "METRIC_FEE19_PARTNER" -> Right MetricFEE19Partner
        "METRIC_FEE19_USD" -> Right MetricFEE19Usd
        "METRIC_FEE20_ADVERTISER" -> Right MetricFEE20Advertiser
        "METRIC_FEE20_PARTNER" -> Right MetricFEE20Partner
        "METRIC_FEE20_USD" -> Right MetricFEE20Usd
        "METRIC_FEE21_ADVERTISER" -> Right MetricFEE21Advertiser
        "METRIC_FEE21_PARTNER" -> Right MetricFEE21Partner
        "METRIC_FEE21_USD" -> Right MetricFEE21Usd
        "METRIC_FEE22_ADVERTISER" -> Right MetricFEE22Advertiser
        "METRIC_FEE22_PARTNER" -> Right MetricFEE22Partner
        "METRIC_FEE22_USD" -> Right MetricFEE22Usd
        "METRIC_FEE2_ADVERTISER" -> Right MetricFEE2Advertiser
        "METRIC_FEE2_PARTNER" -> Right MetricFEE2Partner
        "METRIC_FEE2_USD" -> Right MetricFEE2Usd
        "METRIC_FEE3_ADVERTISER" -> Right MetricFEE3Advertiser
        "METRIC_FEE3_PARTNER" -> Right MetricFEE3Partner
        "METRIC_FEE3_USD" -> Right MetricFEE3Usd
        "METRIC_FEE4_ADVERTISER" -> Right MetricFEE4Advertiser
        "METRIC_FEE4_PARTNER" -> Right MetricFEE4Partner
        "METRIC_FEE4_USD" -> Right MetricFEE4Usd
        "METRIC_FEE5_ADVERTISER" -> Right MetricFEE5Advertiser
        "METRIC_FEE5_PARTNER" -> Right MetricFEE5Partner
        "METRIC_FEE5_USD" -> Right MetricFEE5Usd
        "METRIC_FEE6_ADVERTISER" -> Right MetricFEE6Advertiser
        "METRIC_FEE6_PARTNER" -> Right MetricFEE6Partner
        "METRIC_FEE6_USD" -> Right MetricFEE6Usd
        "METRIC_FEE7_ADVERTISER" -> Right MetricFEE7Advertiser
        "METRIC_FEE7_PARTNER" -> Right MetricFEE7Partner
        "METRIC_FEE7_USD" -> Right MetricFEE7Usd
        "METRIC_FEE8_ADVERTISER" -> Right MetricFEE8Advertiser
        "METRIC_FEE8_PARTNER" -> Right MetricFEE8Partner
        "METRIC_FEE8_USD" -> Right MetricFEE8Usd
        "METRIC_FEE9_ADVERTISER" -> Right MetricFEE9Advertiser
        "METRIC_FEE9_PARTNER" -> Right MetricFEE9Partner
        "METRIC_FEE9_USD" -> Right MetricFEE9Usd
        "METRIC_IMPRESSIONS" -> Right MetricImpressions
        "METRIC_IMPRESSIONS_TO_CONVERSION_RATE" -> Right MetricImpressionsToConversionRate
        "METRIC_LAST_CLICKS" -> Right MetricLastClicks
        "METRIC_LAST_IMPRESSIONS" -> Right MetricLastImpressions
        "METRIC_MEDIA_COST_ADVERTISER" -> Right MetricMediaCostAdvertiser
        "METRIC_MEDIA_COST_ECPAPC_ADVERTISER" -> Right MetricMediaCostEcpapcAdvertiser
        "METRIC_MEDIA_COST_ECPAPC_PARTNER" -> Right MetricMediaCostEcpapcPartner
        "METRIC_MEDIA_COST_ECPAPC_USD" -> Right MetricMediaCostEcpapcUsd
        "METRIC_MEDIA_COST_ECPAPV_ADVERTISER" -> Right MetricMediaCostEcpapvAdvertiser
        "METRIC_MEDIA_COST_ECPAPV_PARTNER" -> Right MetricMediaCostEcpapvPartner
        "METRIC_MEDIA_COST_ECPAPV_USD" -> Right MetricMediaCostEcpapvUsd
        "METRIC_MEDIA_COST_ECPA_ADVERTISER" -> Right MetricMediaCostEcpaAdvertiser
        "METRIC_MEDIA_COST_ECPA_PARTNER" -> Right MetricMediaCostEcpaPartner
        "METRIC_MEDIA_COST_ECPA_USD" -> Right MetricMediaCostEcpaUsd
        "METRIC_MEDIA_COST_ECPCV_ADVERTISER" -> Right MetricMediaCostEcpcvAdvertiser
        "METRIC_MEDIA_COST_ECPCV_PARTNER" -> Right MetricMediaCostEcpcvPartner
        "METRIC_MEDIA_COST_ECPCV_USD" -> Right MetricMediaCostEcpcvUsd
        "METRIC_MEDIA_COST_ECPC_ADVERTISER" -> Right MetricMediaCostEcpcAdvertiser
        "METRIC_MEDIA_COST_ECPC_PARTNER" -> Right MetricMediaCostEcpcPartner
        "METRIC_MEDIA_COST_ECPC_USD" -> Right MetricMediaCostEcpcUsd
        "METRIC_MEDIA_COST_ECPM_ADVERTISER" -> Right MetricMediaCostEcpmAdvertiser
        "METRIC_MEDIA_COST_ECPM_PARTNER" -> Right MetricMediaCostEcpmPartner
        "METRIC_MEDIA_COST_ECPM_USD" -> Right MetricMediaCostEcpmUsd
        "METRIC_MEDIA_COST_PARTNER" -> Right MetricMediaCostPartner
        "METRIC_MEDIA_COST_USD" -> Right MetricMediaCostUsd
        "METRIC_MEDIA_COST_VIEWABLE_ECPM_ADVERTISER" -> Right MetricMediaCostViewableEcpmAdvertiser
        "METRIC_MEDIA_COST_VIEWABLE_ECPM_PARTNER" -> Right MetricMediaCostViewableEcpmPartner
        "METRIC_MEDIA_COST_VIEWABLE_ECPM_USD" -> Right MetricMediaCostViewableEcpmUsd
        "METRIC_MEDIA_FEE1_ADVERTISER" -> Right MetricMediaFEE1Advertiser
        "METRIC_MEDIA_FEE1_PARTNER" -> Right MetricMediaFEE1Partner
        "METRIC_MEDIA_FEE1_USD" -> Right MetricMediaFEE1Usd
        "METRIC_MEDIA_FEE2_ADVERTISER" -> Right MetricMediaFEE2Advertiser
        "METRIC_MEDIA_FEE2_PARTNER" -> Right MetricMediaFEE2Partner
        "METRIC_MEDIA_FEE2_USD" -> Right MetricMediaFEE2Usd
        "METRIC_MEDIA_FEE3_ADVERTISER" -> Right MetricMediaFEE3Advertiser
        "METRIC_MEDIA_FEE3_PARTNER" -> Right MetricMediaFEE3Partner
        "METRIC_MEDIA_FEE3_USD" -> Right MetricMediaFEE3Usd
        "METRIC_MEDIA_FEE4_ADVERTISER" -> Right MetricMediaFEE4Advertiser
        "METRIC_MEDIA_FEE4_PARTNER" -> Right MetricMediaFEE4Partner
        "METRIC_MEDIA_FEE4_USD" -> Right MetricMediaFEE4Usd
        "METRIC_MEDIA_FEE5_ADVERTISER" -> Right MetricMediaFEE5Advertiser
        "METRIC_MEDIA_FEE5_PARTNER" -> Right MetricMediaFEE5Partner
        "METRIC_MEDIA_FEE5_USD" -> Right MetricMediaFEE5Usd
        "METRIC_PIXEL_LOADS" -> Right MetricPixelLoads
        "METRIC_PLATFORM_FEE_ADVERTISER" -> Right MetricPlatformFeeAdvertiser
        "METRIC_PLATFORM_FEE_PARTNER" -> Right MetricPlatformFeePartner
        "METRIC_PLATFORM_FEE_USD" -> Right MetricPlatformFeeUsd
        "METRIC_POST_CLICK_DFA_REVENUE" -> Right MetricPostClickDfaRevenue
        "METRIC_POST_VIEW_DFA_REVENUE" -> Right MetricPostViewDfaRevenue
        "METRIC_PROFIT_ADVERTISER" -> Right MetricProfitAdvertiser
        "METRIC_PROFIT_ECPAPC_ADVERTISER" -> Right MetricProfitEcpapcAdvertiser
        "METRIC_PROFIT_ECPAPC_PARTNER" -> Right MetricProfitEcpapcPartner
        "METRIC_PROFIT_ECPAPC_USD" -> Right MetricProfitEcpapcUsd
        "METRIC_PROFIT_ECPAPV_ADVERTISER" -> Right MetricProfitEcpapvAdvertiser
        "METRIC_PROFIT_ECPAPV_PARTNER" -> Right MetricProfitEcpapvPartner
        "METRIC_PROFIT_ECPAPV_USD" -> Right MetricProfitEcpapvUsd
        "METRIC_PROFIT_ECPA_ADVERTISER" -> Right MetricProfitEcpaAdvertiser
        "METRIC_PROFIT_ECPA_PARTNER" -> Right MetricProfitEcpaPartner
        "METRIC_PROFIT_ECPA_USD" -> Right MetricProfitEcpaUsd
        "METRIC_PROFIT_ECPC_ADVERTISER" -> Right MetricProfitEcpcAdvertiser
        "METRIC_PROFIT_ECPC_PARTNER" -> Right MetricProfitEcpcPartner
        "METRIC_PROFIT_ECPC_USD" -> Right MetricProfitEcpcUsd
        "METRIC_PROFIT_ECPM_ADVERTISER" -> Right MetricProfitEcpmAdvertiser
        "METRIC_PROFIT_ECPM_PARTNER" -> Right MetricProfitEcpmPartner
        "METRIC_PROFIT_ECPM_USD" -> Right MetricProfitEcpmUsd
        "METRIC_PROFIT_MARGIN" -> Right MetricProfitMargin
        "METRIC_PROFIT_PARTNER" -> Right MetricProfitPartner
        "METRIC_PROFIT_USD" -> Right MetricProfitUsd
        "METRIC_PROFIT_VIEWABLE_ECPM_ADVERTISER" -> Right MetricProfitViewableEcpmAdvertiser
        "METRIC_PROFIT_VIEWABLE_ECPM_PARTNER" -> Right MetricProfitViewableEcpmPartner
        "METRIC_PROFIT_VIEWABLE_ECPM_USD" -> Right MetricProfitViewableEcpmUsd
        "METRIC_REACH_COOKIE_REACH" -> Right MetricReachCookieReach
        "METRIC_REVENUE_ADVERTISER" -> Right MetricRevenueAdvertiser
        "METRIC_REVENUE_ECPAPC_ADVERTISER" -> Right MetricRevenueEcpapcAdvertiser
        "METRIC_REVENUE_ECPAPC_PARTNER" -> Right MetricRevenueEcpapcPartner
        "METRIC_REVENUE_ECPAPC_USD" -> Right MetricRevenueEcpapcUsd
        "METRIC_REVENUE_ECPAPV_ADVERTISER" -> Right MetricRevenueEcpapvAdvertiser
        "METRIC_REVENUE_ECPAPV_PARTNER" -> Right MetricRevenueEcpapvPartner
        "METRIC_REVENUE_ECPAPV_USD" -> Right MetricRevenueEcpapvUsd
        "METRIC_REVENUE_ECPA_ADVERTISER" -> Right MetricRevenueEcpaAdvertiser
        "METRIC_REVENUE_ECPA_PARTNER" -> Right MetricRevenueEcpaPartner
        "METRIC_REVENUE_ECPA_USD" -> Right MetricRevenueEcpaUsd
        "METRIC_REVENUE_ECPCV_ADVERTISER" -> Right MetricRevenueEcpcvAdvertiser
        "METRIC_REVENUE_ECPCV_PARTNER" -> Right MetricRevenueEcpcvPartner
        "METRIC_REVENUE_ECPCV_USD" -> Right MetricRevenueEcpcvUsd
        "METRIC_REVENUE_ECPC_ADVERTISER" -> Right MetricRevenueEcpcAdvertiser
        "METRIC_REVENUE_ECPC_PARTNER" -> Right MetricRevenueEcpcPartner
        "METRIC_REVENUE_ECPC_USD" -> Right MetricRevenueEcpcUsd
        "METRIC_REVENUE_ECPM_ADVERTISER" -> Right MetricRevenueEcpmAdvertiser
        "METRIC_REVENUE_ECPM_PARTNER" -> Right MetricRevenueEcpmPartner
        "METRIC_REVENUE_ECPM_USD" -> Right MetricRevenueEcpmUsd
        "METRIC_REVENUE_PARTNER" -> Right MetricRevenuePartner
        "METRIC_REVENUE_USD" -> Right MetricRevenueUsd
        "METRIC_REVENUE_VIEWABLE_ECPM_ADVERTISER" -> Right MetricRevenueViewableEcpmAdvertiser
        "METRIC_REVENUE_VIEWABLE_ECPM_PARTNER" -> Right MetricRevenueViewableEcpmPartner
        "METRIC_REVENUE_VIEWABLE_ECPM_USD" -> Right MetricRevenueViewableEcpmUsd
        "METRIC_RICH_MEDIA_VIDEO_COMPLETIONS" -> Right MetricRichMediaVideoCompletions
        "METRIC_RICH_MEDIA_VIDEO_FIRST_QUARTILE_COMPLETES" -> Right MetricRichMediaVideoFirstQuartileCompletes
        "METRIC_RICH_MEDIA_VIDEO_FULL_SCREENS" -> Right MetricRichMediaVideoFullScreens
        "METRIC_RICH_MEDIA_VIDEO_MIDPOINTS" -> Right MetricRichMediaVideoMidpoints
        "METRIC_RICH_MEDIA_VIDEO_MUTES" -> Right MetricRichMediaVideoMutes
        "METRIC_RICH_MEDIA_VIDEO_PAUSES" -> Right MetricRichMediaVideoPauses
        "METRIC_RICH_MEDIA_VIDEO_PLAYS" -> Right MetricRichMediaVideoPlays
        "METRIC_RICH_MEDIA_VIDEO_SKIPS" -> Right MetricRichMediaVideoSkips
        "METRIC_RICH_MEDIA_VIDEO_THIRD_QUARTILE_COMPLETES" -> Right MetricRichMediaVideoThirdQuartileCompletes
        "METRIC_TEA_TRUEVIEW_IMPRESSIONS" -> Right MetricTeaTrueviewImpressions
        "METRIC_TEA_TRUEVIEW_UNIQUE_COOKIES" -> Right MetricTeaTrueviewUniqueCookies
        "METRIC_TEA_TRUEVIEW_UNIQUE_PEOPLE" -> Right MetricTeaTrueviewUniquePeople
        "METRIC_TOTAL_CONVERSIONS" -> Right MetricTotalConversions
        "METRIC_TOTAL_MEDIA_COST_ADVERTISER" -> Right MetricTotalMediaCostAdvertiser
        "METRIC_TOTAL_MEDIA_COST_ECPAPC_ADVERTISER" -> Right MetricTotalMediaCostEcpapcAdvertiser
        "METRIC_TOTAL_MEDIA_COST_ECPAPC_PARTNER" -> Right MetricTotalMediaCostEcpapcPartner
        "METRIC_TOTAL_MEDIA_COST_ECPAPC_USD" -> Right MetricTotalMediaCostEcpapcUsd
        "METRIC_TOTAL_MEDIA_COST_ECPAPV_ADVERTISER" -> Right MetricTotalMediaCostEcpapvAdvertiser
        "METRIC_TOTAL_MEDIA_COST_ECPAPV_PARTNER" -> Right MetricTotalMediaCostEcpapvPartner
        "METRIC_TOTAL_MEDIA_COST_ECPAPV_USD" -> Right MetricTotalMediaCostEcpapvUsd
        "METRIC_TOTAL_MEDIA_COST_ECPA_ADVERTISER" -> Right MetricTotalMediaCostEcpaAdvertiser
        "METRIC_TOTAL_MEDIA_COST_ECPA_PARTNER" -> Right MetricTotalMediaCostEcpaPartner
        "METRIC_TOTAL_MEDIA_COST_ECPA_USD" -> Right MetricTotalMediaCostEcpaUsd
        "METRIC_TOTAL_MEDIA_COST_ECPCV_ADVERTISER" -> Right MetricTotalMediaCostEcpcvAdvertiser
        "METRIC_TOTAL_MEDIA_COST_ECPCV_PARTNER" -> Right MetricTotalMediaCostEcpcvPartner
        "METRIC_TOTAL_MEDIA_COST_ECPCV_USD" -> Right MetricTotalMediaCostEcpcvUsd
        "METRIC_TOTAL_MEDIA_COST_ECPC_ADVERTISER" -> Right MetricTotalMediaCostEcpcAdvertiser
        "METRIC_TOTAL_MEDIA_COST_ECPC_PARTNER" -> Right MetricTotalMediaCostEcpcPartner
        "METRIC_TOTAL_MEDIA_COST_ECPC_USD" -> Right MetricTotalMediaCostEcpcUsd
        "METRIC_TOTAL_MEDIA_COST_ECPM_ADVERTISER" -> Right MetricTotalMediaCostEcpmAdvertiser
        "METRIC_TOTAL_MEDIA_COST_ECPM_PARTNER" -> Right MetricTotalMediaCostEcpmPartner
        "METRIC_TOTAL_MEDIA_COST_ECPM_USD" -> Right MetricTotalMediaCostEcpmUsd
        "METRIC_TOTAL_MEDIA_COST_PARTNER" -> Right MetricTotalMediaCostPartner
        "METRIC_TOTAL_MEDIA_COST_USD" -> Right MetricTotalMediaCostUsd
        "METRIC_TOTAL_MEDIA_COST_VIEWABLE_ECPM_ADVERTISER" -> Right MetricTotalMediaCostViewableEcpmAdvertiser
        "METRIC_TOTAL_MEDIA_COST_VIEWABLE_ECPM_PARTNER" -> Right MetricTotalMediaCostViewableEcpmPartner
        "METRIC_TOTAL_MEDIA_COST_VIEWABLE_ECPM_USD" -> Right MetricTotalMediaCostViewableEcpmUsd
        "METRIC_TRUEVIEW_AVERAGE_CPE_ADVERTISER" -> Right MetricTrueviewAverageCpeAdvertiser
        "METRIC_TRUEVIEW_AVERAGE_CPE_PARTNER" -> Right MetricTrueviewAverageCpePartner
        "METRIC_TRUEVIEW_AVERAGE_CPE_USD" -> Right MetricTrueviewAverageCpeUsd
        "METRIC_TRUEVIEW_CONVERSION_COST_MANY_PER_VIEW_ADVERTISER" -> Right MetricTrueviewConversionCostManyPerViewAdvertiser
        "METRIC_TRUEVIEW_CONVERSION_COST_MANY_PER_VIEW_PARTNER" -> Right MetricTrueviewConversionCostManyPerViewPartner
        "METRIC_TRUEVIEW_CONVERSION_COST_MANY_PER_VIEW_USD" -> Right MetricTrueviewConversionCostManyPerViewUsd
        "METRIC_TRUEVIEW_CONVERSION_COST_ONE_PER_VIEW_ADVERTISER" -> Right MetricTrueviewConversionCostOnePerViewAdvertiser
        "METRIC_TRUEVIEW_CONVERSION_COST_ONE_PER_VIEW_PARTNER" -> Right MetricTrueviewConversionCostOnePerViewPartner
        "METRIC_TRUEVIEW_CONVERSION_COST_ONE_PER_VIEW_USD" -> Right MetricTrueviewConversionCostOnePerViewUsd
        "METRIC_TRUEVIEW_CONVERSION_MANY_PER_VIEW" -> Right MetricTrueviewConversionManyPerView
        "METRIC_TRUEVIEW_CONVERSION_ONE_PER_VIEW" -> Right MetricTrueviewConversionOnePerView
        "METRIC_TRUEVIEW_CONVERSION_RATE_ONE_PER_VIEW" -> Right MetricTrueviewConversionRateOnePerView
        "METRIC_TRUEVIEW_CONVERSION_VALUE_MANY_PER_VIEW_ADVERTISER" -> Right MetricTrueviewConversionValueManyPerViewAdvertiser
        "METRIC_TRUEVIEW_CONVERSION_VALUE_MANY_PER_VIEW_PARTNER" -> Right MetricTrueviewConversionValueManyPerViewPartner
        "METRIC_TRUEVIEW_CONVERSION_VALUE_MANY_PER_VIEW_USD" -> Right MetricTrueviewConversionValueManyPerViewUsd
        "METRIC_TRUEVIEW_CONVERSION_VALUE_ONE_PER_VIEW_ADVERTISER" -> Right MetricTrueviewConversionValueOnePerViewAdvertiser
        "METRIC_TRUEVIEW_CONVERSION_VALUE_ONE_PER_VIEW_PARTNER" -> Right MetricTrueviewConversionValueOnePerViewPartner
        "METRIC_TRUEVIEW_CONVERSION_VALUE_ONE_PER_VIEW_USD" -> Right MetricTrueviewConversionValueOnePerViewUsd
        "METRIC_TRUEVIEW_COST_CONVERSION_MANY_PER_VIEW_RATIO" -> Right MetricTrueviewCostConversionManyPerViewRatio
        "METRIC_TRUEVIEW_COST_CONVERSION_ONE_PER_VIEW_RATIO" -> Right MetricTrueviewCostConversionOnePerViewRatio
        "METRIC_TRUEVIEW_CPV_ADVERTISER" -> Right MetricTrueviewCpvAdvertiser
        "METRIC_TRUEVIEW_CPV_PARTNER" -> Right MetricTrueviewCpvPartner
        "METRIC_TRUEVIEW_CPV_USD" -> Right MetricTrueviewCpvUsd
        "METRIC_TRUEVIEW_EARNED_LIKES" -> Right MetricTrueviewEarnedLikes
        "METRIC_TRUEVIEW_EARNED_PLAYLIST_ADDITIONS" -> Right MetricTrueviewEarnedPlayListAdditions
        "METRIC_TRUEVIEW_EARNED_SHARES" -> Right MetricTrueviewEarnedShares
        "METRIC_TRUEVIEW_EARNED_SUBSCRIBERS" -> Right MetricTrueviewEarnedSubscribers
        "METRIC_TRUEVIEW_EARNED_VIEWS" -> Right MetricTrueviewEarnedViews
        "METRIC_TRUEVIEW_ENGAGEMENTS" -> Right MetricTrueviewEngagements
        "METRIC_TRUEVIEW_ENGAGEMENT_RATE" -> Right MetricTrueviewEngagementRate
        "METRIC_TRUEVIEW_IMPRESSION_SHARE" -> Right MetricTrueviewImpressionShare
        "METRIC_TRUEVIEW_LOST_IS_BUDGET" -> Right MetricTrueviewLostIsBudget
        "METRIC_TRUEVIEW_LOST_IS_RANK" -> Right MetricTrueviewLostIsRank
        "METRIC_TRUEVIEW_TOTAL_CONVERSION_VALUE" -> Right MetricTrueviewTotalConversionValue
        "METRIC_TRUEVIEW_TOTAL_CONVERSION_VALUES_ADVERTISER" -> Right MetricTrueviewTotalConversionValuesAdvertiser
        "METRIC_TRUEVIEW_TOTAL_CONVERSION_VALUES_PARTNER" -> Right MetricTrueviewTotalConversionValuesPartner
        "METRIC_TRUEVIEW_TOTAL_CONVERSION_VALUES_USD" -> Right MetricTrueviewTotalConversionValuesUsd
        "METRIC_TRUEVIEW_UNIQUE_VIEWERS" -> Right MetricTrueviewUniqueViewers
        "METRIC_TRUEVIEW_VALUE_CONVERSION_MANY_PER_VIEW_RATIO" -> Right MetricTrueviewValueConversionManyPerViewRatio
        "METRIC_TRUEVIEW_VALUE_CONVERSION_ONE_PER_VIEW_RATIO" -> Right MetricTrueviewValueConversionOnePerViewRatio
        "METRIC_TRUEVIEW_VIEWS" -> Right MetricTrueviewViews
        "METRIC_TRUEVIEW_VIEW_RATE" -> Right MetricTrueviewViewRate
        "METRIC_TRUEVIEW_VIEW_THROUGH_CONVERSION" -> Right MetricTrueviewViewThroughConversion
        "METRIC_UNIQUE_VISITORS_COOKIES" -> Right MetricUniqueVisitorsCookies
        "METRIC_UNKNOWN" -> Right MetricUnknown
        "METRIC_VIDEO_COMPANION_CLICKS" -> Right MetricVideoCompanionClicks
        "METRIC_VIDEO_COMPANION_IMPRESSIONS" -> Right MetricVideoCompanionImpressions
        "METRIC_VIDEO_COMPLETION_RATE" -> Right MetricVideoCompletionRate
        x -> Left ("Unable to parse ParametersMetricsItem from: " <> x)

instance ToHttpApiData ParametersMetricsItem where
    toQueryParam = \case
        MetricActiveViewAverageViewableTime -> "METRIC_ACTIVE_VIEW_AVERAGE_VIEWABLE_TIME"
        MetricActiveViewDistributionUnmeasurable -> "METRIC_ACTIVE_VIEW_DISTRIBUTION_UNMEASURABLE"
        MetricActiveViewDistributionUnviewable -> "METRIC_ACTIVE_VIEW_DISTRIBUTION_UNVIEWABLE"
        MetricActiveViewDistributionViewable -> "METRIC_ACTIVE_VIEW_DISTRIBUTION_VIEWABLE"
        MetricActiveViewEligibleImpressions -> "METRIC_ACTIVE_VIEW_ELIGIBLE_IMPRESSIONS"
        MetricActiveViewMeasurableImpressions -> "METRIC_ACTIVE_VIEW_MEASURABLE_IMPRESSIONS"
        MetricActiveViewPctMeasurableImpressions -> "METRIC_ACTIVE_VIEW_PCT_MEASURABLE_IMPRESSIONS"
        MetricActiveViewPctViewableImpressions -> "METRIC_ACTIVE_VIEW_PCT_VIEWABLE_IMPRESSIONS"
        MetricActiveViewUnmeasurableImpressions -> "METRIC_ACTIVE_VIEW_UNMEASURABLE_IMPRESSIONS"
        MetricActiveViewUnviewableImpressions -> "METRIC_ACTIVE_VIEW_UNVIEWABLE_IMPRESSIONS"
        MetricActiveViewViewableImpressions -> "METRIC_ACTIVE_VIEW_VIEWABLE_IMPRESSIONS"
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
        MetricFEE21Advertiser -> "METRIC_FEE21_ADVERTISER"
        MetricFEE21Partner -> "METRIC_FEE21_PARTNER"
        MetricFEE21Usd -> "METRIC_FEE21_USD"
        MetricFEE22Advertiser -> "METRIC_FEE22_ADVERTISER"
        MetricFEE22Partner -> "METRIC_FEE22_PARTNER"
        MetricFEE22Usd -> "METRIC_FEE22_USD"
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
        MetricMediaCostViewableEcpmAdvertiser -> "METRIC_MEDIA_COST_VIEWABLE_ECPM_ADVERTISER"
        MetricMediaCostViewableEcpmPartner -> "METRIC_MEDIA_COST_VIEWABLE_ECPM_PARTNER"
        MetricMediaCostViewableEcpmUsd -> "METRIC_MEDIA_COST_VIEWABLE_ECPM_USD"
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
        MetricProfitViewableEcpmAdvertiser -> "METRIC_PROFIT_VIEWABLE_ECPM_ADVERTISER"
        MetricProfitViewableEcpmPartner -> "METRIC_PROFIT_VIEWABLE_ECPM_PARTNER"
        MetricProfitViewableEcpmUsd -> "METRIC_PROFIT_VIEWABLE_ECPM_USD"
        MetricReachCookieReach -> "METRIC_REACH_COOKIE_REACH"
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
        MetricRevenueViewableEcpmAdvertiser -> "METRIC_REVENUE_VIEWABLE_ECPM_ADVERTISER"
        MetricRevenueViewableEcpmPartner -> "METRIC_REVENUE_VIEWABLE_ECPM_PARTNER"
        MetricRevenueViewableEcpmUsd -> "METRIC_REVENUE_VIEWABLE_ECPM_USD"
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
        MetricTotalMediaCostViewableEcpmAdvertiser -> "METRIC_TOTAL_MEDIA_COST_VIEWABLE_ECPM_ADVERTISER"
        MetricTotalMediaCostViewableEcpmPartner -> "METRIC_TOTAL_MEDIA_COST_VIEWABLE_ECPM_PARTNER"
        MetricTotalMediaCostViewableEcpmUsd -> "METRIC_TOTAL_MEDIA_COST_VIEWABLE_ECPM_USD"
        MetricTrueviewAverageCpeAdvertiser -> "METRIC_TRUEVIEW_AVERAGE_CPE_ADVERTISER"
        MetricTrueviewAverageCpePartner -> "METRIC_TRUEVIEW_AVERAGE_CPE_PARTNER"
        MetricTrueviewAverageCpeUsd -> "METRIC_TRUEVIEW_AVERAGE_CPE_USD"
        MetricTrueviewConversionCostManyPerViewAdvertiser -> "METRIC_TRUEVIEW_CONVERSION_COST_MANY_PER_VIEW_ADVERTISER"
        MetricTrueviewConversionCostManyPerViewPartner -> "METRIC_TRUEVIEW_CONVERSION_COST_MANY_PER_VIEW_PARTNER"
        MetricTrueviewConversionCostManyPerViewUsd -> "METRIC_TRUEVIEW_CONVERSION_COST_MANY_PER_VIEW_USD"
        MetricTrueviewConversionCostOnePerViewAdvertiser -> "METRIC_TRUEVIEW_CONVERSION_COST_ONE_PER_VIEW_ADVERTISER"
        MetricTrueviewConversionCostOnePerViewPartner -> "METRIC_TRUEVIEW_CONVERSION_COST_ONE_PER_VIEW_PARTNER"
        MetricTrueviewConversionCostOnePerViewUsd -> "METRIC_TRUEVIEW_CONVERSION_COST_ONE_PER_VIEW_USD"
        MetricTrueviewConversionManyPerView -> "METRIC_TRUEVIEW_CONVERSION_MANY_PER_VIEW"
        MetricTrueviewConversionOnePerView -> "METRIC_TRUEVIEW_CONVERSION_ONE_PER_VIEW"
        MetricTrueviewConversionRateOnePerView -> "METRIC_TRUEVIEW_CONVERSION_RATE_ONE_PER_VIEW"
        MetricTrueviewConversionValueManyPerViewAdvertiser -> "METRIC_TRUEVIEW_CONVERSION_VALUE_MANY_PER_VIEW_ADVERTISER"
        MetricTrueviewConversionValueManyPerViewPartner -> "METRIC_TRUEVIEW_CONVERSION_VALUE_MANY_PER_VIEW_PARTNER"
        MetricTrueviewConversionValueManyPerViewUsd -> "METRIC_TRUEVIEW_CONVERSION_VALUE_MANY_PER_VIEW_USD"
        MetricTrueviewConversionValueOnePerViewAdvertiser -> "METRIC_TRUEVIEW_CONVERSION_VALUE_ONE_PER_VIEW_ADVERTISER"
        MetricTrueviewConversionValueOnePerViewPartner -> "METRIC_TRUEVIEW_CONVERSION_VALUE_ONE_PER_VIEW_PARTNER"
        MetricTrueviewConversionValueOnePerViewUsd -> "METRIC_TRUEVIEW_CONVERSION_VALUE_ONE_PER_VIEW_USD"
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
        MetricTrueviewEngagements -> "METRIC_TRUEVIEW_ENGAGEMENTS"
        MetricTrueviewEngagementRate -> "METRIC_TRUEVIEW_ENGAGEMENT_RATE"
        MetricTrueviewImpressionShare -> "METRIC_TRUEVIEW_IMPRESSION_SHARE"
        MetricTrueviewLostIsBudget -> "METRIC_TRUEVIEW_LOST_IS_BUDGET"
        MetricTrueviewLostIsRank -> "METRIC_TRUEVIEW_LOST_IS_RANK"
        MetricTrueviewTotalConversionValue -> "METRIC_TRUEVIEW_TOTAL_CONVERSION_VALUE"
        MetricTrueviewTotalConversionValuesAdvertiser -> "METRIC_TRUEVIEW_TOTAL_CONVERSION_VALUES_ADVERTISER"
        MetricTrueviewTotalConversionValuesPartner -> "METRIC_TRUEVIEW_TOTAL_CONVERSION_VALUES_PARTNER"
        MetricTrueviewTotalConversionValuesUsd -> "METRIC_TRUEVIEW_TOTAL_CONVERSION_VALUES_USD"
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

instance FromJSON ParametersMetricsItem where
    parseJSON = parseJSONText "ParametersMetricsItem"

instance ToJSON ParametersMetricsItem where
    toJSON = toJSONText

-- | How often the query is run.
data QueryScheduleFrequency
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
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable QueryScheduleFrequency

instance FromHttpApiData QueryScheduleFrequency where
    parseQueryParam = \case
        "DAILY" -> Right Daily
        "MONTHLY" -> Right Monthly
        "ONE_TIME" -> Right OneTime
        "QUARTERLY" -> Right Quarterly
        "SEMI_MONTHLY" -> Right SemiMonthly
        "WEEKLY" -> Right Weekly
        x -> Left ("Unable to parse QueryScheduleFrequency from: " <> x)

instance ToHttpApiData QueryScheduleFrequency where
    toQueryParam = \case
        Daily -> "DAILY"
        Monthly -> "MONTHLY"
        OneTime -> "ONE_TIME"
        Quarterly -> "QUARTERLY"
        SemiMonthly -> "SEMI_MONTHLY"
        Weekly -> "WEEKLY"

instance FromJSON QueryScheduleFrequency where
    parseJSON = parseJSONText "QueryScheduleFrequency"

instance ToJSON QueryScheduleFrequency where
    toJSON = toJSONText

-- | File specification (column names, types, order) in which the line items
-- will be returned. Default to EWF.
data DownloadLineItemsRequestFileSpec
    = Ewf
      -- ^ @EWF@
    | Sdf
      -- ^ @SDF@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable DownloadLineItemsRequestFileSpec

instance FromHttpApiData DownloadLineItemsRequestFileSpec where
    parseQueryParam = \case
        "EWF" -> Right Ewf
        "SDF" -> Right Sdf
        x -> Left ("Unable to parse DownloadLineItemsRequestFileSpec from: " <> x)

instance ToHttpApiData DownloadLineItemsRequestFileSpec where
    toQueryParam = \case
        Ewf -> "EWF"
        Sdf -> "SDF"

instance FromJSON DownloadLineItemsRequestFileSpec where
    parseJSON = parseJSONText "DownloadLineItemsRequestFileSpec"

instance ToJSON DownloadLineItemsRequestFileSpec where
    toJSON = toJSONText

-- | Format the line items are in. Default to CSV.
data UploadLineItemsRequestFormat
    = ULIRFCSV
      -- ^ @CSV@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable UploadLineItemsRequestFormat

instance FromHttpApiData UploadLineItemsRequestFormat where
    parseQueryParam = \case
        "CSV" -> Right ULIRFCSV
        x -> Left ("Unable to parse UploadLineItemsRequestFormat from: " <> x)

instance ToHttpApiData UploadLineItemsRequestFormat where
    toQueryParam = \case
        ULIRFCSV -> "CSV"

instance FromJSON UploadLineItemsRequestFormat where
    parseJSON = parseJSONText "UploadLineItemsRequestFormat"

instance ToJSON UploadLineItemsRequestFormat where
    toJSON = toJSONText

-- | Filter type.
data FilterPairType
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
    | FilterCreativeHeight
      -- ^ @FILTER_CREATIVE_HEIGHT@
    | FilterCreativeId
      -- ^ @FILTER_CREATIVE_ID@
    | FilterCreativeSize
      -- ^ @FILTER_CREATIVE_SIZE@
    | FilterCreativeType
      -- ^ @FILTER_CREATIVE_TYPE@
    | FilterCreativeWidth
      -- ^ @FILTER_CREATIVE_WIDTH@
    | FilterDataProvider
      -- ^ @FILTER_DATA_PROVIDER@
    | FilterDate
      -- ^ @FILTER_DATE@
    | FilterDayOfWeek
      -- ^ @FILTER_DAY_OF_WEEK@
    | FilterDfpOrderId
      -- ^ @FILTER_DFP_ORDER_ID@
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
    | FilterMediaPlan
      -- ^ @FILTER_MEDIA_PLAN@
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
    | FilterNotSupported
      -- ^ @FILTER_NOT_SUPPORTED@
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
    | FilterTrueviewAdGroupAdId
      -- ^ @FILTER_TRUEVIEW_AD_GROUP_AD_ID@
    | FilterTrueviewAdGroupId
      -- ^ @FILTER_TRUEVIEW_AD_GROUP_ID@
    | FilterTrueviewAge
      -- ^ @FILTER_TRUEVIEW_AGE@
    | FilterTrueviewCategory
      -- ^ @FILTER_TRUEVIEW_CATEGORY@
    | FilterTrueviewCity
      -- ^ @FILTER_TRUEVIEW_CITY@
    | FilterTrueviewConversionType
      -- ^ @FILTER_TRUEVIEW_CONVERSION_TYPE@
    | FilterTrueviewCountry
      -- ^ @FILTER_TRUEVIEW_COUNTRY@
    | FilterTrueviewCustomAffinity
      -- ^ @FILTER_TRUEVIEW_CUSTOM_AFFINITY@
    | FilterTrueviewDma
      -- ^ @FILTER_TRUEVIEW_DMA@
    | FilterTrueviewGender
      -- ^ @FILTER_TRUEVIEW_GENDER@
    | FilterTrueviewIarAge
      -- ^ @FILTER_TRUEVIEW_IAR_AGE@
    | FilterTrueviewIarCategory
      -- ^ @FILTER_TRUEVIEW_IAR_CATEGORY@
    | FilterTrueviewIarCity
      -- ^ @FILTER_TRUEVIEW_IAR_CITY@
    | FilterTrueviewIarCountry
      -- ^ @FILTER_TRUEVIEW_IAR_COUNTRY@
    | FilterTrueviewIarGender
      -- ^ @FILTER_TRUEVIEW_IAR_GENDER@
    | FilterTrueviewIarInterest
      -- ^ @FILTER_TRUEVIEW_IAR_INTEREST@
    | FilterTrueviewIarLanguage
      -- ^ @FILTER_TRUEVIEW_IAR_LANGUAGE@
    | FilterTrueviewIarParentalStatus
      -- ^ @FILTER_TRUEVIEW_IAR_PARENTAL_STATUS@
    | FilterTrueviewIarRegion
      -- ^ @FILTER_TRUEVIEW_IAR_REGION@
    | FilterTrueviewIarRemarketingList
      -- ^ @FILTER_TRUEVIEW_IAR_REMARKETING_LIST@
    | FilterTrueviewIarTimeOfDay
      -- ^ @FILTER_TRUEVIEW_IAR_TIME_OF_DAY@
    | FilterTrueviewIarYouTubeChannel
      -- ^ @FILTER_TRUEVIEW_IAR_YOUTUBE_CHANNEL@
    | FilterTrueviewIarYouTubeVideo
      -- ^ @FILTER_TRUEVIEW_IAR_YOUTUBE_VIDEO@
    | FilterTrueviewIarZipcode
      -- ^ @FILTER_TRUEVIEW_IAR_ZIPCODE@
    | FilterTrueviewInterest
      -- ^ @FILTER_TRUEVIEW_INTEREST@
    | FilterTrueviewKeyword
      -- ^ @FILTER_TRUEVIEW_KEYWORD@
    | FilterTrueviewParentalStatus
      -- ^ @FILTER_TRUEVIEW_PARENTAL_STATUS@
    | FilterTrueviewPlacement
      -- ^ @FILTER_TRUEVIEW_PLACEMENT@
    | FilterTrueviewRegion
      -- ^ @FILTER_TRUEVIEW_REGION@
    | FilterTrueviewRemarketingList
      -- ^ @FILTER_TRUEVIEW_REMARKETING_LIST@
    | FilterTrueviewURL
      -- ^ @FILTER_TRUEVIEW_URL@
    | FilterTrueviewZipcode
      -- ^ @FILTER_TRUEVIEW_ZIPCODE@
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
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable FilterPairType

instance FromHttpApiData FilterPairType where
    parseQueryParam = \case
        "FILTER_ACTIVE_VIEW_EXPECTED_VIEWABILITY" -> Right FilterActiveViewExpectedViewability
        "FILTER_ACTIVITY_ID" -> Right FilterActivityId
        "FILTER_ADVERTISER" -> Right FilterAdvertiser
        "FILTER_ADVERTISER_CURRENCY" -> Right FilterAdvertiserCurrency
        "FILTER_ADVERTISER_TIMEZONE" -> Right FilterAdvertiserTimezone
        "FILTER_AD_POSITION" -> Right FilterAdPosition
        "FILTER_AGE" -> Right FilterAge
        "FILTER_BRANDSAFE_CHANNEL_ID" -> Right FilterBrandsafeChannelId
        "FILTER_BROWSER" -> Right FilterBrowser
        "FILTER_CAMPAIGN_DAILY_FREQUENCY" -> Right FilterCampaignDailyFrequency
        "FILTER_CARRIER" -> Right FilterCarrier
        "FILTER_CHANNEL_ID" -> Right FilterChannelId
        "FILTER_CITY" -> Right FilterCity
        "FILTER_CONVERSION_DELAY" -> Right FilterConversionDelay
        "FILTER_COUNTRY" -> Right FilterCountry
        "FILTER_CREATIVE_HEIGHT" -> Right FilterCreativeHeight
        "FILTER_CREATIVE_ID" -> Right FilterCreativeId
        "FILTER_CREATIVE_SIZE" -> Right FilterCreativeSize
        "FILTER_CREATIVE_TYPE" -> Right FilterCreativeType
        "FILTER_CREATIVE_WIDTH" -> Right FilterCreativeWidth
        "FILTER_DATA_PROVIDER" -> Right FilterDataProvider
        "FILTER_DATE" -> Right FilterDate
        "FILTER_DAY_OF_WEEK" -> Right FilterDayOfWeek
        "FILTER_DFP_ORDER_ID" -> Right FilterDfpOrderId
        "FILTER_DMA" -> Right FilterDma
        "FILTER_EXCHANGE_ID" -> Right FilterExchangeId
        "FILTER_FLOODLIGHT_PIXEL_ID" -> Right FilterFloodlightPixelId
        "FILTER_GENDER" -> Right FilterGender
        "FILTER_INSERTION_ORDER" -> Right FilterInsertionOrder
        "FILTER_INVENTORY_FORMAT" -> Right FilterInventoryFormat
        "FILTER_INVENTORY_SOURCE" -> Right FilterInventorySource
        "FILTER_INVENTORY_SOURCE_TYPE" -> Right FilterInventorySourceType
        "FILTER_KEYWORD" -> Right FilterKeyword
        "FILTER_LINE_ITEM" -> Right FilterLineItem
        "FILTER_LINE_ITEM_DAILY_FREQUENCY" -> Right FilterLineItemDailyFrequency
        "FILTER_LINE_ITEM_LIFETIME_FREQUENCY" -> Right FilterLineItemLifetimeFrequency
        "FILTER_LINE_ITEM_TYPE" -> Right FilterLineItemType
        "FILTER_MEDIA_PLAN" -> Right FilterMediaPlan
        "FILTER_MOBILE_DEVICE_MAKE" -> Right FilterMobileDeviceMake
        "FILTER_MOBILE_DEVICE_MAKE_MODEL" -> Right FilterMobileDeviceMakeModel
        "FILTER_MOBILE_DEVICE_TYPE" -> Right FilterMobileDeviceType
        "FILTER_MOBILE_GEO" -> Right FilterMobileGeo
        "FILTER_MONTH" -> Right FilterMonth
        "FILTER_MRAID_SUPPORT" -> Right FilterMraidSupport
        "FILTER_NIELSEN_AGE" -> Right FilterNielsenAge
        "FILTER_NIELSEN_COUNTRY_CODE" -> Right FilterNielsenCountryCode
        "FILTER_NIELSEN_DEVICE_ID" -> Right FilterNielsenDeviceId
        "FILTER_NIELSEN_GENDER" -> Right FilterNielsenGender
        "FILTER_NOT_SUPPORTED" -> Right FilterNotSupported
        "FILTER_ORDER_ID" -> Right FilterOrderId
        "FILTER_OS" -> Right FilterOS
        "FILTER_PAGE_CATEGORY" -> Right FilterPageCategory
        "FILTER_PAGE_LAYOUT" -> Right FilterPageLayout
        "FILTER_PARTNER" -> Right FilterPartner
        "FILTER_PARTNER_CURRENCY" -> Right FilterPartnerCurrency
        "FILTER_PUBLIC_INVENTORY" -> Right FilterPublicInventory
        "FILTER_QUARTER" -> Right FilterQuarter
        "FILTER_REGION" -> Right FilterRegion
        "FILTER_REGULAR_CHANNEL_ID" -> Right FilterRegularChannelId
        "FILTER_SITE_ID" -> Right FilterSiteId
        "FILTER_SITE_LANGUAGE" -> Right FilterSiteLanguage
        "FILTER_TARGETED_USER_LIST" -> Right FilterTargetedUserList
        "FILTER_TIME_OF_DAY" -> Right FilterTimeOfDay
        "FILTER_TRUEVIEW_AD_GROUP_AD_ID" -> Right FilterTrueviewAdGroupAdId
        "FILTER_TRUEVIEW_AD_GROUP_ID" -> Right FilterTrueviewAdGroupId
        "FILTER_TRUEVIEW_AGE" -> Right FilterTrueviewAge
        "FILTER_TRUEVIEW_CATEGORY" -> Right FilterTrueviewCategory
        "FILTER_TRUEVIEW_CITY" -> Right FilterTrueviewCity
        "FILTER_TRUEVIEW_CONVERSION_TYPE" -> Right FilterTrueviewConversionType
        "FILTER_TRUEVIEW_COUNTRY" -> Right FilterTrueviewCountry
        "FILTER_TRUEVIEW_CUSTOM_AFFINITY" -> Right FilterTrueviewCustomAffinity
        "FILTER_TRUEVIEW_DMA" -> Right FilterTrueviewDma
        "FILTER_TRUEVIEW_GENDER" -> Right FilterTrueviewGender
        "FILTER_TRUEVIEW_IAR_AGE" -> Right FilterTrueviewIarAge
        "FILTER_TRUEVIEW_IAR_CATEGORY" -> Right FilterTrueviewIarCategory
        "FILTER_TRUEVIEW_IAR_CITY" -> Right FilterTrueviewIarCity
        "FILTER_TRUEVIEW_IAR_COUNTRY" -> Right FilterTrueviewIarCountry
        "FILTER_TRUEVIEW_IAR_GENDER" -> Right FilterTrueviewIarGender
        "FILTER_TRUEVIEW_IAR_INTEREST" -> Right FilterTrueviewIarInterest
        "FILTER_TRUEVIEW_IAR_LANGUAGE" -> Right FilterTrueviewIarLanguage
        "FILTER_TRUEVIEW_IAR_PARENTAL_STATUS" -> Right FilterTrueviewIarParentalStatus
        "FILTER_TRUEVIEW_IAR_REGION" -> Right FilterTrueviewIarRegion
        "FILTER_TRUEVIEW_IAR_REMARKETING_LIST" -> Right FilterTrueviewIarRemarketingList
        "FILTER_TRUEVIEW_IAR_TIME_OF_DAY" -> Right FilterTrueviewIarTimeOfDay
        "FILTER_TRUEVIEW_IAR_YOUTUBE_CHANNEL" -> Right FilterTrueviewIarYouTubeChannel
        "FILTER_TRUEVIEW_IAR_YOUTUBE_VIDEO" -> Right FilterTrueviewIarYouTubeVideo
        "FILTER_TRUEVIEW_IAR_ZIPCODE" -> Right FilterTrueviewIarZipcode
        "FILTER_TRUEVIEW_INTEREST" -> Right FilterTrueviewInterest
        "FILTER_TRUEVIEW_KEYWORD" -> Right FilterTrueviewKeyword
        "FILTER_TRUEVIEW_PARENTAL_STATUS" -> Right FilterTrueviewParentalStatus
        "FILTER_TRUEVIEW_PLACEMENT" -> Right FilterTrueviewPlacement
        "FILTER_TRUEVIEW_REGION" -> Right FilterTrueviewRegion
        "FILTER_TRUEVIEW_REMARKETING_LIST" -> Right FilterTrueviewRemarketingList
        "FILTER_TRUEVIEW_URL" -> Right FilterTrueviewURL
        "FILTER_TRUEVIEW_ZIPCODE" -> Right FilterTrueviewZipcode
        "FILTER_UNKNOWN" -> Right FilterUnknown
        "FILTER_USER_LIST" -> Right FilterUserList
        "FILTER_USER_LIST_FIRST_PARTY" -> Right FilterUserListFirstParty
        "FILTER_USER_LIST_THIRD_PARTY" -> Right FilterUserListThirdParty
        "FILTER_VIDEO_AD_POSITION_IN_STREAM" -> Right FilterVideoAdPositionInStream
        "FILTER_VIDEO_COMPANION_SIZE" -> Right FilterVideoCompanionSize
        "FILTER_VIDEO_COMPANION_TYPE" -> Right FilterVideoCompanionType
        "FILTER_VIDEO_CREATIVE_DURATION" -> Right FilterVideoCreativeDuration
        "FILTER_VIDEO_CREATIVE_DURATION_SKIPPABLE" -> Right FilterVideoCreativeDurationSkippable
        "FILTER_VIDEO_DURATION_SECONDS" -> Right FilterVideoDurationSeconds
        "FILTER_VIDEO_FORMAT_SUPPORT" -> Right FilterVideoFormatSupport
        "FILTER_VIDEO_INVENTORY_TYPE" -> Right FilterVideoInventoryType
        "FILTER_VIDEO_PLAYER_SIZE" -> Right FilterVideoPlayerSize
        "FILTER_VIDEO_RATING_TIER" -> Right FilterVideoRatingTier
        "FILTER_VIDEO_SKIPPABLE_SUPPORT" -> Right FilterVideoSkippableSupport
        "FILTER_VIDEO_VPAID_SUPPORT" -> Right FilterVideoVpaidSupport
        "FILTER_WEEK" -> Right FilterWeek
        "FILTER_YEAR" -> Right FilterYear
        "FILTER_YOUTUBE_VERTICAL" -> Right FilterYouTubeVertical
        "FILTER_ZIP_CODE" -> Right FilterZipCode
        x -> Left ("Unable to parse FilterPairType from: " <> x)

instance ToHttpApiData FilterPairType where
    toQueryParam = \case
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
        FilterCreativeHeight -> "FILTER_CREATIVE_HEIGHT"
        FilterCreativeId -> "FILTER_CREATIVE_ID"
        FilterCreativeSize -> "FILTER_CREATIVE_SIZE"
        FilterCreativeType -> "FILTER_CREATIVE_TYPE"
        FilterCreativeWidth -> "FILTER_CREATIVE_WIDTH"
        FilterDataProvider -> "FILTER_DATA_PROVIDER"
        FilterDate -> "FILTER_DATE"
        FilterDayOfWeek -> "FILTER_DAY_OF_WEEK"
        FilterDfpOrderId -> "FILTER_DFP_ORDER_ID"
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
        FilterMediaPlan -> "FILTER_MEDIA_PLAN"
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
        FilterNotSupported -> "FILTER_NOT_SUPPORTED"
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
        FilterTrueviewAdGroupAdId -> "FILTER_TRUEVIEW_AD_GROUP_AD_ID"
        FilterTrueviewAdGroupId -> "FILTER_TRUEVIEW_AD_GROUP_ID"
        FilterTrueviewAge -> "FILTER_TRUEVIEW_AGE"
        FilterTrueviewCategory -> "FILTER_TRUEVIEW_CATEGORY"
        FilterTrueviewCity -> "FILTER_TRUEVIEW_CITY"
        FilterTrueviewConversionType -> "FILTER_TRUEVIEW_CONVERSION_TYPE"
        FilterTrueviewCountry -> "FILTER_TRUEVIEW_COUNTRY"
        FilterTrueviewCustomAffinity -> "FILTER_TRUEVIEW_CUSTOM_AFFINITY"
        FilterTrueviewDma -> "FILTER_TRUEVIEW_DMA"
        FilterTrueviewGender -> "FILTER_TRUEVIEW_GENDER"
        FilterTrueviewIarAge -> "FILTER_TRUEVIEW_IAR_AGE"
        FilterTrueviewIarCategory -> "FILTER_TRUEVIEW_IAR_CATEGORY"
        FilterTrueviewIarCity -> "FILTER_TRUEVIEW_IAR_CITY"
        FilterTrueviewIarCountry -> "FILTER_TRUEVIEW_IAR_COUNTRY"
        FilterTrueviewIarGender -> "FILTER_TRUEVIEW_IAR_GENDER"
        FilterTrueviewIarInterest -> "FILTER_TRUEVIEW_IAR_INTEREST"
        FilterTrueviewIarLanguage -> "FILTER_TRUEVIEW_IAR_LANGUAGE"
        FilterTrueviewIarParentalStatus -> "FILTER_TRUEVIEW_IAR_PARENTAL_STATUS"
        FilterTrueviewIarRegion -> "FILTER_TRUEVIEW_IAR_REGION"
        FilterTrueviewIarRemarketingList -> "FILTER_TRUEVIEW_IAR_REMARKETING_LIST"
        FilterTrueviewIarTimeOfDay -> "FILTER_TRUEVIEW_IAR_TIME_OF_DAY"
        FilterTrueviewIarYouTubeChannel -> "FILTER_TRUEVIEW_IAR_YOUTUBE_CHANNEL"
        FilterTrueviewIarYouTubeVideo -> "FILTER_TRUEVIEW_IAR_YOUTUBE_VIDEO"
        FilterTrueviewIarZipcode -> "FILTER_TRUEVIEW_IAR_ZIPCODE"
        FilterTrueviewInterest -> "FILTER_TRUEVIEW_INTEREST"
        FilterTrueviewKeyword -> "FILTER_TRUEVIEW_KEYWORD"
        FilterTrueviewParentalStatus -> "FILTER_TRUEVIEW_PARENTAL_STATUS"
        FilterTrueviewPlacement -> "FILTER_TRUEVIEW_PLACEMENT"
        FilterTrueviewRegion -> "FILTER_TRUEVIEW_REGION"
        FilterTrueviewRemarketingList -> "FILTER_TRUEVIEW_REMARKETING_LIST"
        FilterTrueviewURL -> "FILTER_TRUEVIEW_URL"
        FilterTrueviewZipcode -> "FILTER_TRUEVIEW_ZIPCODE"
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

instance FromJSON FilterPairType where
    parseJSON = parseJSONText "FilterPairType"

instance ToJSON FilterPairType where
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
    | RQRDRTypeNotSupported
      -- ^ @TYPE_NOT_SUPPORTED@
    | RQRDRWeekToDate
      -- ^ @WEEK_TO_DATE@
    | RQRDRYearToDate
      -- ^ @YEAR_TO_DATE@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable RunQueryRequestDataRange

instance FromHttpApiData RunQueryRequestDataRange where
    parseQueryParam = \case
        "ALL_TIME" -> Right RQRDRAllTime
        "CURRENT_DAY" -> Right RQRDRCurrentDay
        "CUSTOM_DATES" -> Right RQRDRCustomDates
        "LAST_14_DAYS" -> Right RQRDRLast14Days
        "LAST_30_DAYS" -> Right RQRDRLast30Days
        "LAST_365_DAYS" -> Right RQRDRLast365Days
        "LAST_7_DAYS" -> Right RQRDRLast7Days
        "LAST_90_DAYS" -> Right RQRDRLast90Days
        "MONTH_TO_DATE" -> Right RQRDRMonthToDate
        "PREVIOUS_DAY" -> Right RQRDRPreviousDay
        "PREVIOUS_HALF_MONTH" -> Right RQRDRPreviousHalfMonth
        "PREVIOUS_MONTH" -> Right RQRDRPreviousMonth
        "PREVIOUS_QUARTER" -> Right RQRDRPreviousQuarter
        "PREVIOUS_WEEK" -> Right RQRDRPreviousWeek
        "PREVIOUS_YEAR" -> Right RQRDRPreviousYear
        "QUARTER_TO_DATE" -> Right RQRDRQuarterToDate
        "TYPE_NOT_SUPPORTED" -> Right RQRDRTypeNotSupported
        "WEEK_TO_DATE" -> Right RQRDRWeekToDate
        "YEAR_TO_DATE" -> Right RQRDRYearToDate
        x -> Left ("Unable to parse RunQueryRequestDataRange from: " <> x)

instance ToHttpApiData RunQueryRequestDataRange where
    toQueryParam = \case
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
        RQRDRTypeNotSupported -> "TYPE_NOT_SUPPORTED"
        RQRDRWeekToDate -> "WEEK_TO_DATE"
        RQRDRYearToDate -> "YEAR_TO_DATE"

instance FromJSON RunQueryRequestDataRange where
    parseJSON = parseJSONText "RunQueryRequestDataRange"

instance ToJSON RunQueryRequestDataRange where
    toJSON = toJSONText

-- | The state of the report.
data ReportStatusState
    = Done
      -- ^ @DONE@
    | Failed
      -- ^ @FAILED@
    | Running
      -- ^ @RUNNING@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ReportStatusState

instance FromHttpApiData ReportStatusState where
    parseQueryParam = \case
        "DONE" -> Right Done
        "FAILED" -> Right Failed
        "RUNNING" -> Right Running
        x -> Left ("Unable to parse ReportStatusState from: " <> x)

instance ToHttpApiData ReportStatusState where
    toQueryParam = \case
        Done -> "DONE"
        Failed -> "FAILED"
        Running -> "RUNNING"

instance FromJSON ReportStatusState where
    parseJSON = parseJSONText "ReportStatusState"

instance ToJSON ReportStatusState where
    toJSON = toJSONText

data ParametersGroupBysItem
    = PGBIFilterActiveViewExpectedViewability
      -- ^ @FILTER_ACTIVE_VIEW_EXPECTED_VIEWABILITY@
    | PGBIFilterActivityId
      -- ^ @FILTER_ACTIVITY_ID@
    | PGBIFilterAdvertiser
      -- ^ @FILTER_ADVERTISER@
    | PGBIFilterAdvertiserCurrency
      -- ^ @FILTER_ADVERTISER_CURRENCY@
    | PGBIFilterAdvertiserTimezone
      -- ^ @FILTER_ADVERTISER_TIMEZONE@
    | PGBIFilterAdPosition
      -- ^ @FILTER_AD_POSITION@
    | PGBIFilterAge
      -- ^ @FILTER_AGE@
    | PGBIFilterBrandsafeChannelId
      -- ^ @FILTER_BRANDSAFE_CHANNEL_ID@
    | PGBIFilterBrowser
      -- ^ @FILTER_BROWSER@
    | PGBIFilterCampaignDailyFrequency
      -- ^ @FILTER_CAMPAIGN_DAILY_FREQUENCY@
    | PGBIFilterCarrier
      -- ^ @FILTER_CARRIER@
    | PGBIFilterChannelId
      -- ^ @FILTER_CHANNEL_ID@
    | PGBIFilterCity
      -- ^ @FILTER_CITY@
    | PGBIFilterConversionDelay
      -- ^ @FILTER_CONVERSION_DELAY@
    | PGBIFilterCountry
      -- ^ @FILTER_COUNTRY@
    | PGBIFilterCreativeHeight
      -- ^ @FILTER_CREATIVE_HEIGHT@
    | PGBIFilterCreativeId
      -- ^ @FILTER_CREATIVE_ID@
    | PGBIFilterCreativeSize
      -- ^ @FILTER_CREATIVE_SIZE@
    | PGBIFilterCreativeType
      -- ^ @FILTER_CREATIVE_TYPE@
    | PGBIFilterCreativeWidth
      -- ^ @FILTER_CREATIVE_WIDTH@
    | PGBIFilterDataProvider
      -- ^ @FILTER_DATA_PROVIDER@
    | PGBIFilterDate
      -- ^ @FILTER_DATE@
    | PGBIFilterDayOfWeek
      -- ^ @FILTER_DAY_OF_WEEK@
    | PGBIFilterDfpOrderId
      -- ^ @FILTER_DFP_ORDER_ID@
    | PGBIFilterDma
      -- ^ @FILTER_DMA@
    | PGBIFilterExchangeId
      -- ^ @FILTER_EXCHANGE_ID@
    | PGBIFilterFloodlightPixelId
      -- ^ @FILTER_FLOODLIGHT_PIXEL_ID@
    | PGBIFilterGender
      -- ^ @FILTER_GENDER@
    | PGBIFilterInsertionOrder
      -- ^ @FILTER_INSERTION_ORDER@
    | PGBIFilterInventoryFormat
      -- ^ @FILTER_INVENTORY_FORMAT@
    | PGBIFilterInventorySource
      -- ^ @FILTER_INVENTORY_SOURCE@
    | PGBIFilterInventorySourceType
      -- ^ @FILTER_INVENTORY_SOURCE_TYPE@
    | PGBIFilterKeyword
      -- ^ @FILTER_KEYWORD@
    | PGBIFilterLineItem
      -- ^ @FILTER_LINE_ITEM@
    | PGBIFilterLineItemDailyFrequency
      -- ^ @FILTER_LINE_ITEM_DAILY_FREQUENCY@
    | PGBIFilterLineItemLifetimeFrequency
      -- ^ @FILTER_LINE_ITEM_LIFETIME_FREQUENCY@
    | PGBIFilterLineItemType
      -- ^ @FILTER_LINE_ITEM_TYPE@
    | PGBIFilterMediaPlan
      -- ^ @FILTER_MEDIA_PLAN@
    | PGBIFilterMobileDeviceMake
      -- ^ @FILTER_MOBILE_DEVICE_MAKE@
    | PGBIFilterMobileDeviceMakeModel
      -- ^ @FILTER_MOBILE_DEVICE_MAKE_MODEL@
    | PGBIFilterMobileDeviceType
      -- ^ @FILTER_MOBILE_DEVICE_TYPE@
    | PGBIFilterMobileGeo
      -- ^ @FILTER_MOBILE_GEO@
    | PGBIFilterMonth
      -- ^ @FILTER_MONTH@
    | PGBIFilterMraidSupport
      -- ^ @FILTER_MRAID_SUPPORT@
    | PGBIFilterNielsenAge
      -- ^ @FILTER_NIELSEN_AGE@
    | PGBIFilterNielsenCountryCode
      -- ^ @FILTER_NIELSEN_COUNTRY_CODE@
    | PGBIFilterNielsenDeviceId
      -- ^ @FILTER_NIELSEN_DEVICE_ID@
    | PGBIFilterNielsenGender
      -- ^ @FILTER_NIELSEN_GENDER@
    | PGBIFilterNotSupported
      -- ^ @FILTER_NOT_SUPPORTED@
    | PGBIFilterOrderId
      -- ^ @FILTER_ORDER_ID@
    | PGBIFilterOS
      -- ^ @FILTER_OS@
    | PGBIFilterPageCategory
      -- ^ @FILTER_PAGE_CATEGORY@
    | PGBIFilterPageLayout
      -- ^ @FILTER_PAGE_LAYOUT@
    | PGBIFilterPartner
      -- ^ @FILTER_PARTNER@
    | PGBIFilterPartnerCurrency
      -- ^ @FILTER_PARTNER_CURRENCY@
    | PGBIFilterPublicInventory
      -- ^ @FILTER_PUBLIC_INVENTORY@
    | PGBIFilterQuarter
      -- ^ @FILTER_QUARTER@
    | PGBIFilterRegion
      -- ^ @FILTER_REGION@
    | PGBIFilterRegularChannelId
      -- ^ @FILTER_REGULAR_CHANNEL_ID@
    | PGBIFilterSiteId
      -- ^ @FILTER_SITE_ID@
    | PGBIFilterSiteLanguage
      -- ^ @FILTER_SITE_LANGUAGE@
    | PGBIFilterTargetedUserList
      -- ^ @FILTER_TARGETED_USER_LIST@
    | PGBIFilterTimeOfDay
      -- ^ @FILTER_TIME_OF_DAY@
    | PGBIFilterTrueviewAdGroupAdId
      -- ^ @FILTER_TRUEVIEW_AD_GROUP_AD_ID@
    | PGBIFilterTrueviewAdGroupId
      -- ^ @FILTER_TRUEVIEW_AD_GROUP_ID@
    | PGBIFilterTrueviewAge
      -- ^ @FILTER_TRUEVIEW_AGE@
    | PGBIFilterTrueviewCategory
      -- ^ @FILTER_TRUEVIEW_CATEGORY@
    | PGBIFilterTrueviewCity
      -- ^ @FILTER_TRUEVIEW_CITY@
    | PGBIFilterTrueviewConversionType
      -- ^ @FILTER_TRUEVIEW_CONVERSION_TYPE@
    | PGBIFilterTrueviewCountry
      -- ^ @FILTER_TRUEVIEW_COUNTRY@
    | PGBIFilterTrueviewCustomAffinity
      -- ^ @FILTER_TRUEVIEW_CUSTOM_AFFINITY@
    | PGBIFilterTrueviewDma
      -- ^ @FILTER_TRUEVIEW_DMA@
    | PGBIFilterTrueviewGender
      -- ^ @FILTER_TRUEVIEW_GENDER@
    | PGBIFilterTrueviewIarAge
      -- ^ @FILTER_TRUEVIEW_IAR_AGE@
    | PGBIFilterTrueviewIarCategory
      -- ^ @FILTER_TRUEVIEW_IAR_CATEGORY@
    | PGBIFilterTrueviewIarCity
      -- ^ @FILTER_TRUEVIEW_IAR_CITY@
    | PGBIFilterTrueviewIarCountry
      -- ^ @FILTER_TRUEVIEW_IAR_COUNTRY@
    | PGBIFilterTrueviewIarGender
      -- ^ @FILTER_TRUEVIEW_IAR_GENDER@
    | PGBIFilterTrueviewIarInterest
      -- ^ @FILTER_TRUEVIEW_IAR_INTEREST@
    | PGBIFilterTrueviewIarLanguage
      -- ^ @FILTER_TRUEVIEW_IAR_LANGUAGE@
    | PGBIFilterTrueviewIarParentalStatus
      -- ^ @FILTER_TRUEVIEW_IAR_PARENTAL_STATUS@
    | PGBIFilterTrueviewIarRegion
      -- ^ @FILTER_TRUEVIEW_IAR_REGION@
    | PGBIFilterTrueviewIarRemarketingList
      -- ^ @FILTER_TRUEVIEW_IAR_REMARKETING_LIST@
    | PGBIFilterTrueviewIarTimeOfDay
      -- ^ @FILTER_TRUEVIEW_IAR_TIME_OF_DAY@
    | PGBIFilterTrueviewIarYouTubeChannel
      -- ^ @FILTER_TRUEVIEW_IAR_YOUTUBE_CHANNEL@
    | PGBIFilterTrueviewIarYouTubeVideo
      -- ^ @FILTER_TRUEVIEW_IAR_YOUTUBE_VIDEO@
    | PGBIFilterTrueviewIarZipcode
      -- ^ @FILTER_TRUEVIEW_IAR_ZIPCODE@
    | PGBIFilterTrueviewInterest
      -- ^ @FILTER_TRUEVIEW_INTEREST@
    | PGBIFilterTrueviewKeyword
      -- ^ @FILTER_TRUEVIEW_KEYWORD@
    | PGBIFilterTrueviewParentalStatus
      -- ^ @FILTER_TRUEVIEW_PARENTAL_STATUS@
    | PGBIFilterTrueviewPlacement
      -- ^ @FILTER_TRUEVIEW_PLACEMENT@
    | PGBIFilterTrueviewRegion
      -- ^ @FILTER_TRUEVIEW_REGION@
    | PGBIFilterTrueviewRemarketingList
      -- ^ @FILTER_TRUEVIEW_REMARKETING_LIST@
    | PGBIFilterTrueviewURL
      -- ^ @FILTER_TRUEVIEW_URL@
    | PGBIFilterTrueviewZipcode
      -- ^ @FILTER_TRUEVIEW_ZIPCODE@
    | PGBIFilterUnknown
      -- ^ @FILTER_UNKNOWN@
    | PGBIFilterUserList
      -- ^ @FILTER_USER_LIST@
    | PGBIFilterUserListFirstParty
      -- ^ @FILTER_USER_LIST_FIRST_PARTY@
    | PGBIFilterUserListThirdParty
      -- ^ @FILTER_USER_LIST_THIRD_PARTY@
    | PGBIFilterVideoAdPositionInStream
      -- ^ @FILTER_VIDEO_AD_POSITION_IN_STREAM@
    | PGBIFilterVideoCompanionSize
      -- ^ @FILTER_VIDEO_COMPANION_SIZE@
    | PGBIFilterVideoCompanionType
      -- ^ @FILTER_VIDEO_COMPANION_TYPE@
    | PGBIFilterVideoCreativeDuration
      -- ^ @FILTER_VIDEO_CREATIVE_DURATION@
    | PGBIFilterVideoCreativeDurationSkippable
      -- ^ @FILTER_VIDEO_CREATIVE_DURATION_SKIPPABLE@
    | PGBIFilterVideoDurationSeconds
      -- ^ @FILTER_VIDEO_DURATION_SECONDS@
    | PGBIFilterVideoFormatSupport
      -- ^ @FILTER_VIDEO_FORMAT_SUPPORT@
    | PGBIFilterVideoInventoryType
      -- ^ @FILTER_VIDEO_INVENTORY_TYPE@
    | PGBIFilterVideoPlayerSize
      -- ^ @FILTER_VIDEO_PLAYER_SIZE@
    | PGBIFilterVideoRatingTier
      -- ^ @FILTER_VIDEO_RATING_TIER@
    | PGBIFilterVideoSkippableSupport
      -- ^ @FILTER_VIDEO_SKIPPABLE_SUPPORT@
    | PGBIFilterVideoVpaidSupport
      -- ^ @FILTER_VIDEO_VPAID_SUPPORT@
    | PGBIFilterWeek
      -- ^ @FILTER_WEEK@
    | PGBIFilterYear
      -- ^ @FILTER_YEAR@
    | PGBIFilterYouTubeVertical
      -- ^ @FILTER_YOUTUBE_VERTICAL@
    | PGBIFilterZipCode
      -- ^ @FILTER_ZIP_CODE@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ParametersGroupBysItem

instance FromHttpApiData ParametersGroupBysItem where
    parseQueryParam = \case
        "FILTER_ACTIVE_VIEW_EXPECTED_VIEWABILITY" -> Right PGBIFilterActiveViewExpectedViewability
        "FILTER_ACTIVITY_ID" -> Right PGBIFilterActivityId
        "FILTER_ADVERTISER" -> Right PGBIFilterAdvertiser
        "FILTER_ADVERTISER_CURRENCY" -> Right PGBIFilterAdvertiserCurrency
        "FILTER_ADVERTISER_TIMEZONE" -> Right PGBIFilterAdvertiserTimezone
        "FILTER_AD_POSITION" -> Right PGBIFilterAdPosition
        "FILTER_AGE" -> Right PGBIFilterAge
        "FILTER_BRANDSAFE_CHANNEL_ID" -> Right PGBIFilterBrandsafeChannelId
        "FILTER_BROWSER" -> Right PGBIFilterBrowser
        "FILTER_CAMPAIGN_DAILY_FREQUENCY" -> Right PGBIFilterCampaignDailyFrequency
        "FILTER_CARRIER" -> Right PGBIFilterCarrier
        "FILTER_CHANNEL_ID" -> Right PGBIFilterChannelId
        "FILTER_CITY" -> Right PGBIFilterCity
        "FILTER_CONVERSION_DELAY" -> Right PGBIFilterConversionDelay
        "FILTER_COUNTRY" -> Right PGBIFilterCountry
        "FILTER_CREATIVE_HEIGHT" -> Right PGBIFilterCreativeHeight
        "FILTER_CREATIVE_ID" -> Right PGBIFilterCreativeId
        "FILTER_CREATIVE_SIZE" -> Right PGBIFilterCreativeSize
        "FILTER_CREATIVE_TYPE" -> Right PGBIFilterCreativeType
        "FILTER_CREATIVE_WIDTH" -> Right PGBIFilterCreativeWidth
        "FILTER_DATA_PROVIDER" -> Right PGBIFilterDataProvider
        "FILTER_DATE" -> Right PGBIFilterDate
        "FILTER_DAY_OF_WEEK" -> Right PGBIFilterDayOfWeek
        "FILTER_DFP_ORDER_ID" -> Right PGBIFilterDfpOrderId
        "FILTER_DMA" -> Right PGBIFilterDma
        "FILTER_EXCHANGE_ID" -> Right PGBIFilterExchangeId
        "FILTER_FLOODLIGHT_PIXEL_ID" -> Right PGBIFilterFloodlightPixelId
        "FILTER_GENDER" -> Right PGBIFilterGender
        "FILTER_INSERTION_ORDER" -> Right PGBIFilterInsertionOrder
        "FILTER_INVENTORY_FORMAT" -> Right PGBIFilterInventoryFormat
        "FILTER_INVENTORY_SOURCE" -> Right PGBIFilterInventorySource
        "FILTER_INVENTORY_SOURCE_TYPE" -> Right PGBIFilterInventorySourceType
        "FILTER_KEYWORD" -> Right PGBIFilterKeyword
        "FILTER_LINE_ITEM" -> Right PGBIFilterLineItem
        "FILTER_LINE_ITEM_DAILY_FREQUENCY" -> Right PGBIFilterLineItemDailyFrequency
        "FILTER_LINE_ITEM_LIFETIME_FREQUENCY" -> Right PGBIFilterLineItemLifetimeFrequency
        "FILTER_LINE_ITEM_TYPE" -> Right PGBIFilterLineItemType
        "FILTER_MEDIA_PLAN" -> Right PGBIFilterMediaPlan
        "FILTER_MOBILE_DEVICE_MAKE" -> Right PGBIFilterMobileDeviceMake
        "FILTER_MOBILE_DEVICE_MAKE_MODEL" -> Right PGBIFilterMobileDeviceMakeModel
        "FILTER_MOBILE_DEVICE_TYPE" -> Right PGBIFilterMobileDeviceType
        "FILTER_MOBILE_GEO" -> Right PGBIFilterMobileGeo
        "FILTER_MONTH" -> Right PGBIFilterMonth
        "FILTER_MRAID_SUPPORT" -> Right PGBIFilterMraidSupport
        "FILTER_NIELSEN_AGE" -> Right PGBIFilterNielsenAge
        "FILTER_NIELSEN_COUNTRY_CODE" -> Right PGBIFilterNielsenCountryCode
        "FILTER_NIELSEN_DEVICE_ID" -> Right PGBIFilterNielsenDeviceId
        "FILTER_NIELSEN_GENDER" -> Right PGBIFilterNielsenGender
        "FILTER_NOT_SUPPORTED" -> Right PGBIFilterNotSupported
        "FILTER_ORDER_ID" -> Right PGBIFilterOrderId
        "FILTER_OS" -> Right PGBIFilterOS
        "FILTER_PAGE_CATEGORY" -> Right PGBIFilterPageCategory
        "FILTER_PAGE_LAYOUT" -> Right PGBIFilterPageLayout
        "FILTER_PARTNER" -> Right PGBIFilterPartner
        "FILTER_PARTNER_CURRENCY" -> Right PGBIFilterPartnerCurrency
        "FILTER_PUBLIC_INVENTORY" -> Right PGBIFilterPublicInventory
        "FILTER_QUARTER" -> Right PGBIFilterQuarter
        "FILTER_REGION" -> Right PGBIFilterRegion
        "FILTER_REGULAR_CHANNEL_ID" -> Right PGBIFilterRegularChannelId
        "FILTER_SITE_ID" -> Right PGBIFilterSiteId
        "FILTER_SITE_LANGUAGE" -> Right PGBIFilterSiteLanguage
        "FILTER_TARGETED_USER_LIST" -> Right PGBIFilterTargetedUserList
        "FILTER_TIME_OF_DAY" -> Right PGBIFilterTimeOfDay
        "FILTER_TRUEVIEW_AD_GROUP_AD_ID" -> Right PGBIFilterTrueviewAdGroupAdId
        "FILTER_TRUEVIEW_AD_GROUP_ID" -> Right PGBIFilterTrueviewAdGroupId
        "FILTER_TRUEVIEW_AGE" -> Right PGBIFilterTrueviewAge
        "FILTER_TRUEVIEW_CATEGORY" -> Right PGBIFilterTrueviewCategory
        "FILTER_TRUEVIEW_CITY" -> Right PGBIFilterTrueviewCity
        "FILTER_TRUEVIEW_CONVERSION_TYPE" -> Right PGBIFilterTrueviewConversionType
        "FILTER_TRUEVIEW_COUNTRY" -> Right PGBIFilterTrueviewCountry
        "FILTER_TRUEVIEW_CUSTOM_AFFINITY" -> Right PGBIFilterTrueviewCustomAffinity
        "FILTER_TRUEVIEW_DMA" -> Right PGBIFilterTrueviewDma
        "FILTER_TRUEVIEW_GENDER" -> Right PGBIFilterTrueviewGender
        "FILTER_TRUEVIEW_IAR_AGE" -> Right PGBIFilterTrueviewIarAge
        "FILTER_TRUEVIEW_IAR_CATEGORY" -> Right PGBIFilterTrueviewIarCategory
        "FILTER_TRUEVIEW_IAR_CITY" -> Right PGBIFilterTrueviewIarCity
        "FILTER_TRUEVIEW_IAR_COUNTRY" -> Right PGBIFilterTrueviewIarCountry
        "FILTER_TRUEVIEW_IAR_GENDER" -> Right PGBIFilterTrueviewIarGender
        "FILTER_TRUEVIEW_IAR_INTEREST" -> Right PGBIFilterTrueviewIarInterest
        "FILTER_TRUEVIEW_IAR_LANGUAGE" -> Right PGBIFilterTrueviewIarLanguage
        "FILTER_TRUEVIEW_IAR_PARENTAL_STATUS" -> Right PGBIFilterTrueviewIarParentalStatus
        "FILTER_TRUEVIEW_IAR_REGION" -> Right PGBIFilterTrueviewIarRegion
        "FILTER_TRUEVIEW_IAR_REMARKETING_LIST" -> Right PGBIFilterTrueviewIarRemarketingList
        "FILTER_TRUEVIEW_IAR_TIME_OF_DAY" -> Right PGBIFilterTrueviewIarTimeOfDay
        "FILTER_TRUEVIEW_IAR_YOUTUBE_CHANNEL" -> Right PGBIFilterTrueviewIarYouTubeChannel
        "FILTER_TRUEVIEW_IAR_YOUTUBE_VIDEO" -> Right PGBIFilterTrueviewIarYouTubeVideo
        "FILTER_TRUEVIEW_IAR_ZIPCODE" -> Right PGBIFilterTrueviewIarZipcode
        "FILTER_TRUEVIEW_INTEREST" -> Right PGBIFilterTrueviewInterest
        "FILTER_TRUEVIEW_KEYWORD" -> Right PGBIFilterTrueviewKeyword
        "FILTER_TRUEVIEW_PARENTAL_STATUS" -> Right PGBIFilterTrueviewParentalStatus
        "FILTER_TRUEVIEW_PLACEMENT" -> Right PGBIFilterTrueviewPlacement
        "FILTER_TRUEVIEW_REGION" -> Right PGBIFilterTrueviewRegion
        "FILTER_TRUEVIEW_REMARKETING_LIST" -> Right PGBIFilterTrueviewRemarketingList
        "FILTER_TRUEVIEW_URL" -> Right PGBIFilterTrueviewURL
        "FILTER_TRUEVIEW_ZIPCODE" -> Right PGBIFilterTrueviewZipcode
        "FILTER_UNKNOWN" -> Right PGBIFilterUnknown
        "FILTER_USER_LIST" -> Right PGBIFilterUserList
        "FILTER_USER_LIST_FIRST_PARTY" -> Right PGBIFilterUserListFirstParty
        "FILTER_USER_LIST_THIRD_PARTY" -> Right PGBIFilterUserListThirdParty
        "FILTER_VIDEO_AD_POSITION_IN_STREAM" -> Right PGBIFilterVideoAdPositionInStream
        "FILTER_VIDEO_COMPANION_SIZE" -> Right PGBIFilterVideoCompanionSize
        "FILTER_VIDEO_COMPANION_TYPE" -> Right PGBIFilterVideoCompanionType
        "FILTER_VIDEO_CREATIVE_DURATION" -> Right PGBIFilterVideoCreativeDuration
        "FILTER_VIDEO_CREATIVE_DURATION_SKIPPABLE" -> Right PGBIFilterVideoCreativeDurationSkippable
        "FILTER_VIDEO_DURATION_SECONDS" -> Right PGBIFilterVideoDurationSeconds
        "FILTER_VIDEO_FORMAT_SUPPORT" -> Right PGBIFilterVideoFormatSupport
        "FILTER_VIDEO_INVENTORY_TYPE" -> Right PGBIFilterVideoInventoryType
        "FILTER_VIDEO_PLAYER_SIZE" -> Right PGBIFilterVideoPlayerSize
        "FILTER_VIDEO_RATING_TIER" -> Right PGBIFilterVideoRatingTier
        "FILTER_VIDEO_SKIPPABLE_SUPPORT" -> Right PGBIFilterVideoSkippableSupport
        "FILTER_VIDEO_VPAID_SUPPORT" -> Right PGBIFilterVideoVpaidSupport
        "FILTER_WEEK" -> Right PGBIFilterWeek
        "FILTER_YEAR" -> Right PGBIFilterYear
        "FILTER_YOUTUBE_VERTICAL" -> Right PGBIFilterYouTubeVertical
        "FILTER_ZIP_CODE" -> Right PGBIFilterZipCode
        x -> Left ("Unable to parse ParametersGroupBysItem from: " <> x)

instance ToHttpApiData ParametersGroupBysItem where
    toQueryParam = \case
        PGBIFilterActiveViewExpectedViewability -> "FILTER_ACTIVE_VIEW_EXPECTED_VIEWABILITY"
        PGBIFilterActivityId -> "FILTER_ACTIVITY_ID"
        PGBIFilterAdvertiser -> "FILTER_ADVERTISER"
        PGBIFilterAdvertiserCurrency -> "FILTER_ADVERTISER_CURRENCY"
        PGBIFilterAdvertiserTimezone -> "FILTER_ADVERTISER_TIMEZONE"
        PGBIFilterAdPosition -> "FILTER_AD_POSITION"
        PGBIFilterAge -> "FILTER_AGE"
        PGBIFilterBrandsafeChannelId -> "FILTER_BRANDSAFE_CHANNEL_ID"
        PGBIFilterBrowser -> "FILTER_BROWSER"
        PGBIFilterCampaignDailyFrequency -> "FILTER_CAMPAIGN_DAILY_FREQUENCY"
        PGBIFilterCarrier -> "FILTER_CARRIER"
        PGBIFilterChannelId -> "FILTER_CHANNEL_ID"
        PGBIFilterCity -> "FILTER_CITY"
        PGBIFilterConversionDelay -> "FILTER_CONVERSION_DELAY"
        PGBIFilterCountry -> "FILTER_COUNTRY"
        PGBIFilterCreativeHeight -> "FILTER_CREATIVE_HEIGHT"
        PGBIFilterCreativeId -> "FILTER_CREATIVE_ID"
        PGBIFilterCreativeSize -> "FILTER_CREATIVE_SIZE"
        PGBIFilterCreativeType -> "FILTER_CREATIVE_TYPE"
        PGBIFilterCreativeWidth -> "FILTER_CREATIVE_WIDTH"
        PGBIFilterDataProvider -> "FILTER_DATA_PROVIDER"
        PGBIFilterDate -> "FILTER_DATE"
        PGBIFilterDayOfWeek -> "FILTER_DAY_OF_WEEK"
        PGBIFilterDfpOrderId -> "FILTER_DFP_ORDER_ID"
        PGBIFilterDma -> "FILTER_DMA"
        PGBIFilterExchangeId -> "FILTER_EXCHANGE_ID"
        PGBIFilterFloodlightPixelId -> "FILTER_FLOODLIGHT_PIXEL_ID"
        PGBIFilterGender -> "FILTER_GENDER"
        PGBIFilterInsertionOrder -> "FILTER_INSERTION_ORDER"
        PGBIFilterInventoryFormat -> "FILTER_INVENTORY_FORMAT"
        PGBIFilterInventorySource -> "FILTER_INVENTORY_SOURCE"
        PGBIFilterInventorySourceType -> "FILTER_INVENTORY_SOURCE_TYPE"
        PGBIFilterKeyword -> "FILTER_KEYWORD"
        PGBIFilterLineItem -> "FILTER_LINE_ITEM"
        PGBIFilterLineItemDailyFrequency -> "FILTER_LINE_ITEM_DAILY_FREQUENCY"
        PGBIFilterLineItemLifetimeFrequency -> "FILTER_LINE_ITEM_LIFETIME_FREQUENCY"
        PGBIFilterLineItemType -> "FILTER_LINE_ITEM_TYPE"
        PGBIFilterMediaPlan -> "FILTER_MEDIA_PLAN"
        PGBIFilterMobileDeviceMake -> "FILTER_MOBILE_DEVICE_MAKE"
        PGBIFilterMobileDeviceMakeModel -> "FILTER_MOBILE_DEVICE_MAKE_MODEL"
        PGBIFilterMobileDeviceType -> "FILTER_MOBILE_DEVICE_TYPE"
        PGBIFilterMobileGeo -> "FILTER_MOBILE_GEO"
        PGBIFilterMonth -> "FILTER_MONTH"
        PGBIFilterMraidSupport -> "FILTER_MRAID_SUPPORT"
        PGBIFilterNielsenAge -> "FILTER_NIELSEN_AGE"
        PGBIFilterNielsenCountryCode -> "FILTER_NIELSEN_COUNTRY_CODE"
        PGBIFilterNielsenDeviceId -> "FILTER_NIELSEN_DEVICE_ID"
        PGBIFilterNielsenGender -> "FILTER_NIELSEN_GENDER"
        PGBIFilterNotSupported -> "FILTER_NOT_SUPPORTED"
        PGBIFilterOrderId -> "FILTER_ORDER_ID"
        PGBIFilterOS -> "FILTER_OS"
        PGBIFilterPageCategory -> "FILTER_PAGE_CATEGORY"
        PGBIFilterPageLayout -> "FILTER_PAGE_LAYOUT"
        PGBIFilterPartner -> "FILTER_PARTNER"
        PGBIFilterPartnerCurrency -> "FILTER_PARTNER_CURRENCY"
        PGBIFilterPublicInventory -> "FILTER_PUBLIC_INVENTORY"
        PGBIFilterQuarter -> "FILTER_QUARTER"
        PGBIFilterRegion -> "FILTER_REGION"
        PGBIFilterRegularChannelId -> "FILTER_REGULAR_CHANNEL_ID"
        PGBIFilterSiteId -> "FILTER_SITE_ID"
        PGBIFilterSiteLanguage -> "FILTER_SITE_LANGUAGE"
        PGBIFilterTargetedUserList -> "FILTER_TARGETED_USER_LIST"
        PGBIFilterTimeOfDay -> "FILTER_TIME_OF_DAY"
        PGBIFilterTrueviewAdGroupAdId -> "FILTER_TRUEVIEW_AD_GROUP_AD_ID"
        PGBIFilterTrueviewAdGroupId -> "FILTER_TRUEVIEW_AD_GROUP_ID"
        PGBIFilterTrueviewAge -> "FILTER_TRUEVIEW_AGE"
        PGBIFilterTrueviewCategory -> "FILTER_TRUEVIEW_CATEGORY"
        PGBIFilterTrueviewCity -> "FILTER_TRUEVIEW_CITY"
        PGBIFilterTrueviewConversionType -> "FILTER_TRUEVIEW_CONVERSION_TYPE"
        PGBIFilterTrueviewCountry -> "FILTER_TRUEVIEW_COUNTRY"
        PGBIFilterTrueviewCustomAffinity -> "FILTER_TRUEVIEW_CUSTOM_AFFINITY"
        PGBIFilterTrueviewDma -> "FILTER_TRUEVIEW_DMA"
        PGBIFilterTrueviewGender -> "FILTER_TRUEVIEW_GENDER"
        PGBIFilterTrueviewIarAge -> "FILTER_TRUEVIEW_IAR_AGE"
        PGBIFilterTrueviewIarCategory -> "FILTER_TRUEVIEW_IAR_CATEGORY"
        PGBIFilterTrueviewIarCity -> "FILTER_TRUEVIEW_IAR_CITY"
        PGBIFilterTrueviewIarCountry -> "FILTER_TRUEVIEW_IAR_COUNTRY"
        PGBIFilterTrueviewIarGender -> "FILTER_TRUEVIEW_IAR_GENDER"
        PGBIFilterTrueviewIarInterest -> "FILTER_TRUEVIEW_IAR_INTEREST"
        PGBIFilterTrueviewIarLanguage -> "FILTER_TRUEVIEW_IAR_LANGUAGE"
        PGBIFilterTrueviewIarParentalStatus -> "FILTER_TRUEVIEW_IAR_PARENTAL_STATUS"
        PGBIFilterTrueviewIarRegion -> "FILTER_TRUEVIEW_IAR_REGION"
        PGBIFilterTrueviewIarRemarketingList -> "FILTER_TRUEVIEW_IAR_REMARKETING_LIST"
        PGBIFilterTrueviewIarTimeOfDay -> "FILTER_TRUEVIEW_IAR_TIME_OF_DAY"
        PGBIFilterTrueviewIarYouTubeChannel -> "FILTER_TRUEVIEW_IAR_YOUTUBE_CHANNEL"
        PGBIFilterTrueviewIarYouTubeVideo -> "FILTER_TRUEVIEW_IAR_YOUTUBE_VIDEO"
        PGBIFilterTrueviewIarZipcode -> "FILTER_TRUEVIEW_IAR_ZIPCODE"
        PGBIFilterTrueviewInterest -> "FILTER_TRUEVIEW_INTEREST"
        PGBIFilterTrueviewKeyword -> "FILTER_TRUEVIEW_KEYWORD"
        PGBIFilterTrueviewParentalStatus -> "FILTER_TRUEVIEW_PARENTAL_STATUS"
        PGBIFilterTrueviewPlacement -> "FILTER_TRUEVIEW_PLACEMENT"
        PGBIFilterTrueviewRegion -> "FILTER_TRUEVIEW_REGION"
        PGBIFilterTrueviewRemarketingList -> "FILTER_TRUEVIEW_REMARKETING_LIST"
        PGBIFilterTrueviewURL -> "FILTER_TRUEVIEW_URL"
        PGBIFilterTrueviewZipcode -> "FILTER_TRUEVIEW_ZIPCODE"
        PGBIFilterUnknown -> "FILTER_UNKNOWN"
        PGBIFilterUserList -> "FILTER_USER_LIST"
        PGBIFilterUserListFirstParty -> "FILTER_USER_LIST_FIRST_PARTY"
        PGBIFilterUserListThirdParty -> "FILTER_USER_LIST_THIRD_PARTY"
        PGBIFilterVideoAdPositionInStream -> "FILTER_VIDEO_AD_POSITION_IN_STREAM"
        PGBIFilterVideoCompanionSize -> "FILTER_VIDEO_COMPANION_SIZE"
        PGBIFilterVideoCompanionType -> "FILTER_VIDEO_COMPANION_TYPE"
        PGBIFilterVideoCreativeDuration -> "FILTER_VIDEO_CREATIVE_DURATION"
        PGBIFilterVideoCreativeDurationSkippable -> "FILTER_VIDEO_CREATIVE_DURATION_SKIPPABLE"
        PGBIFilterVideoDurationSeconds -> "FILTER_VIDEO_DURATION_SECONDS"
        PGBIFilterVideoFormatSupport -> "FILTER_VIDEO_FORMAT_SUPPORT"
        PGBIFilterVideoInventoryType -> "FILTER_VIDEO_INVENTORY_TYPE"
        PGBIFilterVideoPlayerSize -> "FILTER_VIDEO_PLAYER_SIZE"
        PGBIFilterVideoRatingTier -> "FILTER_VIDEO_RATING_TIER"
        PGBIFilterVideoSkippableSupport -> "FILTER_VIDEO_SKIPPABLE_SUPPORT"
        PGBIFilterVideoVpaidSupport -> "FILTER_VIDEO_VPAID_SUPPORT"
        PGBIFilterWeek -> "FILTER_WEEK"
        PGBIFilterYear -> "FILTER_YEAR"
        PGBIFilterYouTubeVertical -> "FILTER_YOUTUBE_VERTICAL"
        PGBIFilterZipCode -> "FILTER_ZIP_CODE"

instance FromJSON ParametersGroupBysItem where
    parseJSON = parseJSONText "ParametersGroupBysItem"

instance ToJSON ParametersGroupBysItem where
    toJSON = toJSONText

-- | Error code that shows why the report was not created.
data ReportFailureErrorCode
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
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ReportFailureErrorCode

instance FromHttpApiData ReportFailureErrorCode where
    parseQueryParam = \case
        "AUTHENTICATION_ERROR" -> Right AuthenticationError
        "DEPRECATED_REPORTING_INVALID_QUERY" -> Right DeprecatedReportingInvalidQuery
        "REPORTING_BUCKET_NOT_FOUND" -> Right ReportingBucketNotFound
        "REPORTING_CREATE_BUCKET_FAILED" -> Right ReportingCreateBucketFailed
        "REPORTING_DELETE_BUCKET_FAILED" -> Right ReportingDeleteBucketFailed
        "REPORTING_FATAL_ERROR" -> Right ReportingFatalError
        "REPORTING_ILLEGAL_FILENAME" -> Right ReportingIllegalFilename
        "REPORTING_IMCOMPATIBLE_METRICS" -> Right ReportingImcompatibleMetrics
        "REPORTING_INVALID_QUERY_MISSING_PARTNER_AND_ADVERTISER_FILTERS" -> Right ReportingInvalidQueryMissingPartnerAndAdvertiserFilters
        "REPORTING_INVALID_QUERY_TITLE_MISSING" -> Right ReportingInvalidQueryTitleMissing
        "REPORTING_INVALID_QUERY_TOO_MANY_UNFILTERED_LARGE_GROUP_BYS" -> Right ReportingInvalidQueryTooManyUnfilteredLargeGroupBys
        "REPORTING_QUERY_NOT_FOUND" -> Right ReportingQueryNotFound
        "REPORTING_TRANSIENT_ERROR" -> Right ReportingTransientError
        "REPORTING_UPDATE_BUCKET_PERMISSION_FAILED" -> Right ReportingUpdateBucketPermissionFailed
        "REPORTING_WRITE_BUCKET_OBJECT_FAILED" -> Right ReportingWriteBucketObjectFailed
        "SERVER_ERROR" -> Right ServerError
        "UNAUTHORIZED_API_ACCESS" -> Right UnauthorizedAPIAccess
        "VALIDATION_ERROR" -> Right ValidationError
        x -> Left ("Unable to parse ReportFailureErrorCode from: " <> x)

instance ToHttpApiData ReportFailureErrorCode where
    toQueryParam = \case
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

instance FromJSON ReportFailureErrorCode where
    parseJSON = parseJSONText "ReportFailureErrorCode"

instance ToJSON ReportFailureErrorCode where
    toJSON = toJSONText

-- | Format in which the line items will be returned. Default to CSV.
data DownloadLineItemsRequestFormat
    = DLIRFCSV
      -- ^ @CSV@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable DownloadLineItemsRequestFormat

instance FromHttpApiData DownloadLineItemsRequestFormat where
    parseQueryParam = \case
        "CSV" -> Right DLIRFCSV
        x -> Left ("Unable to parse DownloadLineItemsRequestFormat from: " <> x)

instance ToHttpApiData DownloadLineItemsRequestFormat where
    toQueryParam = \case
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
