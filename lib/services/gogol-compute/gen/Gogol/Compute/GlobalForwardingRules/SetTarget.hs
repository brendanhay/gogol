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
-- Module      : Gogol.Compute.GlobalForwardingRules.SetTarget
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Changes target URL for the GlobalForwardingRule resource. The new target should be of the same type as the old target.
--
-- /See:/ <https://cloud.google.com/compute/ Compute Engine API Reference> for @compute.globalForwardingRules.setTarget@.
module Gogol.Compute.GlobalForwardingRules.SetTarget
    (
    -- * Resource
      ComputeGlobalForwardingRulesSetTargetResource

    -- ** Constructing a Request
    , ComputeGlobalForwardingRulesSetTarget (..)
    , newComputeGlobalForwardingRulesSetTarget
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Compute.Types

-- | A resource alias for @compute.globalForwardingRules.setTarget@ method which the
-- 'ComputeGlobalForwardingRulesSetTarget' request conforms to.
type ComputeGlobalForwardingRulesSetTargetResource =
     "compute" Core.:>
       "v1" Core.:>
         "projects" Core.:>
           Core.Capture "project" Core.Text Core.:>
             "global" Core.:>
               "forwardingRules" Core.:>
                 Core.Capture "forwardingRule" Core.Text Core.:>
                   "setTarget" Core.:>
                     Core.QueryParam "$.xgafv" Xgafv Core.:>
                       Core.QueryParam "access_token" Core.Text Core.:>
                         Core.QueryParam "callback" Core.Text Core.:>
                           Core.QueryParam "requestId" Core.Text Core.:>
                             Core.QueryParam "uploadType" Core.Text Core.:>
                               Core.QueryParam "upload_protocol" Core.Text
                                 Core.:>
                                 Core.QueryParam "alt" Core.AltJSON Core.:>
                                   Core.ReqBody '[Core.JSON] TargetReference
                                     Core.:> Core.Post '[Core.JSON] Operation

-- | Changes target URL for the GlobalForwardingRule resource. The new target should be of the same type as the old target.
--
-- /See:/ 'newComputeGlobalForwardingRulesSetTarget' smart constructor.
data ComputeGlobalForwardingRulesSetTarget = ComputeGlobalForwardingRulesSetTarget
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Name of the ForwardingRule resource in which target is to be set.
    , forwardingRule :: Core.Text
      -- | Multipart request metadata.
    , payload :: TargetReference
      -- | Project ID for this request.
    , project :: Core.Text
      -- | An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported ( 00000000-0000-0000-0000-000000000000).
    , requestId :: (Core.Maybe Core.Text)
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ComputeGlobalForwardingRulesSetTarget' with the minimum fields required to make a request.
newComputeGlobalForwardingRulesSetTarget 
    ::  Core.Text
       -- ^  Name of the ForwardingRule resource in which target is to be set. See 'forwardingRule'.
    -> TargetReference
       -- ^  Multipart request metadata. See 'payload'.
    -> Core.Text
       -- ^  Project ID for this request. See 'project'.
    -> ComputeGlobalForwardingRulesSetTarget
newComputeGlobalForwardingRulesSetTarget forwardingRule payload project =
  ComputeGlobalForwardingRulesSetTarget
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , forwardingRule = forwardingRule
    , payload = payload
    , project = project
    , requestId = Core.Nothing
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           ComputeGlobalForwardingRulesSetTarget
         where
        type Rs ComputeGlobalForwardingRulesSetTarget =
             Operation
        type Scopes ComputeGlobalForwardingRulesSetTarget =
             '[CloudPlatform'FullControl, Compute'FullControl]
        requestClient
          ComputeGlobalForwardingRulesSetTarget{..}
          = go project forwardingRule xgafv accessToken
              callback
              requestId
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              payload
              computeService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           ComputeGlobalForwardingRulesSetTargetResource)
                      Core.mempty

