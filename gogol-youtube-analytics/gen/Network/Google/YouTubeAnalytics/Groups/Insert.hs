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
-- Module      : Network.Google.YouTubeAnalytics.Groups.Insert
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a group.
--
-- /See:/ <https://developers.google.com/youtube/analytics YouTube Analytics API Reference> for @youtubeAnalytics.groups.insert@.
module Network.Google.YouTubeAnalytics.Groups.Insert
  ( -- * Resource
    YouTubeAnalyticsGroupsInsertResource,

    -- ** Constructing a Request
    newYouTubeAnalyticsGroupsInsert,
    YouTubeAnalyticsGroupsInsert,
  )
where

import qualified Network.Google.Prelude as Core
import Network.Google.YouTubeAnalytics.Types

-- | A resource alias for @youtubeAnalytics.groups.insert@ method which the
-- 'YouTubeAnalyticsGroupsInsert' request conforms to.
type YouTubeAnalyticsGroupsInsertResource =
  "v2"
    Core.:> "groups"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "onBehalfOfContentOwner" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] Group
    Core.:> Core.Post '[Core.JSON] Group

-- | Creates a group.
--
-- /See:/ 'newYouTubeAnalyticsGroupsInsert' smart constructor.
data YouTubeAnalyticsGroupsInsert = YouTubeAnalyticsGroupsInsert
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | This parameter can only be used in a properly authorized request. __Note:__ This parameter is intended exclusively for YouTube content partners that own and manage many different YouTube channels. The @onBehalfOfContentOwner@ parameter indicates that the request\'s authorization credentials identify a YouTube user who is acting on behalf of the content owner specified in the parameter value. It allows content owners to authenticate once and get access to all their video and channel data, without having to provide authentication credentials for each individual channel. The account that the user authenticates with must be linked to the specified YouTube content owner.
    onBehalfOfContentOwner :: (Core.Maybe Core.Text),
    -- | Multipart request metadata.
    payload :: Group,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'YouTubeAnalyticsGroupsInsert' with the minimum fields required to make a request.
newYouTubeAnalyticsGroupsInsert ::
  -- |  Multipart request metadata. See 'payload'.
  Group ->
  YouTubeAnalyticsGroupsInsert
newYouTubeAnalyticsGroupsInsert payload =
  YouTubeAnalyticsGroupsInsert
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      onBehalfOfContentOwner = Core.Nothing,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    YouTubeAnalyticsGroupsInsert
  where
  type Rs YouTubeAnalyticsGroupsInsert = Group
  type
    Scopes YouTubeAnalyticsGroupsInsert =
      '[ "https://www.googleapis.com/auth/youtube",
         "https://www.googleapis.com/auth/youtube.readonly",
         "https://www.googleapis.com/auth/youtubepartner",
         "https://www.googleapis.com/auth/yt-analytics-monetary.readonly",
         "https://www.googleapis.com/auth/yt-analytics.readonly"
       ]
  requestClient YouTubeAnalyticsGroupsInsert {..} =
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
          ( Core.Proxy ::
              Core.Proxy YouTubeAnalyticsGroupsInsertResource
          )
          Core.mempty
