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
-- Module      : Gogol.SearchConsole.Webmasters.Searchanalytics.Query
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Query your data with filters and parameters that you define. Returns zero or more rows grouped by the row keys that you define. You must define a date range of one or more days. When date is one of the group by values, any days without data are omitted from the result list. If you need to know which days have data, issue a broad date range query grouped by date for any metric, and see which day rows are returned.
--
-- /See:/ <https://developers.google.com/webmaster-tools/search-console-api/ Google Search Console API Reference> for @webmasters.searchanalytics.query@.
module Gogol.SearchConsole.Webmasters.Searchanalytics.Query
  ( -- * Resource
    WebmastersSearchanalyticsQueryResource,

    -- ** Constructing a Request
    WebmastersSearchanalyticsQuery (..),
    newWebmastersSearchanalyticsQuery,
  )
where

import qualified Gogol.Prelude as Core
import Gogol.SearchConsole.Types

-- | A resource alias for @webmasters.searchanalytics.query@ method which the
-- 'WebmastersSearchanalyticsQuery' request conforms to.
type WebmastersSearchanalyticsQueryResource =
  "webmasters"
    Core.:> "v3"
    Core.:> "sites"
    Core.:> Core.Capture "siteUrl" Core.Text
    Core.:> "searchAnalytics"
    Core.:> "query"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody
              '[Core.JSON]
              SearchAnalyticsQueryRequest
    Core.:> Core.Post
              '[Core.JSON]
              SearchAnalyticsQueryResponse

-- | Query your data with filters and parameters that you define. Returns zero or more rows grouped by the row keys that you define. You must define a date range of one or more days. When date is one of the group by values, any days without data are omitted from the result list. If you need to know which days have data, issue a broad date range query grouped by date for any metric, and see which day rows are returned.
--
-- /See:/ 'newWebmastersSearchanalyticsQuery' smart constructor.
data WebmastersSearchanalyticsQuery = WebmastersSearchanalyticsQuery
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Multipart request metadata.
    payload :: SearchAnalyticsQueryRequest,
    -- | The site\'s URL, including protocol. For example: @http:\/\/www.example.com\/@.
    siteUrl :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'WebmastersSearchanalyticsQuery' with the minimum fields required to make a request.
newWebmastersSearchanalyticsQuery ::
  -- |  Multipart request metadata. See 'payload'.
  SearchAnalyticsQueryRequest ->
  -- |  The site\'s URL, including protocol. For example: @http:\/\/www.example.com\/@. See 'siteUrl'.
  Core.Text ->
  WebmastersSearchanalyticsQuery
newWebmastersSearchanalyticsQuery payload siteUrl =
  WebmastersSearchanalyticsQuery
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      payload = payload,
      siteUrl = siteUrl,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    WebmastersSearchanalyticsQuery
  where
  type
    Rs WebmastersSearchanalyticsQuery =
      SearchAnalyticsQueryResponse
  type
    Scopes WebmastersSearchanalyticsQuery =
      '[Webmasters'FullControl, Webmasters'Readonly]
  requestClient WebmastersSearchanalyticsQuery {..} =
    go
      siteUrl
      xgafv
      accessToken
      callback
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      payload
      searchConsoleService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy WebmastersSearchanalyticsQueryResource
          )
          Core.mempty
