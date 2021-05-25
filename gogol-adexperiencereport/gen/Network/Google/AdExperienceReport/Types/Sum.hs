{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.AdExperienceReport.Types.Sum
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.AdExperienceReport.Types.Sum where

import Network.Google.Prelude hiding (Bytes)

-- | The site\'s [enforcement
-- status](https:\/\/support.google.com\/webtools\/answer\/7308033) on this
-- platform.
data PlatformSummaryFilterStatus
    = Unknown
      -- ^ @UNKNOWN@
      -- N\/A.
    | ON
      -- ^ @ON@
      -- Ad filtering is on.
    | Off
      -- ^ @OFF@
      -- Ad filtering is off.
    | Paused
      -- ^ @PAUSED@
      -- Ad filtering is paused.
    | Pending
      -- ^ @PENDING@
      -- Ad filtering is pending.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable PlatformSummaryFilterStatus

instance FromHttpApiData PlatformSummaryFilterStatus where
    parseQueryParam = \case
        "UNKNOWN" -> Right Unknown
        "ON" -> Right ON
        "OFF" -> Right Off
        "PAUSED" -> Right Paused
        "PENDING" -> Right Pending
        x -> Left ("Unable to parse PlatformSummaryFilterStatus from: " <> x)

instance ToHttpApiData PlatformSummaryFilterStatus where
    toQueryParam = \case
        Unknown -> "UNKNOWN"
        ON -> "ON"
        Off -> "OFF"
        Paused -> "PAUSED"
        Pending -> "PENDING"

instance FromJSON PlatformSummaryFilterStatus where
    parseJSON = parseJSONText "PlatformSummaryFilterStatus"

instance ToJSON PlatformSummaryFilterStatus where
    toJSON = toJSONText

data PlatformSummaryRegionItem
    = RegionUnknown
      -- ^ @REGION_UNKNOWN@
      -- Ad standard not yet defined for your region.
    | RegionA
      -- ^ @REGION_A@
      -- Region A.
    | RegionB
      -- ^ @REGION_B@
      -- Region B.
    | RegionC
      -- ^ @REGION_C@
      -- Region C.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable PlatformSummaryRegionItem

instance FromHttpApiData PlatformSummaryRegionItem where
    parseQueryParam = \case
        "REGION_UNKNOWN" -> Right RegionUnknown
        "REGION_A" -> Right RegionA
        "REGION_B" -> Right RegionB
        "REGION_C" -> Right RegionC
        x -> Left ("Unable to parse PlatformSummaryRegionItem from: " <> x)

instance ToHttpApiData PlatformSummaryRegionItem where
    toQueryParam = \case
        RegionUnknown -> "REGION_UNKNOWN"
        RegionA -> "REGION_A"
        RegionB -> "REGION_B"
        RegionC -> "REGION_C"

instance FromJSON PlatformSummaryRegionItem where
    parseJSON = parseJSONText "PlatformSummaryRegionItem"

instance ToJSON PlatformSummaryRegionItem where
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

-- | The site\'s Ad Experience Report status on this platform.
data PlatformSummaryBetterAdsStatus
    = PSBASUnknown
      -- ^ @UNKNOWN@
      -- Not reviewed.
    | PSBASPassing
      -- ^ @PASSING@
      -- Passing.
    | PSBASWarning
      -- ^ @WARNING@
      -- Warning. No longer a possible status.
    | PSBASFailing
      -- ^ @FAILING@
      -- Failing.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable PlatformSummaryBetterAdsStatus

instance FromHttpApiData PlatformSummaryBetterAdsStatus where
    parseQueryParam = \case
        "UNKNOWN" -> Right PSBASUnknown
        "PASSING" -> Right PSBASPassing
        "WARNING" -> Right PSBASWarning
        "FAILING" -> Right PSBASFailing
        x -> Left ("Unable to parse PlatformSummaryBetterAdsStatus from: " <> x)

instance ToHttpApiData PlatformSummaryBetterAdsStatus where
    toQueryParam = \case
        PSBASUnknown -> "UNKNOWN"
        PSBASPassing -> "PASSING"
        PSBASWarning -> "WARNING"
        PSBASFailing -> "FAILING"

instance FromJSON PlatformSummaryBetterAdsStatus where
    parseJSON = parseJSONText "PlatformSummaryBetterAdsStatus"

instance ToJSON PlatformSummaryBetterAdsStatus where
    toJSON = toJSONText
