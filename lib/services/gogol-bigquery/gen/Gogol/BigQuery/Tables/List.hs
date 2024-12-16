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
-- Module      : Gogol.BigQuery.Tables.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists all tables in the specified dataset. Requires the READER dataset role.
--
-- /See:/ <https://cloud.google.com/bigquery/ BigQuery API Reference> for @bigquery.tables.list@.
module Gogol.BigQuery.Tables.List
    (
    -- * Resource
      BigQueryTablesListResource

    -- ** Constructing a Request
    , BigQueryTablesList (..)
    , newBigQueryTablesList
    ) where

import qualified Gogol.Prelude as Core
import Gogol.BigQuery.Types

-- | A resource alias for @bigquery.tables.list@ method which the
-- 'BigQueryTablesList' request conforms to.
type BigQueryTablesListResource =
     "bigquery" Core.:>
       "v2" Core.:>
         "projects" Core.:>
           Core.Capture "projectId" Core.Text Core.:>
             "datasets" Core.:>
               Core.Capture "datasetId" Core.Text Core.:>
                 "tables" Core.:>
                   Core.QueryParam "$.xgafv" Xgafv Core.:>
                     Core.QueryParam "access_token" Core.Text Core.:>
                       Core.QueryParam "callback" Core.Text Core.:>
                         Core.QueryParam "maxResults" Core.Word32 Core.:>
                           Core.QueryParam "pageToken" Core.Text Core.:>
                             Core.QueryParam "uploadType" Core.Text Core.:>
                               Core.QueryParam "upload_protocol" Core.Text
                                 Core.:>
                                 Core.QueryParam "alt" Core.AltJSON Core.:>
                                   Core.Get '[Core.JSON] TableList

-- | Lists all tables in the specified dataset. Requires the READER dataset role.
--
-- /See:/ 'newBigQueryTablesList' smart constructor.
data BigQueryTablesList = BigQueryTablesList
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Required. Dataset ID of the tables to list
    , datasetId :: Core.Text
      -- | The maximum number of results to return in a single response page. Leverage the page tokens to iterate through the entire collection.
    , maxResults :: (Core.Maybe Core.Word32)
      -- | Page token, returned by a previous call, to request the next page of results
    , pageToken :: (Core.Maybe Core.Text)
      -- | Required. Project ID of the tables to list
    , projectId :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BigQueryTablesList' with the minimum fields required to make a request.
newBigQueryTablesList 
    ::  Core.Text
       -- ^  Required. Dataset ID of the tables to list See 'datasetId'.
    -> Core.Text
       -- ^  Required. Project ID of the tables to list See 'projectId'.
    -> BigQueryTablesList
newBigQueryTablesList datasetId projectId =
  BigQueryTablesList
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , datasetId = datasetId
    , maxResults = Core.Nothing
    , pageToken = Core.Nothing
    , projectId = projectId
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest BigQueryTablesList where
        type Rs BigQueryTablesList = TableList
        type Scopes BigQueryTablesList =
             '[Bigquery'FullControl, CloudPlatform'FullControl,
               CloudPlatform'ReadOnly]
        requestClient BigQueryTablesList{..}
          = go projectId datasetId xgafv accessToken callback
              maxResults
              pageToken
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              bigQueryService
          where go
                  = Core.buildClient
                      (Core.Proxy :: Core.Proxy BigQueryTablesListResource)
                      Core.mempty

