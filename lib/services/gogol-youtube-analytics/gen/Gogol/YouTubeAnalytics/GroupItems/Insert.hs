{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE ImportQualifiedPost #-}
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
-- Module      : Gogol.YouTubeAnalytics.GroupItems.Insert
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a group item.
--
-- /See:/ <https://developers.google.com/youtube/analytics YouTube Analytics API Reference> for @youtubeAnalytics.groupItems.insert@.
module Gogol.YouTubeAnalytics.GroupItems.Insert
  ( -- * Resource
    YouTubeAnalyticsGroupItemsInsertResource,

    -- ** Constructing a Request
    YouTubeAnalyticsGroupItemsInsert (..),
    newYouTubeAnalyticsGroupItemsInsert,
  )
where

import Gogol.Prelude qualified as Core
import Gogol.YouTubeAnalytics.Types

-- | A resource alias for @youtubeAnalytics.groupItems.insert@ method which the
-- 'YouTubeAnalyticsGroupItemsInsert' request conforms to.
type YouTubeAnalyticsGroupItemsInsertResource =
  "v2"
    Core.:> "groupItems"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "onBehalfOfContentOwner" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] GroupItem
    Core.:> Core.Post '[Core.JSON] GroupItem

-- | Creates a group item.
--
-- /See:/ 'newYouTubeAnalyticsGroupItemsInsert' smart constructor.
data YouTubeAnalyticsGroupItemsInsert = YouTubeAnalyticsGroupItemsInsert
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | This parameter can only be used in a properly authorized request. __Note:__ This parameter is intended exclusively for YouTube content partners that own and manage many different YouTube channels. The @onBehalfOfContentOwner@ parameter indicates that the request\'s authorization credentials identify a YouTube user who is acting on behalf of the content owner specified in the parameter value. It allows content owners to authenticate once and get access to all their video and channel data, without having to provide authentication credentials for each individual channel. The account that the user authenticates with must be linked to the specified YouTube content owner.
    onBehalfOfContentOwner :: (Core.Maybe Core.Text),
    -- | Multipart request metadata.
    payload :: GroupItem,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'YouTubeAnalyticsGroupItemsInsert' with the minimum fields required to make a request.
newYouTubeAnalyticsGroupItemsInsert ::
  -- |  Multipart request metadata. See 'payload'.
  GroupItem ->
  YouTubeAnalyticsGroupItemsInsert
newYouTubeAnalyticsGroupItemsInsert payload =
  YouTubeAnalyticsGroupItemsInsert
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      onBehalfOfContentOwner = Core.Nothing,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest YouTubeAnalyticsGroupItemsInsert where
  type Rs YouTubeAnalyticsGroupItemsInsert = GroupItem
  type
    Scopes YouTubeAnalyticsGroupItemsInsert =
      '[ Youtube'FullControl,
         Youtube'Readonly,
         Youtubepartner'FullControl,
         YtAnalyticsMonetary'Readonly,
         YtAnalytics'Readonly
       ]
  requestClient YouTubeAnalyticsGroupItemsInsert {..} =
    go
      xgafv
      accessToken
      callback
      onBehalfOfContentOwner
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      payload
      youTubeAnalyticsService
    where
      go =
        Core.buildClient
          (Core.Proxy :: Core.Proxy YouTubeAnalyticsGroupItemsInsertResource)
          Core.mempty
