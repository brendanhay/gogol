{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.Compute.PublicDelegatedPrefixes.Patch
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Patches the specified PublicDelegatedPrefix resource with the data included in the request. This method supports PATCH semantics and uses JSON merge patch format and processing rules.
--
-- /See:/ <https://cloud.google.com/compute/ Compute Engine API Reference> for @compute.publicDelegatedPrefixes.patch@.
module Gogol.Compute.PublicDelegatedPrefixes.Patch
  ( -- * Resource
    ComputePublicDelegatedPrefixesPatchResource,

    -- ** Constructing a Request
    newComputePublicDelegatedPrefixesPatch,
    ComputePublicDelegatedPrefixesPatch,
  )
where

import Gogol.Compute.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @compute.publicDelegatedPrefixes.patch@ method which the
-- 'ComputePublicDelegatedPrefixesPatch' request conforms to.
type ComputePublicDelegatedPrefixesPatchResource =
  "compute"
    Core.:> "v1"
    Core.:> "projects"
    Core.:> Core.Capture "project" Core.Text
    Core.:> "regions"
    Core.:> Core.Capture "region" Core.Text
    Core.:> "publicDelegatedPrefixes"
    Core.:> Core.Capture "publicDelegatedPrefix" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "requestId" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody
              '[Core.JSON]
              PublicDelegatedPrefix
    Core.:> Core.Patch '[Core.JSON] Operation

-- | Patches the specified PublicDelegatedPrefix resource with the data included in the request. This method supports PATCH semantics and uses JSON merge patch format and processing rules.
--
-- /See:/ 'newComputePublicDelegatedPrefixesPatch' smart constructor.
data ComputePublicDelegatedPrefixesPatch = ComputePublicDelegatedPrefixesPatch
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Multipart request metadata.
    payload :: PublicDelegatedPrefix,
    -- | Project ID for this request.
    project :: Core.Text,
    -- | Name of the PublicDelegatedPrefix resource to patch.
    publicDelegatedPrefix :: Core.Text,
    -- | Name of the region for this request.
    region :: Core.Text,
    -- | An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported ( 00000000-0000-0000-0000-000000000000).
    requestId :: (Core.Maybe Core.Text),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ComputePublicDelegatedPrefixesPatch' with the minimum fields required to make a request.
newComputePublicDelegatedPrefixesPatch ::
  -- |  Multipart request metadata. See 'payload'.
  PublicDelegatedPrefix ->
  -- |  Project ID for this request. See 'project'.
  Core.Text ->
  -- |  Name of the PublicDelegatedPrefix resource to patch. See 'publicDelegatedPrefix'.
  Core.Text ->
  -- |  Name of the region for this request. See 'region'.
  Core.Text ->
  ComputePublicDelegatedPrefixesPatch
newComputePublicDelegatedPrefixesPatch payload project publicDelegatedPrefix region =
  ComputePublicDelegatedPrefixesPatch
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      payload = payload,
      project = project,
      publicDelegatedPrefix = publicDelegatedPrefix,
      region = region,
      requestId = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    ComputePublicDelegatedPrefixesPatch
  where
  type
    Rs ComputePublicDelegatedPrefixesPatch =
      Operation
  type
    Scopes ComputePublicDelegatedPrefixesPatch =
      '[ "https://www.googleapis.com/auth/cloud-platform",
         "https://www.googleapis.com/auth/compute"
       ]
  requestClient ComputePublicDelegatedPrefixesPatch {..} =
    go
      project
      region
      publicDelegatedPrefix
      xgafv
      accessToken
      callback
      requestId
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      payload
      computeService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy
                ComputePublicDelegatedPrefixesPatchResource
          )
          Core.mempty