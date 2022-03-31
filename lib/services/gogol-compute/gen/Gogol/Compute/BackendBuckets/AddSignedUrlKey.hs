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
-- Module      : Gogol.Compute.BackendBuckets.AddSignedUrlKey
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Adds a key for validating requests with signed URLs for this backend bucket.
--
-- /See:/ <https://cloud.google.com/compute/ Compute Engine API Reference> for @compute.backendBuckets.addSignedUrlKey@.
module Gogol.Compute.BackendBuckets.AddSignedUrlKey
  ( -- * Resource
    ComputeBackendBucketsAddSignedUrlKeyResource,

    -- ** Constructing a Request
    newComputeBackendBucketsAddSignedUrlKey,
    ComputeBackendBucketsAddSignedUrlKey,
  )
where

import Gogol.Compute.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @compute.backendBuckets.addSignedUrlKey@ method which the
-- 'ComputeBackendBucketsAddSignedUrlKey' request conforms to.
type ComputeBackendBucketsAddSignedUrlKeyResource =
  "compute"
    Core.:> "v1"
    Core.:> "projects"
    Core.:> Core.Capture "project" Core.Text
    Core.:> "global"
    Core.:> "backendBuckets"
    Core.:> Core.Capture "backendBucket" Core.Text
    Core.:> "addSignedUrlKey"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "requestId" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] SignedUrlKey
    Core.:> Core.Post '[Core.JSON] Operation

-- | Adds a key for validating requests with signed URLs for this backend bucket.
--
-- /See:/ 'newComputeBackendBucketsAddSignedUrlKey' smart constructor.
data ComputeBackendBucketsAddSignedUrlKey = ComputeBackendBucketsAddSignedUrlKey
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | Name of the BackendBucket resource to which the Signed URL Key should be added. The name should conform to RFC1035.
    backendBucket :: Core.Text,
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Multipart request metadata.
    payload :: SignedUrlKey,
    -- | Project ID for this request.
    project :: Core.Text,
    -- | An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported ( 00000000-0000-0000-0000-000000000000).
    requestId :: (Core.Maybe Core.Text),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ComputeBackendBucketsAddSignedUrlKey' with the minimum fields required to make a request.
newComputeBackendBucketsAddSignedUrlKey ::
  -- |  Name of the BackendBucket resource to which the Signed URL Key should be added. The name should conform to RFC1035. See 'backendBucket'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  SignedUrlKey ->
  -- |  Project ID for this request. See 'project'.
  Core.Text ->
  ComputeBackendBucketsAddSignedUrlKey
newComputeBackendBucketsAddSignedUrlKey backendBucket payload project =
  ComputeBackendBucketsAddSignedUrlKey
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      backendBucket = backendBucket,
      callback = Core.Nothing,
      payload = payload,
      project = project,
      requestId = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    ComputeBackendBucketsAddSignedUrlKey
  where
  type
    Rs ComputeBackendBucketsAddSignedUrlKey =
      Operation
  type
    Scopes ComputeBackendBucketsAddSignedUrlKey =
      '[CloudPlatform'FullControl, Compute'FullControl]
  requestClient
    ComputeBackendBucketsAddSignedUrlKey {..} =
      go
        project
        backendBucket
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
                  ComputeBackendBucketsAddSignedUrlKeyResource
            )
            Core.mempty
