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
-- Module      : Gogol.Gmail.Users.Labels.Update
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates the specified label.
--
-- /See:/ <https://developers.google.com/gmail/api/ Gmail API Reference> for @gmail.users.labels.update@.
module Gogol.Gmail.Users.Labels.Update
  ( -- * Resource
    GmailUsersLabelsUpdateResource,

    -- ** Constructing a Request
    GmailUsersLabelsUpdate (..),
    newGmailUsersLabelsUpdate,
  )
where

import Gogol.Gmail.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @gmail.users.labels.update@ method which the
-- 'GmailUsersLabelsUpdate' request conforms to.
type GmailUsersLabelsUpdateResource =
  "gmail"
    Core.:> "v1"
    Core.:> "users"
    Core.:> Core.Capture "userId" Core.Text
    Core.:> "labels"
    Core.:> Core.Capture "id" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] Label
    Core.:> Core.Put '[Core.JSON] Label

-- | Updates the specified label.
--
-- /See:/ 'newGmailUsersLabelsUpdate' smart constructor.
data GmailUsersLabelsUpdate = GmailUsersLabelsUpdate
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The ID of the label to update.
    id :: Core.Text,
    -- | Multipart request metadata.
    payload :: Label,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text),
    -- | The user\'s email address. The special value @me@ can be used to indicate the authenticated user.
    userId :: Core.Text
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GmailUsersLabelsUpdate' with the minimum fields required to make a request.
newGmailUsersLabelsUpdate ::
  -- |  The ID of the label to update. See 'id'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  Label ->
  GmailUsersLabelsUpdate
newGmailUsersLabelsUpdate id payload =
  GmailUsersLabelsUpdate
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      id = id,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing,
      userId = "me"
    }

instance Core.GoogleRequest GmailUsersLabelsUpdate where
  type Rs GmailUsersLabelsUpdate = Label
  type
    Scopes GmailUsersLabelsUpdate =
      '[Gmail'FullControl, Gmail'Labels, Gmail'Modify]
  requestClient GmailUsersLabelsUpdate {..} =
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
          (Core.Proxy :: Core.Proxy GmailUsersLabelsUpdateResource)
          Core.mempty
