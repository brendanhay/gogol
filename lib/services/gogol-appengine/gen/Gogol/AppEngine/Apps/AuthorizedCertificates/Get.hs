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
-- Module      : Gogol.AppEngine.Apps.AuthorizedCertificates.Get
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the specified SSL certificate.
--
-- /See:/ <https://cloud.google.com/appengine/docs/admin-api/ App Engine Admin API Reference> for @appengine.apps.authorizedCertificates.get@.
module Gogol.AppEngine.Apps.AuthorizedCertificates.Get
  ( -- * Resource
    AppEngineAppsAuthorizedCertificatesGetResource,

    -- ** Constructing a Request
    AppEngineAppsAuthorizedCertificatesGet (..),
    newAppEngineAppsAuthorizedCertificatesGet,
  )
where

import Gogol.AppEngine.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @appengine.apps.authorizedCertificates.get@ method which the
-- 'AppEngineAppsAuthorizedCertificatesGet' request conforms to.
type AppEngineAppsAuthorizedCertificatesGetResource =
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
    Core.:> Core.QueryParam
              "view"
              AppsAuthorizedCertificatesGetView
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] AuthorizedCertificate

-- | Gets the specified SSL certificate.
--
-- /See:/ 'newAppEngineAppsAuthorizedCertificatesGet' smart constructor.
data AppEngineAppsAuthorizedCertificatesGet = AppEngineAppsAuthorizedCertificatesGet
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | Part of @name@. Name of the resource requested. Example: apps\/myapp\/authorizedCertificates\/12345.
    appsId :: Core.Text,
    -- | Part of @name@. See documentation of @appsId@.
    authorizedCertificatesId :: Core.Text,
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text),
    -- | Controls the set of fields returned in the GET response.
    view :: (Core.Maybe AppsAuthorizedCertificatesGetView)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AppEngineAppsAuthorizedCertificatesGet' with the minimum fields required to make a request.
newAppEngineAppsAuthorizedCertificatesGet ::
  -- |  Part of @name@. Name of the resource requested. Example: apps\/myapp\/authorizedCertificates\/12345. See 'appsId'.
  Core.Text ->
  -- |  Part of @name@. See documentation of @appsId@. See 'authorizedCertificatesId'.
  Core.Text ->
  AppEngineAppsAuthorizedCertificatesGet
newAppEngineAppsAuthorizedCertificatesGet appsId authorizedCertificatesId =
  AppEngineAppsAuthorizedCertificatesGet
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      appsId = appsId,
      authorizedCertificatesId = authorizedCertificatesId,
      callback = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing,
      view = Core.Nothing
    }

instance
  Core.GoogleRequest
    AppEngineAppsAuthorizedCertificatesGet
  where
  type
    Rs AppEngineAppsAuthorizedCertificatesGet =
      AuthorizedCertificate
  type
    Scopes AppEngineAppsAuthorizedCertificatesGet =
      '[ Appengine'Admin,
         CloudPlatform'FullControl,
         CloudPlatform'ReadOnly
       ]
  requestClient
    AppEngineAppsAuthorizedCertificatesGet {..} =
      go
        appsId
        authorizedCertificatesId
        xgafv
        accessToken
        callback
        uploadType
        uploadProtocol
        view
        (Core.Just Core.AltJSON)
        appEngineService
      where
        go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy
                  AppEngineAppsAuthorizedCertificatesGetResource
            )
            Core.mempty
