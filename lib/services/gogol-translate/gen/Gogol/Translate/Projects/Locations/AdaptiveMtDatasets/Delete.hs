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
-- Module      : Gogol.Translate.Projects.Locations.AdaptiveMtDatasets.Delete
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes an Adaptive MT dataset, including all its entries and associated metadata.
--
-- /See:/ <https://cloud.google.com/translate/docs/quickstarts Cloud Translation API Reference> for @translate.projects.locations.adaptiveMtDatasets.delete@.
module Gogol.Translate.Projects.Locations.AdaptiveMtDatasets.Delete
  ( -- * Resource
    TranslateProjectsLocationsAdaptiveMtDatasetsDeleteResource,

    -- ** Constructing a Request
    TranslateProjectsLocationsAdaptiveMtDatasetsDelete (..),
    newTranslateProjectsLocationsAdaptiveMtDatasetsDelete,
  )
where

import Gogol.Prelude qualified as Core
import Gogol.Translate.Types

-- | A resource alias for @translate.projects.locations.adaptiveMtDatasets.delete@ method which the
-- 'TranslateProjectsLocationsAdaptiveMtDatasetsDelete' request conforms to.
type TranslateProjectsLocationsAdaptiveMtDatasetsDeleteResource =
  "v3"
    Core.:> Core.Capture "name" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Delete '[Core.JSON] Empty

-- | Deletes an Adaptive MT dataset, including all its entries and associated metadata.
--
-- /See:/ 'newTranslateProjectsLocationsAdaptiveMtDatasetsDelete' smart constructor.
data TranslateProjectsLocationsAdaptiveMtDatasetsDelete = TranslateProjectsLocationsAdaptiveMtDatasetsDelete
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. Name of the dataset. In the form of @projects\/{project-number-or-id}\/locations\/{location-id}\/adaptiveMtDatasets\/{adaptive-mt-dataset-id}@
    name :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TranslateProjectsLocationsAdaptiveMtDatasetsDelete' with the minimum fields required to make a request.
newTranslateProjectsLocationsAdaptiveMtDatasetsDelete ::
  -- |  Required. Name of the dataset. In the form of @projects\/{project-number-or-id}\/locations\/{location-id}\/adaptiveMtDatasets\/{adaptive-mt-dataset-id}@ See 'name'.
  Core.Text ->
  TranslateProjectsLocationsAdaptiveMtDatasetsDelete
newTranslateProjectsLocationsAdaptiveMtDatasetsDelete name =
  TranslateProjectsLocationsAdaptiveMtDatasetsDelete
    { xgafv =
        Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      name = name,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    TranslateProjectsLocationsAdaptiveMtDatasetsDelete
  where
  type Rs TranslateProjectsLocationsAdaptiveMtDatasetsDelete = Empty
  type
    Scopes TranslateProjectsLocationsAdaptiveMtDatasetsDelete =
      '[CloudPlatform'FullControl, CloudTranslation'FullControl]
  requestClient
    TranslateProjectsLocationsAdaptiveMtDatasetsDelete {..} =
      go
        name
        xgafv
        accessToken
        callback
        uploadType
        uploadProtocol
        (Core.Just Core.AltJSON)
        translateService
      where
        go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy
                  TranslateProjectsLocationsAdaptiveMtDatasetsDeleteResource
            )
            Core.mempty
