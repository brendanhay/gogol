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
-- Module      : Gogol.YouTube.LiveChatMessages.Transition
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Transition a durable chat event.
--
-- /See:/ <https://developers.google.com/youtube/ YouTube Data API v3 Reference> for @youtube.liveChatMessages.transition@.
module Gogol.YouTube.LiveChatMessages.Transition
  ( -- * Resource
    YouTubeLiveChatMessagesTransitionResource,

    -- ** Constructing a Request
    YouTubeLiveChatMessagesTransition (..),
    newYouTubeLiveChatMessagesTransition,
  )
where

import Gogol.Prelude qualified as Core
import Gogol.YouTube.Types

-- | A resource alias for @youtube.liveChatMessages.transition@ method which the
-- 'YouTubeLiveChatMessagesTransition' request conforms to.
type YouTubeLiveChatMessagesTransitionResource =
  "youtube"
    Core.:> "v3"
    Core.:> "liveChat"
    Core.:> "messages"
    Core.:> "transition"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "id" Core.Text
    Core.:> Core.QueryParam "status" LiveChatMessagesTransitionStatus
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Post '[Core.JSON] LiveChatMessage

-- | Transition a durable chat event.
--
-- /See:/ 'newYouTubeLiveChatMessagesTransition' smart constructor.
data YouTubeLiveChatMessagesTransition = YouTubeLiveChatMessagesTransition
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The ID that uniquely identify the chat message event to transition.
    id :: (Core.Maybe Core.Text),
    -- | The status to which the chat event is going to transition.
    status :: (Core.Maybe LiveChatMessagesTransitionStatus),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'YouTubeLiveChatMessagesTransition' with the minimum fields required to make a request.
newYouTubeLiveChatMessagesTransition ::
  YouTubeLiveChatMessagesTransition
newYouTubeLiveChatMessagesTransition =
  YouTubeLiveChatMessagesTransition
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      id = Core.Nothing,
      status = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest YouTubeLiveChatMessagesTransition where
  type Rs YouTubeLiveChatMessagesTransition = LiveChatMessage
  type
    Scopes YouTubeLiveChatMessagesTransition =
      '[Youtube'FullControl, Youtube'ForceSsl]
  requestClient YouTubeLiveChatMessagesTransition {..} =
    go
      xgafv
      accessToken
      callback
      id
      status
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      youTubeService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy YouTubeLiveChatMessagesTransitionResource
          )
          Core.mempty
