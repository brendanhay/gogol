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
-- Module      : Network.Google.Resource.StorageTransfer.TransferOperations.Resume
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Resumes a transfer operation that is paused.
--
-- /See:/ <https://cloud.google.com/storage-transfer/docs Storage Transfer API Reference> for @storagetransfer.transferOperations.resume@.
module Network.Google.Resource.StorageTransfer.TransferOperations.Resume
    (
    -- * REST Resource
      TransferOperationsResumeResource

    -- * Creating a Request
    , transferOperationsResume
    , TransferOperationsResume

    -- * Request Lenses
    , torXgafv
    , torUploadProtocol
    , torAccessToken
    , torUploadType
    , torPayload
    , torName
    , torCallback
    ) where

import Network.Google.Prelude
import Network.Google.StorageTransfer.Types

-- | A resource alias for @storagetransfer.transferOperations.resume@ method which the
-- 'TransferOperationsResume' request conforms to.
type TransferOperationsResumeResource =
     "v1" :>
       CaptureMode "name" "resume" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] ResumeTransferOperationRequest :>
                       Post '[JSON] Empty

-- | Resumes a transfer operation that is paused.
--
-- /See:/ 'transferOperationsResume' smart constructor.
data TransferOperationsResume =
  TransferOperationsResume'
    { _torXgafv :: !(Maybe Xgafv)
    , _torUploadProtocol :: !(Maybe Text)
    , _torAccessToken :: !(Maybe Text)
    , _torUploadType :: !(Maybe Text)
    , _torPayload :: !ResumeTransferOperationRequest
    , _torName :: !Text
    , _torCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'TransferOperationsResume' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'torXgafv'
--
-- * 'torUploadProtocol'
--
-- * 'torAccessToken'
--
-- * 'torUploadType'
--
-- * 'torPayload'
--
-- * 'torName'
--
-- * 'torCallback'
transferOperationsResume
    :: ResumeTransferOperationRequest -- ^ 'torPayload'
    -> Text -- ^ 'torName'
    -> TransferOperationsResume
transferOperationsResume pTorPayload_ pTorName_ =
  TransferOperationsResume'
    { _torXgafv = Nothing
    , _torUploadProtocol = Nothing
    , _torAccessToken = Nothing
    , _torUploadType = Nothing
    , _torPayload = pTorPayload_
    , _torName = pTorName_
    , _torCallback = Nothing
    }


-- | V1 error format.
torXgafv :: Lens' TransferOperationsResume (Maybe Xgafv)
torXgafv = lens _torXgafv (\ s a -> s{_torXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
torUploadProtocol :: Lens' TransferOperationsResume (Maybe Text)
torUploadProtocol
  = lens _torUploadProtocol
      (\ s a -> s{_torUploadProtocol = a})

-- | OAuth access token.
torAccessToken :: Lens' TransferOperationsResume (Maybe Text)
torAccessToken
  = lens _torAccessToken
      (\ s a -> s{_torAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
torUploadType :: Lens' TransferOperationsResume (Maybe Text)
torUploadType
  = lens _torUploadType
      (\ s a -> s{_torUploadType = a})

-- | Multipart request metadata.
torPayload :: Lens' TransferOperationsResume ResumeTransferOperationRequest
torPayload
  = lens _torPayload (\ s a -> s{_torPayload = a})

-- | Required. The name of the transfer operation.
torName :: Lens' TransferOperationsResume Text
torName = lens _torName (\ s a -> s{_torName = a})

-- | JSONP
torCallback :: Lens' TransferOperationsResume (Maybe Text)
torCallback
  = lens _torCallback (\ s a -> s{_torCallback = a})

instance GoogleRequest TransferOperationsResume where
        type Rs TransferOperationsResume = Empty
        type Scopes TransferOperationsResume =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient TransferOperationsResume'{..}
          = go _torName _torXgafv _torUploadProtocol
              _torAccessToken
              _torUploadType
              _torCallback
              (Just AltJSON)
              _torPayload
              storageTransferService
          where go
                  = buildClient
                      (Proxy :: Proxy TransferOperationsResumeResource)
                      mempty
