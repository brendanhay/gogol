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
-- Module      : Network.Google.Resource.YouTubeReporting.Jobs.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Lists jobs.
--
-- /See:/ <https://developers.google.com/youtube/reporting/v1/reports/ YouTube Reporting API Reference> for @YouTubereportingJobsList@.
module Network.Google.Resource.YouTubeReporting.Jobs.List
    (
    -- * REST Resource
      JobsListResource

    -- * Creating a Request
    , jobsList'
    , JobsList'

    -- * Request Lenses
    , jlXgafv
    , jlUploadProtocol
    , jlPp
    , jlAccessToken
    , jlUploadType
    , jlOnBehalfOfContentOwner
    , jlBearerToken
    , jlPageToken
    , jlPageSize
    , jlCallback
    ) where

import           Network.Google.Prelude
import           Network.Google.YouTubeReporting.Types

-- | A resource alias for @YouTubereportingJobsList@ method which the
-- 'JobsList'' request conforms to.
type JobsListResource =
     "v1" :>
       "jobs" :>
         QueryParam "$.xgafv" Text :>
           QueryParam "upload_protocol" Text :>
             QueryParam "pp" Bool :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "onBehalfOfContentOwner" Text :>
                     QueryParam "bearer_token" Text :>
                       QueryParam "pageToken" Text :>
                         QueryParam "pageSize" Int32 :>
                           QueryParam "callback" Text :>
                             QueryParam "alt" AltJSON :>
                               Get '[JSON] ListJobsResponse

-- | Lists jobs.
--
-- /See:/ 'jobsList'' smart constructor.
data JobsList' = JobsList'
    { _jlXgafv                  :: !(Maybe Text)
    , _jlUploadProtocol         :: !(Maybe Text)
    , _jlPp                     :: !Bool
    , _jlAccessToken            :: !(Maybe Text)
    , _jlUploadType             :: !(Maybe Text)
    , _jlOnBehalfOfContentOwner :: !(Maybe Text)
    , _jlBearerToken            :: !(Maybe Text)
    , _jlPageToken              :: !(Maybe Text)
    , _jlPageSize               :: !(Maybe Int32)
    , _jlCallback               :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'JobsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'jlXgafv'
--
-- * 'jlUploadProtocol'
--
-- * 'jlPp'
--
-- * 'jlAccessToken'
--
-- * 'jlUploadType'
--
-- * 'jlOnBehalfOfContentOwner'
--
-- * 'jlBearerToken'
--
-- * 'jlPageToken'
--
-- * 'jlPageSize'
--
-- * 'jlCallback'
jobsList'
    :: JobsList'
jobsList' =
    JobsList'
    { _jlXgafv = Nothing
    , _jlUploadProtocol = Nothing
    , _jlPp = True
    , _jlAccessToken = Nothing
    , _jlUploadType = Nothing
    , _jlOnBehalfOfContentOwner = Nothing
    , _jlBearerToken = Nothing
    , _jlPageToken = Nothing
    , _jlPageSize = Nothing
    , _jlCallback = Nothing
    }

-- | V1 error format.
jlXgafv :: Lens' JobsList' (Maybe Text)
jlXgafv = lens _jlXgafv (\ s a -> s{_jlXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
jlUploadProtocol :: Lens' JobsList' (Maybe Text)
jlUploadProtocol
  = lens _jlUploadProtocol
      (\ s a -> s{_jlUploadProtocol = a})

-- | Pretty-print response.
jlPp :: Lens' JobsList' Bool
jlPp = lens _jlPp (\ s a -> s{_jlPp = a})

-- | OAuth access token.
jlAccessToken :: Lens' JobsList' (Maybe Text)
jlAccessToken
  = lens _jlAccessToken
      (\ s a -> s{_jlAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
jlUploadType :: Lens' JobsList' (Maybe Text)
jlUploadType
  = lens _jlUploadType (\ s a -> s{_jlUploadType = a})

-- | The content owner\'s external ID on which behalf the user is acting on.
-- If not set, the user is acting for himself (his own channel).
jlOnBehalfOfContentOwner :: Lens' JobsList' (Maybe Text)
jlOnBehalfOfContentOwner
  = lens _jlOnBehalfOfContentOwner
      (\ s a -> s{_jlOnBehalfOfContentOwner = a})

-- | OAuth bearer token.
jlBearerToken :: Lens' JobsList' (Maybe Text)
jlBearerToken
  = lens _jlBearerToken
      (\ s a -> s{_jlBearerToken = a})

-- | A token identifying a page of results the server should return.
-- Typically, this is the value of ListReportTypesResponse.next_page_token
-- returned in response to the previous call to the \`ListJobs\` method.
jlPageToken :: Lens' JobsList' (Maybe Text)
jlPageToken
  = lens _jlPageToken (\ s a -> s{_jlPageToken = a})

-- | Requested page size. Server may return fewer jobs than requested. If
-- unspecified, server will pick an appropriate default.
jlPageSize :: Lens' JobsList' (Maybe Int32)
jlPageSize
  = lens _jlPageSize (\ s a -> s{_jlPageSize = a})

-- | JSONP
jlCallback :: Lens' JobsList' (Maybe Text)
jlCallback
  = lens _jlCallback (\ s a -> s{_jlCallback = a})

instance GoogleRequest JobsList' where
        type Rs JobsList' = ListJobsResponse
        requestClient JobsList'{..}
          = go _jlXgafv _jlUploadProtocol (Just _jlPp)
              _jlAccessToken
              _jlUploadType
              _jlOnBehalfOfContentOwner
              _jlBearerToken
              _jlPageToken
              _jlPageSize
              _jlCallback
              (Just AltJSON)
              youTubeReportingService
          where go
                  = buildClient (Proxy :: Proxy JobsListResource)
                      mempty
