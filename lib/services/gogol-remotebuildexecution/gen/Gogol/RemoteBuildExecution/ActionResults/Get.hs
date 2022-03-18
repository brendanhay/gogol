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
-- Module      : Gogol.RemoteBuildExecution.ActionResults.Get
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieve a cached execution result. Implementations SHOULD ensure that any blobs referenced from the ContentAddressableStorage are available at the time of returning the ActionResult and will be for some period of time afterwards. The lifetimes of the referenced blobs SHOULD be increased if necessary and applicable. Errors: * @NOT_FOUND@: The requested @ActionResult@ is not in the cache.
--
-- /See:/ <https://cloud.google.com/remote-build-execution/docs/ Remote Build Execution API Reference> for @remotebuildexecution.actionResults.get@.
module Gogol.RemoteBuildExecution.ActionResults.Get
  ( -- * Resource
    RemoteBuildExecutionActionResultsGetResource,

    -- ** Constructing a Request
    newRemoteBuildExecutionActionResultsGet,
    RemoteBuildExecutionActionResultsGet,
  )
where

import qualified Gogol.Prelude as Core
import Gogol.RemoteBuildExecution.Types

-- | A resource alias for @remotebuildexecution.actionResults.get@ method which the
-- 'RemoteBuildExecutionActionResultsGet' request conforms to.
type RemoteBuildExecutionActionResultsGetResource =
  "v2"
    Core.:> Core.Capture "instanceName" Core.Text
    Core.:> "actionResults"
    Core.:> Core.Capture "hash" Core.Text
    Core.:> Core.Capture "sizeBytes" Core.Int64
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParams "inlineOutputFiles" Core.Text
    Core.:> Core.QueryParam "inlineStderr" Core.Bool
    Core.:> Core.QueryParam "inlineStdout" Core.Bool
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get
              '[Core.JSON]
              BuildBazelRemoteExecutionV2ActionResult

-- | Retrieve a cached execution result. Implementations SHOULD ensure that any blobs referenced from the ContentAddressableStorage are available at the time of returning the ActionResult and will be for some period of time afterwards. The lifetimes of the referenced blobs SHOULD be increased if necessary and applicable. Errors: * @NOT_FOUND@: The requested @ActionResult@ is not in the cache.
--
-- /See:/ 'newRemoteBuildExecutionActionResultsGet' smart constructor.
data RemoteBuildExecutionActionResultsGet = RemoteBuildExecutionActionResultsGet
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The hash. In the case of SHA-256, it will always be a lowercase hex string exactly 64 characters long.
    hash :: Core.Text,
    -- | A hint to the server to inline the contents of the listed output files. Each path needs to exactly match one file path in either @output_paths@ or @output_files@ (DEPRECATED since v2.1) in the Command message.
    inlineOutputFiles :: (Core.Maybe [Core.Text]),
    -- | A hint to the server to request inlining stderr in the ActionResult message.
    inlineStderr :: (Core.Maybe Core.Bool),
    -- | A hint to the server to request inlining stdout in the ActionResult message.
    inlineStdout :: (Core.Maybe Core.Bool),
    -- | The instance of the execution system to operate against. A server may support multiple instances of the execution system (with their own workers, storage, caches, etc.). The server MAY require use of this field to select between them in an implementation-defined fashion, otherwise it can be omitted.
    instanceName :: Core.Text,
    -- | The size of the blob, in bytes.
    sizeBytes :: Core.Int64,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'RemoteBuildExecutionActionResultsGet' with the minimum fields required to make a request.
newRemoteBuildExecutionActionResultsGet ::
  -- |  The hash. In the case of SHA-256, it will always be a lowercase hex string exactly 64 characters long. See 'hash'.
  Core.Text ->
  -- |  The instance of the execution system to operate against. A server may support multiple instances of the execution system (with their own workers, storage, caches, etc.). The server MAY require use of this field to select between them in an implementation-defined fashion, otherwise it can be omitted. See 'instanceName'.
  Core.Text ->
  -- |  The size of the blob, in bytes. See 'sizeBytes'.
  Core.Int64 ->
  RemoteBuildExecutionActionResultsGet
newRemoteBuildExecutionActionResultsGet hash instanceName sizeBytes =
  RemoteBuildExecutionActionResultsGet
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      hash = hash,
      inlineOutputFiles = Core.Nothing,
      inlineStderr = Core.Nothing,
      inlineStdout = Core.Nothing,
      instanceName = instanceName,
      sizeBytes = sizeBytes,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    RemoteBuildExecutionActionResultsGet
  where
  type
    Rs RemoteBuildExecutionActionResultsGet =
      BuildBazelRemoteExecutionV2ActionResult
  type
    Scopes RemoteBuildExecutionActionResultsGet =
      '["https://www.googleapis.com/auth/cloud-platform"]
  requestClient
    RemoteBuildExecutionActionResultsGet {..} =
      go
        instanceName
        hash
        sizeBytes
        xgafv
        accessToken
        callback
        (inlineOutputFiles Core.^. Core._Default)
        inlineStderr
        inlineStdout
        uploadType
        uploadProtocol
        (Core.Just Core.AltJSON)
        remoteBuildExecutionService
      where
        go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy
                  RemoteBuildExecutionActionResultsGetResource
            )
            Core.mempty
