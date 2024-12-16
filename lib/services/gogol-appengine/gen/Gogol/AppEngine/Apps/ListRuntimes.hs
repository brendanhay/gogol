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
-- Module      : Gogol.AppEngine.Apps.ListRuntimes
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists all the available runtimes for the application.
--
-- /See:/ <https://cloud.google.com/appengine/docs/admin-api/ App Engine Admin API Reference> for @appengine.apps.listRuntimes@.
module Gogol.AppEngine.Apps.ListRuntimes
    (
    -- * Resource
      AppEngineAppsListRuntimesResource

    -- ** Constructing a Request
    , AppEngineAppsListRuntimes (..)
    , newAppEngineAppsListRuntimes
    ) where

import qualified Gogol.Prelude as Core
import Gogol.AppEngine.Types

-- | A resource alias for @appengine.apps.listRuntimes@ method which the
-- 'AppEngineAppsListRuntimes' request conforms to.
type AppEngineAppsListRuntimesResource =
     "v1" Core.:>
       "apps" Core.:>
         Core.CaptureMode "appsId" "listRuntimes" Core.Text
           Core.:>
           Core.QueryParam "$.xgafv" Xgafv Core.:>
             Core.QueryParam "access_token" Core.Text Core.:>
               Core.QueryParam "callback" Core.Text Core.:>
                 Core.QueryParam "environment"
                   AppsListRuntimesEnvironment
                   Core.:>
                   Core.QueryParam "uploadType" Core.Text Core.:>
                     Core.QueryParam "upload_protocol" Core.Text Core.:>
                       Core.QueryParam "alt" Core.AltJSON Core.:>
                         Core.Get '[Core.JSON] ListRuntimesResponse

-- | Lists all the available runtimes for the application.
--
-- /See:/ 'newAppEngineAppsListRuntimes' smart constructor.
data AppEngineAppsListRuntimes = AppEngineAppsListRuntimes
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | Part of @parent@. Required. Name of the parent Application resource. Example: apps\/myapp.
    , appsId :: Core.Text
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Optional. The environment of the Application.
    , environment :: (Core.Maybe AppsListRuntimesEnvironment)
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AppEngineAppsListRuntimes' with the minimum fields required to make a request.
newAppEngineAppsListRuntimes 
    ::  Core.Text
       -- ^  Part of @parent@. Required. Name of the parent Application resource. Example: apps\/myapp. See 'appsId'.
    -> AppEngineAppsListRuntimes
newAppEngineAppsListRuntimes appsId =
  AppEngineAppsListRuntimes
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , appsId = appsId
    , callback = Core.Nothing
    , environment = Core.Nothing
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest AppEngineAppsListRuntimes
         where
        type Rs AppEngineAppsListRuntimes =
             ListRuntimesResponse
        type Scopes AppEngineAppsListRuntimes =
             '[Appengine'Admin, CloudPlatform'FullControl,
               CloudPlatform'ReadOnly]
        requestClient AppEngineAppsListRuntimes{..}
          = go appsId xgafv accessToken callback environment
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              appEngineService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy AppEngineAppsListRuntimesResource)
                      Core.mempty

