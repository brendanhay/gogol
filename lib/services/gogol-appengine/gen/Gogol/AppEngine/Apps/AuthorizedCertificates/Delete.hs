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
-- Module      : Gogol.AppEngine.Apps.AuthorizedCertificates.Delete
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes the specified SSL certificate.
--
-- /See:/ <https://cloud.google.com/appengine/docs/admin-api/ App Engine Admin API Reference> for @appengine.apps.authorizedCertificates.delete@.
module Gogol.AppEngine.Apps.AuthorizedCertificates.Delete
  ( -- * Resource
    AppEngineAppsAuthorizedCertificatesDeleteResource,

    -- ** Constructing a Request
    AppEngineAppsAuthorizedCertificatesDelete (..),
    newAppEngineAppsAuthorizedCertificatesDelete,
  )
where

import Gogol.AppEngine.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @appengine.apps.authorizedCertificates.delete@ method which the
-- 'AppEngineAppsAuthorizedCertificatesDelete' request conforms to.
type AppEngineAppsAuthorizedCertificatesDeleteResource =
  "v1"
    Core.:> "apps"
    Core.:> Core.Capture "appsId" Core.Text
    Core.:> "authorizedCertificates"
    Core.:> Core.Capture "authorizedCertificatesId" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Delete '[Core.JSON] Empty

-- | Deletes the specified SSL certificate.
--
-- /See:/ 'newAppEngineAppsAuthorizedCertificatesDelete' smart constructor.
data AppEngineAppsAuthorizedCertificatesDelete = AppEngineAppsAuthorizedCertificatesDelete
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | Part of @name@. Name of the resource to delete. Example: apps\/myapp\/authorizedCertificates\/12345.
    appsId :: Core.Text,
    -- | Part of @name@. See documentation of @appsId@.
    authorizedCertificatesId :: Core.Text,
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AppEngineAppsAuthorizedCertificatesDelete' with the minimum fields required to make a request.
newAppEngineAppsAuthorizedCertificatesDelete ::
  -- |  Part of @name@. Name of the resource to delete. Example: apps\/myapp\/authorizedCertificates\/12345. See 'appsId'.
  Core.Text ->
  -- |  Part of @name@. See documentation of @appsId@. See 'authorizedCertificatesId'.
  Core.Text ->
  AppEngineAppsAuthorizedCertificatesDelete
newAppEngineAppsAuthorizedCertificatesDelete appsId authorizedCertificatesId =
  AppEngineAppsAuthorizedCertificatesDelete
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      appsId = appsId,
      authorizedCertificatesId = authorizedCertificatesId,
      callback = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    AppEngineAppsAuthorizedCertificatesDelete
  where
  type
    Rs AppEngineAppsAuthorizedCertificatesDelete =
      Empty
  type
    Scopes AppEngineAppsAuthorizedCertificatesDelete =
      '[CloudPlatform'FullControl]
  requestClient
    AppEngineAppsAuthorizedCertificatesDelete {..} =
      go
        appsId
        authorizedCertificatesId
        xgafv
        accessToken
        callback
        uploadType
        uploadProtocol
        (Core.Just Core.AltJSON)
        appEngineService
      where
        go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy
                  AppEngineAppsAuthorizedCertificatesDeleteResource
            )
            Core.mempty
