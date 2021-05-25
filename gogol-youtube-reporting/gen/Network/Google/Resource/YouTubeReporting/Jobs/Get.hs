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
-- Module      : Network.Google.Resource.YouTubeReporting.Jobs.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets a job.
--
-- /See:/ <https://developers.google.com/youtube/reporting/v1/reports/ YouTube Reporting API Reference> for @youtubereporting.jobs.get@.
module Network.Google.Resource.YouTubeReporting.Jobs.Get
    (
    -- * REST Resource
      JobsGetResource

    -- * Creating a Request
    , jobsGet
    , JobsGet

    -- * Request Lenses
    , jgXgafv
    , jgJobId
    , jgUploadProtocol
    , jgAccessToken
    , jgUploadType
    , jgOnBehalfOfContentOwner
    , jgCallback
    ) where

import Network.Google.Prelude
import Network.Google.YouTubeReporting.Types

-- | A resource alias for @youtubereporting.jobs.get@ method which the
-- 'JobsGet' request conforms to.
type JobsGetResource =
     "v1" :>
       "jobs" :>
         Capture "jobId" Text :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "onBehalfOfContentOwner" Text :>
                     QueryParam "callback" Text :>
                       QueryParam "alt" AltJSON :> Get '[JSON] Job

-- | Gets a job.
--
-- /See:/ 'jobsGet' smart constructor.
data JobsGet =
  JobsGet'
    { _jgXgafv :: !(Maybe Xgafv)
    , _jgJobId :: !Text
    , _jgUploadProtocol :: !(Maybe Text)
    , _jgAccessToken :: !(Maybe Text)
    , _jgUploadType :: !(Maybe Text)
    , _jgOnBehalfOfContentOwner :: !(Maybe Text)
    , _jgCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'JobsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'jgXgafv'
--
-- * 'jgJobId'
--
-- * 'jgUploadProtocol'
--
-- * 'jgAccessToken'
--
-- * 'jgUploadType'
--
-- * 'jgOnBehalfOfContentOwner'
--
-- * 'jgCallback'
jobsGet
    :: Text -- ^ 'jgJobId'
    -> JobsGet
jobsGet pJgJobId_ =
  JobsGet'
    { _jgXgafv = Nothing
    , _jgJobId = pJgJobId_
    , _jgUploadProtocol = Nothing
    , _jgAccessToken = Nothing
    , _jgUploadType = Nothing
    , _jgOnBehalfOfContentOwner = Nothing
    , _jgCallback = Nothing
    }


-- | V1 error format.
jgXgafv :: Lens' JobsGet (Maybe Xgafv)
jgXgafv = lens _jgXgafv (\ s a -> s{_jgXgafv = a})

-- | The ID of the job to retrieve.
jgJobId :: Lens' JobsGet Text
jgJobId = lens _jgJobId (\ s a -> s{_jgJobId = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
jgUploadProtocol :: Lens' JobsGet (Maybe Text)
jgUploadProtocol
  = lens _jgUploadProtocol
      (\ s a -> s{_jgUploadProtocol = a})

-- | OAuth access token.
jgAccessToken :: Lens' JobsGet (Maybe Text)
jgAccessToken
  = lens _jgAccessToken
      (\ s a -> s{_jgAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
jgUploadType :: Lens' JobsGet (Maybe Text)
jgUploadType
  = lens _jgUploadType (\ s a -> s{_jgUploadType = a})

-- | The content owner\'s external ID on which behalf the user is acting on.
-- If not set, the user is acting for himself (his own channel).
jgOnBehalfOfContentOwner :: Lens' JobsGet (Maybe Text)
jgOnBehalfOfContentOwner
  = lens _jgOnBehalfOfContentOwner
      (\ s a -> s{_jgOnBehalfOfContentOwner = a})

-- | JSONP
jgCallback :: Lens' JobsGet (Maybe Text)
jgCallback
  = lens _jgCallback (\ s a -> s{_jgCallback = a})

instance GoogleRequest JobsGet where
        type Rs JobsGet = Job
        type Scopes JobsGet =
             '["https://www.googleapis.com/auth/yt-analytics-monetary.readonly",
               "https://www.googleapis.com/auth/yt-analytics.readonly"]
        requestClient JobsGet'{..}
          = go _jgJobId _jgXgafv _jgUploadProtocol
              _jgAccessToken
              _jgUploadType
              _jgOnBehalfOfContentOwner
              _jgCallback
              (Just AltJSON)
              youTubeReportingService
          where go
                  = buildClient (Proxy :: Proxy JobsGetResource) mempty
