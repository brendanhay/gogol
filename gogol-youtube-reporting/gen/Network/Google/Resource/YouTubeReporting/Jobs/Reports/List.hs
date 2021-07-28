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
-- Module      : Network.Google.Resource.YouTubeReporting.Jobs.Reports.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists reports created by a specific job. Returns NOT_FOUND if the job
-- does not exist.
--
-- /See:/ <https://developers.google.com/youtube/reporting/v1/reports/ YouTube Reporting API Reference> for @youtubereporting.jobs.reports.list@.
module Network.Google.Resource.YouTubeReporting.Jobs.Reports.List
    (
    -- * REST Resource
      JobsReportsListResource

    -- * Creating a Request
    , jobsReportsList
    , JobsReportsList

    -- * Request Lenses
    , jrlCreatedAfter
    , jrlXgafv
    , jrlJobId
    , jrlUploadProtocol
    , jrlAccessToken
    , jrlUploadType
    , jrlStartTimeAtOrAfter
    , jrlStartTimeBefore
    , jrlOnBehalfOfContentOwner
    , jrlPageToken
    , jrlPageSize
    , jrlCallback
    ) where

import Network.Google.Prelude
import Network.Google.YouTubeReporting.Types

-- | A resource alias for @youtubereporting.jobs.reports.list@ method which the
-- 'JobsReportsList' request conforms to.
type JobsReportsListResource =
     "v1" :>
       "jobs" :>
         Capture "jobId" Text :>
           "reports" :>
             QueryParam "createdAfter" DateTime' :>
               QueryParam "$.xgafv" Xgafv :>
                 QueryParam "upload_protocol" Text :>
                   QueryParam "access_token" Text :>
                     QueryParam "uploadType" Text :>
                       QueryParam "startTimeAtOrAfter" DateTime' :>
                         QueryParam "startTimeBefore" DateTime' :>
                           QueryParam "onBehalfOfContentOwner" Text :>
                             QueryParam "pageToken" Text :>
                               QueryParam "pageSize" (Textual Int32) :>
                                 QueryParam "callback" Text :>
                                   QueryParam "alt" AltJSON :>
                                     Get '[JSON] ListReportsResponse

-- | Lists reports created by a specific job. Returns NOT_FOUND if the job
-- does not exist.
--
-- /See:/ 'jobsReportsList' smart constructor.
data JobsReportsList =
  JobsReportsList'
    { _jrlCreatedAfter :: !(Maybe DateTime')
    , _jrlXgafv :: !(Maybe Xgafv)
    , _jrlJobId :: !Text
    , _jrlUploadProtocol :: !(Maybe Text)
    , _jrlAccessToken :: !(Maybe Text)
    , _jrlUploadType :: !(Maybe Text)
    , _jrlStartTimeAtOrAfter :: !(Maybe DateTime')
    , _jrlStartTimeBefore :: !(Maybe DateTime')
    , _jrlOnBehalfOfContentOwner :: !(Maybe Text)
    , _jrlPageToken :: !(Maybe Text)
    , _jrlPageSize :: !(Maybe (Textual Int32))
    , _jrlCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'JobsReportsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'jrlCreatedAfter'
--
-- * 'jrlXgafv'
--
-- * 'jrlJobId'
--
-- * 'jrlUploadProtocol'
--
-- * 'jrlAccessToken'
--
-- * 'jrlUploadType'
--
-- * 'jrlStartTimeAtOrAfter'
--
-- * 'jrlStartTimeBefore'
--
-- * 'jrlOnBehalfOfContentOwner'
--
-- * 'jrlPageToken'
--
-- * 'jrlPageSize'
--
-- * 'jrlCallback'
jobsReportsList
    :: Text -- ^ 'jrlJobId'
    -> JobsReportsList
jobsReportsList pJrlJobId_ =
  JobsReportsList'
    { _jrlCreatedAfter = Nothing
    , _jrlXgafv = Nothing
    , _jrlJobId = pJrlJobId_
    , _jrlUploadProtocol = Nothing
    , _jrlAccessToken = Nothing
    , _jrlUploadType = Nothing
    , _jrlStartTimeAtOrAfter = Nothing
    , _jrlStartTimeBefore = Nothing
    , _jrlOnBehalfOfContentOwner = Nothing
    , _jrlPageToken = Nothing
    , _jrlPageSize = Nothing
    , _jrlCallback = Nothing
    }


-- | If set, only reports created after the specified date\/time are
-- returned.
jrlCreatedAfter :: Lens' JobsReportsList (Maybe UTCTime)
jrlCreatedAfter
  = lens _jrlCreatedAfter
      (\ s a -> s{_jrlCreatedAfter = a})
      . mapping _DateTime

-- | V1 error format.
jrlXgafv :: Lens' JobsReportsList (Maybe Xgafv)
jrlXgafv = lens _jrlXgafv (\ s a -> s{_jrlXgafv = a})

-- | The ID of the job.
jrlJobId :: Lens' JobsReportsList Text
jrlJobId = lens _jrlJobId (\ s a -> s{_jrlJobId = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
jrlUploadProtocol :: Lens' JobsReportsList (Maybe Text)
jrlUploadProtocol
  = lens _jrlUploadProtocol
      (\ s a -> s{_jrlUploadProtocol = a})

-- | OAuth access token.
jrlAccessToken :: Lens' JobsReportsList (Maybe Text)
jrlAccessToken
  = lens _jrlAccessToken
      (\ s a -> s{_jrlAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
jrlUploadType :: Lens' JobsReportsList (Maybe Text)
jrlUploadType
  = lens _jrlUploadType
      (\ s a -> s{_jrlUploadType = a})

-- | If set, only reports whose start time is greater than or equal the
-- specified date\/time are returned.
jrlStartTimeAtOrAfter :: Lens' JobsReportsList (Maybe UTCTime)
jrlStartTimeAtOrAfter
  = lens _jrlStartTimeAtOrAfter
      (\ s a -> s{_jrlStartTimeAtOrAfter = a})
      . mapping _DateTime

-- | If set, only reports whose start time is smaller than the specified
-- date\/time are returned.
jrlStartTimeBefore :: Lens' JobsReportsList (Maybe UTCTime)
jrlStartTimeBefore
  = lens _jrlStartTimeBefore
      (\ s a -> s{_jrlStartTimeBefore = a})
      . mapping _DateTime

-- | The content owner\'s external ID on which behalf the user is acting on.
-- If not set, the user is acting for himself (his own channel).
jrlOnBehalfOfContentOwner :: Lens' JobsReportsList (Maybe Text)
jrlOnBehalfOfContentOwner
  = lens _jrlOnBehalfOfContentOwner
      (\ s a -> s{_jrlOnBehalfOfContentOwner = a})

-- | A token identifying a page of results the server should return.
-- Typically, this is the value of ListReportsResponse.next_page_token
-- returned in response to the previous call to the \`ListReports\` method.
jrlPageToken :: Lens' JobsReportsList (Maybe Text)
jrlPageToken
  = lens _jrlPageToken (\ s a -> s{_jrlPageToken = a})

-- | Requested page size. Server may return fewer report types than
-- requested. If unspecified, server will pick an appropriate default.
jrlPageSize :: Lens' JobsReportsList (Maybe Int32)
jrlPageSize
  = lens _jrlPageSize (\ s a -> s{_jrlPageSize = a}) .
      mapping _Coerce

-- | JSONP
jrlCallback :: Lens' JobsReportsList (Maybe Text)
jrlCallback
  = lens _jrlCallback (\ s a -> s{_jrlCallback = a})

instance GoogleRequest JobsReportsList where
        type Rs JobsReportsList = ListReportsResponse
        type Scopes JobsReportsList =
             '["https://www.googleapis.com/auth/yt-analytics-monetary.readonly",
               "https://www.googleapis.com/auth/yt-analytics.readonly"]
        requestClient JobsReportsList'{..}
          = go _jrlJobId _jrlCreatedAfter _jrlXgafv
              _jrlUploadProtocol
              _jrlAccessToken
              _jrlUploadType
              _jrlStartTimeAtOrAfter
              _jrlStartTimeBefore
              _jrlOnBehalfOfContentOwner
              _jrlPageToken
              _jrlPageSize
              _jrlCallback
              (Just AltJSON)
              youTubeReportingService
          where go
                  = buildClient
                      (Proxy :: Proxy JobsReportsListResource)
                      mempty
