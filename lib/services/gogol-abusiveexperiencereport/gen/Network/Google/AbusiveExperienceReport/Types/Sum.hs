{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.AbusiveExperienceReport.Types.Sum
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.AbusiveExperienceReport.Types.Sum where

import Network.Google.Prelude hiding (Bytes)

-- | The site\'s Abusive Experience Report status.
data SiteSummaryResponseAbusiveStatus
    = Unknown
      -- ^ @UNKNOWN@
      -- Not reviewed.
    | Passing
      -- ^ @PASSING@
      -- Passing.
    | Failing
      -- ^ @FAILING@
      -- Failing.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable SiteSummaryResponseAbusiveStatus

instance FromHttpApiData SiteSummaryResponseAbusiveStatus where
    parseQueryParam = \case
        "UNKNOWN" -> Right Unknown
        "PASSING" -> Right Passing
        "FAILING" -> Right Failing
        x -> Left ("Unable to parse SiteSummaryResponseAbusiveStatus from: " <> x)

instance ToHttpApiData SiteSummaryResponseAbusiveStatus where
    toQueryParam = \case
        Unknown -> "UNKNOWN"
        Passing -> "PASSING"
        Failing -> "FAILING"

instance FromJSON SiteSummaryResponseAbusiveStatus where
    parseJSON = parseJSONText "SiteSummaryResponseAbusiveStatus"

instance ToJSON SiteSummaryResponseAbusiveStatus where
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

-- | The site\'s [enforcement
-- status](https:\/\/support.google.com\/webtools\/answer\/7538608).
data SiteSummaryResponseFilterStatus
    = SSRFSUnknown
      -- ^ @UNKNOWN@
      -- N\/A.
    | SSRFSON
      -- ^ @ON@
      -- Enforcement is on.
    | SSRFSOff
      -- ^ @OFF@
      -- Enforcement is off.
    | SSRFSPaused
      -- ^ @PAUSED@
      -- Enforcement is paused.
    | SSRFSPending
      -- ^ @PENDING@
      -- Enforcement is pending.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable SiteSummaryResponseFilterStatus

instance FromHttpApiData SiteSummaryResponseFilterStatus where
    parseQueryParam = \case
        "UNKNOWN" -> Right SSRFSUnknown
        "ON" -> Right SSRFSON
        "OFF" -> Right SSRFSOff
        "PAUSED" -> Right SSRFSPaused
        "PENDING" -> Right SSRFSPending
        x -> Left ("Unable to parse SiteSummaryResponseFilterStatus from: " <> x)

instance ToHttpApiData SiteSummaryResponseFilterStatus where
    toQueryParam = \case
        SSRFSUnknown -> "UNKNOWN"
        SSRFSON -> "ON"
        SSRFSOff -> "OFF"
        SSRFSPaused -> "PAUSED"
        SSRFSPending -> "PENDING"

instance FromJSON SiteSummaryResponseFilterStatus where
    parseJSON = parseJSONText "SiteSummaryResponseFilterStatus"

instance ToJSON SiteSummaryResponseFilterStatus where
    toJSON = toJSONText
