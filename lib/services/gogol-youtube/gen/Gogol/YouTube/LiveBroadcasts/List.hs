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
-- Module      : Gogol.YouTube.LiveBroadcasts.List
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieve the list of broadcasts associated with the given channel.
--
-- /See:/ <https://developers.google.com/youtube/ YouTube Data API v3 Reference> for @youtube.liveBroadcasts.list@.
module Gogol.YouTube.LiveBroadcasts.List
  ( -- * Resource
    YouTubeLiveBroadcastsListResource,

    -- ** Constructing a Request
    YouTubeLiveBroadcastsList (..),
    newYouTubeLiveBroadcastsList,
  )
where

import Gogol.Prelude qualified as Core
import Gogol.YouTube.Types

-- | A resource alias for @youtube.liveBroadcasts.list@ method which the
-- 'YouTubeLiveBroadcastsList' request conforms to.
type YouTubeLiveBroadcastsListResource =
  "youtube"
    Core.:> "v3"
    Core.:> "liveBroadcasts"
    Core.:> Core.QueryParams "part" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "broadcastStatus" LiveBroadcastsListBroadcastStatus
    Core.:> Core.QueryParam "broadcastType" LiveBroadcastsListBroadcastType
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParams "id" Core.Text
    Core.:> Core.QueryParam "maxResults" Core.Word32
    Core.:> Core.QueryParam "mine" Core.Bool
    Core.:> Core.QueryParam "onBehalfOfContentOwner" Core.Text
    Core.:> Core.QueryParam "onBehalfOfContentOwnerChannel" Core.Text
    Core.:> Core.QueryParam "pageToken" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] LiveBroadcastListResponse

-- | Retrieve the list of broadcasts associated with the given channel.
--
-- /See:/ 'newYouTubeLiveBroadcastsList' smart constructor.
data YouTubeLiveBroadcastsList = YouTubeLiveBroadcastsList
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | Return broadcasts with a certain status, e.g. active broadcasts.
    broadcastStatus :: (Core.Maybe LiveBroadcastsListBroadcastStatus),
    -- | Return only broadcasts with the selected type.
    broadcastType :: LiveBroadcastsListBroadcastType,
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Return broadcasts with the given ids from Stubby or Apiary.
    id :: (Core.Maybe [Core.Text]),
    -- | The /maxResults/ parameter specifies the maximum number of items that should be returned in the result set.
    maxResults :: Core.Word32,
    mine :: (Core.Maybe Core.Bool),
    -- | /Note:/ This parameter is intended exclusively for YouTube content partners. The /onBehalfOfContentOwner/ parameter indicates that the request\'s authorization credentials identify a YouTube CMS user who is acting on behalf of the content owner specified in the parameter value. This parameter is intended for YouTube content partners that own and manage many different YouTube channels. It allows content owners to authenticate once and get access to all their video and channel data, without having to provide authentication credentials for each individual channel. The CMS account that the user authenticates with must be linked to the specified YouTube content owner.
    onBehalfOfContentOwner :: (Core.Maybe Core.Text),
    -- | This parameter can only be used in a properly authorized request. /Note:/ This parameter is intended exclusively for YouTube content partners. The /onBehalfOfContentOwnerChannel/ parameter specifies the YouTube channel ID of the channel to which a video is being added. This parameter is required when a request specifies a value for the onBehalfOfContentOwner parameter, and it can only be used in conjunction with that parameter. In addition, the request must be authorized using a CMS account that is linked to the content owner that the onBehalfOfContentOwner parameter specifies. Finally, the channel that the onBehalfOfContentOwnerChannel parameter value specifies must be linked to the content owner that the onBehalfOfContentOwner parameter specifies. This parameter is intended for YouTube content partners that own and manage many different YouTube channels. It allows content owners to authenticate once and perform actions on behalf of the channel specified in the parameter value, without having to provide
    -- authentication credentials for each separate channel.
    onBehalfOfContentOwnerChannel :: (Core.Maybe Core.Text),
    -- | The /pageToken/ parameter identifies a specific page in the result set that should be returned. In an API response, the nextPageToken and prevPageToken properties identify other pages that could be retrieved.
    pageToken :: (Core.Maybe Core.Text),
    -- | The /part/ parameter specifies a comma-separated list of one or more liveBroadcast resource properties that the API response will include. The part names that you can include in the parameter value are id, snippet, contentDetails, status and statistics.
    part :: [Core.Text],
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'YouTubeLiveBroadcastsList' with the minimum fields required to make a request.
newYouTubeLiveBroadcastsList ::
  -- |  The /part/ parameter specifies a comma-separated list of one or more liveBroadcast resource properties that the API response will include. The part names that you can include in the parameter value are id, snippet, contentDetails, status and statistics. See 'part'.
  [Core.Text] ->
  YouTubeLiveBroadcastsList
newYouTubeLiveBroadcastsList part =
  YouTubeLiveBroadcastsList
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      broadcastStatus = Core.Nothing,
      broadcastType = LiveBroadcastsListBroadcastType_Event,
      callback = Core.Nothing,
      id = Core.Nothing,
      maxResults = 5,
      mine = Core.Nothing,
      onBehalfOfContentOwner = Core.Nothing,
      onBehalfOfContentOwnerChannel = Core.Nothing,
      pageToken = Core.Nothing,
      part = part,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest YouTubeLiveBroadcastsList where
  type Rs YouTubeLiveBroadcastsList = LiveBroadcastListResponse
  type
    Scopes YouTubeLiveBroadcastsList =
      '[Youtube'FullControl, Youtube'ForceSsl, Youtube'Readonly]
  requestClient YouTubeLiveBroadcastsList {..} =
    go
      part
      xgafv
      accessToken
      broadcastStatus
      (Core.Just broadcastType)
      callback
      (id Core.^. Core._Default)
      (Core.Just maxResults)
      mine
      onBehalfOfContentOwner
      onBehalfOfContentOwnerChannel
      pageToken
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      youTubeService
    where
      go =
        Core.buildClient
          (Core.Proxy :: Core.Proxy YouTubeLiveBroadcastsListResource)
          Core.mempty
