{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.StorageTransfer.TransferJobs.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Lists transfer jobs.
--
-- /See:/ <https://cloud.google.com/storage/transfer Google Storage Transfer API Reference> for @StorageTransferTransferJobsList@.
module Network.Google.Resource.StorageTransfer.TransferJobs.List
    (
    -- * REST Resource
      TransferJobsListResource

    -- * Creating a Request
    , transferJobsList'
    , TransferJobsList'

    -- * Request Lenses
    , tjlXgafv
    , tjlQuotaUser
    , tjlPrettyPrint
    , tjlUploadProtocol
    , tjlPp
    , tjlAccessToken
    , tjlUploadType
    , tjlBearerToken
    , tjlKey
    , tjlFilter
    , tjlPageToken
    , tjlOAuthToken
    , tjlPageSize
    , tjlFields
    , tjlCallback
    ) where

import           Network.Google.Prelude
import           Network.Google.StorageTransfer.Types

-- | A resource alias for @StorageTransferTransferJobsList@ which the
-- 'TransferJobsList'' request conforms to.
type TransferJobsListResource =
     "v1" :>
       "transferJobs" :>
         QueryParam "$.xgafv" Text :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "upload_protocol" Text :>
                 QueryParam "pp" Bool :>
                   QueryParam "access_token" Text :>
                     QueryParam "uploadType" Text :>
                       QueryParam "bearer_token" Text :>
                         QueryParam "key" Key :>
                           QueryParam "filter" Text :>
                             QueryParam "pageToken" Text :>
                               QueryParam "oauth_token" OAuthToken :>
                                 QueryParam "pageSize" Int32 :>
                                   QueryParam "fields" Text :>
                                     QueryParam "callback" Text :>
                                       QueryParam "alt" AltJSON :>
                                         Get '[JSON] ListTransferJobsResponse

-- | Lists transfer jobs.
--
-- /See:/ 'transferJobsList'' smart constructor.
data TransferJobsList' = TransferJobsList'
    { _tjlXgafv          :: !(Maybe Text)
    , _tjlQuotaUser      :: !(Maybe Text)
    , _tjlPrettyPrint    :: !Bool
    , _tjlUploadProtocol :: !(Maybe Text)
    , _tjlPp             :: !Bool
    , _tjlAccessToken    :: !(Maybe Text)
    , _tjlUploadType     :: !(Maybe Text)
    , _tjlBearerToken    :: !(Maybe Text)
    , _tjlKey            :: !(Maybe Key)
    , _tjlFilter         :: !(Maybe Text)
    , _tjlPageToken      :: !(Maybe Text)
    , _tjlOAuthToken     :: !(Maybe OAuthToken)
    , _tjlPageSize       :: !(Maybe Int32)
    , _tjlFields         :: !(Maybe Text)
    , _tjlCallback       :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'TransferJobsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tjlXgafv'
--
-- * 'tjlQuotaUser'
--
-- * 'tjlPrettyPrint'
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
-- * 'tjlKey'
--
-- * 'tjlFilter'
--
-- * 'tjlPageToken'
--
-- * 'tjlOAuthToken'
--
-- * 'tjlPageSize'
--
-- * 'tjlFields'
--
-- * 'tjlCallback'
transferJobsList'
    :: TransferJobsList'
transferJobsList' =
    TransferJobsList'
    { _tjlXgafv = Nothing
    , _tjlQuotaUser = Nothing
    , _tjlPrettyPrint = True
    , _tjlUploadProtocol = Nothing
    , _tjlPp = True
    , _tjlAccessToken = Nothing
    , _tjlUploadType = Nothing
    , _tjlBearerToken = Nothing
    , _tjlKey = Nothing
    , _tjlFilter = Nothing
    , _tjlPageToken = Nothing
    , _tjlOAuthToken = Nothing
    , _tjlPageSize = Nothing
    , _tjlFields = Nothing
    , _tjlCallback = Nothing
    }

-- | V1 error format.
tjlXgafv :: Lens' TransferJobsList' (Maybe Text)
tjlXgafv = lens _tjlXgafv (\ s a -> s{_tjlXgafv = a})

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters.
tjlQuotaUser :: Lens' TransferJobsList' (Maybe Text)
tjlQuotaUser
  = lens _tjlQuotaUser (\ s a -> s{_tjlQuotaUser = a})

-- | Returns response with indentations and line breaks.
tjlPrettyPrint :: Lens' TransferJobsList' Bool
tjlPrettyPrint
  = lens _tjlPrettyPrint
      (\ s a -> s{_tjlPrettyPrint = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
tjlUploadProtocol :: Lens' TransferJobsList' (Maybe Text)
tjlUploadProtocol
  = lens _tjlUploadProtocol
      (\ s a -> s{_tjlUploadProtocol = a})

-- | Pretty-print response.
tjlPp :: Lens' TransferJobsList' Bool
tjlPp = lens _tjlPp (\ s a -> s{_tjlPp = a})

-- | OAuth access token.
tjlAccessToken :: Lens' TransferJobsList' (Maybe Text)
tjlAccessToken
  = lens _tjlAccessToken
      (\ s a -> s{_tjlAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
tjlUploadType :: Lens' TransferJobsList' (Maybe Text)
tjlUploadType
  = lens _tjlUploadType
      (\ s a -> s{_tjlUploadType = a})

-- | OAuth bearer token.
tjlBearerToken :: Lens' TransferJobsList' (Maybe Text)
tjlBearerToken
  = lens _tjlBearerToken
      (\ s a -> s{_tjlBearerToken = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
tjlKey :: Lens' TransferJobsList' (Maybe Key)
tjlKey = lens _tjlKey (\ s a -> s{_tjlKey = a})

-- | A list of query parameters specified as JSON text in the form of
-- {\"\`project_id\`\":\"my_project_id\",
-- \"\`job_names\`\":[\"jobid1\",\"jobid2\",...],
-- \"\`job_statuses\`\":[\"status1\",\"status2\",...]}. Since \`job_names\`
-- and \`job_statuses\` support multiple values, their values must be
-- specified with array notation. \`project_id\` is required. \`job_names\`
-- and \`job_statuses\` are optional. The valid values for \`job_statuses\`
-- are case-insensitive: \`ENABLED\`, \`DISABLED\`, and \`DELETED\`.
tjlFilter :: Lens' TransferJobsList' (Maybe Text)
tjlFilter
  = lens _tjlFilter (\ s a -> s{_tjlFilter = a})

-- | The list page token.
tjlPageToken :: Lens' TransferJobsList' (Maybe Text)
tjlPageToken
  = lens _tjlPageToken (\ s a -> s{_tjlPageToken = a})

-- | OAuth 2.0 token for the current user.
tjlOAuthToken :: Lens' TransferJobsList' (Maybe OAuthToken)
tjlOAuthToken
  = lens _tjlOAuthToken
      (\ s a -> s{_tjlOAuthToken = a})

-- | The list page size. The max allowed value is 256.
tjlPageSize :: Lens' TransferJobsList' (Maybe Int32)
tjlPageSize
  = lens _tjlPageSize (\ s a -> s{_tjlPageSize = a})

-- | Selector specifying which fields to include in a partial response.
tjlFields :: Lens' TransferJobsList' (Maybe Text)
tjlFields
  = lens _tjlFields (\ s a -> s{_tjlFields = a})

-- | JSONP
tjlCallback :: Lens' TransferJobsList' (Maybe Text)
tjlCallback
  = lens _tjlCallback (\ s a -> s{_tjlCallback = a})

instance GoogleAuth TransferJobsList' where
        authKey = tjlKey . _Just
        authToken = tjlOAuthToken . _Just

instance GoogleRequest TransferJobsList' where
        type Rs TransferJobsList' = ListTransferJobsResponse
        request = requestWithRoute defReq storageTransferURL
        requestWithRoute r u TransferJobsList'{..}
          = go _tjlXgafv _tjlQuotaUser (Just _tjlPrettyPrint)
              _tjlUploadProtocol
              (Just _tjlPp)
              _tjlAccessToken
              _tjlUploadType
              _tjlBearerToken
              _tjlKey
              _tjlFilter
              _tjlPageToken
              _tjlOAuthToken
              _tjlPageSize
              _tjlFields
              _tjlCallback
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy TransferJobsListResource)
                      r
                      u
