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
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves list of reports.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @dfareporting.reports.list@.
module Network.Google.Resource.DFAReporting.Reports.List
    (
    -- * REST Resource
      ReportsListResource

    -- * Creating a Request
    , reportsList
    , ReportsList

    -- * Request Lenses
    , rlProFileId
    , rlSortOrder
    , rlScope
    , rlPageToken
    , rlSortField
    , rlMaxResults
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @dfareporting.reports.list@ method which the
-- 'ReportsList' request conforms to.
type ReportsListResource =
     "dfareporting" :>
       "v2.2" :>
         "userprofiles" :>
           Capture "profileId" (Textual Int64) :>
             "reports" :>
               QueryParam "sortOrder" ReportsListSortOrder :>
                 QueryParam "scope" ReportsListScope :>
                   QueryParam "pageToken" Text :>
                     QueryParam "sortField" ReportsListSortField :>
                       QueryParam "maxResults" (Textual Int32) :>
                         QueryParam "alt" AltJSON :> Get '[JSON] ReportList

-- | Retrieves list of reports.
--
-- /See:/ 'reportsList' smart constructor.
data ReportsList = ReportsList
    { _rlProFileId  :: !(Textual Int64)
    , _rlSortOrder  :: !ReportsListSortOrder
    , _rlScope      :: !ReportsListScope
    , _rlPageToken  :: !(Maybe Text)
    , _rlSortField  :: !ReportsListSortField
    , _rlMaxResults :: !(Maybe (Textual Int32))
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ReportsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
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
reportsList
    :: Int64 -- ^ 'rlProFileId'
    -> ReportsList
reportsList pRlProFileId_ =
    ReportsList
    { _rlProFileId = _Coerce # pRlProFileId_
    , _rlSortOrder = RLSODescending
    , _rlScope = Mine
    , _rlPageToken = Nothing
    , _rlSortField = RLSFLastModifiedTime
    , _rlMaxResults = Nothing
    }

-- | The DFA user profile ID.
rlProFileId :: Lens' ReportsList Int64
rlProFileId
  = lens _rlProFileId (\ s a -> s{_rlProFileId = a}) .
      _Coerce

-- | Order of sorted results, default is \'DESCENDING\'.
rlSortOrder :: Lens' ReportsList ReportsListSortOrder
rlSortOrder
  = lens _rlSortOrder (\ s a -> s{_rlSortOrder = a})

-- | The scope that defines which results are returned, default is \'MINE\'.
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
rlMaxResults :: Lens' ReportsList (Maybe Int32)
rlMaxResults
  = lens _rlMaxResults (\ s a -> s{_rlMaxResults = a})
      . mapping _Coerce

instance GoogleRequest ReportsList where
        type Rs ReportsList = ReportList
        requestClient ReportsList{..}
          = go _rlProFileId (Just _rlSortOrder) (Just _rlScope)
              _rlPageToken
              (Just _rlSortField)
              _rlMaxResults
              (Just AltJSON)
              dFAReportingService
          where go
                  = buildClient (Proxy :: Proxy ReportsListResource)
                      mempty
