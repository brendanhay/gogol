{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.BigQuery.Routines.Delete
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes the routine specified by routineId from the dataset.
--
-- /See:/ <https://cloud.google.com/bigquery/ BigQuery API Reference> for @bigquery.routines.delete@.
module Gogol.BigQuery.Routines.Delete
  ( -- * Resource
    BigQueryRoutinesDeleteResource,

    -- ** Constructing a Request
    BigQueryRoutinesDelete (..),
    newBigQueryRoutinesDelete,
  )
where

import Gogol.BigQuery.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @bigquery.routines.delete@ method which the
-- 'BigQueryRoutinesDelete' request conforms to.
type BigQueryRoutinesDeleteResource =
  "bigquery"
    Core.:> "v2"
    Core.:> "projects"
    Core.:> Core.Capture "projectId" Core.Text
    Core.:> "datasets"
    Core.:> Core.Capture "datasetId" Core.Text
    Core.:> "routines"
    Core.:> Core.Capture "routineId" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Delete '[Core.JSON] ()

-- | Deletes the routine specified by routineId from the dataset.
--
-- /See:/ 'newBigQueryRoutinesDelete' smart constructor.
data BigQueryRoutinesDelete = BigQueryRoutinesDelete
  { -- | Required. Dataset ID of the routine to delete
    datasetId :: Core.Text,
    -- | Required. Project ID of the routine to delete
    projectId :: Core.Text,
    -- | Required. Routine ID of the routine to delete
    routineId :: Core.Text
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BigQueryRoutinesDelete' with the minimum fields required to make a request.
newBigQueryRoutinesDelete ::
  -- |  Required. Dataset ID of the routine to delete See 'datasetId'.
  Core.Text ->
  -- |  Required. Project ID of the routine to delete See 'projectId'.
  Core.Text ->
  -- |  Required. Routine ID of the routine to delete See 'routineId'.
  Core.Text ->
  BigQueryRoutinesDelete
newBigQueryRoutinesDelete datasetId projectId routineId =
  BigQueryRoutinesDelete
    { datasetId = datasetId,
      projectId = projectId,
      routineId = routineId
    }

instance Core.GoogleRequest BigQueryRoutinesDelete where
  type Rs BigQueryRoutinesDelete = ()
  type
    Scopes BigQueryRoutinesDelete =
      '[Bigquery'FullControl, CloudPlatform'FullControl]
  requestClient BigQueryRoutinesDelete {..} =
    go
      projectId
      datasetId
      routineId
      (Core.Just Core.AltJSON)
      bigQueryService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy BigQueryRoutinesDeleteResource
          )
          Core.mempty
