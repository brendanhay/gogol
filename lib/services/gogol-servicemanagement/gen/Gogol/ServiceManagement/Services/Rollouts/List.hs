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
-- Module      : Gogol.ServiceManagement.Services.Rollouts.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the history of the service configuration rollouts for a managed service, from the newest to the oldest.
--
-- /See:/ <https://cloud.google.com/service-management/ Service Management API Reference> for @servicemanagement.services.rollouts.list@.
module Gogol.ServiceManagement.Services.Rollouts.List
    (
    -- * Resource
      ServiceManagementServicesRolloutsListResource

    -- ** Constructing a Request
    , newServiceManagementServicesRolloutsList
    , ServiceManagementServicesRolloutsList
    ) where

import qualified Gogol.Prelude as Core
import Gogol.ServiceManagement.Types

-- | A resource alias for @servicemanagement.services.rollouts.list@ method which the
-- 'ServiceManagementServicesRolloutsList' request conforms to.
type ServiceManagementServicesRolloutsListResource =
     "v1" Core.:>
       "services" Core.:>
         Core.Capture "serviceName" Core.Text Core.:>
           "rollouts" Core.:>
             Core.QueryParam "$.xgafv" Xgafv Core.:>
               Core.QueryParam "access_token" Core.Text Core.:>
                 Core.QueryParam "callback" Core.Text Core.:>
                   Core.QueryParam "filter" Core.Text Core.:>
                     Core.QueryParam "pageSize" Core.Int32 Core.:>
                       Core.QueryParam "pageToken" Core.Text Core.:>
                         Core.QueryParam "uploadType" Core.Text Core.:>
                           Core.QueryParam "upload_protocol" Core.Text Core.:>
                             Core.QueryParam "alt" Core.AltJSON Core.:>
                               Core.Get '[Core.JSON] ListServiceRolloutsResponse

-- | Lists the history of the service configuration rollouts for a managed service, from the newest to the oldest.
--
-- /See:/ 'newServiceManagementServicesRolloutsList' smart constructor.
data ServiceManagementServicesRolloutsList = ServiceManagementServicesRolloutsList
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Required. Use @filter@ to return subset of rollouts. The following filters are supported: -- To limit the results to only those in <google.api.servicemanagement.v1.RolloutStatus status> \'SUCCESS\', use filter=\'status=SUCCESS\' -- To limit the results to those in <google.api.servicemanagement.v1.RolloutStatus status> \'CANCELLED\' or \'FAILED\', use filter=\'status=CANCELLED OR status=FAILED\'
    , filter :: (Core.Maybe Core.Text)
      -- | The max number of items to include in the response list. Page size is 50 if not specified. Maximum value is 100.
    , pageSize :: (Core.Maybe Core.Int32)
      -- | The token of the page to retrieve.
    , pageToken :: (Core.Maybe Core.Text)
      -- | Required. The name of the service. See the </service-management/overview overview> for naming requirements. For example: @example.googleapis.com@.
    , serviceName :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ServiceManagementServicesRolloutsList' with the minimum fields required to make a request.
newServiceManagementServicesRolloutsList 
    ::  Core.Text
       -- ^  Required. The name of the service. See the </service-management/overview overview> for naming requirements. For example: @example.googleapis.com@. See 'serviceName'.
    -> ServiceManagementServicesRolloutsList
newServiceManagementServicesRolloutsList serviceName =
  ServiceManagementServicesRolloutsList
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , filter = Core.Nothing
    , pageSize = Core.Nothing
    , pageToken = Core.Nothing
    , serviceName = serviceName
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           ServiceManagementServicesRolloutsList
         where
        type Rs ServiceManagementServicesRolloutsList =
             ListServiceRolloutsResponse
        type Scopes ServiceManagementServicesRolloutsList =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/cloud-platform.read-only",
               "https://www.googleapis.com/auth/service.management",
               "https://www.googleapis.com/auth/service.management.readonly"]
        requestClient
          ServiceManagementServicesRolloutsList{..}
          = go serviceName xgafv accessToken callback filter
              pageSize
              pageToken
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              serviceManagementService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           ServiceManagementServicesRolloutsListResource)
                      Core.mempty

