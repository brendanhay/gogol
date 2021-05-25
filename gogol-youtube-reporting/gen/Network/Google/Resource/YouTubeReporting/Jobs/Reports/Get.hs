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
-- Module      : Network.Google.Resource.YouTubeReporting.Jobs.Reports.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the metadata of a specific report.
--
-- /See:/ <https://developers.google.com/youtube/reporting/v1/reports/ YouTube Reporting API Reference> for @youtubereporting.jobs.reports.get@.
module Network.Google.Resource.YouTubeReporting.Jobs.Reports.Get
    (
    -- * REST Resource
      JobsReportsGetResource

    -- * Creating a Request
    , jobsReportsGet
    , JobsReportsGet

    -- * Request Lenses
    , jrgXgafv
    , jrgJobId
    , jrgUploadProtocol
    , jrgAccessToken
    , jrgReportId
    , jrgUploadType
    , jrgOnBehalfOfContentOwner
    , jrgCallback
    ) where

import Network.Google.Prelude
import Network.Google.YouTubeReporting.Types

-- | A resource alias for @youtubereporting.jobs.reports.get@ method which the
-- 'JobsReportsGet' request conforms to.
type JobsReportsGetResource =
     "v1" :>
       "jobs" :>
         Capture "jobId" Text :>
           "reports" :>
             Capture "reportId" Text :>
               QueryParam "$.xgafv" Xgafv :>
                 QueryParam "upload_protocol" Text :>
                   QueryParam "access_token" Text :>
                     QueryParam "uploadType" Text :>
                       QueryParam "onBehalfOfContentOwner" Text :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :> Get '[JSON] Report

-- | Gets the metadata of a specific report.
--
-- /See:/ 'jobsReportsGet' smart constructor.
data JobsReportsGet =
  JobsReportsGet'
    { _jrgXgafv :: !(Maybe Xgafv)
    , _jrgJobId :: !Text
    , _jrgUploadProtocol :: !(Maybe Text)
    , _jrgAccessToken :: !(Maybe Text)
    , _jrgReportId :: !Text
    , _jrgUploadType :: !(Maybe Text)
    , _jrgOnBehalfOfContentOwner :: !(Maybe Text)
    , _jrgCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'JobsReportsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'jrgXgafv'
--
-- * 'jrgJobId'
--
-- * 'jrgUploadProtocol'
--
-- * 'jrgAccessToken'
--
-- * 'jrgReportId'
--
-- * 'jrgUploadType'
--
-- * 'jrgOnBehalfOfContentOwner'
--
-- * 'jrgCallback'
jobsReportsGet
    :: Text -- ^ 'jrgJobId'
    -> Text -- ^ 'jrgReportId'
    -> JobsReportsGet
jobsReportsGet pJrgJobId_ pJrgReportId_ =
  JobsReportsGet'
    { _jrgXgafv = Nothing
    , _jrgJobId = pJrgJobId_
    , _jrgUploadProtocol = Nothing
    , _jrgAccessToken = Nothing
    , _jrgReportId = pJrgReportId_
    , _jrgUploadType = Nothing
    , _jrgOnBehalfOfContentOwner = Nothing
    , _jrgCallback = Nothing
    }


-- | V1 error format.
jrgXgafv :: Lens' JobsReportsGet (Maybe Xgafv)
jrgXgafv = lens _jrgXgafv (\ s a -> s{_jrgXgafv = a})

-- | The ID of the job.
jrgJobId :: Lens' JobsReportsGet Text
jrgJobId = lens _jrgJobId (\ s a -> s{_jrgJobId = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
jrgUploadProtocol :: Lens' JobsReportsGet (Maybe Text)
jrgUploadProtocol
  = lens _jrgUploadProtocol
      (\ s a -> s{_jrgUploadProtocol = a})

-- | OAuth access token.
jrgAccessToken :: Lens' JobsReportsGet (Maybe Text)
jrgAccessToken
  = lens _jrgAccessToken
      (\ s a -> s{_jrgAccessToken = a})

-- | The ID of the report to retrieve.
jrgReportId :: Lens' JobsReportsGet Text
jrgReportId
  = lens _jrgReportId (\ s a -> s{_jrgReportId = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
jrgUploadType :: Lens' JobsReportsGet (Maybe Text)
jrgUploadType
  = lens _jrgUploadType
      (\ s a -> s{_jrgUploadType = a})

-- | The content owner\'s external ID on which behalf the user is acting on.
-- If not set, the user is acting for himself (his own channel).
jrgOnBehalfOfContentOwner :: Lens' JobsReportsGet (Maybe Text)
jrgOnBehalfOfContentOwner
  = lens _jrgOnBehalfOfContentOwner
      (\ s a -> s{_jrgOnBehalfOfContentOwner = a})

-- | JSONP
jrgCallback :: Lens' JobsReportsGet (Maybe Text)
jrgCallback
  = lens _jrgCallback (\ s a -> s{_jrgCallback = a})

instance GoogleRequest JobsReportsGet where
        type Rs JobsReportsGet = Report
        type Scopes JobsReportsGet =
             '["https://www.googleapis.com/auth/yt-analytics-monetary.readonly",
               "https://www.googleapis.com/auth/yt-analytics.readonly"]
        requestClient JobsReportsGet'{..}
          = go _jrgJobId _jrgReportId _jrgXgafv
              _jrgUploadProtocol
              _jrgAccessToken
              _jrgUploadType
              _jrgOnBehalfOfContentOwner
              _jrgCallback
              (Just AltJSON)
              youTubeReportingService
          where go
                  = buildClient (Proxy :: Proxy JobsReportsGetResource)
                      mempty
