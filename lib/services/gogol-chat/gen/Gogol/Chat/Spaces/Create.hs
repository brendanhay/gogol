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
-- Module      : Gogol.Chat.Spaces.Create
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a space. Can be used to create a named space, or a group chat in @Import mode@. For an example, see <https://developers.google.com/workspace/chat/create-spaces Create a space>. Supports the following types of <https://developers.google.com/workspace/chat/authenticate-authorize authentication>: - <https://developers.google.com/workspace/chat/authenticate-authorize-chat-app App authentication> with <https://support.google.com/a?p=chat-app-auth administrator approval> in <https://developers.google.com/workspace/preview Developer Preview> - <https://developers.google.com/workspace/chat/authenticate-authorize-chat-user User authentication> When authenticating as an app, the @space.customer@ field must be set in the request. Space membership upon creation depends on whether the space is created in @Import mode@: * __Import mode:__ No members are created. * __All other modes:__ The calling user is added as a member. This is: * The app itself when using app authentication. * The human user when using user
-- authentication. If you receive the error message @ALREADY_EXISTS@ when creating a space, try a different @displayName@. An existing space within the Google Workspace organization might already use this display name.
--
-- /See:/ <https://developers.google.com/hangouts/chat Google Chat API Reference> for @chat.spaces.create@.
module Gogol.Chat.Spaces.Create
  ( -- * Resource
    ChatSpacesCreateResource,

    -- ** Constructing a Request
    ChatSpacesCreate (..),
    newChatSpacesCreate,
  )
where

import Gogol.Chat.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @chat.spaces.create@ method which the
-- 'ChatSpacesCreate' request conforms to.
type ChatSpacesCreateResource =
  "v1"
    Core.:> "spaces"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "requestId" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] Space
    Core.:> Core.Post '[Core.JSON] Space

-- | Creates a space. Can be used to create a named space, or a group chat in @Import mode@. For an example, see <https://developers.google.com/workspace/chat/create-spaces Create a space>. Supports the following types of <https://developers.google.com/workspace/chat/authenticate-authorize authentication>: - <https://developers.google.com/workspace/chat/authenticate-authorize-chat-app App authentication> with <https://support.google.com/a?p=chat-app-auth administrator approval> in <https://developers.google.com/workspace/preview Developer Preview> - <https://developers.google.com/workspace/chat/authenticate-authorize-chat-user User authentication> When authenticating as an app, the @space.customer@ field must be set in the request. Space membership upon creation depends on whether the space is created in @Import mode@: * __Import mode:__ No members are created. * __All other modes:__ The calling user is added as a member. This is: * The app itself when using app authentication. * The human user when using user
-- authentication. If you receive the error message @ALREADY_EXISTS@ when creating a space, try a different @displayName@. An existing space within the Google Workspace organization might already use this display name.
--
-- /See:/ 'newChatSpacesCreate' smart constructor.
data ChatSpacesCreate = ChatSpacesCreate
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Multipart request metadata.
    payload :: Space,
    -- | Optional. A unique identifier for this request. A random UUID is recommended. Specifying an existing request ID returns the space created with that ID instead of creating a new space. Specifying an existing request ID from the same Chat app with a different authenticated user returns an error.
    requestId :: (Core.Maybe Core.Text),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ChatSpacesCreate' with the minimum fields required to make a request.
newChatSpacesCreate ::
  -- |  Multipart request metadata. See 'payload'.
  Space ->
  ChatSpacesCreate
newChatSpacesCreate payload =
  ChatSpacesCreate
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      payload = payload,
      requestId = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest ChatSpacesCreate where
  type Rs ChatSpacesCreate = Space
  type
    Scopes ChatSpacesCreate =
      '[ Chat'App'Spaces,
         Chat'App'Spaces'Create,
         Chat'Import,
         Chat'Spaces,
         Chat'Spaces'Create
       ]
  requestClient ChatSpacesCreate {..} =
    go
      xgafv
      accessToken
      callback
      requestId
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      payload
      chatService
    where
      go =
        Core.buildClient
          (Core.Proxy :: Core.Proxy ChatSpacesCreateResource)
          Core.mempty
