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
-- Module      : Gogol.Chat.Spaces.Patch
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates a space. For an example, see <https://developers.google.com/workspace/chat/update-spaces Update a space>. If you\'re updating the @displayName@ field and receive the error message @ALREADY_EXISTS@, try a different display name.. An existing space within the Google Workspace organization might already use this display name. Supports the following types of <https://developers.google.com/workspace/chat/authenticate-authorize authentication>: - <https://developers.google.com/workspace/chat/authenticate-authorize-chat-app App authentication> with <https://support.google.com/a?p=chat-app-auth administrator approval> in <https://developers.google.com/workspace/preview Developer Preview> - <https://developers.google.com/workspace/chat/authenticate-authorize-chat-user User authentication> You can authenticate and authorize this method with administrator privileges by setting the @use_admin_access@ field in the request.
--
-- /See:/ <https://developers.google.com/hangouts/chat Google Chat API Reference> for @chat.spaces.patch@.
module Gogol.Chat.Spaces.Patch
  ( -- * Resource
    ChatSpacesPatchResource,

    -- ** Constructing a Request
    ChatSpacesPatch (..),
    newChatSpacesPatch,
  )
where

import Gogol.Chat.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @chat.spaces.patch@ method which the
-- 'ChatSpacesPatch' request conforms to.
type ChatSpacesPatchResource =
  "v1"
    Core.:> Core.Capture "name" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "updateMask" Core.FieldMask
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "useAdminAccess" Core.Bool
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] Space
    Core.:> Core.Patch '[Core.JSON] Space

-- | Updates a space. For an example, see <https://developers.google.com/workspace/chat/update-spaces Update a space>. If you\'re updating the @displayName@ field and receive the error message @ALREADY_EXISTS@, try a different display name.. An existing space within the Google Workspace organization might already use this display name. Supports the following types of <https://developers.google.com/workspace/chat/authenticate-authorize authentication>: - <https://developers.google.com/workspace/chat/authenticate-authorize-chat-app App authentication> with <https://support.google.com/a?p=chat-app-auth administrator approval> in <https://developers.google.com/workspace/preview Developer Preview> - <https://developers.google.com/workspace/chat/authenticate-authorize-chat-user User authentication> You can authenticate and authorize this method with administrator privileges by setting the @use_admin_access@ field in the request.
--
-- /See:/ 'newChatSpacesPatch' smart constructor.
data ChatSpacesPatch = ChatSpacesPatch
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Identifier. Resource name of the space. Format: @spaces\/{space}@ Where @{space}@ represents the system-assigned ID for the space. You can obtain the space ID by calling the <https://developers.google.com/workspace/chat/api/reference/rest/v1/spaces/list spaces.list()> method or from the space URL. For example, if the space URL is @https:\/\/mail.google.com\/mail\/u\/0\/#chat\/space\/AAAAAAAAA@, the space ID is @AAAAAAAAA@.
    name :: Core.Text,
    -- | Multipart request metadata.
    payload :: Space,
    -- | Required. The updated field paths, comma separated if there are multiple. You can update the following fields for a space: @space_details@: Updates the space\'s description. Supports up to 150 characters. @display_name@: Only supports updating the display name for spaces where @spaceType@ field is @SPACE@. If you receive the error message @ALREADY_EXISTS@, try a different value. An existing space within the Google Workspace organization might already use this display name. @space_type@: Only supports changing a @GROUP_CHAT@ space type to @SPACE@. Include @display_name@ together with @space_type@ in the update mask and ensure that the specified space has a non-empty display name and the @SPACE@ space type. Including the @space_type@ mask and the @SPACE@ type in the specified space when updating the display name is optional if the existing space already has the @SPACE@ type. Trying to update the space type in other ways results in an invalid argument error. @space_type@ is not supported with @useAdminAccess@.
    -- @space_history_state@: Updates <https://support.google.com/chat/answer/7664687 space history settings> by turning history on or off for the space. Only supported if history settings are enabled for the Google Workspace organization. To update the space history state, you must omit all other field masks in your request. @space_history_state@ is not supported with @useAdminAccess@. @access_settings.audience@: Updates the <https://support.google.com/chat/answer/11971020 access setting> of who can discover the space, join the space, and preview the messages in named space where @spaceType@ field is @SPACE@. If the existing space has a target audience, you can remove the audience and restrict space access by omitting a value for this field mask. To update access settings for a space, the authenticating user must be a space manager and omit all other field masks in your request. You can\'t update this field if the space is in <https://developers.google.com/workspace/chat/import-data-overview import mode>. To learn
    -- more, see <https://developers.google.com/workspace/chat/space-target-audience Make a space discoverable to specific users>. @access_settings.audience@ is not supported with @useAdminAccess@. @permission_settings@: Supports changing the <https://support.google.com/chat/answer/13340792 permission settings> of a space. When updating permission settings, you can only specify @permissionSettings@ field masks; you cannot update other field masks at the same time. @permissionSettings@ is not supported with @useAdminAccess@. The supported field masks include: - @permission_settings.manageMembersAndGroups@ - @permission_settings.modifySpaceDetails@ - @permission_settings.toggleHistory@ - @permission_settings.useAtMentionAll@ - @permission_settings.manageApps@ - @permission_settings.manageWebhooks@ - @permission_settings.replyMessages@
    updateMask :: (Core.Maybe Core.FieldMask),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text),
    -- | Optional. When @true@, the method runs using the user\'s Google Workspace administrator privileges. The calling user must be a Google Workspace administrator with the <https://support.google.com/a/answer/13369245 manage chat and spaces conversations privilege>. Requires the @chat.admin.spaces@ <https://developers.google.com/workspace/chat/authenticate-authorize#chat-api-scopes OAuth 2.0 scope>. Some @FieldMask@ values are not supported using admin access. For details, see the description of @update_mask@.
    useAdminAccess :: (Core.Maybe Core.Bool)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ChatSpacesPatch' with the minimum fields required to make a request.
newChatSpacesPatch ::
  -- |  Identifier. Resource name of the space. Format: @spaces\/{space}@ Where @{space}@ represents the system-assigned ID for the space. You can obtain the space ID by calling the <https://developers.google.com/workspace/chat/api/reference/rest/v1/spaces/list spaces.list()> method or from the space URL. For example, if the space URL is @https:\/\/mail.google.com\/mail\/u\/0\/#chat\/space\/AAAAAAAAA@, the space ID is @AAAAAAAAA@. See 'name'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  Space ->
  ChatSpacesPatch
newChatSpacesPatch name payload =
  ChatSpacesPatch
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      name = name,
      payload = payload,
      updateMask = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing,
      useAdminAccess = Core.Nothing
    }

instance Core.GoogleRequest ChatSpacesPatch where
  type Rs ChatSpacesPatch = Space
  type
    Scopes ChatSpacesPatch =
      '[Chat'Admin'Spaces, Chat'App'Spaces, Chat'Import, Chat'Spaces]
  requestClient ChatSpacesPatch {..} =
    go
      name
      xgafv
      accessToken
      callback
      updateMask
      uploadType
      uploadProtocol
      useAdminAccess
      (Core.Just Core.AltJSON)
      payload
      chatService
    where
      go =
        Core.buildClient
          (Core.Proxy :: Core.Proxy ChatSpacesPatchResource)
          Core.mempty
