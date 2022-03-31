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
-- Module      : Gogol.AndroidEnterprise.Managedconfigurationssettings.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists all the managed configurations settings for the specified app.
--
-- /See:/ <https://developers.google.com/android/work/play/emm-api Google Play EMM API Reference> for @androidenterprise.managedconfigurationssettings.list@.
module Gogol.AndroidEnterprise.Managedconfigurationssettings.List
  ( -- * Resource
    AndroidEnterpriseManagedconfigurationssettingsListResource,

    -- ** Constructing a Request
    newAndroidEnterpriseManagedconfigurationssettingsList,
    AndroidEnterpriseManagedconfigurationssettingsList,
  )
where

import Gogol.AndroidEnterprise.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @androidenterprise.managedconfigurationssettings.list@ method which the
-- 'AndroidEnterpriseManagedconfigurationssettingsList' request conforms to.
type AndroidEnterpriseManagedconfigurationssettingsListResource =
  "androidenterprise"
    Core.:> "v1"
    Core.:> "enterprises"
    Core.:> Core.Capture "enterpriseId" Core.Text
    Core.:> "products"
    Core.:> Core.Capture "productId" Core.Text
    Core.:> "managedConfigurationsSettings"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get
              '[Core.JSON]
              ManagedConfigurationsSettingsListResponse

-- | Lists all the managed configurations settings for the specified app.
--
-- /See:/ 'newAndroidEnterpriseManagedconfigurationssettingsList' smart constructor.
data AndroidEnterpriseManagedconfigurationssettingsList = AndroidEnterpriseManagedconfigurationssettingsList
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The ID of the enterprise.
    enterpriseId :: Core.Text,
    -- | The ID of the product for which the managed configurations settings applies to.
    productId :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AndroidEnterpriseManagedconfigurationssettingsList' with the minimum fields required to make a request.
newAndroidEnterpriseManagedconfigurationssettingsList ::
  -- |  The ID of the enterprise. See 'enterpriseId'.
  Core.Text ->
  -- |  The ID of the product for which the managed configurations settings applies to. See 'productId'.
  Core.Text ->
  AndroidEnterpriseManagedconfigurationssettingsList
newAndroidEnterpriseManagedconfigurationssettingsList enterpriseId productId =
  AndroidEnterpriseManagedconfigurationssettingsList
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      enterpriseId = enterpriseId,
      productId = productId,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    AndroidEnterpriseManagedconfigurationssettingsList
  where
  type
    Rs
      AndroidEnterpriseManagedconfigurationssettingsList =
      ManagedConfigurationsSettingsListResponse
  type
    Scopes
      AndroidEnterpriseManagedconfigurationssettingsList =
      '[Androidenterprise'FullControl]
  requestClient
    AndroidEnterpriseManagedconfigurationssettingsList {..} =
      go
        enterpriseId
        productId
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
                Core.Proxy
                  AndroidEnterpriseManagedconfigurationssettingsListResource
            )
            Core.mempty
