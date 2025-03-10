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
-- Module      : Gogol.CloudSearch.Settings.GetCustomer
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Get customer settings. __Note:__ This API requires an admin account to execute.
--
-- /See:/ <https://developers.google.com/cloud-search/docs/guides/ Cloud Search API Reference> for @cloudsearch.settings.getCustomer@.
module Gogol.CloudSearch.Settings.GetCustomer
  ( -- * Resource
    CloudSearchSettingsGetCustomerResource,

    -- ** Constructing a Request
    CloudSearchSettingsGetCustomer (..),
    newCloudSearchSettingsGetCustomer,
  )
where

import Gogol.CloudSearch.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @cloudsearch.settings.getCustomer@ method which the
-- 'CloudSearchSettingsGetCustomer' request conforms to.
type CloudSearchSettingsGetCustomerResource =
  "v1"
    Core.:> "settings"
    Core.:> "customer"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] CustomerSettings

-- | Get customer settings. __Note:__ This API requires an admin account to execute.
--
-- /See:/ 'newCloudSearchSettingsGetCustomer' smart constructor.
data CloudSearchSettingsGetCustomer = CloudSearchSettingsGetCustomer
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CloudSearchSettingsGetCustomer' with the minimum fields required to make a request.
newCloudSearchSettingsGetCustomer ::
  CloudSearchSettingsGetCustomer
newCloudSearchSettingsGetCustomer =
  CloudSearchSettingsGetCustomer
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest CloudSearchSettingsGetCustomer where
  type Rs CloudSearchSettingsGetCustomer = CustomerSettings
  type
    Scopes CloudSearchSettingsGetCustomer =
      '[ CloudSearch'FullControl,
         CloudSearch'Settings,
         CloudSearch'Settings'Indexing
       ]
  requestClient CloudSearchSettingsGetCustomer {..} =
    go
      xgafv
      accessToken
      callback
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      cloudSearchService
    where
      go =
        Core.buildClient
          (Core.Proxy :: Core.Proxy CloudSearchSettingsGetCustomerResource)
          Core.mempty
