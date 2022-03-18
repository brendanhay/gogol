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
-- Module      : Gogol.Compute.RegionOperations.Wait
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Waits for the specified Operation resource to return as @DONE@ or for the request to approach the 2 minute deadline, and retrieves the specified Operation resource. This method differs from the @GET@ method in that it waits for no more than the default deadline (2 minutes) and then returns the current state of the operation, which might be @DONE@ or still in progress. This method is called on a best-effort basis. Specifically: - In uncommon cases, when the server is overloaded, the request might return before the default deadline is reached, or might return after zero seconds. - If the default deadline is reached, there is no guarantee that the operation is actually done when the method returns. Be prepared to retry if the operation is not @DONE@.
--
-- /See:/ <https://cloud.google.com/compute/ Compute Engine API Reference> for @compute.regionOperations.wait@.
module Gogol.Compute.RegionOperations.Wait
    (
    -- * Resource
      ComputeRegionOperationsWaitResource

    -- ** Constructing a Request
    , newComputeRegionOperationsWait
    , ComputeRegionOperationsWait
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Compute.Types

-- | A resource alias for @compute.regionOperations.wait@ method which the
-- 'ComputeRegionOperationsWait' request conforms to.
type ComputeRegionOperationsWaitResource =
     "compute" Core.:>
       "v1" Core.:>
         "projects" Core.:>
           Core.Capture "project" Core.Text Core.:>
             "regions" Core.:>
               Core.Capture "region" Core.Text Core.:>
                 "operations" Core.:>
                   Core.Capture "operation" Core.Text Core.:>
                     "wait" Core.:>
                       Core.QueryParam "$.xgafv" Xgafv Core.:>
                         Core.QueryParam "access_token" Core.Text Core.:>
                           Core.QueryParam "callback" Core.Text Core.:>
                             Core.QueryParam "uploadType" Core.Text Core.:>
                               Core.QueryParam "upload_protocol" Core.Text
                                 Core.:>
                                 Core.QueryParam "alt" Core.AltJSON Core.:>
                                   Core.Post '[Core.JSON] Operation

-- | Waits for the specified Operation resource to return as @DONE@ or for the request to approach the 2 minute deadline, and retrieves the specified Operation resource. This method differs from the @GET@ method in that it waits for no more than the default deadline (2 minutes) and then returns the current state of the operation, which might be @DONE@ or still in progress. This method is called on a best-effort basis. Specifically: - In uncommon cases, when the server is overloaded, the request might return before the default deadline is reached, or might return after zero seconds. - If the default deadline is reached, there is no guarantee that the operation is actually done when the method returns. Be prepared to retry if the operation is not @DONE@.
--
-- /See:/ 'newComputeRegionOperationsWait' smart constructor.
data ComputeRegionOperationsWait = ComputeRegionOperationsWait
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Name of the Operations resource to return.
    , operation :: Core.Text
      -- | Project ID for this request.
    , project :: Core.Text
      -- | Name of the region for this request.
    , region :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ComputeRegionOperationsWait' with the minimum fields required to make a request.
newComputeRegionOperationsWait 
    ::  Core.Text
       -- ^  Name of the Operations resource to return. See 'operation'.
    -> Core.Text
       -- ^  Project ID for this request. See 'project'.
    -> Core.Text
       -- ^  Name of the region for this request. See 'region'.
    -> ComputeRegionOperationsWait
newComputeRegionOperationsWait operation project region =
  ComputeRegionOperationsWait
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , operation = operation
    , project = project
    , region = region
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           ComputeRegionOperationsWait
         where
        type Rs ComputeRegionOperationsWait = Operation
        type Scopes ComputeRegionOperationsWait =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute",
               "https://www.googleapis.com/auth/compute.readonly"]
        requestClient ComputeRegionOperationsWait{..}
          = go project region operation xgafv accessToken
              callback
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              computeService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy ComputeRegionOperationsWaitResource)
                      Core.mempty

