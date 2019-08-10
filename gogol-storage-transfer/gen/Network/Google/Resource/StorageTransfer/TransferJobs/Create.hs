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
-- Module      : Network.Google.Resource.StorageTransfer.TransferJobs.Create
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a transfer job that runs periodically.
--
-- /See:/ <https://cloud.google.com/storage-transfer/docs Storage Transfer API Reference> for @storagetransfer.transferJobs.create@.
module Network.Google.Resource.StorageTransfer.TransferJobs.Create
    (
    -- * REST Resource
      TransferJobsCreateResource

    -- * Creating a Request
    , transferJobsCreate
    , TransferJobsCreate

    -- * Request Lenses
    , tjcXgafv
    , tjcUploadProtocol
    , tjcAccessToken
    , tjcUploadType
    , tjcPayload
    , tjcCallback
    ) where

import           Network.Google.Prelude
import           Network.Google.StorageTransfer.Types

-- | A resource alias for @storagetransfer.transferJobs.create@ method which the
-- 'TransferJobsCreate' request conforms to.
type TransferJobsCreateResource =
     "v1" :>
       "transferJobs" :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] TransferJob :>
                       Post '[JSON] TransferJob

-- | Creates a transfer job that runs periodically.
--
-- /See:/ 'transferJobsCreate' smart constructor.
data TransferJobsCreate =
  TransferJobsCreate'
    { _tjcXgafv          :: !(Maybe Xgafv)
    , _tjcUploadProtocol :: !(Maybe Text)
    , _tjcAccessToken    :: !(Maybe Text)
    , _tjcUploadType     :: !(Maybe Text)
    , _tjcPayload        :: !TransferJob
    , _tjcCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'TransferJobsCreate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tjcXgafv'
--
-- * 'tjcUploadProtocol'
--
-- * 'tjcAccessToken'
--
-- * 'tjcUploadType'
--
-- * 'tjcPayload'
--
-- * 'tjcCallback'
transferJobsCreate
    :: TransferJob -- ^ 'tjcPayload'
    -> TransferJobsCreate
transferJobsCreate pTjcPayload_ =
  TransferJobsCreate'
    { _tjcXgafv = Nothing
    , _tjcUploadProtocol = Nothing
    , _tjcAccessToken = Nothing
    , _tjcUploadType = Nothing
    , _tjcPayload = pTjcPayload_
    , _tjcCallback = Nothing
    }


-- | V1 error format.
tjcXgafv :: Lens' TransferJobsCreate (Maybe Xgafv)
tjcXgafv = lens _tjcXgafv (\ s a -> s{_tjcXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
tjcUploadProtocol :: Lens' TransferJobsCreate (Maybe Text)
tjcUploadProtocol
  = lens _tjcUploadProtocol
      (\ s a -> s{_tjcUploadProtocol = a})

-- | OAuth access token.
tjcAccessToken :: Lens' TransferJobsCreate (Maybe Text)
tjcAccessToken
  = lens _tjcAccessToken
      (\ s a -> s{_tjcAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
tjcUploadType :: Lens' TransferJobsCreate (Maybe Text)
tjcUploadType
  = lens _tjcUploadType
      (\ s a -> s{_tjcUploadType = a})

-- | Multipart request metadata.
tjcPayload :: Lens' TransferJobsCreate TransferJob
tjcPayload
  = lens _tjcPayload (\ s a -> s{_tjcPayload = a})

-- | JSONP
tjcCallback :: Lens' TransferJobsCreate (Maybe Text)
tjcCallback
  = lens _tjcCallback (\ s a -> s{_tjcCallback = a})

instance GoogleRequest TransferJobsCreate where
        type Rs TransferJobsCreate = TransferJob
        type Scopes TransferJobsCreate =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient TransferJobsCreate'{..}
          = go _tjcXgafv _tjcUploadProtocol _tjcAccessToken
              _tjcUploadType
              _tjcCallback
              (Just AltJSON)
              _tjcPayload
              storageTransferService
          where go
                  = buildClient
                      (Proxy :: Proxy TransferJobsCreateResource)
                      mempty
