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
-- Module      : Network.Google.Resource.StorageTransfer.TransferJobs.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists transfer jobs.
--
-- /See:/ <https://cloud.google.com/storage/transfer Google Storage Transfer API Reference> for @storagetransfer.transferJobs.list@.
module Network.Google.Resource.StorageTransfer.TransferJobs.List
    (
    -- * REST Resource
      TransferJobsListResource

    -- * Creating a Request
    , transferJobsList
    , TransferJobsList

    -- * Request Lenses
    , tjlXgafv
    , tjlUploadProtocol
    , tjlPp
    , tjlAccessToken
    , tjlUploadType
    , tjlBearerToken
    , tjlFilter
    , tjlPageToken
    , tjlPageSize
    , tjlCallback
    ) where

import           Network.Google.Prelude
import           Network.Google.StorageTransfer.Types

-- | A resource alias for @storagetransfer.transferJobs.list@ method which the
-- 'TransferJobsList' request conforms to.
type TransferJobsListResource =
     "v1" :>
       "transferJobs" :>
         QueryParam "$.xgafv" Text :>
           QueryParam "upload_protocol" Text :>
             QueryParam "pp" Bool :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "bearer_token" Text :>
                     QueryParam "filter" Text :>
                       QueryParam "pageToken" Text :>
                         QueryParam "pageSize" (Textual Int32) :>
                           QueryParam "callback" Text :>
                             QueryParam "alt" AltJSON :>
                               Get '[JSON] ListTransferJobsResponse

-- | Lists transfer jobs.
--
-- /See:/ 'transferJobsList' smart constructor.
data TransferJobsList = TransferJobsList
    { _tjlXgafv          :: !(Maybe Text)
    , _tjlUploadProtocol :: !(Maybe Text)
    , _tjlPp             :: !Bool
    , _tjlAccessToken    :: !(Maybe Text)
    , _tjlUploadType     :: !(Maybe Text)
    , _tjlBearerToken    :: !(Maybe Text)
    , _tjlFilter         :: !(Maybe Text)
    , _tjlPageToken      :: !(Maybe Text)
    , _tjlPageSize       :: !(Maybe (Textual Int32))
    , _tjlCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'TransferJobsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tjlXgafv'
--
-- * 'tjlUploadProtocol'
--
-- * 'tjlPp'
--
-- * 'tjlAccessToken'
--
-- * 'tjlUploadType'
--
-- * 'tjlBearerToken'
--
-- * 'tjlFilter'
--
-- * 'tjlPageToken'
--
-- * 'tjlPageSize'
--
-- * 'tjlCallback'
transferJobsList
    :: TransferJobsList
transferJobsList =
    TransferJobsList
    { _tjlXgafv = Nothing
    , _tjlUploadProtocol = Nothing
    , _tjlPp = True
    , _tjlAccessToken = Nothing
    , _tjlUploadType = Nothing
    , _tjlBearerToken = Nothing
    , _tjlFilter = Nothing
    , _tjlPageToken = Nothing
    , _tjlPageSize = Nothing
    , _tjlCallback = Nothing
    }

-- | V1 error format.
tjlXgafv :: Lens' TransferJobsList (Maybe Text)
tjlXgafv = lens _tjlXgafv (\ s a -> s{_tjlXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
tjlUploadProtocol :: Lens' TransferJobsList (Maybe Text)
tjlUploadProtocol
  = lens _tjlUploadProtocol
      (\ s a -> s{_tjlUploadProtocol = a})

-- | Pretty-print response.
tjlPp :: Lens' TransferJobsList Bool
tjlPp = lens _tjlPp (\ s a -> s{_tjlPp = a})

-- | OAuth access token.
tjlAccessToken :: Lens' TransferJobsList (Maybe Text)
tjlAccessToken
  = lens _tjlAccessToken
      (\ s a -> s{_tjlAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
tjlUploadType :: Lens' TransferJobsList (Maybe Text)
tjlUploadType
  = lens _tjlUploadType
      (\ s a -> s{_tjlUploadType = a})

-- | OAuth bearer token.
tjlBearerToken :: Lens' TransferJobsList (Maybe Text)
tjlBearerToken
  = lens _tjlBearerToken
      (\ s a -> s{_tjlBearerToken = a})

-- | A list of query parameters specified as JSON text in the form of
-- {\"\`project_id\`\":\"my_project_id\",
-- \"\`job_names\`\":[\"jobid1\",\"jobid2\",...],
-- \"\`job_statuses\`\":[\"status1\",\"status2\",...]}. Since \`job_names\`
-- and \`job_statuses\` support multiple values, their values must be
-- specified with array notation. \`project_id\` is required. \`job_names\`
-- and \`job_statuses\` are optional. The valid values for \`job_statuses\`
-- are case-insensitive: \`ENABLED\`, \`DISABLED\`, and \`DELETED\`.
tjlFilter :: Lens' TransferJobsList (Maybe Text)
tjlFilter
  = lens _tjlFilter (\ s a -> s{_tjlFilter = a})

-- | The list page token.
tjlPageToken :: Lens' TransferJobsList (Maybe Text)
tjlPageToken
  = lens _tjlPageToken (\ s a -> s{_tjlPageToken = a})

-- | The list page size. The max allowed value is 256.
tjlPageSize :: Lens' TransferJobsList (Maybe Int32)
tjlPageSize
  = lens _tjlPageSize (\ s a -> s{_tjlPageSize = a}) .
      mapping _Coerce

-- | JSONP
tjlCallback :: Lens' TransferJobsList (Maybe Text)
tjlCallback
  = lens _tjlCallback (\ s a -> s{_tjlCallback = a})

instance GoogleRequest TransferJobsList where
        type Rs TransferJobsList = ListTransferJobsResponse
        requestClient TransferJobsList{..}
          = go _tjlXgafv _tjlUploadProtocol (Just _tjlPp)
              _tjlAccessToken
              _tjlUploadType
              _tjlBearerToken
              _tjlFilter
              _tjlPageToken
              _tjlPageSize
              _tjlCallback
              (Just AltJSON)
              storageTransferService
          where go
                  = buildClient
                      (Proxy :: Proxy TransferJobsListResource)
                      mempty
