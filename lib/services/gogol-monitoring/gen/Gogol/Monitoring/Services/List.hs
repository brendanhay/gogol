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
-- Module      : Gogol.Monitoring.Services.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- List Services for this Metrics Scope.
--
-- /See:/ <https://cloud.google.com/monitoring/api/ Cloud Monitoring API Reference> for @monitoring.services.list@.
module Gogol.Monitoring.Services.List
    (
    -- * Resource
      MonitoringServicesListResource

    -- ** Constructing a Request
    , MonitoringServicesList (..)
    , newMonitoringServicesList
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Monitoring.Types

-- | A resource alias for @monitoring.services.list@ method which the
-- 'MonitoringServicesList' request conforms to.
type MonitoringServicesListResource =
     "v3" Core.:>
       Core.Capture "parent" Core.Text Core.:>
         "services" Core.:>
           Core.QueryParam "$.xgafv" Xgafv Core.:>
             Core.QueryParam "access_token" Core.Text Core.:>
               Core.QueryParam "callback" Core.Text Core.:>
                 Core.QueryParam "filter" Core.Text Core.:>
                   Core.QueryParam "pageSize" Core.Int32 Core.:>
                     Core.QueryParam "pageToken" Core.Text Core.:>
                       Core.QueryParam "uploadType" Core.Text Core.:>
                         Core.QueryParam "upload_protocol" Core.Text Core.:>
                           Core.QueryParam "alt" Core.AltJSON Core.:>
                             Core.Get '[Core.JSON] ListServicesResponse

-- | List Services for this Metrics Scope.
--
-- /See:/ 'newMonitoringServicesList' smart constructor.
data MonitoringServicesList = MonitoringServicesList
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | A filter specifying what Services to return. The filter supports filtering on a particular service-identifier type or one of its attributes.To filter on a particular service-identifier type, the identifier/case refers to which option in the identifier field is populated. For example, the filter identifier/case = \"CUSTOM\" would match all services with a value for the custom field. Valid options include \"CUSTOM\", \"APP/ENGINE\", \"MESH/ISTIO\", and the other options listed at https:\/\/cloud.google.com\/monitoring\/api\/ref/v3\/rest\/v3\/services#ServiceTo filter on an attribute of a service-identifier type, apply the filter name by using the snake case of the service-identifier type and the attribute of that service-identifier type, and join the two with a period. For example, to filter by the meshUid field of the MeshIstio service-identifier type, you must filter on mesh/istio.mesh/uid = \"123\" to match all services with mesh UID \"123\". Service-identifier types and their attributes are described at
      -- https:\/\/cloud.google.com\/monitoring\/api\/ref/v3\/rest\/v3\/services#Service
    , filter :: (Core.Maybe Core.Text)
      -- | A non-negative number that is the maximum number of results to return. When 0, use default page size.
    , pageSize :: (Core.Maybe Core.Int32)
      -- | If this field is not empty then it must contain the nextPageToken value returned by a previous call to this method. Using this field causes the method to return additional results from the previous method call.
    , pageToken :: (Core.Maybe Core.Text)
      -- | Required. Resource name of the parent containing the listed services, either a project (https:\/\/cloud.google.com\/monitoring\/api\/v3#project/name) or a Monitoring Metrics Scope. The formats are: projects\/[PROJECT/ID/OR/NUMBER] workspaces\/[HOST/PROJECT/ID/OR/NUMBER]
    , parent :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'MonitoringServicesList' with the minimum fields required to make a request.
newMonitoringServicesList 
    ::  Core.Text
       -- ^  Required. Resource name of the parent containing the listed services, either a project (https:\/\/cloud.google.com\/monitoring\/api\/v3#project/name) or a Monitoring Metrics Scope. The formats are: projects\/[PROJECT/ID/OR/NUMBER] workspaces\/[HOST/PROJECT/ID/OR/NUMBER] See 'parent'.
    -> MonitoringServicesList
newMonitoringServicesList parent =
  MonitoringServicesList
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , filter = Core.Nothing
    , pageSize = Core.Nothing
    , pageToken = Core.Nothing
    , parent = parent
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest MonitoringServicesList
         where
        type Rs MonitoringServicesList = ListServicesResponse
        type Scopes MonitoringServicesList =
             '[CloudPlatform'FullControl, Monitoring'FullControl,
               Monitoring'Read]
        requestClient MonitoringServicesList{..}
          = go parent xgafv accessToken callback filter
              pageSize
              pageToken
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              monitoringService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy MonitoringServicesListResource)
                      Core.mempty

