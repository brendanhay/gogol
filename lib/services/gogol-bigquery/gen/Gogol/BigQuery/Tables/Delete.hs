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
-- Module      : Gogol.BigQuery.Tables.Delete
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes the table specified by tableId from the dataset. If the table contains data, all the data will be deleted.
--
-- /See:/ <https://cloud.google.com/bigquery/ BigQuery API Reference> for @bigquery.tables.delete@.
module Gogol.BigQuery.Tables.Delete
    (
    -- * Resource
      BigQueryTablesDeleteResource

    -- ** Constructing a Request
    , newBigQueryTablesDelete
    , BigQueryTablesDelete
    ) where

import qualified Gogol.Prelude as Core
import Gogol.BigQuery.Types

-- | A resource alias for @bigquery.tables.delete@ method which the
-- 'BigQueryTablesDelete' request conforms to.
type BigQueryTablesDeleteResource =
     "bigquery" Core.:>
       "v2" Core.:>
         "projects" Core.:>
           Core.Capture "projectId" Core.Text Core.:>
             "datasets" Core.:>
               Core.Capture "datasetId" Core.Text Core.:>
                 "tables" Core.:>
                   Core.Capture "tableId" Core.Text Core.:>
                     Core.QueryParam "alt" Core.AltJSON Core.:>
                       Core.Delete '[Core.JSON] ()

-- | Deletes the table specified by tableId from the dataset. If the table contains data, all the data will be deleted.
--
-- /See:/ 'newBigQueryTablesDelete' smart constructor.
data BigQueryTablesDelete = BigQueryTablesDelete
    {
      -- | Dataset ID of the table to delete
      datasetId :: Core.Text
      -- | Project ID of the table to delete
    , projectId :: Core.Text
      -- | Table ID of the table to delete
    , tableId :: Core.Text
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BigQueryTablesDelete' with the minimum fields required to make a request.
newBigQueryTablesDelete 
    ::  Core.Text
       -- ^  Dataset ID of the table to delete See 'datasetId'.
    -> Core.Text
       -- ^  Project ID of the table to delete See 'projectId'.
    -> Core.Text
       -- ^  Table ID of the table to delete See 'tableId'.
    -> BigQueryTablesDelete
newBigQueryTablesDelete datasetId projectId tableId =
  BigQueryTablesDelete
    {datasetId = datasetId, projectId = projectId, tableId = tableId}

instance Core.GoogleRequest BigQueryTablesDelete
         where
        type Rs BigQueryTablesDelete = ()
        type Scopes BigQueryTablesDelete =
             '["https://www.googleapis.com/auth/bigquery",
               "https://www.googleapis.com/auth/cloud-platform"]
        requestClient BigQueryTablesDelete{..}
          = go projectId datasetId tableId
              (Core.Just Core.AltJSON)
              bigQueryService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy BigQueryTablesDeleteResource)
                      Core.mempty

