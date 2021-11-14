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
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a job.
--
-- /See:/ <https://developers.google.com/youtube/reporting/v1/reports/ YouTube Reporting API Reference> for @youtubereporting.jobs.delete@.
module Network.Google.Resource.YouTubeReporting.Jobs.Delete
    (
    -- * REST Resource
      JobsDeleteResource

    -- * Creating a Request
    , jobsDelete
    , JobsDelete

    -- * Request Lenses
    , jdXgafv
    , jdJobId
    , jdUploadProtocol
    , jdAccessToken
    , jdUploadType
    , jdOnBehalfOfContentOwner
    , jdCallback
    ) where

import Network.Google.Prelude
import Network.Google.YouTubeReporting.Types

-- | A resource alias for @youtubereporting.jobs.delete@ method which the
-- 'JobsDelete' request conforms to.
type JobsDeleteResource =
     "v1" :>
       "jobs" :>
         Capture "jobId" Text :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "onBehalfOfContentOwner" Text :>
                     QueryParam "callback" Text :>
                       QueryParam "alt" AltJSON :> Delete '[JSON] Empty

-- | Deletes a job.
--
-- /See:/ 'jobsDelete' smart constructor.
data JobsDelete =
  JobsDelete'
    { _jdXgafv :: !(Maybe Xgafv)
    , _jdJobId :: !Text
    , _jdUploadProtocol :: !(Maybe Text)
    , _jdAccessToken :: !(Maybe Text)
    , _jdUploadType :: !(Maybe Text)
    , _jdOnBehalfOfContentOwner :: !(Maybe Text)
    , _jdCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'JobsDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'jdXgafv'
--
-- * 'jdJobId'
--
-- * 'jdUploadProtocol'
--
-- * 'jdAccessToken'
--
-- * 'jdUploadType'
--
-- * 'jdOnBehalfOfContentOwner'
--
-- * 'jdCallback'
jobsDelete
    :: Text -- ^ 'jdJobId'
    -> JobsDelete
jobsDelete pJdJobId_ =
  JobsDelete'
    { _jdXgafv = Nothing
    , _jdJobId = pJdJobId_
    , _jdUploadProtocol = Nothing
    , _jdAccessToken = Nothing
    , _jdUploadType = Nothing
    , _jdOnBehalfOfContentOwner = Nothing
    , _jdCallback = Nothing
    }


-- | V1 error format.
jdXgafv :: Lens' JobsDelete (Maybe Xgafv)
jdXgafv = lens _jdXgafv (\ s a -> s{_jdXgafv = a})

-- | The ID of the job to delete.
jdJobId :: Lens' JobsDelete Text
jdJobId = lens _jdJobId (\ s a -> s{_jdJobId = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
jdUploadProtocol :: Lens' JobsDelete (Maybe Text)
jdUploadProtocol
  = lens _jdUploadProtocol
      (\ s a -> s{_jdUploadProtocol = a})

-- | OAuth access token.
jdAccessToken :: Lens' JobsDelete (Maybe Text)
jdAccessToken
  = lens _jdAccessToken
      (\ s a -> s{_jdAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
jdUploadType :: Lens' JobsDelete (Maybe Text)
jdUploadType
  = lens _jdUploadType (\ s a -> s{_jdUploadType = a})

-- | The content owner\'s external ID on which behalf the user is acting on.
-- If not set, the user is acting for himself (his own channel).
jdOnBehalfOfContentOwner :: Lens' JobsDelete (Maybe Text)
jdOnBehalfOfContentOwner
  = lens _jdOnBehalfOfContentOwner
      (\ s a -> s{_jdOnBehalfOfContentOwner = a})

-- | JSONP
jdCallback :: Lens' JobsDelete (Maybe Text)
jdCallback
  = lens _jdCallback (\ s a -> s{_jdCallback = a})

instance GoogleRequest JobsDelete where
        type Rs JobsDelete = Empty
        type Scopes JobsDelete =
             '["https://www.googleapis.com/auth/yt-analytics-monetary.readonly",
               "https://www.googleapis.com/auth/yt-analytics.readonly"]
        requestClient JobsDelete'{..}
          = go _jdJobId _jdXgafv _jdUploadProtocol
              _jdAccessToken
              _jdUploadType
              _jdOnBehalfOfContentOwner
              _jdCallback
              (Just AltJSON)
              youTubeReportingService
          where go
                  = buildClient (Proxy :: Proxy JobsDeleteResource)
                      mempty
