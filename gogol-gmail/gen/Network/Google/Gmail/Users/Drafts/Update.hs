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
-- Module      : Network.Google.Gmail.Users.Drafts.Update
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Replaces a draft\'s content.
--
-- /See:/ <https://developers.google.com/gmail/api/ Gmail API Reference> for @gmail.users.drafts.update@.
module Network.Google.Gmail.Users.Drafts.Update
  ( -- * Resource
    GmailUsersDraftsUpdateResource,

    -- ** Constructing a Request
    newGmailUsersDraftsUpdate,
    GmailUsersDraftsUpdate,
  )
where

import Network.Google.Gmail.Types
import qualified Network.Google.Prelude as Core

-- | A resource alias for @gmail.users.drafts.update@ method which the
-- 'GmailUsersDraftsUpdate' request conforms to.
type GmailUsersDraftsUpdateResource =
  "gmail"
    Core.:> "v1"
    Core.:> "users"
    Core.:> Core.Capture "userId" Core.Text
    Core.:> "drafts"
    Core.:> Core.Capture "id" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] Draft
    Core.:> Core.Put '[Core.JSON] Draft
    Core.:<|> "upload"
      Core.:> "gmail"
      Core.:> "v1"
      Core.:> "users"
      Core.:> Core.Capture "userId" Core.Text
      Core.:> "drafts"
      Core.:> Core.Capture "id" Core.Text
      Core.:> Core.QueryParam "$.xgafv" Xgafv
      Core.:> Core.QueryParam "access_token" Core.Text
      Core.:> Core.QueryParam "callback" Core.Text
      Core.:> Core.QueryParam "uploadType" Core.Text
      Core.:> Core.QueryParam "upload_protocol" Core.Text
      Core.:> Core.QueryParam "alt" Core.AltJSON
      Core.:> Core.QueryParam "uploadType" Core.Multipart
      Core.:> Core.MultipartRelated '[Core.JSON] Draft
      Core.:> Core.Put '[Core.JSON] Draft

-- | Replaces a draft\'s content.
--
-- /See:/ 'newGmailUsersDraftsUpdate' smart constructor.
data GmailUsersDraftsUpdate = GmailUsersDraftsUpdate
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The ID of the draft to update.
    id :: Core.Text,
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

-- | Creates a value of 'GmailUsersDraftsUpdate' with the minimum fields required to make a request.
newGmailUsersDraftsUpdate ::
  -- |  The ID of the draft to update. See 'id'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  Draft ->
  GmailUsersDraftsUpdate
newGmailUsersDraftsUpdate id payload =
  GmailUsersDraftsUpdate
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      id = id,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing,
      userId = "me"
    }

instance Core.GoogleRequest GmailUsersDraftsUpdate where
  type Rs GmailUsersDraftsUpdate = Draft
  type
    Scopes GmailUsersDraftsUpdate =
      '[ "https://mail.google.com/",
         "https://www.googleapis.com/auth/gmail.addons.current.action.compose",
         "https://www.googleapis.com/auth/gmail.compose",
         "https://www.googleapis.com/auth/gmail.modify"
       ]
  requestClient GmailUsersDraftsUpdate {..} =
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
      go Core.:<|> _ =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy GmailUsersDraftsUpdateResource
          )
          Core.mempty

instance
  Core.GoogleRequest
    (Core.MediaUpload GmailUsersDraftsUpdate)
  where
  type
    Rs (Core.MediaUpload GmailUsersDraftsUpdate) =
      Draft
  type
    Scopes (Core.MediaUpload GmailUsersDraftsUpdate) =
      Core.Scopes GmailUsersDraftsUpdate
  requestClient
    (Core.MediaUpload GmailUsersDraftsUpdate {..} body) =
      go
        userId
        id
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
                Core.Proxy GmailUsersDraftsUpdateResource
            )
            Core.mempty
