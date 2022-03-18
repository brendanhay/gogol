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
-- Module      : Gogol.WebmasterTools.Webmasters.Searchanalytics.Query
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Query your data with filters and parameters that you define. Returns zero or more rows grouped by the row keys that you define. You must define a date range of one or more days.
--
-- When date is one of the group by values, any days without data are omitted from the result list. If you need to know which days have data, issue a broad date range query grouped by date for any metric, and see which day rows are returned.
--
-- /See:/ <https://developers.google.com/webmaster-tools/ Search Console API Reference> for @webmasters.searchanalytics.query@.
module Gogol.WebmasterTools.Webmasters.Searchanalytics.Query
  ( -- * Resource
    WebmastersSearchanalyticsQueryResource,

    -- ** Constructing a Request
    newWebmastersSearchanalyticsQuery,
    WebmastersSearchanalyticsQuery,
  )
where

import qualified Gogol.Prelude as Core
import Gogol.WebmasterTools.Types

-- | A resource alias for @webmasters.searchanalytics.query@ method which the
-- 'WebmastersSearchanalyticsQuery' request conforms to.
type WebmastersSearchanalyticsQueryResource =
  "webmasters"
    Core.:> "v3"
    Core.:> "sites"
    Core.:> Core.Capture "siteUrl" Core.Text
    Core.:> "searchAnalytics"
    Core.:> "query"
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] SearchAnalyticsQueryRequest
    Core.:> Core.Post '[Core.JSON] SearchAnalyticsQueryResponse

-- | Query your data with filters and parameters that you define. Returns zero or more rows grouped by the row keys that you define. You must define a date range of one or more days.
--
-- When date is one of the group by values, any days without data are omitted from the result list. If you need to know which days have data, issue a broad date range query grouped by date for any metric, and see which day rows are returned.
--
-- /See:/ 'newWebmastersSearchanalyticsQuery' smart constructor.
data WebmastersSearchanalyticsQuery = WebmastersSearchanalyticsQuery
  { -- | Multipart request metadata.
    payload :: SearchAnalyticsQueryRequest,
    -- | The site\'s URL, including protocol. For example: http:\/\/www.example.com\/
    siteUrl :: Core.Text
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'WebmastersSearchanalyticsQuery' with the minimum fields required to make a request.
newWebmastersSearchanalyticsQuery ::
  -- |  Multipart request metadata. See 'payload'.
  SearchAnalyticsQueryRequest ->
  -- |  The site\'s URL, including protocol. For example: http:\/\/www.example.com\/ See 'siteUrl'.
  Core.Text ->
  WebmastersSearchanalyticsQuery
newWebmastersSearchanalyticsQuery payload siteUrl =
  WebmastersSearchanalyticsQuery {payload = payload, siteUrl = siteUrl}

instance
  Core.GoogleRequest
    WebmastersSearchanalyticsQuery
  where
  type
    Rs WebmastersSearchanalyticsQuery =
      SearchAnalyticsQueryResponse
  type
    Scopes WebmastersSearchanalyticsQuery =
      '[ "https://www.googleapis.com/auth/webmasters",
         "https://www.googleapis.com/auth/webmasters.readonly"
       ]
  requestClient WebmastersSearchanalyticsQuery {..} =
    go
      siteUrl
      (Core.Just Core.AltJSON)
      payload
      webmasterToolsService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy WebmastersSearchanalyticsQueryResource
          )
          Core.mempty
