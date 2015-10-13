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
-- Module      : Network.Google.Resource.StorageTransfer.TransferJobs.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Gets a transfer job.
--
-- /See:/ <https://cloud.google.com/storage/transfer Google Storage Transfer API Reference> for @StorageTransferTransferJobsGet@.
module Network.Google.Resource.StorageTransfer.TransferJobs.Get
    (
    -- * REST Resource
      TransferJobsGetResource

    -- * Creating a Request
    , transferJobsGet'
    , TransferJobsGet'

    -- * Request Lenses
    , tjgXgafv
    , tjgUploadProtocol
    , tjgPp
    , tjgAccessToken
    , tjgJobName
    , tjgUploadType
    , tjgBearerToken
    , tjgProjectId
    , tjgCallback
    ) where

import           Network.Google.Prelude
import           Network.Google.StorageTransfer.Types

-- | A resource alias for @StorageTransferTransferJobsGet@ method which the
-- 'TransferJobsGet'' request conforms to.
type TransferJobsGetResource =
     "v1" :>
       Capture "jobName" Text :>
         QueryParam "$.xgafv" Text :>
           QueryParam "upload_protocol" Text :>
             QueryParam "pp" Bool :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "bearer_token" Text :>
                     QueryParam "projectId" Text :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :> Get '[JSON] TransferJob

-- | Gets a transfer job.
--
-- /See:/ 'transferJobsGet'' smart constructor.
data TransferJobsGet' = TransferJobsGet'
    { _tjgXgafv          :: !(Maybe Text)
    , _tjgUploadProtocol :: !(Maybe Text)
    , _tjgPp             :: !Bool
    , _tjgAccessToken    :: !(Maybe Text)
    , _tjgJobName        :: !Text
    , _tjgUploadType     :: !(Maybe Text)
    , _tjgBearerToken    :: !(Maybe Text)
    , _tjgProjectId      :: !(Maybe Text)
    , _tjgCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'TransferJobsGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tjgXgafv'
--
-- * 'tjgUploadProtocol'
--
-- * 'tjgPp'
--
-- * 'tjgAccessToken'
--
-- * 'tjgJobName'
--
-- * 'tjgUploadType'
--
-- * 'tjgBearerToken'
--
-- * 'tjgProjectId'
--
-- * 'tjgCallback'
transferJobsGet'
    :: Text -- ^ 'jobName'
    -> TransferJobsGet'
transferJobsGet' pTjgJobName_ =
    TransferJobsGet'
    { _tjgXgafv = Nothing
    , _tjgUploadProtocol = Nothing
    , _tjgPp = True
    , _tjgAccessToken = Nothing
    , _tjgJobName = pTjgJobName_
    , _tjgUploadType = Nothing
    , _tjgBearerToken = Nothing
    , _tjgProjectId = Nothing
    , _tjgCallback = Nothing
    }

-- | V1 error format.
tjgXgafv :: Lens' TransferJobsGet' (Maybe Text)
tjgXgafv = lens _tjgXgafv (\ s a -> s{_tjgXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
tjgUploadProtocol :: Lens' TransferJobsGet' (Maybe Text)
tjgUploadProtocol
  = lens _tjgUploadProtocol
      (\ s a -> s{_tjgUploadProtocol = a})

-- | Pretty-print response.
tjgPp :: Lens' TransferJobsGet' Bool
tjgPp = lens _tjgPp (\ s a -> s{_tjgPp = a})

-- | OAuth access token.
tjgAccessToken :: Lens' TransferJobsGet' (Maybe Text)
tjgAccessToken
  = lens _tjgAccessToken
      (\ s a -> s{_tjgAccessToken = a})

-- | The job to get. Required.
tjgJobName :: Lens' TransferJobsGet' Text
tjgJobName
  = lens _tjgJobName (\ s a -> s{_tjgJobName = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
tjgUploadType :: Lens' TransferJobsGet' (Maybe Text)
tjgUploadType
  = lens _tjgUploadType
      (\ s a -> s{_tjgUploadType = a})

-- | OAuth bearer token.
tjgBearerToken :: Lens' TransferJobsGet' (Maybe Text)
tjgBearerToken
  = lens _tjgBearerToken
      (\ s a -> s{_tjgBearerToken = a})

-- | The ID of the Google Developers Console project that owns the job.
-- Required.
tjgProjectId :: Lens' TransferJobsGet' (Maybe Text)
tjgProjectId
  = lens _tjgProjectId (\ s a -> s{_tjgProjectId = a})

-- | JSONP
tjgCallback :: Lens' TransferJobsGet' (Maybe Text)
tjgCallback
  = lens _tjgCallback (\ s a -> s{_tjgCallback = a})

instance GoogleRequest TransferJobsGet' where
        type Rs TransferJobsGet' = TransferJob
        requestClient TransferJobsGet'{..}
          = go _tjgJobName _tjgXgafv _tjgUploadProtocol
              (Just _tjgPp)
              _tjgAccessToken
              _tjgUploadType
              _tjgBearerToken
              _tjgProjectId
              _tjgCallback
              (Just AltJSON)
              storageTransferService
          where go
                  = buildClient
                      (Proxy :: Proxy TransferJobsGetResource)
                      mempty
