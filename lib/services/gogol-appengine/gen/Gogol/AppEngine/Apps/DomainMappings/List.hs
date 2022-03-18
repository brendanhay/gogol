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
-- Module      : Gogol.AppEngine.Apps.DomainMappings.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the domain mappings on an application.
--
-- /See:/ <https://cloud.google.com/appengine/docs/admin-api/ App Engine Admin API Reference> for @appengine.apps.domainMappings.list@.
module Gogol.AppEngine.Apps.DomainMappings.List
    (
    -- * Resource
      AppEngineAppsDomainMappingsListResource

    -- ** Constructing a Request
    , newAppEngineAppsDomainMappingsList
    , AppEngineAppsDomainMappingsList
    ) where

import qualified Gogol.Prelude as Core
import Gogol.AppEngine.Types

-- | A resource alias for @appengine.apps.domainMappings.list@ method which the
-- 'AppEngineAppsDomainMappingsList' request conforms to.
type AppEngineAppsDomainMappingsListResource =
     "v1" Core.:>
       "apps" Core.:>
         Core.Capture "appsId" Core.Text Core.:>
           "domainMappings" Core.:>
             Core.QueryParam "$.xgafv" Xgafv Core.:>
               Core.QueryParam "access_token" Core.Text Core.:>
                 Core.QueryParam "callback" Core.Text Core.:>
                   Core.QueryParam "pageSize" Core.Int32 Core.:>
                     Core.QueryParam "pageToken" Core.Text Core.:>
                       Core.QueryParam "uploadType" Core.Text Core.:>
                         Core.QueryParam "upload_protocol" Core.Text Core.:>
                           Core.QueryParam "alt" Core.AltJSON Core.:>
                             Core.Get '[Core.JSON] ListDomainMappingsResponse

-- | Lists the domain mappings on an application.
--
-- /See:/ 'newAppEngineAppsDomainMappingsList' smart constructor.
data AppEngineAppsDomainMappingsList = AppEngineAppsDomainMappingsList
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | Part of @parent@. Name of the parent Application resource. Example: apps\/myapp.
    , appsId :: Core.Text
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Maximum results to return per page.
    , pageSize :: (Core.Maybe Core.Int32)
      -- | Continuation token for fetching the next page of results.
    , pageToken :: (Core.Maybe Core.Text)
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AppEngineAppsDomainMappingsList' with the minimum fields required to make a request.
newAppEngineAppsDomainMappingsList 
    ::  Core.Text
       -- ^  Part of @parent@. Name of the parent Application resource. Example: apps\/myapp. See 'appsId'.
    -> AppEngineAppsDomainMappingsList
newAppEngineAppsDomainMappingsList appsId =
  AppEngineAppsDomainMappingsList
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , appsId = appsId
    , callback = Core.Nothing
    , pageSize = Core.Nothing
    , pageToken = Core.Nothing
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           AppEngineAppsDomainMappingsList
         where
        type Rs AppEngineAppsDomainMappingsList =
             ListDomainMappingsResponse
        type Scopes AppEngineAppsDomainMappingsList =
             '["https://www.googleapis.com/auth/appengine.admin",
               "https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/cloud-platform.read-only"]
        requestClient AppEngineAppsDomainMappingsList{..}
          = go appsId xgafv accessToken callback pageSize
              pageToken
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              appEngineService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy AppEngineAppsDomainMappingsListResource)
                      Core.mempty

