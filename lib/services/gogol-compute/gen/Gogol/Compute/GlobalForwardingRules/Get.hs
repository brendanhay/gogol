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
-- Module      : Gogol.Compute.GlobalForwardingRules.Get
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the specified GlobalForwardingRule resource. Gets a list of available forwarding rules by making a list() request.
--
-- /See:/ <https://cloud.google.com/compute/ Compute Engine API Reference> for @compute.globalForwardingRules.get@.
module Gogol.Compute.GlobalForwardingRules.Get
    (
    -- * Resource
      ComputeGlobalForwardingRulesGetResource

    -- ** Constructing a Request
    , ComputeGlobalForwardingRulesGet (..)
    , newComputeGlobalForwardingRulesGet
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Compute.Types

-- | A resource alias for @compute.globalForwardingRules.get@ method which the
-- 'ComputeGlobalForwardingRulesGet' request conforms to.
type ComputeGlobalForwardingRulesGetResource =
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
                         Core.QueryParam "uploadType" Core.Text Core.:>
                           Core.QueryParam "upload_protocol" Core.Text Core.:>
                             Core.QueryParam "alt" Core.AltJSON Core.:>
                               Core.Get '[Core.JSON] ForwardingRule

-- | Returns the specified GlobalForwardingRule resource. Gets a list of available forwarding rules by making a list() request.
--
-- /See:/ 'newComputeGlobalForwardingRulesGet' smart constructor.
data ComputeGlobalForwardingRulesGet = ComputeGlobalForwardingRulesGet
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Name of the ForwardingRule resource to return.
    , forwardingRule :: Core.Text
      -- | Project ID for this request.
    , project :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ComputeGlobalForwardingRulesGet' with the minimum fields required to make a request.
newComputeGlobalForwardingRulesGet 
    ::  Core.Text
       -- ^  Name of the ForwardingRule resource to return. See 'forwardingRule'.
    -> Core.Text
       -- ^  Project ID for this request. See 'project'.
    -> ComputeGlobalForwardingRulesGet
newComputeGlobalForwardingRulesGet forwardingRule project =
  ComputeGlobalForwardingRulesGet
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , forwardingRule = forwardingRule
    , project = project
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           ComputeGlobalForwardingRulesGet
         where
        type Rs ComputeGlobalForwardingRulesGet =
             ForwardingRule
        type Scopes ComputeGlobalForwardingRulesGet =
             '[CloudPlatform'FullControl, Compute'FullControl,
               Compute'Readonly]
        requestClient ComputeGlobalForwardingRulesGet{..}
          = go project forwardingRule xgafv accessToken
              callback
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              computeService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy ComputeGlobalForwardingRulesGetResource)
                      Core.mempty

