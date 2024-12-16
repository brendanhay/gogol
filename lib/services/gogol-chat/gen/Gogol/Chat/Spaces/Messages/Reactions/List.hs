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
-- Module      : Gogol.Chat.Spaces.Messages.Reactions.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists reactions to a message. For an example, see <https://developers.google.com/workspace/chat/list-reactions List reactions for a message>. Requires <https://developers.google.com/workspace/chat/authenticate-authorize-chat-user user authentication>.
--
-- /See:/ <https://developers.google.com/hangouts/chat Google Chat API Reference> for @chat.spaces.messages.reactions.list@.
module Gogol.Chat.Spaces.Messages.Reactions.List
    (
    -- * Resource
      ChatSpacesMessagesReactionsListResource

    -- ** Constructing a Request
    , ChatSpacesMessagesReactionsList (..)
    , newChatSpacesMessagesReactionsList
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Chat.Types

-- | A resource alias for @chat.spaces.messages.reactions.list@ method which the
-- 'ChatSpacesMessagesReactionsList' request conforms to.
type ChatSpacesMessagesReactionsListResource =
     "v1" Core.:>
       Core.Capture "parent" Core.Text Core.:>
         "reactions" Core.:>
           Core.QueryParam "$.xgafv" Xgafv Core.:>
             Core.QueryParam "access_token" Core.Text Core.:>
               Core.QueryParam "callback" Core.Text Core.:>
                 Core.QueryParam "filter" Core.Text Core.:>
                   Core.QueryParam "pageSize" Core.Int32 Core.:>
                     Core.QueryParam "pageToken" Core.Text Core.:>
                       Core.QueryParam "uploadType" Core.Text Core.:>
                         Core.QueryParam "upload_protocol" Core.Text Core.:>
                           Core.QueryParam "alt" Core.AltJSON Core.:>
                             Core.Get '[Core.JSON] ListReactionsResponse

-- | Lists reactions to a message. For an example, see <https://developers.google.com/workspace/chat/list-reactions List reactions for a message>. Requires <https://developers.google.com/workspace/chat/authenticate-authorize-chat-user user authentication>.
--
-- /See:/ 'newChatSpacesMessagesReactionsList' smart constructor.
data ChatSpacesMessagesReactionsList = ChatSpacesMessagesReactionsList
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Optional. A query filter. You can filter reactions by <https://developers.google.com/workspace/chat/api/reference/rest/v1/Emoji emoji> (either @emoji.unicode@ or @emoji.custom_emoji.uid@) and <https://developers.google.com/workspace/chat/api/reference/rest/v1/User user> (@user.name@). To filter reactions for multiple emojis or users, join similar fields with the @OR@ operator, such as @emoji.unicode = \"🙂\" OR emoji.unicode = \"👍\"@ and @user.name = \"users\/AAAAAA\" OR user.name = \"users\/BBBBBB\"@. To filter reactions by emoji and user, use the @AND@ operator, such as @emoji.unicode = \"🙂\" AND user.name = \"users\/AAAAAA\"@. If your query uses both @AND@ and @OR@, group them with parentheses. For example, the following queries are valid:
      -- @user.name = \"users\/{user}\" emoji.unicode = \"🙂\" emoji.custom_emoji.uid = \"{uid}\" emoji.unicode = \"🙂\" OR emoji.unicode = \"👍\" emoji.unicode = \"🙂\" OR emoji.custom_emoji.uid = \"{uid}\" emoji.unicode = \"🙂\" AND user.name = \"users\/{user}\" (emoji.unicode = \"🙂\" OR emoji.custom_emoji.uid = \"{uid}\") AND user.name = \"users\/{user}\"@ The following queries are invalid: @emoji.unicode = \"🙂\" AND emoji.unicode = \"👍\" emoji.unicode = \"🙂\" AND emoji.custom_emoji.uid = \"{uid}\" emoji.unicode = \"🙂\" OR user.name = \"users\/{user}\" emoji.unicode = \"🙂\" OR emoji.custom_emoji.uid = \"{uid}\" OR user.name = \"users\/{user}\" emoji.unicode = \"🙂\" OR emoji.custom_emoji.uid = \"{uid}\" AND user.name = \"users\/{user}\"@ Invalid queries are rejected by the server with an @INVALID_ARGUMENT@ error.
    , filter :: (Core.Maybe Core.Text)
      -- | Optional. The maximum number of reactions returned. The service can return fewer reactions than this value. If unspecified, the default value is 25. The maximum value is 200; values above 200 are changed to 200.
    , pageSize :: (Core.Maybe Core.Int32)
      -- | Optional. (If resuming from a previous query.) A page token received from a previous list reactions call. Provide this to retrieve the subsequent page. When paginating, the filter value should match the call that provided the page token. Passing a different value might lead to unexpected results.
    , pageToken :: (Core.Maybe Core.Text)
      -- | Required. The message users reacted to. Format: @spaces\/{space}\/messages\/{message}@
    , parent :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ChatSpacesMessagesReactionsList' with the minimum fields required to make a request.
newChatSpacesMessagesReactionsList 
    ::  Core.Text
       -- ^  Required. The message users reacted to. Format: @spaces\/{space}\/messages\/{message}@ See 'parent'.
    -> ChatSpacesMessagesReactionsList
newChatSpacesMessagesReactionsList parent =
  ChatSpacesMessagesReactionsList
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , filter = Core.Nothing
    , pageSize = Core.Nothing
    , pageToken = Core.Nothing
    , parent = parent
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           ChatSpacesMessagesReactionsList
         where
        type Rs ChatSpacesMessagesReactionsList =
             ListReactionsResponse
        type Scopes ChatSpacesMessagesReactionsList =
             '[Chat'Messages, Chat'Messages'Reactions,
               Chat'Messages'Reactions'Readonly,
               Chat'Messages'Readonly]
        requestClient ChatSpacesMessagesReactionsList{..}
          = go parent xgafv accessToken callback filter
              pageSize
              pageToken
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              chatService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy ChatSpacesMessagesReactionsListResource)
                      Core.mempty

