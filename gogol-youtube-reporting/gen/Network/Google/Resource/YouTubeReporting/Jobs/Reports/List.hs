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
-- Copyright   : (c) 2015 Brendan Hay
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
    , jrlXgafv
    , jrlJobId
    , jrlUploadProtocol
    , jrlPp
    , jrlAccessToken
    , jrlUploadType
    , jrlOnBehalfOfContentOwner
    , jrlBearerToken
    , jrlPageToken
    , jrlPageSize
    , jrlCallback
    ) where

import           Network.Google.Prelude
import           Network.Google.YouTubeReporting.Types

-- | A resource alias for @youtubereporting.jobs.reports.list@ method which the
-- 'JobsReportsList' request conforms to.
type JobsReportsListResource =
     "v1" :>
       "jobs" :>
         Capture "jobId" Text :>
           "reports" :>
             QueryParam "$.xgafv" Text :>
               QueryParam "upload_protocol" Text :>
                 QueryParam "pp" Bool :>
                   QueryParam "access_token" Text :>
                     QueryParam "uploadType" Text :>
                       QueryParam "onBehalfOfContentOwner" Text :>
                         QueryParam "bearer_token" Text :>
                           QueryParam "pageToken" Text :>
                             QueryParam "pageSize" (JSONText Int32) :>
                               QueryParam "callback" Text :>
                                 QueryParam "alt" AltJSON :>
                                   Get '[JSON] ListReportsResponse

-- | Lists reports created by a specific job. Returns NOT_FOUND if the job
-- does not exist.
--
-- /See:/ 'jobsReportsList' smart constructor.
data JobsReportsList = JobsReportsList
    { _jrlXgafv                  :: !(Maybe Text)
    , _jrlJobId                  :: !Text
    , _jrlUploadProtocol         :: !(Maybe Text)
    , _jrlPp                     :: !Bool
    , _jrlAccessToken            :: !(Maybe Text)
    , _jrlUploadType             :: !(Maybe Text)
    , _jrlOnBehalfOfContentOwner :: !(Maybe Text)
    , _jrlBearerToken            :: !(Maybe Text)
    , _jrlPageToken              :: !(Maybe Text)
    , _jrlPageSize               :: !(Maybe (JSONText Int32))
    , _jrlCallback               :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'JobsReportsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'jrlXgafv'
--
-- * 'jrlJobId'
--
-- * 'jrlUploadProtocol'
--
-- * 'jrlPp'
--
-- * 'jrlAccessToken'
--
-- * 'jrlUploadType'
--
-- * 'jrlOnBehalfOfContentOwner'
--
-- * 'jrlBearerToken'
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
    JobsReportsList
    { _jrlXgafv = Nothing
    , _jrlJobId = pJrlJobId_
    , _jrlUploadProtocol = Nothing
    , _jrlPp = True
    , _jrlAccessToken = Nothing
    , _jrlUploadType = Nothing
    , _jrlOnBehalfOfContentOwner = Nothing
    , _jrlBearerToken = Nothing
    , _jrlPageToken = Nothing
    , _jrlPageSize = Nothing
    , _jrlCallback = Nothing
    }

-- | V1 error format.
jrlXgafv :: Lens' JobsReportsList (Maybe Text)
jrlXgafv = lens _jrlXgafv (\ s a -> s{_jrlXgafv = a})

-- | The ID of the job.
jrlJobId :: Lens' JobsReportsList Text
jrlJobId = lens _jrlJobId (\ s a -> s{_jrlJobId = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
jrlUploadProtocol :: Lens' JobsReportsList (Maybe Text)
jrlUploadProtocol
  = lens _jrlUploadProtocol
      (\ s a -> s{_jrlUploadProtocol = a})

-- | Pretty-print response.
jrlPp :: Lens' JobsReportsList Bool
jrlPp = lens _jrlPp (\ s a -> s{_jrlPp = a})

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

-- | The content owner\'s external ID on which behalf the user is acting on.
-- If not set, the user is acting for himself (his own channel).
jrlOnBehalfOfContentOwner :: Lens' JobsReportsList (Maybe Text)
jrlOnBehalfOfContentOwner
  = lens _jrlOnBehalfOfContentOwner
      (\ s a -> s{_jrlOnBehalfOfContentOwner = a})

-- | OAuth bearer token.
jrlBearerToken :: Lens' JobsReportsList (Maybe Text)
jrlBearerToken
  = lens _jrlBearerToken
      (\ s a -> s{_jrlBearerToken = a})

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
        requestClient JobsReportsList{..}
          = go _jrlJobId _jrlXgafv _jrlUploadProtocol
              (Just _jrlPp)
              _jrlAccessToken
              _jrlUploadType
              _jrlOnBehalfOfContentOwner
              _jrlBearerToken
              _jrlPageToken
              _jrlPageSize
              _jrlCallback
              (Just AltJSON)
              youTubeReportingService
          where go
                  = buildClient
                      (Proxy :: Proxy JobsReportsListResource)
                      mempty
