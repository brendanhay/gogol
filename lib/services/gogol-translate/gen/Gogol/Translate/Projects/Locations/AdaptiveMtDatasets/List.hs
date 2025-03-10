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
-- Module      : Gogol.Translate.Projects.Locations.AdaptiveMtDatasets.List
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists all Adaptive MT datasets for which the caller has read permission.
--
-- /See:/ <https://cloud.google.com/translate/docs/quickstarts Cloud Translation API Reference> for @translate.projects.locations.adaptiveMtDatasets.list@.
module Gogol.Translate.Projects.Locations.AdaptiveMtDatasets.List
  ( -- * Resource
    TranslateProjectsLocationsAdaptiveMtDatasetsListResource,

    -- ** Constructing a Request
    TranslateProjectsLocationsAdaptiveMtDatasetsList (..),
    newTranslateProjectsLocationsAdaptiveMtDatasetsList,
  )
where

import Gogol.Prelude qualified as Core
import Gogol.Translate.Types

-- | A resource alias for @translate.projects.locations.adaptiveMtDatasets.list@ method which the
-- 'TranslateProjectsLocationsAdaptiveMtDatasetsList' request conforms to.
type TranslateProjectsLocationsAdaptiveMtDatasetsListResource =
  "v3"
    Core.:> Core.Capture "parent" Core.Text
    Core.:> "adaptiveMtDatasets"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "filter" Core.Text
    Core.:> Core.QueryParam "pageSize" Core.Int32
    Core.:> Core.QueryParam "pageToken" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] ListAdaptiveMtDatasetsResponse

-- | Lists all Adaptive MT datasets for which the caller has read permission.
--
-- /See:/ 'newTranslateProjectsLocationsAdaptiveMtDatasetsList' smart constructor.
data TranslateProjectsLocationsAdaptiveMtDatasetsList = TranslateProjectsLocationsAdaptiveMtDatasetsList
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Optional. An expression for filtering the results of the request. Filter is not supported yet.
    filter :: (Core.Maybe Core.Text),
    -- | Optional. Requested page size. The server may return fewer results than requested. If unspecified, the server picks an appropriate default.
    pageSize :: (Core.Maybe Core.Int32),
    -- | Optional. A token identifying a page of results the server should return. Typically, this is the value of ListAdaptiveMtDatasetsResponse.next/page/token returned from the previous call to @ListAdaptiveMtDatasets@ method. The first page is returned if @page_token@is empty or missing.
    pageToken :: (Core.Maybe Core.Text),
    -- | Required. The resource name of the project from which to list the Adaptive MT datasets. @projects\/{project-number-or-id}\/locations\/{location-id}@
    parent :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TranslateProjectsLocationsAdaptiveMtDatasetsList' with the minimum fields required to make a request.
newTranslateProjectsLocationsAdaptiveMtDatasetsList ::
  -- |  Required. The resource name of the project from which to list the Adaptive MT datasets. @projects\/{project-number-or-id}\/locations\/{location-id}@ See 'parent'.
  Core.Text ->
  TranslateProjectsLocationsAdaptiveMtDatasetsList
newTranslateProjectsLocationsAdaptiveMtDatasetsList parent =
  TranslateProjectsLocationsAdaptiveMtDatasetsList
    { xgafv =
        Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      filter = Core.Nothing,
      pageSize = Core.Nothing,
      pageToken = Core.Nothing,
      parent = parent,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    TranslateProjectsLocationsAdaptiveMtDatasetsList
  where
  type
    Rs TranslateProjectsLocationsAdaptiveMtDatasetsList =
      ListAdaptiveMtDatasetsResponse
  type
    Scopes TranslateProjectsLocationsAdaptiveMtDatasetsList =
      '[CloudPlatform'FullControl, CloudTranslation'FullControl]
  requestClient TranslateProjectsLocationsAdaptiveMtDatasetsList {..} =
    go
      parent
      xgafv
      accessToken
      callback
      filter
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
              Core.Proxy
                TranslateProjectsLocationsAdaptiveMtDatasetsListResource
          )
          Core.mempty
