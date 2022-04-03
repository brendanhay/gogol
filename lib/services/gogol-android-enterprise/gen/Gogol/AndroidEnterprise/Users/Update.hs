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
-- Module      : Gogol.AndroidEnterprise.Users.Update
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates the details of an EMM-managed user. Can be used with EMM-managed users only (not Google managed users). Pass the new details in the Users resource in the request body. Only the displayName field can be changed. Other fields must either be unset or have the currently active value.
--
-- /See:/ <https://developers.google.com/android/work/play/emm-api Google Play EMM API Reference> for @androidenterprise.users.update@.
module Gogol.AndroidEnterprise.Users.Update
  ( -- * Resource
    AndroidEnterpriseUsersUpdateResource,

    -- ** Constructing a Request
    AndroidEnterpriseUsersUpdate (..),
    newAndroidEnterpriseUsersUpdate,
  )
where

import Gogol.AndroidEnterprise.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @androidenterprise.users.update@ method which the
-- 'AndroidEnterpriseUsersUpdate' request conforms to.
type AndroidEnterpriseUsersUpdateResource =
  "androidenterprise"
    Core.:> "v1"
    Core.:> "enterprises"
    Core.:> Core.Capture "enterpriseId" Core.Text
    Core.:> "users"
    Core.:> Core.Capture "userId" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] User
    Core.:> Core.Put '[Core.JSON] User

-- | Updates the details of an EMM-managed user. Can be used with EMM-managed users only (not Google managed users). Pass the new details in the Users resource in the request body. Only the displayName field can be changed. Other fields must either be unset or have the currently active value.
--
-- /See:/ 'newAndroidEnterpriseUsersUpdate' smart constructor.
data AndroidEnterpriseUsersUpdate = AndroidEnterpriseUsersUpdate
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The ID of the enterprise.
    enterpriseId :: Core.Text,
    -- | Multipart request metadata.
    payload :: User,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text),
    -- | The ID of the user.
    userId :: Core.Text
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AndroidEnterpriseUsersUpdate' with the minimum fields required to make a request.
newAndroidEnterpriseUsersUpdate ::
  -- |  The ID of the enterprise. See 'enterpriseId'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  User ->
  -- |  The ID of the user. See 'userId'.
  Core.Text ->
  AndroidEnterpriseUsersUpdate
newAndroidEnterpriseUsersUpdate enterpriseId payload userId =
  AndroidEnterpriseUsersUpdate
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      enterpriseId = enterpriseId,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing,
      userId = userId
    }

instance
  Core.GoogleRequest
    AndroidEnterpriseUsersUpdate
  where
  type Rs AndroidEnterpriseUsersUpdate = User
  type
    Scopes AndroidEnterpriseUsersUpdate =
      '[Androidenterprise'FullControl]
  requestClient AndroidEnterpriseUsersUpdate {..} =
    go
      enterpriseId
      userId
      xgafv
      accessToken
      callback
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      payload
      androidEnterpriseService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy AndroidEnterpriseUsersUpdateResource
          )
          Core.mempty
