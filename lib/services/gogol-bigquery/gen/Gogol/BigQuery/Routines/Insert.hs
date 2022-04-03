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
-- Module      : Gogol.BigQuery.Routines.Insert
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a new routine in the dataset.
--
-- /See:/ <https://cloud.google.com/bigquery/ BigQuery API Reference> for @bigquery.routines.insert@.
module Gogol.BigQuery.Routines.Insert
  ( -- * Resource
    BigQueryRoutinesInsertResource,

    -- ** Constructing a Request
    BigQueryRoutinesInsert (..),
    newBigQueryRoutinesInsert,
  )
where

import Gogol.BigQuery.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @bigquery.routines.insert@ method which the
-- 'BigQueryRoutinesInsert' request conforms to.
type BigQueryRoutinesInsertResource =
  "bigquery"
    Core.:> "v2"
    Core.:> "projects"
    Core.:> Core.Capture "projectId" Core.Text
    Core.:> "datasets"
    Core.:> Core.Capture "datasetId" Core.Text
    Core.:> "routines"
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] Routine
    Core.:> Core.Post '[Core.JSON] Routine

-- | Creates a new routine in the dataset.
--
-- /See:/ 'newBigQueryRoutinesInsert' smart constructor.
data BigQueryRoutinesInsert = BigQueryRoutinesInsert
  { -- | Required. Dataset ID of the new routine
    datasetId :: Core.Text,
    -- | Multipart request metadata.
    payload :: Routine,
    -- | Required. Project ID of the new routine
    projectId :: Core.Text
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BigQueryRoutinesInsert' with the minimum fields required to make a request.
newBigQueryRoutinesInsert ::
  -- |  Required. Dataset ID of the new routine See 'datasetId'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  Routine ->
  -- |  Required. Project ID of the new routine See 'projectId'.
  Core.Text ->
  BigQueryRoutinesInsert
newBigQueryRoutinesInsert datasetId payload projectId =
  BigQueryRoutinesInsert
    { datasetId = datasetId,
      payload = payload,
      projectId = projectId
    }

instance Core.GoogleRequest BigQueryRoutinesInsert where
  type Rs BigQueryRoutinesInsert = Routine
  type
    Scopes BigQueryRoutinesInsert =
      '[Bigquery'FullControl, CloudPlatform'FullControl]
  requestClient BigQueryRoutinesInsert {..} =
    go
      projectId
      datasetId
      (Core.Just Core.AltJSON)
      payload
      bigQueryService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy BigQueryRoutinesInsertResource
          )
          Core.mempty
