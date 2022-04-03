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
-- Module      : Gogol.YouTube.LiveChatMessages.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a list of resources, possibly filtered.
--
-- /See:/ <https://developers.google.com/youtube/ YouTube Data API v3 Reference> for @youtube.liveChatMessages.list@.
module Gogol.YouTube.LiveChatMessages.List
  ( -- * Resource
    YouTubeLiveChatMessagesListResource,

    -- ** Constructing a Request
    YouTubeLiveChatMessagesList (..),
    newYouTubeLiveChatMessagesList,
  )
where

import qualified Gogol.Prelude as Core
import Gogol.YouTube.Types

-- | A resource alias for @youtube.liveChatMessages.list@ method which the
-- 'YouTubeLiveChatMessagesList' request conforms to.
type YouTubeLiveChatMessagesListResource =
  "youtube"
    Core.:> "v3"
    Core.:> "liveChat"
    Core.:> "messages"
    Core.:> Core.QueryParam "liveChatId" Core.Text
    Core.:> Core.QueryParams "part" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "hl" Core.Text
    Core.:> Core.QueryParam "maxResults" Core.Word32
    Core.:> Core.QueryParam "pageToken" Core.Text
    Core.:> Core.QueryParam "profileImageSize" Core.Word32
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get
              '[Core.JSON]
              LiveChatMessageListResponse

-- | Retrieves a list of resources, possibly filtered.
--
-- /See:/ 'newYouTubeLiveChatMessagesList' smart constructor.
data YouTubeLiveChatMessagesList = YouTubeLiveChatMessagesList
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Specifies the localization language in which the system messages should be returned.
    hl :: (Core.Maybe Core.Text),
    -- | The id of the live chat for which comments should be returned.
    liveChatId :: Core.Text,
    -- | The /maxResults/ parameter specifies the maximum number of items that should be returned in the result set.
    maxResults :: Core.Word32,
    -- | The /pageToken/ parameter identifies a specific page in the result set that should be returned. In an API response, the nextPageToken property identify other pages that could be retrieved.
    pageToken :: (Core.Maybe Core.Text),
    -- | The /part/ parameter specifies the liveChatComment resource parts that the API response will include. Supported values are id and snippet.
    part :: [Core.Text],
    -- | Specifies the size of the profile image that should be returned for each user.
    profileImageSize :: (Core.Maybe Core.Word32),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'YouTubeLiveChatMessagesList' with the minimum fields required to make a request.
newYouTubeLiveChatMessagesList ::
  -- |  The id of the live chat for which comments should be returned. See 'liveChatId'.
  Core.Text ->
  -- |  The /part/ parameter specifies the liveChatComment resource parts that the API response will include. Supported values are id and snippet. See 'part'.
  [Core.Text] ->
  YouTubeLiveChatMessagesList
newYouTubeLiveChatMessagesList liveChatId part =
  YouTubeLiveChatMessagesList
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      hl = Core.Nothing,
      liveChatId = liveChatId,
      maxResults = 500,
      pageToken = Core.Nothing,
      part = part,
      profileImageSize = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    YouTubeLiveChatMessagesList
  where
  type
    Rs YouTubeLiveChatMessagesList =
      LiveChatMessageListResponse
  type
    Scopes YouTubeLiveChatMessagesList =
      '[ Youtube'FullControl,
         Youtube'ForceSsl,
         Youtube'Readonly
       ]
  requestClient YouTubeLiveChatMessagesList {..} =
    go
      (Core.Just liveChatId)
      part
      xgafv
      accessToken
      callback
      hl
      (Core.Just maxResults)
      pageToken
      profileImageSize
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      youTubeService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy YouTubeLiveChatMessagesListResource
          )
          Core.mempty
