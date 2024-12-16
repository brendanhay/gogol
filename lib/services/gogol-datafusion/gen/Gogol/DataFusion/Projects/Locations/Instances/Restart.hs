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
-- Module      : Gogol.DataFusion.Projects.Locations.Instances.Restart
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Restart a single Data Fusion instance. At the end of an operation instance is fully restarted.
--
-- /See:/ <https://cloud.google.com/data-fusion/docs Cloud Data Fusion API Reference> for @datafusion.projects.locations.instances.restart@.
module Gogol.DataFusion.Projects.Locations.Instances.Restart
    (
    -- * Resource
      DataFusionProjectsLocationsInstancesRestartResource

    -- ** Constructing a Request
    , DataFusionProjectsLocationsInstancesRestart (..)
    , newDataFusionProjectsLocationsInstancesRestart
    ) where

import qualified Gogol.Prelude as Core
import Gogol.DataFusion.Types

-- | A resource alias for @datafusion.projects.locations.instances.restart@ method which the
-- 'DataFusionProjectsLocationsInstancesRestart' request conforms to.
type DataFusionProjectsLocationsInstancesRestartResource
     =
     "v1" Core.:>
       Core.CaptureMode "name" "restart" Core.Text Core.:>
         Core.QueryParam "$.xgafv" Xgafv Core.:>
           Core.QueryParam "access_token" Core.Text Core.:>
             Core.QueryParam "callback" Core.Text Core.:>
               Core.QueryParam "uploadType" Core.Text Core.:>
                 Core.QueryParam "upload_protocol" Core.Text Core.:>
                   Core.QueryParam "alt" Core.AltJSON Core.:>
                     Core.ReqBody '[Core.JSON] RestartInstanceRequest
                       Core.:> Core.Post '[Core.JSON] Operation

-- | Restart a single Data Fusion instance. At the end of an operation instance is fully restarted.
--
-- /See:/ 'newDataFusionProjectsLocationsInstancesRestart' smart constructor.
data DataFusionProjectsLocationsInstancesRestart = DataFusionProjectsLocationsInstancesRestart
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Required. Name of the Data Fusion instance which need to be restarted in the form of projects\/{project}\/locations\/{location}\/instances\/{instance}
    , name :: Core.Text
      -- | Multipart request metadata.
    , payload :: RestartInstanceRequest
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DataFusionProjectsLocationsInstancesRestart' with the minimum fields required to make a request.
newDataFusionProjectsLocationsInstancesRestart 
    ::  Core.Text
       -- ^  Required. Name of the Data Fusion instance which need to be restarted in the form of projects\/{project}\/locations\/{location}\/instances\/{instance} See 'name'.
    -> RestartInstanceRequest
       -- ^  Multipart request metadata. See 'payload'.
    -> DataFusionProjectsLocationsInstancesRestart
newDataFusionProjectsLocationsInstancesRestart name payload =
  DataFusionProjectsLocationsInstancesRestart
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , name = name
    , payload = payload
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           DataFusionProjectsLocationsInstancesRestart
         where
        type Rs DataFusionProjectsLocationsInstancesRestart =
             Operation
        type Scopes
               DataFusionProjectsLocationsInstancesRestart
             = '[CloudPlatform'FullControl]
        requestClient
          DataFusionProjectsLocationsInstancesRestart{..}
          = go name xgafv accessToken callback uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              payload
              dataFusionService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           DataFusionProjectsLocationsInstancesRestartResource)
                      Core.mempty

