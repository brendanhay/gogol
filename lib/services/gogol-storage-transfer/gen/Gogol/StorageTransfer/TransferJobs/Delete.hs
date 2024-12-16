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
-- Module      : Gogol.StorageTransfer.TransferJobs.Delete
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a transfer job. Deleting a transfer job sets its status to DELETED.
--
-- /See:/ <https://cloud.google.com/storage-transfer/docs Storage Transfer API Reference> for @storagetransfer.transferJobs.delete@.
module Gogol.StorageTransfer.TransferJobs.Delete
    (
    -- * Resource
      StorageTransferTransferJobsDeleteResource

    -- ** Constructing a Request
    , StorageTransferTransferJobsDelete (..)
    , newStorageTransferTransferJobsDelete
    ) where

import qualified Gogol.Prelude as Core
import Gogol.StorageTransfer.Types

-- | A resource alias for @storagetransfer.transferJobs.delete@ method which the
-- 'StorageTransferTransferJobsDelete' request conforms to.
type StorageTransferTransferJobsDeleteResource =
     "v1" Core.:>
       Core.Capture "jobName" Core.Text Core.:>
         Core.QueryParam "projectId" Core.Text Core.:>
           Core.QueryParam "$.xgafv" Xgafv Core.:>
             Core.QueryParam "access_token" Core.Text Core.:>
               Core.QueryParam "callback" Core.Text Core.:>
                 Core.QueryParam "uploadType" Core.Text Core.:>
                   Core.QueryParam "upload_protocol" Core.Text Core.:>
                     Core.QueryParam "alt" Core.AltJSON Core.:>
                       Core.Delete '[Core.JSON] Empty

-- | Deletes a transfer job. Deleting a transfer job sets its status to DELETED.
--
-- /See:/ 'newStorageTransferTransferJobsDelete' smart constructor.
data StorageTransferTransferJobsDelete = StorageTransferTransferJobsDelete
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Required. The job to delete.
    , jobName :: Core.Text
      -- | Required. The ID of the Google Cloud project that owns the job.
    , projectId :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'StorageTransferTransferJobsDelete' with the minimum fields required to make a request.
newStorageTransferTransferJobsDelete 
    ::  Core.Text
       -- ^  Required. The job to delete. See 'jobName'.
    -> Core.Text
       -- ^  Required. The ID of the Google Cloud project that owns the job. See 'projectId'.
    -> StorageTransferTransferJobsDelete
newStorageTransferTransferJobsDelete jobName projectId =
  StorageTransferTransferJobsDelete
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , jobName = jobName
    , projectId = projectId
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           StorageTransferTransferJobsDelete
         where
        type Rs StorageTransferTransferJobsDelete = Empty
        type Scopes StorageTransferTransferJobsDelete =
             '[CloudPlatform'FullControl]
        requestClient StorageTransferTransferJobsDelete{..}
          = go jobName (Core.Just projectId) xgafv accessToken
              callback
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              storageTransferService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy StorageTransferTransferJobsDeleteResource)
                      Core.mempty

