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
-- Module      : Network.Google.DNS.Changes.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Enumerates Changes to a ResourceRecordSet collection.
--
-- /See:/ <https://cloud.google.com/dns/docs Cloud DNS API Reference> for @dns.changes.list@.
module Network.Google.DNS.Changes.List
  ( -- * Resource
    DNSChangesListResource,

    -- ** Constructing a Request
    newDNSChangesList,
    DNSChangesList,
  )
where

import Network.Google.DNS.Types
import qualified Network.Google.Prelude as Core

-- | A resource alias for @dns.changes.list@ method which the
-- 'DNSChangesList' request conforms to.
type DNSChangesListResource =
  "dns"
    Core.:> "v2"
    Core.:> "projects"
    Core.:> Core.Capture "project" Core.Text
    Core.:> "locations"
    Core.:> Core.Capture "location" Core.Text
    Core.:> "managedZones"
    Core.:> Core.Capture "managedZone" Core.Text
    Core.:> "changes"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "maxResults" Core.Int32
    Core.:> Core.QueryParam "pageToken" Core.Text
    Core.:> Core.QueryParam "sortBy" ChangesListSortBy
    Core.:> Core.QueryParam "sortOrder" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam
              "upload_protocol"
              Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get
              '[Core.JSON]
              ChangesListResponse

-- | Enumerates Changes to a ResourceRecordSet collection.
--
-- /See:/ 'newDNSChangesList' smart constructor.
data DNSChangesList = DNSChangesList
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- |
    location :: Core.Text,
    -- | Identifies the managed zone addressed by this request. Can be the managed zone name or ID.
    managedZone :: Core.Text,
    -- | Optional. Maximum number of results to be returned. If unspecified, the server decides how many results to return.
    maxResults :: (Core.Maybe Core.Int32),
    -- | Optional. A tag returned by a previous list request that was truncated. Use this parameter to continue a previous list request.
    pageToken :: (Core.Maybe Core.Text),
    -- | Identifies the project addressed by this request.
    project :: Core.Text,
    -- | Sorting criterion. The only supported value is change sequence.
    sortBy :: ChangesListSortBy,
    -- | Sorting order direction: \'ascending\' or \'descending\'.
    sortOrder :: (Core.Maybe Core.Text),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DNSChangesList' with the minimum fields required to make a request.
newDNSChangesList ::
  -- |  Identifies the managed zone addressed by this request. Can be the managed zone name or ID. See 'managedZone'.
  Core.Text ->
  -- |  Identifies the project addressed by this request. See 'project'.
  Core.Text ->
  DNSChangesList
newDNSChangesList managedZone project =
  DNSChangesList
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      location = "global",
      managedZone = managedZone,
      maxResults = Core.Nothing,
      pageToken = Core.Nothing,
      project = project,
      sortBy = ChangesListSortBy_CHANGESEQUENCE,
      sortOrder = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest DNSChangesList where
  type Rs DNSChangesList = ChangesListResponse
  type
    Scopes DNSChangesList =
      '[ "https://www.googleapis.com/auth/cloud-platform",
         "https://www.googleapis.com/auth/cloud-platform.read-only",
         "https://www.googleapis.com/auth/ndev.clouddns.readonly",
         "https://www.googleapis.com/auth/ndev.clouddns.readwrite"
       ]
  requestClient DNSChangesList {..} =
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
      sortOrder
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      dNSService
    where
      go =
        Core.buildClient
          (Core.Proxy :: Core.Proxy DNSChangesListResource)
          Core.mempty
