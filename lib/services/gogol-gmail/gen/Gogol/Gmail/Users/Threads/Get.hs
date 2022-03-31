{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.Gmail.Users.Threads.Get
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the specified thread.
--
-- /See:/ <https://developers.google.com/gmail/api/ Gmail API Reference> for @gmail.users.threads.get@.
module Gogol.Gmail.Users.Threads.Get
  ( -- * Resource
    GmailUsersThreadsGetResource,

    -- ** Constructing a Request
    newGmailUsersThreadsGet,
    GmailUsersThreadsGet,
  )
where

import Gogol.Gmail.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @gmail.users.threads.get@ method which the
-- 'GmailUsersThreadsGet' request conforms to.
type GmailUsersThreadsGetResource =
  "gmail"
    Core.:> "v1"
    Core.:> "users"
    Core.:> Core.Capture "userId" Core.Text
    Core.:> "threads"
    Core.:> Core.Capture "id" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "format" UsersThreadsGetFormat
    Core.:> Core.QueryParams "metadataHeaders" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] Thread

-- | Gets the specified thread.
--
-- /See:/ 'newGmailUsersThreadsGet' smart constructor.
data GmailUsersThreadsGet = GmailUsersThreadsGet
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The format to return the messages in.
    format :: UsersThreadsGetFormat,
    -- | The ID of the thread to retrieve.
    id :: Core.Text,
    -- | When given and format is METADATA, only include headers specified.
    metadataHeaders :: (Core.Maybe [Core.Text]),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text),
    -- | The user\'s email address. The special value @me@ can be used to indicate the authenticated user.
    userId :: Core.Text
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GmailUsersThreadsGet' with the minimum fields required to make a request.
newGmailUsersThreadsGet ::
  -- |  The ID of the thread to retrieve. See 'id'.
  Core.Text ->
  GmailUsersThreadsGet
newGmailUsersThreadsGet id =
  GmailUsersThreadsGet
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      format = UsersThreadsGetFormat_Full,
      id = id,
      metadataHeaders = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing,
      userId = "me"
    }

instance Core.GoogleRequest GmailUsersThreadsGet where
  type Rs GmailUsersThreadsGet = Thread
  type
    Scopes GmailUsersThreadsGet =
      '[ Gmail'FullControl,
         Gmail'Addons'Current'Message'Action,
         Gmail'Addons'Current'Message'Metadata,
         Gmail'Addons'Current'Message'Readonly,
         Gmail'Metadata,
         Gmail'Modify,
         Gmail'Readonly
       ]
  requestClient GmailUsersThreadsGet {..} =
    go
      userId
      id
      xgafv
      accessToken
      callback
      (Core.Just format)
      (metadataHeaders Core.^. Core._Default)
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      gmailService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy GmailUsersThreadsGetResource
          )
          Core.mempty
