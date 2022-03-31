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
-- Module      : Gogol.Gmail.Users.Labels.Delete
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Immediately and permanently deletes the specified label and removes it from any messages and threads that it is applied to.
--
-- /See:/ <https://developers.google.com/gmail/api/ Gmail API Reference> for @gmail.users.labels.delete@.
module Gogol.Gmail.Users.Labels.Delete
  ( -- * Resource
    GmailUsersLabelsDeleteResource,

    -- ** Constructing a Request
    newGmailUsersLabelsDelete,
    GmailUsersLabelsDelete,
  )
where

import Gogol.Gmail.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @gmail.users.labels.delete@ method which the
-- 'GmailUsersLabelsDelete' request conforms to.
type GmailUsersLabelsDeleteResource =
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
    Core.:> Core.Delete '[Core.JSON] ()

-- | Immediately and permanently deletes the specified label and removes it from any messages and threads that it is applied to.
--
-- /See:/ 'newGmailUsersLabelsDelete' smart constructor.
data GmailUsersLabelsDelete = GmailUsersLabelsDelete
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The ID of the label to delete.
    id :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text),
    -- | The user\'s email address. The special value @me@ can be used to indicate the authenticated user.
    userId :: Core.Text
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GmailUsersLabelsDelete' with the minimum fields required to make a request.
newGmailUsersLabelsDelete ::
  -- |  The ID of the label to delete. See 'id'.
  Core.Text ->
  GmailUsersLabelsDelete
newGmailUsersLabelsDelete id =
  GmailUsersLabelsDelete
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      id = id,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing,
      userId = "me"
    }

instance Core.GoogleRequest GmailUsersLabelsDelete where
  type Rs GmailUsersLabelsDelete = ()
  type
    Scopes GmailUsersLabelsDelete =
      '[Gmail'FullControl, Gmail'Labels, Gmail'Modify]
  requestClient GmailUsersLabelsDelete {..} =
    go
      userId
      id
      xgafv
      accessToken
      callback
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      gmailService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy GmailUsersLabelsDeleteResource
          )
          Core.mempty
