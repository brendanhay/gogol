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
-- Module      : Gogol.MachineLearning.Ml.Projects.Locations.Studies.Get
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets a study.
--
-- /See:/ <https://cloud.google.com/ml/ AI Platform Training & Prediction API Reference> for @ml.projects.locations.studies.get@.
module Gogol.MachineLearning.Ml.Projects.Locations.Studies.Get
    (
    -- * Resource
      MlProjectsLocationsStudiesGetResource

    -- ** Constructing a Request
    , MlProjectsLocationsStudiesGet (..)
    , newMlProjectsLocationsStudiesGet
    ) where

import qualified Gogol.Prelude as Core
import Gogol.MachineLearning.Types

-- | A resource alias for @ml.projects.locations.studies.get@ method which the
-- 'MlProjectsLocationsStudiesGet' request conforms to.
type MlProjectsLocationsStudiesGetResource =
     "v1" Core.:>
       Core.Capture "name" Core.Text Core.:>
         Core.QueryParam "$.xgafv" Xgafv Core.:>
           Core.QueryParam "access_token" Core.Text Core.:>
             Core.QueryParam "callback" Core.Text Core.:>
               Core.QueryParam "uploadType" Core.Text Core.:>
                 Core.QueryParam "upload_protocol" Core.Text Core.:>
                   Core.QueryParam "alt" Core.AltJSON Core.:>
                     Core.Get '[Core.JSON] GoogleCloudMlV1__Study

-- | Gets a study.
--
-- /See:/ 'newMlProjectsLocationsStudiesGet' smart constructor.
data MlProjectsLocationsStudiesGet = MlProjectsLocationsStudiesGet
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Required. The study name.
    , name :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'MlProjectsLocationsStudiesGet' with the minimum fields required to make a request.
newMlProjectsLocationsStudiesGet 
    ::  Core.Text
       -- ^  Required. The study name. See 'name'.
    -> MlProjectsLocationsStudiesGet
newMlProjectsLocationsStudiesGet name =
  MlProjectsLocationsStudiesGet
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , name = name
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           MlProjectsLocationsStudiesGet
         where
        type Rs MlProjectsLocationsStudiesGet =
             GoogleCloudMlV1__Study
        type Scopes MlProjectsLocationsStudiesGet =
             '[CloudPlatform'FullControl]
        requestClient MlProjectsLocationsStudiesGet{..}
          = go name xgafv accessToken callback uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              machineLearningService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy MlProjectsLocationsStudiesGetResource)
                      Core.mempty

