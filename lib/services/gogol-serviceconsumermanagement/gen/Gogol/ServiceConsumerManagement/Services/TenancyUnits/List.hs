{-# LANGUAGE StrictData #-}
{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.ServiceConsumerManagement.Services.TenancyUnits.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Find the tenancy unit for a managed service and service consumer. This method shouldn\'t be used in a service producer\'s runtime path, for example to find the tenant project number when creating VMs. Service producers must persist the tenant project\'s information after the project is created.
--
-- /See:/ <https://cloud.google.com/service-consumer-management/docs/overview Service Consumer Management API Reference> for @serviceconsumermanagement.services.tenancyUnits.list@.
module Gogol.ServiceConsumerManagement.Services.TenancyUnits.List
    (
    -- * Resource
      ServiceConsumerManagementServicesTenancyUnitsListResource

    -- ** Constructing a Request
    , newServiceConsumerManagementServicesTenancyUnitsList
    , ServiceConsumerManagementServicesTenancyUnitsList
    ) where

import qualified Gogol.Prelude as Core
import Gogol.ServiceConsumerManagement.Types

-- | A resource alias for @serviceconsumermanagement.services.tenancyUnits.list@ method which the
-- 'ServiceConsumerManagementServicesTenancyUnitsList' request conforms to.
type ServiceConsumerManagementServicesTenancyUnitsListResource
     =
     "v1" Core.:>
       Core.Capture "parent" Core.Text Core.:>
         "tenancyUnits" Core.:>
           Core.QueryParam "$.xgafv" Xgafv Core.:>
             Core.QueryParam "access_token" Core.Text Core.:>
               Core.QueryParam "callback" Core.Text Core.:>
                 Core.QueryParam "filter" Core.Text Core.:>
                   Core.QueryParam "pageSize" Core.Int32 Core.:>
                     Core.QueryParam "pageToken" Core.Text Core.:>
                       Core.QueryParam "uploadType" Core.Text Core.:>
                         Core.QueryParam "upload_protocol" Core.Text Core.:>
                           Core.QueryParam "alt" Core.AltJSON Core.:>
                             Core.Get '[Core.JSON] ListTenancyUnitsResponse

-- | Find the tenancy unit for a managed service and service consumer. This method shouldn\'t be used in a service producer\'s runtime path, for example to find the tenant project number when creating VMs. Service producers must persist the tenant project\'s information after the project is created.
--
-- /See:/ 'newServiceConsumerManagementServicesTenancyUnitsList' smart constructor.
data ServiceConsumerManagementServicesTenancyUnitsList = ServiceConsumerManagementServicesTenancyUnitsList
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Optional. Filter expression over tenancy resources field. Optional.
    , filter :: (Core.Maybe Core.Text)
      -- | Optional. The maximum number of results returned by this request.
    , pageSize :: (Core.Maybe Core.Int32)
      -- | Optional. The continuation token, which is used to page through large result sets. To get the next page of results, set this parameter to the value of @nextPageToken@ from the previous response.
    , pageToken :: (Core.Maybe Core.Text)
      -- | Required. Managed service and service consumer. Required. services\/{service}\/{collection id}\/{resource id} {collection id} is the cloud resource collection type representing the service consumer, for example \'projects\', or \'organizations\'. {resource id} is the consumer numeric id, such as project number: \'123456\'. {service} the name of a service, such as \'service.googleapis.com\'.
    , parent :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ServiceConsumerManagementServicesTenancyUnitsList' with the minimum fields required to make a request.
newServiceConsumerManagementServicesTenancyUnitsList 
    ::  Core.Text
       -- ^  Required. Managed service and service consumer. Required. services\/{service}\/{collection id}\/{resource id} {collection id} is the cloud resource collection type representing the service consumer, for example \'projects\', or \'organizations\'. {resource id} is the consumer numeric id, such as project number: \'123456\'. {service} the name of a service, such as \'service.googleapis.com\'. See 'parent'.
    -> ServiceConsumerManagementServicesTenancyUnitsList
newServiceConsumerManagementServicesTenancyUnitsList parent =
  ServiceConsumerManagementServicesTenancyUnitsList
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

instance Core.GoogleRequest
           ServiceConsumerManagementServicesTenancyUnitsList
         where
        type Rs
               ServiceConsumerManagementServicesTenancyUnitsList
             = ListTenancyUnitsResponse
        type Scopes
               ServiceConsumerManagementServicesTenancyUnitsList
             = '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          ServiceConsumerManagementServicesTenancyUnitsList{..}
          = go parent xgafv accessToken callback filter
              pageSize
              pageToken
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              serviceConsumerManagementService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           ServiceConsumerManagementServicesTenancyUnitsListResource)
                      Core.mempty

