{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.BigQuery.Tabledata.InsertAll
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Streams data into BigQuery one record at a time without needing to run a load job.
--
-- /See:/ <https://cloud.google.com/bigquery/ BigQuery API Reference> for @bigquery.tabledata.insertAll@.
module Gogol.BigQuery.Tabledata.InsertAll
    (
    -- * Resource
      BigQueryTabledataInsertAllResource

    -- ** Constructing a Request
    , BigQueryTabledataInsertAll (..)
    , newBigQueryTabledataInsertAll
    ) where

import qualified Gogol.Prelude as Core
import Gogol.BigQuery.Types

-- | A resource alias for @bigquery.tabledata.insertAll@ method which the
-- 'BigQueryTabledataInsertAll' request conforms to.
type BigQueryTabledataInsertAllResource =
     "bigquery" Core.:>
       "v2" Core.:>
         "projects" Core.:>
           Core.Capture "projectId" Core.Text Core.:>
             "datasets" Core.:>
               Core.Capture "datasetId" Core.Text Core.:>
                 "tables" Core.:>
                   Core.Capture "tableId" Core.Text Core.:>
                     "insertAll" Core.:>
                       Core.QueryParam "$.xgafv" Xgafv Core.:>
                         Core.QueryParam "access_token" Core.Text Core.:>
                           Core.QueryParam "callback" Core.Text Core.:>
                             Core.QueryParam "uploadType" Core.Text Core.:>
                               Core.QueryParam "upload_protocol" Core.Text
                                 Core.:>
                                 Core.QueryParam "alt" Core.AltJSON Core.:>
                                   Core.ReqBody '[Core.JSON]
                                     TableDataInsertAllRequest
                                     Core.:>
                                     Core.Post '[Core.JSON]
                                       TableDataInsertAllResponse

-- | Streams data into BigQuery one record at a time without needing to run a load job.
--
-- /See:/ 'newBigQueryTabledataInsertAll' smart constructor.
data BigQueryTabledataInsertAll = BigQueryTabledataInsertAll
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Required. Dataset ID of the destination.
    , datasetId :: Core.Text
      -- | Multipart request metadata.
    , payload :: TableDataInsertAllRequest
      -- | Required. Project ID of the destination.
    , projectId :: Core.Text
      -- | Required. Table ID of the destination.
    , tableId :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BigQueryTabledataInsertAll' with the minimum fields required to make a request.
newBigQueryTabledataInsertAll 
    ::  Core.Text
       -- ^  Required. Dataset ID of the destination. See 'datasetId'.
    -> TableDataInsertAllRequest
       -- ^  Multipart request metadata. See 'payload'.
    -> Core.Text
       -- ^  Required. Project ID of the destination. See 'projectId'.
    -> Core.Text
       -- ^  Required. Table ID of the destination. See 'tableId'.
    -> BigQueryTabledataInsertAll
newBigQueryTabledataInsertAll datasetId payload projectId tableId =
  BigQueryTabledataInsertAll
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , datasetId = datasetId
    , payload = payload
    , projectId = projectId
    , tableId = tableId
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           BigQueryTabledataInsertAll
         where
        type Rs BigQueryTabledataInsertAll =
             TableDataInsertAllResponse
        type Scopes BigQueryTabledataInsertAll =
             '[Bigquery'FullControl, Bigquery'Insertdata,
               CloudPlatform'FullControl]
        requestClient BigQueryTabledataInsertAll{..}
          = go projectId datasetId tableId xgafv accessToken
              callback
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              payload
              bigQueryService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy BigQueryTabledataInsertAllResource)
                      Core.mempty

