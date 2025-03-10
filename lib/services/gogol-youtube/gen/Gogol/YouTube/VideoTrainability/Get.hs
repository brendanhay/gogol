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
-- Module      : Gogol.YouTube.VideoTrainability.Get
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the trainability status of a video.
--
-- /See:/ <https://developers.google.com/youtube/ YouTube Data API v3 Reference> for @youtube.videoTrainability.get@.
module Gogol.YouTube.VideoTrainability.Get
  ( -- * Resource
    YouTubeVideoTrainabilityGetResource,

    -- ** Constructing a Request
    YouTubeVideoTrainabilityGet (..),
    newYouTubeVideoTrainabilityGet,
  )
where

import Gogol.Prelude qualified as Core
import Gogol.YouTube.Types

-- | A resource alias for @youtube.videoTrainability.get@ method which the
-- 'YouTubeVideoTrainabilityGet' request conforms to.
type YouTubeVideoTrainabilityGetResource =
  "youtube"
    Core.:> "v3"
    Core.:> "videoTrainability"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "id" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] VideoTrainability

-- | Returns the trainability status of a video.
--
-- /See:/ 'newYouTubeVideoTrainabilityGet' smart constructor.
data YouTubeVideoTrainabilityGet = YouTubeVideoTrainabilityGet
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The ID of the video to retrieve.
    id :: (Core.Maybe Core.Text),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'YouTubeVideoTrainabilityGet' with the minimum fields required to make a request.
newYouTubeVideoTrainabilityGet ::
  YouTubeVideoTrainabilityGet
newYouTubeVideoTrainabilityGet =
  YouTubeVideoTrainabilityGet
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      id = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest YouTubeVideoTrainabilityGet where
  type Rs YouTubeVideoTrainabilityGet = VideoTrainability
  type
    Scopes YouTubeVideoTrainabilityGet =
      '[ Youtube'FullControl,
         Youtube'ForceSsl,
         Youtube'Readonly,
         Youtubepartner'FullControl
       ]
  requestClient YouTubeVideoTrainabilityGet {..} =
    go
      xgafv
      accessToken
      callback
      id
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      youTubeService
    where
      go =
        Core.buildClient
          (Core.Proxy :: Core.Proxy YouTubeVideoTrainabilityGetResource)
          Core.mempty
