{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Network.Google.AppEngine.Apps.DomainMappings.Create
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Maps a domain to an application. A user must be authorized to administer a domain in order to map it to an application. For a list of available authorized domains, see AuthorizedDomains.ListAuthorizedDomains.
--
-- /See:/ <https://cloud.google.com/appengine/docs/admin-api/ App Engine Admin API Reference> for @appengine.apps.domainMappings.create@.
module Network.Google.AppEngine.Apps.DomainMappings.Create
  ( -- * Resource
    AppEngineAppsDomainMappingsCreateResource,

    -- ** Constructing a Request
    newAppEngineAppsDomainMappingsCreate,
    AppEngineAppsDomainMappingsCreate,
  )
where

import Network.Google.AppEngine.Types
import qualified Network.Google.Prelude as Core

-- | A resource alias for @appengine.apps.domainMappings.create@ method which the
-- 'AppEngineAppsDomainMappingsCreate' request conforms to.
type AppEngineAppsDomainMappingsCreateResource =
  "v1"
    Core.:> "apps"
    Core.:> Core.Capture "appsId" Core.Text
    Core.:> "domainMappings"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam
              "overrideStrategy"
              AppsDomainMappingsCreateOverrideStrategy
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] DomainMapping
    Core.:> Core.Post '[Core.JSON] Operation

-- | Maps a domain to an application. A user must be authorized to administer a domain in order to map it to an application. For a list of available authorized domains, see AuthorizedDomains.ListAuthorizedDomains.
--
-- /See:/ 'newAppEngineAppsDomainMappingsCreate' smart constructor.
data AppEngineAppsDomainMappingsCreate = AppEngineAppsDomainMappingsCreate
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | Part of @parent@. Name of the parent Application resource. Example: apps\/myapp.
    appsId :: Core.Text,
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Whether the domain creation should override any existing mappings for this domain. By default, overrides are rejected.
    overrideStrategy :: (Core.Maybe AppsDomainMappingsCreateOverrideStrategy),
    -- | Multipart request metadata.
    payload :: DomainMapping,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AppEngineAppsDomainMappingsCreate' with the minimum fields required to make a request.
newAppEngineAppsDomainMappingsCreate ::
  -- |  Part of @parent@. Name of the parent Application resource. Example: apps\/myapp. See 'appsId'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  DomainMapping ->
  AppEngineAppsDomainMappingsCreate
newAppEngineAppsDomainMappingsCreate appsId payload =
  AppEngineAppsDomainMappingsCreate
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      appsId = appsId,
      callback = Core.Nothing,
      overrideStrategy = Core.Nothing,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    AppEngineAppsDomainMappingsCreate
  where
  type Rs AppEngineAppsDomainMappingsCreate = Operation
  type
    Scopes AppEngineAppsDomainMappingsCreate =
      '["https://www.googleapis.com/auth/cloud-platform"]
  requestClient AppEngineAppsDomainMappingsCreate {..} =
    go
      appsId
      xgafv
      accessToken
      callback
      overrideStrategy
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      payload
      appEngineService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy AppEngineAppsDomainMappingsCreateResource
          )
          Core.mempty
