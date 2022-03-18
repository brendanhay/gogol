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
-- Module      : Gogol.Compute.InstanceTemplates.GetIamPolicy
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the access control policy for a resource. May be empty if no such policy or resource exists.
--
-- /See:/ <https://cloud.google.com/compute/ Compute Engine API Reference> for @compute.instanceTemplates.getIamPolicy@.
module Gogol.Compute.InstanceTemplates.GetIamPolicy
    (
    -- * Resource
      ComputeInstanceTemplatesGetIamPolicyResource

    -- ** Constructing a Request
    , newComputeInstanceTemplatesGetIamPolicy
    , ComputeInstanceTemplatesGetIamPolicy
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Compute.Types

-- | A resource alias for @compute.instanceTemplates.getIamPolicy@ method which the
-- 'ComputeInstanceTemplatesGetIamPolicy' request conforms to.
type ComputeInstanceTemplatesGetIamPolicyResource =
     "compute" Core.:>
       "v1" Core.:>
         "projects" Core.:>
           Core.Capture "project" Core.Text Core.:>
             "global" Core.:>
               "instanceTemplates" Core.:>
                 Core.Capture "resource" Core.Text Core.:>
                   "getIamPolicy" Core.:>
                     Core.QueryParam "$.xgafv" Xgafv Core.:>
                       Core.QueryParam "access_token" Core.Text Core.:>
                         Core.QueryParam "callback" Core.Text Core.:>
                           Core.QueryParam "optionsRequestedPolicyVersion"
                             Core.Int32
                             Core.:>
                             Core.QueryParam "uploadType" Core.Text Core.:>
                               Core.QueryParam "upload_protocol" Core.Text
                                 Core.:>
                                 Core.QueryParam "alt" Core.AltJSON Core.:>
                                   Core.Get '[Core.JSON] Policy

-- | Gets the access control policy for a resource. May be empty if no such policy or resource exists.
--
-- /See:/ 'newComputeInstanceTemplatesGetIamPolicy' smart constructor.
data ComputeInstanceTemplatesGetIamPolicy = ComputeInstanceTemplatesGetIamPolicy
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Requested IAM Policy version.
    , optionsRequestedPolicyVersion :: (Core.Maybe Core.Int32)
      -- | Project ID for this request.
    , project :: Core.Text
      -- | Name or id of the resource for this request.
    , resource :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ComputeInstanceTemplatesGetIamPolicy' with the minimum fields required to make a request.
newComputeInstanceTemplatesGetIamPolicy 
    ::  Core.Text
       -- ^  Project ID for this request. See 'project'.
    -> Core.Text
       -- ^  Name or id of the resource for this request. See 'resource'.
    -> ComputeInstanceTemplatesGetIamPolicy
newComputeInstanceTemplatesGetIamPolicy project resource =
  ComputeInstanceTemplatesGetIamPolicy
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , optionsRequestedPolicyVersion = Core.Nothing
    , project = project
    , resource = resource
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           ComputeInstanceTemplatesGetIamPolicy
         where
        type Rs ComputeInstanceTemplatesGetIamPolicy = Policy
        type Scopes ComputeInstanceTemplatesGetIamPolicy =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute",
               "https://www.googleapis.com/auth/compute.readonly"]
        requestClient
          ComputeInstanceTemplatesGetIamPolicy{..}
          = go project resource xgafv accessToken callback
              optionsRequestedPolicyVersion
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              computeService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           ComputeInstanceTemplatesGetIamPolicyResource)
                      Core.mempty

