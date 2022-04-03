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
-- Module      : Gogol.RemoteBuildExecution.Blobs.BatchUpdate
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Upload many blobs at once. The server may enforce a limit of the combined total size of blobs to be uploaded using this API. This limit may be obtained using the Capabilities API. Requests exceeding the limit should either be split into smaller chunks or uploaded using the ByteStream API, as appropriate. This request is equivalent to calling a Bytestream @Write@ request on each individual blob, in parallel. The requests may succeed or fail independently. Errors: * @INVALID_ARGUMENT@: The client attempted to upload more than the server supported limit. Individual requests may return the following errors, additionally: * @RESOURCE_EXHAUSTED@: There is insufficient disk quota to store the blob. * @INVALID_ARGUMENT@: The Digest does not match the provided data.
--
-- /See:/ <https://cloud.google.com/remote-build-execution/docs/ Remote Build Execution API Reference> for @remotebuildexecution.blobs.batchUpdate@.
module Gogol.RemoteBuildExecution.Blobs.BatchUpdate
  ( -- * Resource
    RemoteBuildExecutionBlobsBatchUpdateResource,

    -- ** Constructing a Request
    RemoteBuildExecutionBlobsBatchUpdate (..),
    newRemoteBuildExecutionBlobsBatchUpdate,
  )
where

import qualified Gogol.Prelude as Core
import Gogol.RemoteBuildExecution.Types

-- | A resource alias for @remotebuildexecution.blobs.batchUpdate@ method which the
-- 'RemoteBuildExecutionBlobsBatchUpdate' request conforms to.
type RemoteBuildExecutionBlobsBatchUpdateResource =
  "v2"
    Core.:> Core.Capture "instanceName" Core.Text
    Core.:> "blobs:batchUpdate"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody
              '[Core.JSON]
              BuildBazelRemoteExecutionV2BatchUpdateBlobsRequest
    Core.:> Core.Post
              '[Core.JSON]
              BuildBazelRemoteExecutionV2BatchUpdateBlobsResponse

-- | Upload many blobs at once. The server may enforce a limit of the combined total size of blobs to be uploaded using this API. This limit may be obtained using the Capabilities API. Requests exceeding the limit should either be split into smaller chunks or uploaded using the ByteStream API, as appropriate. This request is equivalent to calling a Bytestream @Write@ request on each individual blob, in parallel. The requests may succeed or fail independently. Errors: * @INVALID_ARGUMENT@: The client attempted to upload more than the server supported limit. Individual requests may return the following errors, additionally: * @RESOURCE_EXHAUSTED@: There is insufficient disk quota to store the blob. * @INVALID_ARGUMENT@: The Digest does not match the provided data.
--
-- /See:/ 'newRemoteBuildExecutionBlobsBatchUpdate' smart constructor.
data RemoteBuildExecutionBlobsBatchUpdate = RemoteBuildExecutionBlobsBatchUpdate
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The instance of the execution system to operate against. A server may support multiple instances of the execution system (with their own workers, storage, caches, etc.). The server MAY require use of this field to select between them in an implementation-defined fashion, otherwise it can be omitted.
    instanceName :: Core.Text,
    -- | Multipart request metadata.
    payload :: BuildBazelRemoteExecutionV2BatchUpdateBlobsRequest,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'RemoteBuildExecutionBlobsBatchUpdate' with the minimum fields required to make a request.
newRemoteBuildExecutionBlobsBatchUpdate ::
  -- |  The instance of the execution system to operate against. A server may support multiple instances of the execution system (with their own workers, storage, caches, etc.). The server MAY require use of this field to select between them in an implementation-defined fashion, otherwise it can be omitted. See 'instanceName'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  BuildBazelRemoteExecutionV2BatchUpdateBlobsRequest ->
  RemoteBuildExecutionBlobsBatchUpdate
newRemoteBuildExecutionBlobsBatchUpdate instanceName payload =
  RemoteBuildExecutionBlobsBatchUpdate
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      instanceName = instanceName,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    RemoteBuildExecutionBlobsBatchUpdate
  where
  type
    Rs RemoteBuildExecutionBlobsBatchUpdate =
      BuildBazelRemoteExecutionV2BatchUpdateBlobsResponse
  type
    Scopes RemoteBuildExecutionBlobsBatchUpdate =
      '[CloudPlatform'FullControl]
  requestClient
    RemoteBuildExecutionBlobsBatchUpdate {..} =
      go
        instanceName
        xgafv
        accessToken
        callback
        uploadType
        uploadProtocol
        (Core.Just Core.AltJSON)
        payload
        remoteBuildExecutionService
      where
        go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy
                  RemoteBuildExecutionBlobsBatchUpdateResource
            )
            Core.mempty
