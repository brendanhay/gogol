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
-- Module      : Gogol.YouTube.LiveChatMessages.Delete
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a chat message.
--
-- /See:/ <https://developers.google.com/youtube/ YouTube Data API v3 Reference> for @youtube.liveChatMessages.delete@.
module Gogol.YouTube.LiveChatMessages.Delete
  ( -- * Resource
    YouTubeLiveChatMessagesDeleteResource,

    -- ** Constructing a Request
    YouTubeLiveChatMessagesDelete (..),
    newYouTubeLiveChatMessagesDelete,
  )
where

import Gogol.Prelude qualified as Core
import Gogol.YouTube.Types

-- | A resource alias for @youtube.liveChatMessages.delete@ method which the
-- 'YouTubeLiveChatMessagesDelete' request conforms to.
type YouTubeLiveChatMessagesDeleteResource =
  "youtube"
    Core.:> "v3"
    Core.:> "liveChat"
    Core.:> "messages"
    Core.:> Core.QueryParam "id" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Delete '[Core.JSON] ()

-- | Deletes a chat message.
--
-- /See:/ 'newYouTubeLiveChatMessagesDelete' smart constructor.
data YouTubeLiveChatMessagesDelete = YouTubeLiveChatMessagesDelete
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    id :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'YouTubeLiveChatMessagesDelete' with the minimum fields required to make a request.
newYouTubeLiveChatMessagesDelete ::
  -- |  See 'id'.
  Core.Text ->
  YouTubeLiveChatMessagesDelete
newYouTubeLiveChatMessagesDelete id =
  YouTubeLiveChatMessagesDelete
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      id = id,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest YouTubeLiveChatMessagesDelete where
  type Rs YouTubeLiveChatMessagesDelete = ()
  type
    Scopes YouTubeLiveChatMessagesDelete =
      '[Youtube'FullControl, Youtube'ForceSsl]
  requestClient YouTubeLiveChatMessagesDelete {..} =
    go
      (Core.Just id)
      xgafv
      accessToken
      callback
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      youTubeService
    where
      go =
        Core.buildClient
          (Core.Proxy :: Core.Proxy YouTubeLiveChatMessagesDeleteResource)
          Core.mempty
