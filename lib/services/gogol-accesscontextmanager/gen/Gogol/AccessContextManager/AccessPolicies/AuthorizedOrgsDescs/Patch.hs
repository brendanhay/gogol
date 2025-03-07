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
-- Module      : Gogol.AccessContextManager.AccessPolicies.AuthorizedOrgsDescs.Patch
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates an authorized orgs desc. The long-running operation from this RPC has a successful status after the authorized orgs desc propagates to long-lasting storage. If a authorized orgs desc contains errors, an error response is returned for the first error encountered. Only the organization list in @AuthorizedOrgsDesc@ can be updated. The name, authorization/type, asset/type and authorization_direction cannot be updated.
--
-- /See:/ <https://cloud.google.com/access-context-manager/docs/reference/rest/ Access Context Manager API Reference> for @accesscontextmanager.accessPolicies.authorizedOrgsDescs.patch@.
module Gogol.AccessContextManager.AccessPolicies.AuthorizedOrgsDescs.Patch
  ( -- * Resource
    AccessContextManagerAccessPoliciesAuthorizedOrgsDescsPatchResource,

    -- ** Constructing a Request
    AccessContextManagerAccessPoliciesAuthorizedOrgsDescsPatch (..),
    newAccessContextManagerAccessPoliciesAuthorizedOrgsDescsPatch,
  )
where

import Gogol.AccessContextManager.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @accesscontextmanager.accessPolicies.authorizedOrgsDescs.patch@ method which the
-- 'AccessContextManagerAccessPoliciesAuthorizedOrgsDescsPatch' request conforms to.
type AccessContextManagerAccessPoliciesAuthorizedOrgsDescsPatchResource =
  "v1"
    Core.:> Core.Capture "name" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "updateMask" Core.FieldMask
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] AuthorizedOrgsDesc
    Core.:> Core.Patch '[Core.JSON] Operation

-- | Updates an authorized orgs desc. The long-running operation from this RPC has a successful status after the authorized orgs desc propagates to long-lasting storage. If a authorized orgs desc contains errors, an error response is returned for the first error encountered. Only the organization list in @AuthorizedOrgsDesc@ can be updated. The name, authorization/type, asset/type and authorization_direction cannot be updated.
--
-- /See:/ 'newAccessContextManagerAccessPoliciesAuthorizedOrgsDescsPatch' smart constructor.
data AccessContextManagerAccessPoliciesAuthorizedOrgsDescsPatch = AccessContextManagerAccessPoliciesAuthorizedOrgsDescsPatch
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Identifier. Resource name for the @AuthorizedOrgsDesc@. Format: @accessPolicies\/{access_policy}\/authorizedOrgsDescs\/{authorized_orgs_desc}@. The @authorized_orgs_desc@ component must begin with a letter, followed by alphanumeric characters or @_@. After you create an @AuthorizedOrgsDesc@, you cannot change its @name@.
    name :: Core.Text,
    -- | Multipart request metadata.
    payload :: AuthorizedOrgsDesc,
    -- | Required. Mask to control which fields get updated. Must be non-empty.
    updateMask :: (Core.Maybe Core.FieldMask),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AccessContextManagerAccessPoliciesAuthorizedOrgsDescsPatch' with the minimum fields required to make a request.
newAccessContextManagerAccessPoliciesAuthorizedOrgsDescsPatch ::
  -- |  Identifier. Resource name for the @AuthorizedOrgsDesc@. Format: @accessPolicies\/{access_policy}\/authorizedOrgsDescs\/{authorized_orgs_desc}@. The @authorized_orgs_desc@ component must begin with a letter, followed by alphanumeric characters or @_@. After you create an @AuthorizedOrgsDesc@, you cannot change its @name@. See 'name'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  AuthorizedOrgsDesc ->
  AccessContextManagerAccessPoliciesAuthorizedOrgsDescsPatch
newAccessContextManagerAccessPoliciesAuthorizedOrgsDescsPatch
  name
  payload =
    AccessContextManagerAccessPoliciesAuthorizedOrgsDescsPatch
      { xgafv =
          Core.Nothing,
        accessToken = Core.Nothing,
        callback = Core.Nothing,
        name = name,
        payload = payload,
        updateMask = Core.Nothing,
        uploadType = Core.Nothing,
        uploadProtocol = Core.Nothing
      }

instance
  Core.GoogleRequest
    AccessContextManagerAccessPoliciesAuthorizedOrgsDescsPatch
  where
  type
    Rs AccessContextManagerAccessPoliciesAuthorizedOrgsDescsPatch =
      Operation
  type
    Scopes
      AccessContextManagerAccessPoliciesAuthorizedOrgsDescsPatch =
      '[CloudPlatform'FullControl]
  requestClient
    AccessContextManagerAccessPoliciesAuthorizedOrgsDescsPatch {..} =
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
                Core.Proxy
                  AccessContextManagerAccessPoliciesAuthorizedOrgsDescsPatchResource
            )
            Core.mempty
