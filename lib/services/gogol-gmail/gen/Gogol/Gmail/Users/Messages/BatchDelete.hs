{-# LANGUAGE StrictData #-}
{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.Gmail.Users.Messages.BatchDelete
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes many messages by message ID. Provides no guarantees that messages were not already deleted or even existed at all.
--
-- /See:/ <https://developers.google.com/gmail/api/ Gmail API Reference> for @gmail.users.messages.batchDelete@.
module Gogol.Gmail.Users.Messages.BatchDelete
    (
    -- * Resource
      GmailUsersMessagesBatchDeleteResource

    -- ** Constructing a Request
    , newGmailUsersMessagesBatchDelete
    , GmailUsersMessagesBatchDelete
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Gmail.Types

-- | A resource alias for @gmail.users.messages.batchDelete@ method which the
-- 'GmailUsersMessagesBatchDelete' request conforms to.
type GmailUsersMessagesBatchDeleteResource =
     "gmail" Core.:>
       "v1" Core.:>
         "users" Core.:>
           Core.Capture "userId" Core.Text Core.:>
             "messages" Core.:>
               "batchDelete" Core.:>
                 Core.QueryParam "$.xgafv" Xgafv Core.:>
                   Core.QueryParam "access_token" Core.Text Core.:>
                     Core.QueryParam "callback" Core.Text Core.:>
                       Core.QueryParam "uploadType" Core.Text Core.:>
                         Core.QueryParam "upload_protocol" Core.Text Core.:>
                           Core.QueryParam "alt" Core.AltJSON Core.:>
                             Core.ReqBody '[Core.JSON]
                               BatchDeleteMessagesRequest
                               Core.:> Core.Post '[Core.JSON] ()

-- | Deletes many messages by message ID. Provides no guarantees that messages were not already deleted or even existed at all.
--
-- /See:/ 'newGmailUsersMessagesBatchDelete' smart constructor.
data GmailUsersMessagesBatchDelete = GmailUsersMessagesBatchDelete
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Multipart request metadata.
    , payload :: BatchDeleteMessagesRequest
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
      -- | The user\'s email address. The special value @me@ can be used to indicate the authenticated user.
    , userId :: Core.Text
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GmailUsersMessagesBatchDelete' with the minimum fields required to make a request.
newGmailUsersMessagesBatchDelete 
    ::  BatchDeleteMessagesRequest
       -- ^  Multipart request metadata. See 'payload'.
    -> GmailUsersMessagesBatchDelete
newGmailUsersMessagesBatchDelete payload =
  GmailUsersMessagesBatchDelete
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , payload = payload
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    , userId = "me"
    }

instance Core.GoogleRequest
           GmailUsersMessagesBatchDelete
         where
        type Rs GmailUsersMessagesBatchDelete = ()
        type Scopes GmailUsersMessagesBatchDelete =
             '["https://mail.google.com/"]
        requestClient GmailUsersMessagesBatchDelete{..}
          = go userId xgafv accessToken callback uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              payload
              gmailService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy GmailUsersMessagesBatchDeleteResource)
                      Core.mempty

