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
-- Module      : Gogol.BigQuery.Routines.Get
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the specified routine resource by routine ID.
--
-- /See:/ <https://cloud.google.com/bigquery/ BigQuery API Reference> for @bigquery.routines.get@.
module Gogol.BigQuery.Routines.Get
  ( -- * Resource
    BigQueryRoutinesGetResource,

    -- ** Constructing a Request
    BigQueryRoutinesGet (..),
    newBigQueryRoutinesGet,
  )
where

import Gogol.BigQuery.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @bigquery.routines.get@ method which the
-- 'BigQueryRoutinesGet' request conforms to.
type BigQueryRoutinesGetResource =
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
    Core.:> Core.QueryParam "readMask" Core.FieldMask
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] Routine

-- | Gets the specified routine resource by routine ID.
--
-- /See:/ 'newBigQueryRoutinesGet' smart constructor.
data BigQueryRoutinesGet = BigQueryRoutinesGet
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. Dataset ID of the requested routine
    datasetId :: Core.Text,
    -- | Required. Project ID of the requested routine
    projectId :: Core.Text,
    -- | If set, only the Routine fields in the field mask are returned in the response. If unset, all Routine fields are returned.
    readMask :: (Core.Maybe Core.FieldMask),
    -- | Required. Routine ID of the requested routine
    routineId :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BigQueryRoutinesGet' with the minimum fields required to make a request.
newBigQueryRoutinesGet ::
  -- |  Required. Dataset ID of the requested routine See 'datasetId'.
  Core.Text ->
  -- |  Required. Project ID of the requested routine See 'projectId'.
  Core.Text ->
  -- |  Required. Routine ID of the requested routine See 'routineId'.
  Core.Text ->
  BigQueryRoutinesGet
newBigQueryRoutinesGet datasetId projectId routineId =
  BigQueryRoutinesGet
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      datasetId = datasetId,
      projectId = projectId,
      readMask = Core.Nothing,
      routineId = routineId,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest BigQueryRoutinesGet where
  type Rs BigQueryRoutinesGet = Routine
  type
    Scopes BigQueryRoutinesGet =
      '[ Bigquery'FullControl,
         CloudPlatform'FullControl,
         CloudPlatform'ReadOnly
       ]
  requestClient BigQueryRoutinesGet {..} =
    go
      projectId
      datasetId
      routineId
      xgafv
      accessToken
      callback
      readMask
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      bigQueryService
    where
      go =
        Core.buildClient
          (Core.Proxy :: Core.Proxy BigQueryRoutinesGetResource)
          Core.mempty
