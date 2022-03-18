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
-- Module      : Gogol.RemoteBuildExecution.Blobs.GetTree
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Fetch the entire directory tree rooted at a node. This request must be targeted at a Directory stored in the ContentAddressableStorage (CAS). The server will enumerate the @Directory@ tree recursively and return every node descended from the root. The GetTreeRequest.page/token parameter can be used to skip ahead in the stream (e.g. when retrying a partially completed and aborted request), by setting it to a value taken from GetTreeResponse.next/page_token of the last successfully processed GetTreeResponse). The exact traversal order is unspecified and, unless retrieving subsequent pages from an earlier request, is not guaranteed to be stable across multiple invocations of @GetTree@. If part of the tree is missing from the CAS, the server will return the portion present and omit the rest. Errors: * @NOT_FOUND@: The requested tree root is not present in the CAS.
--
-- /See:/ <https://cloud.google.com/remote-build-execution/docs/ Remote Build Execution API Reference> for @remotebuildexecution.blobs.getTree@.
module Gogol.RemoteBuildExecution.Blobs.GetTree
    (
    -- * Resource
      RemoteBuildExecutionBlobsGetTreeResource

    -- ** Constructing a Request
    , newRemoteBuildExecutionBlobsGetTree
    , RemoteBuildExecutionBlobsGetTree
    ) where

import qualified Gogol.Prelude as Core
import Gogol.RemoteBuildExecution.Types

-- | A resource alias for @remotebuildexecution.blobs.getTree@ method which the
-- 'RemoteBuildExecutionBlobsGetTree' request conforms to.
type RemoteBuildExecutionBlobsGetTreeResource =
     "v2" Core.:>
       Core.Capture "instanceName" Core.Text Core.:>
         "blobs" Core.:>
           Core.Capture "hash" Core.Text Core.:>
             Core.CaptureMode "sizeBytes" "getTree" Core.Int64
               Core.:>
               Core.QueryParam "$.xgafv" Xgafv Core.:>
                 Core.QueryParam "access_token" Core.Text Core.:>
                   Core.QueryParam "callback" Core.Text Core.:>
                     Core.QueryParam "pageSize" Core.Int32 Core.:>
                       Core.QueryParam "pageToken" Core.Text Core.:>
                         Core.QueryParam "uploadType" Core.Text Core.:>
                           Core.QueryParam "upload_protocol" Core.Text Core.:>
                             Core.QueryParam "alt" Core.AltJSON Core.:>
                               Core.Get '[Core.JSON]
                                 BuildBazelRemoteExecutionV2GetTreeResponse

-- | Fetch the entire directory tree rooted at a node. This request must be targeted at a Directory stored in the ContentAddressableStorage (CAS). The server will enumerate the @Directory@ tree recursively and return every node descended from the root. The GetTreeRequest.page/token parameter can be used to skip ahead in the stream (e.g. when retrying a partially completed and aborted request), by setting it to a value taken from GetTreeResponse.next/page_token of the last successfully processed GetTreeResponse). The exact traversal order is unspecified and, unless retrieving subsequent pages from an earlier request, is not guaranteed to be stable across multiple invocations of @GetTree@. If part of the tree is missing from the CAS, the server will return the portion present and omit the rest. Errors: * @NOT_FOUND@: The requested tree root is not present in the CAS.
--
-- /See:/ 'newRemoteBuildExecutionBlobsGetTree' smart constructor.
data RemoteBuildExecutionBlobsGetTree = RemoteBuildExecutionBlobsGetTree
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | The hash. In the case of SHA-256, it will always be a lowercase hex string exactly 64 characters long.
    , hash :: Core.Text
      -- | The instance of the execution system to operate against. A server may support multiple instances of the execution system (with their own workers, storage, caches, etc.). The server MAY require use of this field to select between them in an implementation-defined fashion, otherwise it can be omitted.
    , instanceName :: Core.Text
      -- | A maximum page size to request. If present, the server will request no more than this many items. Regardless of whether a page size is specified, the server may place its own limit on the number of items to be returned and require the client to retrieve more items using a subsequent request.
    , pageSize :: (Core.Maybe Core.Int32)
      -- | A page token, which must be a value received in a previous GetTreeResponse. If present, the server will use that token as an offset, returning only that page and the ones that succeed it.
    , pageToken :: (Core.Maybe Core.Text)
      -- | The size of the blob, in bytes.
    , sizeBytes :: Core.Int64
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'RemoteBuildExecutionBlobsGetTree' with the minimum fields required to make a request.
newRemoteBuildExecutionBlobsGetTree 
    ::  Core.Text
       -- ^  The hash. In the case of SHA-256, it will always be a lowercase hex string exactly 64 characters long. See 'hash'.
    -> Core.Text
       -- ^  The instance of the execution system to operate against. A server may support multiple instances of the execution system (with their own workers, storage, caches, etc.). The server MAY require use of this field to select between them in an implementation-defined fashion, otherwise it can be omitted. See 'instanceName'.
    -> Core.Int64
       -- ^  The size of the blob, in bytes. See 'sizeBytes'.
    -> RemoteBuildExecutionBlobsGetTree
newRemoteBuildExecutionBlobsGetTree hash instanceName sizeBytes =
  RemoteBuildExecutionBlobsGetTree
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , hash = hash
    , instanceName = instanceName
    , pageSize = Core.Nothing
    , pageToken = Core.Nothing
    , sizeBytes = sizeBytes
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           RemoteBuildExecutionBlobsGetTree
         where
        type Rs RemoteBuildExecutionBlobsGetTree =
             BuildBazelRemoteExecutionV2GetTreeResponse
        type Scopes RemoteBuildExecutionBlobsGetTree =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient RemoteBuildExecutionBlobsGetTree{..}
          = go instanceName hash sizeBytes xgafv accessToken
              callback
              pageSize
              pageToken
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              remoteBuildExecutionService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy RemoteBuildExecutionBlobsGetTreeResource)
                      Core.mempty

