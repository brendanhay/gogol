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
-- Module      : Gogol.BigQuery.Routines.Update
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates information in an existing routine. The update method replaces the entire Routine resource.
--
-- /See:/ <https://cloud.google.com/bigquery/ BigQuery API Reference> for @bigquery.routines.update@.
module Gogol.BigQuery.Routines.Update
  ( -- * Resource
    BigQueryRoutinesUpdateResource,

    -- ** Constructing a Request
    BigQueryRoutinesUpdate (..),
    newBigQueryRoutinesUpdate,
  )
where

import Gogol.BigQuery.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @bigquery.routines.update@ method which the
-- 'BigQueryRoutinesUpdate' request conforms to.
type BigQueryRoutinesUpdateResource =
  "bigquery"
    Core.:> "v2"
    Core.:> "projects"
    Core.:> Core.Capture "projectId" Core.Text
    Core.:> "datasets"
    Core.:> Core.Capture "datasetId" Core.Text
    Core.:> "routines"
    Core.:> Core.Capture "routineId" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] Routine
    Core.:> Core.Put '[Core.JSON] Routine

-- | Updates information in an existing routine. The update method replaces the entire Routine resource.
--
-- /See:/ 'newBigQueryRoutinesUpdate' smart constructor.
data BigQueryRoutinesUpdate = BigQueryRoutinesUpdate
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. Dataset ID of the routine to update
    datasetId :: Core.Text,
    -- | Multipart request metadata.
    payload :: Routine,
    -- | Required. Project ID of the routine to update
    projectId :: Core.Text,
    -- | Required. Routine ID of the routine to update
    routineId :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BigQueryRoutinesUpdate' with the minimum fields required to make a request.
newBigQueryRoutinesUpdate ::
  -- |  Required. Dataset ID of the routine to update See 'datasetId'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  Routine ->
  -- |  Required. Project ID of the routine to update See 'projectId'.
  Core.Text ->
  -- |  Required. Routine ID of the routine to update See 'routineId'.
  Core.Text ->
  BigQueryRoutinesUpdate
newBigQueryRoutinesUpdate datasetId payload projectId routineId =
  BigQueryRoutinesUpdate
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      datasetId = datasetId,
      payload = payload,
      projectId = projectId,
      routineId = routineId,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest BigQueryRoutinesUpdate where
  type Rs BigQueryRoutinesUpdate = Routine
  type
    Scopes BigQueryRoutinesUpdate =
      '[Bigquery'FullControl, CloudPlatform'FullControl]
  requestClient BigQueryRoutinesUpdate {..} =
    go
      projectId
      datasetId
      routineId
      xgafv
      accessToken
      callback
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      payload
      bigQueryService
    where
      go =
        Core.buildClient
          (Core.Proxy :: Core.Proxy BigQueryRoutinesUpdateResource)
          Core.mempty
