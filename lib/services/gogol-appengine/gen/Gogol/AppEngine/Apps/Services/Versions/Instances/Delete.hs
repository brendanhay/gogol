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
-- Module      : Gogol.AppEngine.Apps.Services.Versions.Instances.Delete
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Stops a running instance.The instance might be automatically recreated based on the scaling settings of the version. For more information, see \"How Instances are Managed\" (standard environment (https:\/\/cloud.google.com\/appengine\/docs\/standard\/python\/how-instances-are-managed) | flexible environment (https:\/\/cloud.google.com\/appengine\/docs\/flexible\/python\/how-instances-are-managed)).To ensure that instances are not re-created and avoid getting billed, you can stop all instances within the target version by changing the serving status of the version to STOPPED with the apps.services.versions.patch (https:\/\/cloud.google.com\/appengine\/docs\/admin-api\/reference\/rest\/v1\/apps.services.versions\/patch) method.
--
-- /See:/ <https://cloud.google.com/appengine/docs/admin-api/ App Engine Admin API Reference> for @appengine.apps.services.versions.instances.delete@.
module Gogol.AppEngine.Apps.Services.Versions.Instances.Delete
    (
    -- * Resource
      AppEngineAppsServicesVersionsInstancesDeleteResource

    -- ** Constructing a Request
    , newAppEngineAppsServicesVersionsInstancesDelete
    , AppEngineAppsServicesVersionsInstancesDelete
    ) where

import qualified Gogol.Prelude as Core
import Gogol.AppEngine.Types

-- | A resource alias for @appengine.apps.services.versions.instances.delete@ method which the
-- 'AppEngineAppsServicesVersionsInstancesDelete' request conforms to.
type AppEngineAppsServicesVersionsInstancesDeleteResource
     =
     "v1" Core.:>
       "apps" Core.:>
         Core.Capture "appsId" Core.Text Core.:>
           "services" Core.:>
             Core.Capture "servicesId" Core.Text Core.:>
               "versions" Core.:>
                 Core.Capture "versionsId" Core.Text Core.:>
                   "instances" Core.:>
                     Core.Capture "instancesId" Core.Text Core.:>
                       Core.QueryParam "$.xgafv" Xgafv Core.:>
                         Core.QueryParam "access_token" Core.Text Core.:>
                           Core.QueryParam "callback" Core.Text Core.:>
                             Core.QueryParam "uploadType" Core.Text Core.:>
                               Core.QueryParam "upload_protocol" Core.Text
                                 Core.:>
                                 Core.QueryParam "alt" Core.AltJSON Core.:>
                                   Core.Delete '[Core.JSON] Operation

-- | Stops a running instance.The instance might be automatically recreated based on the scaling settings of the version. For more information, see \"How Instances are Managed\" (standard environment (https:\/\/cloud.google.com\/appengine\/docs\/standard\/python\/how-instances-are-managed) | flexible environment (https:\/\/cloud.google.com\/appengine\/docs\/flexible\/python\/how-instances-are-managed)).To ensure that instances are not re-created and avoid getting billed, you can stop all instances within the target version by changing the serving status of the version to STOPPED with the apps.services.versions.patch (https:\/\/cloud.google.com\/appengine\/docs\/admin-api\/reference\/rest\/v1\/apps.services.versions\/patch) method.
--
-- /See:/ 'newAppEngineAppsServicesVersionsInstancesDelete' smart constructor.
data AppEngineAppsServicesVersionsInstancesDelete = AppEngineAppsServicesVersionsInstancesDelete
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | Part of @name@. Name of the resource requested. Example: apps\/myapp\/services\/default\/versions\/v1\/instances\/instance-1.
    , appsId :: Core.Text
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Part of @name@. See documentation of @appsId@.
    , instancesId :: Core.Text
      -- | Part of @name@. See documentation of @appsId@.
    , servicesId :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
      -- | Part of @name@. See documentation of @appsId@.
    , versionsId :: Core.Text
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AppEngineAppsServicesVersionsInstancesDelete' with the minimum fields required to make a request.
newAppEngineAppsServicesVersionsInstancesDelete 
    ::  Core.Text
       -- ^  Part of @name@. Name of the resource requested. Example: apps\/myapp\/services\/default\/versions\/v1\/instances\/instance-1. See 'appsId'.
    -> Core.Text
       -- ^  Part of @name@. See documentation of @appsId@. See 'instancesId'.
    -> Core.Text
       -- ^  Part of @name@. See documentation of @appsId@. See 'servicesId'.
    -> Core.Text
       -- ^  Part of @name@. See documentation of @appsId@. See 'versionsId'.
    -> AppEngineAppsServicesVersionsInstancesDelete
newAppEngineAppsServicesVersionsInstancesDelete appsId instancesId servicesId versionsId =
  AppEngineAppsServicesVersionsInstancesDelete
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , appsId = appsId
    , callback = Core.Nothing
    , instancesId = instancesId
    , servicesId = servicesId
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    , versionsId = versionsId
    }

instance Core.GoogleRequest
           AppEngineAppsServicesVersionsInstancesDelete
         where
        type Rs AppEngineAppsServicesVersionsInstancesDelete
             = Operation
        type Scopes
               AppEngineAppsServicesVersionsInstancesDelete
             = '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          AppEngineAppsServicesVersionsInstancesDelete{..}
          = go appsId servicesId versionsId instancesId xgafv
              accessToken
              callback
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              appEngineService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           AppEngineAppsServicesVersionsInstancesDeleteResource)
                      Core.mempty

