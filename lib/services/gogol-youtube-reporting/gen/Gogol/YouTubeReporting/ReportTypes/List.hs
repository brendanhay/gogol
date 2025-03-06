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
-- Module      : Gogol.YouTubeReporting.ReportTypes.List
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists report types.
--
-- /See:/ <https://developers.google.com/youtube/reporting/v1/reports/ YouTube Reporting API Reference> for @youtubereporting.reportTypes.list@.
module Gogol.YouTubeReporting.ReportTypes.List
  ( -- * Resource
    YouTubeReportingReportTypesListResource,

    -- ** Constructing a Request
    YouTubeReportingReportTypesList (..),
    newYouTubeReportingReportTypesList,
  )
where

import Gogol.Prelude qualified as Core
import Gogol.YouTubeReporting.Types

-- | A resource alias for @youtubereporting.reportTypes.list@ method which the
-- 'YouTubeReportingReportTypesList' request conforms to.
type YouTubeReportingReportTypesListResource =
  "v1"
    Core.:> "reportTypes"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "includeSystemManaged" Core.Bool
    Core.:> Core.QueryParam "onBehalfOfContentOwner" Core.Text
    Core.:> Core.QueryParam "pageSize" Core.Int32
    Core.:> Core.QueryParam "pageToken" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] ListReportTypesResponse

-- | Lists report types.
--
-- /See:/ 'newYouTubeReportingReportTypesList' smart constructor.
data YouTubeReportingReportTypesList = YouTubeReportingReportTypesList
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | If set to true, also system-managed report types will be returned; otherwise only the report types that can be used to create new reporting jobs will be returned.
    includeSystemManaged :: (Core.Maybe Core.Bool),
    -- | The content owner\'s external ID on which behalf the user is acting on. If not set, the user is acting for himself (his own channel).
    onBehalfOfContentOwner :: (Core.Maybe Core.Text),
    -- | Requested page size. Server may return fewer report types than requested. If unspecified, server will pick an appropriate default.
    pageSize :: (Core.Maybe Core.Int32),
    -- | A token identifying a page of results the server should return. Typically, this is the value of ListReportTypesResponse.next/page/token returned in response to the previous call to the @ListReportTypes@ method.
    pageToken :: (Core.Maybe Core.Text),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'YouTubeReportingReportTypesList' with the minimum fields required to make a request.
newYouTubeReportingReportTypesList ::
  YouTubeReportingReportTypesList
newYouTubeReportingReportTypesList =
  YouTubeReportingReportTypesList
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      includeSystemManaged = Core.Nothing,
      onBehalfOfContentOwner = Core.Nothing,
      pageSize = Core.Nothing,
      pageToken = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest YouTubeReportingReportTypesList where
  type Rs YouTubeReportingReportTypesList = ListReportTypesResponse
  type
    Scopes YouTubeReportingReportTypesList =
      '[YtAnalyticsMonetary'Readonly, YtAnalytics'Readonly]
  requestClient YouTubeReportingReportTypesList {..} =
    go
      xgafv
      accessToken
      callback
      includeSystemManaged
      onBehalfOfContentOwner
      pageSize
      pageToken
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      youTubeReportingService
    where
      go =
        Core.buildClient
          (Core.Proxy :: Core.Proxy YouTubeReportingReportTypesListResource)
          Core.mempty
