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
-- Module      : Gogol.Gmail.Users.Threads.Modify
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Modifies the labels applied to the thread. This applies to all messages in the thread.
--
-- /See:/ <https://developers.google.com/gmail/api/ Gmail API Reference> for @gmail.users.threads.modify@.
module Gogol.Gmail.Users.Threads.Modify
  ( -- * Resource
    GmailUsersThreadsModifyResource,

    -- ** Constructing a Request
    GmailUsersThreadsModify (..),
    newGmailUsersThreadsModify,
  )
where

import Gogol.Gmail.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @gmail.users.threads.modify@ method which the
-- 'GmailUsersThreadsModify' request conforms to.
type GmailUsersThreadsModifyResource =
  "gmail"
    Core.:> "v1"
    Core.:> "users"
    Core.:> Core.Capture "userId" Core.Text
    Core.:> "threads"
    Core.:> Core.Capture "id" Core.Text
    Core.:> "modify"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] ModifyThreadRequest
    Core.:> Core.Post '[Core.JSON] Thread

-- | Modifies the labels applied to the thread. This applies to all messages in the thread.
--
-- /See:/ 'newGmailUsersThreadsModify' smart constructor.
data GmailUsersThreadsModify = GmailUsersThreadsModify
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The ID of the thread to modify.
    id :: Core.Text,
    -- | Multipart request metadata.
    payload :: ModifyThreadRequest,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text),
    -- | The user\'s email address. The special value @me@ can be used to indicate the authenticated user.
    userId :: Core.Text
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GmailUsersThreadsModify' with the minimum fields required to make a request.
newGmailUsersThreadsModify ::
  -- |  The ID of the thread to modify. See 'id'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  ModifyThreadRequest ->
  GmailUsersThreadsModify
newGmailUsersThreadsModify id payload =
  GmailUsersThreadsModify
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      id = id,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing,
      userId = "me"
    }

instance Core.GoogleRequest GmailUsersThreadsModify where
  type Rs GmailUsersThreadsModify = Thread
  type
    Scopes GmailUsersThreadsModify =
      '[Gmail'FullControl, Gmail'Modify]
  requestClient GmailUsersThreadsModify {..} =
    go
      userId
      id
      xgafv
      accessToken
      callback
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      payload
      gmailService
    where
      go =
        Core.buildClient
          (Core.Proxy :: Core.Proxy GmailUsersThreadsModifyResource)
          Core.mempty
