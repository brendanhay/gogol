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
-- Module      : Gogol.OSLogin.Users.ImportSshPublicKey
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Adds an SSH public key and returns the profile information. Default POSIX account information is set when no username and UID exist as part of the login profile.
--
-- /See:/ <https://cloud.google.com/compute/docs/oslogin/ Cloud OS Login API Reference> for @oslogin.users.importSshPublicKey@.
module Gogol.OSLogin.Users.ImportSshPublicKey
  ( -- * Resource
    OSLoginUsersImportSshPublicKeyResource,

    -- ** Constructing a Request
    OSLoginUsersImportSshPublicKey (..),
    newOSLoginUsersImportSshPublicKey,
  )
where

import Gogol.OSLogin.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @oslogin.users.importSshPublicKey@ method which the
-- 'OSLoginUsersImportSshPublicKey' request conforms to.
type OSLoginUsersImportSshPublicKeyResource =
  "v1"
    Core.:> Core.CaptureMode
              "parent"
              "importSshPublicKey"
              Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "projectId" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] SshPublicKey
    Core.:> Core.Post '[Core.JSON] ImportSshPublicKeyResponse

-- | Adds an SSH public key and returns the profile information. Default POSIX account information is set when no username and UID exist as part of the login profile.
--
-- /See:/ 'newOSLoginUsersImportSshPublicKey' smart constructor.
data OSLoginUsersImportSshPublicKey = OSLoginUsersImportSshPublicKey
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The unique ID for the user in format @users\/{user}@.
    parent :: Core.Text,
    -- | Multipart request metadata.
    payload :: SshPublicKey,
    -- | The project ID of the Google Cloud Platform project.
    projectId :: (Core.Maybe Core.Text),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'OSLoginUsersImportSshPublicKey' with the minimum fields required to make a request.
newOSLoginUsersImportSshPublicKey ::
  -- |  Required. The unique ID for the user in format @users\/{user}@. See 'parent'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  SshPublicKey ->
  OSLoginUsersImportSshPublicKey
newOSLoginUsersImportSshPublicKey parent payload =
  OSLoginUsersImportSshPublicKey
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      parent = parent,
      payload = payload,
      projectId = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    OSLoginUsersImportSshPublicKey
  where
  type
    Rs OSLoginUsersImportSshPublicKey =
      ImportSshPublicKeyResponse
  type
    Scopes OSLoginUsersImportSshPublicKey =
      '[CloudPlatform'FullControl, Compute'FullControl]
  requestClient OSLoginUsersImportSshPublicKey {..} =
    go
      parent
      xgafv
      accessToken
      callback
      projectId
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      payload
      oSLoginService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy OSLoginUsersImportSshPublicKeyResource
          )
          Core.mempty
