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
-- Module      : Gogol.MachineLearning.Ml.Projects.Locations.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- List all locations that provides at least one type of CMLE capability.
--
-- /See:/ <https://cloud.google.com/ml/ AI Platform Training & Prediction API Reference> for @ml.projects.locations.list@.
module Gogol.MachineLearning.Ml.Projects.Locations.List
    (
    -- * Resource
      MlProjectsLocationsListResource

    -- ** Constructing a Request
    , MlProjectsLocationsList (..)
    , newMlProjectsLocationsList
    ) where

import qualified Gogol.Prelude as Core
import Gogol.MachineLearning.Types

-- | A resource alias for @ml.projects.locations.list@ method which the
-- 'MlProjectsLocationsList' request conforms to.
type MlProjectsLocationsListResource =
     "v1" Core.:>
       Core.Capture "parent" Core.Text Core.:>
         "locations" Core.:>
           Core.QueryParam "$.xgafv" Xgafv Core.:>
             Core.QueryParam "access_token" Core.Text Core.:>
               Core.QueryParam "callback" Core.Text Core.:>
                 Core.QueryParam "pageSize" Core.Int32 Core.:>
                   Core.QueryParam "pageToken" Core.Text Core.:>
                     Core.QueryParam "uploadType" Core.Text Core.:>
                       Core.QueryParam "upload_protocol" Core.Text Core.:>
                         Core.QueryParam "alt" Core.AltJSON Core.:>
                           Core.Get '[Core.JSON]
                             GoogleCloudMlV1__ListLocationsResponse

-- | List all locations that provides at least one type of CMLE capability.
--
-- /See:/ 'newMlProjectsLocationsList' smart constructor.
data MlProjectsLocationsList = MlProjectsLocationsList
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Optional. The number of locations to retrieve per \"page\" of results. If there are more remaining results than this number, the response message will contain a valid value in the @next_page_token@ field. The default value is 20, and the maximum page size is 100.
    , pageSize :: (Core.Maybe Core.Int32)
      -- | Optional. A page token to request the next page of results. You get the token from the @next_page_token@ field of the response from the previous call.
    , pageToken :: (Core.Maybe Core.Text)
      -- | Required. The name of the project for which available locations are to be listed (since some locations might be whitelisted for specific projects).
    , parent :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'MlProjectsLocationsList' with the minimum fields required to make a request.
newMlProjectsLocationsList 
    ::  Core.Text
       -- ^  Required. The name of the project for which available locations are to be listed (since some locations might be whitelisted for specific projects). See 'parent'.
    -> MlProjectsLocationsList
newMlProjectsLocationsList parent =
  MlProjectsLocationsList
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , pageSize = Core.Nothing
    , pageToken = Core.Nothing
    , parent = parent
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest MlProjectsLocationsList
         where
        type Rs MlProjectsLocationsList =
             GoogleCloudMlV1__ListLocationsResponse
        type Scopes MlProjectsLocationsList =
             '[CloudPlatform'FullControl, CloudPlatform'ReadOnly]
        requestClient MlProjectsLocationsList{..}
          = go parent xgafv accessToken callback pageSize
              pageToken
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              machineLearningService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy MlProjectsLocationsListResource)
                      Core.mempty

