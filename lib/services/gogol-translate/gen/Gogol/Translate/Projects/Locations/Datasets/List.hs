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
-- Module      : Gogol.Translate.Projects.Locations.Datasets.List
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists datasets.
--
-- /See:/ <https://cloud.google.com/translate/docs/quickstarts Cloud Translation API Reference> for @translate.projects.locations.datasets.list@.
module Gogol.Translate.Projects.Locations.Datasets.List
  ( -- * Resource
    TranslateProjectsLocationsDatasetsListResource,

    -- ** Constructing a Request
    TranslateProjectsLocationsDatasetsList (..),
    newTranslateProjectsLocationsDatasetsList,
  )
where

import Gogol.Prelude qualified as Core
import Gogol.Translate.Types

-- | A resource alias for @translate.projects.locations.datasets.list@ method which the
-- 'TranslateProjectsLocationsDatasetsList' request conforms to.
type TranslateProjectsLocationsDatasetsListResource =
  "v3"
    Core.:> Core.Capture "parent" Core.Text
    Core.:> "datasets"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "pageSize" Core.Int32
    Core.:> Core.QueryParam "pageToken" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] ListDatasetsResponse

-- | Lists datasets.
--
-- /See:/ 'newTranslateProjectsLocationsDatasetsList' smart constructor.
data TranslateProjectsLocationsDatasetsList = TranslateProjectsLocationsDatasetsList
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Optional. Requested page size. The server can return fewer results than requested.
    pageSize :: (Core.Maybe Core.Int32),
    -- | Optional. A token identifying a page of results for the server to return. Typically obtained from next/page/token field in the response of a ListDatasets call.
    pageToken :: (Core.Maybe Core.Text),
    -- | Required. Name of the parent project. In form of @projects\/{project-number-or-id}\/locations\/{location-id}@
    parent :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TranslateProjectsLocationsDatasetsList' with the minimum fields required to make a request.
newTranslateProjectsLocationsDatasetsList ::
  -- |  Required. Name of the parent project. In form of @projects\/{project-number-or-id}\/locations\/{location-id}@ See 'parent'.
  Core.Text ->
  TranslateProjectsLocationsDatasetsList
newTranslateProjectsLocationsDatasetsList parent =
  TranslateProjectsLocationsDatasetsList
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      pageSize = Core.Nothing,
      pageToken = Core.Nothing,
      parent = parent,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest TranslateProjectsLocationsDatasetsList where
  type
    Rs TranslateProjectsLocationsDatasetsList =
      ListDatasetsResponse
  type
    Scopes TranslateProjectsLocationsDatasetsList =
      '[CloudPlatform'FullControl, CloudTranslation'FullControl]
  requestClient TranslateProjectsLocationsDatasetsList {..} =
    go
      parent
      xgafv
      accessToken
      callback
      pageSize
      pageToken
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      translateService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy TranslateProjectsLocationsDatasetsListResource
          )
          Core.mempty
