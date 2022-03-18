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
-- Module      : Network.Google.AccessContextManager.AccessPolicies.AccessLevels.ReplaceAll
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Replaces all existing access levels in an access policy with the access levels provided. This is done atomically. The long-running operation from this RPC has a successful status after all replacements propagate to long-lasting storage. If the replacement contains errors, an error response is returned for the first error encountered. Upon error, the replacement is cancelled, and existing access levels are not affected. The Operation.response field contains ReplaceAccessLevelsResponse. Removing access levels contained in existing service perimeters result in an error.
--
-- /See:/ <https://cloud.google.com/access-context-manager/docs/reference/rest/ Access Context Manager API Reference> for @accesscontextmanager.accessPolicies.accessLevels.replaceAll@.
module Network.Google.AccessContextManager.AccessPolicies.AccessLevels.ReplaceAll
  ( -- * Resource
    AccessContextManagerAccessPoliciesAccessLevelsReplaceAllResource,

    -- ** Constructing a Request
    newAccessContextManagerAccessPoliciesAccessLevelsReplaceAll,
    AccessContextManagerAccessPoliciesAccessLevelsReplaceAll,
  )
where

import Network.Google.AccessContextManager.Types
import qualified Network.Google.Prelude as Core

-- | A resource alias for @accesscontextmanager.accessPolicies.accessLevels.replaceAll@ method which the
-- 'AccessContextManagerAccessPoliciesAccessLevelsReplaceAll' request conforms to.
type AccessContextManagerAccessPoliciesAccessLevelsReplaceAllResource =
  "v1"
    Core.:> Core.Capture "parent" Core.Text
    Core.:> "accessLevels:replaceAll"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] ReplaceAccessLevelsRequest
    Core.:> Core.Post '[Core.JSON] Operation

-- | Replaces all existing access levels in an access policy with the access levels provided. This is done atomically. The long-running operation from this RPC has a successful status after all replacements propagate to long-lasting storage. If the replacement contains errors, an error response is returned for the first error encountered. Upon error, the replacement is cancelled, and existing access levels are not affected. The Operation.response field contains ReplaceAccessLevelsResponse. Removing access levels contained in existing service perimeters result in an error.
--
-- /See:/ 'newAccessContextManagerAccessPoliciesAccessLevelsReplaceAll' smart constructor.
data AccessContextManagerAccessPoliciesAccessLevelsReplaceAll = AccessContextManagerAccessPoliciesAccessLevelsReplaceAll
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. Resource name for the access policy which owns these Access Levels. Format: @accessPolicies\/{policy_id}@
    parent :: Core.Text,
    -- | Multipart request metadata.
    payload :: ReplaceAccessLevelsRequest,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AccessContextManagerAccessPoliciesAccessLevelsReplaceAll' with the minimum fields required to make a request.
newAccessContextManagerAccessPoliciesAccessLevelsReplaceAll ::
  -- |  Required. Resource name for the access policy which owns these Access Levels. Format: @accessPolicies\/{policy_id}@ See 'parent'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  ReplaceAccessLevelsRequest ->
  AccessContextManagerAccessPoliciesAccessLevelsReplaceAll
newAccessContextManagerAccessPoliciesAccessLevelsReplaceAll parent payload =
  AccessContextManagerAccessPoliciesAccessLevelsReplaceAll
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
    AccessContextManagerAccessPoliciesAccessLevelsReplaceAll
  where
  type
    Rs
      AccessContextManagerAccessPoliciesAccessLevelsReplaceAll =
      Operation
  type
    Scopes
      AccessContextManagerAccessPoliciesAccessLevelsReplaceAll =
      '["https://www.googleapis.com/auth/cloud-platform"]
  requestClient
    AccessContextManagerAccessPoliciesAccessLevelsReplaceAll {..} =
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
                  AccessContextManagerAccessPoliciesAccessLevelsReplaceAllResource
            )
            Core.mempty
