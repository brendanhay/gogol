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
-- Module      : Gogol.Compute.PublicDelegatedPrefixes.Delete
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes the specified PublicDelegatedPrefix in the given region.
--
-- /See:/ <https://cloud.google.com/compute/ Compute Engine API Reference> for @compute.publicDelegatedPrefixes.delete@.
module Gogol.Compute.PublicDelegatedPrefixes.Delete
    (
    -- * Resource
      ComputePublicDelegatedPrefixesDeleteResource

    -- ** Constructing a Request
    , newComputePublicDelegatedPrefixesDelete
    , ComputePublicDelegatedPrefixesDelete
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Compute.Types

-- | A resource alias for @compute.publicDelegatedPrefixes.delete@ method which the
-- 'ComputePublicDelegatedPrefixesDelete' request conforms to.
type ComputePublicDelegatedPrefixesDeleteResource =
     "compute" Core.:>
       "v1" Core.:>
         "projects" Core.:>
           Core.Capture "project" Core.Text Core.:>
             "regions" Core.:>
               Core.Capture "region" Core.Text Core.:>
                 "publicDelegatedPrefixes" Core.:>
                   Core.Capture "publicDelegatedPrefix" Core.Text
                     Core.:>
                     Core.QueryParam "$.xgafv" Xgafv Core.:>
                       Core.QueryParam "access_token" Core.Text Core.:>
                         Core.QueryParam "callback" Core.Text Core.:>
                           Core.QueryParam "requestId" Core.Text Core.:>
                             Core.QueryParam "uploadType" Core.Text Core.:>
                               Core.QueryParam "upload_protocol" Core.Text
                                 Core.:>
                                 Core.QueryParam "alt" Core.AltJSON Core.:>
                                   Core.Delete '[Core.JSON] Operation

-- | Deletes the specified PublicDelegatedPrefix in the given region.
--
-- /See:/ 'newComputePublicDelegatedPrefixesDelete' smart constructor.
data ComputePublicDelegatedPrefixesDelete = ComputePublicDelegatedPrefixesDelete
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Project ID for this request.
    , project :: Core.Text
      -- | Name of the PublicDelegatedPrefix resource to delete.
    , publicDelegatedPrefix :: Core.Text
      -- | Name of the region of this request.
    , region :: Core.Text
      -- | An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported ( 00000000-0000-0000-0000-000000000000).
    , requestId :: (Core.Maybe Core.Text)
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ComputePublicDelegatedPrefixesDelete' with the minimum fields required to make a request.
newComputePublicDelegatedPrefixesDelete 
    ::  Core.Text
       -- ^  Project ID for this request. See 'project'.
    -> Core.Text
       -- ^  Name of the PublicDelegatedPrefix resource to delete. See 'publicDelegatedPrefix'.
    -> Core.Text
       -- ^  Name of the region of this request. See 'region'.
    -> ComputePublicDelegatedPrefixesDelete
newComputePublicDelegatedPrefixesDelete project publicDelegatedPrefix region =
  ComputePublicDelegatedPrefixesDelete
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , project = project
    , publicDelegatedPrefix = publicDelegatedPrefix
    , region = region
    , requestId = Core.Nothing
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           ComputePublicDelegatedPrefixesDelete
         where
        type Rs ComputePublicDelegatedPrefixesDelete =
             Operation
        type Scopes ComputePublicDelegatedPrefixesDelete =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute"]
        requestClient
          ComputePublicDelegatedPrefixesDelete{..}
          = go project region publicDelegatedPrefix xgafv
              accessToken
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
                           ComputePublicDelegatedPrefixesDeleteResource)
                      Core.mempty

