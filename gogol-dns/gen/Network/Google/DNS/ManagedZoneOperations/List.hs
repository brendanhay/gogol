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
-- Module      : Network.Google.DNS.ManagedZoneOperations.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Enumerates Operations for the given ManagedZone.
--
-- /See:/ <https://cloud.google.com/dns/docs Cloud DNS API Reference> for @dns.managedZoneOperations.list@.
module Network.Google.DNS.ManagedZoneOperations.List
  ( -- * Resource
    DNSManagedZoneOperationsListResource,

    -- ** Constructing a Request
    newDNSManagedZoneOperationsList,
    DNSManagedZoneOperationsList,
  )
where

import Network.Google.DNS.Types
import qualified Network.Google.Prelude as Core

-- | A resource alias for @dns.managedZoneOperations.list@ method which the
-- 'DNSManagedZoneOperationsList' request conforms to.
type DNSManagedZoneOperationsListResource =
  "dns"
    Core.:> "v2"
    Core.:> "projects"
    Core.:> Core.Capture "project" Core.Text
    Core.:> "locations"
    Core.:> Core.Capture "location" Core.Text
    Core.:> "managedZones"
    Core.:> Core.Capture "managedZone" Core.Text
    Core.:> "operations"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "maxResults" Core.Int32
    Core.:> Core.QueryParam "pageToken" Core.Text
    Core.:> Core.QueryParam
              "sortBy"
              ManagedZoneOperationsListSortBy
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get
              '[Core.JSON]
              ManagedZoneOperationsListResponse

-- | Enumerates Operations for the given ManagedZone.
--
-- /See:/ 'newDNSManagedZoneOperationsList' smart constructor.
data DNSManagedZoneOperationsList = DNSManagedZoneOperationsList
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Specifies the location of the resource. This information will be used for routing and will be part of the resource name.
    location :: Core.Text,
    -- | Identifies the managed zone addressed by this request.
    managedZone :: Core.Text,
    -- | Optional. Maximum number of results to be returned. If unspecified, the server decides how many results to return.
    maxResults :: (Core.Maybe Core.Int32),
    -- | Optional. A tag returned by a previous list request that was truncated. Use this parameter to continue a previous list request.
    pageToken :: (Core.Maybe Core.Text),
    -- | Identifies the project addressed by this request.
    project :: Core.Text,
    -- | Sorting criterion. The only supported values are START_TIME and ID.
    sortBy :: ManagedZoneOperationsListSortBy,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DNSManagedZoneOperationsList' with the minimum fields required to make a request.
newDNSManagedZoneOperationsList ::
  -- |  Identifies the managed zone addressed by this request. See 'managedZone'.
  Core.Text ->
  -- |  Identifies the project addressed by this request. See 'project'.
  Core.Text ->
  DNSManagedZoneOperationsList
newDNSManagedZoneOperationsList managedZone project =
  DNSManagedZoneOperationsList
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      location = "global",
      managedZone = managedZone,
      maxResults = Core.Nothing,
      pageToken = Core.Nothing,
      project = project,
      sortBy = ManagedZoneOperationsListSortBy_STARTTIME,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    DNSManagedZoneOperationsList
  where
  type
    Rs DNSManagedZoneOperationsList =
      ManagedZoneOperationsListResponse
  type
    Scopes DNSManagedZoneOperationsList =
      '[ "https://www.googleapis.com/auth/cloud-platform",
         "https://www.googleapis.com/auth/cloud-platform.read-only",
         "https://www.googleapis.com/auth/ndev.clouddns.readonly",
         "https://www.googleapis.com/auth/ndev.clouddns.readwrite"
       ]
  requestClient DNSManagedZoneOperationsList {..} =
    go
      project
      location
      managedZone
      xgafv
      accessToken
      callback
      maxResults
      pageToken
      (Core.Just sortBy)
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      dNSService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy DNSManagedZoneOperationsListResource
          )
          Core.mempty
