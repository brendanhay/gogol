{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.AdSense.Types.Sum
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.AdSense.Types.Sum where

import Network.Google.Prelude hiding (Bytes)

-- | Output only. State of a site.
data SiteState
    = StateUnspecified
      -- ^ @STATE_UNSPECIFIED@
      -- State unspecified.
    | RequiresReview
      -- ^ @REQUIRES_REVIEW@
      -- The site hasn\'t been checked yet.
    | GettingReady
      -- ^ @GETTING_READY@
      -- Running some checks on the site. This usually takes a few days, but in
      -- some cases can take up to 2 weeks.
    | Ready
      -- ^ @READY@
      -- The site is ready to show ads.
    | NeedsAttention
      -- ^ @NEEDS_ATTENTION@
      -- Publisher needs to fix some issues before the site is ready to show ads.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable SiteState

instance FromHttpApiData SiteState where
    parseQueryParam = \case
        "STATE_UNSPECIFIED" -> Right StateUnspecified
        "REQUIRES_REVIEW" -> Right RequiresReview
        "GETTING_READY" -> Right GettingReady
        "READY" -> Right Ready
        "NEEDS_ATTENTION" -> Right NeedsAttention
        x -> Left ("Unable to parse SiteState from: " <> x)

instance ToHttpApiData SiteState where
    toQueryParam = \case
        StateUnspecified -> "STATE_UNSPECIFIED"
        RequiresReview -> "REQUIRES_REVIEW"
        GettingReady -> "GETTING_READY"
        Ready -> "READY"
        NeedsAttention -> "NEEDS_ATTENTION"

instance FromJSON SiteState where
    parseJSON = parseJSONText "SiteState"

instance ToJSON SiteState where
    toJSON = toJSONText

-- | Timezone in which to generate the report. If unspecified, this defaults
-- to the account timezone. For more information, see [changing the time
-- zone of your
-- reports](https:\/\/support.google.com\/adsense\/answer\/9830725).
data AccountsReportsSavedGenerateReportingTimeZone
    = ReportingTimeZoneUnspecified
      -- ^ @REPORTING_TIME_ZONE_UNSPECIFIED@
      -- Unspecified timezone.
    | AccountTimeZone
      -- ^ @ACCOUNT_TIME_ZONE@
      -- Use the account timezone in the report.
    | GoogleTimeZone
      -- ^ @GOOGLE_TIME_ZONE@
      -- Use the Google timezone in the report (America\/Los_Angeles).
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable AccountsReportsSavedGenerateReportingTimeZone

instance FromHttpApiData AccountsReportsSavedGenerateReportingTimeZone where
    parseQueryParam = \case
        "REPORTING_TIME_ZONE_UNSPECIFIED" -> Right ReportingTimeZoneUnspecified
        "ACCOUNT_TIME_ZONE" -> Right AccountTimeZone
        "GOOGLE_TIME_ZONE" -> Right GoogleTimeZone
        x -> Left ("Unable to parse AccountsReportsSavedGenerateReportingTimeZone from: " <> x)

instance ToHttpApiData AccountsReportsSavedGenerateReportingTimeZone where
    toQueryParam = \case
        ReportingTimeZoneUnspecified -> "REPORTING_TIME_ZONE_UNSPECIFIED"
        AccountTimeZone -> "ACCOUNT_TIME_ZONE"
        GoogleTimeZone -> "GOOGLE_TIME_ZONE"

instance FromJSON AccountsReportsSavedGenerateReportingTimeZone where
    parseJSON = parseJSONText "AccountsReportsSavedGenerateReportingTimeZone"

instance ToJSON AccountsReportsSavedGenerateReportingTimeZone where
    toJSON = toJSONText

-- | Date range of the report, if unset the range will be considered CUSTOM.
data AccountsReportsSavedGenerateCSVDateRange
    = ReportingDateRangeUnspecified
      -- ^ @REPORTING_DATE_RANGE_UNSPECIFIED@
      -- Unspecified date range.
    | Custom
      -- ^ @CUSTOM@
      -- A custom date range specified using the \`start_date\` and \`end_date\`
      -- fields. This is the default if no ReportingDateRange is provided.
    | Today
      -- ^ @TODAY@
      -- Current day.
    | Yesterday
      -- ^ @YESTERDAY@
      -- Yesterday.
    | MonthToDate
      -- ^ @MONTH_TO_DATE@
      -- From the start of the current month to the current day. e.g. if the
      -- current date is 2020-03-12 then the range will be [2020-03-01,
      -- 2020-03-12].
    | YearToDate
      -- ^ @YEAR_TO_DATE@
      -- From the start of the current year to the current day. e.g. if the
      -- current date is 2020-03-12 then the range will be [2020-01-01,
      -- 2020-03-12].
    | Last7Days
      -- ^ @LAST_7_DAYS@
      -- Last 7 days, excluding current day.
    | Last30Days
      -- ^ @LAST_30_DAYS@
      -- Last 30 days, excluding current day.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable AccountsReportsSavedGenerateCSVDateRange

instance FromHttpApiData AccountsReportsSavedGenerateCSVDateRange where
    parseQueryParam = \case
        "REPORTING_DATE_RANGE_UNSPECIFIED" -> Right ReportingDateRangeUnspecified
        "CUSTOM" -> Right Custom
        "TODAY" -> Right Today
        "YESTERDAY" -> Right Yesterday
        "MONTH_TO_DATE" -> Right MonthToDate
        "YEAR_TO_DATE" -> Right YearToDate
        "LAST_7_DAYS" -> Right Last7Days
        "LAST_30_DAYS" -> Right Last30Days
        x -> Left ("Unable to parse AccountsReportsSavedGenerateCSVDateRange from: " <> x)

instance ToHttpApiData AccountsReportsSavedGenerateCSVDateRange where
    toQueryParam = \case
        ReportingDateRangeUnspecified -> "REPORTING_DATE_RANGE_UNSPECIFIED"
        Custom -> "CUSTOM"
        Today -> "TODAY"
        Yesterday -> "YESTERDAY"
        MonthToDate -> "MONTH_TO_DATE"
        YearToDate -> "YEAR_TO_DATE"
        Last7Days -> "LAST_7_DAYS"
        Last30Days -> "LAST_30_DAYS"

instance FromJSON AccountsReportsSavedGenerateCSVDateRange where
    parseJSON = parseJSONText "AccountsReportsSavedGenerateCSVDateRange"

instance ToJSON AccountsReportsSavedGenerateCSVDateRange where
    toJSON = toJSONText

-- | Timezone in which to generate the report. If unspecified, this defaults
-- to the account timezone. For more information, see [changing the time
-- zone of your
-- reports](https:\/\/support.google.com\/adsense\/answer\/9830725).
data AccountsReportsGenerateCSVReportingTimeZone
    = ARGCRTZReportingTimeZoneUnspecified
      -- ^ @REPORTING_TIME_ZONE_UNSPECIFIED@
      -- Unspecified timezone.
    | ARGCRTZAccountTimeZone
      -- ^ @ACCOUNT_TIME_ZONE@
      -- Use the account timezone in the report.
    | ARGCRTZGoogleTimeZone
      -- ^ @GOOGLE_TIME_ZONE@
      -- Use the Google timezone in the report (America\/Los_Angeles).
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable AccountsReportsGenerateCSVReportingTimeZone

instance FromHttpApiData AccountsReportsGenerateCSVReportingTimeZone where
    parseQueryParam = \case
        "REPORTING_TIME_ZONE_UNSPECIFIED" -> Right ARGCRTZReportingTimeZoneUnspecified
        "ACCOUNT_TIME_ZONE" -> Right ARGCRTZAccountTimeZone
        "GOOGLE_TIME_ZONE" -> Right ARGCRTZGoogleTimeZone
        x -> Left ("Unable to parse AccountsReportsGenerateCSVReportingTimeZone from: " <> x)

instance ToHttpApiData AccountsReportsGenerateCSVReportingTimeZone where
    toQueryParam = \case
        ARGCRTZReportingTimeZoneUnspecified -> "REPORTING_TIME_ZONE_UNSPECIFIED"
        ARGCRTZAccountTimeZone -> "ACCOUNT_TIME_ZONE"
        ARGCRTZGoogleTimeZone -> "GOOGLE_TIME_ZONE"

instance FromJSON AccountsReportsGenerateCSVReportingTimeZone where
    parseJSON = parseJSONText "AccountsReportsGenerateCSVReportingTimeZone"

instance ToJSON AccountsReportsGenerateCSVReportingTimeZone where
    toJSON = toJSONText

-- | Dimensions to base the report on.
data AccountsReportsGenerateDimensions
    = ARGDDimensionUnspecified
      -- ^ @DIMENSION_UNSPECIFIED@
      -- Unspecified dimension.
    | ARGDDate
      -- ^ @DATE@
      -- Date dimension in YYYY-MM-DD format (e.g. \"2010-02-10\").
    | ARGDWeek
      -- ^ @WEEK@
      -- Week dimension in YYYY-MM-DD format, representing the first day of each
      -- week (e.g. \"2010-02-08\"). The first day of the week is determined by
      -- the language_code specified in a report generation request (so e.g. this
      -- would be a Monday for \"en-GB\" or \"es\", but a Sunday for \"en\" or
      -- \"fr-CA\").
    | ARGDMonth
      -- ^ @MONTH@
      -- Month dimension in YYYY-MM format (e.g. \"2010-02\").
    | ARGDAccountName
      -- ^ @ACCOUNT_NAME@
      -- Account name. The members of this dimension match the values from
      -- Account.display_name.
    | ARGDAdClientId
      -- ^ @AD_CLIENT_ID@
      -- Unique ID of an ad client. The members of this dimension match the
      -- values from AdClient.reporting_dimension_id.
    | ARGDProductName
      -- ^ @PRODUCT_NAME@
      -- Localized product name (e.g. \"AdSense for Content\", \"AdSense for
      -- Search\").
    | ARGDProductCode
      -- ^ @PRODUCT_CODE@
      -- Product code (e.g. \"AFC\", \"AFS\"). The members of this dimension
      -- match the values from AdClient.product_code.
    | ARGDAdUnitName
      -- ^ @AD_UNIT_NAME@
      -- Ad unit name (within which an ad was served). The members of this
      -- dimension match the values from AdUnit.display_name.
    | ARGDAdUnitId
      -- ^ @AD_UNIT_ID@
      -- Unique ID of an ad unit (within which an ad was served). The members of
      -- this dimension match the values from AdUnit.reporting_dimension_id.
    | ARGDAdUnitSizeName
      -- ^ @AD_UNIT_SIZE_NAME@
      -- Localized size of an ad unit (e.g. \"728x90\", \"Responsive\").
    | ARGDAdUnitSizeCode
      -- ^ @AD_UNIT_SIZE_CODE@
      -- The size code of an ad unit (e.g. \"728x90\", \"responsive\").
    | ARGDCustomChannelName
      -- ^ @CUSTOM_CHANNEL_NAME@
      -- Custom channel name. The members of this dimension match the values from
      -- CustomChannel.display_name.
    | ARGDCustomChannelId
      -- ^ @CUSTOM_CHANNEL_ID@
      -- Unique ID of a custom channel. The members of this dimension match the
      -- values from CustomChannel.reporting_dimension_id.
    | ARGDOwnedSiteDomainName
      -- ^ @OWNED_SITE_DOMAIN_NAME@
      -- Domain name of a verified site (e.g. \"example.com\"). The members of
      -- this dimension match the values from Site.domain.
    | ARGDOwnedSiteId
      -- ^ @OWNED_SITE_ID@
      -- Unique ID of a verified site. The members of this dimension match the
      -- values from Site.reporting_dimension_id.
    | ARGDURLChannelName
      -- ^ @URL_CHANNEL_NAME@
      -- Name of a URL channel. The members of this dimension match the values
      -- from UrlChannel.uri_pattern.
    | ARGDURLChannelId
      -- ^ @URL_CHANNEL_ID@
      -- Unique ID of a URL channel. The members of this dimension match the
      -- values from UrlChannel.reporting_dimension_id.
    | ARGDBuyerNetworkName
      -- ^ @BUYER_NETWORK_NAME@
      -- Name of an ad network that returned the winning ads for an ad request
      -- (e.g. \"Google AdWords\"). Note that unlike other \"NAME\" dimensions,
      -- the members of this dimensions are not localized.
    | ARGDBuyerNetworkId
      -- ^ @BUYER_NETWORK_ID@
      -- Unique (opaque) ID of an ad network that returned the winning ads for an
      -- ad request.
    | ARGDBidTypeName
      -- ^ @BID_TYPE_NAME@
      -- Localized bid type name (e.g. \"CPC bids\", \"CPM bids\") for a served
      -- ad.
    | ARGDBidTypeCode
      -- ^ @BID_TYPE_CODE@
      -- Type of a bid (e.g. \"cpc\", \"cpm\") for a served ad.
    | ARGDCreativeSizeName
      -- ^ @CREATIVE_SIZE_NAME@
      -- Localized creative size name (e.g. \"728x90\", \"Dynamic\") of a served
      -- ad.
    | ARGDCreativeSizeCode
      -- ^ @CREATIVE_SIZE_CODE@
      -- Creative size code (e.g. \"728x90\", \"dynamic\") of a served ad.
    | ARGDDomainName
      -- ^ @DOMAIN_NAME@
      -- Localized name of a host on which an ad was served, after IDNA decoding
      -- (e.g. \"www.google.com\", \"Web caches and other\", \"bücher.example\").
    | ARGDDomainCode
      -- ^ @DOMAIN_CODE@
      -- Name of a host on which an ad was served (e.g. \"www.google.com\",
      -- \"webcaches\", \"xn--bcher-kva.example\").
    | ARGDCountryName
      -- ^ @COUNTRY_NAME@
      -- Localized region name of a user viewing an ad (e.g. \"United States\",
      -- \"France\").
    | ARGDCountryCode
      -- ^ @COUNTRY_CODE@
      -- CLDR region code of a user viewing an ad (e.g. \"US\", \"FR\").
    | ARGDPlatformTypeName
      -- ^ @PLATFORM_TYPE_NAME@
      -- Localized platform type name (e.g. \"High-end mobile devices\",
      -- \"Desktop\").
    | ARGDPlatformTypeCode
      -- ^ @PLATFORM_TYPE_CODE@
      -- Platform type code (e.g. \"HighEndMobile\", \"Desktop\").
    | ARGDTargetingTypeName
      -- ^ @TARGETING_TYPE_NAME@
      -- Localized targeting type name (e.g. \"Contextual\", \"Personalized\",
      -- \"Run of Network\").
    | ARGDTargetingTypeCode
      -- ^ @TARGETING_TYPE_CODE@
      -- Targeting type code (e.g. \"Keyword\", \"UserInterest\",
      -- \"RunOfNetwork\").
    | ARGDContentPlatformName
      -- ^ @CONTENT_PLATFORM_NAME@
      -- Localized content platform name an ad request was made from (e.g.
      -- \"AMP\", \"Web\").
    | ARGDContentPlatformCode
      -- ^ @CONTENT_PLATFORM_CODE@
      -- Content platform code an ad request was made from (e.g. \"AMP\",
      -- \"HTML\").
    | ARGDAdPlacementName
      -- ^ @AD_PLACEMENT_NAME@
      -- Localized ad placement name (e.g. \"Ad unit\", \"Global settings\",
      -- \"Manual\").
    | ARGDAdPlacementCode
      -- ^ @AD_PLACEMENT_CODE@
      -- Ad placement code (e.g. \"AD_UNIT\", \"ca-pub-123456:78910\",
      -- \"OTHER\").
    | ARGDRequestedAdTypeName
      -- ^ @REQUESTED_AD_TYPE_NAME@
      -- Localized requested ad type name (e.g. \"Display\", \"Link unit\",
      -- \"Other\").
    | ARGDRequestedAdTypeCode
      -- ^ @REQUESTED_AD_TYPE_CODE@
      -- Requested ad type code (e.g. \"IMAGE\", \"RADLINK\", \"OTHER\").
    | ARGDServedAdTypeName
      -- ^ @SERVED_AD_TYPE_NAME@
      -- Localized served ad type name (e.g. \"Display\", \"Link unit\",
      -- \"Other\").
    | ARGDServedAdTypeCode
      -- ^ @SERVED_AD_TYPE_CODE@
      -- Served ad type code (e.g. \"IMAGE\", \"RADLINK\", \"OTHER\").
    | ARGDAdFormatName
      -- ^ @AD_FORMAT_NAME@
      -- Localized ad format name indicating the way an ad is shown to the users
      -- on your site (e.g. \"In-page\", \"Anchor\", \"Vignette\").
    | ARGDAdFormatCode
      -- ^ @AD_FORMAT_CODE@
      -- Ad format code indicating the way an ad is shown to the users on your
      -- site (e.g. \"ON_PAGE\", \"ANCHOR\", \"INTERSTITIAL\").
    | ARGDCustomSearchStyleName
      -- ^ @CUSTOM_SEARCH_STYLE_NAME@
      -- Custom search style name.
    | ARGDCustomSearchStyleId
      -- ^ @CUSTOM_SEARCH_STYLE_ID@
      -- Custom search style id.
    | ARGDDomainRegistrant
      -- ^ @DOMAIN_REGISTRANT@
      -- Domain registrants.
    | ARGDWebsearchQueryString
      -- ^ @WEBSEARCH_QUERY_STRING@
      -- Query strings for web searches.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable AccountsReportsGenerateDimensions

instance FromHttpApiData AccountsReportsGenerateDimensions where
    parseQueryParam = \case
        "DIMENSION_UNSPECIFIED" -> Right ARGDDimensionUnspecified
        "DATE" -> Right ARGDDate
        "WEEK" -> Right ARGDWeek
        "MONTH" -> Right ARGDMonth
        "ACCOUNT_NAME" -> Right ARGDAccountName
        "AD_CLIENT_ID" -> Right ARGDAdClientId
        "PRODUCT_NAME" -> Right ARGDProductName
        "PRODUCT_CODE" -> Right ARGDProductCode
        "AD_UNIT_NAME" -> Right ARGDAdUnitName
        "AD_UNIT_ID" -> Right ARGDAdUnitId
        "AD_UNIT_SIZE_NAME" -> Right ARGDAdUnitSizeName
        "AD_UNIT_SIZE_CODE" -> Right ARGDAdUnitSizeCode
        "CUSTOM_CHANNEL_NAME" -> Right ARGDCustomChannelName
        "CUSTOM_CHANNEL_ID" -> Right ARGDCustomChannelId
        "OWNED_SITE_DOMAIN_NAME" -> Right ARGDOwnedSiteDomainName
        "OWNED_SITE_ID" -> Right ARGDOwnedSiteId
        "URL_CHANNEL_NAME" -> Right ARGDURLChannelName
        "URL_CHANNEL_ID" -> Right ARGDURLChannelId
        "BUYER_NETWORK_NAME" -> Right ARGDBuyerNetworkName
        "BUYER_NETWORK_ID" -> Right ARGDBuyerNetworkId
        "BID_TYPE_NAME" -> Right ARGDBidTypeName
        "BID_TYPE_CODE" -> Right ARGDBidTypeCode
        "CREATIVE_SIZE_NAME" -> Right ARGDCreativeSizeName
        "CREATIVE_SIZE_CODE" -> Right ARGDCreativeSizeCode
        "DOMAIN_NAME" -> Right ARGDDomainName
        "DOMAIN_CODE" -> Right ARGDDomainCode
        "COUNTRY_NAME" -> Right ARGDCountryName
        "COUNTRY_CODE" -> Right ARGDCountryCode
        "PLATFORM_TYPE_NAME" -> Right ARGDPlatformTypeName
        "PLATFORM_TYPE_CODE" -> Right ARGDPlatformTypeCode
        "TARGETING_TYPE_NAME" -> Right ARGDTargetingTypeName
        "TARGETING_TYPE_CODE" -> Right ARGDTargetingTypeCode
        "CONTENT_PLATFORM_NAME" -> Right ARGDContentPlatformName
        "CONTENT_PLATFORM_CODE" -> Right ARGDContentPlatformCode
        "AD_PLACEMENT_NAME" -> Right ARGDAdPlacementName
        "AD_PLACEMENT_CODE" -> Right ARGDAdPlacementCode
        "REQUESTED_AD_TYPE_NAME" -> Right ARGDRequestedAdTypeName
        "REQUESTED_AD_TYPE_CODE" -> Right ARGDRequestedAdTypeCode
        "SERVED_AD_TYPE_NAME" -> Right ARGDServedAdTypeName
        "SERVED_AD_TYPE_CODE" -> Right ARGDServedAdTypeCode
        "AD_FORMAT_NAME" -> Right ARGDAdFormatName
        "AD_FORMAT_CODE" -> Right ARGDAdFormatCode
        "CUSTOM_SEARCH_STYLE_NAME" -> Right ARGDCustomSearchStyleName
        "CUSTOM_SEARCH_STYLE_ID" -> Right ARGDCustomSearchStyleId
        "DOMAIN_REGISTRANT" -> Right ARGDDomainRegistrant
        "WEBSEARCH_QUERY_STRING" -> Right ARGDWebsearchQueryString
        x -> Left ("Unable to parse AccountsReportsGenerateDimensions from: " <> x)

instance ToHttpApiData AccountsReportsGenerateDimensions where
    toQueryParam = \case
        ARGDDimensionUnspecified -> "DIMENSION_UNSPECIFIED"
        ARGDDate -> "DATE"
        ARGDWeek -> "WEEK"
        ARGDMonth -> "MONTH"
        ARGDAccountName -> "ACCOUNT_NAME"
        ARGDAdClientId -> "AD_CLIENT_ID"
        ARGDProductName -> "PRODUCT_NAME"
        ARGDProductCode -> "PRODUCT_CODE"
        ARGDAdUnitName -> "AD_UNIT_NAME"
        ARGDAdUnitId -> "AD_UNIT_ID"
        ARGDAdUnitSizeName -> "AD_UNIT_SIZE_NAME"
        ARGDAdUnitSizeCode -> "AD_UNIT_SIZE_CODE"
        ARGDCustomChannelName -> "CUSTOM_CHANNEL_NAME"
        ARGDCustomChannelId -> "CUSTOM_CHANNEL_ID"
        ARGDOwnedSiteDomainName -> "OWNED_SITE_DOMAIN_NAME"
        ARGDOwnedSiteId -> "OWNED_SITE_ID"
        ARGDURLChannelName -> "URL_CHANNEL_NAME"
        ARGDURLChannelId -> "URL_CHANNEL_ID"
        ARGDBuyerNetworkName -> "BUYER_NETWORK_NAME"
        ARGDBuyerNetworkId -> "BUYER_NETWORK_ID"
        ARGDBidTypeName -> "BID_TYPE_NAME"
        ARGDBidTypeCode -> "BID_TYPE_CODE"
        ARGDCreativeSizeName -> "CREATIVE_SIZE_NAME"
        ARGDCreativeSizeCode -> "CREATIVE_SIZE_CODE"
        ARGDDomainName -> "DOMAIN_NAME"
        ARGDDomainCode -> "DOMAIN_CODE"
        ARGDCountryName -> "COUNTRY_NAME"
        ARGDCountryCode -> "COUNTRY_CODE"
        ARGDPlatformTypeName -> "PLATFORM_TYPE_NAME"
        ARGDPlatformTypeCode -> "PLATFORM_TYPE_CODE"
        ARGDTargetingTypeName -> "TARGETING_TYPE_NAME"
        ARGDTargetingTypeCode -> "TARGETING_TYPE_CODE"
        ARGDContentPlatformName -> "CONTENT_PLATFORM_NAME"
        ARGDContentPlatformCode -> "CONTENT_PLATFORM_CODE"
        ARGDAdPlacementName -> "AD_PLACEMENT_NAME"
        ARGDAdPlacementCode -> "AD_PLACEMENT_CODE"
        ARGDRequestedAdTypeName -> "REQUESTED_AD_TYPE_NAME"
        ARGDRequestedAdTypeCode -> "REQUESTED_AD_TYPE_CODE"
        ARGDServedAdTypeName -> "SERVED_AD_TYPE_NAME"
        ARGDServedAdTypeCode -> "SERVED_AD_TYPE_CODE"
        ARGDAdFormatName -> "AD_FORMAT_NAME"
        ARGDAdFormatCode -> "AD_FORMAT_CODE"
        ARGDCustomSearchStyleName -> "CUSTOM_SEARCH_STYLE_NAME"
        ARGDCustomSearchStyleId -> "CUSTOM_SEARCH_STYLE_ID"
        ARGDDomainRegistrant -> "DOMAIN_REGISTRANT"
        ARGDWebsearchQueryString -> "WEBSEARCH_QUERY_STRING"

instance FromJSON AccountsReportsGenerateDimensions where
    parseJSON = parseJSONText "AccountsReportsGenerateDimensions"

instance ToJSON AccountsReportsGenerateDimensions where
    toJSON = toJSONText

-- | Required. Type of the header.
data HeaderType
    = HeaderTypeUnspecified
      -- ^ @HEADER_TYPE_UNSPECIFIED@
      -- Unspecified header.
    | Dimension
      -- ^ @DIMENSION@
      -- Dimension header type.
    | MetricTally
      -- ^ @METRIC_TALLY@
      -- Tally header type.
    | MetricRatio
      -- ^ @METRIC_RATIO@
      -- Ratio header type.
    | MetricCurrency
      -- ^ @METRIC_CURRENCY@
      -- Currency header type.
    | MetricMilliseconds
      -- ^ @METRIC_MILLISECONDS@
      -- Milliseconds header type.
    | MetricDecimal
      -- ^ @METRIC_DECIMAL@
      -- Decimal header type.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable HeaderType

instance FromHttpApiData HeaderType where
    parseQueryParam = \case
        "HEADER_TYPE_UNSPECIFIED" -> Right HeaderTypeUnspecified
        "DIMENSION" -> Right Dimension
        "METRIC_TALLY" -> Right MetricTally
        "METRIC_RATIO" -> Right MetricRatio
        "METRIC_CURRENCY" -> Right MetricCurrency
        "METRIC_MILLISECONDS" -> Right MetricMilliseconds
        "METRIC_DECIMAL" -> Right MetricDecimal
        x -> Left ("Unable to parse HeaderType from: " <> x)

instance ToHttpApiData HeaderType where
    toQueryParam = \case
        HeaderTypeUnspecified -> "HEADER_TYPE_UNSPECIFIED"
        Dimension -> "DIMENSION"
        MetricTally -> "METRIC_TALLY"
        MetricRatio -> "METRIC_RATIO"
        MetricCurrency -> "METRIC_CURRENCY"
        MetricMilliseconds -> "METRIC_MILLISECONDS"
        MetricDecimal -> "METRIC_DECIMAL"

instance FromJSON HeaderType where
    parseJSON = parseJSONText "HeaderType"

instance ToJSON HeaderType where
    toJSON = toJSONText

-- | Timezone in which to generate the report. If unspecified, this defaults
-- to the account timezone. For more information, see [changing the time
-- zone of your
-- reports](https:\/\/support.google.com\/adsense\/answer\/9830725).
data AccountsReportsSavedGenerateCSVReportingTimeZone
    = ARSGCRTZReportingTimeZoneUnspecified
      -- ^ @REPORTING_TIME_ZONE_UNSPECIFIED@
      -- Unspecified timezone.
    | ARSGCRTZAccountTimeZone
      -- ^ @ACCOUNT_TIME_ZONE@
      -- Use the account timezone in the report.
    | ARSGCRTZGoogleTimeZone
      -- ^ @GOOGLE_TIME_ZONE@
      -- Use the Google timezone in the report (America\/Los_Angeles).
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable AccountsReportsSavedGenerateCSVReportingTimeZone

instance FromHttpApiData AccountsReportsSavedGenerateCSVReportingTimeZone where
    parseQueryParam = \case
        "REPORTING_TIME_ZONE_UNSPECIFIED" -> Right ARSGCRTZReportingTimeZoneUnspecified
        "ACCOUNT_TIME_ZONE" -> Right ARSGCRTZAccountTimeZone
        "GOOGLE_TIME_ZONE" -> Right ARSGCRTZGoogleTimeZone
        x -> Left ("Unable to parse AccountsReportsSavedGenerateCSVReportingTimeZone from: " <> x)

instance ToHttpApiData AccountsReportsSavedGenerateCSVReportingTimeZone where
    toQueryParam = \case
        ARSGCRTZReportingTimeZoneUnspecified -> "REPORTING_TIME_ZONE_UNSPECIFIED"
        ARSGCRTZAccountTimeZone -> "ACCOUNT_TIME_ZONE"
        ARSGCRTZGoogleTimeZone -> "GOOGLE_TIME_ZONE"

instance FromJSON AccountsReportsSavedGenerateCSVReportingTimeZone where
    parseJSON = parseJSONText "AccountsReportsSavedGenerateCSVReportingTimeZone"

instance ToJSON AccountsReportsSavedGenerateCSVReportingTimeZone where
    toJSON = toJSONText

-- | Type of the ad unit.
data ContentAdsSettingsType
    = TypeUnspecified
      -- ^ @TYPE_UNSPECIFIED@
      -- Unspecified ad unit type.
    | Display
      -- ^ @DISPLAY@
      -- Display ad unit.
    | Feed
      -- ^ @FEED@
      -- In-feed ad unit.
    | Article
      -- ^ @ARTICLE@
      -- In-article ad unit.
    | MatchedContent
      -- ^ @MATCHED_CONTENT@
      -- Matched content unit.
    | Link
      -- ^ @LINK@
      -- Link ad unit. Note that link ad units have now been retired, see
      -- https:\/\/support.google.com\/adsense\/answer\/9987221.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ContentAdsSettingsType

instance FromHttpApiData ContentAdsSettingsType where
    parseQueryParam = \case
        "TYPE_UNSPECIFIED" -> Right TypeUnspecified
        "DISPLAY" -> Right Display
        "FEED" -> Right Feed
        "ARTICLE" -> Right Article
        "MATCHED_CONTENT" -> Right MatchedContent
        "LINK" -> Right Link
        x -> Left ("Unable to parse ContentAdsSettingsType from: " <> x)

instance ToHttpApiData ContentAdsSettingsType where
    toQueryParam = \case
        TypeUnspecified -> "TYPE_UNSPECIFIED"
        Display -> "DISPLAY"
        Feed -> "FEED"
        Article -> "ARTICLE"
        MatchedContent -> "MATCHED_CONTENT"
        Link -> "LINK"

instance FromJSON ContentAdsSettingsType where
    parseJSON = parseJSONText "ContentAdsSettingsType"

instance ToJSON ContentAdsSettingsType where
    toJSON = toJSONText

-- | Date range of the report, if unset the range will be considered CUSTOM.
data AccountsReportsSavedGenerateDateRange
    = ARSGDRReportingDateRangeUnspecified
      -- ^ @REPORTING_DATE_RANGE_UNSPECIFIED@
      -- Unspecified date range.
    | ARSGDRCustom
      -- ^ @CUSTOM@
      -- A custom date range specified using the \`start_date\` and \`end_date\`
      -- fields. This is the default if no ReportingDateRange is provided.
    | ARSGDRToday
      -- ^ @TODAY@
      -- Current day.
    | ARSGDRYesterday
      -- ^ @YESTERDAY@
      -- Yesterday.
    | ARSGDRMonthToDate
      -- ^ @MONTH_TO_DATE@
      -- From the start of the current month to the current day. e.g. if the
      -- current date is 2020-03-12 then the range will be [2020-03-01,
      -- 2020-03-12].
    | ARSGDRYearToDate
      -- ^ @YEAR_TO_DATE@
      -- From the start of the current year to the current day. e.g. if the
      -- current date is 2020-03-12 then the range will be [2020-01-01,
      -- 2020-03-12].
    | ARSGDRLast7Days
      -- ^ @LAST_7_DAYS@
      -- Last 7 days, excluding current day.
    | ARSGDRLast30Days
      -- ^ @LAST_30_DAYS@
      -- Last 30 days, excluding current day.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable AccountsReportsSavedGenerateDateRange

instance FromHttpApiData AccountsReportsSavedGenerateDateRange where
    parseQueryParam = \case
        "REPORTING_DATE_RANGE_UNSPECIFIED" -> Right ARSGDRReportingDateRangeUnspecified
        "CUSTOM" -> Right ARSGDRCustom
        "TODAY" -> Right ARSGDRToday
        "YESTERDAY" -> Right ARSGDRYesterday
        "MONTH_TO_DATE" -> Right ARSGDRMonthToDate
        "YEAR_TO_DATE" -> Right ARSGDRYearToDate
        "LAST_7_DAYS" -> Right ARSGDRLast7Days
        "LAST_30_DAYS" -> Right ARSGDRLast30Days
        x -> Left ("Unable to parse AccountsReportsSavedGenerateDateRange from: " <> x)

instance ToHttpApiData AccountsReportsSavedGenerateDateRange where
    toQueryParam = \case
        ARSGDRReportingDateRangeUnspecified -> "REPORTING_DATE_RANGE_UNSPECIFIED"
        ARSGDRCustom -> "CUSTOM"
        ARSGDRToday -> "TODAY"
        ARSGDRYesterday -> "YESTERDAY"
        ARSGDRMonthToDate -> "MONTH_TO_DATE"
        ARSGDRYearToDate -> "YEAR_TO_DATE"
        ARSGDRLast7Days -> "LAST_7_DAYS"
        ARSGDRLast30Days -> "LAST_30_DAYS"

instance FromJSON AccountsReportsSavedGenerateDateRange where
    parseJSON = parseJSONText "AccountsReportsSavedGenerateDateRange"

instance ToJSON AccountsReportsSavedGenerateDateRange where
    toJSON = toJSONText

-- | Required. Reporting metrics.
data AccountsReportsGenerateCSVMetrics
    = MetricUnspecified
      -- ^ @METRIC_UNSPECIFIED@
      -- Unspecified metric.
    | PageViews
      -- ^ @PAGE_VIEWS@
      -- Number of page views.
    | AdRequests
      -- ^ @AD_REQUESTS@
      -- Number of ad units that requested ads (for content ads) or search
      -- queries (for search ads). An ad request may result in zero, one, or
      -- multiple individual ad impressions depending on the size of the ad unit
      -- and whether any ads were available.
    | MatchedAdRequests
      -- ^ @MATCHED_AD_REQUESTS@
      -- Requests that returned at least one ad.
    | TotalImpressions
      -- ^ @TOTAL_IMPRESSIONS@
      -- Impressions. An impression is counted for each ad request where at least
      -- one ad has been downloaded to the user’s device and has begun to load.
      -- It is the number of ad units (for content ads) or search queries (for
      -- search ads) that showed ads.
    | Impressions
      -- ^ @IMPRESSIONS@
      -- Impressions. An impression is counted for each ad request where at least
      -- one ad has been downloaded to the user’s device and has begun to load.
      -- It is the number of ad units (for content ads) or search queries (for
      -- search ads) that showed ads.
    | IndividualAdImpressions
      -- ^ @INDIVIDUAL_AD_IMPRESSIONS@
      -- Ads shown. Different ad formats will display varying numbers of ads. For
      -- example, a vertical banner may consist of 2 or more ads. Also, the
      -- number of ads in an ad unit may vary depending on whether the ad unit is
      -- displaying standard text ads, expanded text ads or image ads.
    | Clicks
      -- ^ @CLICKS@
      -- Number of times a user clicked on a standard content ad.
    | PageViewsSpamRatio
      -- ^ @PAGE_VIEWS_SPAM_RATIO@
      -- Fraction of page views considered to be spam. Only available to premium
      -- accounts.
    | AdRequestsSpamRatio
      -- ^ @AD_REQUESTS_SPAM_RATIO@
      -- Fraction of ad requests considered to be spam. Only available to premium
      -- accounts.
    | MatchedAdRequestsSpamRatio
      -- ^ @MATCHED_AD_REQUESTS_SPAM_RATIO@
      -- Fraction of ad requests that returned ads considered to be spam. Only
      -- available to premium accounts.
    | ImpressionsSpamRatio
      -- ^ @IMPRESSIONS_SPAM_RATIO@
      -- Fraction of impressions considered to be spam. Only available to premium
      -- accounts.
    | IndividualAdImpressionsSpamRatio
      -- ^ @INDIVIDUAL_AD_IMPRESSIONS_SPAM_RATIO@
      -- Fraction of ad impressions considered to be spam. Only available to
      -- premium accounts.
    | ClicksSpamRatio
      -- ^ @CLICKS_SPAM_RATIO@
      -- Fraction of clicks considered to be spam. Only available to premium
      -- accounts.
    | AdRequestsCoverage
      -- ^ @AD_REQUESTS_COVERAGE@
      -- Ratio of requested ad units or queries to the number returned to the
      -- site.
    | PageViewsCtr
      -- ^ @PAGE_VIEWS_CTR@
      -- Ratio of individual page views that resulted in a click.
    | AdRequestsCtr
      -- ^ @AD_REQUESTS_CTR@
      -- Ratio of ad requests that resulted in a click.
    | MatchedAdRequestsCtr
      -- ^ @MATCHED_AD_REQUESTS_CTR@
      -- Ratio of clicks to matched requests.
    | ImpressionsCtr
      -- ^ @IMPRESSIONS_CTR@
      -- Ratio of IMPRESSIONS that resulted in a click.
    | IndividualAdImpressionsCtr
      -- ^ @INDIVIDUAL_AD_IMPRESSIONS_CTR@
      -- Ratio of individual ad impressions that resulted in a click.
    | ActiveViewMeasurability
      -- ^ @ACTIVE_VIEW_MEASURABILITY@
      -- Ratio of requests that were measurable for viewability.
    | ActiveViewViewability
      -- ^ @ACTIVE_VIEW_VIEWABILITY@
      -- Ratio of requests that were viewable.
    | ActiveViewTime
      -- ^ @ACTIVE_VIEW_TIME@
      -- Mean time an ad was displayed on screen.
    | EstimatedEarnings
      -- ^ @ESTIMATED_EARNINGS@
      -- Estimated earnings of the publisher. Note that earnings up to yesterday
      -- are accurate, more recent earnings are estimated due to the possibility
      -- of spam, or exchange rate fluctuations.
    | PageViewsRpm
      -- ^ @PAGE_VIEWS_RPM@
      -- Revenue per thousand page views. This is calculated by dividing the
      -- estimated revenue by the number of page views multiplied by 1000.
    | AdRequestsRpm
      -- ^ @AD_REQUESTS_RPM@
      -- Revenue per thousand ad requests. This is calculated by dividing
      -- estimated revenue by the number of ad requests multiplied by 1000.
    | MatchedAdRequestsRpm
      -- ^ @MATCHED_AD_REQUESTS_RPM@
      -- Revenue per thousand matched ad requests. This is calculated by dividing
      -- estimated revenue by the number of matched ad requests multiplied by
      -- 1000.
    | ImpressionsRpm
      -- ^ @IMPRESSIONS_RPM@
      -- Revenue per thousand ad impressions. This is calculated by dividing
      -- estimated revenue by the number of ad impressions multiplied by 1000.
    | IndividualAdImpressionsRpm
      -- ^ @INDIVIDUAL_AD_IMPRESSIONS_RPM@
      -- Revenue per thousand individual ad impressions. This is calculated by
      -- dividing estimated revenue by the number of individual ad impressions
      -- multiplied by 1000.
    | CostPerClick
      -- ^ @COST_PER_CLICK@
      -- Amount the publisher earns each time a user clicks on an ad. CPC is
      -- calculated by dividing the estimated revenue by the number of clicks
      -- received.
    | AdsPerImpression
      -- ^ @ADS_PER_IMPRESSION@
      -- Number of ad views per impression.
    | TotalEarnings
      -- ^ @TOTAL_EARNINGS@
      -- Total earnings.
    | WebsearchResultPages
      -- ^ @WEBSEARCH_RESULT_PAGES@
      -- Number of results pages.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable AccountsReportsGenerateCSVMetrics

instance FromHttpApiData AccountsReportsGenerateCSVMetrics where
    parseQueryParam = \case
        "METRIC_UNSPECIFIED" -> Right MetricUnspecified
        "PAGE_VIEWS" -> Right PageViews
        "AD_REQUESTS" -> Right AdRequests
        "MATCHED_AD_REQUESTS" -> Right MatchedAdRequests
        "TOTAL_IMPRESSIONS" -> Right TotalImpressions
        "IMPRESSIONS" -> Right Impressions
        "INDIVIDUAL_AD_IMPRESSIONS" -> Right IndividualAdImpressions
        "CLICKS" -> Right Clicks
        "PAGE_VIEWS_SPAM_RATIO" -> Right PageViewsSpamRatio
        "AD_REQUESTS_SPAM_RATIO" -> Right AdRequestsSpamRatio
        "MATCHED_AD_REQUESTS_SPAM_RATIO" -> Right MatchedAdRequestsSpamRatio
        "IMPRESSIONS_SPAM_RATIO" -> Right ImpressionsSpamRatio
        "INDIVIDUAL_AD_IMPRESSIONS_SPAM_RATIO" -> Right IndividualAdImpressionsSpamRatio
        "CLICKS_SPAM_RATIO" -> Right ClicksSpamRatio
        "AD_REQUESTS_COVERAGE" -> Right AdRequestsCoverage
        "PAGE_VIEWS_CTR" -> Right PageViewsCtr
        "AD_REQUESTS_CTR" -> Right AdRequestsCtr
        "MATCHED_AD_REQUESTS_CTR" -> Right MatchedAdRequestsCtr
        "IMPRESSIONS_CTR" -> Right ImpressionsCtr
        "INDIVIDUAL_AD_IMPRESSIONS_CTR" -> Right IndividualAdImpressionsCtr
        "ACTIVE_VIEW_MEASURABILITY" -> Right ActiveViewMeasurability
        "ACTIVE_VIEW_VIEWABILITY" -> Right ActiveViewViewability
        "ACTIVE_VIEW_TIME" -> Right ActiveViewTime
        "ESTIMATED_EARNINGS" -> Right EstimatedEarnings
        "PAGE_VIEWS_RPM" -> Right PageViewsRpm
        "AD_REQUESTS_RPM" -> Right AdRequestsRpm
        "MATCHED_AD_REQUESTS_RPM" -> Right MatchedAdRequestsRpm
        "IMPRESSIONS_RPM" -> Right ImpressionsRpm
        "INDIVIDUAL_AD_IMPRESSIONS_RPM" -> Right IndividualAdImpressionsRpm
        "COST_PER_CLICK" -> Right CostPerClick
        "ADS_PER_IMPRESSION" -> Right AdsPerImpression
        "TOTAL_EARNINGS" -> Right TotalEarnings
        "WEBSEARCH_RESULT_PAGES" -> Right WebsearchResultPages
        x -> Left ("Unable to parse AccountsReportsGenerateCSVMetrics from: " <> x)

instance ToHttpApiData AccountsReportsGenerateCSVMetrics where
    toQueryParam = \case
        MetricUnspecified -> "METRIC_UNSPECIFIED"
        PageViews -> "PAGE_VIEWS"
        AdRequests -> "AD_REQUESTS"
        MatchedAdRequests -> "MATCHED_AD_REQUESTS"
        TotalImpressions -> "TOTAL_IMPRESSIONS"
        Impressions -> "IMPRESSIONS"
        IndividualAdImpressions -> "INDIVIDUAL_AD_IMPRESSIONS"
        Clicks -> "CLICKS"
        PageViewsSpamRatio -> "PAGE_VIEWS_SPAM_RATIO"
        AdRequestsSpamRatio -> "AD_REQUESTS_SPAM_RATIO"
        MatchedAdRequestsSpamRatio -> "MATCHED_AD_REQUESTS_SPAM_RATIO"
        ImpressionsSpamRatio -> "IMPRESSIONS_SPAM_RATIO"
        IndividualAdImpressionsSpamRatio -> "INDIVIDUAL_AD_IMPRESSIONS_SPAM_RATIO"
        ClicksSpamRatio -> "CLICKS_SPAM_RATIO"
        AdRequestsCoverage -> "AD_REQUESTS_COVERAGE"
        PageViewsCtr -> "PAGE_VIEWS_CTR"
        AdRequestsCtr -> "AD_REQUESTS_CTR"
        MatchedAdRequestsCtr -> "MATCHED_AD_REQUESTS_CTR"
        ImpressionsCtr -> "IMPRESSIONS_CTR"
        IndividualAdImpressionsCtr -> "INDIVIDUAL_AD_IMPRESSIONS_CTR"
        ActiveViewMeasurability -> "ACTIVE_VIEW_MEASURABILITY"
        ActiveViewViewability -> "ACTIVE_VIEW_VIEWABILITY"
        ActiveViewTime -> "ACTIVE_VIEW_TIME"
        EstimatedEarnings -> "ESTIMATED_EARNINGS"
        PageViewsRpm -> "PAGE_VIEWS_RPM"
        AdRequestsRpm -> "AD_REQUESTS_RPM"
        MatchedAdRequestsRpm -> "MATCHED_AD_REQUESTS_RPM"
        ImpressionsRpm -> "IMPRESSIONS_RPM"
        IndividualAdImpressionsRpm -> "INDIVIDUAL_AD_IMPRESSIONS_RPM"
        CostPerClick -> "COST_PER_CLICK"
        AdsPerImpression -> "ADS_PER_IMPRESSION"
        TotalEarnings -> "TOTAL_EARNINGS"
        WebsearchResultPages -> "WEBSEARCH_RESULT_PAGES"

instance FromJSON AccountsReportsGenerateCSVMetrics where
    parseJSON = parseJSONText "AccountsReportsGenerateCSVMetrics"

instance ToJSON AccountsReportsGenerateCSVMetrics where
    toJSON = toJSONText

-- | Date range of the report, if unset the range will be considered CUSTOM.
data AccountsReportsGenerateCSVDateRange
    = ARGCDRReportingDateRangeUnspecified
      -- ^ @REPORTING_DATE_RANGE_UNSPECIFIED@
      -- Unspecified date range.
    | ARGCDRCustom
      -- ^ @CUSTOM@
      -- A custom date range specified using the \`start_date\` and \`end_date\`
      -- fields. This is the default if no ReportingDateRange is provided.
    | ARGCDRToday
      -- ^ @TODAY@
      -- Current day.
    | ARGCDRYesterday
      -- ^ @YESTERDAY@
      -- Yesterday.
    | ARGCDRMonthToDate
      -- ^ @MONTH_TO_DATE@
      -- From the start of the current month to the current day. e.g. if the
      -- current date is 2020-03-12 then the range will be [2020-03-01,
      -- 2020-03-12].
    | ARGCDRYearToDate
      -- ^ @YEAR_TO_DATE@
      -- From the start of the current year to the current day. e.g. if the
      -- current date is 2020-03-12 then the range will be [2020-01-01,
      -- 2020-03-12].
    | ARGCDRLast7Days
      -- ^ @LAST_7_DAYS@
      -- Last 7 days, excluding current day.
    | ARGCDRLast30Days
      -- ^ @LAST_30_DAYS@
      -- Last 30 days, excluding current day.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable AccountsReportsGenerateCSVDateRange

instance FromHttpApiData AccountsReportsGenerateCSVDateRange where
    parseQueryParam = \case
        "REPORTING_DATE_RANGE_UNSPECIFIED" -> Right ARGCDRReportingDateRangeUnspecified
        "CUSTOM" -> Right ARGCDRCustom
        "TODAY" -> Right ARGCDRToday
        "YESTERDAY" -> Right ARGCDRYesterday
        "MONTH_TO_DATE" -> Right ARGCDRMonthToDate
        "YEAR_TO_DATE" -> Right ARGCDRYearToDate
        "LAST_7_DAYS" -> Right ARGCDRLast7Days
        "LAST_30_DAYS" -> Right ARGCDRLast30Days
        x -> Left ("Unable to parse AccountsReportsGenerateCSVDateRange from: " <> x)

instance ToHttpApiData AccountsReportsGenerateCSVDateRange where
    toQueryParam = \case
        ARGCDRReportingDateRangeUnspecified -> "REPORTING_DATE_RANGE_UNSPECIFIED"
        ARGCDRCustom -> "CUSTOM"
        ARGCDRToday -> "TODAY"
        ARGCDRYesterday -> "YESTERDAY"
        ARGCDRMonthToDate -> "MONTH_TO_DATE"
        ARGCDRYearToDate -> "YEAR_TO_DATE"
        ARGCDRLast7Days -> "LAST_7_DAYS"
        ARGCDRLast30Days -> "LAST_30_DAYS"

instance FromJSON AccountsReportsGenerateCSVDateRange where
    parseJSON = parseJSONText "AccountsReportsGenerateCSVDateRange"

instance ToJSON AccountsReportsGenerateCSVDateRange where
    toJSON = toJSONText

-- | State of the ad unit.
data AdUnitState
    = AUSStateUnspecified
      -- ^ @STATE_UNSPECIFIED@
      -- State unspecified.
    | AUSActive
      -- ^ @ACTIVE@
      -- Ad unit has been activated by the user and can serve ads.
    | AUSArchived
      -- ^ @ARCHIVED@
      -- Ad unit has been archived by the user and can no longer serve ads.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable AdUnitState

instance FromHttpApiData AdUnitState where
    parseQueryParam = \case
        "STATE_UNSPECIFIED" -> Right AUSStateUnspecified
        "ACTIVE" -> Right AUSActive
        "ARCHIVED" -> Right AUSArchived
        x -> Left ("Unable to parse AdUnitState from: " <> x)

instance ToHttpApiData AdUnitState where
    toQueryParam = \case
        AUSStateUnspecified -> "STATE_UNSPECIFIED"
        AUSActive -> "ACTIVE"
        AUSArchived -> "ARCHIVED"

instance FromJSON AdUnitState where
    parseJSON = parseJSONText "AdUnitState"

instance ToJSON AdUnitState where
    toJSON = toJSONText

-- | Date range of the report, if unset the range will be considered CUSTOM.
data AccountsReportsGenerateDateRange
    = ARGDRReportingDateRangeUnspecified
      -- ^ @REPORTING_DATE_RANGE_UNSPECIFIED@
      -- Unspecified date range.
    | ARGDRCustom
      -- ^ @CUSTOM@
      -- A custom date range specified using the \`start_date\` and \`end_date\`
      -- fields. This is the default if no ReportingDateRange is provided.
    | ARGDRToday
      -- ^ @TODAY@
      -- Current day.
    | ARGDRYesterday
      -- ^ @YESTERDAY@
      -- Yesterday.
    | ARGDRMonthToDate
      -- ^ @MONTH_TO_DATE@
      -- From the start of the current month to the current day. e.g. if the
      -- current date is 2020-03-12 then the range will be [2020-03-01,
      -- 2020-03-12].
    | ARGDRYearToDate
      -- ^ @YEAR_TO_DATE@
      -- From the start of the current year to the current day. e.g. if the
      -- current date is 2020-03-12 then the range will be [2020-01-01,
      -- 2020-03-12].
    | ARGDRLast7Days
      -- ^ @LAST_7_DAYS@
      -- Last 7 days, excluding current day.
    | ARGDRLast30Days
      -- ^ @LAST_30_DAYS@
      -- Last 30 days, excluding current day.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable AccountsReportsGenerateDateRange

instance FromHttpApiData AccountsReportsGenerateDateRange where
    parseQueryParam = \case
        "REPORTING_DATE_RANGE_UNSPECIFIED" -> Right ARGDRReportingDateRangeUnspecified
        "CUSTOM" -> Right ARGDRCustom
        "TODAY" -> Right ARGDRToday
        "YESTERDAY" -> Right ARGDRYesterday
        "MONTH_TO_DATE" -> Right ARGDRMonthToDate
        "YEAR_TO_DATE" -> Right ARGDRYearToDate
        "LAST_7_DAYS" -> Right ARGDRLast7Days
        "LAST_30_DAYS" -> Right ARGDRLast30Days
        x -> Left ("Unable to parse AccountsReportsGenerateDateRange from: " <> x)

instance ToHttpApiData AccountsReportsGenerateDateRange where
    toQueryParam = \case
        ARGDRReportingDateRangeUnspecified -> "REPORTING_DATE_RANGE_UNSPECIFIED"
        ARGDRCustom -> "CUSTOM"
        ARGDRToday -> "TODAY"
        ARGDRYesterday -> "YESTERDAY"
        ARGDRMonthToDate -> "MONTH_TO_DATE"
        ARGDRYearToDate -> "YEAR_TO_DATE"
        ARGDRLast7Days -> "LAST_7_DAYS"
        ARGDRLast30Days -> "LAST_30_DAYS"

instance FromJSON AccountsReportsGenerateDateRange where
    parseJSON = parseJSONText "AccountsReportsGenerateDateRange"

instance ToJSON AccountsReportsGenerateDateRange where
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

-- | Output only. Severity of this alert.
data AlertSeverity
    = SeverityUnspecified
      -- ^ @SEVERITY_UNSPECIFIED@
      -- Unspecified severity.
    | Info
      -- ^ @INFO@
      -- Info.
    | Warning
      -- ^ @WARNING@
      -- Warning.
    | Severe
      -- ^ @SEVERE@
      -- Severe.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable AlertSeverity

instance FromHttpApiData AlertSeverity where
    parseQueryParam = \case
        "SEVERITY_UNSPECIFIED" -> Right SeverityUnspecified
        "INFO" -> Right Info
        "WARNING" -> Right Warning
        "SEVERE" -> Right Severe
        x -> Left ("Unable to parse AlertSeverity from: " <> x)

instance ToHttpApiData AlertSeverity where
    toQueryParam = \case
        SeverityUnspecified -> "SEVERITY_UNSPECIFIED"
        Info -> "INFO"
        Warning -> "WARNING"
        Severe -> "SEVERE"

instance FromJSON AlertSeverity where
    parseJSON = parseJSONText "AlertSeverity"

instance ToJSON AlertSeverity where
    toJSON = toJSONText

-- | Required. Reporting metrics.
data AccountsReportsGenerateMetrics
    = ARGMMetricUnspecified
      -- ^ @METRIC_UNSPECIFIED@
      -- Unspecified metric.
    | ARGMPageViews
      -- ^ @PAGE_VIEWS@
      -- Number of page views.
    | ARGMAdRequests
      -- ^ @AD_REQUESTS@
      -- Number of ad units that requested ads (for content ads) or search
      -- queries (for search ads). An ad request may result in zero, one, or
      -- multiple individual ad impressions depending on the size of the ad unit
      -- and whether any ads were available.
    | ARGMMatchedAdRequests
      -- ^ @MATCHED_AD_REQUESTS@
      -- Requests that returned at least one ad.
    | ARGMTotalImpressions
      -- ^ @TOTAL_IMPRESSIONS@
      -- Impressions. An impression is counted for each ad request where at least
      -- one ad has been downloaded to the user’s device and has begun to load.
      -- It is the number of ad units (for content ads) or search queries (for
      -- search ads) that showed ads.
    | ARGMImpressions
      -- ^ @IMPRESSIONS@
      -- Impressions. An impression is counted for each ad request where at least
      -- one ad has been downloaded to the user’s device and has begun to load.
      -- It is the number of ad units (for content ads) or search queries (for
      -- search ads) that showed ads.
    | ARGMIndividualAdImpressions
      -- ^ @INDIVIDUAL_AD_IMPRESSIONS@
      -- Ads shown. Different ad formats will display varying numbers of ads. For
      -- example, a vertical banner may consist of 2 or more ads. Also, the
      -- number of ads in an ad unit may vary depending on whether the ad unit is
      -- displaying standard text ads, expanded text ads or image ads.
    | ARGMClicks
      -- ^ @CLICKS@
      -- Number of times a user clicked on a standard content ad.
    | ARGMPageViewsSpamRatio
      -- ^ @PAGE_VIEWS_SPAM_RATIO@
      -- Fraction of page views considered to be spam. Only available to premium
      -- accounts.
    | ARGMAdRequestsSpamRatio
      -- ^ @AD_REQUESTS_SPAM_RATIO@
      -- Fraction of ad requests considered to be spam. Only available to premium
      -- accounts.
    | ARGMMatchedAdRequestsSpamRatio
      -- ^ @MATCHED_AD_REQUESTS_SPAM_RATIO@
      -- Fraction of ad requests that returned ads considered to be spam. Only
      -- available to premium accounts.
    | ARGMImpressionsSpamRatio
      -- ^ @IMPRESSIONS_SPAM_RATIO@
      -- Fraction of impressions considered to be spam. Only available to premium
      -- accounts.
    | ARGMIndividualAdImpressionsSpamRatio
      -- ^ @INDIVIDUAL_AD_IMPRESSIONS_SPAM_RATIO@
      -- Fraction of ad impressions considered to be spam. Only available to
      -- premium accounts.
    | ARGMClicksSpamRatio
      -- ^ @CLICKS_SPAM_RATIO@
      -- Fraction of clicks considered to be spam. Only available to premium
      -- accounts.
    | ARGMAdRequestsCoverage
      -- ^ @AD_REQUESTS_COVERAGE@
      -- Ratio of requested ad units or queries to the number returned to the
      -- site.
    | ARGMPageViewsCtr
      -- ^ @PAGE_VIEWS_CTR@
      -- Ratio of individual page views that resulted in a click.
    | ARGMAdRequestsCtr
      -- ^ @AD_REQUESTS_CTR@
      -- Ratio of ad requests that resulted in a click.
    | ARGMMatchedAdRequestsCtr
      -- ^ @MATCHED_AD_REQUESTS_CTR@
      -- Ratio of clicks to matched requests.
    | ARGMImpressionsCtr
      -- ^ @IMPRESSIONS_CTR@
      -- Ratio of IMPRESSIONS that resulted in a click.
    | ARGMIndividualAdImpressionsCtr
      -- ^ @INDIVIDUAL_AD_IMPRESSIONS_CTR@
      -- Ratio of individual ad impressions that resulted in a click.
    | ARGMActiveViewMeasurability
      -- ^ @ACTIVE_VIEW_MEASURABILITY@
      -- Ratio of requests that were measurable for viewability.
    | ARGMActiveViewViewability
      -- ^ @ACTIVE_VIEW_VIEWABILITY@
      -- Ratio of requests that were viewable.
    | ARGMActiveViewTime
      -- ^ @ACTIVE_VIEW_TIME@
      -- Mean time an ad was displayed on screen.
    | ARGMEstimatedEarnings
      -- ^ @ESTIMATED_EARNINGS@
      -- Estimated earnings of the publisher. Note that earnings up to yesterday
      -- are accurate, more recent earnings are estimated due to the possibility
      -- of spam, or exchange rate fluctuations.
    | ARGMPageViewsRpm
      -- ^ @PAGE_VIEWS_RPM@
      -- Revenue per thousand page views. This is calculated by dividing the
      -- estimated revenue by the number of page views multiplied by 1000.
    | ARGMAdRequestsRpm
      -- ^ @AD_REQUESTS_RPM@
      -- Revenue per thousand ad requests. This is calculated by dividing
      -- estimated revenue by the number of ad requests multiplied by 1000.
    | ARGMMatchedAdRequestsRpm
      -- ^ @MATCHED_AD_REQUESTS_RPM@
      -- Revenue per thousand matched ad requests. This is calculated by dividing
      -- estimated revenue by the number of matched ad requests multiplied by
      -- 1000.
    | ARGMImpressionsRpm
      -- ^ @IMPRESSIONS_RPM@
      -- Revenue per thousand ad impressions. This is calculated by dividing
      -- estimated revenue by the number of ad impressions multiplied by 1000.
    | ARGMIndividualAdImpressionsRpm
      -- ^ @INDIVIDUAL_AD_IMPRESSIONS_RPM@
      -- Revenue per thousand individual ad impressions. This is calculated by
      -- dividing estimated revenue by the number of individual ad impressions
      -- multiplied by 1000.
    | ARGMCostPerClick
      -- ^ @COST_PER_CLICK@
      -- Amount the publisher earns each time a user clicks on an ad. CPC is
      -- calculated by dividing the estimated revenue by the number of clicks
      -- received.
    | ARGMAdsPerImpression
      -- ^ @ADS_PER_IMPRESSION@
      -- Number of ad views per impression.
    | ARGMTotalEarnings
      -- ^ @TOTAL_EARNINGS@
      -- Total earnings.
    | ARGMWebsearchResultPages
      -- ^ @WEBSEARCH_RESULT_PAGES@
      -- Number of results pages.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable AccountsReportsGenerateMetrics

instance FromHttpApiData AccountsReportsGenerateMetrics where
    parseQueryParam = \case
        "METRIC_UNSPECIFIED" -> Right ARGMMetricUnspecified
        "PAGE_VIEWS" -> Right ARGMPageViews
        "AD_REQUESTS" -> Right ARGMAdRequests
        "MATCHED_AD_REQUESTS" -> Right ARGMMatchedAdRequests
        "TOTAL_IMPRESSIONS" -> Right ARGMTotalImpressions
        "IMPRESSIONS" -> Right ARGMImpressions
        "INDIVIDUAL_AD_IMPRESSIONS" -> Right ARGMIndividualAdImpressions
        "CLICKS" -> Right ARGMClicks
        "PAGE_VIEWS_SPAM_RATIO" -> Right ARGMPageViewsSpamRatio
        "AD_REQUESTS_SPAM_RATIO" -> Right ARGMAdRequestsSpamRatio
        "MATCHED_AD_REQUESTS_SPAM_RATIO" -> Right ARGMMatchedAdRequestsSpamRatio
        "IMPRESSIONS_SPAM_RATIO" -> Right ARGMImpressionsSpamRatio
        "INDIVIDUAL_AD_IMPRESSIONS_SPAM_RATIO" -> Right ARGMIndividualAdImpressionsSpamRatio
        "CLICKS_SPAM_RATIO" -> Right ARGMClicksSpamRatio
        "AD_REQUESTS_COVERAGE" -> Right ARGMAdRequestsCoverage
        "PAGE_VIEWS_CTR" -> Right ARGMPageViewsCtr
        "AD_REQUESTS_CTR" -> Right ARGMAdRequestsCtr
        "MATCHED_AD_REQUESTS_CTR" -> Right ARGMMatchedAdRequestsCtr
        "IMPRESSIONS_CTR" -> Right ARGMImpressionsCtr
        "INDIVIDUAL_AD_IMPRESSIONS_CTR" -> Right ARGMIndividualAdImpressionsCtr
        "ACTIVE_VIEW_MEASURABILITY" -> Right ARGMActiveViewMeasurability
        "ACTIVE_VIEW_VIEWABILITY" -> Right ARGMActiveViewViewability
        "ACTIVE_VIEW_TIME" -> Right ARGMActiveViewTime
        "ESTIMATED_EARNINGS" -> Right ARGMEstimatedEarnings
        "PAGE_VIEWS_RPM" -> Right ARGMPageViewsRpm
        "AD_REQUESTS_RPM" -> Right ARGMAdRequestsRpm
        "MATCHED_AD_REQUESTS_RPM" -> Right ARGMMatchedAdRequestsRpm
        "IMPRESSIONS_RPM" -> Right ARGMImpressionsRpm
        "INDIVIDUAL_AD_IMPRESSIONS_RPM" -> Right ARGMIndividualAdImpressionsRpm
        "COST_PER_CLICK" -> Right ARGMCostPerClick
        "ADS_PER_IMPRESSION" -> Right ARGMAdsPerImpression
        "TOTAL_EARNINGS" -> Right ARGMTotalEarnings
        "WEBSEARCH_RESULT_PAGES" -> Right ARGMWebsearchResultPages
        x -> Left ("Unable to parse AccountsReportsGenerateMetrics from: " <> x)

instance ToHttpApiData AccountsReportsGenerateMetrics where
    toQueryParam = \case
        ARGMMetricUnspecified -> "METRIC_UNSPECIFIED"
        ARGMPageViews -> "PAGE_VIEWS"
        ARGMAdRequests -> "AD_REQUESTS"
        ARGMMatchedAdRequests -> "MATCHED_AD_REQUESTS"
        ARGMTotalImpressions -> "TOTAL_IMPRESSIONS"
        ARGMImpressions -> "IMPRESSIONS"
        ARGMIndividualAdImpressions -> "INDIVIDUAL_AD_IMPRESSIONS"
        ARGMClicks -> "CLICKS"
        ARGMPageViewsSpamRatio -> "PAGE_VIEWS_SPAM_RATIO"
        ARGMAdRequestsSpamRatio -> "AD_REQUESTS_SPAM_RATIO"
        ARGMMatchedAdRequestsSpamRatio -> "MATCHED_AD_REQUESTS_SPAM_RATIO"
        ARGMImpressionsSpamRatio -> "IMPRESSIONS_SPAM_RATIO"
        ARGMIndividualAdImpressionsSpamRatio -> "INDIVIDUAL_AD_IMPRESSIONS_SPAM_RATIO"
        ARGMClicksSpamRatio -> "CLICKS_SPAM_RATIO"
        ARGMAdRequestsCoverage -> "AD_REQUESTS_COVERAGE"
        ARGMPageViewsCtr -> "PAGE_VIEWS_CTR"
        ARGMAdRequestsCtr -> "AD_REQUESTS_CTR"
        ARGMMatchedAdRequestsCtr -> "MATCHED_AD_REQUESTS_CTR"
        ARGMImpressionsCtr -> "IMPRESSIONS_CTR"
        ARGMIndividualAdImpressionsCtr -> "INDIVIDUAL_AD_IMPRESSIONS_CTR"
        ARGMActiveViewMeasurability -> "ACTIVE_VIEW_MEASURABILITY"
        ARGMActiveViewViewability -> "ACTIVE_VIEW_VIEWABILITY"
        ARGMActiveViewTime -> "ACTIVE_VIEW_TIME"
        ARGMEstimatedEarnings -> "ESTIMATED_EARNINGS"
        ARGMPageViewsRpm -> "PAGE_VIEWS_RPM"
        ARGMAdRequestsRpm -> "AD_REQUESTS_RPM"
        ARGMMatchedAdRequestsRpm -> "MATCHED_AD_REQUESTS_RPM"
        ARGMImpressionsRpm -> "IMPRESSIONS_RPM"
        ARGMIndividualAdImpressionsRpm -> "INDIVIDUAL_AD_IMPRESSIONS_RPM"
        ARGMCostPerClick -> "COST_PER_CLICK"
        ARGMAdsPerImpression -> "ADS_PER_IMPRESSION"
        ARGMTotalEarnings -> "TOTAL_EARNINGS"
        ARGMWebsearchResultPages -> "WEBSEARCH_RESULT_PAGES"

instance FromJSON AccountsReportsGenerateMetrics where
    parseJSON = parseJSONText "AccountsReportsGenerateMetrics"

instance ToJSON AccountsReportsGenerateMetrics where
    toJSON = toJSONText

-- | Dimensions to base the report on.
data AccountsReportsGenerateCSVDimensions
    = ARGCDDimensionUnspecified
      -- ^ @DIMENSION_UNSPECIFIED@
      -- Unspecified dimension.
    | ARGCDDate
      -- ^ @DATE@
      -- Date dimension in YYYY-MM-DD format (e.g. \"2010-02-10\").
    | ARGCDWeek
      -- ^ @WEEK@
      -- Week dimension in YYYY-MM-DD format, representing the first day of each
      -- week (e.g. \"2010-02-08\"). The first day of the week is determined by
      -- the language_code specified in a report generation request (so e.g. this
      -- would be a Monday for \"en-GB\" or \"es\", but a Sunday for \"en\" or
      -- \"fr-CA\").
    | ARGCDMonth
      -- ^ @MONTH@
      -- Month dimension in YYYY-MM format (e.g. \"2010-02\").
    | ARGCDAccountName
      -- ^ @ACCOUNT_NAME@
      -- Account name. The members of this dimension match the values from
      -- Account.display_name.
    | ARGCDAdClientId
      -- ^ @AD_CLIENT_ID@
      -- Unique ID of an ad client. The members of this dimension match the
      -- values from AdClient.reporting_dimension_id.
    | ARGCDProductName
      -- ^ @PRODUCT_NAME@
      -- Localized product name (e.g. \"AdSense for Content\", \"AdSense for
      -- Search\").
    | ARGCDProductCode
      -- ^ @PRODUCT_CODE@
      -- Product code (e.g. \"AFC\", \"AFS\"). The members of this dimension
      -- match the values from AdClient.product_code.
    | ARGCDAdUnitName
      -- ^ @AD_UNIT_NAME@
      -- Ad unit name (within which an ad was served). The members of this
      -- dimension match the values from AdUnit.display_name.
    | ARGCDAdUnitId
      -- ^ @AD_UNIT_ID@
      -- Unique ID of an ad unit (within which an ad was served). The members of
      -- this dimension match the values from AdUnit.reporting_dimension_id.
    | ARGCDAdUnitSizeName
      -- ^ @AD_UNIT_SIZE_NAME@
      -- Localized size of an ad unit (e.g. \"728x90\", \"Responsive\").
    | ARGCDAdUnitSizeCode
      -- ^ @AD_UNIT_SIZE_CODE@
      -- The size code of an ad unit (e.g. \"728x90\", \"responsive\").
    | ARGCDCustomChannelName
      -- ^ @CUSTOM_CHANNEL_NAME@
      -- Custom channel name. The members of this dimension match the values from
      -- CustomChannel.display_name.
    | ARGCDCustomChannelId
      -- ^ @CUSTOM_CHANNEL_ID@
      -- Unique ID of a custom channel. The members of this dimension match the
      -- values from CustomChannel.reporting_dimension_id.
    | ARGCDOwnedSiteDomainName
      -- ^ @OWNED_SITE_DOMAIN_NAME@
      -- Domain name of a verified site (e.g. \"example.com\"). The members of
      -- this dimension match the values from Site.domain.
    | ARGCDOwnedSiteId
      -- ^ @OWNED_SITE_ID@
      -- Unique ID of a verified site. The members of this dimension match the
      -- values from Site.reporting_dimension_id.
    | ARGCDURLChannelName
      -- ^ @URL_CHANNEL_NAME@
      -- Name of a URL channel. The members of this dimension match the values
      -- from UrlChannel.uri_pattern.
    | ARGCDURLChannelId
      -- ^ @URL_CHANNEL_ID@
      -- Unique ID of a URL channel. The members of this dimension match the
      -- values from UrlChannel.reporting_dimension_id.
    | ARGCDBuyerNetworkName
      -- ^ @BUYER_NETWORK_NAME@
      -- Name of an ad network that returned the winning ads for an ad request
      -- (e.g. \"Google AdWords\"). Note that unlike other \"NAME\" dimensions,
      -- the members of this dimensions are not localized.
    | ARGCDBuyerNetworkId
      -- ^ @BUYER_NETWORK_ID@
      -- Unique (opaque) ID of an ad network that returned the winning ads for an
      -- ad request.
    | ARGCDBidTypeName
      -- ^ @BID_TYPE_NAME@
      -- Localized bid type name (e.g. \"CPC bids\", \"CPM bids\") for a served
      -- ad.
    | ARGCDBidTypeCode
      -- ^ @BID_TYPE_CODE@
      -- Type of a bid (e.g. \"cpc\", \"cpm\") for a served ad.
    | ARGCDCreativeSizeName
      -- ^ @CREATIVE_SIZE_NAME@
      -- Localized creative size name (e.g. \"728x90\", \"Dynamic\") of a served
      -- ad.
    | ARGCDCreativeSizeCode
      -- ^ @CREATIVE_SIZE_CODE@
      -- Creative size code (e.g. \"728x90\", \"dynamic\") of a served ad.
    | ARGCDDomainName
      -- ^ @DOMAIN_NAME@
      -- Localized name of a host on which an ad was served, after IDNA decoding
      -- (e.g. \"www.google.com\", \"Web caches and other\", \"bücher.example\").
    | ARGCDDomainCode
      -- ^ @DOMAIN_CODE@
      -- Name of a host on which an ad was served (e.g. \"www.google.com\",
      -- \"webcaches\", \"xn--bcher-kva.example\").
    | ARGCDCountryName
      -- ^ @COUNTRY_NAME@
      -- Localized region name of a user viewing an ad (e.g. \"United States\",
      -- \"France\").
    | ARGCDCountryCode
      -- ^ @COUNTRY_CODE@
      -- CLDR region code of a user viewing an ad (e.g. \"US\", \"FR\").
    | ARGCDPlatformTypeName
      -- ^ @PLATFORM_TYPE_NAME@
      -- Localized platform type name (e.g. \"High-end mobile devices\",
      -- \"Desktop\").
    | ARGCDPlatformTypeCode
      -- ^ @PLATFORM_TYPE_CODE@
      -- Platform type code (e.g. \"HighEndMobile\", \"Desktop\").
    | ARGCDTargetingTypeName
      -- ^ @TARGETING_TYPE_NAME@
      -- Localized targeting type name (e.g. \"Contextual\", \"Personalized\",
      -- \"Run of Network\").
    | ARGCDTargetingTypeCode
      -- ^ @TARGETING_TYPE_CODE@
      -- Targeting type code (e.g. \"Keyword\", \"UserInterest\",
      -- \"RunOfNetwork\").
    | ARGCDContentPlatformName
      -- ^ @CONTENT_PLATFORM_NAME@
      -- Localized content platform name an ad request was made from (e.g.
      -- \"AMP\", \"Web\").
    | ARGCDContentPlatformCode
      -- ^ @CONTENT_PLATFORM_CODE@
      -- Content platform code an ad request was made from (e.g. \"AMP\",
      -- \"HTML\").
    | ARGCDAdPlacementName
      -- ^ @AD_PLACEMENT_NAME@
      -- Localized ad placement name (e.g. \"Ad unit\", \"Global settings\",
      -- \"Manual\").
    | ARGCDAdPlacementCode
      -- ^ @AD_PLACEMENT_CODE@
      -- Ad placement code (e.g. \"AD_UNIT\", \"ca-pub-123456:78910\",
      -- \"OTHER\").
    | ARGCDRequestedAdTypeName
      -- ^ @REQUESTED_AD_TYPE_NAME@
      -- Localized requested ad type name (e.g. \"Display\", \"Link unit\",
      -- \"Other\").
    | ARGCDRequestedAdTypeCode
      -- ^ @REQUESTED_AD_TYPE_CODE@
      -- Requested ad type code (e.g. \"IMAGE\", \"RADLINK\", \"OTHER\").
    | ARGCDServedAdTypeName
      -- ^ @SERVED_AD_TYPE_NAME@
      -- Localized served ad type name (e.g. \"Display\", \"Link unit\",
      -- \"Other\").
    | ARGCDServedAdTypeCode
      -- ^ @SERVED_AD_TYPE_CODE@
      -- Served ad type code (e.g. \"IMAGE\", \"RADLINK\", \"OTHER\").
    | ARGCDAdFormatName
      -- ^ @AD_FORMAT_NAME@
      -- Localized ad format name indicating the way an ad is shown to the users
      -- on your site (e.g. \"In-page\", \"Anchor\", \"Vignette\").
    | ARGCDAdFormatCode
      -- ^ @AD_FORMAT_CODE@
      -- Ad format code indicating the way an ad is shown to the users on your
      -- site (e.g. \"ON_PAGE\", \"ANCHOR\", \"INTERSTITIAL\").
    | ARGCDCustomSearchStyleName
      -- ^ @CUSTOM_SEARCH_STYLE_NAME@
      -- Custom search style name.
    | ARGCDCustomSearchStyleId
      -- ^ @CUSTOM_SEARCH_STYLE_ID@
      -- Custom search style id.
    | ARGCDDomainRegistrant
      -- ^ @DOMAIN_REGISTRANT@
      -- Domain registrants.
    | ARGCDWebsearchQueryString
      -- ^ @WEBSEARCH_QUERY_STRING@
      -- Query strings for web searches.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable AccountsReportsGenerateCSVDimensions

instance FromHttpApiData AccountsReportsGenerateCSVDimensions where
    parseQueryParam = \case
        "DIMENSION_UNSPECIFIED" -> Right ARGCDDimensionUnspecified
        "DATE" -> Right ARGCDDate
        "WEEK" -> Right ARGCDWeek
        "MONTH" -> Right ARGCDMonth
        "ACCOUNT_NAME" -> Right ARGCDAccountName
        "AD_CLIENT_ID" -> Right ARGCDAdClientId
        "PRODUCT_NAME" -> Right ARGCDProductName
        "PRODUCT_CODE" -> Right ARGCDProductCode
        "AD_UNIT_NAME" -> Right ARGCDAdUnitName
        "AD_UNIT_ID" -> Right ARGCDAdUnitId
        "AD_UNIT_SIZE_NAME" -> Right ARGCDAdUnitSizeName
        "AD_UNIT_SIZE_CODE" -> Right ARGCDAdUnitSizeCode
        "CUSTOM_CHANNEL_NAME" -> Right ARGCDCustomChannelName
        "CUSTOM_CHANNEL_ID" -> Right ARGCDCustomChannelId
        "OWNED_SITE_DOMAIN_NAME" -> Right ARGCDOwnedSiteDomainName
        "OWNED_SITE_ID" -> Right ARGCDOwnedSiteId
        "URL_CHANNEL_NAME" -> Right ARGCDURLChannelName
        "URL_CHANNEL_ID" -> Right ARGCDURLChannelId
        "BUYER_NETWORK_NAME" -> Right ARGCDBuyerNetworkName
        "BUYER_NETWORK_ID" -> Right ARGCDBuyerNetworkId
        "BID_TYPE_NAME" -> Right ARGCDBidTypeName
        "BID_TYPE_CODE" -> Right ARGCDBidTypeCode
        "CREATIVE_SIZE_NAME" -> Right ARGCDCreativeSizeName
        "CREATIVE_SIZE_CODE" -> Right ARGCDCreativeSizeCode
        "DOMAIN_NAME" -> Right ARGCDDomainName
        "DOMAIN_CODE" -> Right ARGCDDomainCode
        "COUNTRY_NAME" -> Right ARGCDCountryName
        "COUNTRY_CODE" -> Right ARGCDCountryCode
        "PLATFORM_TYPE_NAME" -> Right ARGCDPlatformTypeName
        "PLATFORM_TYPE_CODE" -> Right ARGCDPlatformTypeCode
        "TARGETING_TYPE_NAME" -> Right ARGCDTargetingTypeName
        "TARGETING_TYPE_CODE" -> Right ARGCDTargetingTypeCode
        "CONTENT_PLATFORM_NAME" -> Right ARGCDContentPlatformName
        "CONTENT_PLATFORM_CODE" -> Right ARGCDContentPlatformCode
        "AD_PLACEMENT_NAME" -> Right ARGCDAdPlacementName
        "AD_PLACEMENT_CODE" -> Right ARGCDAdPlacementCode
        "REQUESTED_AD_TYPE_NAME" -> Right ARGCDRequestedAdTypeName
        "REQUESTED_AD_TYPE_CODE" -> Right ARGCDRequestedAdTypeCode
        "SERVED_AD_TYPE_NAME" -> Right ARGCDServedAdTypeName
        "SERVED_AD_TYPE_CODE" -> Right ARGCDServedAdTypeCode
        "AD_FORMAT_NAME" -> Right ARGCDAdFormatName
        "AD_FORMAT_CODE" -> Right ARGCDAdFormatCode
        "CUSTOM_SEARCH_STYLE_NAME" -> Right ARGCDCustomSearchStyleName
        "CUSTOM_SEARCH_STYLE_ID" -> Right ARGCDCustomSearchStyleId
        "DOMAIN_REGISTRANT" -> Right ARGCDDomainRegistrant
        "WEBSEARCH_QUERY_STRING" -> Right ARGCDWebsearchQueryString
        x -> Left ("Unable to parse AccountsReportsGenerateCSVDimensions from: " <> x)

instance ToHttpApiData AccountsReportsGenerateCSVDimensions where
    toQueryParam = \case
        ARGCDDimensionUnspecified -> "DIMENSION_UNSPECIFIED"
        ARGCDDate -> "DATE"
        ARGCDWeek -> "WEEK"
        ARGCDMonth -> "MONTH"
        ARGCDAccountName -> "ACCOUNT_NAME"
        ARGCDAdClientId -> "AD_CLIENT_ID"
        ARGCDProductName -> "PRODUCT_NAME"
        ARGCDProductCode -> "PRODUCT_CODE"
        ARGCDAdUnitName -> "AD_UNIT_NAME"
        ARGCDAdUnitId -> "AD_UNIT_ID"
        ARGCDAdUnitSizeName -> "AD_UNIT_SIZE_NAME"
        ARGCDAdUnitSizeCode -> "AD_UNIT_SIZE_CODE"
        ARGCDCustomChannelName -> "CUSTOM_CHANNEL_NAME"
        ARGCDCustomChannelId -> "CUSTOM_CHANNEL_ID"
        ARGCDOwnedSiteDomainName -> "OWNED_SITE_DOMAIN_NAME"
        ARGCDOwnedSiteId -> "OWNED_SITE_ID"
        ARGCDURLChannelName -> "URL_CHANNEL_NAME"
        ARGCDURLChannelId -> "URL_CHANNEL_ID"
        ARGCDBuyerNetworkName -> "BUYER_NETWORK_NAME"
        ARGCDBuyerNetworkId -> "BUYER_NETWORK_ID"
        ARGCDBidTypeName -> "BID_TYPE_NAME"
        ARGCDBidTypeCode -> "BID_TYPE_CODE"
        ARGCDCreativeSizeName -> "CREATIVE_SIZE_NAME"
        ARGCDCreativeSizeCode -> "CREATIVE_SIZE_CODE"
        ARGCDDomainName -> "DOMAIN_NAME"
        ARGCDDomainCode -> "DOMAIN_CODE"
        ARGCDCountryName -> "COUNTRY_NAME"
        ARGCDCountryCode -> "COUNTRY_CODE"
        ARGCDPlatformTypeName -> "PLATFORM_TYPE_NAME"
        ARGCDPlatformTypeCode -> "PLATFORM_TYPE_CODE"
        ARGCDTargetingTypeName -> "TARGETING_TYPE_NAME"
        ARGCDTargetingTypeCode -> "TARGETING_TYPE_CODE"
        ARGCDContentPlatformName -> "CONTENT_PLATFORM_NAME"
        ARGCDContentPlatformCode -> "CONTENT_PLATFORM_CODE"
        ARGCDAdPlacementName -> "AD_PLACEMENT_NAME"
        ARGCDAdPlacementCode -> "AD_PLACEMENT_CODE"
        ARGCDRequestedAdTypeName -> "REQUESTED_AD_TYPE_NAME"
        ARGCDRequestedAdTypeCode -> "REQUESTED_AD_TYPE_CODE"
        ARGCDServedAdTypeName -> "SERVED_AD_TYPE_NAME"
        ARGCDServedAdTypeCode -> "SERVED_AD_TYPE_CODE"
        ARGCDAdFormatName -> "AD_FORMAT_NAME"
        ARGCDAdFormatCode -> "AD_FORMAT_CODE"
        ARGCDCustomSearchStyleName -> "CUSTOM_SEARCH_STYLE_NAME"
        ARGCDCustomSearchStyleId -> "CUSTOM_SEARCH_STYLE_ID"
        ARGCDDomainRegistrant -> "DOMAIN_REGISTRANT"
        ARGCDWebsearchQueryString -> "WEBSEARCH_QUERY_STRING"

instance FromJSON AccountsReportsGenerateCSVDimensions where
    parseJSON = parseJSONText "AccountsReportsGenerateCSVDimensions"

instance ToJSON AccountsReportsGenerateCSVDimensions where
    toJSON = toJSONText

-- | Timezone in which to generate the report. If unspecified, this defaults
-- to the account timezone. For more information, see [changing the time
-- zone of your
-- reports](https:\/\/support.google.com\/adsense\/answer\/9830725).
data AccountsReportsGenerateReportingTimeZone
    = ARGRTZReportingTimeZoneUnspecified
      -- ^ @REPORTING_TIME_ZONE_UNSPECIFIED@
      -- Unspecified timezone.
    | ARGRTZAccountTimeZone
      -- ^ @ACCOUNT_TIME_ZONE@
      -- Use the account timezone in the report.
    | ARGRTZGoogleTimeZone
      -- ^ @GOOGLE_TIME_ZONE@
      -- Use the Google timezone in the report (America\/Los_Angeles).
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable AccountsReportsGenerateReportingTimeZone

instance FromHttpApiData AccountsReportsGenerateReportingTimeZone where
    parseQueryParam = \case
        "REPORTING_TIME_ZONE_UNSPECIFIED" -> Right ARGRTZReportingTimeZoneUnspecified
        "ACCOUNT_TIME_ZONE" -> Right ARGRTZAccountTimeZone
        "GOOGLE_TIME_ZONE" -> Right ARGRTZGoogleTimeZone
        x -> Left ("Unable to parse AccountsReportsGenerateReportingTimeZone from: " <> x)

instance ToHttpApiData AccountsReportsGenerateReportingTimeZone where
    toQueryParam = \case
        ARGRTZReportingTimeZoneUnspecified -> "REPORTING_TIME_ZONE_UNSPECIFIED"
        ARGRTZAccountTimeZone -> "ACCOUNT_TIME_ZONE"
        ARGRTZGoogleTimeZone -> "GOOGLE_TIME_ZONE"

instance FromJSON AccountsReportsGenerateReportingTimeZone where
    parseJSON = parseJSONText "AccountsReportsGenerateReportingTimeZone"

instance ToJSON AccountsReportsGenerateReportingTimeZone where
    toJSON = toJSONText
