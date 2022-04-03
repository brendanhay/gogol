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
-- Module      : Gogol.DNS.Changes.Get
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Fetches the representation of an existing Change.
--
-- /See:/ <https://cloud.google.com/dns/docs Cloud DNS API Reference> for @dns.changes.get@.
module Gogol.DNS.Changes.Get
  ( -- * Resource
    DNSChangesGetResource,

    -- ** Constructing a Request
    DNSChangesGet (..),
    newDNSChangesGet,
  )
where

import Gogol.DNS.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @dns.changes.get@ method which the
-- 'DNSChangesGet' request conforms to.
type DNSChangesGetResource =
  "dns"
    Core.:> "v2"
    Core.:> "projects"
    Core.:> Core.Capture "project" Core.Text
    Core.:> "locations"
    Core.:> Core.Capture "location" Core.Text
    Core.:> "managedZones"
    Core.:> Core.Capture "managedZone" Core.Text
    Core.:> "changes"
    Core.:> Core.Capture "changeId" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "clientOperationId" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] Change

-- | Fetches the representation of an existing Change.
--
-- /See:/ 'newDNSChangesGet' smart constructor.
data DNSChangesGet = DNSChangesGet
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The identifier of the requested change, from a previous ResourceRecordSetsChangeResponse.
    changeId :: Core.Text,
    -- | For mutating operation requests only. An optional identifier specified by the client. Must be unique for operation resources in the Operations collection.
    clientOperationId :: (Core.Maybe Core.Text),
    -- |
    location :: Core.Text,
    -- | Identifies the managed zone addressed by this request. Can be the managed zone name or ID.
    managedZone :: Core.Text,
    -- | Identifies the project addressed by this request.
    project :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DNSChangesGet' with the minimum fields required to make a request.
newDNSChangesGet ::
  -- |  The identifier of the requested change, from a previous ResourceRecordSetsChangeResponse. See 'changeId'.
  Core.Text ->
  -- |  Identifies the managed zone addressed by this request. Can be the managed zone name or ID. See 'managedZone'.
  Core.Text ->
  -- |  Identifies the project addressed by this request. See 'project'.
  Core.Text ->
  DNSChangesGet
newDNSChangesGet changeId managedZone project =
  DNSChangesGet
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      changeId = changeId,
      clientOperationId = Core.Nothing,
      location = "global",
      managedZone = managedZone,
      project = project,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest DNSChangesGet where
  type Rs DNSChangesGet = Change
  type
    Scopes DNSChangesGet =
      '[ CloudPlatform'FullControl,
         CloudPlatform'ReadOnly,
         Ndev'Clouddns'Readonly,
         Ndev'Clouddns'Readwrite
       ]
  requestClient DNSChangesGet {..} =
    go
      project
      location
      managedZone
      changeId
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
          (Core.Proxy :: Core.Proxy DNSChangesGetResource)
          Core.mempty
