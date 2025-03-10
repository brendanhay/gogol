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
-- Module      : Gogol.Chat.Users.Spaces.SpaceNotificationSetting.Patch
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates the space notification state setting. Requires <https://developers.google.com/workspace/chat/authenticate-authorize-chat-user user authentication>.
--
-- /See:/ <https://developers.google.com/hangouts/chat Google Chat API Reference> for @chat.users.spaces.spaceNotificationSetting.patch@.
module Gogol.Chat.Users.Spaces.SpaceNotificationSetting.Patch
  ( -- * Resource
    ChatUsersSpacesSpaceNotificationSettingPatchResource,

    -- ** Constructing a Request
    ChatUsersSpacesSpaceNotificationSettingPatch (..),
    newChatUsersSpacesSpaceNotificationSettingPatch,
  )
where

import Gogol.Chat.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @chat.users.spaces.spaceNotificationSetting.patch@ method which the
-- 'ChatUsersSpacesSpaceNotificationSettingPatch' request conforms to.
type ChatUsersSpacesSpaceNotificationSettingPatchResource =
  "v1"
    Core.:> Core.Capture "name" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "updateMask" Core.FieldMask
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] SpaceNotificationSetting
    Core.:> Core.Patch '[Core.JSON] SpaceNotificationSetting

-- | Updates the space notification state setting. Requires <https://developers.google.com/workspace/chat/authenticate-authorize-chat-user user authentication>.
--
-- /See:/ 'newChatUsersSpacesSpaceNotificationSettingPatch' smart constructor.
data ChatUsersSpacesSpaceNotificationSettingPatch = ChatUsersSpacesSpaceNotificationSettingPatch
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Identifier. The resource name of the space notification setting. Format: @users\/{user}\/spaces\/{space}\/spaceNotificationSetting@.
    name :: Core.Text,
    -- | Multipart request metadata.
    payload :: SpaceNotificationSetting,
    -- | Required. Supported field paths: - @notification_setting@ - @mute_setting@
    updateMask :: (Core.Maybe Core.FieldMask),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ChatUsersSpacesSpaceNotificationSettingPatch' with the minimum fields required to make a request.
newChatUsersSpacesSpaceNotificationSettingPatch ::
  -- |  Identifier. The resource name of the space notification setting. Format: @users\/{user}\/spaces\/{space}\/spaceNotificationSetting@. See 'name'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  SpaceNotificationSetting ->
  ChatUsersSpacesSpaceNotificationSettingPatch
newChatUsersSpacesSpaceNotificationSettingPatch name payload =
  ChatUsersSpacesSpaceNotificationSettingPatch
    { xgafv =
        Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      name = name,
      payload = payload,
      updateMask = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    ChatUsersSpacesSpaceNotificationSettingPatch
  where
  type
    Rs ChatUsersSpacesSpaceNotificationSettingPatch =
      SpaceNotificationSetting
  type
    Scopes ChatUsersSpacesSpaceNotificationSettingPatch =
      '[Chat'Users'Spacesettings]
  requestClient ChatUsersSpacesSpaceNotificationSettingPatch {..} =
    go
      name
      xgafv
      accessToken
      callback
      updateMask
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      payload
      chatService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy ChatUsersSpacesSpaceNotificationSettingPatchResource
          )
          Core.mempty
