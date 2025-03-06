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
-- Module      : Gogol.DNS.ResponsePolicies.List
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Enumerates all Response Policies associated with a project.
--
-- /See:/ <https://cloud.google.com/dns/docs Cloud DNS API Reference> for @dns.responsePolicies.list@.
module Gogol.DNS.ResponsePolicies.List
  ( -- * Resource
    DNSResponsePoliciesListResource,

    -- ** Constructing a Request
    DNSResponsePoliciesList (..),
    newDNSResponsePoliciesList,
  )
where

import Gogol.DNS.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @dns.responsePolicies.list@ method which the
-- 'DNSResponsePoliciesList' request conforms to.
type DNSResponsePoliciesListResource =
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
    Core.:> Core.QueryParam "maxResults" Core.Int32
    Core.:> Core.QueryParam "pageToken" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] ResponsePoliciesListResponse

-- | Enumerates all Response Policies associated with a project.
--
-- /See:/ 'newDNSResponsePoliciesList' smart constructor.
data DNSResponsePoliciesList = DNSResponsePoliciesList
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Specifies the location of the resource. This information will be used for routing and will be part of the resource name.
    location :: Core.Text,
    -- | Optional. Maximum number of results to be returned. If unspecified, the server decides how many results to return.
    maxResults :: (Core.Maybe Core.Int32),
    -- | Optional. A tag returned by a previous list request that was truncated. Use this parameter to continue a previous list request.
    pageToken :: (Core.Maybe Core.Text),
    -- | Identifies the project addressed by this request.
    project :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DNSResponsePoliciesList' with the minimum fields required to make a request.
newDNSResponsePoliciesList ::
  -- |  Identifies the project addressed by this request. See 'project'.
  Core.Text ->
  DNSResponsePoliciesList
newDNSResponsePoliciesList project =
  DNSResponsePoliciesList
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      location = "global",
      maxResults = Core.Nothing,
      pageToken = Core.Nothing,
      project = project,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest DNSResponsePoliciesList where
  type Rs DNSResponsePoliciesList = ResponsePoliciesListResponse
  type
    Scopes DNSResponsePoliciesList =
      '[ CloudPlatform'FullControl,
         CloudPlatform'ReadOnly,
         Ndev'Clouddns'Readonly,
         Ndev'Clouddns'Readwrite
       ]
  requestClient DNSResponsePoliciesList {..} =
    go
      project
      location
      xgafv
      accessToken
      callback
      maxResults
      pageToken
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      dNSService
    where
      go =
        Core.buildClient
          (Core.Proxy :: Core.Proxy DNSResponsePoliciesListResource)
          Core.mempty
