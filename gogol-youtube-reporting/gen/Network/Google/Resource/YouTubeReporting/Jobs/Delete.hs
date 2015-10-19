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
-- Module      : Network.Google.Resource.YouTubeReporting.Jobs.Delete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Deletes a job.
--
-- /See:/ <https://developers.google.com/youtube/reporting/v1/reports/ YouTube Reporting API Reference> for @YouTubereportingJobsDelete@.
module Network.Google.Resource.YouTubeReporting.Jobs.Delete
    (
    -- * REST Resource
      JobsDeleteResource

    -- * Creating a Request
    , jobsDelete'
    , JobsDelete'

    -- * Request Lenses
    , jdXgafv
    , jdJobId
    , jdUploadProtocol
    , jdPp
    , jdAccessToken
    , jdUploadType
    , jdOnBehalfOfContentOwner
    , jdBearerToken
    , jdCallback
    ) where

import           Network.Google.Prelude
import           Network.Google.YouTubeReporting.Types

-- | A resource alias for @YouTubereportingJobsDelete@ method which the
-- 'JobsDelete'' request conforms to.
type JobsDeleteResource =
     "v1" :>
       "jobs" :>
         Capture "jobId" Text :>
           QueryParam "$.xgafv" Text :>
             QueryParam "upload_protocol" Text :>
               QueryParam "pp" Bool :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "onBehalfOfContentOwner" Text :>
                       QueryParam "bearer_token" Text :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :> Delete '[JSON] Empty

-- | Deletes a job.
--
-- /See:/ 'jobsDelete'' smart constructor.
data JobsDelete' = JobsDelete'
    { _jdXgafv                  :: !(Maybe Text)
    , _jdJobId                  :: !Text
    , _jdUploadProtocol         :: !(Maybe Text)
    , _jdPp                     :: !Bool
    , _jdAccessToken            :: !(Maybe Text)
    , _jdUploadType             :: !(Maybe Text)
    , _jdOnBehalfOfContentOwner :: !(Maybe Text)
    , _jdBearerToken            :: !(Maybe Text)
    , _jdCallback               :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'JobsDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'jdXgafv'
--
-- * 'jdJobId'
--
-- * 'jdUploadProtocol'
--
-- * 'jdPp'
--
-- * 'jdAccessToken'
--
-- * 'jdUploadType'
--
-- * 'jdOnBehalfOfContentOwner'
--
-- * 'jdBearerToken'
--
-- * 'jdCallback'
jobsDelete'
    :: Text -- ^ 'jobId'
    -> JobsDelete'
jobsDelete' pJdJobId_ =
    JobsDelete'
    { _jdXgafv = Nothing
    , _jdJobId = pJdJobId_
    , _jdUploadProtocol = Nothing
    , _jdPp = True
    , _jdAccessToken = Nothing
    , _jdUploadType = Nothing
    , _jdOnBehalfOfContentOwner = Nothing
    , _jdBearerToken = Nothing
    , _jdCallback = Nothing
    }

-- | V1 error format.
jdXgafv :: Lens' JobsDelete' (Maybe Text)
jdXgafv = lens _jdXgafv (\ s a -> s{_jdXgafv = a})

-- | The ID of the job to delete.
jdJobId :: Lens' JobsDelete' Text
jdJobId = lens _jdJobId (\ s a -> s{_jdJobId = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
jdUploadProtocol :: Lens' JobsDelete' (Maybe Text)
jdUploadProtocol
  = lens _jdUploadProtocol
      (\ s a -> s{_jdUploadProtocol = a})

-- | Pretty-print response.
jdPp :: Lens' JobsDelete' Bool
jdPp = lens _jdPp (\ s a -> s{_jdPp = a})

-- | OAuth access token.
jdAccessToken :: Lens' JobsDelete' (Maybe Text)
jdAccessToken
  = lens _jdAccessToken
      (\ s a -> s{_jdAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
jdUploadType :: Lens' JobsDelete' (Maybe Text)
jdUploadType
  = lens _jdUploadType (\ s a -> s{_jdUploadType = a})

-- | The content owner\'s external ID on which behalf the user is acting on.
-- If not set, the user is acting for himself (his own channel).
jdOnBehalfOfContentOwner :: Lens' JobsDelete' (Maybe Text)
jdOnBehalfOfContentOwner
  = lens _jdOnBehalfOfContentOwner
      (\ s a -> s{_jdOnBehalfOfContentOwner = a})

-- | OAuth bearer token.
jdBearerToken :: Lens' JobsDelete' (Maybe Text)
jdBearerToken
  = lens _jdBearerToken
      (\ s a -> s{_jdBearerToken = a})

-- | JSONP
jdCallback :: Lens' JobsDelete' (Maybe Text)
jdCallback
  = lens _jdCallback (\ s a -> s{_jdCallback = a})

instance GoogleRequest JobsDelete' where
        type Rs JobsDelete' = Empty
        requestClient JobsDelete'{..}
          = go _jdJobId _jdXgafv _jdUploadProtocol (Just _jdPp)
              _jdAccessToken
              _jdUploadType
              _jdOnBehalfOfContentOwner
              _jdBearerToken
              _jdCallback
              (Just AltJSON)
              youTubeReportingService
          where go
                  = buildClient (Proxy :: Proxy JobsDeleteResource)
                      mempty
