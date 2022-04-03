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
-- Module      : Gogol.AndroidManagement.Enterprises.WebApps.Get
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets a web app.
--
-- /See:/ <https://developers.google.com/android/management Android Management API Reference> for @androidmanagement.enterprises.webApps.get@.
module Gogol.AndroidManagement.Enterprises.WebApps.Get
  ( -- * Resource
    AndroidManagementEnterprisesWebAppsGetResource,

    -- ** Constructing a Request
    AndroidManagementEnterprisesWebAppsGet (..),
    newAndroidManagementEnterprisesWebAppsGet,
  )
where

import Gogol.AndroidManagement.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @androidmanagement.enterprises.webApps.get@ method which the
-- 'AndroidManagementEnterprisesWebAppsGet' request conforms to.
type AndroidManagementEnterprisesWebAppsGetResource =
  "v1"
    Core.:> Core.Capture "name" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] WebApp

-- | Gets a web app.
--
-- /See:/ 'newAndroidManagementEnterprisesWebAppsGet' smart constructor.
data AndroidManagementEnterprisesWebAppsGet = AndroidManagementEnterprisesWebAppsGet
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The name of the web app in the form enterprises\/{enterpriseId}\/webApp\/{packageName}.
    name :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AndroidManagementEnterprisesWebAppsGet' with the minimum fields required to make a request.
newAndroidManagementEnterprisesWebAppsGet ::
  -- |  The name of the web app in the form enterprises\/{enterpriseId}\/webApp\/{packageName}. See 'name'.
  Core.Text ->
  AndroidManagementEnterprisesWebAppsGet
newAndroidManagementEnterprisesWebAppsGet name =
  AndroidManagementEnterprisesWebAppsGet
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      name = name,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    AndroidManagementEnterprisesWebAppsGet
  where
  type
    Rs AndroidManagementEnterprisesWebAppsGet =
      WebApp
  type
    Scopes AndroidManagementEnterprisesWebAppsGet =
      '[Androidmanagement'FullControl]
  requestClient
    AndroidManagementEnterprisesWebAppsGet {..} =
      go
        name
        xgafv
        accessToken
        callback
        uploadType
        uploadProtocol
        (Core.Just Core.AltJSON)
        androidManagementService
      where
        go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy
                  AndroidManagementEnterprisesWebAppsGetResource
            )
            Core.mempty
