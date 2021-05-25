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
-- Module      : Network.Google.Resource.StorageTransfer.TransferJobs.Run
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Attempts to start a new TransferOperation for the current TransferJob. A
-- TransferJob has a maximum of one active TransferOperation. If this
-- method is called while a TransferOperation is active, an error wil be
-- returned.
--
-- /See:/ <https://cloud.google.com/storage-transfer/docs Storage Transfer API Reference> for @storagetransfer.transferJobs.run@.
module Network.Google.Resource.StorageTransfer.TransferJobs.Run
    (
    -- * REST Resource
      TransferJobsRunResource

    -- * Creating a Request
    , transferJobsRun
    , TransferJobsRun

    -- * Request Lenses
    , tjrXgafv
    , tjrUploadProtocol
    , tjrAccessToken
    , tjrJobName
    , tjrUploadType
    , tjrPayload
    , tjrCallback
    ) where

import Network.Google.Prelude
import Network.Google.StorageTransfer.Types

-- | A resource alias for @storagetransfer.transferJobs.run@ method which the
-- 'TransferJobsRun' request conforms to.
type TransferJobsRunResource =
     "v1" :>
       CaptureMode "jobName" "run" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] RunTransferJobRequest :>
                       Post '[JSON] Operation

-- | Attempts to start a new TransferOperation for the current TransferJob. A
-- TransferJob has a maximum of one active TransferOperation. If this
-- method is called while a TransferOperation is active, an error wil be
-- returned.
--
-- /See:/ 'transferJobsRun' smart constructor.
data TransferJobsRun =
  TransferJobsRun'
    { _tjrXgafv :: !(Maybe Xgafv)
    , _tjrUploadProtocol :: !(Maybe Text)
    , _tjrAccessToken :: !(Maybe Text)
    , _tjrJobName :: !Text
    , _tjrUploadType :: !(Maybe Text)
    , _tjrPayload :: !RunTransferJobRequest
    , _tjrCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'TransferJobsRun' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tjrXgafv'
--
-- * 'tjrUploadProtocol'
--
-- * 'tjrAccessToken'
--
-- * 'tjrJobName'
--
-- * 'tjrUploadType'
--
-- * 'tjrPayload'
--
-- * 'tjrCallback'
transferJobsRun
    :: Text -- ^ 'tjrJobName'
    -> RunTransferJobRequest -- ^ 'tjrPayload'
    -> TransferJobsRun
transferJobsRun pTjrJobName_ pTjrPayload_ =
  TransferJobsRun'
    { _tjrXgafv = Nothing
    , _tjrUploadProtocol = Nothing
    , _tjrAccessToken = Nothing
    , _tjrJobName = pTjrJobName_
    , _tjrUploadType = Nothing
    , _tjrPayload = pTjrPayload_
    , _tjrCallback = Nothing
    }


-- | V1 error format.
tjrXgafv :: Lens' TransferJobsRun (Maybe Xgafv)
tjrXgafv = lens _tjrXgafv (\ s a -> s{_tjrXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
tjrUploadProtocol :: Lens' TransferJobsRun (Maybe Text)
tjrUploadProtocol
  = lens _tjrUploadProtocol
      (\ s a -> s{_tjrUploadProtocol = a})

-- | OAuth access token.
tjrAccessToken :: Lens' TransferJobsRun (Maybe Text)
tjrAccessToken
  = lens _tjrAccessToken
      (\ s a -> s{_tjrAccessToken = a})

-- | Required. The name of the transfer job.
tjrJobName :: Lens' TransferJobsRun Text
tjrJobName
  = lens _tjrJobName (\ s a -> s{_tjrJobName = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
tjrUploadType :: Lens' TransferJobsRun (Maybe Text)
tjrUploadType
  = lens _tjrUploadType
      (\ s a -> s{_tjrUploadType = a})

-- | Multipart request metadata.
tjrPayload :: Lens' TransferJobsRun RunTransferJobRequest
tjrPayload
  = lens _tjrPayload (\ s a -> s{_tjrPayload = a})

-- | JSONP
tjrCallback :: Lens' TransferJobsRun (Maybe Text)
tjrCallback
  = lens _tjrCallback (\ s a -> s{_tjrCallback = a})

instance GoogleRequest TransferJobsRun where
        type Rs TransferJobsRun = Operation
        type Scopes TransferJobsRun =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient TransferJobsRun'{..}
          = go _tjrJobName _tjrXgafv _tjrUploadProtocol
              _tjrAccessToken
              _tjrUploadType
              _tjrCallback
              (Just AltJSON)
              _tjrPayload
              storageTransferService
          where go
                  = buildClient
                      (Proxy :: Proxy TransferJobsRunResource)
                      mempty
