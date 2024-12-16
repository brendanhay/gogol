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
-- Module      : Gogol.BigQuery.Datasets.Get
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the dataset specified by datasetID.
--
-- /See:/ <https://cloud.google.com/bigquery/ BigQuery API Reference> for @bigquery.datasets.get@.
module Gogol.BigQuery.Datasets.Get
    (
    -- * Resource
      BigQueryDatasetsGetResource

    -- ** Constructing a Request
    , BigQueryDatasetsGet (..)
    , newBigQueryDatasetsGet
    ) where

import qualified Gogol.Prelude as Core
import Gogol.BigQuery.Types

-- | A resource alias for @bigquery.datasets.get@ method which the
-- 'BigQueryDatasetsGet' request conforms to.
type BigQueryDatasetsGetResource =
     "bigquery" Core.:>
       "v2" Core.:>
         "projects" Core.:>
           Core.Capture "projectId" Core.Text Core.:>
             "datasets" Core.:>
               Core.Capture "datasetId" Core.Text Core.:>
                 Core.QueryParam "$.xgafv" Xgafv Core.:>
                   Core.QueryParam "accessPolicyVersion" Core.Int32
                     Core.:>
                     Core.QueryParam "access_token" Core.Text Core.:>
                       Core.QueryParam "callback" Core.Text Core.:>
                         Core.QueryParam "datasetView" DatasetsGetDatasetView
                           Core.:>
                           Core.QueryParam "uploadType" Core.Text Core.:>
                             Core.QueryParam "upload_protocol" Core.Text Core.:>
                               Core.QueryParam "alt" Core.AltJSON Core.:>
                                 Core.Get '[Core.JSON] Dataset

-- | Returns the dataset specified by datasetID.
--
-- /See:/ 'newBigQueryDatasetsGet' smart constructor.
data BigQueryDatasetsGet = BigQueryDatasetsGet
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | Optional. The version of the access policy schema to fetch. Valid values are 0, 1, and 3. Requests specifying an invalid value will be rejected. Requests for conditional access policy binding in datasets must specify version 3. Dataset with no conditional role bindings in access policy may specify any valid value or leave the field unset. This field will be mapped to [IAM Policy version] (https:\/\/cloud.google.com\/iam\/docs\/policies#versions) and will be used to fetch policy from IAM. If unset or if 0 or 1 value is used for dataset with conditional bindings, access entry with condition will have role string appended by \'withcond\' string followed by a hash value. For example : { \"access\": [ { \"role\": \"roles\/bigquery.dataViewer/with/conditionalbinding_7a34awqsda\", \"userByEmail\": \"user\@example.com\", } ] } Please refer https:\/\/cloud.google.com\/iam\/docs\/troubleshooting-withcond for more details.
    , accessPolicyVersion :: (Core.Maybe Core.Int32)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Required. Dataset ID of the requested dataset
    , datasetId :: Core.Text
      -- | Optional. Specifies the view that determines which dataset information is returned. By default, metadata and ACL information are returned.
    , datasetView :: (Core.Maybe DatasetsGetDatasetView)
      -- | Required. Project ID of the requested dataset
    , projectId :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BigQueryDatasetsGet' with the minimum fields required to make a request.
newBigQueryDatasetsGet 
    ::  Core.Text
       -- ^  Required. Dataset ID of the requested dataset See 'datasetId'.
    -> Core.Text
       -- ^  Required. Project ID of the requested dataset See 'projectId'.
    -> BigQueryDatasetsGet
newBigQueryDatasetsGet datasetId projectId =
  BigQueryDatasetsGet
    { xgafv = Core.Nothing
    , accessPolicyVersion = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , datasetId = datasetId
    , datasetView = Core.Nothing
    , projectId = projectId
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest BigQueryDatasetsGet where
        type Rs BigQueryDatasetsGet = Dataset
        type Scopes BigQueryDatasetsGet =
             '[Bigquery'FullControl, CloudPlatform'FullControl,
               CloudPlatform'ReadOnly]
        requestClient BigQueryDatasetsGet{..}
          = go projectId datasetId xgafv accessPolicyVersion
              accessToken
              callback
              datasetView
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              bigQueryService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy BigQueryDatasetsGetResource)
                      Core.mempty

