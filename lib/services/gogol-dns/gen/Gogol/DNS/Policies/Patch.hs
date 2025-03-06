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
-- Module      : Gogol.DNS.Policies.Patch
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Applies a partial update to an existing Policy.
--
-- /See:/ <https://cloud.google.com/dns/docs Cloud DNS API Reference> for @dns.policies.patch@.
module Gogol.DNS.Policies.Patch
  ( -- * Resource
    DNSPoliciesPatchResource,

    -- ** Constructing a Request
    DNSPoliciesPatch (..),
    newDNSPoliciesPatch,
  )
where

import Gogol.DNS.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @dns.policies.patch@ method which the
-- 'DNSPoliciesPatch' request conforms to.
type DNSPoliciesPatchResource =
  "dns"
    Core.:> "v2"
    Core.:> "projects"
    Core.:> Core.Capture "project" Core.Text
    Core.:> "locations"
    Core.:> Core.Capture "location" Core.Text
    Core.:> "policies"
    Core.:> Core.Capture "policy" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "clientOperationId" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] Policy
    Core.:> Core.Patch '[Core.JSON] PoliciesPatchResponse

-- | Applies a partial update to an existing Policy.
--
-- /See:/ 'newDNSPoliciesPatch' smart constructor.
data DNSPoliciesPatch = DNSPoliciesPatch
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | For mutating operation requests only. An optional identifier specified by the client. Must be unique for operation resources in the Operations collection.
    clientOperationId :: (Core.Maybe Core.Text),
    -- | Specifies the location of the resource. This information will be used for routing and will be part of the resource name.
    location :: Core.Text,
    -- | Multipart request metadata.
    payload :: Policy,
    -- | User given friendly name of the policy addressed by this request.
    policy :: Core.Text,
    -- | Identifies the project addressed by this request.
    project :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DNSPoliciesPatch' with the minimum fields required to make a request.
newDNSPoliciesPatch ::
  -- |  Multipart request metadata. See 'payload'.
  Policy ->
  -- |  User given friendly name of the policy addressed by this request. See 'policy'.
  Core.Text ->
  -- |  Identifies the project addressed by this request. See 'project'.
  Core.Text ->
  DNSPoliciesPatch
newDNSPoliciesPatch payload policy project =
  DNSPoliciesPatch
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      clientOperationId = Core.Nothing,
      location = "global",
      payload = payload,
      policy = policy,
      project = project,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest DNSPoliciesPatch where
  type Rs DNSPoliciesPatch = PoliciesPatchResponse
  type
    Scopes DNSPoliciesPatch =
      '[CloudPlatform'FullControl, Ndev'Clouddns'Readwrite]
  requestClient DNSPoliciesPatch {..} =
    go
      project
      location
      policy
      xgafv
      accessToken
      callback
      clientOperationId
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      payload
      dNSService
    where
      go =
        Core.buildClient
          (Core.Proxy :: Core.Proxy DNSPoliciesPatchResource)
          Core.mempty
