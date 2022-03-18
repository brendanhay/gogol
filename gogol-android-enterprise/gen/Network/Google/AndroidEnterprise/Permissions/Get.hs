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
-- Module      : Network.Google.AndroidEnterprise.Permissions.Get
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves details of an Android app permission for display to an enterprise admin.
--
-- /See:/ <https://developers.google.com/android/work/play/emm-api Google Play EMM API Reference> for @androidenterprise.permissions.get@.
module Network.Google.AndroidEnterprise.Permissions.Get
  ( -- * Resource
    AndroidEnterprisePermissionsGetResource,

    -- ** Constructing a Request
    newAndroidEnterprisePermissionsGet,
    AndroidEnterprisePermissionsGet,
  )
where

import Network.Google.AndroidEnterprise.Types
import qualified Network.Google.Prelude as Core

-- | A resource alias for @androidenterprise.permissions.get@ method which the
-- 'AndroidEnterprisePermissionsGet' request conforms to.
type AndroidEnterprisePermissionsGetResource =
  "androidenterprise"
    Core.:> "v1"
    Core.:> "permissions"
    Core.:> Core.Capture "permissionId" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "language" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] Permission

-- | Retrieves details of an Android app permission for display to an enterprise admin.
--
-- /See:/ 'newAndroidEnterprisePermissionsGet' smart constructor.
data AndroidEnterprisePermissionsGet = AndroidEnterprisePermissionsGet
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The BCP47 tag for the user\'s preferred language (e.g. \"en-US\", \"de\")
    language :: (Core.Maybe Core.Text),
    -- | The ID of the permission.
    permissionId :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AndroidEnterprisePermissionsGet' with the minimum fields required to make a request.
newAndroidEnterprisePermissionsGet ::
  -- |  The ID of the permission. See 'permissionId'.
  Core.Text ->
  AndroidEnterprisePermissionsGet
newAndroidEnterprisePermissionsGet permissionId =
  AndroidEnterprisePermissionsGet
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      language = Core.Nothing,
      permissionId = permissionId,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    AndroidEnterprisePermissionsGet
  where
  type Rs AndroidEnterprisePermissionsGet = Permission
  type
    Scopes AndroidEnterprisePermissionsGet =
      '["https://www.googleapis.com/auth/androidenterprise"]
  requestClient AndroidEnterprisePermissionsGet {..} =
    go
      permissionId
      xgafv
      accessToken
      callback
      language
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      androidEnterpriseService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy AndroidEnterprisePermissionsGetResource
          )
          Core.mempty
