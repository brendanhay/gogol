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
-- | Retrieves list of reports.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @DfareportingReportsList@.
module Network.Google.Resource.DFAReporting.Reports.List
    (
    -- * REST Resource
      ReportsListResource

    -- * Creating a Request
    , reportsList'
    , ReportsList'

    -- * Request Lenses
    , rProFileId
    , rSortOrder
    , rScope
    , rPageToken
    , rSortField
    , rMaxResults
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @DfareportingReportsList@ method which the
-- 'ReportsList'' request conforms to.
type ReportsListResource =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "reports" :>
           QueryParam "sortOrder" ReportsListSortOrder :>
             QueryParam "scope" ReportsListScope :>
               QueryParam "pageToken" Text :>
                 QueryParam "sortField" ReportsListSortField :>
                   QueryParam "maxResults" Int32 :>
                     QueryParam "alt" AltJSON :> Get '[JSON] ReportList

-- | Retrieves list of reports.
--
-- /See:/ 'reportsList'' smart constructor.
data ReportsList' = ReportsList'
    { _rProFileId  :: !Int64
    , _rSortOrder  :: !ReportsListSortOrder
    , _rScope      :: !ReportsListScope
    , _rPageToken  :: !(Maybe Text)
    , _rSortField  :: !ReportsListSortField
    , _rMaxResults :: !(Maybe Int32)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ReportsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rProFileId'
--
-- * 'rSortOrder'
--
-- * 'rScope'
--
-- * 'rPageToken'
--
-- * 'rSortField'
--
-- * 'rMaxResults'
reportsList'
    :: Int64 -- ^ 'profileId'
    -> ReportsList'
reportsList' pRProFileId_ =
    ReportsList'
    { _rProFileId = pRProFileId_
    , _rSortOrder = RLSODescending
    , _rScope = Mine
    , _rPageToken = Nothing
    , _rSortField = RLSFLastModifiedTime
    , _rMaxResults = Nothing
    }

-- | The DFA user profile ID.
rProFileId :: Lens' ReportsList' Int64
rProFileId
  = lens _rProFileId (\ s a -> s{_rProFileId = a})

-- | Order of sorted results, default is \'DESCENDING\'.
rSortOrder :: Lens' ReportsList' ReportsListSortOrder
rSortOrder
  = lens _rSortOrder (\ s a -> s{_rSortOrder = a})

-- | The scope that defines which results are returned, default is \'MINE\'.
rScope :: Lens' ReportsList' ReportsListScope
rScope = lens _rScope (\ s a -> s{_rScope = a})

-- | The value of the nextToken from the previous result page.
rPageToken :: Lens' ReportsList' (Maybe Text)
rPageToken
  = lens _rPageToken (\ s a -> s{_rPageToken = a})

-- | The field by which to sort the list.
rSortField :: Lens' ReportsList' ReportsListSortField
rSortField
  = lens _rSortField (\ s a -> s{_rSortField = a})

-- | Maximum number of results to return.
rMaxResults :: Lens' ReportsList' (Maybe Int32)
rMaxResults
  = lens _rMaxResults (\ s a -> s{_rMaxResults = a})

instance GoogleRequest ReportsList' where
        type Rs ReportsList' = ReportList
        requestClient ReportsList'{..}
          = go _rProFileId (Just _rSortOrder) (Just _rScope)
              _rPageToken
              (Just _rSortField)
              _rMaxResults
              (Just AltJSON)
              dFAReporting
          where go
                  = buildClient (Proxy :: Proxy ReportsListResource)
                      mempty
