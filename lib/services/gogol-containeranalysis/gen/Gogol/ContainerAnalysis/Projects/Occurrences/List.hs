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
-- Module      : Gogol.ContainerAnalysis.Projects.Occurrences.List
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists occurrences for the specified project.
--
-- /See:/ <https://cloud.google.com/container-analysis/api/reference/rest/ Container Analysis API Reference> for @containeranalysis.projects.occurrences.list@.
module Gogol.ContainerAnalysis.Projects.Occurrences.List
  ( -- * Resource
    ContainerAnalysisProjectsOccurrencesListResource,

    -- ** Constructing a Request
    ContainerAnalysisProjectsOccurrencesList (..),
    newContainerAnalysisProjectsOccurrencesList,
  )
where

import Gogol.ContainerAnalysis.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @containeranalysis.projects.occurrences.list@ method which the
-- 'ContainerAnalysisProjectsOccurrencesList' request conforms to.
type ContainerAnalysisProjectsOccurrencesListResource =
  "v1"
    Core.:> Core.Capture "parent" Core.Text
    Core.:> "occurrences"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "filter" Core.Text
    Core.:> Core.QueryParam "pageSize" Core.Int32
    Core.:> Core.QueryParam "pageToken" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] ListOccurrencesResponse

-- | Lists occurrences for the specified project.
--
-- /See:/ 'newContainerAnalysisProjectsOccurrencesList' smart constructor.
data ContainerAnalysisProjectsOccurrencesList = ContainerAnalysisProjectsOccurrencesList
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The filter expression.
    filter :: (Core.Maybe Core.Text),
    -- | Number of occurrences to return in the list. Must be positive. Max allowed page size is 1000. If not specified, page size defaults to 20.
    pageSize :: (Core.Maybe Core.Int32),
    -- | Token to provide to skip to a particular spot in the list.
    pageToken :: (Core.Maybe Core.Text),
    -- | Required. The name of the project to list occurrences for in the form of @projects\/[PROJECT_ID]@.
    parent :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ContainerAnalysisProjectsOccurrencesList' with the minimum fields required to make a request.
newContainerAnalysisProjectsOccurrencesList ::
  -- |  Required. The name of the project to list occurrences for in the form of @projects\/[PROJECT_ID]@. See 'parent'.
  Core.Text ->
  ContainerAnalysisProjectsOccurrencesList
newContainerAnalysisProjectsOccurrencesList parent =
  ContainerAnalysisProjectsOccurrencesList
    { xgafv = Core.Nothing,
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
    ContainerAnalysisProjectsOccurrencesList
  where
  type
    Rs ContainerAnalysisProjectsOccurrencesList =
      ListOccurrencesResponse
  type
    Scopes ContainerAnalysisProjectsOccurrencesList =
      '[CloudPlatform'FullControl]
  requestClient ContainerAnalysisProjectsOccurrencesList {..} =
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
      containerAnalysisService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy ContainerAnalysisProjectsOccurrencesListResource
          )
          Core.mempty
