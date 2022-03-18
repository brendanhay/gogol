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
-- Module      : Gogol.Compute.Instances.GetSerialPortOutput
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the last 1 MB of serial port output from the specified instance.
--
-- /See:/ <https://cloud.google.com/compute/ Compute Engine API Reference> for @compute.instances.getSerialPortOutput@.
module Gogol.Compute.Instances.GetSerialPortOutput
    (
    -- * Resource
      ComputeInstancesGetSerialPortOutputResource

    -- ** Constructing a Request
    , newComputeInstancesGetSerialPortOutput
    , ComputeInstancesGetSerialPortOutput
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Compute.Types

-- | A resource alias for @compute.instances.getSerialPortOutput@ method which the
-- 'ComputeInstancesGetSerialPortOutput' request conforms to.
type ComputeInstancesGetSerialPortOutputResource =
     "compute" Core.:>
       "v1" Core.:>
         "projects" Core.:>
           Core.Capture "project" Core.Text Core.:>
             "zones" Core.:>
               Core.Capture "zone" Core.Text Core.:>
                 "instances" Core.:>
                   Core.Capture "instance" Core.Text Core.:>
                     "serialPort" Core.:>
                       Core.QueryParam "$.xgafv" Xgafv Core.:>
                         Core.QueryParam "access_token" Core.Text Core.:>
                           Core.QueryParam "callback" Core.Text Core.:>
                             Core.QueryParam "port" Core.Int32 Core.:>
                               Core.QueryParam "start" Core.Int64 Core.:>
                                 Core.QueryParam "uploadType" Core.Text Core.:>
                                   Core.QueryParam "upload_protocol" Core.Text
                                     Core.:>
                                     Core.QueryParam "alt" Core.AltJSON Core.:>
                                       Core.Get '[Core.JSON] SerialPortOutput

-- | Returns the last 1 MB of serial port output from the specified instance.
--
-- /See:/ 'newComputeInstancesGetSerialPortOutput' smart constructor.
data ComputeInstancesGetSerialPortOutput = ComputeInstancesGetSerialPortOutput
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Name of the instance for this request.
    , instance' :: Core.Text
      -- | Specifies which COM or serial port to retrieve data from.
    , port :: Core.Int32
      -- | Project ID for this request.
    , project :: Core.Text
      -- | Specifies the starting byte position of the output to return. To start with the first byte of output to the specified port, omit this field or set it to @0@. If the output for that byte position is available, this field matches the @start@ parameter sent with the request. If the amount of serial console output exceeds the size of the buffer (1 MB), the oldest output is discarded and is no longer available. If the requested start position refers to discarded output, the start position is adjusted to the oldest output still available, and the adjusted start position is returned as the @start@ property value. You can also provide a negative start position, which translates to the most recent number of bytes written to the serial port. For example, -3 is interpreted as the most recent 3 bytes written to the serial console.
    , start :: (Core.Maybe Core.Int64)
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
      -- | The name of the zone for this request.
    , zone :: Core.Text
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ComputeInstancesGetSerialPortOutput' with the minimum fields required to make a request.
newComputeInstancesGetSerialPortOutput 
    ::  Core.Text
       -- ^  Name of the instance for this request. See 'instance''.
    -> Core.Text
       -- ^  Project ID for this request. See 'project'.
    -> Core.Text
       -- ^  The name of the zone for this request. See 'zone'.
    -> ComputeInstancesGetSerialPortOutput
newComputeInstancesGetSerialPortOutput instance' project zone =
  ComputeInstancesGetSerialPortOutput
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , instance' = instance'
    , port = 1
    , project = project
    , start = Core.Nothing
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    , zone = zone
    }

instance Core.GoogleRequest
           ComputeInstancesGetSerialPortOutput
         where
        type Rs ComputeInstancesGetSerialPortOutput =
             SerialPortOutput
        type Scopes ComputeInstancesGetSerialPortOutput =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute",
               "https://www.googleapis.com/auth/compute.readonly"]
        requestClient ComputeInstancesGetSerialPortOutput{..}
          = go project zone instance' xgafv accessToken
              callback
              (Core.Just port)
              start
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              computeService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           ComputeInstancesGetSerialPortOutputResource)
                      Core.mempty

