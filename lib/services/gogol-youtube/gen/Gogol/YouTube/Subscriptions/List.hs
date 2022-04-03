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
-- Module      : Gogol.YouTube.Subscriptions.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a list of resources, possibly filtered.
--
-- /See:/ <https://developers.google.com/youtube/ YouTube Data API v3 Reference> for @youtube.subscriptions.list@.
module Gogol.YouTube.Subscriptions.List
  ( -- * Resource
    YouTubeSubscriptionsListResource,

    -- ** Constructing a Request
    YouTubeSubscriptionsList (..),
    newYouTubeSubscriptionsList,
  )
where

import qualified Gogol.Prelude as Core
import Gogol.YouTube.Types

-- | A resource alias for @youtube.subscriptions.list@ method which the
-- 'YouTubeSubscriptionsList' request conforms to.
type YouTubeSubscriptionsListResource =
  "youtube"
    Core.:> "v3"
    Core.:> "subscriptions"
    Core.:> Core.QueryParams "part" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "channelId" Core.Text
    Core.:> Core.QueryParam "forChannelId" Core.Text
    Core.:> Core.QueryParams "id" Core.Text
    Core.:> Core.QueryParam "maxResults" Core.Word32
    Core.:> Core.QueryParam "mine" Core.Bool
    Core.:> Core.QueryParam "myRecentSubscribers" Core.Bool
    Core.:> Core.QueryParam "mySubscribers" Core.Bool
    Core.:> Core.QueryParam
              "onBehalfOfContentOwner"
              Core.Text
    Core.:> Core.QueryParam
              "onBehalfOfContentOwnerChannel"
              Core.Text
    Core.:> Core.QueryParam
              "order"
              SubscriptionsListOrder
    Core.:> Core.QueryParam "pageToken" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam
              "upload_protocol"
              Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get
              '[Core.JSON]
              SubscriptionListResponse

-- | Retrieves a list of resources, possibly filtered.
--
-- /See:/ 'newYouTubeSubscriptionsList' smart constructor.
data YouTubeSubscriptionsList = YouTubeSubscriptionsList
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Return the subscriptions of the given channel owner.
    channelId :: (Core.Maybe Core.Text),
    -- | Return the subscriptions to the subset of these channels that the authenticated user is subscribed to.
    forChannelId :: (Core.Maybe Core.Text),
    -- | Return the subscriptions with the given IDs for Stubby or Apiary.
    id :: (Core.Maybe [Core.Text]),
    -- | The /maxResults/ parameter specifies the maximum number of items that should be returned in the result set.
    maxResults :: Core.Word32,
    -- | Flag for returning the subscriptions of the authenticated user.
    mine :: (Core.Maybe Core.Bool),
    -- |
    myRecentSubscribers :: (Core.Maybe Core.Bool),
    -- | Return the subscribers of the given channel owner.
    mySubscribers :: (Core.Maybe Core.Bool),
    -- | /Note:/ This parameter is intended exclusively for YouTube content partners. The /onBehalfOfContentOwner/ parameter indicates that the request\'s authorization credentials identify a YouTube CMS user who is acting on behalf of the content owner specified in the parameter value. This parameter is intended for YouTube content partners that own and manage many different YouTube channels. It allows content owners to authenticate once and get access to all their video and channel data, without having to provide authentication credentials for each individual channel. The CMS account that the user authenticates with must be linked to the specified YouTube content owner.
    onBehalfOfContentOwner :: (Core.Maybe Core.Text),
    -- | This parameter can only be used in a properly authorized request. /Note:/ This parameter is intended exclusively for YouTube content partners. The /onBehalfOfContentOwnerChannel/ parameter specifies the YouTube channel ID of the channel to which a video is being added. This parameter is required when a request specifies a value for the onBehalfOfContentOwner parameter, and it can only be used in conjunction with that parameter. In addition, the request must be authorized using a CMS account that is linked to the content owner that the onBehalfOfContentOwner parameter specifies. Finally, the channel that the onBehalfOfContentOwnerChannel parameter value specifies must be linked to the content owner that the onBehalfOfContentOwner parameter specifies. This parameter is intended for YouTube content partners that own and manage many different YouTube channels. It allows content owners to authenticate once and perform actions on behalf of the channel specified in the parameter value, without having to provide
    -- authentication credentials for each separate channel.
    onBehalfOfContentOwnerChannel :: (Core.Maybe Core.Text),
    -- | The order of the returned subscriptions
    order :: SubscriptionsListOrder,
    -- | The /pageToken/ parameter identifies a specific page in the result set that should be returned. In an API response, the nextPageToken and prevPageToken properties identify other pages that could be retrieved.
    pageToken :: (Core.Maybe Core.Text),
    -- | The /part/ parameter specifies a comma-separated list of one or more subscription resource properties that the API response will include. If the parameter identifies a property that contains child properties, the child properties will be included in the response. For example, in a subscription resource, the snippet property contains other properties, such as a display title for the subscription. If you set /part=snippet/, the API response will also contain all of those nested properties.
    part :: [Core.Text],
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'YouTubeSubscriptionsList' with the minimum fields required to make a request.
newYouTubeSubscriptionsList ::
  -- |  The /part/ parameter specifies a comma-separated list of one or more subscription resource properties that the API response will include. If the parameter identifies a property that contains child properties, the child properties will be included in the response. For example, in a subscription resource, the snippet property contains other properties, such as a display title for the subscription. If you set /part=snippet/, the API response will also contain all of those nested properties. See 'part'.
  [Core.Text] ->
  YouTubeSubscriptionsList
newYouTubeSubscriptionsList part =
  YouTubeSubscriptionsList
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      channelId = Core.Nothing,
      forChannelId = Core.Nothing,
      id = Core.Nothing,
      maxResults = 5,
      mine = Core.Nothing,
      myRecentSubscribers = Core.Nothing,
      mySubscribers = Core.Nothing,
      onBehalfOfContentOwner = Core.Nothing,
      onBehalfOfContentOwnerChannel = Core.Nothing,
      order = SubscriptionsListOrder_Relevance,
      pageToken = Core.Nothing,
      part = part,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest YouTubeSubscriptionsList where
  type
    Rs YouTubeSubscriptionsList =
      SubscriptionListResponse
  type
    Scopes YouTubeSubscriptionsList =
      '[ Youtube'FullControl,
         Youtube'ForceSsl,
         Youtube'Readonly,
         Youtubepartner'FullControl
       ]
  requestClient YouTubeSubscriptionsList {..} =
    go
      part
      xgafv
      accessToken
      callback
      channelId
      forChannelId
      (id Core.^. Core._Default)
      (Core.Just maxResults)
      mine
      myRecentSubscribers
      mySubscribers
      onBehalfOfContentOwner
      onBehalfOfContentOwnerChannel
      (Core.Just order)
      pageToken
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      youTubeService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy YouTubeSubscriptionsListResource
          )
          Core.mempty
