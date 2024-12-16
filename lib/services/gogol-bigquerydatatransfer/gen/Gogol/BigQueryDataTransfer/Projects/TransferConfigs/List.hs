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
-- Module      : Gogol.BigQueryDataTransfer.Projects.TransferConfigs.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns information about all transfer configs owned by a project in the specified location.
--
-- /See:/ <https://cloud.google.com/bigquery-transfer/ BigQuery Data Transfer API Reference> for @bigquerydatatransfer.projects.transferConfigs.list@.
module Gogol.BigQueryDataTransfer.Projects.TransferConfigs.List
    (
    -- * Resource
      BigQueryDataTransferProjectsTransferConfigsListResource

    -- ** Constructing a Request
    , BigQueryDataTransferProjectsTransferConfigsList (..)
    , newBigQueryDataTransferProjectsTransferConfigsList
    ) where

import qualified Gogol.Prelude as Core
import Gogol.BigQueryDataTransfer.Types

-- | A resource alias for @bigquerydatatransfer.projects.transferConfigs.list@ method which the
-- 'BigQueryDataTransferProjectsTransferConfigsList' request conforms to.
type BigQueryDataTransferProjectsTransferConfigsListResource
     =
     "v1" Core.:>
       Core.Capture "parent" Core.Text Core.:>
         "transferConfigs" Core.:>
           Core.QueryParam "$.xgafv" Xgafv Core.:>
             Core.QueryParam "access_token" Core.Text Core.:>
               Core.QueryParam "callback" Core.Text Core.:>
                 Core.QueryParams "dataSourceIds" Core.Text Core.:>
                   Core.QueryParam "pageSize" Core.Int32 Core.:>
                     Core.QueryParam "pageToken" Core.Text Core.:>
                       Core.QueryParam "uploadType" Core.Text Core.:>
                         Core.QueryParam "upload_protocol" Core.Text Core.:>
                           Core.QueryParam "alt" Core.AltJSON Core.:>
                             Core.Get '[Core.JSON] ListTransferConfigsResponse

-- | Returns information about all transfer configs owned by a project in the specified location.
--
-- /See:/ 'newBigQueryDataTransferProjectsTransferConfigsList' smart constructor.
data BigQueryDataTransferProjectsTransferConfigsList = BigQueryDataTransferProjectsTransferConfigsList
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | When specified, only configurations of requested data sources are returned.
    , dataSourceIds :: (Core.Maybe [Core.Text])
      -- | Page size. The default page size is the maximum value of 1000 results.
    , pageSize :: (Core.Maybe Core.Int32)
      -- | Pagination token, which can be used to request a specific page of @ListTransfersRequest@ list results. For multiple-page results, @ListTransfersResponse@ outputs a @next_page@ token, which can be used as the @page_token@ value to request the next page of list results.
    , pageToken :: (Core.Maybe Core.Text)
      -- | Required. The BigQuery project id for which transfer configs should be returned: @projects\/{project_id}@ or @projects\/{project_id}\/locations\/{location_id}@
    , parent :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BigQueryDataTransferProjectsTransferConfigsList' with the minimum fields required to make a request.
newBigQueryDataTransferProjectsTransferConfigsList 
    ::  Core.Text
       -- ^  Required. The BigQuery project id for which transfer configs should be returned: @projects\/{project_id}@ or @projects\/{project_id}\/locations\/{location_id}@ See 'parent'.
    -> BigQueryDataTransferProjectsTransferConfigsList
newBigQueryDataTransferProjectsTransferConfigsList parent =
  BigQueryDataTransferProjectsTransferConfigsList
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , dataSourceIds = Core.Nothing
    , pageSize = Core.Nothing
    , pageToken = Core.Nothing
    , parent = parent
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           BigQueryDataTransferProjectsTransferConfigsList
         where
        type Rs
               BigQueryDataTransferProjectsTransferConfigsList
             = ListTransferConfigsResponse
        type Scopes
               BigQueryDataTransferProjectsTransferConfigsList
             =
             '[Bigquery'FullControl, CloudPlatform'FullControl,
               CloudPlatform'ReadOnly]
        requestClient
          BigQueryDataTransferProjectsTransferConfigsList{..}
          = go parent xgafv accessToken callback
              (dataSourceIds Core.^. Core._Default)
              pageSize
              pageToken
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              bigQueryDataTransferService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           BigQueryDataTransferProjectsTransferConfigsListResource)
                      Core.mempty

