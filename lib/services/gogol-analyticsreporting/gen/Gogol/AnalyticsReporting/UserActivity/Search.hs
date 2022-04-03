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
-- Module      : Gogol.AnalyticsReporting.UserActivity.Search
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns User Activity data.
--
-- /See:/ <https://developers.google.com/analytics/devguides/reporting/core/v4/ Analytics Reporting API Reference> for @analyticsreporting.userActivity.search@.
module Gogol.AnalyticsReporting.UserActivity.Search
  ( -- * Resource
    AnalyticsReportingUserActivitySearchResource,

    -- ** Constructing a Request
    AnalyticsReportingUserActivitySearch (..),
    newAnalyticsReportingUserActivitySearch,
  )
where

import Gogol.AnalyticsReporting.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @analyticsreporting.userActivity.search@ method which the
-- 'AnalyticsReportingUserActivitySearch' request conforms to.
type AnalyticsReportingUserActivitySearchResource =
  "v4"
    Core.:> "userActivity:search"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] SearchUserActivityRequest
    Core.:> Core.Post '[Core.JSON] SearchUserActivityResponse

-- | Returns User Activity data.
--
-- /See:/ 'newAnalyticsReportingUserActivitySearch' smart constructor.
data AnalyticsReportingUserActivitySearch = AnalyticsReportingUserActivitySearch
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Multipart request metadata.
    payload :: SearchUserActivityRequest,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AnalyticsReportingUserActivitySearch' with the minimum fields required to make a request.
newAnalyticsReportingUserActivitySearch ::
  -- |  Multipart request metadata. See 'payload'.
  SearchUserActivityRequest ->
  AnalyticsReportingUserActivitySearch
newAnalyticsReportingUserActivitySearch payload =
  AnalyticsReportingUserActivitySearch
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    AnalyticsReportingUserActivitySearch
  where
  type
    Rs AnalyticsReportingUserActivitySearch =
      SearchUserActivityResponse
  type
    Scopes AnalyticsReportingUserActivitySearch =
      '[Analytics'FullControl, Analytics'Readonly]
  requestClient
    AnalyticsReportingUserActivitySearch {..} =
      go
        xgafv
        accessToken
        callback
        uploadType
        uploadProtocol
        (Core.Just Core.AltJSON)
        payload
        analyticsReportingService
      where
        go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy
                  AnalyticsReportingUserActivitySearchResource
            )
            Core.mempty
