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
-- Module      : Gogol.CloudShell.Users.Environments.AddPublicKey
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Adds a public SSH key to an environment, allowing clients with the corresponding private key to connect to that environment via SSH. If a key with the same content already exists, this will error with ALREADY_EXISTS.
--
-- /See:/ <https://cloud.google.com/shell/docs/ Cloud Shell API Reference> for @cloudshell.users.environments.addPublicKey@.
module Gogol.CloudShell.Users.Environments.AddPublicKey
  ( -- * Resource
    CloudShellUsersEnvironmentsAddPublicKeyResource,

    -- ** Constructing a Request
    newCloudShellUsersEnvironmentsAddPublicKey,
    CloudShellUsersEnvironmentsAddPublicKey,
  )
where

import Gogol.CloudShell.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @cloudshell.users.environments.addPublicKey@ method which the
-- 'CloudShellUsersEnvironmentsAddPublicKey' request conforms to.
type CloudShellUsersEnvironmentsAddPublicKeyResource =
  "v1"
    Core.:> Core.CaptureMode
              "environment"
              "addPublicKey"
              Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] AddPublicKeyRequest
    Core.:> Core.Post '[Core.JSON] Operation

-- | Adds a public SSH key to an environment, allowing clients with the corresponding private key to connect to that environment via SSH. If a key with the same content already exists, this will error with ALREADY_EXISTS.
--
-- /See:/ 'newCloudShellUsersEnvironmentsAddPublicKey' smart constructor.
data CloudShellUsersEnvironmentsAddPublicKey = CloudShellUsersEnvironmentsAddPublicKey
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Environment this key should be added to, e.g. @users\/me\/environments\/default@.
    environment :: Core.Text,
    -- | Multipart request metadata.
    payload :: AddPublicKeyRequest,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CloudShellUsersEnvironmentsAddPublicKey' with the minimum fields required to make a request.
newCloudShellUsersEnvironmentsAddPublicKey ::
  -- |  Environment this key should be added to, e.g. @users\/me\/environments\/default@. See 'environment'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  AddPublicKeyRequest ->
  CloudShellUsersEnvironmentsAddPublicKey
newCloudShellUsersEnvironmentsAddPublicKey environment payload =
  CloudShellUsersEnvironmentsAddPublicKey
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      environment = environment,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    CloudShellUsersEnvironmentsAddPublicKey
  where
  type
    Rs CloudShellUsersEnvironmentsAddPublicKey =
      Operation
  type
    Scopes CloudShellUsersEnvironmentsAddPublicKey =
      '[CloudPlatform'FullControl]
  requestClient
    CloudShellUsersEnvironmentsAddPublicKey {..} =
      go
        environment
        xgafv
        accessToken
        callback
        uploadType
        uploadProtocol
        (Core.Just Core.AltJSON)
        payload
        cloudShellService
      where
        go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy
                  CloudShellUsersEnvironmentsAddPublicKeyResource
            )
            Core.mempty
