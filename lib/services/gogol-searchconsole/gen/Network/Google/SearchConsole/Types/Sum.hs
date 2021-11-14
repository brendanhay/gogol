{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.SearchConsole.Types.Sum
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.SearchConsole.Types.Sum where

import Network.Google.Prelude hiding (Bytes)

-- | The user\'s permission level for the site.
data WmxSitePermissionLevel
    = SitePermissionLevelUnspecified
      -- ^ @SITE_PERMISSION_LEVEL_UNSPECIFIED@
    | SiteOwner
      -- ^ @SITE_OWNER@
      -- Owner has complete access to the site.
    | SiteFullUser
      -- ^ @SITE_FULL_USER@
      -- Full users can access all data, and perform most of the operations.
    | SiteRestrictedUser
      -- ^ @SITE_RESTRICTED_USER@
      -- Restricted users can access most of the data, and perform some
      -- operations.
    | SiteUnverifiedUser
      -- ^ @SITE_UNVERIFIED_USER@
      -- Unverified user has no access to site\'s data.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable WmxSitePermissionLevel

instance FromHttpApiData WmxSitePermissionLevel where
    parseQueryParam = \case
        "SITE_PERMISSION_LEVEL_UNSPECIFIED" -> Right SitePermissionLevelUnspecified
        "SITE_OWNER" -> Right SiteOwner
        "SITE_FULL_USER" -> Right SiteFullUser
        "SITE_RESTRICTED_USER" -> Right SiteRestrictedUser
        "SITE_UNVERIFIED_USER" -> Right SiteUnverifiedUser
        x -> Left ("Unable to parse WmxSitePermissionLevel from: " <> x)

instance ToHttpApiData WmxSitePermissionLevel where
    toQueryParam = \case
        SitePermissionLevelUnspecified -> "SITE_PERMISSION_LEVEL_UNSPECIFIED"
        SiteOwner -> "SITE_OWNER"
        SiteFullUser -> "SITE_FULL_USER"
        SiteRestrictedUser -> "SITE_RESTRICTED_USER"
        SiteUnverifiedUser -> "SITE_UNVERIFIED_USER"

instance FromJSON WmxSitePermissionLevel where
    parseJSON = parseJSONText "WmxSitePermissionLevel"

instance ToJSON WmxSitePermissionLevel where
    toJSON = toJSONText

-- | The data state to be fetched, can be full or all, the latter including
-- full and partial data.
data SearchAnalyticsQueryRequestDataState
    = DataStateUnspecified
      -- ^ @DATA_STATE_UNSPECIFIED@
      -- Default value, should not be used.
    | Final
      -- ^ @FINAL@
      -- Include full final data only, without partial.
    | All
      -- ^ @ALL@
      -- Include all data, full and partial.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable SearchAnalyticsQueryRequestDataState

instance FromHttpApiData SearchAnalyticsQueryRequestDataState where
    parseQueryParam = \case
        "DATA_STATE_UNSPECIFIED" -> Right DataStateUnspecified
        "FINAL" -> Right Final
        "ALL" -> Right All
        x -> Left ("Unable to parse SearchAnalyticsQueryRequestDataState from: " <> x)

instance ToHttpApiData SearchAnalyticsQueryRequestDataState where
    toQueryParam = \case
        DataStateUnspecified -> "DATA_STATE_UNSPECIFIED"
        Final -> "FINAL"
        All -> "ALL"

instance FromJSON SearchAnalyticsQueryRequestDataState where
    parseJSON = parseJSONText "SearchAnalyticsQueryRequestDataState"

instance ToJSON SearchAnalyticsQueryRequestDataState where
    toJSON = toJSONText

-- | Test verdict, whether the page is mobile friendly or not.
data RunMobileFriendlyTestResponseMobileFriendliness
    = MobileFriendlyTestResultUnspecified
      -- ^ @MOBILE_FRIENDLY_TEST_RESULT_UNSPECIFIED@
      -- Internal error when running this test. Please try running the test
      -- again.
    | MobileFriendly
      -- ^ @MOBILE_FRIENDLY@
      -- The page is mobile friendly.
    | NotMobileFriendly
      -- ^ @NOT_MOBILE_FRIENDLY@
      -- The page is not mobile friendly.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable RunMobileFriendlyTestResponseMobileFriendliness

instance FromHttpApiData RunMobileFriendlyTestResponseMobileFriendliness where
    parseQueryParam = \case
        "MOBILE_FRIENDLY_TEST_RESULT_UNSPECIFIED" -> Right MobileFriendlyTestResultUnspecified
        "MOBILE_FRIENDLY" -> Right MobileFriendly
        "NOT_MOBILE_FRIENDLY" -> Right NotMobileFriendly
        x -> Left ("Unable to parse RunMobileFriendlyTestResponseMobileFriendliness from: " <> x)

instance ToHttpApiData RunMobileFriendlyTestResponseMobileFriendliness where
    toQueryParam = \case
        MobileFriendlyTestResultUnspecified -> "MOBILE_FRIENDLY_TEST_RESULT_UNSPECIFIED"
        MobileFriendly -> "MOBILE_FRIENDLY"
        NotMobileFriendly -> "NOT_MOBILE_FRIENDLY"

instance FromJSON RunMobileFriendlyTestResponseMobileFriendliness where
    parseJSON = parseJSONText "RunMobileFriendlyTestResponseMobileFriendliness"

instance ToJSON RunMobileFriendlyTestResponseMobileFriendliness where
    toJSON = toJSONText

-- | [Optional; Default is \\\"auto\\\"] How data is aggregated. If
-- aggregated by property, all data for the same property is aggregated; if
-- aggregated by page, all data is aggregated by canonical URI. If you
-- filter or group by page, choose AUTO; otherwise you can aggregate either
-- by property or by page, depending on how you want your data calculated;
-- see the help documentation to learn how data is calculated differently
-- by site versus by page. **Note:** If you group or filter by page, you
-- cannot aggregate by property. If you specify any value other than AUTO,
-- the aggregation type in the result will match the requested type, or if
-- you request an invalid type, you will get an error. The API will never
-- change your aggregation type if the requested type is invalid.
data SearchAnalyticsQueryRequestAggregationType
    = Auto
      -- ^ @AUTO@
    | ByProperty
      -- ^ @BY_PROPERTY@
    | ByPage
      -- ^ @BY_PAGE@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable SearchAnalyticsQueryRequestAggregationType

instance FromHttpApiData SearchAnalyticsQueryRequestAggregationType where
    parseQueryParam = \case
        "AUTO" -> Right Auto
        "BY_PROPERTY" -> Right ByProperty
        "BY_PAGE" -> Right ByPage
        x -> Left ("Unable to parse SearchAnalyticsQueryRequestAggregationType from: " <> x)

instance ToHttpApiData SearchAnalyticsQueryRequestAggregationType where
    toQueryParam = \case
        Auto -> "AUTO"
        ByProperty -> "BY_PROPERTY"
        ByPage -> "BY_PAGE"

instance FromJSON SearchAnalyticsQueryRequestAggregationType where
    parseJSON = parseJSONText "SearchAnalyticsQueryRequestAggregationType"

instance ToJSON SearchAnalyticsQueryRequestAggregationType where
    toJSON = toJSONText

-- | [Optional; Default is \\\"web\\\"] The search type to filter for.
data SearchAnalyticsQueryRequestSearchType
    = SAQRSTWeb
      -- ^ @WEB@
    | SAQRSTImage
      -- ^ @IMAGE@
    | SAQRSTVideo
      -- ^ @VIDEO@
    | SAQRSTNews
      -- ^ @NEWS@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable SearchAnalyticsQueryRequestSearchType

instance FromHttpApiData SearchAnalyticsQueryRequestSearchType where
    parseQueryParam = \case
        "WEB" -> Right SAQRSTWeb
        "IMAGE" -> Right SAQRSTImage
        "VIDEO" -> Right SAQRSTVideo
        "NEWS" -> Right SAQRSTNews
        x -> Left ("Unable to parse SearchAnalyticsQueryRequestSearchType from: " <> x)

instance ToHttpApiData SearchAnalyticsQueryRequestSearchType where
    toQueryParam = \case
        SAQRSTWeb -> "WEB"
        SAQRSTImage -> "IMAGE"
        SAQRSTVideo -> "VIDEO"
        SAQRSTNews -> "NEWS"

instance FromJSON SearchAnalyticsQueryRequestSearchType where
    parseJSON = parseJSONText "SearchAnalyticsQueryRequestSearchType"

instance ToJSON SearchAnalyticsQueryRequestSearchType where
    toJSON = toJSONText

-- | The type of the sitemap. For example: \`rssFeed\`.
data WmxSitemapType
    = NotSitemap
      -- ^ @NOT_SITEMAP@
    | URLList
      -- ^ @URL_LIST@
    | Sitemap
      -- ^ @SITEMAP@
    | RssFeed
      -- ^ @RSS_FEED@
    | AtomFeed
      -- ^ @ATOM_FEED@
    | PatternSitemap
      -- ^ @PATTERN_SITEMAP@
      -- Unsupported sitemap types.
    | Oceanfront
      -- ^ @OCEANFRONT@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable WmxSitemapType

instance FromHttpApiData WmxSitemapType where
    parseQueryParam = \case
        "NOT_SITEMAP" -> Right NotSitemap
        "URL_LIST" -> Right URLList
        "SITEMAP" -> Right Sitemap
        "RSS_FEED" -> Right RssFeed
        "ATOM_FEED" -> Right AtomFeed
        "PATTERN_SITEMAP" -> Right PatternSitemap
        "OCEANFRONT" -> Right Oceanfront
        x -> Left ("Unable to parse WmxSitemapType from: " <> x)

instance ToHttpApiData WmxSitemapType where
    toQueryParam = \case
        NotSitemap -> "NOT_SITEMAP"
        URLList -> "URL_LIST"
        Sitemap -> "SITEMAP"
        RssFeed -> "RSS_FEED"
        AtomFeed -> "ATOM_FEED"
        PatternSitemap -> "PATTERN_SITEMAP"
        Oceanfront -> "OCEANFRONT"

instance FromJSON WmxSitemapType where
    parseJSON = parseJSONText "WmxSitemapType"

instance ToJSON WmxSitemapType where
    toJSON = toJSONText

data APIdimensionFilterGroupGroupType
    = And
      -- ^ @AND@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable APIdimensionFilterGroupGroupType

instance FromHttpApiData APIdimensionFilterGroupGroupType where
    parseQueryParam = \case
        "AND" -> Right And
        x -> Left ("Unable to parse APIdimensionFilterGroupGroupType from: " <> x)

instance ToHttpApiData APIdimensionFilterGroupGroupType where
    toQueryParam = \case
        And -> "AND"

instance FromJSON APIdimensionFilterGroupGroupType where
    parseJSON = parseJSONText "APIdimensionFilterGroupGroupType"

instance ToJSON APIdimensionFilterGroupGroupType where
    toJSON = toJSONText

data APIdimensionFilterDimension
    = Query
      -- ^ @QUERY@
    | Page
      -- ^ @PAGE@
    | Country
      -- ^ @COUNTRY@
    | Device
      -- ^ @DEVICE@
    | SearchAppearance
      -- ^ @SEARCH_APPEARANCE@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable APIdimensionFilterDimension

instance FromHttpApiData APIdimensionFilterDimension where
    parseQueryParam = \case
        "QUERY" -> Right Query
        "PAGE" -> Right Page
        "COUNTRY" -> Right Country
        "DEVICE" -> Right Device
        "SEARCH_APPEARANCE" -> Right SearchAppearance
        x -> Left ("Unable to parse APIdimensionFilterDimension from: " <> x)

instance ToHttpApiData APIdimensionFilterDimension where
    toQueryParam = \case
        Query -> "QUERY"
        Page -> "PAGE"
        Country -> "COUNTRY"
        Device -> "DEVICE"
        SearchAppearance -> "SEARCH_APPEARANCE"

instance FromJSON APIdimensionFilterDimension where
    parseJSON = parseJSONText "APIdimensionFilterDimension"

instance ToJSON APIdimensionFilterDimension where
    toJSON = toJSONText

data APIdimensionFilterOperator
    = Equals
      -- ^ @EQUALS@
    | NotEquals
      -- ^ @NOT_EQUALS@
    | Contains
      -- ^ @CONTAINS@
    | NotContains
      -- ^ @NOT_CONTAINS@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable APIdimensionFilterOperator

instance FromHttpApiData APIdimensionFilterOperator where
    parseQueryParam = \case
        "EQUALS" -> Right Equals
        "NOT_EQUALS" -> Right NotEquals
        "CONTAINS" -> Right Contains
        "NOT_CONTAINS" -> Right NotContains
        x -> Left ("Unable to parse APIdimensionFilterOperator from: " <> x)

instance ToHttpApiData APIdimensionFilterOperator where
    toQueryParam = \case
        Equals -> "EQUALS"
        NotEquals -> "NOT_EQUALS"
        Contains -> "CONTAINS"
        NotContains -> "NOT_CONTAINS"

instance FromJSON APIdimensionFilterOperator where
    parseJSON = parseJSONText "APIdimensionFilterOperator"

instance ToJSON APIdimensionFilterOperator where
    toJSON = toJSONText

-- | Status of the test.
data TestStatusStatus
    = TestStatusUnspecified
      -- ^ @TEST_STATUS_UNSPECIFIED@
      -- Internal error when running this test. Please try running the test
      -- again.
    | Complete
      -- ^ @COMPLETE@
      -- Inspection has completed without errors.
    | InternalError
      -- ^ @INTERNAL_ERROR@
      -- Inspection terminated in an error state. This indicates a problem in
      -- Google\'s infrastructure, not a user error. Please try again later.
    | PageUnreachable
      -- ^ @PAGE_UNREACHABLE@
      -- Google can not access the URL because of a user error such as a
      -- robots.txt blockage, a 403 or 500 code etc. Please make sure that the
      -- URL provided is accessible by Googlebot and is not password protected.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable TestStatusStatus

instance FromHttpApiData TestStatusStatus where
    parseQueryParam = \case
        "TEST_STATUS_UNSPECIFIED" -> Right TestStatusUnspecified
        "COMPLETE" -> Right Complete
        "INTERNAL_ERROR" -> Right InternalError
        "PAGE_UNREACHABLE" -> Right PageUnreachable
        x -> Left ("Unable to parse TestStatusStatus from: " <> x)

instance ToHttpApiData TestStatusStatus where
    toQueryParam = \case
        TestStatusUnspecified -> "TEST_STATUS_UNSPECIFIED"
        Complete -> "COMPLETE"
        InternalError -> "INTERNAL_ERROR"
        PageUnreachable -> "PAGE_UNREACHABLE"

instance FromJSON TestStatusStatus where
    parseJSON = parseJSONText "TestStatusStatus"

instance ToJSON TestStatusStatus where
    toJSON = toJSONText

-- | The specific type of content in this sitemap. For example: \`web\`.
data WmxSitemapContentType
    = WSCTWeb
      -- ^ @WEB@
    | WSCTImage
      -- ^ @IMAGE@
    | WSCTVideo
      -- ^ @VIDEO@
    | WSCTNews
      -- ^ @NEWS@
    | WSCTMobile
      -- ^ @MOBILE@
    | WSCTAndroidApp
      -- ^ @ANDROID_APP@
    | WSCTPattern
      -- ^ @PATTERN@
      -- Unsupported content type.
    | WSCTIosApp
      -- ^ @IOS_APP@
    | WSCTDataFeedElement
      -- ^ @DATA_FEED_ELEMENT@
      -- Unsupported content type.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable WmxSitemapContentType

instance FromHttpApiData WmxSitemapContentType where
    parseQueryParam = \case
        "WEB" -> Right WSCTWeb
        "IMAGE" -> Right WSCTImage
        "VIDEO" -> Right WSCTVideo
        "NEWS" -> Right WSCTNews
        "MOBILE" -> Right WSCTMobile
        "ANDROID_APP" -> Right WSCTAndroidApp
        "PATTERN" -> Right WSCTPattern
        "IOS_APP" -> Right WSCTIosApp
        "DATA_FEED_ELEMENT" -> Right WSCTDataFeedElement
        x -> Left ("Unable to parse WmxSitemapContentType from: " <> x)

instance ToHttpApiData WmxSitemapContentType where
    toQueryParam = \case
        WSCTWeb -> "WEB"
        WSCTImage -> "IMAGE"
        WSCTVideo -> "VIDEO"
        WSCTNews -> "NEWS"
        WSCTMobile -> "MOBILE"
        WSCTAndroidApp -> "ANDROID_APP"
        WSCTPattern -> "PATTERN"
        WSCTIosApp -> "IOS_APP"
        WSCTDataFeedElement -> "DATA_FEED_ELEMENT"

instance FromJSON WmxSitemapContentType where
    parseJSON = parseJSONText "WmxSitemapContentType"

instance ToJSON WmxSitemapContentType where
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

data SearchAnalyticsQueryRequestDimensionsItem
    = SAQRDIDate
      -- ^ @DATE@
    | SAQRDIQuery
      -- ^ @QUERY@
    | SAQRDIPage
      -- ^ @PAGE@
    | SAQRDICountry
      -- ^ @COUNTRY@
    | SAQRDIDevice
      -- ^ @DEVICE@
    | SAQRDISearchAppearance
      -- ^ @SEARCH_APPEARANCE@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable SearchAnalyticsQueryRequestDimensionsItem

instance FromHttpApiData SearchAnalyticsQueryRequestDimensionsItem where
    parseQueryParam = \case
        "DATE" -> Right SAQRDIDate
        "QUERY" -> Right SAQRDIQuery
        "PAGE" -> Right SAQRDIPage
        "COUNTRY" -> Right SAQRDICountry
        "DEVICE" -> Right SAQRDIDevice
        "SEARCH_APPEARANCE" -> Right SAQRDISearchAppearance
        x -> Left ("Unable to parse SearchAnalyticsQueryRequestDimensionsItem from: " <> x)

instance ToHttpApiData SearchAnalyticsQueryRequestDimensionsItem where
    toQueryParam = \case
        SAQRDIDate -> "DATE"
        SAQRDIQuery -> "QUERY"
        SAQRDIPage -> "PAGE"
        SAQRDICountry -> "COUNTRY"
        SAQRDIDevice -> "DEVICE"
        SAQRDISearchAppearance -> "SEARCH_APPEARANCE"

instance FromJSON SearchAnalyticsQueryRequestDimensionsItem where
    parseJSON = parseJSONText "SearchAnalyticsQueryRequestDimensionsItem"

instance ToJSON SearchAnalyticsQueryRequestDimensionsItem where
    toJSON = toJSONText

-- | Rule violated.
data MobileFriendlyIssueRule
    = MobileFriendlyRuleUnspecified
      -- ^ @MOBILE_FRIENDLY_RULE_UNSPECIFIED@
      -- Unknown rule. Sorry, we don\'t have any description for the rule that
      -- was broken.
    | UsesIncompatiblePlugins
      -- ^ @USES_INCOMPATIBLE_PLUGINS@
      -- Plugins incompatible with mobile devices are being used. [Learn more]
      -- (https:\/\/support.google.com\/webmasters\/answer\/6352293#flash_usage).
    | ConfigureViewport
      -- ^ @CONFIGURE_VIEWPORT@
      -- Viewsport is not specified using the meta viewport tag. [Learn more]
      -- (https:\/\/support.google.com\/webmasters\/answer\/6352293#viewport_not_configured).
    | FixedWidthViewport
      -- ^ @FIXED_WIDTH_VIEWPORT@
      -- Viewport defined to a fixed width. [Learn more]
      -- (https:\/\/support.google.com\/webmasters\/answer\/6352293#fixed-width_viewport).
    | SizeContentToViewport
      -- ^ @SIZE_CONTENT_TO_VIEWPORT@
      -- Content not sized to viewport. [Learn more]
      -- (https:\/\/support.google.com\/webmasters\/answer\/6352293#content_not_sized_to_viewport).
    | UseLegibleFontSizes
      -- ^ @USE_LEGIBLE_FONT_SIZES@
      -- Font size is too small for easy reading on a small screen. [Learn More]
      -- (https:\/\/support.google.com\/webmasters\/answer\/6352293#small_font_size).
    | TapTargetsTooClose
      -- ^ @TAP_TARGETS_TOO_CLOSE@
      -- Touch elements are too close to each other. [Learn more]
      -- (https:\/\/support.google.com\/webmasters\/answer\/6352293#touch_elements_too_close).
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable MobileFriendlyIssueRule

instance FromHttpApiData MobileFriendlyIssueRule where
    parseQueryParam = \case
        "MOBILE_FRIENDLY_RULE_UNSPECIFIED" -> Right MobileFriendlyRuleUnspecified
        "USES_INCOMPATIBLE_PLUGINS" -> Right UsesIncompatiblePlugins
        "CONFIGURE_VIEWPORT" -> Right ConfigureViewport
        "FIXED_WIDTH_VIEWPORT" -> Right FixedWidthViewport
        "SIZE_CONTENT_TO_VIEWPORT" -> Right SizeContentToViewport
        "USE_LEGIBLE_FONT_SIZES" -> Right UseLegibleFontSizes
        "TAP_TARGETS_TOO_CLOSE" -> Right TapTargetsTooClose
        x -> Left ("Unable to parse MobileFriendlyIssueRule from: " <> x)

instance ToHttpApiData MobileFriendlyIssueRule where
    toQueryParam = \case
        MobileFriendlyRuleUnspecified -> "MOBILE_FRIENDLY_RULE_UNSPECIFIED"
        UsesIncompatiblePlugins -> "USES_INCOMPATIBLE_PLUGINS"
        ConfigureViewport -> "CONFIGURE_VIEWPORT"
        FixedWidthViewport -> "FIXED_WIDTH_VIEWPORT"
        SizeContentToViewport -> "SIZE_CONTENT_TO_VIEWPORT"
        UseLegibleFontSizes -> "USE_LEGIBLE_FONT_SIZES"
        TapTargetsTooClose -> "TAP_TARGETS_TOO_CLOSE"

instance FromJSON MobileFriendlyIssueRule where
    parseJSON = parseJSONText "MobileFriendlyIssueRule"

instance ToJSON MobileFriendlyIssueRule where
    toJSON = toJSONText

-- | How the results were aggregated.
data SearchAnalyticsQueryResponseResponseAggregationType
    = SAQRRATAuto
      -- ^ @AUTO@
    | SAQRRATByProperty
      -- ^ @BY_PROPERTY@
    | SAQRRATByPage
      -- ^ @BY_PAGE@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable SearchAnalyticsQueryResponseResponseAggregationType

instance FromHttpApiData SearchAnalyticsQueryResponseResponseAggregationType where
    parseQueryParam = \case
        "AUTO" -> Right SAQRRATAuto
        "BY_PROPERTY" -> Right SAQRRATByProperty
        "BY_PAGE" -> Right SAQRRATByPage
        x -> Left ("Unable to parse SearchAnalyticsQueryResponseResponseAggregationType from: " <> x)

instance ToHttpApiData SearchAnalyticsQueryResponseResponseAggregationType where
    toQueryParam = \case
        SAQRRATAuto -> "AUTO"
        SAQRRATByProperty -> "BY_PROPERTY"
        SAQRRATByPage -> "BY_PAGE"

instance FromJSON SearchAnalyticsQueryResponseResponseAggregationType where
    parseJSON = parseJSONText "SearchAnalyticsQueryResponseResponseAggregationType"

instance ToJSON SearchAnalyticsQueryResponseResponseAggregationType where
    toJSON = toJSONText
