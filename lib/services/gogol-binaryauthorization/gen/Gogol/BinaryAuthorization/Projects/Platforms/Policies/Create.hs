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
-- Module      : Gogol.BinaryAuthorization.Projects.Platforms.Policies.Create
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a platform policy, and returns a copy of it. Returns @NOT_FOUND@ if the project or platform doesn\'t exist, @INVALID_ARGUMENT@ if the request is malformed, @ALREADY_EXISTS@ if the policy already exists, and @INVALID_ARGUMENT@ if the policy contains a platform-specific policy that does not match the platform value specified in the URL.
--
-- /See:/ <https://cloud.google.com/binary-authorization/ Binary Authorization API Reference> for @binaryauthorization.projects.platforms.policies.create@.
module Gogol.BinaryAuthorization.Projects.Platforms.Policies.Create
  ( -- * Resource
    BinaryAuthorizationProjectsPlatformsPoliciesCreateResource,

    -- ** Constructing a Request
    BinaryAuthorizationProjectsPlatformsPoliciesCreate (..),
    newBinaryAuthorizationProjectsPlatformsPoliciesCreate,
  )
where

import Gogol.BinaryAuthorization.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @binaryauthorization.projects.platforms.policies.create@ method which the
-- 'BinaryAuthorizationProjectsPlatformsPoliciesCreate' request conforms to.
type BinaryAuthorizationProjectsPlatformsPoliciesCreateResource =
  "v1"
    Core.:> Core.Capture "parent" Core.Text
    Core.:> "policies"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "policyId" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] PlatformPolicy
    Core.:> Core.Post '[Core.JSON] PlatformPolicy

-- | Creates a platform policy, and returns a copy of it. Returns @NOT_FOUND@ if the project or platform doesn\'t exist, @INVALID_ARGUMENT@ if the request is malformed, @ALREADY_EXISTS@ if the policy already exists, and @INVALID_ARGUMENT@ if the policy contains a platform-specific policy that does not match the platform value specified in the URL.
--
-- /See:/ 'newBinaryAuthorizationProjectsPlatformsPoliciesCreate' smart constructor.
data BinaryAuthorizationProjectsPlatformsPoliciesCreate = BinaryAuthorizationProjectsPlatformsPoliciesCreate
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The parent of this platform policy.
    parent :: Core.Text,
    -- | Multipart request metadata.
    payload :: PlatformPolicy,
    -- | Required. The platform policy ID.
    policyId :: (Core.Maybe Core.Text),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BinaryAuthorizationProjectsPlatformsPoliciesCreate' with the minimum fields required to make a request.
newBinaryAuthorizationProjectsPlatformsPoliciesCreate ::
  -- |  Required. The parent of this platform policy. See 'parent'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  PlatformPolicy ->
  BinaryAuthorizationProjectsPlatformsPoliciesCreate
newBinaryAuthorizationProjectsPlatformsPoliciesCreate
  parent
  payload =
    BinaryAuthorizationProjectsPlatformsPoliciesCreate
      { xgafv =
          Core.Nothing,
        accessToken = Core.Nothing,
        callback = Core.Nothing,
        parent = parent,
        payload = payload,
        policyId = Core.Nothing,
        uploadType = Core.Nothing,
        uploadProtocol = Core.Nothing
      }

instance
  Core.GoogleRequest
    BinaryAuthorizationProjectsPlatformsPoliciesCreate
  where
  type
    Rs BinaryAuthorizationProjectsPlatformsPoliciesCreate =
      PlatformPolicy
  type
    Scopes BinaryAuthorizationProjectsPlatformsPoliciesCreate =
      '[CloudPlatform'FullControl]
  requestClient
    BinaryAuthorizationProjectsPlatformsPoliciesCreate {..} =
      go
        parent
        xgafv
        accessToken
        callback
        policyId
        uploadType
        uploadProtocol
        (Core.Just Core.AltJSON)
        payload
        binaryAuthorizationService
      where
        go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy
                  BinaryAuthorizationProjectsPlatformsPoliciesCreateResource
            )
            Core.mempty
