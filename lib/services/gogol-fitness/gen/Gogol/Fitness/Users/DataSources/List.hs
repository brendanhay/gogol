{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.Fitness.Users.DataSources.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists all data sources that are visible to the developer, using the OAuth scopes provided. The list is not exhaustive; the user may have private data sources that are only visible to other developers, or calls using other scopes.
--
-- /See:/ <https://developers.google.com/fit/rest/v1/get-started Fitness API Reference> for @fitness.users.dataSources.list@.
module Gogol.Fitness.Users.DataSources.List
  ( -- * Resource
    FitnessUsersDataSourcesListResource,

    -- ** Constructing a Request
    newFitnessUsersDataSourcesList,
    FitnessUsersDataSourcesList,
  )
where

import Gogol.Fitness.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @fitness.users.dataSources.list@ method which the
-- 'FitnessUsersDataSourcesList' request conforms to.
type FitnessUsersDataSourcesListResource =
  "fitness"
    Core.:> "v1"
    Core.:> "users"
    Core.:> Core.Capture "userId" Core.Text
    Core.:> "dataSources"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParams "dataTypeName" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] ListDataSourcesResponse

-- | Lists all data sources that are visible to the developer, using the OAuth scopes provided. The list is not exhaustive; the user may have private data sources that are only visible to other developers, or calls using other scopes.
--
-- /See:/ 'newFitnessUsersDataSourcesList' smart constructor.
data FitnessUsersDataSourcesList = FitnessUsersDataSourcesList
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The names of data types to include in the list. If not specified, all data sources will be returned.
    dataTypeName :: (Core.Maybe [Core.Text]),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text),
    -- | List data sources for the person identified. Use me to indicate the authenticated user. Only me is supported at this time.
    userId :: Core.Text
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'FitnessUsersDataSourcesList' with the minimum fields required to make a request.
newFitnessUsersDataSourcesList ::
  -- |  List data sources for the person identified. Use me to indicate the authenticated user. Only me is supported at this time. See 'userId'.
  Core.Text ->
  FitnessUsersDataSourcesList
newFitnessUsersDataSourcesList userId =
  FitnessUsersDataSourcesList
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      dataTypeName = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing,
      userId = userId
    }

instance
  Core.GoogleRequest
    FitnessUsersDataSourcesList
  where
  type
    Rs FitnessUsersDataSourcesList =
      ListDataSourcesResponse
  type
    Scopes FitnessUsersDataSourcesList =
      '[ Fitness'Activity'Read,
         Fitness'Activity'Write,
         Fitness'BloodGlucose'Read,
         Fitness'BloodGlucose'Write,
         Fitness'BloodPressure'Read,
         Fitness'BloodPressure'Write,
         Fitness'Body'Read,
         Fitness'Body'Write,
         Fitness'BodyTemperature'Read,
         Fitness'BodyTemperature'Write,
         Fitness'HeartRate'Read,
         Fitness'HeartRate'Write,
         Fitness'Location'Read,
         Fitness'Location'Write,
         Fitness'Nutrition'Read,
         Fitness'Nutrition'Write,
         Fitness'OxygenSaturation'Read,
         Fitness'OxygenSaturation'Write,
         Fitness'ReproductiveHealth'Read,
         Fitness'ReproductiveHealth'Write,
         Fitness'Sleep'Read,
         Fitness'Sleep'Write
       ]
  requestClient FitnessUsersDataSourcesList {..} =
    go
      userId
      xgafv
      accessToken
      callback
      (dataTypeName Core.^. Core._Default)
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      fitnessService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy FitnessUsersDataSourcesListResource
          )
          Core.mempty
