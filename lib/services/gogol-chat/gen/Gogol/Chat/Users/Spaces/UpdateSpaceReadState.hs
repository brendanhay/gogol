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
-- Module      : Gogol.Chat.Users.Spaces.UpdateSpaceReadState
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates a user\'s read state within a space, used to identify read and unread messages. For an example, see <https://developers.google.com/workspace/chat/update-space-read-state Update a user\'s space read state>. Requires <https://developers.google.com/workspace/chat/authenticate-authorize-chat-user user authentication>.
--
-- /See:/ <https://developers.google.com/hangouts/chat Google Chat API Reference> for @chat.users.spaces.updateSpaceReadState@.
module Gogol.Chat.Users.Spaces.UpdateSpaceReadState
    (
    -- * Resource
      ChatUsersSpacesUpdateSpaceReadStateResource

    -- ** Constructing a Request
    , ChatUsersSpacesUpdateSpaceReadState (..)
    , newChatUsersSpacesUpdateSpaceReadState
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Chat.Types

-- | A resource alias for @chat.users.spaces.updateSpaceReadState@ method which the
-- 'ChatUsersSpacesUpdateSpaceReadState' request conforms to.
type ChatUsersSpacesUpdateSpaceReadStateResource =
     "v1" Core.:>
       Core.Capture "name" Core.Text Core.:>
         Core.QueryParam "$.xgafv" Xgafv Core.:>
           Core.QueryParam "access_token" Core.Text Core.:>
             Core.QueryParam "callback" Core.Text Core.:>
               Core.QueryParam "updateMask" Core.FieldMask Core.:>
                 Core.QueryParam "uploadType" Core.Text Core.:>
                   Core.QueryParam "upload_protocol" Core.Text Core.:>
                     Core.QueryParam "alt" Core.AltJSON Core.:>
                       Core.ReqBody '[Core.JSON] SpaceReadState Core.:>
                         Core.Patch '[Core.JSON] SpaceReadState

-- | Updates a user\'s read state within a space, used to identify read and unread messages. For an example, see <https://developers.google.com/workspace/chat/update-space-read-state Update a user\'s space read state>. Requires <https://developers.google.com/workspace/chat/authenticate-authorize-chat-user user authentication>.
--
-- /See:/ 'newChatUsersSpacesUpdateSpaceReadState' smart constructor.
data ChatUsersSpacesUpdateSpaceReadState = ChatUsersSpacesUpdateSpaceReadState
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Resource name of the space read state. Format: @users\/{user}\/spaces\/{space}\/spaceReadState@
    , name :: Core.Text
      -- | Multipart request metadata.
    , payload :: SpaceReadState
      -- | Required. The field paths to update. Currently supported field paths: - @last_read_time@ When the @last_read_time@ is before the latest message create time, the space appears as unread in the UI. To mark the space as read, set @last_read_time@ to any value later (larger) than the latest message create time. The @last_read_time@ is coerced to match the latest message create time. Note that the space read state only affects the read state of messages that are visible in the space\'s top-level conversation. Replies in threads are unaffected by this timestamp, and instead rely on the thread read state.
    , updateMask :: (Core.Maybe Core.FieldMask)
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ChatUsersSpacesUpdateSpaceReadState' with the minimum fields required to make a request.
newChatUsersSpacesUpdateSpaceReadState 
    ::  Core.Text
       -- ^  Resource name of the space read state. Format: @users\/{user}\/spaces\/{space}\/spaceReadState@ See 'name'.
    -> SpaceReadState
       -- ^  Multipart request metadata. See 'payload'.
    -> ChatUsersSpacesUpdateSpaceReadState
newChatUsersSpacesUpdateSpaceReadState name payload =
  ChatUsersSpacesUpdateSpaceReadState
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , name = name
    , payload = payload
    , updateMask = Core.Nothing
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           ChatUsersSpacesUpdateSpaceReadState
         where
        type Rs ChatUsersSpacesUpdateSpaceReadState =
             SpaceReadState
        type Scopes ChatUsersSpacesUpdateSpaceReadState =
             '[Chat'Users'Readstate]
        requestClient ChatUsersSpacesUpdateSpaceReadState{..}
          = go name xgafv accessToken callback updateMask
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              payload
              chatService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           ChatUsersSpacesUpdateSpaceReadStateResource)
                      Core.mempty

