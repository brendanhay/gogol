{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE ImportQualifiedPost #-}
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
-- Module      : Gogol.CloudShell.Users.Environments.Start
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Starts an existing environment, allowing clients to connect to it. The returned operation will contain an instance of StartEnvironmentMetadata in its metadata field. Users can wait for the environment to start by polling this operation via GetOperation. Once the environment has finished starting and is ready to accept connections, the operation will contain a StartEnvironmentResponse in its response field.
--
-- /See:/ <https://cloud.google.com/shell/docs/ Cloud Shell API Reference> for @cloudshell.users.environments.start@.
module Gogol.CloudShell.Users.Environments.Start
  ( -- * Resource
    CloudShellUsersEnvironmentsStartResource,

    -- ** Constructing a Request
    CloudShellUsersEnvironmentsStart (..),
    newCloudShellUsersEnvironmentsStart,
  )
where

import Gogol.CloudShell.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @cloudshell.users.environments.start@ method which the
-- 'CloudShellUsersEnvironmentsStart' request conforms to.
type CloudShellUsersEnvironmentsStartResource =
  "v1"
    Core.:> Core.CaptureMode "name" "start" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] StartEnvironmentRequest
    Core.:> Core.Post '[Core.JSON] Operation

-- | Starts an existing environment, allowing clients to connect to it. The returned operation will contain an instance of StartEnvironmentMetadata in its metadata field. Users can wait for the environment to start by polling this operation via GetOperation. Once the environment has finished starting and is ready to accept connections, the operation will contain a StartEnvironmentResponse in its response field.
--
-- /See:/ 'newCloudShellUsersEnvironmentsStart' smart constructor.
data CloudShellUsersEnvironmentsStart = CloudShellUsersEnvironmentsStart
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Name of the resource that should be started, for example @users\/me\/environments\/default@ or @users\/someone\@example.com\/environments\/default@.
    name :: Core.Text,
    -- | Multipart request metadata.
    payload :: StartEnvironmentRequest,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CloudShellUsersEnvironmentsStart' with the minimum fields required to make a request.
newCloudShellUsersEnvironmentsStart ::
  -- |  Name of the resource that should be started, for example @users\/me\/environments\/default@ or @users\/someone\@example.com\/environments\/default@. See 'name'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  StartEnvironmentRequest ->
  CloudShellUsersEnvironmentsStart
newCloudShellUsersEnvironmentsStart name payload =
  CloudShellUsersEnvironmentsStart
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      name = name,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest CloudShellUsersEnvironmentsStart where
  type Rs CloudShellUsersEnvironmentsStart = Operation
  type
    Scopes CloudShellUsersEnvironmentsStart =
      '[CloudPlatform'FullControl]
  requestClient CloudShellUsersEnvironmentsStart {..} =
    go
      name
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
          (Core.Proxy :: Core.Proxy CloudShellUsersEnvironmentsStartResource)
          Core.mempty
