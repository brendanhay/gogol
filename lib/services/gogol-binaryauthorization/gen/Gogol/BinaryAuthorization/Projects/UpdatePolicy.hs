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
-- Module      : Gogol.BinaryAuthorization.Projects.UpdatePolicy
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates or updates a project\'s policy, and returns a copy of the new policy. A policy is always updated as a whole, to avoid race conditions with concurrent policy enforcement (or management!) requests. Returns @NOT_FOUND@ if the project does not exist, @INVALID_ARGUMENT@ if the request is malformed.
--
-- /See:/ <https://cloud.google.com/binary-authorization/ Binary Authorization API Reference> for @binaryauthorization.projects.updatePolicy@.
module Gogol.BinaryAuthorization.Projects.UpdatePolicy
  ( -- * Resource
    BinaryAuthorizationProjectsUpdatePolicyResource,

    -- ** Constructing a Request
    BinaryAuthorizationProjectsUpdatePolicy (..),
    newBinaryAuthorizationProjectsUpdatePolicy,
  )
where

import Gogol.BinaryAuthorization.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @binaryauthorization.projects.updatePolicy@ method which the
-- 'BinaryAuthorizationProjectsUpdatePolicy' request conforms to.
type BinaryAuthorizationProjectsUpdatePolicyResource =
  "v1"
    Core.:> Core.Capture "name" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] Policy
    Core.:> Core.Put '[Core.JSON] Policy

-- | Creates or updates a project\'s policy, and returns a copy of the new policy. A policy is always updated as a whole, to avoid race conditions with concurrent policy enforcement (or management!) requests. Returns @NOT_FOUND@ if the project does not exist, @INVALID_ARGUMENT@ if the request is malformed.
--
-- /See:/ 'newBinaryAuthorizationProjectsUpdatePolicy' smart constructor.
data BinaryAuthorizationProjectsUpdatePolicy = BinaryAuthorizationProjectsUpdatePolicy
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Output only. The resource name, in the format @projects\/*\/policy@. There is at most one policy per project.
    name :: Core.Text,
    -- | Multipart request metadata.
    payload :: Policy,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BinaryAuthorizationProjectsUpdatePolicy' with the minimum fields required to make a request.
newBinaryAuthorizationProjectsUpdatePolicy ::
  -- |  Output only. The resource name, in the format @projects\/*\/policy@. There is at most one policy per project. See 'name'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  Policy ->
  BinaryAuthorizationProjectsUpdatePolicy
newBinaryAuthorizationProjectsUpdatePolicy name payload =
  BinaryAuthorizationProjectsUpdatePolicy
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      name = name,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest BinaryAuthorizationProjectsUpdatePolicy where
  type Rs BinaryAuthorizationProjectsUpdatePolicy = Policy
  type
    Scopes BinaryAuthorizationProjectsUpdatePolicy =
      '[CloudPlatform'FullControl]
  requestClient BinaryAuthorizationProjectsUpdatePolicy {..} =
    go
      name
      xgafv
      accessToken
      callback
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      payload
      binaryAuthorizationService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy BinaryAuthorizationProjectsUpdatePolicyResource
          )
          Core.mempty
