{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.Analytics.Internal.Sum
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Gogol.Analytics.Internal.Sum
  ( -- * DataGaGetOutput
    DataGaGetOutput
      ( DataGaGetOutput_DataTable,
        DataGaGetOutput_Json,
        ..
      ),

    -- * DataGaGetSamplingLevel
    DataGaGetSamplingLevel
      ( DataGaGetSamplingLevel_Default,
        DataGaGetSamplingLevel_Faster,
        DataGaGetSamplingLevel_HIGHERPRECISION,
        ..
      ),

    -- * DataMcfGetSamplingLevel
    DataMcfGetSamplingLevel
      ( DataMcfGetSamplingLevel_Default,
        DataMcfGetSamplingLevel_Faster,
        DataMcfGetSamplingLevel_HIGHERPRECISION,
        ..
      ),
  )
where

import Gogol.Prelude qualified as Core

-- | The selected format for the response. Default format is JSON.
newtype DataGaGetOutput = DataGaGetOutput {fromDataGaGetOutput :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Returns the response in Google Charts Data Table format. This is useful in creating visualization using Google Charts.
pattern DataGaGetOutput_DataTable :: DataGaGetOutput
pattern DataGaGetOutput_DataTable = DataGaGetOutput "dataTable"

-- | Returns the response in standard JSON format.
pattern DataGaGetOutput_Json :: DataGaGetOutput
pattern DataGaGetOutput_Json = DataGaGetOutput "json"

{-# COMPLETE
  DataGaGetOutput_DataTable,
  DataGaGetOutput_Json,
  DataGaGetOutput
  #-}

-- | The desired sampling level.
newtype DataGaGetSamplingLevel = DataGaGetSamplingLevel {fromDataGaGetSamplingLevel :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Returns response with a sample size that balances speed and accuracy.
pattern DataGaGetSamplingLevel_Default :: DataGaGetSamplingLevel
pattern DataGaGetSamplingLevel_Default = DataGaGetSamplingLevel "DEFAULT"

-- | Returns a fast response with a smaller sample size.
pattern DataGaGetSamplingLevel_Faster :: DataGaGetSamplingLevel
pattern DataGaGetSamplingLevel_Faster = DataGaGetSamplingLevel "FASTER"

-- | Returns a more accurate response using a large sample size, but this may result in the response being slower.
pattern DataGaGetSamplingLevel_HIGHERPRECISION :: DataGaGetSamplingLevel
pattern DataGaGetSamplingLevel_HIGHERPRECISION = DataGaGetSamplingLevel "HIGHER_PRECISION"

{-# COMPLETE
  DataGaGetSamplingLevel_Default,
  DataGaGetSamplingLevel_Faster,
  DataGaGetSamplingLevel_HIGHERPRECISION,
  DataGaGetSamplingLevel
  #-}

-- | The desired sampling level.
newtype DataMcfGetSamplingLevel = DataMcfGetSamplingLevel {fromDataMcfGetSamplingLevel :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Returns response with a sample size that balances speed and accuracy.
pattern DataMcfGetSamplingLevel_Default :: DataMcfGetSamplingLevel
pattern DataMcfGetSamplingLevel_Default = DataMcfGetSamplingLevel "DEFAULT"

-- | Returns a fast response with a smaller sample size.
pattern DataMcfGetSamplingLevel_Faster :: DataMcfGetSamplingLevel
pattern DataMcfGetSamplingLevel_Faster = DataMcfGetSamplingLevel "FASTER"

-- | Returns a more accurate response using a large sample size, but this may result in the response being slower.
pattern DataMcfGetSamplingLevel_HIGHERPRECISION :: DataMcfGetSamplingLevel
pattern DataMcfGetSamplingLevel_HIGHERPRECISION = DataMcfGetSamplingLevel "HIGHER_PRECISION"

{-# COMPLETE
  DataMcfGetSamplingLevel_Default,
  DataMcfGetSamplingLevel_Faster,
  DataMcfGetSamplingLevel_HIGHERPRECISION,
  DataMcfGetSamplingLevel
  #-}
