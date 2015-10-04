{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.Analytics.Types.Sum
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.Analytics.Types.Sum where

import           Network.Google.Prelude

-- | The desired sampling level.
data SamplingLevel
    = Default
      -- ^ @DEFAULT@
      -- Returns response with a sample size that balances speed and accuracy.
    | Faster
      -- ^ @FASTER@
      -- Returns a fast response with a smaller sample size.
    | HigherPrecision
      -- ^ @HIGHER_PRECISION@
      -- Returns a more accurate response using a large sample size, but this may
      -- result in the response being slower.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable SamplingLevel

instance FromText SamplingLevel where
    fromText = \case
        "DEFAULT" -> Just Default
        "FASTER" -> Just Faster
        "HIGHER_PRECISION" -> Just HigherPrecision
        _ -> Nothing

instance ToText SamplingLevel where
    toText = \case
        Default -> "DEFAULT"
        Faster -> "FASTER"
        HigherPrecision -> "HIGHER_PRECISION"

instance FromJSON SamplingLevel where
    parseJSON = parseJSONText "SamplingLevel"

instance ToJSON SamplingLevel where
    toJSON = toJSONText

-- | The selected format for the response. Default format is JSON.
data Output
    = ODataTable
      -- ^ @dataTable@
      -- Returns the response in Google Charts Data Table format. This is useful
      -- in creating visualization using Google Charts.
    | OJSON
      -- ^ @json@
      -- Returns the response in standard JSON format.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable Output

instance FromText Output where
    fromText = \case
        "dataTable" -> Just ODataTable
        "json" -> Just OJSON
        _ -> Nothing

instance ToText Output where
    toText = \case
        ODataTable -> "dataTable"
        OJSON -> "json"

instance FromJSON Output where
    parseJSON = parseJSONText "Output"

instance ToJSON Output where
    toJSON = toJSONText

-- | The desired sampling level.
data AnalyticsDataGaGetSamplingLevel
    = ADGGSLDefault
      -- ^ @DEFAULT@
      -- Returns response with a sample size that balances speed and accuracy.
    | ADGGSLFaster
      -- ^ @FASTER@
      -- Returns a fast response with a smaller sample size.
    | ADGGSLHigherPrecision
      -- ^ @HIGHER_PRECISION@
      -- Returns a more accurate response using a large sample size, but this may
      -- result in the response being slower.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable AnalyticsDataGaGetSamplingLevel

instance FromText AnalyticsDataGaGetSamplingLevel where
    fromText = \case
        "DEFAULT" -> Just ADGGSLDefault
        "FASTER" -> Just ADGGSLFaster
        "HIGHER_PRECISION" -> Just ADGGSLHigherPrecision
        _ -> Nothing

instance ToText AnalyticsDataGaGetSamplingLevel where
    toText = \case
        ADGGSLDefault -> "DEFAULT"
        ADGGSLFaster -> "FASTER"
        ADGGSLHigherPrecision -> "HIGHER_PRECISION"

instance FromJSON AnalyticsDataGaGetSamplingLevel where
    parseJSON = parseJSONText "AnalyticsDataGaGetSamplingLevel"

instance ToJSON AnalyticsDataGaGetSamplingLevel where
    toJSON = toJSONText
