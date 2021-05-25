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
-- Module      : Network.Google.Resource.DFAReporting.Reports.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves list of reports.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/ Campaign Manager 360 API Reference> for @dfareporting.reports.list@.
module Network.Google.Resource.DFAReporting.Reports.List
    (
    -- * REST Resource
      ReportsListResource

    -- * Creating a Request
    , reportsList
    , ReportsList

    -- * Request Lenses
    , rlXgafv
    , rlUploadProtocol
    , rlAccessToken
    , rlUploadType
    , rlProFileId
    , rlSortOrder
    , rlScope
    , rlPageToken
    , rlSortField
    , rlMaxResults
    , rlCallback
    ) where

import Network.Google.DFAReporting.Types
import Network.Google.Prelude

-- | A resource alias for @dfareporting.reports.list@ method which the
-- 'ReportsList' request conforms to.
type ReportsListResource =
     "dfareporting" :>
       "v3.5" :>
         "userprofiles" :>
           Capture "profileId" (Textual Int64) :>
             "reports" :>
               QueryParam "$.xgafv" Xgafv :>
                 QueryParam "upload_protocol" Text :>
                   QueryParam "access_token" Text :>
                     QueryParam "uploadType" Text :>
                       QueryParam "sortOrder" ReportsListSortOrder :>
                         QueryParam "scope" ReportsListScope :>
                           QueryParam "pageToken" Text :>
                             QueryParam "sortField" ReportsListSortField :>
                               QueryParam "maxResults" (Textual Int32) :>
                                 QueryParam "callback" Text :>
                                   QueryParam "alt" AltJSON :>
                                     Get '[JSON] ReportList

-- | Retrieves list of reports.
--
-- /See:/ 'reportsList' smart constructor.
data ReportsList =
  ReportsList'
    { _rlXgafv :: !(Maybe Xgafv)
    , _rlUploadProtocol :: !(Maybe Text)
    , _rlAccessToken :: !(Maybe Text)
    , _rlUploadType :: !(Maybe Text)
    , _rlProFileId :: !(Textual Int64)
    , _rlSortOrder :: !ReportsListSortOrder
    , _rlScope :: !ReportsListScope
    , _rlPageToken :: !(Maybe Text)
    , _rlSortField :: !ReportsListSortField
    , _rlMaxResults :: !(Textual Int32)
    , _rlCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ReportsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rlXgafv'
--
-- * 'rlUploadProtocol'
--
-- * 'rlAccessToken'
--
-- * 'rlUploadType'
--
-- * 'rlProFileId'
--
-- * 'rlSortOrder'
--
-- * 'rlScope'
--
-- * 'rlPageToken'
--
-- * 'rlSortField'
--
-- * 'rlMaxResults'
--
-- * 'rlCallback'
reportsList
    :: Int64 -- ^ 'rlProFileId'
    -> ReportsList
reportsList pRlProFileId_ =
  ReportsList'
    { _rlXgafv = Nothing
    , _rlUploadProtocol = Nothing
    , _rlAccessToken = Nothing
    , _rlUploadType = Nothing
    , _rlProFileId = _Coerce # pRlProFileId_
    , _rlSortOrder = RLSODescending
    , _rlScope = Mine
    , _rlPageToken = Nothing
    , _rlSortField = RLSFLastModifiedTime
    , _rlMaxResults = 10
    , _rlCallback = Nothing
    }


-- | V1 error format.
rlXgafv :: Lens' ReportsList (Maybe Xgafv)
rlXgafv = lens _rlXgafv (\ s a -> s{_rlXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
rlUploadProtocol :: Lens' ReportsList (Maybe Text)
rlUploadProtocol
  = lens _rlUploadProtocol
      (\ s a -> s{_rlUploadProtocol = a})

-- | OAuth access token.
rlAccessToken :: Lens' ReportsList (Maybe Text)
rlAccessToken
  = lens _rlAccessToken
      (\ s a -> s{_rlAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
rlUploadType :: Lens' ReportsList (Maybe Text)
rlUploadType
  = lens _rlUploadType (\ s a -> s{_rlUploadType = a})

-- | The Campaign Manager 360 user profile ID.
rlProFileId :: Lens' ReportsList Int64
rlProFileId
  = lens _rlProFileId (\ s a -> s{_rlProFileId = a}) .
      _Coerce

-- | Order of sorted results.
rlSortOrder :: Lens' ReportsList ReportsListSortOrder
rlSortOrder
  = lens _rlSortOrder (\ s a -> s{_rlSortOrder = a})

-- | The scope that defines which results are returned.
rlScope :: Lens' ReportsList ReportsListScope
rlScope = lens _rlScope (\ s a -> s{_rlScope = a})

-- | The value of the nextToken from the previous result page.
rlPageToken :: Lens' ReportsList (Maybe Text)
rlPageToken
  = lens _rlPageToken (\ s a -> s{_rlPageToken = a})

-- | The field by which to sort the list.
rlSortField :: Lens' ReportsList ReportsListSortField
rlSortField
  = lens _rlSortField (\ s a -> s{_rlSortField = a})

-- | Maximum number of results to return.
rlMaxResults :: Lens' ReportsList Int32
rlMaxResults
  = lens _rlMaxResults (\ s a -> s{_rlMaxResults = a})
      . _Coerce

-- | JSONP
rlCallback :: Lens' ReportsList (Maybe Text)
rlCallback
  = lens _rlCallback (\ s a -> s{_rlCallback = a})

instance GoogleRequest ReportsList where
        type Rs ReportsList = ReportList
        type Scopes ReportsList =
             '["https://www.googleapis.com/auth/dfareporting"]
        requestClient ReportsList'{..}
          = go _rlProFileId _rlXgafv _rlUploadProtocol
              _rlAccessToken
              _rlUploadType
              (Just _rlSortOrder)
              (Just _rlScope)
              _rlPageToken
              (Just _rlSortField)
              (Just _rlMaxResults)
              _rlCallback
              (Just AltJSON)
              dFAReportingService
          where go
                  = buildClient (Proxy :: Proxy ReportsListResource)
                      mempty
