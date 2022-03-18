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
-- Module      : Network.Google.YouTubeAnalytics.GroupItems.Delete
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Removes an item from a group.
--
-- /See:/ <https://developers.google.com/youtube/analytics YouTube Analytics API Reference> for @youtubeAnalytics.groupItems.delete@.
module Network.Google.YouTubeAnalytics.GroupItems.Delete
  ( -- * Resource
    YouTubeAnalyticsGroupItemsDeleteResource,

    -- ** Constructing a Request
    newYouTubeAnalyticsGroupItemsDelete,
    YouTubeAnalyticsGroupItemsDelete,
  )
where

import qualified Network.Google.Prelude as Core
import Network.Google.YouTubeAnalytics.Types

-- | A resource alias for @youtubeAnalytics.groupItems.delete@ method which the
-- 'YouTubeAnalyticsGroupItemsDelete' request conforms to.
type YouTubeAnalyticsGroupItemsDeleteResource =
  "v2"
    Core.:> "groupItems"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "id" Core.Text
    Core.:> Core.QueryParam "onBehalfOfContentOwner" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Delete '[Core.JSON] EmptyResponse

-- | Removes an item from a group.
--
-- /See:/ 'newYouTubeAnalyticsGroupItemsDelete' smart constructor.
data YouTubeAnalyticsGroupItemsDelete = YouTubeAnalyticsGroupItemsDelete
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The @id@ parameter specifies the YouTube group item ID of the group item that is being deleted.
    id :: (Core.Maybe Core.Text),
    -- | This parameter can only be used in a properly authorized request. __Note:__ This parameter is intended exclusively for YouTube content partners that own and manage many different YouTube channels. The @onBehalfOfContentOwner@ parameter indicates that the request\'s authorization credentials identify a YouTube user who is acting on behalf of the content owner specified in the parameter value. It allows content owners to authenticate once and get access to all their video and channel data, without having to provide authentication credentials for each individual channel. The account that the user authenticates with must be linked to the specified YouTube content owner.
    onBehalfOfContentOwner :: (Core.Maybe Core.Text),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'YouTubeAnalyticsGroupItemsDelete' with the minimum fields required to make a request.
newYouTubeAnalyticsGroupItemsDelete ::
  YouTubeAnalyticsGroupItemsDelete
newYouTubeAnalyticsGroupItemsDelete =
  YouTubeAnalyticsGroupItemsDelete
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      id = Core.Nothing,
      onBehalfOfContentOwner = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    YouTubeAnalyticsGroupItemsDelete
  where
  type
    Rs YouTubeAnalyticsGroupItemsDelete =
      EmptyResponse
  type
    Scopes YouTubeAnalyticsGroupItemsDelete =
      '[ "https://www.googleapis.com/auth/youtube",
         "https://www.googleapis.com/auth/youtube.readonly",
         "https://www.googleapis.com/auth/youtubepartner",
         "https://www.googleapis.com/auth/yt-analytics-monetary.readonly",
         "https://www.googleapis.com/auth/yt-analytics.readonly"
       ]
  requestClient YouTubeAnalyticsGroupItemsDelete {..} =
    go
      xgafv
      accessToken
      callback
      id
      onBehalfOfContentOwner
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      youTubeAnalyticsService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy YouTubeAnalyticsGroupItemsDeleteResource
          )
          Core.mempty
