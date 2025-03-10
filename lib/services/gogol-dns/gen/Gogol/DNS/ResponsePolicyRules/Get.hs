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
-- Module      : Gogol.DNS.ResponsePolicyRules.Get
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Fetches the representation of an existing Response Policy Rule.
--
-- /See:/ <https://cloud.google.com/dns/docs Cloud DNS API Reference> for @dns.responsePolicyRules.get@.
module Gogol.DNS.ResponsePolicyRules.Get
  ( -- * Resource
    DNSResponsePolicyRulesGetResource,

    -- ** Constructing a Request
    DNSResponsePolicyRulesGet (..),
    newDNSResponsePolicyRulesGet,
  )
where

import Gogol.DNS.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @dns.responsePolicyRules.get@ method which the
-- 'DNSResponsePolicyRulesGet' request conforms to.
type DNSResponsePolicyRulesGetResource =
  "dns"
    Core.:> "v2"
    Core.:> "projects"
    Core.:> Core.Capture "project" Core.Text
    Core.:> "locations"
    Core.:> Core.Capture "location" Core.Text
    Core.:> "responsePolicies"
    Core.:> Core.Capture "responsePolicy" Core.Text
    Core.:> "rules"
    Core.:> Core.Capture "responsePolicyRule" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "clientOperationId" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] ResponsePolicyRule

-- | Fetches the representation of an existing Response Policy Rule.
--
-- /See:/ 'newDNSResponsePolicyRulesGet' smart constructor.
data DNSResponsePolicyRulesGet = DNSResponsePolicyRulesGet
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
    -- | Identifies the project addressed by this request.
    project :: Core.Text,
    -- | User assigned name of the Response Policy containing the Response Policy Rule.
    responsePolicy :: Core.Text,
    -- | User assigned name of the Response Policy Rule addressed by this request.
    responsePolicyRule :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DNSResponsePolicyRulesGet' with the minimum fields required to make a request.
newDNSResponsePolicyRulesGet ::
  -- |  Identifies the project addressed by this request. See 'project'.
  Core.Text ->
  -- |  User assigned name of the Response Policy containing the Response Policy Rule. See 'responsePolicy'.
  Core.Text ->
  -- |  User assigned name of the Response Policy Rule addressed by this request. See 'responsePolicyRule'.
  Core.Text ->
  DNSResponsePolicyRulesGet
newDNSResponsePolicyRulesGet
  project
  responsePolicy
  responsePolicyRule =
    DNSResponsePolicyRulesGet
      { xgafv = Core.Nothing,
        accessToken = Core.Nothing,
        callback = Core.Nothing,
        clientOperationId = Core.Nothing,
        location = "global",
        project = project,
        responsePolicy = responsePolicy,
        responsePolicyRule = responsePolicyRule,
        uploadType = Core.Nothing,
        uploadProtocol = Core.Nothing
      }

instance Core.GoogleRequest DNSResponsePolicyRulesGet where
  type Rs DNSResponsePolicyRulesGet = ResponsePolicyRule
  type
    Scopes DNSResponsePolicyRulesGet =
      '[ CloudPlatform'FullControl,
         CloudPlatform'ReadOnly,
         Ndev'Clouddns'Readonly,
         Ndev'Clouddns'Readwrite
       ]
  requestClient DNSResponsePolicyRulesGet {..} =
    go
      project
      location
      responsePolicy
      responsePolicyRule
      xgafv
      accessToken
      callback
      clientOperationId
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      dNSService
    where
      go =
        Core.buildClient
          (Core.Proxy :: Core.Proxy DNSResponsePolicyRulesGetResource)
          Core.mempty
