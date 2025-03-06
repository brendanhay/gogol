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
-- Module      : Gogol.YouTube.AbuseReports.Insert
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Inserts a new resource into this collection.
--
-- /See:/ <https://developers.google.com/youtube/ YouTube Data API v3 Reference> for @youtube.abuseReports.insert@.
module Gogol.YouTube.AbuseReports.Insert
  ( -- * Resource
    YouTubeAbuseReportsInsertResource,

    -- ** Constructing a Request
    YouTubeAbuseReportsInsert (..),
    newYouTubeAbuseReportsInsert,
  )
where

import Gogol.Prelude qualified as Core
import Gogol.YouTube.Types

-- | A resource alias for @youtube.abuseReports.insert@ method which the
-- 'YouTubeAbuseReportsInsert' request conforms to.
type YouTubeAbuseReportsInsertResource =
  "youtube"
    Core.:> "v3"
    Core.:> "abuseReports"
    Core.:> Core.QueryParams "part" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] AbuseReport
    Core.:> Core.Post '[Core.JSON] AbuseReport

-- | Inserts a new resource into this collection.
--
-- /See:/ 'newYouTubeAbuseReportsInsert' smart constructor.
data YouTubeAbuseReportsInsert = YouTubeAbuseReportsInsert
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The /part/ parameter serves two purposes in this operation. It identifies the properties that the write operation will set as well as the properties that the API response will include.
    part :: [Core.Text],
    -- | Multipart request metadata.
    payload :: AbuseReport,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'YouTubeAbuseReportsInsert' with the minimum fields required to make a request.
newYouTubeAbuseReportsInsert ::
  -- |  The /part/ parameter serves two purposes in this operation. It identifies the properties that the write operation will set as well as the properties that the API response will include. See 'part'.
  [Core.Text] ->
  -- |  Multipart request metadata. See 'payload'.
  AbuseReport ->
  YouTubeAbuseReportsInsert
newYouTubeAbuseReportsInsert part payload =
  YouTubeAbuseReportsInsert
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      part = part,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest YouTubeAbuseReportsInsert where
  type Rs YouTubeAbuseReportsInsert = AbuseReport
  type
    Scopes YouTubeAbuseReportsInsert =
      '[Youtube'FullControl, Youtube'ForceSsl]
  requestClient YouTubeAbuseReportsInsert {..} =
    go
      part
      xgafv
      accessToken
      callback
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      payload
      youTubeService
    where
      go =
        Core.buildClient
          (Core.Proxy :: Core.Proxy YouTubeAbuseReportsInsertResource)
          Core.mempty
