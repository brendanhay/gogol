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
-- Module      : Gogol.Gmail.Users.Drafts.Create
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a new draft with the @DRAFT@ label.
--
-- /See:/ <https://developers.google.com/gmail/api/ Gmail API Reference> for @gmail.users.drafts.create@.
module Gogol.Gmail.Users.Drafts.Create
  ( -- * Resource
    GmailUsersDraftsCreateResource,

    -- ** Constructing a Request
    GmailUsersDraftsCreate (..),
    newGmailUsersDraftsCreate,
  )
where

import Gogol.Gmail.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @gmail.users.drafts.create@ method which the
-- 'GmailUsersDraftsCreate' request conforms to.
type GmailUsersDraftsCreateResource =
  "gmail"
    Core.:> "v1"
    Core.:> "users"
    Core.:> Core.Capture "userId" Core.Text
    Core.:> "drafts"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] Draft
    Core.:> Core.Post '[Core.JSON] Draft
    Core.:<|> "upload"
      Core.:> "gmail"
      Core.:> "v1"
      Core.:> "users"
      Core.:> Core.Capture "userId" Core.Text
      Core.:> "drafts"
      Core.:> Core.QueryParam "$.xgafv" Xgafv
      Core.:> Core.QueryParam "access_token" Core.Text
      Core.:> Core.QueryParam "callback" Core.Text
      Core.:> Core.QueryParam "uploadType" Core.Text
      Core.:> Core.QueryParam "upload_protocol" Core.Text
      Core.:> Core.QueryParam "alt" Core.AltJSON
      Core.:> Core.QueryParam "uploadType" Core.Multipart
      Core.:> Core.MultipartRelated '[Core.JSON] Draft
      Core.:> Core.Post '[Core.JSON] Draft

-- | Creates a new draft with the @DRAFT@ label.
--
-- /See:/ 'newGmailUsersDraftsCreate' smart constructor.
data GmailUsersDraftsCreate = GmailUsersDraftsCreate
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

-- | Creates a value of 'GmailUsersDraftsCreate' with the minimum fields required to make a request.
newGmailUsersDraftsCreate ::
  -- |  Multipart request metadata. See 'payload'.
  Draft ->
  GmailUsersDraftsCreate
newGmailUsersDraftsCreate payload =
  GmailUsersDraftsCreate
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing,
      userId = "me"
    }

instance Core.GoogleRequest GmailUsersDraftsCreate where
  type Rs GmailUsersDraftsCreate = Draft
  type
    Scopes GmailUsersDraftsCreate =
      '[ Gmail'FullControl,
         Gmail'Addons'Current'Action'Compose,
         Gmail'Compose,
         Gmail'Modify
       ]
  requestClient GmailUsersDraftsCreate {..} =
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
              Core.Proxy GmailUsersDraftsCreateResource
          )
          Core.mempty

instance
  Core.GoogleRequest
    (Core.MediaUpload GmailUsersDraftsCreate)
  where
  type
    Rs (Core.MediaUpload GmailUsersDraftsCreate) =
      Draft
  type
    Scopes (Core.MediaUpload GmailUsersDraftsCreate) =
      Core.Scopes GmailUsersDraftsCreate
  requestClient
    (Core.MediaUpload GmailUsersDraftsCreate {..} body) =
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
                Core.Proxy GmailUsersDraftsCreateResource
            )
            Core.mempty
