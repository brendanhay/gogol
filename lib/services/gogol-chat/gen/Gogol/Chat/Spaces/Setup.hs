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
-- Module      : Gogol.Chat.Spaces.Setup
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a space and adds specified users to it. The calling user is automatically added to the space, and shouldn\'t be specified as a membership in the request. For an example, see <https://developers.google.com/workspace/chat/set-up-spaces Set up a space with initial members>. To specify the human members to add, add memberships with the appropriate @membership.member.name@. To add a human user, use @users\/{user}@, where @{user}@ can be the email address for the user. For users in the same Workspace organization @{user}@ can also be the @id@ for the person from the People API, or the @id@ for the user in the Directory API. For example, if the People API Person profile ID for @user\@example.com@ is @123456789@, you can add the user to the space by setting the @membership.member.name@ to @users\/user\@example.com@ or @users\/123456789@. To specify the Google groups to add, add memberships with the appropriate @membership.group_member.name@. To add or invite a Google group, use @groups\/{group}@, where
-- @{group}@ is the @id@ for the group from the Cloud Identity Groups API. For example, you can use <https://cloud.google.com/identity/docs/reference/rest/v1/groups/lookup Cloud Identity Groups lookup API> to retrieve the ID @123456789@ for group email @group\@example.com@, then you can add the group to the space by setting the @membership.group_member.name@ to @groups\/123456789@. Group email is not supported, and Google groups can only be added as members in named spaces. For a named space or group chat, if the caller blocks, or is blocked by some members, or doesn\'t have permission to add some members, then those members aren\'t added to the created space. To create a direct message (DM) between the calling user and another human user, specify exactly one membership to represent the human user. If one user blocks the other, the request fails and the DM isn\'t created. To create a DM between the calling user and the calling app, set @Space.singleUserBotDm@ to @true@ and don\'t specify any memberships. You can
-- only use this method to set up a DM with the calling app. To add the calling app as a member of a space or an existing DM between two human users, see <https://developers.google.com/workspace/chat/create-members Invite or add a user or app to a space>. If a DM already exists between two users, even when one user blocks the other at the time a request is made, then the existing DM is returned. Spaces with threaded replies aren\'t supported. If you receive the error message @ALREADY_EXISTS@ when setting up a space, try a different @displayName@. An existing space within the Google Workspace organization might already use this display name. Requires <https://developers.google.com/workspace/chat/authenticate-authorize-chat-user user authentication>.
--
-- /See:/ <https://developers.google.com/hangouts/chat Google Chat API Reference> for @chat.spaces.setup@.
module Gogol.Chat.Spaces.Setup
    (
    -- * Resource
      ChatSpacesSetupResource

    -- ** Constructing a Request
    , ChatSpacesSetup (..)
    , newChatSpacesSetup
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Chat.Types

-- | A resource alias for @chat.spaces.setup@ method which the
-- 'ChatSpacesSetup' request conforms to.
type ChatSpacesSetupResource =
     "v1" Core.:>
       "spaces:setup" Core.:>
         Core.QueryParam "$.xgafv" Xgafv Core.:>
           Core.QueryParam "access_token" Core.Text Core.:>
             Core.QueryParam "callback" Core.Text Core.:>
               Core.QueryParam "uploadType" Core.Text Core.:>
                 Core.QueryParam "upload_protocol" Core.Text Core.:>
                   Core.QueryParam "alt" Core.AltJSON Core.:>
                     Core.ReqBody '[Core.JSON] SetUpSpaceRequest Core.:>
                       Core.Post '[Core.JSON] Space

-- | Creates a space and adds specified users to it. The calling user is automatically added to the space, and shouldn\'t be specified as a membership in the request. For an example, see <https://developers.google.com/workspace/chat/set-up-spaces Set up a space with initial members>. To specify the human members to add, add memberships with the appropriate @membership.member.name@. To add a human user, use @users\/{user}@, where @{user}@ can be the email address for the user. For users in the same Workspace organization @{user}@ can also be the @id@ for the person from the People API, or the @id@ for the user in the Directory API. For example, if the People API Person profile ID for @user\@example.com@ is @123456789@, you can add the user to the space by setting the @membership.member.name@ to @users\/user\@example.com@ or @users\/123456789@. To specify the Google groups to add, add memberships with the appropriate @membership.group_member.name@. To add or invite a Google group, use @groups\/{group}@, where
-- @{group}@ is the @id@ for the group from the Cloud Identity Groups API. For example, you can use <https://cloud.google.com/identity/docs/reference/rest/v1/groups/lookup Cloud Identity Groups lookup API> to retrieve the ID @123456789@ for group email @group\@example.com@, then you can add the group to the space by setting the @membership.group_member.name@ to @groups\/123456789@. Group email is not supported, and Google groups can only be added as members in named spaces. For a named space or group chat, if the caller blocks, or is blocked by some members, or doesn\'t have permission to add some members, then those members aren\'t added to the created space. To create a direct message (DM) between the calling user and another human user, specify exactly one membership to represent the human user. If one user blocks the other, the request fails and the DM isn\'t created. To create a DM between the calling user and the calling app, set @Space.singleUserBotDm@ to @true@ and don\'t specify any memberships. You can
-- only use this method to set up a DM with the calling app. To add the calling app as a member of a space or an existing DM between two human users, see <https://developers.google.com/workspace/chat/create-members Invite or add a user or app to a space>. If a DM already exists between two users, even when one user blocks the other at the time a request is made, then the existing DM is returned. Spaces with threaded replies aren\'t supported. If you receive the error message @ALREADY_EXISTS@ when setting up a space, try a different @displayName@. An existing space within the Google Workspace organization might already use this display name. Requires <https://developers.google.com/workspace/chat/authenticate-authorize-chat-user user authentication>.
--
-- /See:/ 'newChatSpacesSetup' smart constructor.
data ChatSpacesSetup = ChatSpacesSetup
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Multipart request metadata.
    , payload :: SetUpSpaceRequest
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ChatSpacesSetup' with the minimum fields required to make a request.
newChatSpacesSetup 
    ::  SetUpSpaceRequest
       -- ^  Multipart request metadata. See 'payload'.
    -> ChatSpacesSetup
newChatSpacesSetup payload =
  ChatSpacesSetup
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , payload = payload
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest ChatSpacesSetup where
        type Rs ChatSpacesSetup = Space
        type Scopes ChatSpacesSetup =
             '[Chat'Spaces, Chat'Spaces'Create]
        requestClient ChatSpacesSetup{..}
          = go xgafv accessToken callback uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              payload
              chatService
          where go
                  = Core.buildClient
                      (Core.Proxy :: Core.Proxy ChatSpacesSetupResource)
                      Core.mempty

