{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
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
-- Module      : Gogol.CloudSearch.Settings.Datasources.Update
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates a datasource. __Note:__ This API requires an admin account to execute.
--
-- /See:/ <https://developers.google.com/cloud-search/docs/guides/ Cloud Search API Reference> for @cloudsearch.settings.datasources.update@.
module Gogol.CloudSearch.Settings.Datasources.Update
  ( -- * Resource
    CloudSearchSettingsDatasourcesUpdateResource,

    -- ** Constructing a Request
    CloudSearchSettingsDatasourcesUpdate (..),
    newCloudSearchSettingsDatasourcesUpdate,
  )
where

import Gogol.CloudSearch.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @cloudsearch.settings.datasources.update@ method which the
-- 'CloudSearchSettingsDatasourcesUpdate' request conforms to.
type CloudSearchSettingsDatasourcesUpdateResource =
  "v1"
    Core.:> "settings"
    Core.:> Core.Capture "name" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] UpdateDataSourceRequest
    Core.:> Core.Put '[Core.JSON] Operation

-- | Updates a datasource. __Note:__ This API requires an admin account to execute.
--
-- /See:/ 'newCloudSearchSettingsDatasourcesUpdate' smart constructor.
data CloudSearchSettingsDatasourcesUpdate = CloudSearchSettingsDatasourcesUpdate
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The name of the datasource resource. Format: datasources\/{source_id}. The name is ignored when creating a datasource.
    name :: Core.Text,
    -- | Multipart request metadata.
    payload :: UpdateDataSourceRequest,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CloudSearchSettingsDatasourcesUpdate' with the minimum fields required to make a request.
newCloudSearchSettingsDatasourcesUpdate ::
  -- |  The name of the datasource resource. Format: datasources\/{source_id}. The name is ignored when creating a datasource. See 'name'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  UpdateDataSourceRequest ->
  CloudSearchSettingsDatasourcesUpdate
newCloudSearchSettingsDatasourcesUpdate name payload =
  CloudSearchSettingsDatasourcesUpdate
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      name = name,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest CloudSearchSettingsDatasourcesUpdate where
  type Rs CloudSearchSettingsDatasourcesUpdate = Operation
  type
    Scopes CloudSearchSettingsDatasourcesUpdate =
      '[ CloudSearch'FullControl,
         CloudSearch'Settings,
         CloudSearch'Settings'Indexing
       ]
  requestClient CloudSearchSettingsDatasourcesUpdate {..} =
    go
      name
      xgafv
      accessToken
      callback
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      payload
      cloudSearchService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy CloudSearchSettingsDatasourcesUpdateResource
          )
          Core.mempty
