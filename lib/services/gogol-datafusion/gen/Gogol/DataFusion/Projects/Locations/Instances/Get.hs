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
-- Module      : Gogol.DataFusion.Projects.Locations.Instances.Get
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets details of a single Data Fusion instance.
--
-- /See:/ <https://cloud.google.com/data-fusion/docs Cloud Data Fusion API Reference> for @datafusion.projects.locations.instances.get@.
module Gogol.DataFusion.Projects.Locations.Instances.Get
    (
    -- * Resource
      DataFusionProjectsLocationsInstancesGetResource

    -- ** Constructing a Request
    , DataFusionProjectsLocationsInstancesGet (..)
    , newDataFusionProjectsLocationsInstancesGet
    ) where

import qualified Gogol.Prelude as Core
import Gogol.DataFusion.Types

-- | A resource alias for @datafusion.projects.locations.instances.get@ method which the
-- 'DataFusionProjectsLocationsInstancesGet' request conforms to.
type DataFusionProjectsLocationsInstancesGetResource
     =
     "v1" Core.:>
       Core.Capture "name" Core.Text Core.:>
         Core.QueryParam "$.xgafv" Xgafv Core.:>
           Core.QueryParam "access_token" Core.Text Core.:>
             Core.QueryParam "callback" Core.Text Core.:>
               Core.QueryParam "uploadType" Core.Text Core.:>
                 Core.QueryParam "upload_protocol" Core.Text Core.:>
                   Core.QueryParam "alt" Core.AltJSON Core.:>
                     Core.Get '[Core.JSON] Instance

-- | Gets details of a single Data Fusion instance.
--
-- /See:/ 'newDataFusionProjectsLocationsInstancesGet' smart constructor.
data DataFusionProjectsLocationsInstancesGet = DataFusionProjectsLocationsInstancesGet
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Required. The instance resource name in the format projects\/{project}\/locations\/{location}\/instances\/{instance}.
    , name :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DataFusionProjectsLocationsInstancesGet' with the minimum fields required to make a request.
newDataFusionProjectsLocationsInstancesGet 
    ::  Core.Text
       -- ^  Required. The instance resource name in the format projects\/{project}\/locations\/{location}\/instances\/{instance}. See 'name'.
    -> DataFusionProjectsLocationsInstancesGet
newDataFusionProjectsLocationsInstancesGet name =
  DataFusionProjectsLocationsInstancesGet
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , name = name
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           DataFusionProjectsLocationsInstancesGet
         where
        type Rs DataFusionProjectsLocationsInstancesGet =
             Instance
        type Scopes DataFusionProjectsLocationsInstancesGet =
             '[CloudPlatform'FullControl]
        requestClient
          DataFusionProjectsLocationsInstancesGet{..}
          = go name xgafv accessToken callback uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              dataFusionService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           DataFusionProjectsLocationsInstancesGetResource)
                      Core.mempty

