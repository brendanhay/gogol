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
-- Module      : Gogol.AppEngine.Apps.Services.Versions.Create
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deploys code and resource files to a new version.
--
-- /See:/ <https://cloud.google.com/appengine/docs/admin-api/ App Engine Admin API Reference> for @appengine.apps.services.versions.create@.
module Gogol.AppEngine.Apps.Services.Versions.Create
    (
    -- * Resource
      AppEngineAppsServicesVersionsCreateResource

    -- ** Constructing a Request
    , AppEngineAppsServicesVersionsCreate (..)
    , newAppEngineAppsServicesVersionsCreate
    ) where

import qualified Gogol.Prelude as Core
import Gogol.AppEngine.Types

-- | A resource alias for @appengine.apps.services.versions.create@ method which the
-- 'AppEngineAppsServicesVersionsCreate' request conforms to.
type AppEngineAppsServicesVersionsCreateResource =
     "v1" Core.:>
       "apps" Core.:>
         Core.Capture "appsId" Core.Text Core.:>
           "services" Core.:>
             Core.Capture "servicesId" Core.Text Core.:>
               "versions" Core.:>
                 Core.QueryParam "$.xgafv" Xgafv Core.:>
                   Core.QueryParam "access_token" Core.Text Core.:>
                     Core.QueryParam "callback" Core.Text Core.:>
                       Core.QueryParam "uploadType" Core.Text Core.:>
                         Core.QueryParam "upload_protocol" Core.Text Core.:>
                           Core.QueryParam "alt" Core.AltJSON Core.:>
                             Core.ReqBody '[Core.JSON] Version Core.:>
                               Core.Post '[Core.JSON] Operation

-- | Deploys code and resource files to a new version.
--
-- /See:/ 'newAppEngineAppsServicesVersionsCreate' smart constructor.
data AppEngineAppsServicesVersionsCreate = AppEngineAppsServicesVersionsCreate
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | Part of @parent@. Name of the parent resource to create this version under. Example: apps\/myapp\/services\/default.
    , appsId :: Core.Text
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Multipart request metadata.
    , payload :: Version
      -- | Part of @parent@. See documentation of @appsId@.
    , servicesId :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AppEngineAppsServicesVersionsCreate' with the minimum fields required to make a request.
newAppEngineAppsServicesVersionsCreate 
    ::  Core.Text
       -- ^  Part of @parent@. Name of the parent resource to create this version under. Example: apps\/myapp\/services\/default. See 'appsId'.
    -> Version
       -- ^  Multipart request metadata. See 'payload'.
    -> Core.Text
       -- ^  Part of @parent@. See documentation of @appsId@. See 'servicesId'.
    -> AppEngineAppsServicesVersionsCreate
newAppEngineAppsServicesVersionsCreate appsId payload servicesId =
  AppEngineAppsServicesVersionsCreate
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , appsId = appsId
    , callback = Core.Nothing
    , payload = payload
    , servicesId = servicesId
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           AppEngineAppsServicesVersionsCreate
         where
        type Rs AppEngineAppsServicesVersionsCreate =
             Operation
        type Scopes AppEngineAppsServicesVersionsCreate =
             '[CloudPlatform'FullControl]
        requestClient AppEngineAppsServicesVersionsCreate{..}
          = go appsId servicesId xgafv accessToken callback
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              payload
              appEngineService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           AppEngineAppsServicesVersionsCreateResource)
                      Core.mempty

