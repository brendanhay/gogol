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
-- Module      : Gogol.Translate.Projects.Locations.AdaptiveMtDatasets.Get
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the Adaptive MT dataset.
--
-- /See:/ <https://cloud.google.com/translate/docs/quickstarts Cloud Translation API Reference> for @translate.projects.locations.adaptiveMtDatasets.get@.
module Gogol.Translate.Projects.Locations.AdaptiveMtDatasets.Get
  ( -- * Resource
    TranslateProjectsLocationsAdaptiveMtDatasetsGetResource,

    -- ** Constructing a Request
    TranslateProjectsLocationsAdaptiveMtDatasetsGet (..),
    newTranslateProjectsLocationsAdaptiveMtDatasetsGet,
  )
where

import Gogol.Prelude qualified as Core
import Gogol.Translate.Types

-- | A resource alias for @translate.projects.locations.adaptiveMtDatasets.get@ method which the
-- 'TranslateProjectsLocationsAdaptiveMtDatasetsGet' request conforms to.
type TranslateProjectsLocationsAdaptiveMtDatasetsGetResource =
  "v3"
    Core.:> Core.Capture "name" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] AdaptiveMtDataset

-- | Gets the Adaptive MT dataset.
--
-- /See:/ 'newTranslateProjectsLocationsAdaptiveMtDatasetsGet' smart constructor.
data TranslateProjectsLocationsAdaptiveMtDatasetsGet = TranslateProjectsLocationsAdaptiveMtDatasetsGet
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

-- | Creates a value of 'TranslateProjectsLocationsAdaptiveMtDatasetsGet' with the minimum fields required to make a request.
newTranslateProjectsLocationsAdaptiveMtDatasetsGet ::
  -- |  Required. Name of the dataset. In the form of @projects\/{project-number-or-id}\/locations\/{location-id}\/adaptiveMtDatasets\/{adaptive-mt-dataset-id}@ See 'name'.
  Core.Text ->
  TranslateProjectsLocationsAdaptiveMtDatasetsGet
newTranslateProjectsLocationsAdaptiveMtDatasetsGet name =
  TranslateProjectsLocationsAdaptiveMtDatasetsGet
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
    TranslateProjectsLocationsAdaptiveMtDatasetsGet
  where
  type
    Rs TranslateProjectsLocationsAdaptiveMtDatasetsGet =
      AdaptiveMtDataset
  type
    Scopes TranslateProjectsLocationsAdaptiveMtDatasetsGet =
      '[CloudPlatform'FullControl, CloudTranslation'FullControl]
  requestClient TranslateProjectsLocationsAdaptiveMtDatasetsGet {..} =
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
              Core.Proxy TranslateProjectsLocationsAdaptiveMtDatasetsGetResource
          )
          Core.mempty
