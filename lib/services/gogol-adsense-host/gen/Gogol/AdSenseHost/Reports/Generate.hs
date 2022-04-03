{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.AdSenseHost.Reports.Generate
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Generate an AdSense report based on the report request sent in the query parameters. Returns the result as JSON; to retrieve output in CSV format specify \"alt=csv\" as a query parameter.
--
-- /See:/ <https://developers.google.com/adsense/host/ AdSense Host API Reference> for @adsensehost.reports.generate@.
module Gogol.AdSenseHost.Reports.Generate
  ( -- * Resource
    AdSenseHostReportsGenerateResource,

    -- ** Constructing a Request
    AdSenseHostReportsGenerate (..),
    newAdSenseHostReportsGenerate,
  )
where

import Gogol.AdSenseHost.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @adsensehost.reports.generate@ method which the
-- 'AdSenseHostReportsGenerate' request conforms to.
type AdSenseHostReportsGenerateResource =
  "adsensehost"
    Core.:> "v4.1"
    Core.:> "reports"
    Core.:> Core.QueryParam "startDate" Core.Text
    Core.:> Core.QueryParam "endDate" Core.Text
    Core.:> Core.QueryParams "dimension" Core.Text
    Core.:> Core.QueryParams "filter" Core.Text
    Core.:> Core.QueryParam "locale" Core.Text
    Core.:> Core.QueryParam "maxResults" Core.Word32
    Core.:> Core.QueryParams "metric" Core.Text
    Core.:> Core.QueryParams "sort" Core.Text
    Core.:> Core.QueryParam "startIndex" Core.Word32
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] Report

-- | Generate an AdSense report based on the report request sent in the query parameters. Returns the result as JSON; to retrieve output in CSV format specify \"alt=csv\" as a query parameter.
--
-- /See:/ 'newAdSenseHostReportsGenerate' smart constructor.
data AdSenseHostReportsGenerate = AdSenseHostReportsGenerate
  { -- | Dimensions to base the report on.
    dimension :: (Core.Maybe [Core.Text]),
    -- | End of the date range to report on in \"YYYY-MM-DD\" format, inclusive.
    endDate :: Core.Text,
    -- | Filters to be run on the report.
    filter :: (Core.Maybe [Core.Text]),
    -- | Optional locale to use for translating report output to a local language. Defaults to \"en_US\" if not specified.
    locale :: (Core.Maybe Core.Text),
    -- | The maximum number of rows of report data to return.
    maxResults :: (Core.Maybe Core.Word32),
    -- | Numeric columns to include in the report.
    metric :: (Core.Maybe [Core.Text]),
    -- | The name of a dimension or metric to sort the resulting report on, optionally prefixed with \"+\" to sort ascending or \"-\" to sort descending. If no prefix is specified, the column is sorted ascending.
    sort :: (Core.Maybe [Core.Text]),
    -- | Start of the date range to report on in \"YYYY-MM-DD\" format, inclusive.
    startDate :: Core.Text,
    -- | Index of the first row of report data to return.
    startIndex :: (Core.Maybe Core.Word32)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AdSenseHostReportsGenerate' with the minimum fields required to make a request.
newAdSenseHostReportsGenerate ::
  -- |  End of the date range to report on in \"YYYY-MM-DD\" format, inclusive. See 'endDate'.
  Core.Text ->
  -- |  Start of the date range to report on in \"YYYY-MM-DD\" format, inclusive. See 'startDate'.
  Core.Text ->
  AdSenseHostReportsGenerate
newAdSenseHostReportsGenerate endDate startDate =
  AdSenseHostReportsGenerate
    { dimension = Core.Nothing,
      endDate = endDate,
      filter = Core.Nothing,
      locale = Core.Nothing,
      maxResults = Core.Nothing,
      metric = Core.Nothing,
      sort = Core.Nothing,
      startDate = startDate,
      startIndex = Core.Nothing
    }

instance
  Core.GoogleRequest
    AdSenseHostReportsGenerate
  where
  type Rs AdSenseHostReportsGenerate = Report
  type
    Scopes AdSenseHostReportsGenerate =
      '[Adsensehost'FullControl]
  requestClient AdSenseHostReportsGenerate {..} =
    go
      (Core.Just startDate)
      (Core.Just endDate)
      (dimension Core.^. Core._Default)
      (filter Core.^. Core._Default)
      locale
      maxResults
      (metric Core.^. Core._Default)
      (sort Core.^. Core._Default)
      startIndex
      (Core.Just Core.AltJSON)
      adSenseHostService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy AdSenseHostReportsGenerateResource
          )
          Core.mempty
