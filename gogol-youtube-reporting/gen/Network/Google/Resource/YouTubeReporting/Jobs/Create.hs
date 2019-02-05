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
-- Module      : Network.Google.Resource.YouTubeReporting.Jobs.Create
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a job and returns it.
--
-- /See:/ <https://developers.google.com/youtube/reporting/v1/reports/ YouTube Reporting API Reference> for @youtubereporting.jobs.create@.
module Network.Google.Resource.YouTubeReporting.Jobs.Create
    (
    -- * REST Resource
      JobsCreateResource

    -- * Creating a Request
    , jobsCreate
    , JobsCreate

    -- * Request Lenses
    , jcXgafv
    , jcUploadProtocol
    , jcAccessToken
    , jcUploadType
    , jcPayload
    , jcOnBehalfOfContentOwner
    , jcCallback
    ) where

import           Network.Google.Prelude
import           Network.Google.YouTubeReporting.Types

-- | A resource alias for @youtubereporting.jobs.create@ method which the
-- 'JobsCreate' request conforms to.
type JobsCreateResource =
     "v1" :>
       "jobs" :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "onBehalfOfContentOwner" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] Job :> Post '[JSON] Job

-- | Creates a job and returns it.
--
-- /See:/ 'jobsCreate' smart constructor.
data JobsCreate = JobsCreate'
    { _jcXgafv                  :: !(Maybe Xgafv)
    , _jcUploadProtocol         :: !(Maybe Text)
    , _jcAccessToken            :: !(Maybe Text)
    , _jcUploadType             :: !(Maybe Text)
    , _jcPayload                :: !Job
    , _jcOnBehalfOfContentOwner :: !(Maybe Text)
    , _jcCallback               :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'JobsCreate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'jcXgafv'
--
-- * 'jcUploadProtocol'
--
-- * 'jcAccessToken'
--
-- * 'jcUploadType'
--
-- * 'jcPayload'
--
-- * 'jcOnBehalfOfContentOwner'
--
-- * 'jcCallback'
jobsCreate
    :: Job -- ^ 'jcPayload'
    -> JobsCreate
jobsCreate pJcPayload_ =
    JobsCreate'
    { _jcXgafv = Nothing
    , _jcUploadProtocol = Nothing
    , _jcAccessToken = Nothing
    , _jcUploadType = Nothing
    , _jcPayload = pJcPayload_
    , _jcOnBehalfOfContentOwner = Nothing
    , _jcCallback = Nothing
    }

-- | V1 error format.
jcXgafv :: Lens' JobsCreate (Maybe Xgafv)
jcXgafv = lens _jcXgafv (\ s a -> s{_jcXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
jcUploadProtocol :: Lens' JobsCreate (Maybe Text)
jcUploadProtocol
  = lens _jcUploadProtocol
      (\ s a -> s{_jcUploadProtocol = a})

-- | OAuth access token.
jcAccessToken :: Lens' JobsCreate (Maybe Text)
jcAccessToken
  = lens _jcAccessToken
      (\ s a -> s{_jcAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
jcUploadType :: Lens' JobsCreate (Maybe Text)
jcUploadType
  = lens _jcUploadType (\ s a -> s{_jcUploadType = a})

-- | Multipart request metadata.
jcPayload :: Lens' JobsCreate Job
jcPayload
  = lens _jcPayload (\ s a -> s{_jcPayload = a})

-- | The content owner\'s external ID on which behalf the user is acting on.
-- If not set, the user is acting for himself (his own channel).
jcOnBehalfOfContentOwner :: Lens' JobsCreate (Maybe Text)
jcOnBehalfOfContentOwner
  = lens _jcOnBehalfOfContentOwner
      (\ s a -> s{_jcOnBehalfOfContentOwner = a})

-- | JSONP
jcCallback :: Lens' JobsCreate (Maybe Text)
jcCallback
  = lens _jcCallback (\ s a -> s{_jcCallback = a})

instance GoogleRequest JobsCreate where
        type Rs JobsCreate = Job
        type Scopes JobsCreate =
             '["https://www.googleapis.com/auth/yt-analytics-monetary.readonly",
               "https://www.googleapis.com/auth/yt-analytics.readonly"]
        requestClient JobsCreate'{..}
          = go _jcXgafv _jcUploadProtocol _jcAccessToken
              _jcUploadType
              _jcOnBehalfOfContentOwner
              _jcCallback
              (Just AltJSON)
              _jcPayload
              youTubeReportingService
          where go
                  = buildClient (Proxy :: Proxy JobsCreateResource)
                      mempty
