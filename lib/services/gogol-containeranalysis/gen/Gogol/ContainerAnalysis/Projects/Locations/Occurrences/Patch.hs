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
-- Module      : Gogol.ContainerAnalysis.Projects.Locations.Occurrences.Patch
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates the specified occurrence.
--
-- /See:/ <https://cloud.google.com/container-analysis/api/reference/rest/ Container Analysis API Reference> for @containeranalysis.projects.locations.occurrences.patch@.
module Gogol.ContainerAnalysis.Projects.Locations.Occurrences.Patch
  ( -- * Resource
    ContainerAnalysisProjectsLocationsOccurrencesPatchResource,

    -- ** Constructing a Request
    ContainerAnalysisProjectsLocationsOccurrencesPatch (..),
    newContainerAnalysisProjectsLocationsOccurrencesPatch,
  )
where

import Gogol.ContainerAnalysis.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @containeranalysis.projects.locations.occurrences.patch@ method which the
-- 'ContainerAnalysisProjectsLocationsOccurrencesPatch' request conforms to.
type ContainerAnalysisProjectsLocationsOccurrencesPatchResource =
  "v1"
    Core.:> Core.Capture "name" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "updateMask" Core.FieldMask
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] Occurrence
    Core.:> Core.Patch '[Core.JSON] Occurrence

-- | Updates the specified occurrence.
--
-- /See:/ 'newContainerAnalysisProjectsLocationsOccurrencesPatch' smart constructor.
data ContainerAnalysisProjectsLocationsOccurrencesPatch = ContainerAnalysisProjectsLocationsOccurrencesPatch
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The name of the occurrence in the form of @projects\/[PROJECT_ID]\/occurrences\/[OCCURRENCE_ID]@.
    name :: Core.Text,
    -- | Multipart request metadata.
    payload :: Occurrence,
    -- | The fields to update.
    updateMask :: (Core.Maybe Core.FieldMask),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ContainerAnalysisProjectsLocationsOccurrencesPatch' with the minimum fields required to make a request.
newContainerAnalysisProjectsLocationsOccurrencesPatch ::
  -- |  Required. The name of the occurrence in the form of @projects\/[PROJECT_ID]\/occurrences\/[OCCURRENCE_ID]@. See 'name'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  Occurrence ->
  ContainerAnalysisProjectsLocationsOccurrencesPatch
newContainerAnalysisProjectsLocationsOccurrencesPatch name payload =
  ContainerAnalysisProjectsLocationsOccurrencesPatch
    { xgafv =
        Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      name = name,
      payload = payload,
      updateMask = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    ContainerAnalysisProjectsLocationsOccurrencesPatch
  where
  type
    Rs ContainerAnalysisProjectsLocationsOccurrencesPatch =
      Occurrence
  type
    Scopes ContainerAnalysisProjectsLocationsOccurrencesPatch =
      '[CloudPlatform'FullControl]
  requestClient
    ContainerAnalysisProjectsLocationsOccurrencesPatch {..} =
      go
        name
        xgafv
        accessToken
        callback
        updateMask
        uploadType
        uploadProtocol
        (Core.Just Core.AltJSON)
        payload
        containerAnalysisService
      where
        go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy
                  ContainerAnalysisProjectsLocationsOccurrencesPatchResource
            )
            Core.mempty
