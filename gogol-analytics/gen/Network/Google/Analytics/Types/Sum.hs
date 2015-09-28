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

-- | Data format for the response.
data Alt
    = JSON
      -- ^ @json@
      -- Responses with Content-Type of application\/json
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable Alt

instance FromText Alt where
    fromText = \case
        "json" -> Just JSON
        _ -> Nothing

instance ToText Alt where
    toText = \case
        JSON -> "json"

instance FromJSON Alt where
    parseJSON = parseJSONText "Alt"

instance ToJSON Alt where
    toJSON = toJSONText

-- | The selected format for the response. Default format is JSON.
data DataGaGet'Output
    = DGGODataTable
      -- ^ @dataTable@
      -- Returns the response in Google Charts Data Table format. This is useful
      -- in creating visualization using Google Charts.
    | DGGOJSON
      -- ^ @json@
      -- Returns the response in standard JSON format.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable DataGaGet'Output

instance FromText DataGaGet'Output where
    fromText = \case
        "dataTable" -> Just DGGODataTable
        "json" -> Just DGGOJSON
        _ -> Nothing

instance ToText DataGaGet'Output where
    toText = \case
        DGGODataTable -> "dataTable"
        DGGOJSON -> "json"

instance FromJSON DataGaGet'Output where
    parseJSON = parseJSONText "DataGaGet'Output"

instance ToJSON DataGaGet'Output where
    toJSON = toJSONText

-- | The desired sampling level.
data DataMcfGet'SamplingLevel
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

instance Hashable DataMcfGet'SamplingLevel

instance FromText DataMcfGet'SamplingLevel where
    fromText = \case
        "DEFAULT" -> Just Default
        "FASTER" -> Just Faster
        "HIGHER_PRECISION" -> Just HigherPrecision
        _ -> Nothing

instance ToText DataMcfGet'SamplingLevel where
    toText = \case
        Default -> "DEFAULT"
        Faster -> "FASTER"
        HigherPrecision -> "HIGHER_PRECISION"

instance FromJSON DataMcfGet'SamplingLevel where
    parseJSON = parseJSONText "DataMcfGet'SamplingLevel"

instance ToJSON DataMcfGet'SamplingLevel where
    toJSON = toJSONText

-- | The desired sampling level.
data DataGaGet'SamplingLevel
    = DGGSLDefault
      -- ^ @DEFAULT@
      -- Returns response with a sample size that balances speed and accuracy.
    | DGGSLFaster
      -- ^ @FASTER@
      -- Returns a fast response with a smaller sample size.
    | DGGSLHigherPrecision
      -- ^ @HIGHER_PRECISION@
      -- Returns a more accurate response using a large sample size, but this may
      -- result in the response being slower.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable DataGaGet'SamplingLevel

instance FromText DataGaGet'SamplingLevel where
    fromText = \case
        "DEFAULT" -> Just DGGSLDefault
        "FASTER" -> Just DGGSLFaster
        "HIGHER_PRECISION" -> Just DGGSLHigherPrecision
        _ -> Nothing

instance ToText DataGaGet'SamplingLevel where
    toText = \case
        DGGSLDefault -> "DEFAULT"
        DGGSLFaster -> "FASTER"
        DGGSLHigherPrecision -> "HIGHER_PRECISION"

instance FromJSON DataGaGet'SamplingLevel where
    parseJSON = parseJSONText "DataGaGet'SamplingLevel"

instance ToJSON DataGaGet'SamplingLevel where
    toJSON = toJSONText
