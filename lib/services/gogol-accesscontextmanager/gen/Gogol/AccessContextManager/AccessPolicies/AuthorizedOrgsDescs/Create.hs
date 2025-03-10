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
-- Module      : Gogol.AccessContextManager.AccessPolicies.AuthorizedOrgsDescs.Create
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates an authorized orgs desc. The long-running operation from this RPC has a successful status after the authorized orgs desc propagates to long-lasting storage. If a authorized orgs desc contains errors, an error response is returned for the first error encountered. The name of this @AuthorizedOrgsDesc@ will be assigned during creation.
--
-- /See:/ <https://cloud.google.com/access-context-manager/docs/reference/rest/ Access Context Manager API Reference> for @accesscontextmanager.accessPolicies.authorizedOrgsDescs.create@.
module Gogol.AccessContextManager.AccessPolicies.AuthorizedOrgsDescs.Create
  ( -- * Resource
    AccessContextManagerAccessPoliciesAuthorizedOrgsDescsCreateResource,

    -- ** Constructing a Request
    AccessContextManagerAccessPoliciesAuthorizedOrgsDescsCreate (..),
    newAccessContextManagerAccessPoliciesAuthorizedOrgsDescsCreate,
  )
where

import Gogol.AccessContextManager.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @accesscontextmanager.accessPolicies.authorizedOrgsDescs.create@ method which the
-- 'AccessContextManagerAccessPoliciesAuthorizedOrgsDescsCreate' request conforms to.
type AccessContextManagerAccessPoliciesAuthorizedOrgsDescsCreateResource =
  "v1"
    Core.:> Core.Capture "parent" Core.Text
    Core.:> "authorizedOrgsDescs"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] AuthorizedOrgsDesc
    Core.:> Core.Post '[Core.JSON] Operation

-- | Creates an authorized orgs desc. The long-running operation from this RPC has a successful status after the authorized orgs desc propagates to long-lasting storage. If a authorized orgs desc contains errors, an error response is returned for the first error encountered. The name of this @AuthorizedOrgsDesc@ will be assigned during creation.
--
-- /See:/ 'newAccessContextManagerAccessPoliciesAuthorizedOrgsDescsCreate' smart constructor.
data AccessContextManagerAccessPoliciesAuthorizedOrgsDescsCreate = AccessContextManagerAccessPoliciesAuthorizedOrgsDescsCreate
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. Resource name for the access policy which owns this Authorized Orgs Desc. Format: @accessPolicies\/{policy_id}@
    parent :: Core.Text,
    -- | Multipart request metadata.
    payload :: AuthorizedOrgsDesc,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AccessContextManagerAccessPoliciesAuthorizedOrgsDescsCreate' with the minimum fields required to make a request.
newAccessContextManagerAccessPoliciesAuthorizedOrgsDescsCreate ::
  -- |  Required. Resource name for the access policy which owns this Authorized Orgs Desc. Format: @accessPolicies\/{policy_id}@ See 'parent'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  AuthorizedOrgsDesc ->
  AccessContextManagerAccessPoliciesAuthorizedOrgsDescsCreate
newAccessContextManagerAccessPoliciesAuthorizedOrgsDescsCreate
  parent
  payload =
    AccessContextManagerAccessPoliciesAuthorizedOrgsDescsCreate
      { xgafv =
          Core.Nothing,
        accessToken = Core.Nothing,
        callback = Core.Nothing,
        parent = parent,
        payload = payload,
        uploadType = Core.Nothing,
        uploadProtocol = Core.Nothing
      }

instance
  Core.GoogleRequest
    AccessContextManagerAccessPoliciesAuthorizedOrgsDescsCreate
  where
  type
    Rs AccessContextManagerAccessPoliciesAuthorizedOrgsDescsCreate =
      Operation
  type
    Scopes
      AccessContextManagerAccessPoliciesAuthorizedOrgsDescsCreate =
      '[CloudPlatform'FullControl]
  requestClient
    AccessContextManagerAccessPoliciesAuthorizedOrgsDescsCreate {..} =
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
                  AccessContextManagerAccessPoliciesAuthorizedOrgsDescsCreateResource
            )
            Core.mempty
