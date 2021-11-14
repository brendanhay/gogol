{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE FlexibleInstances  #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-unused-binds      #-}
{-# OPTIONS_GHC -fno-warn-unused-imports    #-}

-- |
-- Module      : Network.Google.Resource.StorageTransfer.TransferOperations.Cancel
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Cancels a transfer. Use the transferOperations.get method to check if
-- the cancellation succeeded or if the operation completed despite the
-- \`cancel\` request. When you cancel an operation, the currently running
-- transfer is interrupted. For recurring transfer jobs, the next instance
-- of the transfer job will still run. For example, if your job is
-- configured to run every day at 1pm and you cancel Monday\'s operation at
-- 1:05pm, Monday\'s transfer will stop. However, a transfer job will still
-- be attempted on Tuesday. This applies only to currently running
-- operations. If an operation is not currently running, \`cancel\` does
-- nothing. *Caution:* Canceling a transfer job can leave your data in an
-- unknown state. We recommend that you restore the state at both the
-- destination and the source after the \`cancel\` request completes so
-- that your data is in a consistent state. When you cancel a job, the next
-- job computes a delta of files and may repair any inconsistent state. For
-- instance, if you run a job every day, and today\'s job found 10 new
-- files and transferred five files before you canceled the job,
-- tomorrow\'s transfer operation will compute a new delta with the five
-- files that were not copied today plus any new files discovered tomorrow.
--
-- /See:/ <https://cloud.google.com/storage-transfer/docs Storage Transfer API Reference> for @storagetransfer.transferOperations.cancel@.
module Network.Google.Resource.StorageTransfer.TransferOperations.Cancel
    (
    -- * REST Resource
      TransferOperationsCancelResource

    -- * Creating a Request
    , transferOperationsCancel
    , TransferOperationsCancel

    -- * Request Lenses
    , tocXgafv
    , tocUploadProtocol
    , tocAccessToken
    , tocUploadType
    , tocPayload
    , tocName
    , tocCallback
    ) where

import Network.Google.Prelude
import Network.Google.StorageTransfer.Types

-- | A resource alias for @storagetransfer.transferOperations.cancel@ method which the
-- 'TransferOperationsCancel' request conforms to.
type TransferOperationsCancelResource =
     "v1" :>
       CaptureMode "name" "cancel" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] CancelOperationRequest :>
                       Post '[JSON] Empty

-- | Cancels a transfer. Use the transferOperations.get method to check if
-- the cancellation succeeded or if the operation completed despite the
-- \`cancel\` request. When you cancel an operation, the currently running
-- transfer is interrupted. For recurring transfer jobs, the next instance
-- of the transfer job will still run. For example, if your job is
-- configured to run every day at 1pm and you cancel Monday\'s operation at
-- 1:05pm, Monday\'s transfer will stop. However, a transfer job will still
-- be attempted on Tuesday. This applies only to currently running
-- operations. If an operation is not currently running, \`cancel\` does
-- nothing. *Caution:* Canceling a transfer job can leave your data in an
-- unknown state. We recommend that you restore the state at both the
-- destination and the source after the \`cancel\` request completes so
-- that your data is in a consistent state. When you cancel a job, the next
-- job computes a delta of files and may repair any inconsistent state. For
-- instance, if you run a job every day, and today\'s job found 10 new
-- files and transferred five files before you canceled the job,
-- tomorrow\'s transfer operation will compute a new delta with the five
-- files that were not copied today plus any new files discovered tomorrow.
--
-- /See:/ 'transferOperationsCancel' smart constructor.
data TransferOperationsCancel =
  TransferOperationsCancel'
    { _tocXgafv :: !(Maybe Xgafv)
    , _tocUploadProtocol :: !(Maybe Text)
    , _tocAccessToken :: !(Maybe Text)
    , _tocUploadType :: !(Maybe Text)
    , _tocPayload :: !CancelOperationRequest
    , _tocName :: !Text
    , _tocCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'TransferOperationsCancel' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tocXgafv'
--
-- * 'tocUploadProtocol'
--
-- * 'tocAccessToken'
--
-- * 'tocUploadType'
--
-- * 'tocPayload'
--
-- * 'tocName'
--
-- * 'tocCallback'
transferOperationsCancel
    :: CancelOperationRequest -- ^ 'tocPayload'
    -> Text -- ^ 'tocName'
    -> TransferOperationsCancel
transferOperationsCancel pTocPayload_ pTocName_ =
  TransferOperationsCancel'
    { _tocXgafv = Nothing
    , _tocUploadProtocol = Nothing
    , _tocAccessToken = Nothing
    , _tocUploadType = Nothing
    , _tocPayload = pTocPayload_
    , _tocName = pTocName_
    , _tocCallback = Nothing
    }


-- | V1 error format.
tocXgafv :: Lens' TransferOperationsCancel (Maybe Xgafv)
tocXgafv = lens _tocXgafv (\ s a -> s{_tocXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
tocUploadProtocol :: Lens' TransferOperationsCancel (Maybe Text)
tocUploadProtocol
  = lens _tocUploadProtocol
      (\ s a -> s{_tocUploadProtocol = a})

-- | OAuth access token.
tocAccessToken :: Lens' TransferOperationsCancel (Maybe Text)
tocAccessToken
  = lens _tocAccessToken
      (\ s a -> s{_tocAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
tocUploadType :: Lens' TransferOperationsCancel (Maybe Text)
tocUploadType
  = lens _tocUploadType
      (\ s a -> s{_tocUploadType = a})

-- | Multipart request metadata.
tocPayload :: Lens' TransferOperationsCancel CancelOperationRequest
tocPayload
  = lens _tocPayload (\ s a -> s{_tocPayload = a})

-- | The name of the operation resource to be cancelled.
tocName :: Lens' TransferOperationsCancel Text
tocName = lens _tocName (\ s a -> s{_tocName = a})

-- | JSONP
tocCallback :: Lens' TransferOperationsCancel (Maybe Text)
tocCallback
  = lens _tocCallback (\ s a -> s{_tocCallback = a})

instance GoogleRequest TransferOperationsCancel where
        type Rs TransferOperationsCancel = Empty
        type Scopes TransferOperationsCancel =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient TransferOperationsCancel'{..}
          = go _tocName _tocXgafv _tocUploadProtocol
              _tocAccessToken
              _tocUploadType
              _tocCallback
              (Just AltJSON)
              _tocPayload
              storageTransferService
          where go
                  = buildClient
                      (Proxy :: Proxy TransferOperationsCancelResource)
                      mempty
