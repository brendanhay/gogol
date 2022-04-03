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
-- Module      : Gogol.DNS.DnsKeys.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Enumerates DnsKeys to a ResourceRecordSet collection.
--
-- /See:/ <https://cloud.google.com/dns/docs Cloud DNS API Reference> for @dns.dnsKeys.list@.
module Gogol.DNS.DnsKeys.List
  ( -- * Resource
    DNSDnsKeysListResource,

    -- ** Constructing a Request
    DNSDnsKeysList (..),
    newDNSDnsKeysList,
  )
where

import Gogol.DNS.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @dns.dnsKeys.list@ method which the
-- 'DNSDnsKeysList' request conforms to.
type DNSDnsKeysListResource =
  "dns"
    Core.:> "v2"
    Core.:> "projects"
    Core.:> Core.Capture "project" Core.Text
    Core.:> "locations"
    Core.:> Core.Capture "location" Core.Text
    Core.:> "managedZones"
    Core.:> Core.Capture "managedZone" Core.Text
    Core.:> "dnsKeys"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "digestType" Core.Text
    Core.:> Core.QueryParam "maxResults" Core.Int32
    Core.:> Core.QueryParam "pageToken" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get
              '[Core.JSON]
              DnsKeysListResponse

-- | Enumerates DnsKeys to a ResourceRecordSet collection.
--
-- /See:/ 'newDNSDnsKeysList' smart constructor.
data DNSDnsKeysList = DNSDnsKeysList
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | An optional comma-separated list of digest types to compute and display for key signing keys. If omitted, the recommended digest type is computed and displayed.
    digestType :: (Core.Maybe Core.Text),
    -- | Specifies the location of the resource. This information will be used for routing and will be part of the resource name.
    location :: Core.Text,
    -- | Identifies the managed zone addressed by this request. Can be the managed zone name or ID.
    managedZone :: Core.Text,
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

-- | Creates a value of 'DNSDnsKeysList' with the minimum fields required to make a request.
newDNSDnsKeysList ::
  -- |  Identifies the managed zone addressed by this request. Can be the managed zone name or ID. See 'managedZone'.
  Core.Text ->
  -- |  Identifies the project addressed by this request. See 'project'.
  Core.Text ->
  DNSDnsKeysList
newDNSDnsKeysList managedZone project =
  DNSDnsKeysList
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      digestType = Core.Nothing,
      location = "global",
      managedZone = managedZone,
      maxResults = Core.Nothing,
      pageToken = Core.Nothing,
      project = project,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest DNSDnsKeysList where
  type Rs DNSDnsKeysList = DnsKeysListResponse
  type
    Scopes DNSDnsKeysList =
      '[ CloudPlatform'FullControl,
         CloudPlatform'ReadOnly,
         Ndev'Clouddns'Readonly,
         Ndev'Clouddns'Readwrite
       ]
  requestClient DNSDnsKeysList {..} =
    go
      project
      location
      managedZone
      xgafv
      accessToken
      callback
      digestType
      maxResults
      pageToken
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      dNSService
    where
      go =
        Core.buildClient
          (Core.Proxy :: Core.Proxy DNSDnsKeysListResource)
          Core.mempty
