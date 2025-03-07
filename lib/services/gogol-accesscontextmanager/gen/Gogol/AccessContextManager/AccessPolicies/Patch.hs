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
-- Module      : Gogol.AccessContextManager.AccessPolicies.Patch
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates an access policy. The long-running operation from this RPC has a successful status after the changes to the access policy propagate to long-lasting storage.
--
-- /See:/ <https://cloud.google.com/access-context-manager/docs/reference/rest/ Access Context Manager API Reference> for @accesscontextmanager.accessPolicies.patch@.
module Gogol.AccessContextManager.AccessPolicies.Patch
  ( -- * Resource
    AccessContextManagerAccessPoliciesPatchResource,

    -- ** Constructing a Request
    AccessContextManagerAccessPoliciesPatch (..),
    newAccessContextManagerAccessPoliciesPatch,
  )
where

import Gogol.AccessContextManager.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @accesscontextmanager.accessPolicies.patch@ method which the
-- 'AccessContextManagerAccessPoliciesPatch' request conforms to.
type AccessContextManagerAccessPoliciesPatchResource =
  "v1"
    Core.:> Core.Capture "name" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "updateMask" Core.FieldMask
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] AccessPolicy
    Core.:> Core.Patch '[Core.JSON] Operation

-- | Updates an access policy. The long-running operation from this RPC has a successful status after the changes to the access policy propagate to long-lasting storage.
--
-- /See:/ 'newAccessContextManagerAccessPoliciesPatch' smart constructor.
data AccessContextManagerAccessPoliciesPatch = AccessContextManagerAccessPoliciesPatch
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Output only. Identifier. Resource name of the @AccessPolicy@. Format: @accessPolicies\/{access_policy}@
    name :: Core.Text,
    -- | Multipart request metadata.
    payload :: AccessPolicy,
    -- | Required. Mask to control which fields get updated. Must be non-empty.
    updateMask :: (Core.Maybe Core.FieldMask),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AccessContextManagerAccessPoliciesPatch' with the minimum fields required to make a request.
newAccessContextManagerAccessPoliciesPatch ::
  -- |  Output only. Identifier. Resource name of the @AccessPolicy@. Format: @accessPolicies\/{access_policy}@ See 'name'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  AccessPolicy ->
  AccessContextManagerAccessPoliciesPatch
newAccessContextManagerAccessPoliciesPatch name payload =
  AccessContextManagerAccessPoliciesPatch
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      name = name,
      payload = payload,
      updateMask = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest AccessContextManagerAccessPoliciesPatch where
  type Rs AccessContextManagerAccessPoliciesPatch = Operation
  type
    Scopes AccessContextManagerAccessPoliciesPatch =
      '[CloudPlatform'FullControl]
  requestClient AccessContextManagerAccessPoliciesPatch {..} =
    go
      name
      xgafv
      accessToken
      callback
      updateMask
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      payload
      accessContextManagerService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy AccessContextManagerAccessPoliciesPatchResource
          )
          Core.mempty
