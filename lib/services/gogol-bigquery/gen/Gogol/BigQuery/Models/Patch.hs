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
-- Module      : Gogol.BigQuery.Models.Patch
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Patch specific fields in the specified model.
--
-- /See:/ <https://cloud.google.com/bigquery/ BigQuery API Reference> for @bigquery.models.patch@.
module Gogol.BigQuery.Models.Patch
    (
    -- * Resource
      BigQueryModelsPatchResource

    -- ** Constructing a Request
    , newBigQueryModelsPatch
    , BigQueryModelsPatch
    ) where

import qualified Gogol.Prelude as Core
import Gogol.BigQuery.Types

-- | A resource alias for @bigquery.models.patch@ method which the
-- 'BigQueryModelsPatch' request conforms to.
type BigQueryModelsPatchResource =
     "bigquery" Core.:>
       "v2" Core.:>
         "projects" Core.:>
           Core.Capture "projectId" Core.Text Core.:>
             "datasets" Core.:>
               Core.Capture "datasetId" Core.Text Core.:>
                 "models" Core.:>
                   Core.Capture "modelId" Core.Text Core.:>
                     Core.QueryParam "alt" Core.AltJSON Core.:>
                       Core.ReqBody '[Core.JSON] Model Core.:>
                         Core.Patch '[Core.JSON] Model

-- | Patch specific fields in the specified model.
--
-- /See:/ 'newBigQueryModelsPatch' smart constructor.
data BigQueryModelsPatch = BigQueryModelsPatch
    {
      -- | Required. Dataset ID of the model to patch.
      datasetId :: Core.Text
      -- | Required. Model ID of the model to patch.
    , modelId :: Core.Text
      -- | Multipart request metadata.
    , payload :: Model
      -- | Required. Project ID of the model to patch.
    , projectId :: Core.Text
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BigQueryModelsPatch' with the minimum fields required to make a request.
newBigQueryModelsPatch 
    ::  Core.Text
       -- ^  Required. Dataset ID of the model to patch. See 'datasetId'.
    -> Core.Text
       -- ^  Required. Model ID of the model to patch. See 'modelId'.
    -> Model
       -- ^  Multipart request metadata. See 'payload'.
    -> Core.Text
       -- ^  Required. Project ID of the model to patch. See 'projectId'.
    -> BigQueryModelsPatch
newBigQueryModelsPatch datasetId modelId payload projectId =
  BigQueryModelsPatch
    { datasetId = datasetId
    , modelId = modelId
    , payload = payload
    , projectId = projectId
    }

instance Core.GoogleRequest BigQueryModelsPatch where
        type Rs BigQueryModelsPatch = Model
        type Scopes BigQueryModelsPatch =
             '["https://www.googleapis.com/auth/bigquery",
               "https://www.googleapis.com/auth/cloud-platform"]
        requestClient BigQueryModelsPatch{..}
          = go projectId datasetId modelId
              (Core.Just Core.AltJSON)
              payload
              bigQueryService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy BigQueryModelsPatchResource)
                      Core.mempty

