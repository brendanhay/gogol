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
-- Module      : Network.Google.AccessContextManager.AccessPolicies.AccessLevels.Create
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates an access level. The long-running operation from this RPC has a successful status after the access level propagates to long-lasting storage. If access levels contain errors, an error response is returned for the first error encountered.
--
-- /See:/ <https://cloud.google.com/access-context-manager/docs/reference/rest/ Access Context Manager API Reference> for @accesscontextmanager.accessPolicies.accessLevels.create@.
module Network.Google.AccessContextManager.AccessPolicies.AccessLevels.Create
  ( -- * Resource
    AccessContextManagerAccessPoliciesAccessLevelsCreateResource,

    -- ** Constructing a Request
    newAccessContextManagerAccessPoliciesAccessLevelsCreate,
    AccessContextManagerAccessPoliciesAccessLevelsCreate,
  )
where

import Network.Google.AccessContextManager.Types
import qualified Network.Google.Prelude as Core

-- | A resource alias for @accesscontextmanager.accessPolicies.accessLevels.create@ method which the
-- 'AccessContextManagerAccessPoliciesAccessLevelsCreate' request conforms to.
type AccessContextManagerAccessPoliciesAccessLevelsCreateResource =
  "v1"
    Core.:> Core.Capture "parent" Core.Text
    Core.:> "accessLevels"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] AccessLevel
    Core.:> Core.Post '[Core.JSON] Operation

-- | Creates an access level. The long-running operation from this RPC has a successful status after the access level propagates to long-lasting storage. If access levels contain errors, an error response is returned for the first error encountered.
--
-- /See:/ 'newAccessContextManagerAccessPoliciesAccessLevelsCreate' smart constructor.
data AccessContextManagerAccessPoliciesAccessLevelsCreate = AccessContextManagerAccessPoliciesAccessLevelsCreate
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. Resource name for the access policy which owns this Access Level. Format: @accessPolicies\/{policy_id}@
    parent :: Core.Text,
    -- | Multipart request metadata.
    payload :: AccessLevel,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AccessContextManagerAccessPoliciesAccessLevelsCreate' with the minimum fields required to make a request.
newAccessContextManagerAccessPoliciesAccessLevelsCreate ::
  -- |  Required. Resource name for the access policy which owns this Access Level. Format: @accessPolicies\/{policy_id}@ See 'parent'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  AccessLevel ->
  AccessContextManagerAccessPoliciesAccessLevelsCreate
newAccessContextManagerAccessPoliciesAccessLevelsCreate parent payload =
  AccessContextManagerAccessPoliciesAccessLevelsCreate
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      parent = parent,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    AccessContextManagerAccessPoliciesAccessLevelsCreate
  where
  type
    Rs
      AccessContextManagerAccessPoliciesAccessLevelsCreate =
      Operation
  type
    Scopes
      AccessContextManagerAccessPoliciesAccessLevelsCreate =
      '["https://www.googleapis.com/auth/cloud-platform"]
  requestClient
    AccessContextManagerAccessPoliciesAccessLevelsCreate {..} =
      go
        parent
        xgafv
        accessToken
        callback
        uploadType
        uploadProtocol
        (Core.Just Core.AltJSON)
        payload
        accessContextManagerService
      where
        go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy
                  AccessContextManagerAccessPoliciesAccessLevelsCreateResource
            )
            Core.mempty
