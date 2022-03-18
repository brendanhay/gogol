{-# LANGUAGE StrictData #-}
{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.BigQuery.Tables.Update
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates information in an existing table. The update method replaces the entire table resource, whereas the patch method only replaces fields that are provided in the submitted table resource.
--
-- /See:/ <https://cloud.google.com/bigquery/ BigQuery API Reference> for @bigquery.tables.update@.
module Gogol.BigQuery.Tables.Update
    (
    -- * Resource
      BigQueryTablesUpdateResource

    -- ** Constructing a Request
    , newBigQueryTablesUpdate
    , BigQueryTablesUpdate
    ) where

import qualified Gogol.Prelude as Core
import Gogol.BigQuery.Types

-- | A resource alias for @bigquery.tables.update@ method which the
-- 'BigQueryTablesUpdate' request conforms to.
type BigQueryTablesUpdateResource =
     "bigquery" Core.:>
       "v2" Core.:>
         "projects" Core.:>
           Core.Capture "projectId" Core.Text Core.:>
             "datasets" Core.:>
               Core.Capture "datasetId" Core.Text Core.:>
                 "tables" Core.:>
                   Core.Capture "tableId" Core.Text Core.:>
                     Core.QueryParam "autodetect_schema" Core.Bool Core.:>
                       Core.QueryParam "alt" Core.AltJSON Core.:>
                         Core.ReqBody '[Core.JSON] Table Core.:>
                           Core.Put '[Core.JSON] Table

-- | Updates information in an existing table. The update method replaces the entire table resource, whereas the patch method only replaces fields that are provided in the submitted table resource.
--
-- /See:/ 'newBigQueryTablesUpdate' smart constructor.
data BigQueryTablesUpdate = BigQueryTablesUpdate
    {
      -- | When true will autodetect schema, else will keep original schema
      autodetectSchema :: (Core.Maybe Core.Bool)
      -- | Dataset ID of the table to update
    , datasetId :: Core.Text
      -- | Multipart request metadata.
    , payload :: Table
      -- | Project ID of the table to update
    , projectId :: Core.Text
      -- | Table ID of the table to update
    , tableId :: Core.Text
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BigQueryTablesUpdate' with the minimum fields required to make a request.
newBigQueryTablesUpdate 
    ::  Core.Text
       -- ^  Dataset ID of the table to update See 'datasetId'.
    -> Table
       -- ^  Multipart request metadata. See 'payload'.
    -> Core.Text
       -- ^  Project ID of the table to update See 'projectId'.
    -> Core.Text
       -- ^  Table ID of the table to update See 'tableId'.
    -> BigQueryTablesUpdate
newBigQueryTablesUpdate datasetId payload projectId tableId =
  BigQueryTablesUpdate
    { autodetectSchema = Core.Nothing
    , datasetId = datasetId
    , payload = payload
    , projectId = projectId
    , tableId = tableId
    }

instance Core.GoogleRequest BigQueryTablesUpdate
         where
        type Rs BigQueryTablesUpdate = Table
        type Scopes BigQueryTablesUpdate =
             '["https://www.googleapis.com/auth/bigquery",
               "https://www.googleapis.com/auth/cloud-platform"]
        requestClient BigQueryTablesUpdate{..}
          = go projectId datasetId tableId autodetectSchema
              (Core.Just Core.AltJSON)
              payload
              bigQueryService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy BigQueryTablesUpdateResource)
                      Core.mempty

