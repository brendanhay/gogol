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
-- Module      : Gogol.Compute.RegionInstanceTemplates.Get
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the specified instance template.
--
-- /See:/ <https://cloud.google.com/compute/ Compute Engine API Reference> for @compute.regionInstanceTemplates.get@.
module Gogol.Compute.RegionInstanceTemplates.Get
    (
    -- * Resource
      ComputeRegionInstanceTemplatesGetResource

    -- ** Constructing a Request
    , ComputeRegionInstanceTemplatesGet (..)
    , newComputeRegionInstanceTemplatesGet
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Compute.Types

-- | A resource alias for @compute.regionInstanceTemplates.get@ method which the
-- 'ComputeRegionInstanceTemplatesGet' request conforms to.
type ComputeRegionInstanceTemplatesGetResource =
     "compute" Core.:>
       "v1" Core.:>
         "projects" Core.:>
           Core.Capture "project" Core.Text Core.:>
             "regions" Core.:>
               Core.Capture "region" Core.Text Core.:>
                 "instanceTemplates" Core.:>
                   Core.Capture "instanceTemplate" Core.Text Core.:>
                     Core.QueryParam "$.xgafv" Xgafv Core.:>
                       Core.QueryParam "access_token" Core.Text Core.:>
                         Core.QueryParam "callback" Core.Text Core.:>
                           Core.QueryParam "uploadType" Core.Text Core.:>
                             Core.QueryParam "upload_protocol" Core.Text Core.:>
                               Core.QueryParam "alt" Core.AltJSON Core.:>
                                 Core.Get '[Core.JSON] InstanceTemplate

-- | Returns the specified instance template.
--
-- /See:/ 'newComputeRegionInstanceTemplatesGet' smart constructor.
data ComputeRegionInstanceTemplatesGet = ComputeRegionInstanceTemplatesGet
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | The name of the instance template.
    , instanceTemplate :: Core.Text
      -- | Project ID for this request.
    , project :: Core.Text
      -- | The name of the region for this request.
    , region :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ComputeRegionInstanceTemplatesGet' with the minimum fields required to make a request.
newComputeRegionInstanceTemplatesGet 
    ::  Core.Text
       -- ^  The name of the instance template. See 'instanceTemplate'.
    -> Core.Text
       -- ^  Project ID for this request. See 'project'.
    -> Core.Text
       -- ^  The name of the region for this request. See 'region'.
    -> ComputeRegionInstanceTemplatesGet
newComputeRegionInstanceTemplatesGet instanceTemplate project region =
  ComputeRegionInstanceTemplatesGet
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , instanceTemplate = instanceTemplate
    , project = project
    , region = region
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           ComputeRegionInstanceTemplatesGet
         where
        type Rs ComputeRegionInstanceTemplatesGet =
             InstanceTemplate
        type Scopes ComputeRegionInstanceTemplatesGet =
             '[CloudPlatform'FullControl, Compute'FullControl,
               Compute'Readonly]
        requestClient ComputeRegionInstanceTemplatesGet{..}
          = go project region instanceTemplate xgafv
              accessToken
              callback
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              computeService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy ComputeRegionInstanceTemplatesGetResource)
                      Core.mempty

