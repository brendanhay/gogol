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
-- Module      : Gogol.Fitness.Users.DataSources.Delete
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes the specified data source. The request will fail if the data source contains any data points.
--
-- /See:/ <https://developers.google.com/fit/rest/v1/get-started Fitness API Reference> for @fitness.users.dataSources.delete@.
module Gogol.Fitness.Users.DataSources.Delete
    (
    -- * Resource
      FitnessUsersDataSourcesDeleteResource

    -- ** Constructing a Request
    , newFitnessUsersDataSourcesDelete
    , FitnessUsersDataSourcesDelete
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Fitness.Types

-- | A resource alias for @fitness.users.dataSources.delete@ method which the
-- 'FitnessUsersDataSourcesDelete' request conforms to.
type FitnessUsersDataSourcesDeleteResource =
     "fitness" Core.:>
       "v1" Core.:>
         "users" Core.:>
           Core.Capture "userId" Core.Text Core.:>
             "dataSources" Core.:>
               Core.Capture "dataSourceId" Core.Text Core.:>
                 Core.QueryParam "$.xgafv" Xgafv Core.:>
                   Core.QueryParam "access_token" Core.Text Core.:>
                     Core.QueryParam "callback" Core.Text Core.:>
                       Core.QueryParam "uploadType" Core.Text Core.:>
                         Core.QueryParam "upload_protocol" Core.Text Core.:>
                           Core.QueryParam "alt" Core.AltJSON Core.:>
                             Core.Delete '[Core.JSON] DataSource

-- | Deletes the specified data source. The request will fail if the data source contains any data points.
--
-- /See:/ 'newFitnessUsersDataSourcesDelete' smart constructor.
data FitnessUsersDataSourcesDelete = FitnessUsersDataSourcesDelete
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | The data stream ID of the data source to delete.
    , dataSourceId :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
      -- | Retrieve a data source for the person identified. Use me to indicate the authenticated user. Only me is supported at this time.
    , userId :: Core.Text
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'FitnessUsersDataSourcesDelete' with the minimum fields required to make a request.
newFitnessUsersDataSourcesDelete 
    ::  Core.Text
       -- ^  The data stream ID of the data source to delete. See 'dataSourceId'.
    -> Core.Text
       -- ^  Retrieve a data source for the person identified. Use me to indicate the authenticated user. Only me is supported at this time. See 'userId'.
    -> FitnessUsersDataSourcesDelete
newFitnessUsersDataSourcesDelete dataSourceId userId =
  FitnessUsersDataSourcesDelete
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , dataSourceId = dataSourceId
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    , userId = userId
    }

instance Core.GoogleRequest
           FitnessUsersDataSourcesDelete
         where
        type Rs FitnessUsersDataSourcesDelete = DataSource
        type Scopes FitnessUsersDataSourcesDelete =
             '["https://www.googleapis.com/auth/fitness.activity.write",
               "https://www.googleapis.com/auth/fitness.blood_glucose.write",
               "https://www.googleapis.com/auth/fitness.blood_pressure.write",
               "https://www.googleapis.com/auth/fitness.body.write",
               "https://www.googleapis.com/auth/fitness.body_temperature.write",
               "https://www.googleapis.com/auth/fitness.heart_rate.write",
               "https://www.googleapis.com/auth/fitness.location.write",
               "https://www.googleapis.com/auth/fitness.nutrition.write",
               "https://www.googleapis.com/auth/fitness.oxygen_saturation.write",
               "https://www.googleapis.com/auth/fitness.reproductive_health.write",
               "https://www.googleapis.com/auth/fitness.sleep.write"]
        requestClient FitnessUsersDataSourcesDelete{..}
          = go userId dataSourceId xgafv accessToken callback
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              fitnessService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy FitnessUsersDataSourcesDeleteResource)
                      Core.mempty

