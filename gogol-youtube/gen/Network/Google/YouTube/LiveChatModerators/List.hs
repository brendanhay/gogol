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
-- Module      : Network.Google.YouTube.LiveChatModerators.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a list of resources, possibly filtered.
--
-- /See:/ <https://developers.google.com/youtube/ YouTube Data API v3 Reference> for @youtube.liveChatModerators.list@.
module Network.Google.YouTube.LiveChatModerators.List
  ( -- * Resource
    YouTubeLiveChatModeratorsListResource,

    -- ** Constructing a Request
    newYouTubeLiveChatModeratorsList,
    YouTubeLiveChatModeratorsList,
  )
where

import qualified Network.Google.Prelude as Core
import Network.Google.YouTube.Types

-- | A resource alias for @youtube.liveChatModerators.list@ method which the
-- 'YouTubeLiveChatModeratorsList' request conforms to.
type YouTubeLiveChatModeratorsListResource =
  "youtube"
    Core.:> "v3"
    Core.:> "liveChat"
    Core.:> "moderators"
    Core.:> Core.QueryParam "liveChatId" Core.Text
    Core.:> Core.QueryParams "part" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "maxResults" Core.Word32
    Core.:> Core.QueryParam "pageToken" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get
              '[Core.JSON]
              LiveChatModeratorListResponse

-- | Retrieves a list of resources, possibly filtered.
--
-- /See:/ 'newYouTubeLiveChatModeratorsList' smart constructor.
data YouTubeLiveChatModeratorsList = YouTubeLiveChatModeratorsList
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The id of the live chat for which moderators should be returned.
    liveChatId :: Core.Text,
    -- | The /maxResults/ parameter specifies the maximum number of items that should be returned in the result set.
    maxResults :: Core.Word32,
    -- | The /pageToken/ parameter identifies a specific page in the result set that should be returned. In an API response, the nextPageToken and prevPageToken properties identify other pages that could be retrieved.
    pageToken :: (Core.Maybe Core.Text),
    -- | The /part/ parameter specifies the liveChatModerator resource parts that the API response will include. Supported values are id and snippet.
    part :: [Core.Text],
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'YouTubeLiveChatModeratorsList' with the minimum fields required to make a request.
newYouTubeLiveChatModeratorsList ::
  -- |  The id of the live chat for which moderators should be returned. See 'liveChatId'.
  Core.Text ->
  -- |  The /part/ parameter specifies the liveChatModerator resource parts that the API response will include. Supported values are id and snippet. See 'part'.
  [Core.Text] ->
  YouTubeLiveChatModeratorsList
newYouTubeLiveChatModeratorsList liveChatId part =
  YouTubeLiveChatModeratorsList
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      liveChatId = liveChatId,
      maxResults = 5,
      pageToken = Core.Nothing,
      part = part,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    YouTubeLiveChatModeratorsList
  where
  type
    Rs YouTubeLiveChatModeratorsList =
      LiveChatModeratorListResponse
  type
    Scopes YouTubeLiveChatModeratorsList =
      '[ "https://www.googleapis.com/auth/youtube",
         "https://www.googleapis.com/auth/youtube.force-ssl",
         "https://www.googleapis.com/auth/youtube.readonly"
       ]
  requestClient YouTubeLiveChatModeratorsList {..} =
    go
      (Core.Just liveChatId)
      part
      xgafv
      accessToken
      callback
      (Core.Just maxResults)
      pageToken
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      youTubeService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy YouTubeLiveChatModeratorsListResource
          )
          Core.mempty
