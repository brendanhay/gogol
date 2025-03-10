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
-- Module      : Gogol.Translate.Projects.Locations.AdaptiveMtDatasets.AdaptiveMtFiles.List
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists all AdaptiveMtFiles associated to an AdaptiveMtDataset.
--
-- /See:/ <https://cloud.google.com/translate/docs/quickstarts Cloud Translation API Reference> for @translate.projects.locations.adaptiveMtDatasets.adaptiveMtFiles.list@.
module Gogol.Translate.Projects.Locations.AdaptiveMtDatasets.AdaptiveMtFiles.List
  ( -- * Resource
    TranslateProjectsLocationsAdaptiveMtDatasetsAdaptiveMtFilesListResource,

    -- ** Constructing a Request
    TranslateProjectsLocationsAdaptiveMtDatasetsAdaptiveMtFilesList (..),
    newTranslateProjectsLocationsAdaptiveMtDatasetsAdaptiveMtFilesList,
  )
where

import Gogol.Prelude qualified as Core
import Gogol.Translate.Types

-- | A resource alias for @translate.projects.locations.adaptiveMtDatasets.adaptiveMtFiles.list@ method which the
-- 'TranslateProjectsLocationsAdaptiveMtDatasetsAdaptiveMtFilesList' request conforms to.
type TranslateProjectsLocationsAdaptiveMtDatasetsAdaptiveMtFilesListResource =
  "v3"
    Core.:> Core.Capture "parent" Core.Text
    Core.:> "adaptiveMtFiles"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "pageSize" Core.Int32
    Core.:> Core.QueryParam "pageToken" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] ListAdaptiveMtFilesResponse

-- | Lists all AdaptiveMtFiles associated to an AdaptiveMtDataset.
--
-- /See:/ 'newTranslateProjectsLocationsAdaptiveMtDatasetsAdaptiveMtFilesList' smart constructor.
data TranslateProjectsLocationsAdaptiveMtDatasetsAdaptiveMtFilesList = TranslateProjectsLocationsAdaptiveMtDatasetsAdaptiveMtFilesList
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Optional.
    pageSize :: (Core.Maybe Core.Int32),
    -- | Optional. A token identifying a page of results the server should return. Typically, this is the value of ListAdaptiveMtFilesResponse.next/page/token returned from the previous call to @ListAdaptiveMtFiles@ method. The first page is returned if @page_token@is empty or missing.
    pageToken :: (Core.Maybe Core.Text),
    -- | Required. The resource name of the project from which to list the Adaptive MT files. @projects\/{project}\/locations\/{location}\/adaptiveMtDatasets\/{dataset}@
    parent :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TranslateProjectsLocationsAdaptiveMtDatasetsAdaptiveMtFilesList' with the minimum fields required to make a request.
newTranslateProjectsLocationsAdaptiveMtDatasetsAdaptiveMtFilesList ::
  -- |  Required. The resource name of the project from which to list the Adaptive MT files. @projects\/{project}\/locations\/{location}\/adaptiveMtDatasets\/{dataset}@ See 'parent'.
  Core.Text ->
  TranslateProjectsLocationsAdaptiveMtDatasetsAdaptiveMtFilesList
newTranslateProjectsLocationsAdaptiveMtDatasetsAdaptiveMtFilesList
  parent =
    TranslateProjectsLocationsAdaptiveMtDatasetsAdaptiveMtFilesList
      { xgafv =
          Core.Nothing,
        accessToken = Core.Nothing,
        callback = Core.Nothing,
        pageSize = Core.Nothing,
        pageToken = Core.Nothing,
        parent = parent,
        uploadType = Core.Nothing,
        uploadProtocol = Core.Nothing
      }

instance
  Core.GoogleRequest
    TranslateProjectsLocationsAdaptiveMtDatasetsAdaptiveMtFilesList
  where
  type
    Rs
      TranslateProjectsLocationsAdaptiveMtDatasetsAdaptiveMtFilesList =
      ListAdaptiveMtFilesResponse
  type
    Scopes
      TranslateProjectsLocationsAdaptiveMtDatasetsAdaptiveMtFilesList =
      '[CloudPlatform'FullControl, CloudTranslation'FullControl]
  requestClient
    TranslateProjectsLocationsAdaptiveMtDatasetsAdaptiveMtFilesList {..} =
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
                Core.Proxy
                  TranslateProjectsLocationsAdaptiveMtDatasetsAdaptiveMtFilesListResource
            )
            Core.mempty
