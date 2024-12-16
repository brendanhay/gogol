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
-- Module      : Gogol.ServiceConsumerManagement.Services.TenancyUnits.AddProject
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Add a new tenant project to the tenancy unit. There can be a maximum of 1024 tenant projects in a tenancy unit. If there are previously failed @AddTenantProject@ calls, you might need to call @RemoveTenantProject@ first to resolve them before you can make another call to @AddTenantProject@ with the same tag. Operation.
--
-- /See:/ <https://cloud.google.com/service-consumer-management/docs/overview Service Consumer Management API Reference> for @serviceconsumermanagement.services.tenancyUnits.addProject@.
module Gogol.ServiceConsumerManagement.Services.TenancyUnits.AddProject
    (
    -- * Resource
      ServiceConsumerManagementServicesTenancyUnitsAddProjectResource

    -- ** Constructing a Request
    , ServiceConsumerManagementServicesTenancyUnitsAddProject (..)
    , newServiceConsumerManagementServicesTenancyUnitsAddProject
    ) where

import qualified Gogol.Prelude as Core
import Gogol.ServiceConsumerManagement.Types

-- | A resource alias for @serviceconsumermanagement.services.tenancyUnits.addProject@ method which the
-- 'ServiceConsumerManagementServicesTenancyUnitsAddProject' request conforms to.
type ServiceConsumerManagementServicesTenancyUnitsAddProjectResource
     =
     "v1" Core.:>
       Core.CaptureMode "parent" "addProject" Core.Text
         Core.:>
         Core.QueryParam "$.xgafv" Xgafv Core.:>
           Core.QueryParam "access_token" Core.Text Core.:>
             Core.QueryParam "callback" Core.Text Core.:>
               Core.QueryParam "uploadType" Core.Text Core.:>
                 Core.QueryParam "upload_protocol" Core.Text Core.:>
                   Core.QueryParam "alt" Core.AltJSON Core.:>
                     Core.ReqBody '[Core.JSON] AddTenantProjectRequest
                       Core.:> Core.Post '[Core.JSON] Operation

-- | Add a new tenant project to the tenancy unit. There can be a maximum of 1024 tenant projects in a tenancy unit. If there are previously failed @AddTenantProject@ calls, you might need to call @RemoveTenantProject@ first to resolve them before you can make another call to @AddTenantProject@ with the same tag. Operation.
--
-- /See:/ 'newServiceConsumerManagementServicesTenancyUnitsAddProject' smart constructor.
data ServiceConsumerManagementServicesTenancyUnitsAddProject = ServiceConsumerManagementServicesTenancyUnitsAddProject
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Required. Name of the tenancy unit. Such as \'services\/service.googleapis.com\/projects\/12345\/tenancyUnits\/abcd\'.
    , parent :: Core.Text
      -- | Multipart request metadata.
    , payload :: AddTenantProjectRequest
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ServiceConsumerManagementServicesTenancyUnitsAddProject' with the minimum fields required to make a request.
newServiceConsumerManagementServicesTenancyUnitsAddProject 
    ::  Core.Text
       -- ^  Required. Name of the tenancy unit. Such as \'services\/service.googleapis.com\/projects\/12345\/tenancyUnits\/abcd\'. See 'parent'.
    -> AddTenantProjectRequest
       -- ^  Multipart request metadata. See 'payload'.
    -> ServiceConsumerManagementServicesTenancyUnitsAddProject
newServiceConsumerManagementServicesTenancyUnitsAddProject parent payload =
  ServiceConsumerManagementServicesTenancyUnitsAddProject
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , parent = parent
    , payload = payload
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           ServiceConsumerManagementServicesTenancyUnitsAddProject
         where
        type Rs
               ServiceConsumerManagementServicesTenancyUnitsAddProject
             = Operation
        type Scopes
               ServiceConsumerManagementServicesTenancyUnitsAddProject
             = '[CloudPlatform'FullControl]
        requestClient
          ServiceConsumerManagementServicesTenancyUnitsAddProject{..}
          = go parent xgafv accessToken callback uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              payload
              serviceConsumerManagementService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           ServiceConsumerManagementServicesTenancyUnitsAddProjectResource)
                      Core.mempty

