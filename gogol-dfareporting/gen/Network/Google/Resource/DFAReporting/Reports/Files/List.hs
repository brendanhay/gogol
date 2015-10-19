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
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists files for a report.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @DfareportingReportsFilesList@.
module Network.Google.Resource.DFAReporting.Reports.Files.List
    (
    -- * REST Resource
      ReportsFilesListResource

    -- * Creating a Request
    , reportsFilesList'
    , ReportsFilesList'

    -- * Request Lenses
    , rflReportId
    , rflProFileId
    , rflSortOrder
    , rflPageToken
    , rflSortField
    , rflMaxResults
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @DfareportingReportsFilesList@ method which the
-- 'ReportsFilesList'' request conforms to.
type ReportsFilesListResource =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "reports" :>
           Capture "reportId" Int64 :>
             "files" :>
               QueryParam "sortOrder" ReportsFilesListSortOrder :>
                 QueryParam "pageToken" Text :>
                   QueryParam "sortField" ReportsFilesListSortField :>
                     QueryParam "maxResults" Int32 :>
                       QueryParam "alt" AltJSON :> Get '[JSON] FileList

-- | Lists files for a report.
--
-- /See:/ 'reportsFilesList'' smart constructor.
data ReportsFilesList' = ReportsFilesList'
    { _rflReportId   :: !Int64
    , _rflProFileId  :: !Int64
    , _rflSortOrder  :: !ReportsFilesListSortOrder
    , _rflPageToken  :: !(Maybe Text)
    , _rflSortField  :: !ReportsFilesListSortField
    , _rflMaxResults :: !(Maybe Int32)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ReportsFilesList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rflReportId'
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
reportsFilesList'
    :: Int64 -- ^ 'reportId'
    -> Int64 -- ^ 'profileId'
    -> ReportsFilesList'
reportsFilesList' pRflReportId_ pRflProFileId_ =
    ReportsFilesList'
    { _rflReportId = pRflReportId_
    , _rflProFileId = pRflProFileId_
    , _rflSortOrder = RFLSODescending
    , _rflPageToken = Nothing
    , _rflSortField = RFLSFLastModifiedTime
    , _rflMaxResults = Nothing
    }

-- | The ID of the parent report.
rflReportId :: Lens' ReportsFilesList' Int64
rflReportId
  = lens _rflReportId (\ s a -> s{_rflReportId = a})

-- | The DFA profile ID.
rflProFileId :: Lens' ReportsFilesList' Int64
rflProFileId
  = lens _rflProFileId (\ s a -> s{_rflProFileId = a})

-- | Order of sorted results, default is \'DESCENDING\'.
rflSortOrder :: Lens' ReportsFilesList' ReportsFilesListSortOrder
rflSortOrder
  = lens _rflSortOrder (\ s a -> s{_rflSortOrder = a})

-- | The value of the nextToken from the previous result page.
rflPageToken :: Lens' ReportsFilesList' (Maybe Text)
rflPageToken
  = lens _rflPageToken (\ s a -> s{_rflPageToken = a})

-- | The field by which to sort the list.
rflSortField :: Lens' ReportsFilesList' ReportsFilesListSortField
rflSortField
  = lens _rflSortField (\ s a -> s{_rflSortField = a})

-- | Maximum number of results to return.
rflMaxResults :: Lens' ReportsFilesList' (Maybe Int32)
rflMaxResults
  = lens _rflMaxResults
      (\ s a -> s{_rflMaxResults = a})

instance GoogleRequest ReportsFilesList' where
        type Rs ReportsFilesList' = FileList
        requestClient ReportsFilesList'{..}
          = go _rflProFileId _rflReportId (Just _rflSortOrder)
              _rflPageToken
              (Just _rflSortField)
              _rflMaxResults
              (Just AltJSON)
              dFAReportingService
          where go
                  = buildClient
                      (Proxy :: Proxy ReportsFilesListResource)
                      mempty
