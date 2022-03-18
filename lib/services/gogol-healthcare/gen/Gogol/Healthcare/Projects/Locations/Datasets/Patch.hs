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
-- Module      : Gogol.Healthcare.Projects.Locations.Datasets.Patch
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates dataset metadata.
--
-- /See:/ <https://cloud.google.com/healthcare Cloud Healthcare API Reference> for @healthcare.projects.locations.datasets.patch@.
module Gogol.Healthcare.Projects.Locations.Datasets.Patch
    (
    -- * Resource
      HealthcareProjectsLocationsDatasetsPatchResource

    -- ** Constructing a Request
    , newHealthcareProjectsLocationsDatasetsPatch
    , HealthcareProjectsLocationsDatasetsPatch
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Healthcare.Types

-- | A resource alias for @healthcare.projects.locations.datasets.patch@ method which the
-- 'HealthcareProjectsLocationsDatasetsPatch' request conforms to.
type HealthcareProjectsLocationsDatasetsPatchResource
     =
     "v1" Core.:>
       Core.Capture "name" Core.Text Core.:>
         Core.QueryParam "$.xgafv" Xgafv Core.:>
           Core.QueryParam "access_token" Core.Text Core.:>
             Core.QueryParam "callback" Core.Text Core.:>
               Core.QueryParam "updateMask" Core.GFieldMask Core.:>
                 Core.QueryParam "uploadType" Core.Text Core.:>
                   Core.QueryParam "upload_protocol" Core.Text Core.:>
                     Core.QueryParam "alt" Core.AltJSON Core.:>
                       Core.ReqBody '[Core.JSON] Dataset Core.:>
                         Core.Patch '[Core.JSON] Dataset

-- | Updates dataset metadata.
--
-- /See:/ 'newHealthcareProjectsLocationsDatasetsPatch' smart constructor.
data HealthcareProjectsLocationsDatasetsPatch = HealthcareProjectsLocationsDatasetsPatch
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Resource name of the dataset, of the form @projects\/{project_id}\/locations\/{location_id}\/datasets\/{dataset_id}@.
    , name :: Core.Text
      -- | Multipart request metadata.
    , payload :: Dataset
      -- | The update mask applies to the resource. For the @FieldMask@ definition, see https:\/\/developers.google.com\/protocol-buffers\/docs\/reference\/google.protobuf#fieldmask
    , updateMask :: (Core.Maybe Core.GFieldMask)
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'HealthcareProjectsLocationsDatasetsPatch' with the minimum fields required to make a request.
newHealthcareProjectsLocationsDatasetsPatch 
    ::  Core.Text
       -- ^  Resource name of the dataset, of the form @projects\/{project_id}\/locations\/{location_id}\/datasets\/{dataset_id}@. See 'name'.
    -> Dataset
       -- ^  Multipart request metadata. See 'payload'.
    -> HealthcareProjectsLocationsDatasetsPatch
newHealthcareProjectsLocationsDatasetsPatch name payload =
  HealthcareProjectsLocationsDatasetsPatch
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , name = name
    , payload = payload
    , updateMask = Core.Nothing
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           HealthcareProjectsLocationsDatasetsPatch
         where
        type Rs HealthcareProjectsLocationsDatasetsPatch =
             Dataset
        type Scopes HealthcareProjectsLocationsDatasetsPatch
             = '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          HealthcareProjectsLocationsDatasetsPatch{..}
          = go name xgafv accessToken callback updateMask
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              payload
              healthcareService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           HealthcareProjectsLocationsDatasetsPatchResource)
                      Core.mempty

