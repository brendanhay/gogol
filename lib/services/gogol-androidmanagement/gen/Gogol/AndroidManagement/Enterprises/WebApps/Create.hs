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
-- Module      : Gogol.AndroidManagement.Enterprises.WebApps.Create
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a web app.
--
-- /See:/ <https://developers.google.com/android/management Android Management API Reference> for @androidmanagement.enterprises.webApps.create@.
module Gogol.AndroidManagement.Enterprises.WebApps.Create
  ( -- * Resource
    AndroidManagementEnterprisesWebAppsCreateResource,

    -- ** Constructing a Request
    AndroidManagementEnterprisesWebAppsCreate (..),
    newAndroidManagementEnterprisesWebAppsCreate,
  )
where

import Gogol.AndroidManagement.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @androidmanagement.enterprises.webApps.create@ method which the
-- 'AndroidManagementEnterprisesWebAppsCreate' request conforms to.
type AndroidManagementEnterprisesWebAppsCreateResource =
  "v1"
    Core.:> Core.Capture "parent" Core.Text
    Core.:> "webApps"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] WebApp
    Core.:> Core.Post '[Core.JSON] WebApp

-- | Creates a web app.
--
-- /See:/ 'newAndroidManagementEnterprisesWebAppsCreate' smart constructor.
data AndroidManagementEnterprisesWebAppsCreate = AndroidManagementEnterprisesWebAppsCreate
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The name of the enterprise in the form enterprises\/{enterpriseId}.
    parent :: Core.Text,
    -- | Multipart request metadata.
    payload :: WebApp,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AndroidManagementEnterprisesWebAppsCreate' with the minimum fields required to make a request.
newAndroidManagementEnterprisesWebAppsCreate ::
  -- |  The name of the enterprise in the form enterprises\/{enterpriseId}. See 'parent'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  WebApp ->
  AndroidManagementEnterprisesWebAppsCreate
newAndroidManagementEnterprisesWebAppsCreate parent payload =
  AndroidManagementEnterprisesWebAppsCreate
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      parent = parent,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    AndroidManagementEnterprisesWebAppsCreate
  where
  type
    Rs AndroidManagementEnterprisesWebAppsCreate =
      WebApp
  type
    Scopes AndroidManagementEnterprisesWebAppsCreate =
      '[Androidmanagement'FullControl]
  requestClient
    AndroidManagementEnterprisesWebAppsCreate {..} =
      go
        parent
        xgafv
        accessToken
        callback
        uploadType
        uploadProtocol
        (Core.Just Core.AltJSON)
        payload
        androidManagementService
      where
        go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy
                  AndroidManagementEnterprisesWebAppsCreateResource
            )
            Core.mempty
