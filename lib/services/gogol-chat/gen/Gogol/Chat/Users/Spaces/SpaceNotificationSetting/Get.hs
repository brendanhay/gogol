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
-- Module      : Gogol.Chat.Users.Spaces.SpaceNotificationSetting.Get
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the space notification state setting. Requires <https://developers.google.com/workspace/chat/authenticate-authorize-chat-user user authentication>.
--
-- /See:/ <https://developers.google.com/hangouts/chat Google Chat API Reference> for @chat.users.spaces.spaceNotificationSetting.get@.
module Gogol.Chat.Users.Spaces.SpaceNotificationSetting.Get
  ( -- * Resource
    ChatUsersSpacesSpaceNotificationSettingGetResource,

    -- ** Constructing a Request
    ChatUsersSpacesSpaceNotificationSettingGet (..),
    newChatUsersSpacesSpaceNotificationSettingGet,
  )
where

import Gogol.Chat.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @chat.users.spaces.spaceNotificationSetting.get@ method which the
-- 'ChatUsersSpacesSpaceNotificationSettingGet' request conforms to.
type ChatUsersSpacesSpaceNotificationSettingGetResource =
  "v1"
    Core.:> Core.Capture "name" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] SpaceNotificationSetting

-- | Gets the space notification state setting. Requires <https://developers.google.com/workspace/chat/authenticate-authorize-chat-user user authentication>.
--
-- /See:/ 'newChatUsersSpacesSpaceNotificationSettingGet' smart constructor.
data ChatUsersSpacesSpaceNotificationSettingGet = ChatUsersSpacesSpaceNotificationSettingGet
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. Format: users\/{user}\/spaces\/{space}\/spaceNotificationSetting - @users\/me\/spaces\/{space}\/spaceNotificationSetting@, OR - @users\/user\@example.com\/spaces\/{space}\/spaceNotificationSetting@, OR - @users\/123456789\/spaces\/{space}\/spaceNotificationSetting@. Note: Only the caller\'s user id or email is allowed in the path.
    name :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ChatUsersSpacesSpaceNotificationSettingGet' with the minimum fields required to make a request.
newChatUsersSpacesSpaceNotificationSettingGet ::
  -- |  Required. Format: users\/{user}\/spaces\/{space}\/spaceNotificationSetting - @users\/me\/spaces\/{space}\/spaceNotificationSetting@, OR - @users\/user\@example.com\/spaces\/{space}\/spaceNotificationSetting@, OR - @users\/123456789\/spaces\/{space}\/spaceNotificationSetting@. Note: Only the caller\'s user id or email is allowed in the path. See 'name'.
  Core.Text ->
  ChatUsersSpacesSpaceNotificationSettingGet
newChatUsersSpacesSpaceNotificationSettingGet name =
  ChatUsersSpacesSpaceNotificationSettingGet
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      name = name,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    ChatUsersSpacesSpaceNotificationSettingGet
  where
  type
    Rs ChatUsersSpacesSpaceNotificationSettingGet =
      SpaceNotificationSetting
  type
    Scopes ChatUsersSpacesSpaceNotificationSettingGet =
      '[Chat'Users'Spacesettings]
  requestClient ChatUsersSpacesSpaceNotificationSettingGet {..} =
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
          ( Core.Proxy ::
              Core.Proxy ChatUsersSpacesSpaceNotificationSettingGetResource
          )
          Core.mempty
