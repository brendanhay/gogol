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
-- Module      : Gogol.RemoteBuildExecution.Operations.WaitExecution
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Wait for an execution operation to complete. When the client initially makes the request, the server immediately responds with the current status of the execution. The server will leave the request stream open until the operation completes, and then respond with the completed operation. The server MAY choose to stream additional updates as execution progresses, such as to provide an update as to the state of the execution.
--
-- /See:/ <https://cloud.google.com/remote-build-execution/docs/ Remote Build Execution API Reference> for @remotebuildexecution.operations.waitExecution@.
module Gogol.RemoteBuildExecution.Operations.WaitExecution
  ( -- * Resource
    RemoteBuildExecutionOperationsWaitExecutionResource,

    -- ** Constructing a Request
    newRemoteBuildExecutionOperationsWaitExecution,
    RemoteBuildExecutionOperationsWaitExecution,
  )
where

import qualified Gogol.Prelude as Core
import Gogol.RemoteBuildExecution.Types

-- | A resource alias for @remotebuildexecution.operations.waitExecution@ method which the
-- 'RemoteBuildExecutionOperationsWaitExecution' request conforms to.
type RemoteBuildExecutionOperationsWaitExecutionResource =
  "v2"
    Core.:> Core.CaptureMode "name" "waitExecution" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody
              '[Core.JSON]
              BuildBazelRemoteExecutionV2WaitExecutionRequest
    Core.:> Core.Post '[Core.JSON] GoogleLongrunningOperation

-- | Wait for an execution operation to complete. When the client initially makes the request, the server immediately responds with the current status of the execution. The server will leave the request stream open until the operation completes, and then respond with the completed operation. The server MAY choose to stream additional updates as execution progresses, such as to provide an update as to the state of the execution.
--
-- /See:/ 'newRemoteBuildExecutionOperationsWaitExecution' smart constructor.
data RemoteBuildExecutionOperationsWaitExecution = RemoteBuildExecutionOperationsWaitExecution
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The name of the Operation returned by Execute.
    name :: Core.Text,
    -- | Multipart request metadata.
    payload :: BuildBazelRemoteExecutionV2WaitExecutionRequest,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'RemoteBuildExecutionOperationsWaitExecution' with the minimum fields required to make a request.
newRemoteBuildExecutionOperationsWaitExecution ::
  -- |  The name of the Operation returned by Execute. See 'name'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  BuildBazelRemoteExecutionV2WaitExecutionRequest ->
  RemoteBuildExecutionOperationsWaitExecution
newRemoteBuildExecutionOperationsWaitExecution name payload =
  RemoteBuildExecutionOperationsWaitExecution
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      name = name,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    RemoteBuildExecutionOperationsWaitExecution
  where
  type
    Rs RemoteBuildExecutionOperationsWaitExecution =
      GoogleLongrunningOperation
  type
    Scopes
      RemoteBuildExecutionOperationsWaitExecution =
      '[CloudPlatform'FullControl]
  requestClient
    RemoteBuildExecutionOperationsWaitExecution {..} =
      go
        name
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
                  RemoteBuildExecutionOperationsWaitExecutionResource
            )
            Core.mempty
