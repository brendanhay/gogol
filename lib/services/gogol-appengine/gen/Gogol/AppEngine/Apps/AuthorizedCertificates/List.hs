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
-- Module      : Gogol.AppEngine.Apps.AuthorizedCertificates.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists all SSL certificates the user is authorized to administer.
--
-- /See:/ <https://cloud.google.com/appengine/docs/admin-api/ App Engine Admin API Reference> for @appengine.apps.authorizedCertificates.list@.
module Gogol.AppEngine.Apps.AuthorizedCertificates.List
  ( -- * Resource
    AppEngineAppsAuthorizedCertificatesListResource,

    -- ** Constructing a Request
    AppEngineAppsAuthorizedCertificatesList (..),
    newAppEngineAppsAuthorizedCertificatesList,
  )
where

import Gogol.AppEngine.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @appengine.apps.authorizedCertificates.list@ method which the
-- 'AppEngineAppsAuthorizedCertificatesList' request conforms to.
type AppEngineAppsAuthorizedCertificatesListResource =
  "v1"
    Core.:> "apps"
    Core.:> Core.Capture "appsId" Core.Text
    Core.:> "authorizedCertificates"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "pageSize" Core.Int32
    Core.:> Core.QueryParam "pageToken" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam
              "view"
              AppsAuthorizedCertificatesListView
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get
              '[Core.JSON]
              ListAuthorizedCertificatesResponse

-- | Lists all SSL certificates the user is authorized to administer.
--
-- /See:/ 'newAppEngineAppsAuthorizedCertificatesList' smart constructor.
data AppEngineAppsAuthorizedCertificatesList = AppEngineAppsAuthorizedCertificatesList
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | Part of @parent@. Name of the parent Application resource. Example: apps\/myapp.
    appsId :: Core.Text,
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Maximum results to return per page.
    pageSize :: (Core.Maybe Core.Int32),
    -- | Continuation token for fetching the next page of results.
    pageToken :: (Core.Maybe Core.Text),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text),
    -- | Controls the set of fields returned in the LIST response.
    view :: (Core.Maybe AppsAuthorizedCertificatesListView)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AppEngineAppsAuthorizedCertificatesList' with the minimum fields required to make a request.
newAppEngineAppsAuthorizedCertificatesList ::
  -- |  Part of @parent@. Name of the parent Application resource. Example: apps\/myapp. See 'appsId'.
  Core.Text ->
  AppEngineAppsAuthorizedCertificatesList
newAppEngineAppsAuthorizedCertificatesList appsId =
  AppEngineAppsAuthorizedCertificatesList
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      appsId = appsId,
      callback = Core.Nothing,
      pageSize = Core.Nothing,
      pageToken = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing,
      view = Core.Nothing
    }

instance
  Core.GoogleRequest
    AppEngineAppsAuthorizedCertificatesList
  where
  type
    Rs AppEngineAppsAuthorizedCertificatesList =
      ListAuthorizedCertificatesResponse
  type
    Scopes AppEngineAppsAuthorizedCertificatesList =
      '[ Appengine'Admin,
         CloudPlatform'FullControl,
         CloudPlatform'ReadOnly
       ]
  requestClient
    AppEngineAppsAuthorizedCertificatesList {..} =
      go
        appsId
        xgafv
        accessToken
        callback
        pageSize
        pageToken
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
                  AppEngineAppsAuthorizedCertificatesListResource
            )
            Core.mempty
