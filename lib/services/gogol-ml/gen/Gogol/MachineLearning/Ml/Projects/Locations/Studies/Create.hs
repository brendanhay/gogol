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
-- Module      : Gogol.MachineLearning.Ml.Projects.Locations.Studies.Create
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a study.
--
-- /See:/ <https://cloud.google.com/ml/ AI Platform Training & Prediction API Reference> for @ml.projects.locations.studies.create@.
module Gogol.MachineLearning.Ml.Projects.Locations.Studies.Create
    (
    -- * Resource
      MlProjectsLocationsStudiesCreateResource

    -- ** Constructing a Request
    , MlProjectsLocationsStudiesCreate (..)
    , newMlProjectsLocationsStudiesCreate
    ) where

import qualified Gogol.Prelude as Core
import Gogol.MachineLearning.Types

-- | A resource alias for @ml.projects.locations.studies.create@ method which the
-- 'MlProjectsLocationsStudiesCreate' request conforms to.
type MlProjectsLocationsStudiesCreateResource =
     "v1" Core.:>
       Core.Capture "parent" Core.Text Core.:>
         "studies" Core.:>
           Core.QueryParam "$.xgafv" Xgafv Core.:>
             Core.QueryParam "access_token" Core.Text Core.:>
               Core.QueryParam "callback" Core.Text Core.:>
                 Core.QueryParam "studyId" Core.Text Core.:>
                   Core.QueryParam "uploadType" Core.Text Core.:>
                     Core.QueryParam "upload_protocol" Core.Text Core.:>
                       Core.QueryParam "alt" Core.AltJSON Core.:>
                         Core.ReqBody '[Core.JSON] GoogleCloudMlV1__Study
                           Core.:> Core.Post '[Core.JSON] GoogleCloudMlV1__Study

-- | Creates a study.
--
-- /See:/ 'newMlProjectsLocationsStudiesCreate' smart constructor.
data MlProjectsLocationsStudiesCreate = MlProjectsLocationsStudiesCreate
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Required. The project and location that the study belongs to. Format: projects\/{project}\/locations\/{location}
    , parent :: Core.Text
      -- | Multipart request metadata.
    , payload :: GoogleCloudMlV1__Study
      -- | Required. The ID to use for the study, which will become the final component of the study\'s resource name.
    , studyId :: (Core.Maybe Core.Text)
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'MlProjectsLocationsStudiesCreate' with the minimum fields required to make a request.
newMlProjectsLocationsStudiesCreate 
    ::  Core.Text
       -- ^  Required. The project and location that the study belongs to. Format: projects\/{project}\/locations\/{location} See 'parent'.
    -> GoogleCloudMlV1__Study
       -- ^  Multipart request metadata. See 'payload'.
    -> MlProjectsLocationsStudiesCreate
newMlProjectsLocationsStudiesCreate parent payload =
  MlProjectsLocationsStudiesCreate
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , parent = parent
    , payload = payload
    , studyId = Core.Nothing
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           MlProjectsLocationsStudiesCreate
         where
        type Rs MlProjectsLocationsStudiesCreate =
             GoogleCloudMlV1__Study
        type Scopes MlProjectsLocationsStudiesCreate =
             '[CloudPlatform'FullControl]
        requestClient MlProjectsLocationsStudiesCreate{..}
          = go parent xgafv accessToken callback studyId
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              payload
              machineLearningService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy MlProjectsLocationsStudiesCreateResource)
                      Core.mempty

