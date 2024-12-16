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
-- Module      : Gogol.Healthcare.Projects.Locations.Datasets.Create
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a new health dataset. Results are returned through the Operation interface which returns either an @Operation.response@ which contains a Dataset or @Operation.error@. The metadata field type is OperationMetadata.
--
-- /See:/ <https://cloud.google.com/healthcare Cloud Healthcare API Reference> for @healthcare.projects.locations.datasets.create@.
module Gogol.Healthcare.Projects.Locations.Datasets.Create
    (
    -- * Resource
      HealthcareProjectsLocationsDatasetsCreateResource

    -- ** Constructing a Request
    , HealthcareProjectsLocationsDatasetsCreate (..)
    , newHealthcareProjectsLocationsDatasetsCreate
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Healthcare.Types

-- | A resource alias for @healthcare.projects.locations.datasets.create@ method which the
-- 'HealthcareProjectsLocationsDatasetsCreate' request conforms to.
type HealthcareProjectsLocationsDatasetsCreateResource
     =
     "v1" Core.:>
       Core.Capture "parent" Core.Text Core.:>
         "datasets" Core.:>
           Core.QueryParam "$.xgafv" Xgafv Core.:>
             Core.QueryParam "access_token" Core.Text Core.:>
               Core.QueryParam "callback" Core.Text Core.:>
                 Core.QueryParam "datasetId" Core.Text Core.:>
                   Core.QueryParam "uploadType" Core.Text Core.:>
                     Core.QueryParam "upload_protocol" Core.Text Core.:>
                       Core.QueryParam "alt" Core.AltJSON Core.:>
                         Core.ReqBody '[Core.JSON] Dataset Core.:>
                           Core.Post '[Core.JSON] Operation

-- | Creates a new health dataset. Results are returned through the Operation interface which returns either an @Operation.response@ which contains a Dataset or @Operation.error@. The metadata field type is OperationMetadata.
--
-- /See:/ 'newHealthcareProjectsLocationsDatasetsCreate' smart constructor.
data HealthcareProjectsLocationsDatasetsCreate = HealthcareProjectsLocationsDatasetsCreate
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Required. The ID of the dataset that is being created. The string must match the following regex: @[\\p{L}\\p{N}_\\-\\.]{1,256}@.
    , datasetId :: (Core.Maybe Core.Text)
      -- | Required. The name of the project where the server creates the dataset. For example, @projects\/{project_id}\/locations\/{location_id}@.
    , parent :: Core.Text
      -- | Multipart request metadata.
    , payload :: Dataset
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'HealthcareProjectsLocationsDatasetsCreate' with the minimum fields required to make a request.
newHealthcareProjectsLocationsDatasetsCreate 
    ::  Core.Text
       -- ^  Required. The name of the project where the server creates the dataset. For example, @projects\/{project_id}\/locations\/{location_id}@. See 'parent'.
    -> Dataset
       -- ^  Multipart request metadata. See 'payload'.
    -> HealthcareProjectsLocationsDatasetsCreate
newHealthcareProjectsLocationsDatasetsCreate parent payload =
  HealthcareProjectsLocationsDatasetsCreate
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , datasetId = Core.Nothing
    , parent = parent
    , payload = payload
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           HealthcareProjectsLocationsDatasetsCreate
         where
        type Rs HealthcareProjectsLocationsDatasetsCreate =
             Operation
        type Scopes HealthcareProjectsLocationsDatasetsCreate
             =
             '[CloudHealthcare'FullControl,
               CloudPlatform'FullControl]
        requestClient
          HealthcareProjectsLocationsDatasetsCreate{..}
          = go parent xgafv accessToken callback datasetId
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              payload
              healthcareService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           HealthcareProjectsLocationsDatasetsCreateResource)
                      Core.mempty

