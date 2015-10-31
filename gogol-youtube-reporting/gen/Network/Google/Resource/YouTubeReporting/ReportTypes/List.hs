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
-- Module      : Network.Google.Resource.YouTubeReporting.ReportTypes.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists report types.
--
-- /See:/ <https://developers.google.com/youtube/reporting/v1/reports/ YouTube Reporting API Reference> for @youtubereporting.reportTypes.list@.
module Network.Google.Resource.YouTubeReporting.ReportTypes.List
    (
    -- * REST Resource
      ReportTypesListResource

    -- * Creating a Request
    , reportTypesList
    , ReportTypesList

    -- * Request Lenses
    , rtlXgafv
    , rtlUploadProtocol
    , rtlPp
    , rtlAccessToken
    , rtlUploadType
    , rtlIncludeSystemManaged
    , rtlOnBehalfOfContentOwner
    , rtlBearerToken
    , rtlPageToken
    , rtlPageSize
    , rtlCallback
    ) where

import           Network.Google.Prelude
import           Network.Google.YouTubeReporting.Types

-- | A resource alias for @youtubereporting.reportTypes.list@ method which the
-- 'ReportTypesList' request conforms to.
type ReportTypesListResource =
     "v1" :>
       "reportTypes" :>
         QueryParam "$.xgafv" Text :>
           QueryParam "upload_protocol" Text :>
             QueryParam "pp" Bool :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "includeSystemManaged" Bool :>
                     QueryParam "onBehalfOfContentOwner" Text :>
                       QueryParam "bearer_token" Text :>
                         QueryParam "pageToken" Text :>
                           QueryParam "pageSize" (Textual Int32) :>
                             QueryParam "callback" Text :>
                               QueryParam "alt" AltJSON :>
                                 Get '[JSON] ListReportTypesResponse

-- | Lists report types.
--
-- /See:/ 'reportTypesList' smart constructor.
data ReportTypesList = ReportTypesList
    { _rtlXgafv                  :: !(Maybe Text)
    , _rtlUploadProtocol         :: !(Maybe Text)
    , _rtlPp                     :: !Bool
    , _rtlAccessToken            :: !(Maybe Text)
    , _rtlUploadType             :: !(Maybe Text)
    , _rtlIncludeSystemManaged   :: !(Maybe Bool)
    , _rtlOnBehalfOfContentOwner :: !(Maybe Text)
    , _rtlBearerToken            :: !(Maybe Text)
    , _rtlPageToken              :: !(Maybe Text)
    , _rtlPageSize               :: !(Maybe (Textual Int32))
    , _rtlCallback               :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ReportTypesList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rtlXgafv'
--
-- * 'rtlUploadProtocol'
--
-- * 'rtlPp'
--
-- * 'rtlAccessToken'
--
-- * 'rtlUploadType'
--
-- * 'rtlIncludeSystemManaged'
--
-- * 'rtlOnBehalfOfContentOwner'
--
-- * 'rtlBearerToken'
--
-- * 'rtlPageToken'
--
-- * 'rtlPageSize'
--
-- * 'rtlCallback'
reportTypesList
    :: ReportTypesList
reportTypesList =
    ReportTypesList
    { _rtlXgafv = Nothing
    , _rtlUploadProtocol = Nothing
    , _rtlPp = True
    , _rtlAccessToken = Nothing
    , _rtlUploadType = Nothing
    , _rtlIncludeSystemManaged = Nothing
    , _rtlOnBehalfOfContentOwner = Nothing
    , _rtlBearerToken = Nothing
    , _rtlPageToken = Nothing
    , _rtlPageSize = Nothing
    , _rtlCallback = Nothing
    }

-- | V1 error format.
rtlXgafv :: Lens' ReportTypesList (Maybe Text)
rtlXgafv = lens _rtlXgafv (\ s a -> s{_rtlXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
rtlUploadProtocol :: Lens' ReportTypesList (Maybe Text)
rtlUploadProtocol
  = lens _rtlUploadProtocol
      (\ s a -> s{_rtlUploadProtocol = a})

-- | Pretty-print response.
rtlPp :: Lens' ReportTypesList Bool
rtlPp = lens _rtlPp (\ s a -> s{_rtlPp = a})

-- | OAuth access token.
rtlAccessToken :: Lens' ReportTypesList (Maybe Text)
rtlAccessToken
  = lens _rtlAccessToken
      (\ s a -> s{_rtlAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
rtlUploadType :: Lens' ReportTypesList (Maybe Text)
rtlUploadType
  = lens _rtlUploadType
      (\ s a -> s{_rtlUploadType = a})

-- | If set to true, also system-managed report types will be returned;
-- otherwise only the report types that can be used to create new reporting
-- jobs will be returned.
rtlIncludeSystemManaged :: Lens' ReportTypesList (Maybe Bool)
rtlIncludeSystemManaged
  = lens _rtlIncludeSystemManaged
      (\ s a -> s{_rtlIncludeSystemManaged = a})

-- | The content owner\'s external ID on which behalf the user is acting on.
-- If not set, the user is acting for himself (his own channel).
rtlOnBehalfOfContentOwner :: Lens' ReportTypesList (Maybe Text)
rtlOnBehalfOfContentOwner
  = lens _rtlOnBehalfOfContentOwner
      (\ s a -> s{_rtlOnBehalfOfContentOwner = a})

-- | OAuth bearer token.
rtlBearerToken :: Lens' ReportTypesList (Maybe Text)
rtlBearerToken
  = lens _rtlBearerToken
      (\ s a -> s{_rtlBearerToken = a})

-- | A token identifying a page of results the server should return.
-- Typically, this is the value of ListReportTypesResponse.next_page_token
-- returned in response to the previous call to the \`ListReportTypes\`
-- method.
rtlPageToken :: Lens' ReportTypesList (Maybe Text)
rtlPageToken
  = lens _rtlPageToken (\ s a -> s{_rtlPageToken = a})

-- | Requested page size. Server may return fewer report types than
-- requested. If unspecified, server will pick an appropriate default.
rtlPageSize :: Lens' ReportTypesList (Maybe Int32)
rtlPageSize
  = lens _rtlPageSize (\ s a -> s{_rtlPageSize = a}) .
      mapping _Coerce

-- | JSONP
rtlCallback :: Lens' ReportTypesList (Maybe Text)
rtlCallback
  = lens _rtlCallback (\ s a -> s{_rtlCallback = a})

instance GoogleRequest ReportTypesList where
        type Rs ReportTypesList = ListReportTypesResponse
        type Scopes ReportTypesList =
             '["https://www.googleapis.com/auth/yt-analytics-monetary.readonly",
               "https://www.googleapis.com/auth/yt-analytics.readonly"]
        requestClient ReportTypesList{..}
          = go _rtlXgafv _rtlUploadProtocol (Just _rtlPp)
              _rtlAccessToken
              _rtlUploadType
              _rtlIncludeSystemManaged
              _rtlOnBehalfOfContentOwner
              _rtlBearerToken
              _rtlPageToken
              _rtlPageSize
              _rtlCallback
              (Just AltJSON)
              youTubeReportingService
          where go
                  = buildClient
                      (Proxy :: Proxy ReportTypesListResource)
                      mempty
