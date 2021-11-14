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
-- Module      : Network.Google.Resource.DFAReporting.Reports.Files.List
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists files for a report.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/ Campaign Manager 360 API Reference> for @dfareporting.reports.files.list@.
module Network.Google.Resource.DFAReporting.Reports.Files.List
    (
    -- * REST Resource
      ReportsFilesListResource

    -- * Creating a Request
    , reportsFilesList
    , ReportsFilesList

    -- * Request Lenses
    , rflXgafv
    , rflUploadProtocol
    , rflAccessToken
    , rflReportId
    , rflUploadType
    , rflProFileId
    , rflSortOrder
    , rflPageToken
    , rflSortField
    , rflMaxResults
    , rflCallback
    ) where

import Network.Google.DFAReporting.Types
import Network.Google.Prelude

-- | A resource alias for @dfareporting.reports.files.list@ method which the
-- 'ReportsFilesList' request conforms to.
type ReportsFilesListResource =
     "dfareporting" :>
       "v3.5" :>
         "userprofiles" :>
           Capture "profileId" (Textual Int64) :>
             "reports" :>
               Capture "reportId" (Textual Int64) :>
                 "files" :>
                   QueryParam "$.xgafv" Xgafv :>
                     QueryParam "upload_protocol" Text :>
                       QueryParam "access_token" Text :>
                         QueryParam "uploadType" Text :>
                           QueryParam "sortOrder" ReportsFilesListSortOrder :>
                             QueryParam "pageToken" Text :>
                               QueryParam "sortField" ReportsFilesListSortField
                                 :>
                                 QueryParam "maxResults" (Textual Int32) :>
                                   QueryParam "callback" Text :>
                                     QueryParam "alt" AltJSON :>
                                       Get '[JSON] FileList

-- | Lists files for a report.
--
-- /See:/ 'reportsFilesList' smart constructor.
data ReportsFilesList =
  ReportsFilesList'
    { _rflXgafv :: !(Maybe Xgafv)
    , _rflUploadProtocol :: !(Maybe Text)
    , _rflAccessToken :: !(Maybe Text)
    , _rflReportId :: !(Textual Int64)
    , _rflUploadType :: !(Maybe Text)
    , _rflProFileId :: !(Textual Int64)
    , _rflSortOrder :: !ReportsFilesListSortOrder
    , _rflPageToken :: !(Maybe Text)
    , _rflSortField :: !ReportsFilesListSortField
    , _rflMaxResults :: !(Textual Int32)
    , _rflCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ReportsFilesList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rflXgafv'
--
-- * 'rflUploadProtocol'
--
-- * 'rflAccessToken'
--
-- * 'rflReportId'
--
-- * 'rflUploadType'
--
-- * 'rflProFileId'
--
-- * 'rflSortOrder'
--
-- * 'rflPageToken'
--
-- * 'rflSortField'
--
-- * 'rflMaxResults'
--
-- * 'rflCallback'
reportsFilesList
    :: Int64 -- ^ 'rflReportId'
    -> Int64 -- ^ 'rflProFileId'
    -> ReportsFilesList
reportsFilesList pRflReportId_ pRflProFileId_ =
  ReportsFilesList'
    { _rflXgafv = Nothing
    , _rflUploadProtocol = Nothing
    , _rflAccessToken = Nothing
    , _rflReportId = _Coerce # pRflReportId_
    , _rflUploadType = Nothing
    , _rflProFileId = _Coerce # pRflProFileId_
    , _rflSortOrder = RFLSODescending
    , _rflPageToken = Nothing
    , _rflSortField = RFLSFLastModifiedTime
    , _rflMaxResults = 10
    , _rflCallback = Nothing
    }


-- | V1 error format.
rflXgafv :: Lens' ReportsFilesList (Maybe Xgafv)
rflXgafv = lens _rflXgafv (\ s a -> s{_rflXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
rflUploadProtocol :: Lens' ReportsFilesList (Maybe Text)
rflUploadProtocol
  = lens _rflUploadProtocol
      (\ s a -> s{_rflUploadProtocol = a})

-- | OAuth access token.
rflAccessToken :: Lens' ReportsFilesList (Maybe Text)
rflAccessToken
  = lens _rflAccessToken
      (\ s a -> s{_rflAccessToken = a})

-- | The ID of the parent report.
rflReportId :: Lens' ReportsFilesList Int64
rflReportId
  = lens _rflReportId (\ s a -> s{_rflReportId = a}) .
      _Coerce

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
rflUploadType :: Lens' ReportsFilesList (Maybe Text)
rflUploadType
  = lens _rflUploadType
      (\ s a -> s{_rflUploadType = a})

-- | The Campaign Manager 360 user profile ID.
rflProFileId :: Lens' ReportsFilesList Int64
rflProFileId
  = lens _rflProFileId (\ s a -> s{_rflProFileId = a})
      . _Coerce

-- | Order of sorted results.
rflSortOrder :: Lens' ReportsFilesList ReportsFilesListSortOrder
rflSortOrder
  = lens _rflSortOrder (\ s a -> s{_rflSortOrder = a})

-- | The value of the nextToken from the previous result page.
rflPageToken :: Lens' ReportsFilesList (Maybe Text)
rflPageToken
  = lens _rflPageToken (\ s a -> s{_rflPageToken = a})

-- | The field by which to sort the list.
rflSortField :: Lens' ReportsFilesList ReportsFilesListSortField
rflSortField
  = lens _rflSortField (\ s a -> s{_rflSortField = a})

-- | Maximum number of results to return.
rflMaxResults :: Lens' ReportsFilesList Int32
rflMaxResults
  = lens _rflMaxResults
      (\ s a -> s{_rflMaxResults = a})
      . _Coerce

-- | JSONP
rflCallback :: Lens' ReportsFilesList (Maybe Text)
rflCallback
  = lens _rflCallback (\ s a -> s{_rflCallback = a})

instance GoogleRequest ReportsFilesList where
        type Rs ReportsFilesList = FileList
        type Scopes ReportsFilesList =
             '["https://www.googleapis.com/auth/dfareporting"]
        requestClient ReportsFilesList'{..}
          = go _rflProFileId _rflReportId _rflXgafv
              _rflUploadProtocol
              _rflAccessToken
              _rflUploadType
              (Just _rflSortOrder)
              _rflPageToken
              (Just _rflSortField)
              (Just _rflMaxResults)
              _rflCallback
              (Just AltJSON)
              dFAReportingService
          where go
                  = buildClient
                      (Proxy :: Proxy ReportsFilesListResource)
                      mempty
