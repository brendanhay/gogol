{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE ImportQualifiedPost #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.AndroidManagement.Enterprises.Patch
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates an enterprise. See also: SigninDetail
--
-- /See:/ <https://developers.google.com/android/management Android Management API Reference> for @androidmanagement.enterprises.patch@.
module Gogol.AndroidManagement.Enterprises.Patch
  ( -- * Resource
    AndroidManagementEnterprisesPatchResource,

    -- ** Constructing a Request
    AndroidManagementEnterprisesPatch (..),
    newAndroidManagementEnterprisesPatch,
  )
where

import Gogol.AndroidManagement.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @androidmanagement.enterprises.patch@ method which the
-- 'AndroidManagementEnterprisesPatch' request conforms to.
type AndroidManagementEnterprisesPatchResource =
  "v1"
    Core.:> Core.Capture "name" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "updateMask" Core.FieldMask
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] Enterprise
    Core.:> Core.Patch '[Core.JSON] Enterprise

-- | Updates an enterprise. See also: SigninDetail
--
-- /See:/ 'newAndroidManagementEnterprisesPatch' smart constructor.
data AndroidManagementEnterprisesPatch = AndroidManagementEnterprisesPatch
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The name of the enterprise in the form enterprises\/{enterpriseId}.
    name :: Core.Text,
    -- | Multipart request metadata.
    payload :: Enterprise,
    -- | The field mask indicating the fields to update. If not set, all modifiable fields will be modified.
    updateMask :: (Core.Maybe Core.FieldMask),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AndroidManagementEnterprisesPatch' with the minimum fields required to make a request.
newAndroidManagementEnterprisesPatch ::
  -- |  The name of the enterprise in the form enterprises\/{enterpriseId}. See 'name'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  Enterprise ->
  AndroidManagementEnterprisesPatch
newAndroidManagementEnterprisesPatch name payload =
  AndroidManagementEnterprisesPatch
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      name = name,
      payload = payload,
      updateMask = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest AndroidManagementEnterprisesPatch where
  type Rs AndroidManagementEnterprisesPatch = Enterprise
  type
    Scopes AndroidManagementEnterprisesPatch =
      '[Androidmanagement'FullControl]
  requestClient AndroidManagementEnterprisesPatch {..} =
    go
      name
      xgafv
      accessToken
      callback
      updateMask
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      payload
      androidManagementService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy AndroidManagementEnterprisesPatchResource
          )
          Core.mempty
