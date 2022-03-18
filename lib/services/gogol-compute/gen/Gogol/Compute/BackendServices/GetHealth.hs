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
-- Module      : Gogol.Compute.BackendServices.GetHealth
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the most recent health check results for this BackendService. Example request body: { \"group\": \"\/zones\/us-east1-b\/instanceGroups\/lb-backend-example\" }
--
-- /See:/ <https://cloud.google.com/compute/ Compute Engine API Reference> for @compute.backendServices.getHealth@.
module Gogol.Compute.BackendServices.GetHealth
    (
    -- * Resource
      ComputeBackendServicesGetHealthResource

    -- ** Constructing a Request
    , newComputeBackendServicesGetHealth
    , ComputeBackendServicesGetHealth
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Compute.Types

-- | A resource alias for @compute.backendServices.getHealth@ method which the
-- 'ComputeBackendServicesGetHealth' request conforms to.
type ComputeBackendServicesGetHealthResource =
     "compute" Core.:>
       "v1" Core.:>
         "projects" Core.:>
           Core.Capture "project" Core.Text Core.:>
             "global" Core.:>
               "backendServices" Core.:>
                 Core.Capture "backendService" Core.Text Core.:>
                   "getHealth" Core.:>
                     Core.QueryParam "$.xgafv" Xgafv Core.:>
                       Core.QueryParam "access_token" Core.Text Core.:>
                         Core.QueryParam "callback" Core.Text Core.:>
                           Core.QueryParam "uploadType" Core.Text Core.:>
                             Core.QueryParam "upload_protocol" Core.Text Core.:>
                               Core.QueryParam "alt" Core.AltJSON Core.:>
                                 Core.ReqBody '[Core.JSON]
                                   ResourceGroupReference
                                   Core.:>
                                   Core.Post '[Core.JSON]
                                     BackendServiceGroupHealth

-- | Gets the most recent health check results for this BackendService. Example request body: { \"group\": \"\/zones\/us-east1-b\/instanceGroups\/lb-backend-example\" }
--
-- /See:/ 'newComputeBackendServicesGetHealth' smart constructor.
data ComputeBackendServicesGetHealth = ComputeBackendServicesGetHealth
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | Name of the BackendService resource to which the queried instance belongs.
    , backendService :: Core.Text
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Multipart request metadata.
    , payload :: ResourceGroupReference
      -- | 
    , project :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ComputeBackendServicesGetHealth' with the minimum fields required to make a request.
newComputeBackendServicesGetHealth 
    ::  Core.Text
       -- ^  Name of the BackendService resource to which the queried instance belongs. See 'backendService'.
    -> ResourceGroupReference
       -- ^  Multipart request metadata. See 'payload'.
    -> Core.Text
       -- ^  See 'project'.
    -> ComputeBackendServicesGetHealth
newComputeBackendServicesGetHealth backendService payload project =
  ComputeBackendServicesGetHealth
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , backendService = backendService
    , callback = Core.Nothing
    , payload = payload
    , project = project
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           ComputeBackendServicesGetHealth
         where
        type Rs ComputeBackendServicesGetHealth =
             BackendServiceGroupHealth
        type Scopes ComputeBackendServicesGetHealth =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute",
               "https://www.googleapis.com/auth/compute.readonly"]
        requestClient ComputeBackendServicesGetHealth{..}
          = go project backendService xgafv accessToken
              callback
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              payload
              computeService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy ComputeBackendServicesGetHealthResource)
                      Core.mempty

