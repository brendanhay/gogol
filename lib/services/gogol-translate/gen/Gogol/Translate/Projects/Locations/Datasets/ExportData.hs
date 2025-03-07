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
-- Module      : Gogol.Translate.Projects.Locations.Datasets.ExportData
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Exports dataset\'s data to the provided output location.
--
-- /See:/ <https://cloud.google.com/translate/docs/quickstarts Cloud Translation API Reference> for @translate.projects.locations.datasets.exportData@.
module Gogol.Translate.Projects.Locations.Datasets.ExportData
  ( -- * Resource
    TranslateProjectsLocationsDatasetsExportDataResource,

    -- ** Constructing a Request
    TranslateProjectsLocationsDatasetsExportData (..),
    newTranslateProjectsLocationsDatasetsExportData,
  )
where

import Gogol.Prelude qualified as Core
import Gogol.Translate.Types

-- | A resource alias for @translate.projects.locations.datasets.exportData@ method which the
-- 'TranslateProjectsLocationsDatasetsExportData' request conforms to.
type TranslateProjectsLocationsDatasetsExportDataResource =
  "v3"
    Core.:> Core.CaptureMode "dataset" "exportData" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] ExportDataRequest
    Core.:> Core.Post '[Core.JSON] Operation

-- | Exports dataset\'s data to the provided output location.
--
-- /See:/ 'newTranslateProjectsLocationsDatasetsExportData' smart constructor.
data TranslateProjectsLocationsDatasetsExportData = TranslateProjectsLocationsDatasetsExportData
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. Name of the dataset. In form of @projects\/{project-number-or-id}\/locations\/{location-id}\/datasets\/{dataset-id}@
    dataset :: Core.Text,
    -- | Multipart request metadata.
    payload :: ExportDataRequest,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TranslateProjectsLocationsDatasetsExportData' with the minimum fields required to make a request.
newTranslateProjectsLocationsDatasetsExportData ::
  -- |  Required. Name of the dataset. In form of @projects\/{project-number-or-id}\/locations\/{location-id}\/datasets\/{dataset-id}@ See 'dataset'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  ExportDataRequest ->
  TranslateProjectsLocationsDatasetsExportData
newTranslateProjectsLocationsDatasetsExportData dataset payload =
  TranslateProjectsLocationsDatasetsExportData
    { xgafv =
        Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      dataset = dataset,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    TranslateProjectsLocationsDatasetsExportData
  where
  type Rs TranslateProjectsLocationsDatasetsExportData = Operation
  type
    Scopes TranslateProjectsLocationsDatasetsExportData =
      '[CloudPlatform'FullControl, CloudTranslation'FullControl]
  requestClient TranslateProjectsLocationsDatasetsExportData {..} =
    go
      dataset
      xgafv
      accessToken
      callback
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      payload
      translateService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy TranslateProjectsLocationsDatasetsExportDataResource
          )
          Core.mempty
