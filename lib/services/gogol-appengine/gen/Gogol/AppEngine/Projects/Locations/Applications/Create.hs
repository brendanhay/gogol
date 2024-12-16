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
-- Module      : Gogol.AppEngine.Projects.Locations.Applications.Create
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates an App Engine application for a Google Cloud Platform project. Required fields: id - The ID of the target Cloud Platform project. location - The region (https:\/\/cloud.google.com\/appengine\/docs\/locations) where you want the App Engine application located.For more information about App Engine applications, see Managing Projects, Applications, and Billing (https:\/\/cloud.google.com\/appengine\/docs\/standard\/python\/console\/).
--
-- /See:/ <https://cloud.google.com/appengine/docs/admin-api/ App Engine Admin API Reference> for @appengine.projects.locations.applications.create@.
module Gogol.AppEngine.Projects.Locations.Applications.Create
    (
    -- * Resource
      AppEngineProjectsLocationsApplicationsCreateResource

    -- ** Constructing a Request
    , AppEngineProjectsLocationsApplicationsCreate (..)
    , newAppEngineProjectsLocationsApplicationsCreate
    ) where

import qualified Gogol.Prelude as Core
import Gogol.AppEngine.Types

-- | A resource alias for @appengine.projects.locations.applications.create@ method which the
-- 'AppEngineProjectsLocationsApplicationsCreate' request conforms to.
type AppEngineProjectsLocationsApplicationsCreateResource
     =
     "v1" Core.:>
       "projects" Core.:>
         Core.Capture "projectsId" Core.Text Core.:>
           "locations" Core.:>
             Core.Capture "locationsId" Core.Text Core.:>
               "applications" Core.:>
                 Core.QueryParam "$.xgafv" Xgafv Core.:>
                   Core.QueryParam "access_token" Core.Text Core.:>
                     Core.QueryParam "callback" Core.Text Core.:>
                       Core.QueryParam "uploadType" Core.Text Core.:>
                         Core.QueryParam "upload_protocol" Core.Text Core.:>
                           Core.QueryParam "alt" Core.AltJSON Core.:>
                             Core.ReqBody '[Core.JSON] Application Core.:>
                               Core.Post '[Core.JSON] Operation

-- | Creates an App Engine application for a Google Cloud Platform project. Required fields: id - The ID of the target Cloud Platform project. location - The region (https:\/\/cloud.google.com\/appengine\/docs\/locations) where you want the App Engine application located.For more information about App Engine applications, see Managing Projects, Applications, and Billing (https:\/\/cloud.google.com\/appengine\/docs\/standard\/python\/console\/).
--
-- /See:/ 'newAppEngineProjectsLocationsApplicationsCreate' smart constructor.
data AppEngineProjectsLocationsApplicationsCreate = AppEngineProjectsLocationsApplicationsCreate
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Part of @parent@. See documentation of @projectsId@.
    , locationsId :: Core.Text
      -- | Multipart request metadata.
    , payload :: Application
      -- | Part of @parent@. The project and location in which the application should be created, specified in the format projects\//\/locations\//
    , projectsId :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AppEngineProjectsLocationsApplicationsCreate' with the minimum fields required to make a request.
newAppEngineProjectsLocationsApplicationsCreate 
    ::  Core.Text
       -- ^  Part of @parent@. See documentation of @projectsId@. See 'locationsId'.
    -> Application
       -- ^  Multipart request metadata. See 'payload'.
    -> Core.Text
       -- ^  Part of @parent@. The project and location in which the application should be created, specified in the format projects\//\/locations\// See 'projectsId'.
    -> AppEngineProjectsLocationsApplicationsCreate
newAppEngineProjectsLocationsApplicationsCreate locationsId payload projectsId =
  AppEngineProjectsLocationsApplicationsCreate
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , locationsId = locationsId
    , payload = payload
    , projectsId = projectsId
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           AppEngineProjectsLocationsApplicationsCreate
         where
        type Rs AppEngineProjectsLocationsApplicationsCreate
             = Operation
        type Scopes
               AppEngineProjectsLocationsApplicationsCreate
             = '[CloudPlatform'FullControl]
        requestClient
          AppEngineProjectsLocationsApplicationsCreate{..}
          = go projectsId locationsId xgafv accessToken
              callback
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              payload
              appEngineService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           AppEngineProjectsLocationsApplicationsCreateResource)
                      Core.mempty

