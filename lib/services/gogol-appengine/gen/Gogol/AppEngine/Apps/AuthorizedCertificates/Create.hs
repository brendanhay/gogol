{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.AppEngine.Apps.AuthorizedCertificates.Create
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Uploads the specified SSL certificate.
--
-- /See:/ <https://cloud.google.com/appengine/docs/admin-api/ App Engine Admin API Reference> for @appengine.apps.authorizedCertificates.create@.
module Gogol.AppEngine.Apps.AuthorizedCertificates.Create
  ( -- * Resource
    AppEngineAppsAuthorizedCertificatesCreateResource,

    -- ** Constructing a Request
    AppEngineAppsAuthorizedCertificatesCreate (..),
    newAppEngineAppsAuthorizedCertificatesCreate,
  )
where

import Gogol.AppEngine.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @appengine.apps.authorizedCertificates.create@ method which the
-- 'AppEngineAppsAuthorizedCertificatesCreate' request conforms to.
type AppEngineAppsAuthorizedCertificatesCreateResource =
  "v1"
    Core.:> "apps"
    Core.:> Core.Capture "appsId" Core.Text
    Core.:> "authorizedCertificates"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] AuthorizedCertificate
    Core.:> Core.Post '[Core.JSON] AuthorizedCertificate

-- | Uploads the specified SSL certificate.
--
-- /See:/ 'newAppEngineAppsAuthorizedCertificatesCreate' smart constructor.
data AppEngineAppsAuthorizedCertificatesCreate = AppEngineAppsAuthorizedCertificatesCreate
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | Part of @parent@. Name of the parent Application resource. Example: apps\/myapp.
    appsId :: Core.Text,
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Multipart request metadata.
    payload :: AuthorizedCertificate,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AppEngineAppsAuthorizedCertificatesCreate' with the minimum fields required to make a request.
newAppEngineAppsAuthorizedCertificatesCreate ::
  -- |  Part of @parent@. Name of the parent Application resource. Example: apps\/myapp. See 'appsId'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  AuthorizedCertificate ->
  AppEngineAppsAuthorizedCertificatesCreate
newAppEngineAppsAuthorizedCertificatesCreate appsId payload =
  AppEngineAppsAuthorizedCertificatesCreate
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      appsId = appsId,
      callback = Core.Nothing,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    AppEngineAppsAuthorizedCertificatesCreate
  where
  type
    Rs AppEngineAppsAuthorizedCertificatesCreate =
      AuthorizedCertificate
  type
    Scopes AppEngineAppsAuthorizedCertificatesCreate =
      '[CloudPlatform'FullControl]
  requestClient AppEngineAppsAuthorizedCertificatesCreate {..} =
    go
      appsId
      xgafv
      accessToken
      callback
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      payload
      appEngineService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy AppEngineAppsAuthorizedCertificatesCreateResource
          )
          Core.mempty
