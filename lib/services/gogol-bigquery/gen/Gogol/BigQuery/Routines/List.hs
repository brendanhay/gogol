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
-- Module      : Gogol.BigQuery.Routines.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists all routines in the specified dataset. Requires the READER dataset role.
--
-- /See:/ <https://cloud.google.com/bigquery/ BigQuery API Reference> for @bigquery.routines.list@.
module Gogol.BigQuery.Routines.List
    (
    -- * Resource
      BigQueryRoutinesListResource

    -- ** Constructing a Request
    , BigQueryRoutinesList (..)
    , newBigQueryRoutinesList
    ) where

import qualified Gogol.Prelude as Core
import Gogol.BigQuery.Types

-- | A resource alias for @bigquery.routines.list@ method which the
-- 'BigQueryRoutinesList' request conforms to.
type BigQueryRoutinesListResource =
     "bigquery" Core.:>
       "v2" Core.:>
         "projects" Core.:>
           Core.Capture "projectId" Core.Text Core.:>
             "datasets" Core.:>
               Core.Capture "datasetId" Core.Text Core.:>
                 "routines" Core.:>
                   Core.QueryParam "$.xgafv" Xgafv Core.:>
                     Core.QueryParam "access_token" Core.Text Core.:>
                       Core.QueryParam "callback" Core.Text Core.:>
                         Core.QueryParam "filter" Core.Text Core.:>
                           Core.QueryParam "maxResults" Core.Word32 Core.:>
                             Core.QueryParam "pageToken" Core.Text Core.:>
                               Core.QueryParam "readMask" Core.FieldMask Core.:>
                                 Core.QueryParam "uploadType" Core.Text Core.:>
                                   Core.QueryParam "upload_protocol" Core.Text
                                     Core.:>
                                     Core.QueryParam "alt" Core.AltJSON Core.:>
                                       Core.Get '[Core.JSON]
                                         ListRoutinesResponse

-- | Lists all routines in the specified dataset. Requires the READER dataset role.
--
-- /See:/ 'newBigQueryRoutinesList' smart constructor.
data BigQueryRoutinesList = BigQueryRoutinesList
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Required. Dataset ID of the routines to list
    , datasetId :: Core.Text
      -- | If set, then only the Routines matching this filter are returned. The supported format is @routineType:{RoutineType}@, where @{RoutineType}@ is a RoutineType enum. For example: @routineType:SCALAR_FUNCTION@.
    , filter :: (Core.Maybe Core.Text)
      -- | The maximum number of results to return in a single response page. Leverage the page tokens to iterate through the entire collection.
    , maxResults :: (Core.Maybe Core.Word32)
      -- | Page token, returned by a previous call, to request the next page of results
    , pageToken :: (Core.Maybe Core.Text)
      -- | Required. Project ID of the routines to list
    , projectId :: Core.Text
      -- | If set, then only the Routine fields in the field mask, as well as project/id, dataset/id and routine/id, are returned in the response. If unset, then the following Routine fields are returned: etag, project/id, dataset/id, routine/id, routine/type, creation/time, last/modified/time, and language.
    , readMask :: (Core.Maybe Core.FieldMask)
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BigQueryRoutinesList' with the minimum fields required to make a request.
newBigQueryRoutinesList 
    ::  Core.Text
       -- ^  Required. Dataset ID of the routines to list See 'datasetId'.
    -> Core.Text
       -- ^  Required. Project ID of the routines to list See 'projectId'.
    -> BigQueryRoutinesList
newBigQueryRoutinesList datasetId projectId =
  BigQueryRoutinesList
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , datasetId = datasetId
    , filter = Core.Nothing
    , maxResults = Core.Nothing
    , pageToken = Core.Nothing
    , projectId = projectId
    , readMask = Core.Nothing
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest BigQueryRoutinesList
         where
        type Rs BigQueryRoutinesList = ListRoutinesResponse
        type Scopes BigQueryRoutinesList =
             '[Bigquery'FullControl, CloudPlatform'FullControl,
               CloudPlatform'ReadOnly]
        requestClient BigQueryRoutinesList{..}
          = go projectId datasetId xgafv accessToken callback
              filter
              maxResults
              pageToken
              readMask
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              bigQueryService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy BigQueryRoutinesListResource)
                      Core.mempty

