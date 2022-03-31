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
-- Module      : Gogol.DNS.ResponsePolicies.Update
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates an existing Response Policy.
--
-- /See:/ <https://cloud.google.com/dns/docs Cloud DNS API Reference> for @dns.responsePolicies.update@.
module Gogol.DNS.ResponsePolicies.Update
  ( -- * Resource
    DNSResponsePoliciesUpdateResource,

    -- ** Constructing a Request
    newDNSResponsePoliciesUpdate,
    DNSResponsePoliciesUpdate,
  )
where

import Gogol.DNS.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @dns.responsePolicies.update@ method which the
-- 'DNSResponsePoliciesUpdate' request conforms to.
type DNSResponsePoliciesUpdateResource =
  "dns"
    Core.:> "v2"
    Core.:> "projects"
    Core.:> Core.Capture "project" Core.Text
    Core.:> "locations"
    Core.:> Core.Capture "location" Core.Text
    Core.:> "responsePolicies"
    Core.:> Core.Capture "responsePolicy" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "clientOperationId" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] ResponsePolicy
    Core.:> Core.Put
              '[Core.JSON]
              ResponsePoliciesUpdateResponse

-- | Updates an existing Response Policy.
--
-- /See:/ 'newDNSResponsePoliciesUpdate' smart constructor.
data DNSResponsePoliciesUpdate = DNSResponsePoliciesUpdate
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
    payload :: ResponsePolicy,
    -- | Identifies the project addressed by this request.
    project :: Core.Text,
    -- | User assigned name of the Response Policy addressed by this request.
    responsePolicy :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DNSResponsePoliciesUpdate' with the minimum fields required to make a request.
newDNSResponsePoliciesUpdate ::
  -- |  Multipart request metadata. See 'payload'.
  ResponsePolicy ->
  -- |  Identifies the project addressed by this request. See 'project'.
  Core.Text ->
  -- |  User assigned name of the Response Policy addressed by this request. See 'responsePolicy'.
  Core.Text ->
  DNSResponsePoliciesUpdate
newDNSResponsePoliciesUpdate payload project responsePolicy =
  DNSResponsePoliciesUpdate
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      clientOperationId = Core.Nothing,
      location = "global",
      payload = payload,
      project = project,
      responsePolicy = responsePolicy,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest DNSResponsePoliciesUpdate where
  type
    Rs DNSResponsePoliciesUpdate =
      ResponsePoliciesUpdateResponse
  type
    Scopes DNSResponsePoliciesUpdate =
      '[CloudPlatform'FullControl, Ndev'Clouddns'Readwrite]
  requestClient DNSResponsePoliciesUpdate {..} =
    go
      project
      location
      responsePolicy
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
          ( Core.Proxy ::
              Core.Proxy DNSResponsePoliciesUpdateResource
          )
          Core.mempty
