{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.SearchConsole.Types.Sum
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.SearchConsole.Types.Sum where

import           Network.Google.Prelude hiding (Bytes)

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
