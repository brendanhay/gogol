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
-- Module      : Gogol.Chat.Spaces.SpaceEvents.Get
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns an event from a Google Chat space. The <https://developers.google.com/workspace/chat/api/reference/rest/v1/spaces.spaceEvents#SpaceEvent.FIELDS.oneof_payload event payload> contains the most recent version of the resource that changed. For example, if you request an event about a new message but the message was later updated, the server returns the updated @Message@ resource in the event payload. Note: The @permissionSettings@ field is not returned in the Space object of the Space event data for this request. Requires <https://developers.google.com/workspace/chat/authenticate-authorize-chat-user user authentication>. To get an event, the authenticated user must be a member of the space. For an example, see <https://developers.google.com/workspace/chat/get-space-event Get details about an event from a Google Chat space>.
--
-- /See:/ <https://developers.google.com/hangouts/chat Google Chat API Reference> for @chat.spaces.spaceEvents.get@.
module Gogol.Chat.Spaces.SpaceEvents.Get
  ( -- * Resource
    ChatSpacesSpaceEventsGetResource,

    -- ** Constructing a Request
    ChatSpacesSpaceEventsGet (..),
    newChatSpacesSpaceEventsGet,
  )
where

import Gogol.Chat.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @chat.spaces.spaceEvents.get@ method which the
-- 'ChatSpacesSpaceEventsGet' request conforms to.
type ChatSpacesSpaceEventsGetResource =
  "v1"
    Core.:> Core.Capture "name" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] SpaceEvent

-- | Returns an event from a Google Chat space. The <https://developers.google.com/workspace/chat/api/reference/rest/v1/spaces.spaceEvents#SpaceEvent.FIELDS.oneof_payload event payload> contains the most recent version of the resource that changed. For example, if you request an event about a new message but the message was later updated, the server returns the updated @Message@ resource in the event payload. Note: The @permissionSettings@ field is not returned in the Space object of the Space event data for this request. Requires <https://developers.google.com/workspace/chat/authenticate-authorize-chat-user user authentication>. To get an event, the authenticated user must be a member of the space. For an example, see <https://developers.google.com/workspace/chat/get-space-event Get details about an event from a Google Chat space>.
--
-- /See:/ 'newChatSpacesSpaceEventsGet' smart constructor.
data ChatSpacesSpaceEventsGet = ChatSpacesSpaceEventsGet
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The resource name of the space event. Format: @spaces\/{space}\/spaceEvents\/{spaceEvent}@
    name :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ChatSpacesSpaceEventsGet' with the minimum fields required to make a request.
newChatSpacesSpaceEventsGet ::
  -- |  Required. The resource name of the space event. Format: @spaces\/{space}\/spaceEvents\/{spaceEvent}@ See 'name'.
  Core.Text ->
  ChatSpacesSpaceEventsGet
newChatSpacesSpaceEventsGet name =
  ChatSpacesSpaceEventsGet
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      name = name,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest ChatSpacesSpaceEventsGet where
  type Rs ChatSpacesSpaceEventsGet = SpaceEvent
  type
    Scopes ChatSpacesSpaceEventsGet =
      '[ Chat'Memberships,
         Chat'Memberships'Readonly,
         Chat'Messages,
         Chat'Messages'Reactions,
         Chat'Messages'Reactions'Readonly,
         Chat'Messages'Readonly,
         Chat'Spaces,
         Chat'Spaces'Readonly
       ]
  requestClient ChatSpacesSpaceEventsGet {..} =
    go
      name
      xgafv
      accessToken
      callback
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      chatService
    where
      go =
        Core.buildClient
          (Core.Proxy :: Core.Proxy ChatSpacesSpaceEventsGetResource)
          Core.mempty
