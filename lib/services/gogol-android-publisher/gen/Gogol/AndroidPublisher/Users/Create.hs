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
-- Module      : Gogol.AndroidPublisher.Users.Create
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Grant access for a user to the given developer account.
--
-- /See:/ <https://developers.google.com/android-publisher Google Play Android Developer API Reference> for @androidpublisher.users.create@.
module Gogol.AndroidPublisher.Users.Create
  ( -- * Resource
    AndroidPublisherUsersCreateResource,

    -- ** Constructing a Request
    AndroidPublisherUsersCreate (..),
    newAndroidPublisherUsersCreate,
  )
where

import Gogol.AndroidPublisher.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @androidpublisher.users.create@ method which the
-- 'AndroidPublisherUsersCreate' request conforms to.
type AndroidPublisherUsersCreateResource =
  "androidpublisher"
    Core.:> "v3"
    Core.:> Core.Capture "parent" Core.Text
    Core.:> "users"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] User
    Core.:> Core.Post '[Core.JSON] User

-- | Grant access for a user to the given developer account.
--
-- /See:/ 'newAndroidPublisherUsersCreate' smart constructor.
data AndroidPublisherUsersCreate = AndroidPublisherUsersCreate
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The developer account to add the user to. Format: developers\/{developer}
    parent :: Core.Text,
    -- | Multipart request metadata.
    payload :: User,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AndroidPublisherUsersCreate' with the minimum fields required to make a request.
newAndroidPublisherUsersCreate ::
  -- |  Required. The developer account to add the user to. Format: developers\/{developer} See 'parent'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  User ->
  AndroidPublisherUsersCreate
newAndroidPublisherUsersCreate parent payload =
  AndroidPublisherUsersCreate
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      parent = parent,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest AndroidPublisherUsersCreate where
  type Rs AndroidPublisherUsersCreate = User
  type
    Scopes AndroidPublisherUsersCreate =
      '[Androidpublisher'FullControl]
  requestClient AndroidPublisherUsersCreate {..} =
    go
      parent
      xgafv
      accessToken
      callback
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      payload
      androidPublisherService
    where
      go =
        Core.buildClient
          (Core.Proxy :: Core.Proxy AndroidPublisherUsersCreateResource)
          Core.mempty
