{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.Chat.Spaces.Members.Delete
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a membership. For an example, see <https://developers.google.com/workspace/chat/delete-members Remove a user or a Google Chat app from a space>. Supports the following types of <https://developers.google.com/workspace/chat/authenticate-authorize authentication>: - <https://developers.google.com/workspace/chat/authenticate-authorize-chat-app App authentication> with <https://support.google.com/a?p=chat-app-auth administrator approval> in <https://developers.google.com/workspace/preview Developer Preview> - <https://developers.google.com/workspace/chat/authenticate-authorize-chat-user User authentication> You can authenticate and authorize this method with administrator privileges by setting the @use_admin_access@ field in the request.
--
-- /See:/ <https://developers.google.com/hangouts/chat Google Chat API Reference> for @chat.spaces.members.delete@.
module Gogol.Chat.Spaces.Members.Delete
    (
    -- * Resource
      ChatSpacesMembersDeleteResource

    -- ** Constructing a Request
    , ChatSpacesMembersDelete (..)
    , newChatSpacesMembersDelete
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Chat.Types

-- | A resource alias for @chat.spaces.members.delete@ method which the
-- 'ChatSpacesMembersDelete' request conforms to.
type ChatSpacesMembersDeleteResource =
     "v1" Core.:>
       Core.Capture "name" Core.Text Core.:>
         Core.QueryParam "$.xgafv" Xgafv Core.:>
           Core.QueryParam "access_token" Core.Text Core.:>
             Core.QueryParam "callback" Core.Text Core.:>
               Core.QueryParam "uploadType" Core.Text Core.:>
                 Core.QueryParam "upload_protocol" Core.Text Core.:>
                   Core.QueryParam "useAdminAccess" Core.Bool Core.:>
                     Core.QueryParam "alt" Core.AltJSON Core.:>
                       Core.Delete '[Core.JSON] Membership

-- | Deletes a membership. For an example, see <https://developers.google.com/workspace/chat/delete-members Remove a user or a Google Chat app from a space>. Supports the following types of <https://developers.google.com/workspace/chat/authenticate-authorize authentication>: - <https://developers.google.com/workspace/chat/authenticate-authorize-chat-app App authentication> with <https://support.google.com/a?p=chat-app-auth administrator approval> in <https://developers.google.com/workspace/preview Developer Preview> - <https://developers.google.com/workspace/chat/authenticate-authorize-chat-user User authentication> You can authenticate and authorize this method with administrator privileges by setting the @use_admin_access@ field in the request.
--
-- /See:/ 'newChatSpacesMembersDelete' smart constructor.
data ChatSpacesMembersDelete = ChatSpacesMembersDelete
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Required. Resource name of the membership to delete. Chat apps can delete human users\' or their own memberships. Chat apps can\'t delete other apps\' memberships. When deleting a human membership, requires the @chat.memberships@ scope and @spaces\/{space}\/members\/{member}@ format. You can use the email as an alias for @{member}@. For example, @spaces\/{space}\/members\/example\@gmail.com@ where @example\@gmail.com@ is the email of the Google Chat user. When deleting an app membership, requires the @chat.memberships.app@ scope and @spaces\/{space}\/members\/app@ format. Format: @spaces\/{space}\/members\/{member}@ or @spaces\/{space}\/members\/app@.
    , name :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
      -- | Optional. When @true@, the method runs using the user\'s Google Workspace administrator privileges. The calling user must be a Google Workspace administrator with the <https://support.google.com/a/answer/13369245 manage chat and spaces conversations privilege>. Requires the @chat.admin.memberships@ <https://developers.google.com/workspace/chat/authenticate-authorize#chat-api-scopes OAuth 2.0 scope>. Deleting app memberships in a space isn\'t supported using admin access.
    , useAdminAccess :: (Core.Maybe Core.Bool)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ChatSpacesMembersDelete' with the minimum fields required to make a request.
newChatSpacesMembersDelete 
    ::  Core.Text
       -- ^  Required. Resource name of the membership to delete. Chat apps can delete human users\' or their own memberships. Chat apps can\'t delete other apps\' memberships. When deleting a human membership, requires the @chat.memberships@ scope and @spaces\/{space}\/members\/{member}@ format. You can use the email as an alias for @{member}@. For example, @spaces\/{space}\/members\/example\@gmail.com@ where @example\@gmail.com@ is the email of the Google Chat user. When deleting an app membership, requires the @chat.memberships.app@ scope and @spaces\/{space}\/members\/app@ format. Format: @spaces\/{space}\/members\/{member}@ or @spaces\/{space}\/members\/app@. See 'name'.
    -> ChatSpacesMembersDelete
newChatSpacesMembersDelete name =
  ChatSpacesMembersDelete
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , name = name
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    , useAdminAccess = Core.Nothing
    }

instance Core.GoogleRequest ChatSpacesMembersDelete
         where
        type Rs ChatSpacesMembersDelete = Membership
        type Scopes ChatSpacesMembersDelete =
             '[Chat'Admin'Memberships, Chat'App'Memberships,
               Chat'Import, Chat'Memberships, Chat'Memberships'App]
        requestClient ChatSpacesMembersDelete{..}
          = go name xgafv accessToken callback uploadType
              uploadProtocol
              useAdminAccess
              (Core.Just Core.AltJSON)
              chatService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy ChatSpacesMembersDeleteResource)
                      Core.mempty

