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
-- Module      : Network.Google.YouTubeAnalytics.Reports.Query
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieve your YouTube Analytics reports.
--
-- /See:/ <https://developers.google.com/youtube/analytics YouTube Analytics API Reference> for @youtubeAnalytics.reports.query@.
module Network.Google.YouTubeAnalytics.Reports.Query
  ( -- * Resource
    YouTubeAnalyticsReportsQueryResource,

    -- ** Constructing a Request
    newYouTubeAnalyticsReportsQuery,
    YouTubeAnalyticsReportsQuery,
  )
where

import qualified Network.Google.Prelude as Core
import Network.Google.YouTubeAnalytics.Types

-- | A resource alias for @youtubeAnalytics.reports.query@ method which the
-- 'YouTubeAnalyticsReportsQuery' request conforms to.
type YouTubeAnalyticsReportsQueryResource =
  "v2"
    Core.:> "reports"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "currency" Core.Text
    Core.:> Core.QueryParam "dimensions" Core.Text
    Core.:> Core.QueryParam "endDate" Core.Text
    Core.:> Core.QueryParam "filters" Core.Text
    Core.:> Core.QueryParam "ids" Core.Text
    Core.:> Core.QueryParam
              "includeHistoricalChannelData"
              Core.Bool
    Core.:> Core.QueryParam "maxResults" Core.Int32
    Core.:> Core.QueryParam "metrics" Core.Text
    Core.:> Core.QueryParam "sort" Core.Text
    Core.:> Core.QueryParam "startDate" Core.Text
    Core.:> Core.QueryParam "startIndex" Core.Int32
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam
              "upload_protocol"
              Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] QueryResponse

-- | Retrieve your YouTube Analytics reports.
--
-- /See:/ 'newYouTubeAnalyticsReportsQuery' smart constructor.
data YouTubeAnalyticsReportsQuery = YouTubeAnalyticsReportsQuery
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The currency to which financial metrics should be converted. The default is US Dollar (USD). If the result contains no financial metrics, this flag will be ignored. Responds with an error if the specified currency is not recognized.\", pattern: [A-Z]{3}
    currency :: (Core.Maybe Core.Text),
    -- | A comma-separated list of YouTube Analytics dimensions, such as @views@ or @ageGroup,gender@. See the </youtube/analytics/v2/available_reports Available Reports> document for a list of the reports that you can retrieve and the dimensions used for those reports. Also see the </youtube/analytics/v2/dimsmets/dims Dimensions> document for definitions of those dimensions.\" pattern: [0-9a-zA-Z,]+
    dimensions :: (Core.Maybe Core.Text),
    -- | The end date for fetching YouTube Analytics data. The value should be in @YYYY-MM-DD@ format. required: true, pattern: [0-9]{4}-[0-9]{2}-[0-9]{2}
    endDate :: (Core.Maybe Core.Text),
    -- | A list of filters that should be applied when retrieving YouTube Analytics data. The </youtube/analytics/v2/available_reports Available Reports> document identifies the dimensions that can be used to filter each report, and the </youtube/analytics/v2/dimsmets/dims Dimensions> document defines those dimensions. If a request uses multiple filters, join them together with a semicolon (@;@), and the returned result table will satisfy both filters. For example, a filters parameter value of @video==dMH0bHeiRNg;country==IT@ restricts the result set to include data for the given video in Italy.\",
    filters :: (Core.Maybe Core.Text),
    -- | Identifies the YouTube channel or content owner for which you are retrieving YouTube Analytics data. - To request data for a YouTube user, set the @ids@ parameter value to @channel==CHANNEL_ID@, where @CHANNEL_ID@ specifies the unique YouTube channel ID. - To request data for a YouTube CMS content owner, set the @ids@ parameter value to @contentOwner==OWNER_NAME@, where @OWNER_NAME@ is the CMS name of the content owner. required: true, pattern: [a-zA-Z]+==[a-zA-Z0-9_+-]+
    ids :: (Core.Maybe Core.Text),
    -- | If set to true historical data (i.e. channel data from before the linking of the channel to the content owner) will be retrieved.\",
    includeHistoricalChannelData :: (Core.Maybe Core.Bool),
    -- | The maximum number of rows to include in the response.\", minValue: 1
    maxResults :: (Core.Maybe Core.Int32),
    -- | A comma-separated list of YouTube Analytics metrics, such as @views@ or @likes,dislikes@. See the </youtube/analytics/v2/available_reports Available Reports> document for a list of the reports that you can retrieve and the metrics available in each report, and see the </youtube/analytics/v2/dimsmets/mets Metrics> document for definitions of those metrics. required: true, pattern: [0-9a-zA-Z,]+
    metrics :: (Core.Maybe Core.Text),
    -- | A comma-separated list of dimensions or metrics that determine the sort order for YouTube Analytics data. By default the sort order is ascending. The \'@-@\' prefix causes descending sort order.\", pattern: [-0-9a-zA-Z,]+
    sort :: (Core.Maybe Core.Text),
    -- | The start date for fetching YouTube Analytics data. The value should be in @YYYY-MM-DD@ format. required: true, pattern: \"[0-9]{4}-[0-9]{2}-[0-9]{2}
    startDate :: (Core.Maybe Core.Text),
    -- | An index of the first entity to retrieve. Use this parameter as a pagination mechanism along with the max-results parameter (one-based, inclusive).\", minValue: 1
    startIndex :: (Core.Maybe Core.Int32),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'YouTubeAnalyticsReportsQuery' with the minimum fields required to make a request.
newYouTubeAnalyticsReportsQuery ::
  YouTubeAnalyticsReportsQuery
newYouTubeAnalyticsReportsQuery =
  YouTubeAnalyticsReportsQuery
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      currency = Core.Nothing,
      dimensions = Core.Nothing,
      endDate = Core.Nothing,
      filters = Core.Nothing,
      ids = Core.Nothing,
      includeHistoricalChannelData = Core.Nothing,
      maxResults = Core.Nothing,
      metrics = Core.Nothing,
      sort = Core.Nothing,
      startDate = Core.Nothing,
      startIndex = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    YouTubeAnalyticsReportsQuery
  where
  type Rs YouTubeAnalyticsReportsQuery = QueryResponse
  type
    Scopes YouTubeAnalyticsReportsQuery =
      '[ "https://www.googleapis.com/auth/youtube",
         "https://www.googleapis.com/auth/youtube.readonly",
         "https://www.googleapis.com/auth/youtubepartner",
         "https://www.googleapis.com/auth/yt-analytics-monetary.readonly",
         "https://www.googleapis.com/auth/yt-analytics.readonly"
       ]
  requestClient YouTubeAnalyticsReportsQuery {..} =
    go
      xgafv
      accessToken
      callback
      currency
      dimensions
      endDate
      filters
      ids
      includeHistoricalChannelData
      maxResults
      metrics
      sort
      startDate
      startIndex
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      youTubeAnalyticsService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy YouTubeAnalyticsReportsQueryResource
          )
          Core.mempty
