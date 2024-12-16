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
-- Module      : Gogol.Dataproc.Projects.Locations.AutoscalingPolicies.Get
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves autoscaling policy.
--
-- /See:/ <https://cloud.google.com/dataproc/ Cloud Dataproc API Reference> for @dataproc.projects.locations.autoscalingPolicies.get@.
module Gogol.Dataproc.Projects.Locations.AutoscalingPolicies.Get
    (
    -- * Resource
      DataprocProjectsLocationsAutoscalingPoliciesGetResource

    -- ** Constructing a Request
    , DataprocProjectsLocationsAutoscalingPoliciesGet (..)
    , newDataprocProjectsLocationsAutoscalingPoliciesGet
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Dataproc.Types

-- | A resource alias for @dataproc.projects.locations.autoscalingPolicies.get@ method which the
-- 'DataprocProjectsLocationsAutoscalingPoliciesGet' request conforms to.
type DataprocProjectsLocationsAutoscalingPoliciesGetResource
     =
     "v1" Core.:>
       Core.Capture "name" Core.Text Core.:>
         Core.QueryParam "$.xgafv" Xgafv Core.:>
           Core.QueryParam "access_token" Core.Text Core.:>
             Core.QueryParam "callback" Core.Text Core.:>
               Core.QueryParam "uploadType" Core.Text Core.:>
                 Core.QueryParam "upload_protocol" Core.Text Core.:>
                   Core.QueryParam "alt" Core.AltJSON Core.:>
                     Core.Get '[Core.JSON] AutoscalingPolicy

-- | Retrieves autoscaling policy.
--
-- /See:/ 'newDataprocProjectsLocationsAutoscalingPoliciesGet' smart constructor.
data DataprocProjectsLocationsAutoscalingPoliciesGet = DataprocProjectsLocationsAutoscalingPoliciesGet
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Required. The \"resource name\" of the autoscaling policy, as described in https:\/\/cloud.google.com\/apis\/design\/resource/names. For projects.regions.autoscalingPolicies.get, the resource name of the policy has the following format: projects\/{project/id}\/regions\/{region}\/autoscalingPolicies\/{policy/id} For projects.locations.autoscalingPolicies.get, the resource name of the policy has the following format: projects\/{project/id}\/locations\/{location}\/autoscalingPolicies\/{policy_id}
    , name :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DataprocProjectsLocationsAutoscalingPoliciesGet' with the minimum fields required to make a request.
newDataprocProjectsLocationsAutoscalingPoliciesGet 
    ::  Core.Text
       -- ^  Required. The \"resource name\" of the autoscaling policy, as described in https:\/\/cloud.google.com\/apis\/design\/resource/names. For projects.regions.autoscalingPolicies.get, the resource name of the policy has the following format: projects\/{project/id}\/regions\/{region}\/autoscalingPolicies\/{policy/id} For projects.locations.autoscalingPolicies.get, the resource name of the policy has the following format: projects\/{project/id}\/locations\/{location}\/autoscalingPolicies\/{policy_id} See 'name'.
    -> DataprocProjectsLocationsAutoscalingPoliciesGet
newDataprocProjectsLocationsAutoscalingPoliciesGet name =
  DataprocProjectsLocationsAutoscalingPoliciesGet
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , name = name
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           DataprocProjectsLocationsAutoscalingPoliciesGet
         where
        type Rs
               DataprocProjectsLocationsAutoscalingPoliciesGet
             = AutoscalingPolicy
        type Scopes
               DataprocProjectsLocationsAutoscalingPoliciesGet
             = '[CloudPlatform'FullControl]
        requestClient
          DataprocProjectsLocationsAutoscalingPoliciesGet{..}
          = go name xgafv accessToken callback uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              dataprocService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           DataprocProjectsLocationsAutoscalingPoliciesGetResource)
                      Core.mempty

