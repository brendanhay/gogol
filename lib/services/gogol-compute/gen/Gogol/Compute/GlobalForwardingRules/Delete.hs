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
-- Module      : Gogol.Compute.GlobalForwardingRules.Delete
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes the specified GlobalForwardingRule resource.
--
-- /See:/ <https://cloud.google.com/compute/ Compute Engine API Reference> for @compute.globalForwardingRules.delete@.
module Gogol.Compute.GlobalForwardingRules.Delete
    (
    -- * Resource
      ComputeGlobalForwardingRulesDeleteResource

    -- ** Constructing a Request
    , ComputeGlobalForwardingRulesDelete (..)
    , newComputeGlobalForwardingRulesDelete
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Compute.Types

-- | A resource alias for @compute.globalForwardingRules.delete@ method which the
-- 'ComputeGlobalForwardingRulesDelete' request conforms to.
type ComputeGlobalForwardingRulesDeleteResource =
     "compute" Core.:>
       "v1" Core.:>
         "projects" Core.:>
           Core.Capture "project" Core.Text Core.:>
             "global" Core.:>
               "forwardingRules" Core.:>
                 Core.Capture "forwardingRule" Core.Text Core.:>
                   Core.QueryParam "$.xgafv" Xgafv Core.:>
                     Core.QueryParam "access_token" Core.Text Core.:>
                       Core.QueryParam "callback" Core.Text Core.:>
                         Core.QueryParam "requestId" Core.Text Core.:>
                           Core.QueryParam "uploadType" Core.Text Core.:>
                             Core.QueryParam "upload_protocol" Core.Text Core.:>
                               Core.QueryParam "alt" Core.AltJSON Core.:>
                                 Core.Delete '[Core.JSON] Operation

-- | Deletes the specified GlobalForwardingRule resource.
--
-- /See:/ 'newComputeGlobalForwardingRulesDelete' smart constructor.
data ComputeGlobalForwardingRulesDelete = ComputeGlobalForwardingRulesDelete
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Name of the ForwardingRule resource to delete.
    , forwardingRule :: Core.Text
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

-- | Creates a value of 'ComputeGlobalForwardingRulesDelete' with the minimum fields required to make a request.
newComputeGlobalForwardingRulesDelete 
    ::  Core.Text
       -- ^  Name of the ForwardingRule resource to delete. See 'forwardingRule'.
    -> Core.Text
       -- ^  Project ID for this request. See 'project'.
    -> ComputeGlobalForwardingRulesDelete
newComputeGlobalForwardingRulesDelete forwardingRule project =
  ComputeGlobalForwardingRulesDelete
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , forwardingRule = forwardingRule
    , project = project
    , requestId = Core.Nothing
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           ComputeGlobalForwardingRulesDelete
         where
        type Rs ComputeGlobalForwardingRulesDelete =
             Operation
        type Scopes ComputeGlobalForwardingRulesDelete =
             '[CloudPlatform'FullControl, Compute'FullControl]
        requestClient ComputeGlobalForwardingRulesDelete{..}
          = go project forwardingRule xgafv accessToken
              callback
              requestId
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              computeService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           ComputeGlobalForwardingRulesDeleteResource)
                      Core.mempty

