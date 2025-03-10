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
-- Module      : Gogol.Chat.Spaces.List
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists spaces the caller is a member of. Group chats and DMs aren\'t listed until the first message is sent. For an example, see <https://developers.google.com/workspace/chat/list-spaces List spaces>. Supports the following types of <https://developers.google.com/workspace/chat/authenticate-authorize authentication>: - <https://developers.google.com/workspace/chat/authenticate-authorize-chat-app App authentication> - <https://developers.google.com/workspace/chat/authenticate-authorize-chat-user User authentication> To list all named spaces by Google Workspace organization, use the <https://developers.google.com/workspace/chat/api/reference/rest/v1/spaces/search spaces.search()> method using Workspace administrator privileges instead.
--
-- /See:/ <https://developers.google.com/hangouts/chat Google Chat API Reference> for @chat.spaces.list@.
module Gogol.Chat.Spaces.List
  ( -- * Resource
    ChatSpacesListResource,

    -- ** Constructing a Request
    ChatSpacesList (..),
    newChatSpacesList,
  )
where

import Gogol.Chat.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @chat.spaces.list@ method which the
-- 'ChatSpacesList' request conforms to.
type ChatSpacesListResource =
  "v1"
    Core.:> "spaces"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "filter" Core.Text
    Core.:> Core.QueryParam "pageSize" Core.Int32
    Core.:> Core.QueryParam "pageToken" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] ListSpacesResponse

-- | Lists spaces the caller is a member of. Group chats and DMs aren\'t listed until the first message is sent. For an example, see <https://developers.google.com/workspace/chat/list-spaces List spaces>. Supports the following types of <https://developers.google.com/workspace/chat/authenticate-authorize authentication>: - <https://developers.google.com/workspace/chat/authenticate-authorize-chat-app App authentication> - <https://developers.google.com/workspace/chat/authenticate-authorize-chat-user User authentication> To list all named spaces by Google Workspace organization, use the <https://developers.google.com/workspace/chat/api/reference/rest/v1/spaces/search spaces.search()> method using Workspace administrator privileges instead.
--
-- /See:/ 'newChatSpacesList' smart constructor.
data ChatSpacesList = ChatSpacesList
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Optional. A query filter. You can filter spaces by the space type (<https://developers.google.com/workspace/chat/api/reference/rest/v1/spaces#spacetype space_type>). To filter by space type, you must specify valid enum value, such as @SPACE@ or @GROUP_CHAT@ (the @space_type@ can\'t be @SPACE_TYPE_UNSPECIFIED@). To query for multiple space types, use the @OR@ operator. For example, the following queries are valid: @space_type = \"SPACE\" spaceType = \"GROUP_CHAT\" OR spaceType = \"DIRECT_MESSAGE\"@ Invalid queries are rejected by the server with an @INVALID_ARGUMENT@ error.
    filter :: (Core.Maybe Core.Text),
    -- | Optional. The maximum number of spaces to return. The service might return fewer than this value. If unspecified, at most 100 spaces are returned. The maximum value is 1000. If you use a value more than 1000, it\'s automatically changed to 1000. Negative values return an @INVALID_ARGUMENT@ error.
    pageSize :: (Core.Maybe Core.Int32),
    -- | Optional. A page token, received from a previous list spaces call. Provide this parameter to retrieve the subsequent page. When paginating, the filter value should match the call that provided the page token. Passing a different value may lead to unexpected results.
    pageToken :: (Core.Maybe Core.Text),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ChatSpacesList' with the minimum fields required to make a request.
newChatSpacesList ::
  ChatSpacesList
newChatSpacesList =
  ChatSpacesList
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      filter = Core.Nothing,
      pageSize = Core.Nothing,
      pageToken = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest ChatSpacesList where
  type Rs ChatSpacesList = ListSpacesResponse
  type
    Scopes ChatSpacesList =
      '[Chat'Bot, Chat'Spaces, Chat'Spaces'Readonly]
  requestClient ChatSpacesList {..} =
    go
      xgafv
      accessToken
      callback
      filter
      pageSize
      pageToken
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      chatService
    where
      go =
        Core.buildClient
          (Core.Proxy :: Core.Proxy ChatSpacesListResource)
          Core.mempty
