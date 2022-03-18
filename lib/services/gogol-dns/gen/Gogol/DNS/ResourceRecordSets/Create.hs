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
-- Module      : Gogol.DNS.ResourceRecordSets.Create
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a new ResourceRecordSet.
--
-- /See:/ <https://cloud.google.com/dns/docs Cloud DNS API Reference> for @dns.resourceRecordSets.create@.
module Gogol.DNS.ResourceRecordSets.Create
  ( -- * Resource
    DNSResourceRecordSetsCreateResource,

    -- ** Constructing a Request
    newDNSResourceRecordSetsCreate,
    DNSResourceRecordSetsCreate,
  )
where

import Gogol.DNS.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @dns.resourceRecordSets.create@ method which the
-- 'DNSResourceRecordSetsCreate' request conforms to.
type DNSResourceRecordSetsCreateResource =
  "dns"
    Core.:> "v2"
    Core.:> "projects"
    Core.:> Core.Capture "project" Core.Text
    Core.:> "locations"
    Core.:> Core.Capture "location" Core.Text
    Core.:> "managedZones"
    Core.:> Core.Capture "managedZone" Core.Text
    Core.:> "rrsets"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "clientOperationId" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] ResourceRecordSet
    Core.:> Core.Post '[Core.JSON] ResourceRecordSet

-- | Creates a new ResourceRecordSet.
--
-- /See:/ 'newDNSResourceRecordSetsCreate' smart constructor.
data DNSResourceRecordSetsCreate = DNSResourceRecordSetsCreate
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
    -- | Identifies the managed zone addressed by this request. Can be the managed zone name or ID.
    managedZone :: Core.Text,
    -- | Multipart request metadata.
    payload :: ResourceRecordSet,
    -- | Identifies the project addressed by this request.
    project :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DNSResourceRecordSetsCreate' with the minimum fields required to make a request.
newDNSResourceRecordSetsCreate ::
  -- |  Identifies the managed zone addressed by this request. Can be the managed zone name or ID. See 'managedZone'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  ResourceRecordSet ->
  -- |  Identifies the project addressed by this request. See 'project'.
  Core.Text ->
  DNSResourceRecordSetsCreate
newDNSResourceRecordSetsCreate managedZone payload project =
  DNSResourceRecordSetsCreate
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      clientOperationId = Core.Nothing,
      location = "global",
      managedZone = managedZone,
      payload = payload,
      project = project,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    DNSResourceRecordSetsCreate
  where
  type
    Rs DNSResourceRecordSetsCreate =
      ResourceRecordSet
  type
    Scopes DNSResourceRecordSetsCreate =
      '[ "https://www.googleapis.com/auth/cloud-platform",
         "https://www.googleapis.com/auth/ndev.clouddns.readwrite"
       ]
  requestClient DNSResourceRecordSetsCreate {..} =
    go
      project
      location
      managedZone
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
              Core.Proxy DNSResourceRecordSetsCreateResource
          )
          Core.mempty
