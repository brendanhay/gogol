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
-- Module      : Gogol.CloudSearch.Settings.Datasources.Delete
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a datasource. __Note:__ This API requires an admin account to execute.
--
-- /See:/ <https://developers.google.com/cloud-search/docs/guides/ Cloud Search API Reference> for @cloudsearch.settings.datasources.delete@.
module Gogol.CloudSearch.Settings.Datasources.Delete
  ( -- * Resource
    CloudSearchSettingsDatasourcesDeleteResource,

    -- ** Constructing a Request
    CloudSearchSettingsDatasourcesDelete (..),
    newCloudSearchSettingsDatasourcesDelete,
  )
where

import Gogol.CloudSearch.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @cloudsearch.settings.datasources.delete@ method which the
-- 'CloudSearchSettingsDatasourcesDelete' request conforms to.
type CloudSearchSettingsDatasourcesDeleteResource =
  "v1"
    Core.:> "settings"
    Core.:> Core.Capture "name" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam
              "debugOptions.enableDebugging"
              Core.Bool
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Delete '[Core.JSON] Operation

-- | Deletes a datasource. __Note:__ This API requires an admin account to execute.
--
-- /See:/ 'newCloudSearchSettingsDatasourcesDelete' smart constructor.
data CloudSearchSettingsDatasourcesDelete = CloudSearchSettingsDatasourcesDelete
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | If you are asked by Google to help with debugging, set this field. Otherwise, ignore this field.
    debugOptionsEnableDebugging :: (Core.Maybe Core.Bool),
    -- | Name of the datasource. Format: datasources\/{source_id}.
    name :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CloudSearchSettingsDatasourcesDelete' with the minimum fields required to make a request.
newCloudSearchSettingsDatasourcesDelete ::
  -- |  Name of the datasource. Format: datasources\/{source_id}. See 'name'.
  Core.Text ->
  CloudSearchSettingsDatasourcesDelete
newCloudSearchSettingsDatasourcesDelete name =
  CloudSearchSettingsDatasourcesDelete
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      debugOptionsEnableDebugging = Core.Nothing,
      name = name,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    CloudSearchSettingsDatasourcesDelete
  where
  type
    Rs CloudSearchSettingsDatasourcesDelete =
      Operation
  type
    Scopes CloudSearchSettingsDatasourcesDelete =
      '[ CloudSearch'FullControl,
         CloudSearch'Settings,
         CloudSearch'Settings'Indexing
       ]
  requestClient
    CloudSearchSettingsDatasourcesDelete {..} =
      go
        name
        xgafv
        accessToken
        callback
        debugOptionsEnableDebugging
        uploadType
        uploadProtocol
        (Core.Just Core.AltJSON)
        cloudSearchService
      where
        go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy
                  CloudSearchSettingsDatasourcesDeleteResource
            )
            Core.mempty
