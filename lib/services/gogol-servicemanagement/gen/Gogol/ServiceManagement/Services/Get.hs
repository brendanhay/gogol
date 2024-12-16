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
-- Module      : Gogol.ServiceManagement.Services.Get
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets a managed service. Authentication is required unless the service is public.
--
-- /See:/ <https://cloud.google.com/service-management/ Service Management API Reference> for @servicemanagement.services.get@.
module Gogol.ServiceManagement.Services.Get
    (
    -- * Resource
      ServiceManagementServicesGetResource

    -- ** Constructing a Request
    , ServiceManagementServicesGet (..)
    , newServiceManagementServicesGet
    ) where

import qualified Gogol.Prelude as Core
import Gogol.ServiceManagement.Types

-- | A resource alias for @servicemanagement.services.get@ method which the
-- 'ServiceManagementServicesGet' request conforms to.
type ServiceManagementServicesGetResource =
     "v1" Core.:>
       "services" Core.:>
         Core.Capture "serviceName" Core.Text Core.:>
           Core.QueryParam "$.xgafv" Xgafv Core.:>
             Core.QueryParam "access_token" Core.Text Core.:>
               Core.QueryParam "callback" Core.Text Core.:>
                 Core.QueryParam "uploadType" Core.Text Core.:>
                   Core.QueryParam "upload_protocol" Core.Text Core.:>
                     Core.QueryParam "alt" Core.AltJSON Core.:>
                       Core.Get '[Core.JSON] ManagedService

-- | Gets a managed service. Authentication is required unless the service is public.
--
-- /See:/ 'newServiceManagementServicesGet' smart constructor.
data ServiceManagementServicesGet = ServiceManagementServicesGet
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Required. The name of the service. See the @ServiceManager@ overview for naming requirements. For example: @example.googleapis.com@.
    , serviceName :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ServiceManagementServicesGet' with the minimum fields required to make a request.
newServiceManagementServicesGet 
    ::  Core.Text
       -- ^  Required. The name of the service. See the @ServiceManager@ overview for naming requirements. For example: @example.googleapis.com@. See 'serviceName'.
    -> ServiceManagementServicesGet
newServiceManagementServicesGet serviceName =
  ServiceManagementServicesGet
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , serviceName = serviceName
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           ServiceManagementServicesGet
         where
        type Rs ServiceManagementServicesGet = ManagedService
        type Scopes ServiceManagementServicesGet =
             '[CloudPlatform'FullControl, CloudPlatform'ReadOnly,
               Service'Management, Service'Management'Readonly]
        requestClient ServiceManagementServicesGet{..}
          = go serviceName xgafv accessToken callback
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              serviceManagementService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy ServiceManagementServicesGetResource)
                      Core.mempty

