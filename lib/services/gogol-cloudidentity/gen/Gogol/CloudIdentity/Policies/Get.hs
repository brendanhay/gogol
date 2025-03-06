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
-- Module      : Gogol.CloudIdentity.Policies.Get
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Get a Policy
--
-- /See:/ <https://cloud.google.com/identity/ Cloud Identity API Reference> for @cloudidentity.policies.get@.
module Gogol.CloudIdentity.Policies.Get
  ( -- * Resource
    CloudIdentityPoliciesGetResource,

    -- ** Constructing a Request
    CloudIdentityPoliciesGet (..),
    newCloudIdentityPoliciesGet,
  )
where

import Gogol.CloudIdentity.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @cloudidentity.policies.get@ method which the
-- 'CloudIdentityPoliciesGet' request conforms to.
type CloudIdentityPoliciesGetResource =
  "v1"
    Core.:> Core.Capture "name" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] Policy

-- | Get a Policy
--
-- /See:/ 'newCloudIdentityPoliciesGet' smart constructor.
data CloudIdentityPoliciesGet = CloudIdentityPoliciesGet
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The name of the policy to retrieve. Format: \"policies\/{policy}\".
    name :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CloudIdentityPoliciesGet' with the minimum fields required to make a request.
newCloudIdentityPoliciesGet ::
  -- |  Required. The name of the policy to retrieve. Format: \"policies\/{policy}\". See 'name'.
  Core.Text ->
  CloudIdentityPoliciesGet
newCloudIdentityPoliciesGet name =
  CloudIdentityPoliciesGet
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      name = name,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest CloudIdentityPoliciesGet where
  type Rs CloudIdentityPoliciesGet = Policy
  type
    Scopes CloudIdentityPoliciesGet =
      '[CloudIdentity'Policies, CloudIdentity'Policies'Readonly]
  requestClient CloudIdentityPoliciesGet {..} =
    go
      name
      xgafv
      accessToken
      callback
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      cloudIdentityService
    where
      go =
        Core.buildClient
          (Core.Proxy :: Core.Proxy CloudIdentityPoliciesGetResource)
          Core.mempty
