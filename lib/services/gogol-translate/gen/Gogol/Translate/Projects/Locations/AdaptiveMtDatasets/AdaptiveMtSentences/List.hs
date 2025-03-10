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
-- Module      : Gogol.Translate.Projects.Locations.AdaptiveMtDatasets.AdaptiveMtSentences.List
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists all AdaptiveMtSentences under a given file\/dataset.
--
-- /See:/ <https://cloud.google.com/translate/docs/quickstarts Cloud Translation API Reference> for @translate.projects.locations.adaptiveMtDatasets.adaptiveMtSentences.list@.
module Gogol.Translate.Projects.Locations.AdaptiveMtDatasets.AdaptiveMtSentences.List
  ( -- * Resource
    TranslateProjectsLocationsAdaptiveMtDatasetsAdaptiveMtSentencesListResource,

    -- ** Constructing a Request
    TranslateProjectsLocationsAdaptiveMtDatasetsAdaptiveMtSentencesList (..),
    newTranslateProjectsLocationsAdaptiveMtDatasetsAdaptiveMtSentencesList,
  )
where

import Gogol.Prelude qualified as Core
import Gogol.Translate.Types

-- | A resource alias for @translate.projects.locations.adaptiveMtDatasets.adaptiveMtSentences.list@ method which the
-- 'TranslateProjectsLocationsAdaptiveMtDatasetsAdaptiveMtSentencesList' request conforms to.
type TranslateProjectsLocationsAdaptiveMtDatasetsAdaptiveMtSentencesListResource =
  "v3"
    Core.:> Core.Capture "parent" Core.Text
    Core.:> "adaptiveMtSentences"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "pageSize" Core.Int32
    Core.:> Core.QueryParam "pageToken" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] ListAdaptiveMtSentencesResponse

-- | Lists all AdaptiveMtSentences under a given file\/dataset.
--
-- /See:/ 'newTranslateProjectsLocationsAdaptiveMtDatasetsAdaptiveMtSentencesList' smart constructor.
data TranslateProjectsLocationsAdaptiveMtDatasetsAdaptiveMtSentencesList = TranslateProjectsLocationsAdaptiveMtDatasetsAdaptiveMtSentencesList
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    pageSize :: (Core.Maybe Core.Int32),
    -- | A token identifying a page of results the server should return. Typically, this is the value of ListAdaptiveMtSentencesRequest.next/page/token returned from the previous call to @ListTranslationMemories@ method. The first page is returned if @page_token@ is empty or missing.
    pageToken :: (Core.Maybe Core.Text),
    -- | Required. The resource name of the project from which to list the Adaptive MT files. The following format lists all sentences under a file. @projects\/{project}\/locations\/{location}\/adaptiveMtDatasets\/{dataset}\/adaptiveMtFiles\/{file}@ The following format lists all sentences within a dataset. @projects\/{project}\/locations\/{location}\/adaptiveMtDatasets\/{dataset}@
    parent :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TranslateProjectsLocationsAdaptiveMtDatasetsAdaptiveMtSentencesList' with the minimum fields required to make a request.
newTranslateProjectsLocationsAdaptiveMtDatasetsAdaptiveMtSentencesList ::
  -- |  Required. The resource name of the project from which to list the Adaptive MT files. The following format lists all sentences under a file. @projects\/{project}\/locations\/{location}\/adaptiveMtDatasets\/{dataset}\/adaptiveMtFiles\/{file}@ The following format lists all sentences within a dataset. @projects\/{project}\/locations\/{location}\/adaptiveMtDatasets\/{dataset}@ See 'parent'.
  Core.Text ->
  TranslateProjectsLocationsAdaptiveMtDatasetsAdaptiveMtSentencesList
newTranslateProjectsLocationsAdaptiveMtDatasetsAdaptiveMtSentencesList
  parent =
    TranslateProjectsLocationsAdaptiveMtDatasetsAdaptiveMtSentencesList
      { xgafv =
          Core.Nothing,
        accessToken = Core.Nothing,
        callback = Core.Nothing,
        pageSize = Core.Nothing,
        pageToken = Core.Nothing,
        parent = parent,
        uploadType = Core.Nothing,
        uploadProtocol =
          Core.Nothing
      }

instance
  Core.GoogleRequest
    TranslateProjectsLocationsAdaptiveMtDatasetsAdaptiveMtSentencesList
  where
  type
    Rs
      TranslateProjectsLocationsAdaptiveMtDatasetsAdaptiveMtSentencesList =
      ListAdaptiveMtSentencesResponse
  type
    Scopes
      TranslateProjectsLocationsAdaptiveMtDatasetsAdaptiveMtSentencesList =
      '[CloudPlatform'FullControl, CloudTranslation'FullControl]
  requestClient
    TranslateProjectsLocationsAdaptiveMtDatasetsAdaptiveMtSentencesList {..} =
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
                  TranslateProjectsLocationsAdaptiveMtDatasetsAdaptiveMtSentencesListResource
            )
            Core.mempty
