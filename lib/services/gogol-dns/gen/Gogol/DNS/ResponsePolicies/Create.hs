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
-- Module      : Gogol.DNS.ResponsePolicies.Create
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a new Response Policy
--
-- /See:/ <https://cloud.google.com/dns/docs Cloud DNS API Reference> for @dns.responsePolicies.create@.
module Gogol.DNS.ResponsePolicies.Create
  ( -- * Resource
    DNSResponsePoliciesCreateResource,

    -- ** Constructing a Request
    DNSResponsePoliciesCreate (..),
    newDNSResponsePoliciesCreate,
  )
where

import Gogol.DNS.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @dns.responsePolicies.create@ method which the
-- 'DNSResponsePoliciesCreate' request conforms to.
type DNSResponsePoliciesCreateResource =
  "dns"
    Core.:> "v2"
    Core.:> "projects"
    Core.:> Core.Capture "project" Core.Text
    Core.:> "locations"
    Core.:> Core.Capture "location" Core.Text
    Core.:> "responsePolicies"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "clientOperationId" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] ResponsePolicy
    Core.:> Core.Post '[Core.JSON] ResponsePolicy

-- | Creates a new Response Policy
--
-- /See:/ 'newDNSResponsePoliciesCreate' smart constructor.
data DNSResponsePoliciesCreate = DNSResponsePoliciesCreate
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | For mutating operation requests only. An optional identifier specified by the client. Must be unique for operation resources in the Operations collection.
    clientOperationId :: (Core.Maybe Core.Text),
    -- | Specifies the location of the resource, only applicable in the v APIs. This information will be used for routing and will be part of the resource name.
    location :: Core.Text,
    -- | Multipart request metadata.
    payload :: ResponsePolicy,
    -- | Identifies the project addressed by this request.
    project :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DNSResponsePoliciesCreate' with the minimum fields required to make a request.
newDNSResponsePoliciesCreate ::
  -- |  Multipart request metadata. See 'payload'.
  ResponsePolicy ->
  -- |  Identifies the project addressed by this request. See 'project'.
  Core.Text ->
  DNSResponsePoliciesCreate
newDNSResponsePoliciesCreate payload project =
  DNSResponsePoliciesCreate
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      clientOperationId = Core.Nothing,
      location = "global",
      payload = payload,
      project = project,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest DNSResponsePoliciesCreate where
  type Rs DNSResponsePoliciesCreate = ResponsePolicy
  type
    Scopes DNSResponsePoliciesCreate =
      '[CloudPlatform'FullControl, Ndev'Clouddns'Readwrite]
  requestClient DNSResponsePoliciesCreate {..} =
    go
      project
      location
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
          (Core.Proxy :: Core.Proxy DNSResponsePoliciesCreateResource)
          Core.mempty
