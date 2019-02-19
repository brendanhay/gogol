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
-- Module      : Network.Google.Resource.StorageTransfer.TransferJobs.Patch
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates a transfer job. Updating a job\'s transfer spec does not affect
-- transfer operations that are running already. Updating the scheduling of
-- a job is not allowed.
--
-- /See:/ <https://cloud.google.com/storage/transfer Storage Transfer API Reference> for @storagetransfer.transferJobs.patch@.
module Network.Google.Resource.StorageTransfer.TransferJobs.Patch
    (
    -- * REST Resource
      TransferJobsPatchResource

    -- * Creating a Request
    , transferJobsPatch
    , TransferJobsPatch

    -- * Request Lenses
    , tjpXgafv
    , tjpUploadProtocol
    , tjpAccessToken
    , tjpJobName
    , tjpUploadType
    , tjpPayload
    , tjpCallback
    ) where

import           Network.Google.Prelude
import           Network.Google.StorageTransfer.Types

-- | A resource alias for @storagetransfer.transferJobs.patch@ method which the
-- 'TransferJobsPatch' request conforms to.
type TransferJobsPatchResource =
     "v1" :>
       Capture "jobName" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] UpdateTransferJobRequest :>
                       Patch '[JSON] TransferJob

-- | Updates a transfer job. Updating a job\'s transfer spec does not affect
-- transfer operations that are running already. Updating the scheduling of
-- a job is not allowed.
--
-- /See:/ 'transferJobsPatch' smart constructor.
data TransferJobsPatch =
  TransferJobsPatch'
    { _tjpXgafv          :: !(Maybe Xgafv)
    , _tjpUploadProtocol :: !(Maybe Text)
    , _tjpAccessToken    :: !(Maybe Text)
    , _tjpJobName        :: !Text
    , _tjpUploadType     :: !(Maybe Text)
    , _tjpPayload        :: !UpdateTransferJobRequest
    , _tjpCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'TransferJobsPatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tjpXgafv'
--
-- * 'tjpUploadProtocol'
--
-- * 'tjpAccessToken'
--
-- * 'tjpJobName'
--
-- * 'tjpUploadType'
--
-- * 'tjpPayload'
--
-- * 'tjpCallback'
transferJobsPatch
    :: Text -- ^ 'tjpJobName'
    -> UpdateTransferJobRequest -- ^ 'tjpPayload'
    -> TransferJobsPatch
transferJobsPatch pTjpJobName_ pTjpPayload_ =
  TransferJobsPatch'
    { _tjpXgafv = Nothing
    , _tjpUploadProtocol = Nothing
    , _tjpAccessToken = Nothing
    , _tjpJobName = pTjpJobName_
    , _tjpUploadType = Nothing
    , _tjpPayload = pTjpPayload_
    , _tjpCallback = Nothing
    }

-- | V1 error format.
tjpXgafv :: Lens' TransferJobsPatch (Maybe Xgafv)
tjpXgafv = lens _tjpXgafv (\ s a -> s{_tjpXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
tjpUploadProtocol :: Lens' TransferJobsPatch (Maybe Text)
tjpUploadProtocol
  = lens _tjpUploadProtocol
      (\ s a -> s{_tjpUploadProtocol = a})

-- | OAuth access token.
tjpAccessToken :: Lens' TransferJobsPatch (Maybe Text)
tjpAccessToken
  = lens _tjpAccessToken
      (\ s a -> s{_tjpAccessToken = a})

-- | The name of job to update. Required.
tjpJobName :: Lens' TransferJobsPatch Text
tjpJobName
  = lens _tjpJobName (\ s a -> s{_tjpJobName = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
tjpUploadType :: Lens' TransferJobsPatch (Maybe Text)
tjpUploadType
  = lens _tjpUploadType
      (\ s a -> s{_tjpUploadType = a})

-- | Multipart request metadata.
tjpPayload :: Lens' TransferJobsPatch UpdateTransferJobRequest
tjpPayload
  = lens _tjpPayload (\ s a -> s{_tjpPayload = a})

-- | JSONP
tjpCallback :: Lens' TransferJobsPatch (Maybe Text)
tjpCallback
  = lens _tjpCallback (\ s a -> s{_tjpCallback = a})

instance GoogleRequest TransferJobsPatch where
        type Rs TransferJobsPatch = TransferJob
        type Scopes TransferJobsPatch =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient TransferJobsPatch'{..}
          = go _tjpJobName _tjpXgafv _tjpUploadProtocol
              _tjpAccessToken
              _tjpUploadType
              _tjpCallback
              (Just AltJSON)
              _tjpPayload
              storageTransferService
          where go
                  = buildClient
                      (Proxy :: Proxy TransferJobsPatchResource)
                      mempty
