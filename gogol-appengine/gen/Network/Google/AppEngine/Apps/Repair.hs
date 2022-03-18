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
-- Module      : Network.Google.AppEngine.Apps.Repair
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Recreates the required App Engine features for the specified App Engine application, for example a Cloud Storage bucket or App Engine service account. Use this method if you receive an error message about a missing feature, for example, Error retrieving the App Engine service account. If you have deleted your App Engine service account, this will not be able to recreate it. Instead, you should attempt to use the IAM undelete API if possible at https:\/\/cloud.google.com\/iam\/reference\/rest\/v1\/projects.serviceAccounts\/undelete?apix/params=%7B\"name\"%3A\"projects%2F-%2FserviceAccounts%2Funique/id\"%2C\"resource\"%3A%7B%7D%7D . If the deletion was recent, the numeric ID can be found in the Cloud Console Activity Log.
--
-- /See:/ <https://cloud.google.com/appengine/docs/admin-api/ App Engine Admin API Reference> for @appengine.apps.repair@.
module Network.Google.AppEngine.Apps.Repair
  ( -- * Resource
    AppEngineAppsRepairResource,

    -- ** Constructing a Request
    newAppEngineAppsRepair,
    AppEngineAppsRepair,
  )
where

import Network.Google.AppEngine.Types
import qualified Network.Google.Prelude as Core

-- | A resource alias for @appengine.apps.repair@ method which the
-- 'AppEngineAppsRepair' request conforms to.
type AppEngineAppsRepairResource =
  "v1"
    Core.:> "apps"
    Core.:> Core.CaptureMode "appsId" "repair" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] RepairApplicationRequest
    Core.:> Core.Post '[Core.JSON] Operation

-- | Recreates the required App Engine features for the specified App Engine application, for example a Cloud Storage bucket or App Engine service account. Use this method if you receive an error message about a missing feature, for example, Error retrieving the App Engine service account. If you have deleted your App Engine service account, this will not be able to recreate it. Instead, you should attempt to use the IAM undelete API if possible at https:\/\/cloud.google.com\/iam\/reference\/rest\/v1\/projects.serviceAccounts\/undelete?apix/params=%7B\"name\"%3A\"projects%2F-%2FserviceAccounts%2Funique/id\"%2C\"resource\"%3A%7B%7D%7D . If the deletion was recent, the numeric ID can be found in the Cloud Console Activity Log.
--
-- /See:/ 'newAppEngineAppsRepair' smart constructor.
data AppEngineAppsRepair = AppEngineAppsRepair
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | Part of @name@. Name of the application to repair. Example: apps\/myapp
    appsId :: Core.Text,
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Multipart request metadata.
    payload :: RepairApplicationRequest,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AppEngineAppsRepair' with the minimum fields required to make a request.
newAppEngineAppsRepair ::
  -- |  Part of @name@. Name of the application to repair. Example: apps\/myapp See 'appsId'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  RepairApplicationRequest ->
  AppEngineAppsRepair
newAppEngineAppsRepair appsId payload =
  AppEngineAppsRepair
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      appsId = appsId,
      callback = Core.Nothing,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest AppEngineAppsRepair where
  type Rs AppEngineAppsRepair = Operation
  type
    Scopes AppEngineAppsRepair =
      '["https://www.googleapis.com/auth/cloud-platform"]
  requestClient AppEngineAppsRepair {..} =
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
              Core.Proxy AppEngineAppsRepairResource
          )
          Core.mempty
