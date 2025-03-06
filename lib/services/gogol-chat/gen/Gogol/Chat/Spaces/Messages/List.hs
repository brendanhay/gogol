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
-- Module      : Gogol.Chat.Spaces.Messages.List
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists messages in a space that the caller is a member of, including messages from blocked members and spaces. If you list messages from a space with no messages, the response is an empty object. When using a REST\/HTTP interface, the response contains an empty JSON object, @{}@. For an example, see <https://developers.google.com/workspace/chat/api/guides/v1/messages/list List messages>. Requires <https://developers.google.com/workspace/chat/authenticate-authorize-chat-user user authentication>.
--
-- /See:/ <https://developers.google.com/hangouts/chat Google Chat API Reference> for @chat.spaces.messages.list@.
module Gogol.Chat.Spaces.Messages.List
  ( -- * Resource
    ChatSpacesMessagesListResource,

    -- ** Constructing a Request
    ChatSpacesMessagesList (..),
    newChatSpacesMessagesList,
  )
where

import Gogol.Chat.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @chat.spaces.messages.list@ method which the
-- 'ChatSpacesMessagesList' request conforms to.
type ChatSpacesMessagesListResource =
  "v1"
    Core.:> Core.Capture "parent" Core.Text
    Core.:> "messages"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "filter" Core.Text
    Core.:> Core.QueryParam "orderBy" Core.Text
    Core.:> Core.QueryParam "pageSize" Core.Int32
    Core.:> Core.QueryParam "pageToken" Core.Text
    Core.:> Core.QueryParam "showDeleted" Core.Bool
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] ListMessagesResponse

-- | Lists messages in a space that the caller is a member of, including messages from blocked members and spaces. If you list messages from a space with no messages, the response is an empty object. When using a REST\/HTTP interface, the response contains an empty JSON object, @{}@. For an example, see <https://developers.google.com/workspace/chat/api/guides/v1/messages/list List messages>. Requires <https://developers.google.com/workspace/chat/authenticate-authorize-chat-user user authentication>.
--
-- /See:/ 'newChatSpacesMessagesList' smart constructor.
data ChatSpacesMessagesList = ChatSpacesMessagesList
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Optional. A query filter. You can filter messages by date (@create_time@) and thread (@thread.name@). To filter messages by the date they were created, specify the @create_time@ with a timestamp in <https://www.rfc-editor.org/rfc/rfc3339 RFC-3339> format and double quotation marks. For example, @\"2023-04-21T11:30:00-04:00\"@. You can use the greater than operator @>@ to list messages that were created after a timestamp, or the less than operator @\<@ to list messages that were created before a timestamp. To filter messages within a time interval, use the @AND@ operator between two timestamps. To filter by thread, specify the @thread.name@, formatted as @spaces\/{space}\/threads\/{thread}@. You can only specify one @thread.name@ per query. To filter by both thread and date, use the @AND@ operator in your query. For example, the following queries are valid:
    -- @create_time > \"2012-04-21T11:30:00-04:00\" create_time > \"2012-04-21T11:30:00-04:00\" AND thread.name = spaces\/AAAAAAAAAAA\/threads\/123 create_time > \"2012-04-21T11:30:00+00:00\" AND create_time \< \"2013-01-01T00:00:00+00:00\" AND thread.name = spaces\/AAAAAAAAAAA\/threads\/123 thread.name = spaces\/AAAAAAAAAAA\/threads\/123@ Invalid queries are rejected by the server with an @INVALID_ARGUMENT@ error.
    filter :: (Core.Maybe Core.Text),
    -- | Optional. How the list of messages is ordered. Specify a value to order by an ordering operation. Valid ordering operation values are as follows: - @ASC@ for ascending. - @DESC@ for descending. The default ordering is @create_time ASC@.
    orderBy :: (Core.Maybe Core.Text),
    -- | Optional. The maximum number of messages returned. The service might return fewer messages than this value. If unspecified, at most 25 are returned. The maximum value is 1000. If you use a value more than 1000, it\'s automatically changed to 1000. Negative values return an @INVALID_ARGUMENT@ error.
    pageSize :: (Core.Maybe Core.Int32),
    -- | Optional. A page token received from a previous list messages call. Provide this parameter to retrieve the subsequent page. When paginating, all other parameters provided should match the call that provided the page token. Passing different values to the other parameters might lead to unexpected results.
    pageToken :: (Core.Maybe Core.Text),
    -- | Required. The resource name of the space to list messages from. Format: @spaces\/{space}@
    parent :: Core.Text,
    -- | Optional. Whether to include deleted messages. Deleted messages include deleted time and metadata about their deletion, but message content is unavailable.
    showDeleted :: (Core.Maybe Core.Bool),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ChatSpacesMessagesList' with the minimum fields required to make a request.
newChatSpacesMessagesList ::
  -- |  Required. The resource name of the space to list messages from. Format: @spaces\/{space}@ See 'parent'.
  Core.Text ->
  ChatSpacesMessagesList
newChatSpacesMessagesList parent =
  ChatSpacesMessagesList
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      filter = Core.Nothing,
      orderBy = Core.Nothing,
      pageSize = Core.Nothing,
      pageToken = Core.Nothing,
      parent = parent,
      showDeleted = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest ChatSpacesMessagesList where
  type Rs ChatSpacesMessagesList = ListMessagesResponse
  type
    Scopes ChatSpacesMessagesList =
      '[Chat'Import, Chat'Messages, Chat'Messages'Readonly]
  requestClient ChatSpacesMessagesList {..} =
    go
      parent
      xgafv
      accessToken
      callback
      filter
      orderBy
      pageSize
      pageToken
      showDeleted
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      chatService
    where
      go =
        Core.buildClient
          (Core.Proxy :: Core.Proxy ChatSpacesMessagesListResource)
          Core.mempty
