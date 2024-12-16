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
-- Module      : Gogol.AppEngine.Apps.DomainMappings.Delete
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes the specified domain mapping. A user must be authorized to administer the associated domain in order to delete a DomainMapping resource.
--
-- /See:/ <https://cloud.google.com/appengine/docs/admin-api/ App Engine Admin API Reference> for @appengine.apps.domainMappings.delete@.
module Gogol.AppEngine.Apps.DomainMappings.Delete
    (
    -- * Resource
      AppEngineAppsDomainMappingsDeleteResource

    -- ** Constructing a Request
    , AppEngineAppsDomainMappingsDelete (..)
    , newAppEngineAppsDomainMappingsDelete
    ) where

import qualified Gogol.Prelude as Core
import Gogol.AppEngine.Types

-- | A resource alias for @appengine.apps.domainMappings.delete@ method which the
-- 'AppEngineAppsDomainMappingsDelete' request conforms to.
type AppEngineAppsDomainMappingsDeleteResource =
     "v1" Core.:>
       "apps" Core.:>
         Core.Capture "appsId" Core.Text Core.:>
           "domainMappings" Core.:>
             Core.Capture "domainMappingsId" Core.Text Core.:>
               Core.QueryParam "$.xgafv" Xgafv Core.:>
                 Core.QueryParam "access_token" Core.Text Core.:>
                   Core.QueryParam "callback" Core.Text Core.:>
                     Core.QueryParam "uploadType" Core.Text Core.:>
                       Core.QueryParam "upload_protocol" Core.Text Core.:>
                         Core.QueryParam "alt" Core.AltJSON Core.:>
                           Core.Delete '[Core.JSON] Operation

-- | Deletes the specified domain mapping. A user must be authorized to administer the associated domain in order to delete a DomainMapping resource.
--
-- /See:/ 'newAppEngineAppsDomainMappingsDelete' smart constructor.
data AppEngineAppsDomainMappingsDelete = AppEngineAppsDomainMappingsDelete
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | Part of @name@. Name of the resource to delete. Example: apps\/myapp\/domainMappings\/example.com.
    , appsId :: Core.Text
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Part of @name@. See documentation of @appsId@.
    , domainMappingsId :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AppEngineAppsDomainMappingsDelete' with the minimum fields required to make a request.
newAppEngineAppsDomainMappingsDelete 
    ::  Core.Text
       -- ^  Part of @name@. Name of the resource to delete. Example: apps\/myapp\/domainMappings\/example.com. See 'appsId'.
    -> Core.Text
       -- ^  Part of @name@. See documentation of @appsId@. See 'domainMappingsId'.
    -> AppEngineAppsDomainMappingsDelete
newAppEngineAppsDomainMappingsDelete appsId domainMappingsId =
  AppEngineAppsDomainMappingsDelete
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , appsId = appsId
    , callback = Core.Nothing
    , domainMappingsId = domainMappingsId
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           AppEngineAppsDomainMappingsDelete
         where
        type Rs AppEngineAppsDomainMappingsDelete = Operation
        type Scopes AppEngineAppsDomainMappingsDelete =
             '[CloudPlatform'FullControl]
        requestClient AppEngineAppsDomainMappingsDelete{..}
          = go appsId domainMappingsId xgafv accessToken
              callback
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              appEngineService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy AppEngineAppsDomainMappingsDeleteResource)
                      Core.mempty

