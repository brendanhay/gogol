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
-- Module      : Gogol.YouTube.LiveBroadcasts.Transition
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Transition a broadcast to a given status.
--
-- /See:/ <https://developers.google.com/youtube/ YouTube Data API v3 Reference> for @youtube.liveBroadcasts.transition@.
module Gogol.YouTube.LiveBroadcasts.Transition
  ( -- * Resource
    YouTubeLiveBroadcastsTransitionResource,

    -- ** Constructing a Request
    YouTubeLiveBroadcastsTransition (..),
    newYouTubeLiveBroadcastsTransition,
  )
where

import Gogol.Prelude qualified as Core
import Gogol.YouTube.Types

-- | A resource alias for @youtube.liveBroadcasts.transition@ method which the
-- 'YouTubeLiveBroadcastsTransition' request conforms to.
type YouTubeLiveBroadcastsTransitionResource =
  "youtube"
    Core.:> "v3"
    Core.:> "liveBroadcasts"
    Core.:> "transition"
    Core.:> Core.QueryParam
              "broadcastStatus"
              LiveBroadcastsTransitionBroadcastStatus
    Core.:> Core.QueryParam "id" Core.Text
    Core.:> Core.QueryParams "part" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "onBehalfOfContentOwner" Core.Text
    Core.:> Core.QueryParam "onBehalfOfContentOwnerChannel" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Post '[Core.JSON] LiveBroadcast

-- | Transition a broadcast to a given status.
--
-- /See:/ 'newYouTubeLiveBroadcastsTransition' smart constructor.
data YouTubeLiveBroadcastsTransition = YouTubeLiveBroadcastsTransition
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | The status to which the broadcast is going to transition.
    broadcastStatus :: LiveBroadcastsTransitionBroadcastStatus,
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Broadcast to transition.
    id :: Core.Text,
    -- | /Note:/ This parameter is intended exclusively for YouTube content partners. The /onBehalfOfContentOwner/ parameter indicates that the request\'s authorization credentials identify a YouTube CMS user who is acting on behalf of the content owner specified in the parameter value. This parameter is intended for YouTube content partners that own and manage many different YouTube channels. It allows content owners to authenticate once and get access to all their video and channel data, without having to provide authentication credentials for each individual channel. The CMS account that the user authenticates with must be linked to the specified YouTube content owner.
    onBehalfOfContentOwner :: (Core.Maybe Core.Text),
    -- | This parameter can only be used in a properly authorized request. /Note:/ This parameter is intended exclusively for YouTube content partners. The /onBehalfOfContentOwnerChannel/ parameter specifies the YouTube channel ID of the channel to which a video is being added. This parameter is required when a request specifies a value for the onBehalfOfContentOwner parameter, and it can only be used in conjunction with that parameter. In addition, the request must be authorized using a CMS account that is linked to the content owner that the onBehalfOfContentOwner parameter specifies. Finally, the channel that the onBehalfOfContentOwnerChannel parameter value specifies must be linked to the content owner that the onBehalfOfContentOwner parameter specifies. This parameter is intended for YouTube content partners that own and manage many different YouTube channels. It allows content owners to authenticate once and perform actions on behalf of the channel specified in the parameter value, without having to provide
    -- authentication credentials for each separate channel.
    onBehalfOfContentOwnerChannel :: (Core.Maybe Core.Text),
    -- | The /part/ parameter specifies a comma-separated list of one or more liveBroadcast resource properties that the API response will include. The part names that you can include in the parameter value are id, snippet, contentDetails, and status.
    part :: [Core.Text],
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'YouTubeLiveBroadcastsTransition' with the minimum fields required to make a request.
newYouTubeLiveBroadcastsTransition ::
  -- |  The status to which the broadcast is going to transition. See 'broadcastStatus'.
  LiveBroadcastsTransitionBroadcastStatus ->
  -- |  Broadcast to transition. See 'id'.
  Core.Text ->
  -- |  The /part/ parameter specifies a comma-separated list of one or more liveBroadcast resource properties that the API response will include. The part names that you can include in the parameter value are id, snippet, contentDetails, and status. See 'part'.
  [Core.Text] ->
  YouTubeLiveBroadcastsTransition
newYouTubeLiveBroadcastsTransition broadcastStatus id part =
  YouTubeLiveBroadcastsTransition
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      broadcastStatus = broadcastStatus,
      callback = Core.Nothing,
      id = id,
      onBehalfOfContentOwner = Core.Nothing,
      onBehalfOfContentOwnerChannel = Core.Nothing,
      part = part,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest YouTubeLiveBroadcastsTransition where
  type Rs YouTubeLiveBroadcastsTransition = LiveBroadcast
  type
    Scopes YouTubeLiveBroadcastsTransition =
      '[Youtube'FullControl, Youtube'ForceSsl]
  requestClient YouTubeLiveBroadcastsTransition {..} =
    go
      (Core.Just broadcastStatus)
      (Core.Just id)
      part
      xgafv
      accessToken
      callback
      onBehalfOfContentOwner
      onBehalfOfContentOwnerChannel
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      youTubeService
    where
      go =
        Core.buildClient
          (Core.Proxy :: Core.Proxy YouTubeLiveBroadcastsTransitionResource)
          Core.mempty
