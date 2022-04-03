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
-- Module      : Gogol.AppEngine.Apps.Create
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates an App Engine application for a Google Cloud Platform project. Required fields: id - The ID of the target Cloud Platform project. location - The region (https:\/\/cloud.google.com\/appengine\/docs\/locations) where you want the App Engine application located.For more information about App Engine applications, see Managing Projects, Applications, and Billing (https:\/\/cloud.google.com\/appengine\/docs\/standard\/python\/console\/).
--
-- /See:/ <https://cloud.google.com/appengine/docs/admin-api/ App Engine Admin API Reference> for @appengine.apps.create@.
module Gogol.AppEngine.Apps.Create
  ( -- * Resource
    AppEngineAppsCreateResource,

    -- ** Constructing a Request
    AppEngineAppsCreate (..),
    newAppEngineAppsCreate,
  )
where

import Gogol.AppEngine.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @appengine.apps.create@ method which the
-- 'AppEngineAppsCreate' request conforms to.
type AppEngineAppsCreateResource =
  "v1"
    Core.:> "apps"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] Application
    Core.:> Core.Post '[Core.JSON] Operation

-- | Creates an App Engine application for a Google Cloud Platform project. Required fields: id - The ID of the target Cloud Platform project. location - The region (https:\/\/cloud.google.com\/appengine\/docs\/locations) where you want the App Engine application located.For more information about App Engine applications, see Managing Projects, Applications, and Billing (https:\/\/cloud.google.com\/appengine\/docs\/standard\/python\/console\/).
--
-- /See:/ 'newAppEngineAppsCreate' smart constructor.
data AppEngineAppsCreate = AppEngineAppsCreate
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Multipart request metadata.
    payload :: Application,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AppEngineAppsCreate' with the minimum fields required to make a request.
newAppEngineAppsCreate ::
  -- |  Multipart request metadata. See 'payload'.
  Application ->
  AppEngineAppsCreate
newAppEngineAppsCreate payload =
  AppEngineAppsCreate
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest AppEngineAppsCreate where
  type Rs AppEngineAppsCreate = Operation
  type
    Scopes AppEngineAppsCreate =
      '[CloudPlatform'FullControl]
  requestClient AppEngineAppsCreate {..} =
    go
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
              Core.Proxy AppEngineAppsCreateResource
          )
          Core.mempty
