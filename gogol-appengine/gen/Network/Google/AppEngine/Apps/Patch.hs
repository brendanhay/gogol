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
-- Module      : Network.Google.AppEngine.Apps.Patch
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates the specified Application resource. You can update the following fields: auth/domain - Google authentication domain for controlling user access to the application. default/cookie_expiration - Cookie expiration policy for the application. iap - Identity-Aware Proxy properties for the application.
--
-- /See:/ <https://cloud.google.com/appengine/docs/admin-api/ App Engine Admin API Reference> for @appengine.apps.patch@.
module Network.Google.AppEngine.Apps.Patch
  ( -- * Resource
    AppEngineAppsPatchResource,

    -- ** Constructing a Request
    newAppEngineAppsPatch,
    AppEngineAppsPatch,
  )
where

import Network.Google.AppEngine.Types
import qualified Network.Google.Prelude as Core

-- | A resource alias for @appengine.apps.patch@ method which the
-- 'AppEngineAppsPatch' request conforms to.
type AppEngineAppsPatchResource =
  "v1"
    Core.:> "apps"
    Core.:> Core.Capture "appsId" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "updateMask" Core.GFieldMask
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] Application
    Core.:> Core.Patch '[Core.JSON] Operation

-- | Updates the specified Application resource. You can update the following fields: auth/domain - Google authentication domain for controlling user access to the application. default/cookie_expiration - Cookie expiration policy for the application. iap - Identity-Aware Proxy properties for the application.
--
-- /See:/ 'newAppEngineAppsPatch' smart constructor.
data AppEngineAppsPatch = AppEngineAppsPatch
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | Part of @name@. Name of the Application resource to update. Example: apps\/myapp.
    appsId :: Core.Text,
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Multipart request metadata.
    payload :: Application,
    -- | Required. Standard field mask for the set of fields to be updated.
    updateMask :: (Core.Maybe Core.GFieldMask),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AppEngineAppsPatch' with the minimum fields required to make a request.
newAppEngineAppsPatch ::
  -- |  Part of @name@. Name of the Application resource to update. Example: apps\/myapp. See 'appsId'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  Application ->
  AppEngineAppsPatch
newAppEngineAppsPatch appsId payload =
  AppEngineAppsPatch
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      appsId = appsId,
      callback = Core.Nothing,
      payload = payload,
      updateMask = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest AppEngineAppsPatch where
  type Rs AppEngineAppsPatch = Operation
  type
    Scopes AppEngineAppsPatch =
      '["https://www.googleapis.com/auth/cloud-platform"]
  requestClient AppEngineAppsPatch {..} =
    go
      appsId
      xgafv
      accessToken
      callback
      updateMask
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      payload
      appEngineService
    where
      go =
        Core.buildClient
          (Core.Proxy :: Core.Proxy AppEngineAppsPatchResource)
          Core.mempty
