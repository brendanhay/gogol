{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.Analytics.Types.Sum
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.Analytics.Types.Sum where

import           Network.Google.Prelude

-- | The desired sampling level.
data DataGaGetSamplingLevel
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
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable DataGaGetSamplingLevel

instance FromHttpApiData DataGaGetSamplingLevel where
    parseQueryParam = \case
        "DEFAULT" -> Right Default
        "FASTER" -> Right Faster
        "HIGHER_PRECISION" -> Right HigherPrecision
        x -> Left ("Unable to parse DataGaGetSamplingLevel from: " <> x)

instance ToHttpApiData DataGaGetSamplingLevel where
    toQueryParam = \case
        Default -> "DEFAULT"
        Faster -> "FASTER"
        HigherPrecision -> "HIGHER_PRECISION"

instance FromJSON DataGaGetSamplingLevel where
    parseJSON = parseJSONText "DataGaGetSamplingLevel"

instance ToJSON DataGaGetSamplingLevel where
    toJSON = toJSONText

-- | The selected format for the response. Default format is JSON.
data DataGaGetOutput
    = DataTable
      -- ^ @dataTable@
      -- Returns the response in Google Charts Data Table format. This is useful
      -- in creating visualization using Google Charts.
    | JSON
      -- ^ @json@
      -- Returns the response in standard JSON format.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable DataGaGetOutput

instance FromHttpApiData DataGaGetOutput where
    parseQueryParam = \case
        "dataTable" -> Right DataTable
        "json" -> Right JSON
        x -> Left ("Unable to parse DataGaGetOutput from: " <> x)

instance ToHttpApiData DataGaGetOutput where
    toQueryParam = \case
        DataTable -> "dataTable"
        JSON -> "json"

instance FromJSON DataGaGetOutput where
    parseJSON = parseJSONText "DataGaGetOutput"

instance ToJSON DataGaGetOutput where
    toJSON = toJSONText

-- | The desired sampling level.
data DataMcfGetSamplingLevel
    = DMGSLDefault
      -- ^ @DEFAULT@
      -- Returns response with a sample size that balances speed and accuracy.
    | DMGSLFaster
      -- ^ @FASTER@
      -- Returns a fast response with a smaller sample size.
    | DMGSLHigherPrecision
      -- ^ @HIGHER_PRECISION@
      -- Returns a more accurate response using a large sample size, but this may
      -- result in the response being slower.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable DataMcfGetSamplingLevel

instance FromHttpApiData DataMcfGetSamplingLevel where
    parseQueryParam = \case
        "DEFAULT" -> Right DMGSLDefault
        "FASTER" -> Right DMGSLFaster
        "HIGHER_PRECISION" -> Right DMGSLHigherPrecision
        x -> Left ("Unable to parse DataMcfGetSamplingLevel from: " <> x)

instance ToHttpApiData DataMcfGetSamplingLevel where
    toQueryParam = \case
        DMGSLDefault -> "DEFAULT"
        DMGSLFaster -> "FASTER"
        DMGSLHigherPrecision -> "HIGHER_PRECISION"

instance FromJSON DataMcfGetSamplingLevel where
    parseJSON = parseJSONText "DataMcfGetSamplingLevel"

instance ToJSON DataMcfGetSamplingLevel where
    toJSON = toJSONText
