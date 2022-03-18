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
-- Module      : Network.Google.AccessContextManager.AccessPolicies.ServicePerimeters.Commit
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Commits the dry-run specification for all the service perimeters in an access policy. A commit operation on a service perimeter involves copying its @spec@ field to the @status@ field of the service perimeter. Only service perimeters with @use_explicit_dry_run_spec@ field set to true are affected by a commit operation. The long-running operation from this RPC has a successful status after the dry-run specifications for all the service perimeters have been committed. If a commit fails, it causes the long-running operation to return an error response and the entire commit operation is cancelled. When successful, the Operation.response field contains CommitServicePerimetersResponse. The @dry_run@ and the @spec@ fields are cleared after a successful commit operation.
--
-- /See:/ <https://cloud.google.com/access-context-manager/docs/reference/rest/ Access Context Manager API Reference> for @accesscontextmanager.accessPolicies.servicePerimeters.commit@.
module Network.Google.AccessContextManager.AccessPolicies.ServicePerimeters.Commit
  ( -- * Resource
    AccessContextManagerAccessPoliciesServicePerimetersCommitResource,

    -- ** Constructing a Request
    newAccessContextManagerAccessPoliciesServicePerimetersCommit,
    AccessContextManagerAccessPoliciesServicePerimetersCommit,
  )
where

import Network.Google.AccessContextManager.Types
import qualified Network.Google.Prelude as Core

-- | A resource alias for @accesscontextmanager.accessPolicies.servicePerimeters.commit@ method which the
-- 'AccessContextManagerAccessPoliciesServicePerimetersCommit' request conforms to.
type AccessContextManagerAccessPoliciesServicePerimetersCommitResource =
  "v1"
    Core.:> Core.Capture "parent" Core.Text
    Core.:> "servicePerimeters:commit"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody
              '[Core.JSON]
              CommitServicePerimetersRequest
    Core.:> Core.Post '[Core.JSON] Operation

-- | Commits the dry-run specification for all the service perimeters in an access policy. A commit operation on a service perimeter involves copying its @spec@ field to the @status@ field of the service perimeter. Only service perimeters with @use_explicit_dry_run_spec@ field set to true are affected by a commit operation. The long-running operation from this RPC has a successful status after the dry-run specifications for all the service perimeters have been committed. If a commit fails, it causes the long-running operation to return an error response and the entire commit operation is cancelled. When successful, the Operation.response field contains CommitServicePerimetersResponse. The @dry_run@ and the @spec@ fields are cleared after a successful commit operation.
--
-- /See:/ 'newAccessContextManagerAccessPoliciesServicePerimetersCommit' smart constructor.
data AccessContextManagerAccessPoliciesServicePerimetersCommit = AccessContextManagerAccessPoliciesServicePerimetersCommit
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. Resource name for the parent Access Policy which owns all Service Perimeters in scope for the commit operation. Format: @accessPolicies\/{policy_id}@
    parent :: Core.Text,
    -- | Multipart request metadata.
    payload :: CommitServicePerimetersRequest,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AccessContextManagerAccessPoliciesServicePerimetersCommit' with the minimum fields required to make a request.
newAccessContextManagerAccessPoliciesServicePerimetersCommit ::
  -- |  Required. Resource name for the parent Access Policy which owns all Service Perimeters in scope for the commit operation. Format: @accessPolicies\/{policy_id}@ See 'parent'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  CommitServicePerimetersRequest ->
  AccessContextManagerAccessPoliciesServicePerimetersCommit
newAccessContextManagerAccessPoliciesServicePerimetersCommit parent payload =
  AccessContextManagerAccessPoliciesServicePerimetersCommit
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
    AccessContextManagerAccessPoliciesServicePerimetersCommit
  where
  type
    Rs
      AccessContextManagerAccessPoliciesServicePerimetersCommit =
      Operation
  type
    Scopes
      AccessContextManagerAccessPoliciesServicePerimetersCommit =
      '["https://www.googleapis.com/auth/cloud-platform"]
  requestClient
    AccessContextManagerAccessPoliciesServicePerimetersCommit {..} =
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
                  AccessContextManagerAccessPoliciesServicePerimetersCommitResource
            )
            Core.mempty
