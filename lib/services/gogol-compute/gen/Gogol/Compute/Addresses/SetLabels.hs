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
-- Module      : Gogol.Compute.Addresses.SetLabels
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Sets the labels on an Address. To learn more about labels, read the Labeling Resources documentation.
--
-- /See:/ <https://cloud.google.com/compute/ Compute Engine API Reference> for @compute.addresses.setLabels@.
module Gogol.Compute.Addresses.SetLabels
    (
    -- * Resource
      ComputeAddressesSetLabelsResource

    -- ** Constructing a Request
    , ComputeAddressesSetLabels (..)
    , newComputeAddressesSetLabels
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Compute.Types

-- | A resource alias for @compute.addresses.setLabels@ method which the
-- 'ComputeAddressesSetLabels' request conforms to.
type ComputeAddressesSetLabelsResource =
     "compute" Core.:>
       "v1" Core.:>
         "projects" Core.:>
           Core.Capture "project" Core.Text Core.:>
             "regions" Core.:>
               Core.Capture "region" Core.Text Core.:>
                 "addresses" Core.:>
                   Core.Capture "resource" Core.Text Core.:>
                     "setLabels" Core.:>
                       Core.QueryParam "$.xgafv" Xgafv Core.:>
                         Core.QueryParam "access_token" Core.Text Core.:>
                           Core.QueryParam "callback" Core.Text Core.:>
                             Core.QueryParam "requestId" Core.Text Core.:>
                               Core.QueryParam "uploadType" Core.Text Core.:>
                                 Core.QueryParam "upload_protocol" Core.Text
                                   Core.:>
                                   Core.QueryParam "alt" Core.AltJSON Core.:>
                                     Core.ReqBody '[Core.JSON]
                                       RegionSetLabelsRequest
                                       Core.:> Core.Post '[Core.JSON] Operation

-- | Sets the labels on an Address. To learn more about labels, read the Labeling Resources documentation.
--
-- /See:/ 'newComputeAddressesSetLabels' smart constructor.
data ComputeAddressesSetLabels = ComputeAddressesSetLabels
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Multipart request metadata.
    , payload :: RegionSetLabelsRequest
      -- | Project ID for this request.
    , project :: Core.Text
      -- | The region for this request.
    , region :: Core.Text
      -- | An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported ( 00000000-0000-0000-0000-000000000000).
    , requestId :: (Core.Maybe Core.Text)
      -- | Name or id of the resource for this request.
    , resource :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ComputeAddressesSetLabels' with the minimum fields required to make a request.
newComputeAddressesSetLabels 
    ::  RegionSetLabelsRequest
       -- ^  Multipart request metadata. See 'payload'.
    -> Core.Text
       -- ^  Project ID for this request. See 'project'.
    -> Core.Text
       -- ^  The region for this request. See 'region'.
    -> Core.Text
       -- ^  Name or id of the resource for this request. See 'resource'.
    -> ComputeAddressesSetLabels
newComputeAddressesSetLabels payload project region resource =
  ComputeAddressesSetLabels
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , payload = payload
    , project = project
    , region = region
    , requestId = Core.Nothing
    , resource = resource
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest ComputeAddressesSetLabels
         where
        type Rs ComputeAddressesSetLabels = Operation
        type Scopes ComputeAddressesSetLabels =
             '[CloudPlatform'FullControl, Compute'FullControl]
        requestClient ComputeAddressesSetLabels{..}
          = go project region resource xgafv accessToken
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
                         Core.Proxy ComputeAddressesSetLabelsResource)
                      Core.mempty

