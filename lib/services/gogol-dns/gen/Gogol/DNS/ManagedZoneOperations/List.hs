{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.DNS.ManagedZoneOperations.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Enumerates Operations for the given ManagedZone.
--
-- /See:/ <https://cloud.google.com/dns/docs Cloud DNS API Reference> for @dns.managedZoneOperations.list@.
module Gogol.DNS.ManagedZoneOperations.List
    (
    -- * Resource
      DNSManagedZoneOperationsListResource

    -- ** Constructing a Request
    , DNSManagedZoneOperationsList (..)
    , newDNSManagedZoneOperationsList
    ) where

import qualified Gogol.Prelude as Core
import Gogol.DNS.Types

-- | A resource alias for @dns.managedZoneOperations.list@ method which the
-- 'DNSManagedZoneOperationsList' request conforms to.
type DNSManagedZoneOperationsListResource =
     "dns" Core.:>
       "v2" Core.:>
         "projects" Core.:>
           Core.Capture "project" Core.Text Core.:>
             "locations" Core.:>
               Core.Capture "location" Core.Text Core.:>
                 "managedZones" Core.:>
                   Core.Capture "managedZone" Core.Text Core.:>
                     "operations" Core.:>
                       Core.QueryParam "$.xgafv" Xgafv Core.:>
                         Core.QueryParam "access_token" Core.Text Core.:>
                           Core.QueryParam "callback" Core.Text Core.:>
                             Core.QueryParam "maxResults" Core.Int32 Core.:>
                               Core.QueryParam "pageToken" Core.Text Core.:>
                                 Core.QueryParam "sortBy"
                                   ManagedZoneOperationsListSortBy
                                   Core.:>
                                   Core.QueryParam "uploadType" Core.Text
                                     Core.:>
                                     Core.QueryParam "upload_protocol" Core.Text
                                       Core.:>
                                       Core.QueryParam "alt" Core.AltJSON
                                         Core.:>
                                         Core.Get '[Core.JSON]
                                           ManagedZoneOperationsListResponse

-- | Enumerates Operations for the given ManagedZone.
--
-- /See:/ 'newDNSManagedZoneOperationsList' smart constructor.
data DNSManagedZoneOperationsList = DNSManagedZoneOperationsList
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Specifies the location of the resource. This information will be used for routing and will be part of the resource name.
    , location :: Core.Text
      -- | Identifies the managed zone addressed by this request.
    , managedZone :: Core.Text
      -- | Optional. Maximum number of results to be returned. If unspecified, the server decides how many results to return.
    , maxResults :: (Core.Maybe Core.Int32)
      -- | Optional. A tag returned by a previous list request that was truncated. Use this parameter to continue a previous list request.
    , pageToken :: (Core.Maybe Core.Text)
      -- | Identifies the project addressed by this request.
    , project :: Core.Text
      -- | Sorting criterion. The only supported values are START_TIME and ID.
    , sortBy :: ManagedZoneOperationsListSortBy
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DNSManagedZoneOperationsList' with the minimum fields required to make a request.
newDNSManagedZoneOperationsList 
    ::  Core.Text
       -- ^  Identifies the managed zone addressed by this request. See 'managedZone'.
    -> Core.Text
       -- ^  Identifies the project addressed by this request. See 'project'.
    -> DNSManagedZoneOperationsList
newDNSManagedZoneOperationsList managedZone project =
  DNSManagedZoneOperationsList
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , location = "global"
    , managedZone = managedZone
    , maxResults = Core.Nothing
    , pageToken = Core.Nothing
    , project = project
    , sortBy = ManagedZoneOperationsListSortBy_STARTTIME
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           DNSManagedZoneOperationsList
         where
        type Rs DNSManagedZoneOperationsList =
             ManagedZoneOperationsListResponse
        type Scopes DNSManagedZoneOperationsList =
             '[CloudPlatform'FullControl, CloudPlatform'ReadOnly,
               Ndev'Clouddns'Readonly, Ndev'Clouddns'Readwrite]
        requestClient DNSManagedZoneOperationsList{..}
          = go project location managedZone xgafv accessToken
              callback
              maxResults
              pageToken
              (Core.Just sortBy)
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              dNSService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy DNSManagedZoneOperationsListResource)
                      Core.mempty

