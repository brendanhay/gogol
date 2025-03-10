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
-- Module      : Gogol.DNS.ResourceRecordSets.Delete
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a previously created ResourceRecordSet.
--
-- /See:/ <https://cloud.google.com/dns/docs Cloud DNS API Reference> for @dns.resourceRecordSets.delete@.
module Gogol.DNS.ResourceRecordSets.Delete
  ( -- * Resource
    DNSResourceRecordSetsDeleteResource,

    -- ** Constructing a Request
    DNSResourceRecordSetsDelete (..),
    newDNSResourceRecordSetsDelete,
  )
where

import Gogol.DNS.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @dns.resourceRecordSets.delete@ method which the
-- 'DNSResourceRecordSetsDelete' request conforms to.
type DNSResourceRecordSetsDeleteResource =
  "dns"
    Core.:> "v2"
    Core.:> "projects"
    Core.:> Core.Capture "project" Core.Text
    Core.:> "locations"
    Core.:> Core.Capture "location" Core.Text
    Core.:> "managedZones"
    Core.:> Core.Capture "managedZone" Core.Text
    Core.:> "rrsets"
    Core.:> Core.Capture "name" Core.Text
    Core.:> Core.Capture "type" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "clientOperationId" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Delete '[Core.JSON] ()

-- | Deletes a previously created ResourceRecordSet.
--
-- /See:/ 'newDNSResourceRecordSetsDelete' smart constructor.
data DNSResourceRecordSetsDelete = DNSResourceRecordSetsDelete
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
    -- | Fully qualified domain name.
    name :: Core.Text,
    -- | Identifies the project addressed by this request.
    project :: Core.Text,
    -- | RRSet type.
    type' :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DNSResourceRecordSetsDelete' with the minimum fields required to make a request.
newDNSResourceRecordSetsDelete ::
  -- |  Identifies the managed zone addressed by this request. Can be the managed zone name or ID. See 'managedZone'.
  Core.Text ->
  -- |  Fully qualified domain name. See 'name'.
  Core.Text ->
  -- |  Identifies the project addressed by this request. See 'project'.
  Core.Text ->
  -- |  RRSet type. See 'type''.
  Core.Text ->
  DNSResourceRecordSetsDelete
newDNSResourceRecordSetsDelete managedZone name project type' =
  DNSResourceRecordSetsDelete
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      clientOperationId = Core.Nothing,
      location = "global",
      managedZone = managedZone,
      name = name,
      project = project,
      type' = type',
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest DNSResourceRecordSetsDelete where
  type Rs DNSResourceRecordSetsDelete = ()
  type
    Scopes DNSResourceRecordSetsDelete =
      '[CloudPlatform'FullControl, Ndev'Clouddns'Readwrite]
  requestClient DNSResourceRecordSetsDelete {..} =
    go
      project
      location
      managedZone
      name
      type'
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
          (Core.Proxy :: Core.Proxy DNSResourceRecordSetsDeleteResource)
          Core.mempty
