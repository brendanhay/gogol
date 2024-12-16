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
-- Module      : Gogol.Chat.Spaces.Messages.Reactions.Delete
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a reaction to a message. Only unicode emojis are supported. For an example, see <https://developers.google.com/workspace/chat/delete-reactions Delete a reaction>. Requires <https://developers.google.com/workspace/chat/authenticate-authorize-chat-user user authentication>.
--
-- /See:/ <https://developers.google.com/hangouts/chat Google Chat API Reference> for @chat.spaces.messages.reactions.delete@.
module Gogol.Chat.Spaces.Messages.Reactions.Delete
    (
    -- * Resource
      ChatSpacesMessagesReactionsDeleteResource

    -- ** Constructing a Request
    , ChatSpacesMessagesReactionsDelete (..)
    , newChatSpacesMessagesReactionsDelete
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Chat.Types

-- | A resource alias for @chat.spaces.messages.reactions.delete@ method which the
-- 'ChatSpacesMessagesReactionsDelete' request conforms to.
type ChatSpacesMessagesReactionsDeleteResource =
     "v1" Core.:>
       Core.Capture "name" Core.Text Core.:>
         Core.QueryParam "$.xgafv" Xgafv Core.:>
           Core.QueryParam "access_token" Core.Text Core.:>
             Core.QueryParam "callback" Core.Text Core.:>
               Core.QueryParam "uploadType" Core.Text Core.:>
                 Core.QueryParam "upload_protocol" Core.Text Core.:>
                   Core.QueryParam "alt" Core.AltJSON Core.:>
                     Core.Delete '[Core.JSON] Empty

-- | Deletes a reaction to a message. Only unicode emojis are supported. For an example, see <https://developers.google.com/workspace/chat/delete-reactions Delete a reaction>. Requires <https://developers.google.com/workspace/chat/authenticate-authorize-chat-user user authentication>.
--
-- /See:/ 'newChatSpacesMessagesReactionsDelete' smart constructor.
data ChatSpacesMessagesReactionsDelete = ChatSpacesMessagesReactionsDelete
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Required. Name of the reaction to delete. Format: @spaces\/{space}\/messages\/{message}\/reactions\/{reaction}@
    , name :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ChatSpacesMessagesReactionsDelete' with the minimum fields required to make a request.
newChatSpacesMessagesReactionsDelete 
    ::  Core.Text
       -- ^  Required. Name of the reaction to delete. Format: @spaces\/{space}\/messages\/{message}\/reactions\/{reaction}@ See 'name'.
    -> ChatSpacesMessagesReactionsDelete
newChatSpacesMessagesReactionsDelete name =
  ChatSpacesMessagesReactionsDelete
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , name = name
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           ChatSpacesMessagesReactionsDelete
         where
        type Rs ChatSpacesMessagesReactionsDelete = Empty
        type Scopes ChatSpacesMessagesReactionsDelete =
             '[Chat'Import, Chat'Messages,
               Chat'Messages'Reactions]
        requestClient ChatSpacesMessagesReactionsDelete{..}
          = go name xgafv accessToken callback uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              chatService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy ChatSpacesMessagesReactionsDeleteResource)
                      Core.mempty

