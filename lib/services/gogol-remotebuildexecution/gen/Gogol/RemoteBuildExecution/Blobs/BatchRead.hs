{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE ImportQualifiedPost #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.RemoteBuildExecution.Blobs.BatchRead
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Download many blobs at once. The server may enforce a limit of the combined total size of blobs to be downloaded using this API. This limit may be obtained using the Capabilities API. Requests exceeding the limit should either be split into smaller chunks or downloaded using the ByteStream API, as appropriate. This request is equivalent to calling a Bytestream @Read@ request on each individual blob, in parallel. The requests may succeed or fail independently. Errors: * @INVALID_ARGUMENT@: The client attempted to read more than the server supported limit. Every error on individual read will be returned in the corresponding digest status.
--
-- /See:/ <https://cloud.google.com/remote-build-execution/docs/ Remote Build Execution API Reference> for @remotebuildexecution.blobs.batchRead@.
module Gogol.RemoteBuildExecution.Blobs.BatchRead
  ( -- * Resource
    RemoteBuildExecutionBlobsBatchReadResource,

    -- ** Constructing a Request
    RemoteBuildExecutionBlobsBatchRead (..),
    newRemoteBuildExecutionBlobsBatchRead,
  )
where

import Gogol.Prelude qualified as Core
import Gogol.RemoteBuildExecution.Types

-- | A resource alias for @remotebuildexecution.blobs.batchRead@ method which the
-- 'RemoteBuildExecutionBlobsBatchRead' request conforms to.
type RemoteBuildExecutionBlobsBatchReadResource =
  "v2"
    Core.:> Core.Capture "instanceName" Core.Text
    Core.:> "blobs:batchRead"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody
              '[Core.JSON]
              BuildBazelRemoteExecutionV2BatchReadBlobsRequest
    Core.:> Core.Post
              '[Core.JSON]
              BuildBazelRemoteExecutionV2BatchReadBlobsResponse

-- | Download many blobs at once. The server may enforce a limit of the combined total size of blobs to be downloaded using this API. This limit may be obtained using the Capabilities API. Requests exceeding the limit should either be split into smaller chunks or downloaded using the ByteStream API, as appropriate. This request is equivalent to calling a Bytestream @Read@ request on each individual blob, in parallel. The requests may succeed or fail independently. Errors: * @INVALID_ARGUMENT@: The client attempted to read more than the server supported limit. Every error on individual read will be returned in the corresponding digest status.
--
-- /See:/ 'newRemoteBuildExecutionBlobsBatchRead' smart constructor.
data RemoteBuildExecutionBlobsBatchRead = RemoteBuildExecutionBlobsBatchRead
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The instance of the execution system to operate against. A server may support multiple instances of the execution system (with their own workers, storage, caches, etc.). The server MAY require use of this field to select between them in an implementation-defined fashion, otherwise it can be omitted.
    instanceName :: Core.Text,
    -- | Multipart request metadata.
    payload :: BuildBazelRemoteExecutionV2BatchReadBlobsRequest,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'RemoteBuildExecutionBlobsBatchRead' with the minimum fields required to make a request.
newRemoteBuildExecutionBlobsBatchRead ::
  -- |  The instance of the execution system to operate against. A server may support multiple instances of the execution system (with their own workers, storage, caches, etc.). The server MAY require use of this field to select between them in an implementation-defined fashion, otherwise it can be omitted. See 'instanceName'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  BuildBazelRemoteExecutionV2BatchReadBlobsRequest ->
  RemoteBuildExecutionBlobsBatchRead
newRemoteBuildExecutionBlobsBatchRead instanceName payload =
  RemoteBuildExecutionBlobsBatchRead
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      instanceName = instanceName,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest RemoteBuildExecutionBlobsBatchRead where
  type
    Rs RemoteBuildExecutionBlobsBatchRead =
      BuildBazelRemoteExecutionV2BatchReadBlobsResponse
  type
    Scopes RemoteBuildExecutionBlobsBatchRead =
      '[CloudPlatform'FullControl]
  requestClient RemoteBuildExecutionBlobsBatchRead {..} =
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
              Core.Proxy RemoteBuildExecutionBlobsBatchReadResource
          )
          Core.mempty
