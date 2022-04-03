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
-- Module      : Gogol.DNS.DnsKeys.Get
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Fetches the representation of an existing DnsKey.
--
-- /See:/ <https://cloud.google.com/dns/docs Cloud DNS API Reference> for @dns.dnsKeys.get@.
module Gogol.DNS.DnsKeys.Get
  ( -- * Resource
    DNSDnsKeysGetResource,

    -- ** Constructing a Request
    DNSDnsKeysGet (..),
    newDNSDnsKeysGet,
  )
where

import Gogol.DNS.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @dns.dnsKeys.get@ method which the
-- 'DNSDnsKeysGet' request conforms to.
type DNSDnsKeysGetResource =
  "dns"
    Core.:> "v2"
    Core.:> "projects"
    Core.:> Core.Capture "project" Core.Text
    Core.:> "locations"
    Core.:> Core.Capture "location" Core.Text
    Core.:> "managedZones"
    Core.:> Core.Capture "managedZone" Core.Text
    Core.:> "dnsKeys"
    Core.:> Core.Capture "dnsKeyId" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "clientOperationId" Core.Text
    Core.:> Core.QueryParam "digestType" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] DnsKey

-- | Fetches the representation of an existing DnsKey.
--
-- /See:/ 'newDNSDnsKeysGet' smart constructor.
data DNSDnsKeysGet = DNSDnsKeysGet
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | For mutating operation requests only. An optional identifier specified by the client. Must be unique for operation resources in the Operations collection.
    clientOperationId :: (Core.Maybe Core.Text),
    -- | An optional comma-separated list of digest types to compute and display for key signing keys. If omitted, the recommended digest type is computed and displayed.
    digestType :: (Core.Maybe Core.Text),
    -- | The identifier of the requested DnsKey.
    dnsKeyId :: Core.Text,
    -- | Specifies the location of the resource. This information will be used for routing and will be part of the resource name.
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

-- | Creates a value of 'DNSDnsKeysGet' with the minimum fields required to make a request.
newDNSDnsKeysGet ::
  -- |  The identifier of the requested DnsKey. See 'dnsKeyId'.
  Core.Text ->
  -- |  Identifies the managed zone addressed by this request. Can be the managed zone name or ID. See 'managedZone'.
  Core.Text ->
  -- |  Identifies the project addressed by this request. See 'project'.
  Core.Text ->
  DNSDnsKeysGet
newDNSDnsKeysGet dnsKeyId managedZone project =
  DNSDnsKeysGet
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      clientOperationId = Core.Nothing,
      digestType = Core.Nothing,
      dnsKeyId = dnsKeyId,
      location = "global",
      managedZone = managedZone,
      project = project,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest DNSDnsKeysGet where
  type Rs DNSDnsKeysGet = DnsKey
  type
    Scopes DNSDnsKeysGet =
      '[ CloudPlatform'FullControl,
         CloudPlatform'ReadOnly,
         Ndev'Clouddns'Readonly,
         Ndev'Clouddns'Readwrite
       ]
  requestClient DNSDnsKeysGet {..} =
    go
      project
      location
      managedZone
      dnsKeyId
      xgafv
      accessToken
      callback
      clientOperationId
      digestType
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      dNSService
    where
      go =
        Core.buildClient
          (Core.Proxy :: Core.Proxy DNSDnsKeysGetResource)
          Core.mempty
