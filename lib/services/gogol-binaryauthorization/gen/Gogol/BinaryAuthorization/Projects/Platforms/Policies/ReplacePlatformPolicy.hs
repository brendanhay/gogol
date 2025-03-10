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
-- Module      : Gogol.BinaryAuthorization.Projects.Platforms.Policies.ReplacePlatformPolicy
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Replaces a platform policy. Returns @NOT_FOUND@ if the policy doesn\'t exist.
--
-- /See:/ <https://cloud.google.com/binary-authorization/ Binary Authorization API Reference> for @binaryauthorization.projects.platforms.policies.replacePlatformPolicy@.
module Gogol.BinaryAuthorization.Projects.Platforms.Policies.ReplacePlatformPolicy
  ( -- * Resource
    BinaryAuthorizationProjectsPlatformsPoliciesReplacePlatformPolicyResource,

    -- ** Constructing a Request
    BinaryAuthorizationProjectsPlatformsPoliciesReplacePlatformPolicy (..),
    newBinaryAuthorizationProjectsPlatformsPoliciesReplacePlatformPolicy,
  )
where

import Gogol.BinaryAuthorization.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @binaryauthorization.projects.platforms.policies.replacePlatformPolicy@ method which the
-- 'BinaryAuthorizationProjectsPlatformsPoliciesReplacePlatformPolicy' request conforms to.
type BinaryAuthorizationProjectsPlatformsPoliciesReplacePlatformPolicyResource =
  "v1"
    Core.:> Core.Capture "name" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] PlatformPolicy
    Core.:> Core.Put '[Core.JSON] PlatformPolicy

-- | Replaces a platform policy. Returns @NOT_FOUND@ if the policy doesn\'t exist.
--
-- /See:/ 'newBinaryAuthorizationProjectsPlatformsPoliciesReplacePlatformPolicy' smart constructor.
data BinaryAuthorizationProjectsPlatformsPoliciesReplacePlatformPolicy = BinaryAuthorizationProjectsPlatformsPoliciesReplacePlatformPolicy
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Output only. The relative resource name of the Binary Authorization platform policy, in the form of @projects\/*\/platforms\/*\/policies\/*@.
    name :: Core.Text,
    -- | Multipart request metadata.
    payload :: PlatformPolicy,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BinaryAuthorizationProjectsPlatformsPoliciesReplacePlatformPolicy' with the minimum fields required to make a request.
newBinaryAuthorizationProjectsPlatformsPoliciesReplacePlatformPolicy ::
  -- |  Output only. The relative resource name of the Binary Authorization platform policy, in the form of @projects\/*\/platforms\/*\/policies\/*@. See 'name'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  PlatformPolicy ->
  BinaryAuthorizationProjectsPlatformsPoliciesReplacePlatformPolicy
newBinaryAuthorizationProjectsPlatformsPoliciesReplacePlatformPolicy
  name
  payload =
    BinaryAuthorizationProjectsPlatformsPoliciesReplacePlatformPolicy
      { xgafv =
          Core.Nothing,
        accessToken = Core.Nothing,
        callback = Core.Nothing,
        name = name,
        payload = payload,
        uploadType = Core.Nothing,
        uploadProtocol = Core.Nothing
      }

instance
  Core.GoogleRequest
    BinaryAuthorizationProjectsPlatformsPoliciesReplacePlatformPolicy
  where
  type
    Rs
      BinaryAuthorizationProjectsPlatformsPoliciesReplacePlatformPolicy =
      PlatformPolicy
  type
    Scopes
      BinaryAuthorizationProjectsPlatformsPoliciesReplacePlatformPolicy =
      '[CloudPlatform'FullControl]
  requestClient
    BinaryAuthorizationProjectsPlatformsPoliciesReplacePlatformPolicy {..} =
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
                Core.Proxy
                  BinaryAuthorizationProjectsPlatformsPoliciesReplacePlatformPolicyResource
            )
            Core.mempty
