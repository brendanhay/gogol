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
-- /See:/ <https://cloud.google.com/storage/transfer Google Storage Transfer API Reference> for @storagetransfer.transferOperations.resume@.
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
    , torPp
    , torAccessToken
    , torUploadType
    , torPayload
    , torBearerToken
    , torName
    , torCallback
    ) where

import           Network.Google.Prelude
import           Network.Google.StorageTransfer.Types

-- | A resource alias for @storagetransfer.transferOperations.resume@ method which the
-- 'TransferOperationsResume' request conforms to.
type TransferOperationsResumeResource =
     "v1" :>
       CaptureMode "name" "resume" Text :>
         QueryParam "$.xgafv" Text :>
           QueryParam "upload_protocol" Text :>
             QueryParam "pp" Bool :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "bearer_token" Text :>
                     QueryParam "callback" Text :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] ResumeTransferOperationRequest :>
                           Post '[JSON] Empty

-- | Resumes a transfer operation that is paused.
--
-- /See:/ 'transferOperationsResume' smart constructor.
data TransferOperationsResume = TransferOperationsResume
    { _torXgafv          :: !(Maybe Text)
    , _torUploadProtocol :: !(Maybe Text)
    , _torPp             :: !Bool
    , _torAccessToken    :: !(Maybe Text)
    , _torUploadType     :: !(Maybe Text)
    , _torPayload        :: !ResumeTransferOperationRequest
    , _torBearerToken    :: !(Maybe Text)
    , _torName           :: !Text
    , _torCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'TransferOperationsResume' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'torXgafv'
--
-- * 'torUploadProtocol'
--
-- * 'torPp'
--
-- * 'torAccessToken'
--
-- * 'torUploadType'
--
-- * 'torPayload'
--
-- * 'torBearerToken'
--
-- * 'torName'
--
-- * 'torCallback'
transferOperationsResume
    :: ResumeTransferOperationRequest -- ^ 'torPayload'
    -> Text -- ^ 'torName'
    -> TransferOperationsResume
transferOperationsResume pTorPayload_ pTorName_ =
    TransferOperationsResume
    { _torXgafv = Nothing
    , _torUploadProtocol = Nothing
    , _torPp = True
    , _torAccessToken = Nothing
    , _torUploadType = Nothing
    , _torPayload = pTorPayload_
    , _torBearerToken = Nothing
    , _torName = pTorName_
    , _torCallback = Nothing
    }

-- | V1 error format.
torXgafv :: Lens' TransferOperationsResume (Maybe Text)
torXgafv = lens _torXgafv (\ s a -> s{_torXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
torUploadProtocol :: Lens' TransferOperationsResume (Maybe Text)
torUploadProtocol
  = lens _torUploadProtocol
      (\ s a -> s{_torUploadProtocol = a})

-- | Pretty-print response.
torPp :: Lens' TransferOperationsResume Bool
torPp = lens _torPp (\ s a -> s{_torPp = a})

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

-- | OAuth bearer token.
torBearerToken :: Lens' TransferOperationsResume (Maybe Text)
torBearerToken
  = lens _torBearerToken
      (\ s a -> s{_torBearerToken = a})

-- | The name of the transfer operation. Required.
torName :: Lens' TransferOperationsResume Text
torName = lens _torName (\ s a -> s{_torName = a})

-- | JSONP
torCallback :: Lens' TransferOperationsResume (Maybe Text)
torCallback
  = lens _torCallback (\ s a -> s{_torCallback = a})

instance GoogleRequest TransferOperationsResume where
        type Rs TransferOperationsResume = Empty
        requestClient TransferOperationsResume{..}
          = go _torName _torXgafv _torUploadProtocol
              (Just _torPp)
              _torAccessToken
              _torUploadType
              _torBearerToken
              _torCallback
              (Just AltJSON)
              _torPayload
              storageTransferService
          where go
                  = buildClient
                      (Proxy :: Proxy TransferOperationsResumeResource)
                      mempty
