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
-- Module      : Gogol.AndroidEnterprise.Enterprises.GetStoreLayout
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the store layout for the enterprise. If the store layout has not been set, returns \"basic\" as the store layout type and no homepage.
--
-- /See:/ <https://developers.google.com/android/work/play/emm-api Google Play EMM API Reference> for @androidenterprise.enterprises.getStoreLayout@.
module Gogol.AndroidEnterprise.Enterprises.GetStoreLayout
  ( -- * Resource
    AndroidEnterpriseEnterprisesGetStoreLayoutResource,

    -- ** Constructing a Request
    AndroidEnterpriseEnterprisesGetStoreLayout (..),
    newAndroidEnterpriseEnterprisesGetStoreLayout,
  )
where

import Gogol.AndroidEnterprise.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @androidenterprise.enterprises.getStoreLayout@ method which the
-- 'AndroidEnterpriseEnterprisesGetStoreLayout' request conforms to.
type AndroidEnterpriseEnterprisesGetStoreLayoutResource =
  "androidenterprise"
    Core.:> "v1"
    Core.:> "enterprises"
    Core.:> Core.Capture "enterpriseId" Core.Text
    Core.:> "storeLayout"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] StoreLayout

-- | Returns the store layout for the enterprise. If the store layout has not been set, returns \"basic\" as the store layout type and no homepage.
--
-- /See:/ 'newAndroidEnterpriseEnterprisesGetStoreLayout' smart constructor.
data AndroidEnterpriseEnterprisesGetStoreLayout = AndroidEnterpriseEnterprisesGetStoreLayout
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The ID of the enterprise.
    enterpriseId :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AndroidEnterpriseEnterprisesGetStoreLayout' with the minimum fields required to make a request.
newAndroidEnterpriseEnterprisesGetStoreLayout ::
  -- |  The ID of the enterprise. See 'enterpriseId'.
  Core.Text ->
  AndroidEnterpriseEnterprisesGetStoreLayout
newAndroidEnterpriseEnterprisesGetStoreLayout enterpriseId =
  AndroidEnterpriseEnterprisesGetStoreLayout
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      enterpriseId = enterpriseId,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    AndroidEnterpriseEnterprisesGetStoreLayout
  where
  type Rs AndroidEnterpriseEnterprisesGetStoreLayout = StoreLayout
  type
    Scopes AndroidEnterpriseEnterprisesGetStoreLayout =
      '[Androidenterprise'FullControl]
  requestClient AndroidEnterpriseEnterprisesGetStoreLayout {..} =
    go
      enterpriseId
      xgafv
      accessToken
      callback
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      androidEnterpriseService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy AndroidEnterpriseEnterprisesGetStoreLayoutResource
          )
          Core.mempty
