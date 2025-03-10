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
-- Module      : Gogol.AccessContextManager.AccessPolicies.AccessLevels.Get
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets an access level based on the resource name.
--
-- /See:/ <https://cloud.google.com/access-context-manager/docs/reference/rest/ Access Context Manager API Reference> for @accesscontextmanager.accessPolicies.accessLevels.get@.
module Gogol.AccessContextManager.AccessPolicies.AccessLevels.Get
  ( -- * Resource
    AccessContextManagerAccessPoliciesAccessLevelsGetResource,

    -- ** Constructing a Request
    AccessContextManagerAccessPoliciesAccessLevelsGet (..),
    newAccessContextManagerAccessPoliciesAccessLevelsGet,
  )
where

import Gogol.AccessContextManager.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @accesscontextmanager.accessPolicies.accessLevels.get@ method which the
-- 'AccessContextManagerAccessPoliciesAccessLevelsGet' request conforms to.
type AccessContextManagerAccessPoliciesAccessLevelsGetResource =
  "v1"
    Core.:> Core.Capture "name" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam
              "accessLevelFormat"
              AccessPoliciesAccessLevelsGetAccessLevelFormat
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] AccessLevel

-- | Gets an access level based on the resource name.
--
-- /See:/ 'newAccessContextManagerAccessPoliciesAccessLevelsGet' smart constructor.
data AccessContextManagerAccessPoliciesAccessLevelsGet = AccessContextManagerAccessPoliciesAccessLevelsGet
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | Whether to return @BasicLevels@ in the Cloud Common Expression Language rather than as @BasicLevels@. Defaults to AS_DEFINED, where Access Levels are returned as @BasicLevels@ or @CustomLevels@ based on how they were created. If set to CEL, all Access Levels are returned as @CustomLevels@. In the CEL case, @BasicLevels@ are translated to equivalent @CustomLevels@.
    accessLevelFormat :: (Core.Maybe AccessPoliciesAccessLevelsGetAccessLevelFormat),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. Resource name for the Access Level. Format: @accessPolicies\/{policy_id}\/accessLevels\/{access_level_id}@
    name :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AccessContextManagerAccessPoliciesAccessLevelsGet' with the minimum fields required to make a request.
newAccessContextManagerAccessPoliciesAccessLevelsGet ::
  -- |  Required. Resource name for the Access Level. Format: @accessPolicies\/{policy_id}\/accessLevels\/{access_level_id}@ See 'name'.
  Core.Text ->
  AccessContextManagerAccessPoliciesAccessLevelsGet
newAccessContextManagerAccessPoliciesAccessLevelsGet name =
  AccessContextManagerAccessPoliciesAccessLevelsGet
    { xgafv =
        Core.Nothing,
      accessLevelFormat = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      name = name,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    AccessContextManagerAccessPoliciesAccessLevelsGet
  where
  type
    Rs AccessContextManagerAccessPoliciesAccessLevelsGet =
      AccessLevel
  type
    Scopes AccessContextManagerAccessPoliciesAccessLevelsGet =
      '[CloudPlatform'FullControl]
  requestClient AccessContextManagerAccessPoliciesAccessLevelsGet {..} =
    go
      name
      xgafv
      accessLevelFormat
      accessToken
      callback
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      accessContextManagerService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy
                AccessContextManagerAccessPoliciesAccessLevelsGetResource
          )
          Core.mempty
