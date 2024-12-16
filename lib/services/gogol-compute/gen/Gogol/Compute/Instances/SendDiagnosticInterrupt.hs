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
-- Module      : Gogol.Compute.Instances.SendDiagnosticInterrupt
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Sends diagnostic interrupt to the instance.
--
-- /See:/ <https://cloud.google.com/compute/ Compute Engine API Reference> for @compute.instances.sendDiagnosticInterrupt@.
module Gogol.Compute.Instances.SendDiagnosticInterrupt
    (
    -- * Resource
      ComputeInstancesSendDiagnosticInterruptResource

    -- ** Constructing a Request
    , ComputeInstancesSendDiagnosticInterrupt (..)
    , newComputeInstancesSendDiagnosticInterrupt
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Compute.Types

-- | A resource alias for @compute.instances.sendDiagnosticInterrupt@ method which the
-- 'ComputeInstancesSendDiagnosticInterrupt' request conforms to.
type ComputeInstancesSendDiagnosticInterruptResource
     =
     "compute" Core.:>
       "v1" Core.:>
         "projects" Core.:>
           Core.Capture "project" Core.Text Core.:>
             "zones" Core.:>
               Core.Capture "zone" Core.Text Core.:>
                 "instances" Core.:>
                   Core.Capture "instance" Core.Text Core.:>
                     "sendDiagnosticInterrupt" Core.:>
                       Core.QueryParam "$.xgafv" Xgafv Core.:>
                         Core.QueryParam "access_token" Core.Text Core.:>
                           Core.QueryParam "callback" Core.Text Core.:>
                             Core.QueryParam "uploadType" Core.Text Core.:>
                               Core.QueryParam "upload_protocol" Core.Text
                                 Core.:>
                                 Core.QueryParam "alt" Core.AltJSON Core.:>
                                   Core.Post '[Core.JSON] ()

-- | Sends diagnostic interrupt to the instance.
--
-- /See:/ 'newComputeInstancesSendDiagnosticInterrupt' smart constructor.
data ComputeInstancesSendDiagnosticInterrupt = ComputeInstancesSendDiagnosticInterrupt
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Name of the instance scoping this request.
    , instance' :: Core.Text
      -- | Project ID for this request.
    , project :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
      -- | The name of the zone for this request.
    , zone :: Core.Text
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ComputeInstancesSendDiagnosticInterrupt' with the minimum fields required to make a request.
newComputeInstancesSendDiagnosticInterrupt 
    ::  Core.Text
       -- ^  Name of the instance scoping this request. See 'instance''.
    -> Core.Text
       -- ^  Project ID for this request. See 'project'.
    -> Core.Text
       -- ^  The name of the zone for this request. See 'zone'.
    -> ComputeInstancesSendDiagnosticInterrupt
newComputeInstancesSendDiagnosticInterrupt instance' project zone =
  ComputeInstancesSendDiagnosticInterrupt
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , instance' = instance'
    , project = project
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    , zone = zone
    }

instance Core.GoogleRequest
           ComputeInstancesSendDiagnosticInterrupt
         where
        type Rs ComputeInstancesSendDiagnosticInterrupt = ()
        type Scopes ComputeInstancesSendDiagnosticInterrupt =
             '[CloudPlatform'FullControl, Compute'FullControl]
        requestClient
          ComputeInstancesSendDiagnosticInterrupt{..}
          = go project zone instance' xgafv accessToken
              callback
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              computeService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           ComputeInstancesSendDiagnosticInterruptResource)
                      Core.mempty

