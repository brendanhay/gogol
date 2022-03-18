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
-- Module      : Gogol.AndroidManagement.Enterprises.WebApps.Delete
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a web app.
--
-- /See:/ <https://developers.google.com/android/management Android Management API Reference> for @androidmanagement.enterprises.webApps.delete@.
module Gogol.AndroidManagement.Enterprises.WebApps.Delete
  ( -- * Resource
    AndroidManagementEnterprisesWebAppsDeleteResource,

    -- ** Constructing a Request
    newAndroidManagementEnterprisesWebAppsDelete,
    AndroidManagementEnterprisesWebAppsDelete,
  )
where

import Gogol.AndroidManagement.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @androidmanagement.enterprises.webApps.delete@ method which the
-- 'AndroidManagementEnterprisesWebAppsDelete' request conforms to.
type AndroidManagementEnterprisesWebAppsDeleteResource =
  "v1"
    Core.:> Core.Capture "name" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Delete '[Core.JSON] Empty

-- | Deletes a web app.
--
-- /See:/ 'newAndroidManagementEnterprisesWebAppsDelete' smart constructor.
data AndroidManagementEnterprisesWebAppsDelete = AndroidManagementEnterprisesWebAppsDelete
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The name of the web app in the form enterprises\/{enterpriseId}\/webApps\/{packageName}.
    name :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AndroidManagementEnterprisesWebAppsDelete' with the minimum fields required to make a request.
newAndroidManagementEnterprisesWebAppsDelete ::
  -- |  The name of the web app in the form enterprises\/{enterpriseId}\/webApps\/{packageName}. See 'name'.
  Core.Text ->
  AndroidManagementEnterprisesWebAppsDelete
newAndroidManagementEnterprisesWebAppsDelete name =
  AndroidManagementEnterprisesWebAppsDelete
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      name = name,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    AndroidManagementEnterprisesWebAppsDelete
  where
  type
    Rs AndroidManagementEnterprisesWebAppsDelete =
      Empty
  type
    Scopes AndroidManagementEnterprisesWebAppsDelete =
      '["https://www.googleapis.com/auth/androidmanagement"]
  requestClient
    AndroidManagementEnterprisesWebAppsDelete {..} =
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
                  AndroidManagementEnterprisesWebAppsDeleteResource
            )
            Core.mempty
