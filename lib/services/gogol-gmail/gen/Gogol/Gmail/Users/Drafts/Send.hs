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
-- Module      : Gogol.Gmail.Users.Drafts.Send
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Sends the specified, existing draft to the recipients in the @To@, @Cc@, and @Bcc@ headers.
--
-- /See:/ <https://developers.google.com/gmail/api/ Gmail API Reference> for @gmail.users.drafts.send@.
module Gogol.Gmail.Users.Drafts.Send
  ( -- * Resource
    GmailUsersDraftsSendResource,

    -- ** Constructing a Request
    GmailUsersDraftsSend (..),
    newGmailUsersDraftsSend,
  )
where

import Gogol.Gmail.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @gmail.users.drafts.send@ method which the
-- 'GmailUsersDraftsSend' request conforms to.
type GmailUsersDraftsSendResource =
  "gmail"
    Core.:> "v1"
    Core.:> "users"
    Core.:> Core.Capture "userId" Core.Text
    Core.:> "drafts"
    Core.:> "send"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] Draft
    Core.:> Core.Post '[Core.JSON] Message
    Core.:<|> "upload"
      Core.:> "gmail"
      Core.:> "v1"
      Core.:> "users"
      Core.:> Core.Capture "userId" Core.Text
      Core.:> "drafts"
      Core.:> "send"
      Core.:> Core.QueryParam "$.xgafv" Xgafv
      Core.:> Core.QueryParam "access_token" Core.Text
      Core.:> Core.QueryParam "callback" Core.Text
      Core.:> Core.QueryParam "uploadType" Core.Text
      Core.:> Core.QueryParam "upload_protocol" Core.Text
      Core.:> Core.QueryParam "alt" Core.AltJSON
      Core.:> Core.QueryParam "uploadType" Core.Multipart
      Core.:> Core.MultipartRelated '[Core.JSON] Draft
      Core.:> Core.Post '[Core.JSON] Message

-- | Sends the specified, existing draft to the recipients in the @To@, @Cc@, and @Bcc@ headers.
--
-- /See:/ 'newGmailUsersDraftsSend' smart constructor.
data GmailUsersDraftsSend = GmailUsersDraftsSend
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Multipart request metadata.
    payload :: Draft,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text),
    -- | The user\'s email address. The special value @me@ can be used to indicate the authenticated user.
    userId :: Core.Text
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GmailUsersDraftsSend' with the minimum fields required to make a request.
newGmailUsersDraftsSend ::
  -- |  Multipart request metadata. See 'payload'.
  Draft ->
  GmailUsersDraftsSend
newGmailUsersDraftsSend payload =
  GmailUsersDraftsSend
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing,
      userId = "me"
    }

instance Core.GoogleRequest GmailUsersDraftsSend where
  type Rs GmailUsersDraftsSend = Message
  type
    Scopes GmailUsersDraftsSend =
      '[ Gmail'FullControl,
         Gmail'Addons'Current'Action'Compose,
         Gmail'Compose,
         Gmail'Modify
       ]
  requestClient GmailUsersDraftsSend {..} =
    go
      userId
      xgafv
      accessToken
      callback
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      payload
      gmailService
    where
      go Core.:<|> _ =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy GmailUsersDraftsSendResource
          )
          Core.mempty

instance
  Core.GoogleRequest
    (Core.MediaUpload GmailUsersDraftsSend)
  where
  type
    Rs (Core.MediaUpload GmailUsersDraftsSend) =
      Message
  type
    Scopes (Core.MediaUpload GmailUsersDraftsSend) =
      Core.Scopes GmailUsersDraftsSend
  requestClient
    (Core.MediaUpload GmailUsersDraftsSend {..} body) =
      go
        userId
        xgafv
        accessToken
        callback
        uploadType
        uploadProtocol
        (Core.Just Core.AltJSON)
        (Core.Just Core.Multipart)
        payload
        body
        gmailService
      where
        _ Core.:<|> go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy GmailUsersDraftsSendResource
            )
            Core.mempty
