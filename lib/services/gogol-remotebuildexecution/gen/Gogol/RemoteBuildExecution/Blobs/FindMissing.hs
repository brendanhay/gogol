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
-- Module      : Gogol.RemoteBuildExecution.Blobs.FindMissing
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Determine if blobs are present in the CAS. Clients can use this API before uploading blobs to determine which ones are already present in the CAS and do not need to be uploaded again. Servers SHOULD increase the lifetimes of the referenced blobs if necessary and applicable. There are no method-specific errors.
--
-- /See:/ <https://cloud.google.com/remote-build-execution/docs/ Remote Build Execution API Reference> for @remotebuildexecution.blobs.findMissing@.
module Gogol.RemoteBuildExecution.Blobs.FindMissing
  ( -- * Resource
    RemoteBuildExecutionBlobsFindMissingResource,

    -- ** Constructing a Request
    RemoteBuildExecutionBlobsFindMissing (..),
    newRemoteBuildExecutionBlobsFindMissing,
  )
where

import qualified Gogol.Prelude as Core
import Gogol.RemoteBuildExecution.Types

-- | A resource alias for @remotebuildexecution.blobs.findMissing@ method which the
-- 'RemoteBuildExecutionBlobsFindMissing' request conforms to.
type RemoteBuildExecutionBlobsFindMissingResource =
  "v2"
    Core.:> Core.Capture "instanceName" Core.Text
    Core.:> "blobs:findMissing"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody
              '[Core.JSON]
              BuildBazelRemoteExecutionV2FindMissingBlobsRequest
    Core.:> Core.Post
              '[Core.JSON]
              BuildBazelRemoteExecutionV2FindMissingBlobsResponse

-- | Determine if blobs are present in the CAS. Clients can use this API before uploading blobs to determine which ones are already present in the CAS and do not need to be uploaded again. Servers SHOULD increase the lifetimes of the referenced blobs if necessary and applicable. There are no method-specific errors.
--
-- /See:/ 'newRemoteBuildExecutionBlobsFindMissing' smart constructor.
data RemoteBuildExecutionBlobsFindMissing = RemoteBuildExecutionBlobsFindMissing
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The instance of the execution system to operate against. A server may support multiple instances of the execution system (with their own workers, storage, caches, etc.). The server MAY require use of this field to select between them in an implementation-defined fashion, otherwise it can be omitted.
    instanceName :: Core.Text,
    -- | Multipart request metadata.
    payload :: BuildBazelRemoteExecutionV2FindMissingBlobsRequest,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'RemoteBuildExecutionBlobsFindMissing' with the minimum fields required to make a request.
newRemoteBuildExecutionBlobsFindMissing ::
  -- |  The instance of the execution system to operate against. A server may support multiple instances of the execution system (with their own workers, storage, caches, etc.). The server MAY require use of this field to select between them in an implementation-defined fashion, otherwise it can be omitted. See 'instanceName'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  BuildBazelRemoteExecutionV2FindMissingBlobsRequest ->
  RemoteBuildExecutionBlobsFindMissing
newRemoteBuildExecutionBlobsFindMissing instanceName payload =
  RemoteBuildExecutionBlobsFindMissing
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
    RemoteBuildExecutionBlobsFindMissing
  where
  type
    Rs RemoteBuildExecutionBlobsFindMissing =
      BuildBazelRemoteExecutionV2FindMissingBlobsResponse
  type
    Scopes RemoteBuildExecutionBlobsFindMissing =
      '[CloudPlatform'FullControl]
  requestClient
    RemoteBuildExecutionBlobsFindMissing {..} =
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
                  RemoteBuildExecutionBlobsFindMissingResource
            )
            Core.mempty
