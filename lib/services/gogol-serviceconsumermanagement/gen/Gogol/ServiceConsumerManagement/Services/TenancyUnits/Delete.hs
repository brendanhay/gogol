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
-- Module      : Gogol.ServiceConsumerManagement.Services.TenancyUnits.Delete
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Delete a tenancy unit. Before you delete the tenancy unit, there should be no tenant resources in it that aren\'t in a DELETED state. Operation.
--
-- /See:/ <https://cloud.google.com/service-consumer-management/docs/overview Service Consumer Management API Reference> for @serviceconsumermanagement.services.tenancyUnits.delete@.
module Gogol.ServiceConsumerManagement.Services.TenancyUnits.Delete
    (
    -- * Resource
      ServiceConsumerManagementServicesTenancyUnitsDeleteResource

    -- ** Constructing a Request
    , ServiceConsumerManagementServicesTenancyUnitsDelete (..)
    , newServiceConsumerManagementServicesTenancyUnitsDelete
    ) where

import qualified Gogol.Prelude as Core
import Gogol.ServiceConsumerManagement.Types

-- | A resource alias for @serviceconsumermanagement.services.tenancyUnits.delete@ method which the
-- 'ServiceConsumerManagementServicesTenancyUnitsDelete' request conforms to.
type ServiceConsumerManagementServicesTenancyUnitsDeleteResource
     =
     "v1" Core.:>
       Core.Capture "name" Core.Text Core.:>
         Core.QueryParam "$.xgafv" Xgafv Core.:>
           Core.QueryParam "access_token" Core.Text Core.:>
             Core.QueryParam "callback" Core.Text Core.:>
               Core.QueryParam "uploadType" Core.Text Core.:>
                 Core.QueryParam "upload_protocol" Core.Text Core.:>
                   Core.QueryParam "alt" Core.AltJSON Core.:>
                     Core.Delete '[Core.JSON] Operation

-- | Delete a tenancy unit. Before you delete the tenancy unit, there should be no tenant resources in it that aren\'t in a DELETED state. Operation.
--
-- /See:/ 'newServiceConsumerManagementServicesTenancyUnitsDelete' smart constructor.
data ServiceConsumerManagementServicesTenancyUnitsDelete = ServiceConsumerManagementServicesTenancyUnitsDelete
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Required. Name of the tenancy unit to be deleted.
    , name :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ServiceConsumerManagementServicesTenancyUnitsDelete' with the minimum fields required to make a request.
newServiceConsumerManagementServicesTenancyUnitsDelete 
    ::  Core.Text
       -- ^  Required. Name of the tenancy unit to be deleted. See 'name'.
    -> ServiceConsumerManagementServicesTenancyUnitsDelete
newServiceConsumerManagementServicesTenancyUnitsDelete name =
  ServiceConsumerManagementServicesTenancyUnitsDelete
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , name = name
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           ServiceConsumerManagementServicesTenancyUnitsDelete
         where
        type Rs
               ServiceConsumerManagementServicesTenancyUnitsDelete
             = Operation
        type Scopes
               ServiceConsumerManagementServicesTenancyUnitsDelete
             = '[CloudPlatform'FullControl]
        requestClient
          ServiceConsumerManagementServicesTenancyUnitsDelete{..}
          = go name xgafv accessToken callback uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              serviceConsumerManagementService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           ServiceConsumerManagementServicesTenancyUnitsDeleteResource)
                      Core.mempty

