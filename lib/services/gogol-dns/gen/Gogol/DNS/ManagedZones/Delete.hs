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
-- Module      : Gogol.DNS.ManagedZones.Delete
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a previously created ManagedZone.
--
-- /See:/ <https://cloud.google.com/dns/docs Cloud DNS API Reference> for @dns.managedZones.delete@.
module Gogol.DNS.ManagedZones.Delete
    (
    -- * Resource
      DNSManagedZonesDeleteResource

    -- ** Constructing a Request
    , DNSManagedZonesDelete (..)
    , newDNSManagedZonesDelete
    ) where

import qualified Gogol.Prelude as Core
import Gogol.DNS.Types

-- | A resource alias for @dns.managedZones.delete@ method which the
-- 'DNSManagedZonesDelete' request conforms to.
type DNSManagedZonesDeleteResource =
     "dns" Core.:>
       "v2" Core.:>
         "projects" Core.:>
           Core.Capture "project" Core.Text Core.:>
             "locations" Core.:>
               Core.Capture "location" Core.Text Core.:>
                 "managedZones" Core.:>
                   Core.Capture "managedZone" Core.Text Core.:>
                     Core.QueryParam "$.xgafv" Xgafv Core.:>
                       Core.QueryParam "access_token" Core.Text Core.:>
                         Core.QueryParam "callback" Core.Text Core.:>
                           Core.QueryParam "clientOperationId" Core.Text Core.:>
                             Core.QueryParam "uploadType" Core.Text Core.:>
                               Core.QueryParam "upload_protocol" Core.Text
                                 Core.:>
                                 Core.QueryParam "alt" Core.AltJSON Core.:>
                                   Core.Delete '[Core.JSON] ()

-- | Deletes a previously created ManagedZone.
--
-- /See:/ 'newDNSManagedZonesDelete' smart constructor.
data DNSManagedZonesDelete = DNSManagedZonesDelete
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | For mutating operation requests only. An optional identifier specified by the client. Must be unique for operation resources in the Operations collection.
    , clientOperationId :: (Core.Maybe Core.Text)
      -- | Specifies the location of the resource. This information will be used for routing and will be part of the resource name.
    , location :: Core.Text
      -- | Identifies the managed zone addressed by this request. Can be the managed zone name or ID.
    , managedZone :: Core.Text
      -- | Identifies the project addressed by this request.
    , project :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DNSManagedZonesDelete' with the minimum fields required to make a request.
newDNSManagedZonesDelete 
    ::  Core.Text
       -- ^  Identifies the managed zone addressed by this request. Can be the managed zone name or ID. See 'managedZone'.
    -> Core.Text
       -- ^  Identifies the project addressed by this request. See 'project'.
    -> DNSManagedZonesDelete
newDNSManagedZonesDelete managedZone project =
  DNSManagedZonesDelete
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , clientOperationId = Core.Nothing
    , location = "global"
    , managedZone = managedZone
    , project = project
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest DNSManagedZonesDelete
         where
        type Rs DNSManagedZonesDelete = ()
        type Scopes DNSManagedZonesDelete =
             '[CloudPlatform'FullControl, Ndev'Clouddns'Readwrite]
        requestClient DNSManagedZonesDelete{..}
          = go project location managedZone xgafv accessToken
              callback
              clientOperationId
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              dNSService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy DNSManagedZonesDeleteResource)
                      Core.mempty

