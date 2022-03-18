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
-- Module      : Gogol.BigQuery.Routines.Get
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the specified routine resource by routine ID.
--
-- /See:/ <https://cloud.google.com/bigquery/ BigQuery API Reference> for @bigquery.routines.get@.
module Gogol.BigQuery.Routines.Get
    (
    -- * Resource
      BigQueryRoutinesGetResource

    -- ** Constructing a Request
    , newBigQueryRoutinesGet
    , BigQueryRoutinesGet
    ) where

import qualified Gogol.Prelude as Core
import Gogol.BigQuery.Types

-- | A resource alias for @bigquery.routines.get@ method which the
-- 'BigQueryRoutinesGet' request conforms to.
type BigQueryRoutinesGetResource =
     "bigquery" Core.:>
       "v2" Core.:>
         "projects" Core.:>
           Core.Capture "projectId" Core.Text Core.:>
             "datasets" Core.:>
               Core.Capture "datasetId" Core.Text Core.:>
                 "routines" Core.:>
                   Core.Capture "routineId" Core.Text Core.:>
                     Core.QueryParam "readMask" Core.GFieldMask Core.:>
                       Core.QueryParam "alt" Core.AltJSON Core.:>
                         Core.Get '[Core.JSON] Routine

-- | Gets the specified routine resource by routine ID.
--
-- /See:/ 'newBigQueryRoutinesGet' smart constructor.
data BigQueryRoutinesGet = BigQueryRoutinesGet
    {
      -- | Required. Dataset ID of the requested routine
      datasetId :: Core.Text
      -- | Required. Project ID of the requested routine
    , projectId :: Core.Text
      -- | If set, only the Routine fields in the field mask are returned in the response. If unset, all Routine fields are returned.
    , readMask :: (Core.Maybe Core.GFieldMask)
      -- | Required. Routine ID of the requested routine
    , routineId :: Core.Text
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BigQueryRoutinesGet' with the minimum fields required to make a request.
newBigQueryRoutinesGet 
    ::  Core.Text
       -- ^  Required. Dataset ID of the requested routine See 'datasetId'.
    -> Core.Text
       -- ^  Required. Project ID of the requested routine See 'projectId'.
    -> Core.Text
       -- ^  Required. Routine ID of the requested routine See 'routineId'.
    -> BigQueryRoutinesGet
newBigQueryRoutinesGet datasetId projectId routineId =
  BigQueryRoutinesGet
    { datasetId = datasetId
    , projectId = projectId
    , readMask = Core.Nothing
    , routineId = routineId
    }

instance Core.GoogleRequest BigQueryRoutinesGet where
        type Rs BigQueryRoutinesGet = Routine
        type Scopes BigQueryRoutinesGet =
             '["https://www.googleapis.com/auth/bigquery",
               "https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/cloud-platform.read-only"]
        requestClient BigQueryRoutinesGet{..}
          = go projectId datasetId routineId readMask
              (Core.Just Core.AltJSON)
              bigQueryService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy BigQueryRoutinesGetResource)
                      Core.mempty

