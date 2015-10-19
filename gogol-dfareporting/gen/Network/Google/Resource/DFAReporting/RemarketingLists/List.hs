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
-- Module      : Network.Google.Resource.DFAReporting.RemarketingLists.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a list of remarketing lists, possibly filtered.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @DfareportingRemarketingListsList@.
module Network.Google.Resource.DFAReporting.RemarketingLists.List
    (
    -- * REST Resource
      RemarketingListsListResource

    -- * Creating a Request
    , remarketingListsList'
    , RemarketingListsList'

    -- * Request Lenses
    , rllFloodlightActivityId
    , rllAdvertiserId
    , rllProFileId
    , rllSortOrder
    , rllActive
    , rllName
    , rllPageToken
    , rllSortField
    , rllMaxResults
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @DfareportingRemarketingListsList@ method which the
-- 'RemarketingListsList'' request conforms to.
type RemarketingListsListResource =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "remarketingLists" :>
           QueryParam "advertiserId" Int64 :>
             QueryParam "floodlightActivityId" Int64 :>
               QueryParam "sortOrder" RemarketingListsListSortOrder
                 :>
                 QueryParam "active" Bool :>
                   QueryParam "name" Text :>
                     QueryParam "pageToken" Text :>
                       QueryParam "sortField" RemarketingListsListSortField
                         :>
                         QueryParam "maxResults" Int32 :>
                           QueryParam "alt" AltJSON :>
                             Get '[JSON] RemarketingListsListResponse

-- | Retrieves a list of remarketing lists, possibly filtered.
--
-- /See:/ 'remarketingListsList'' smart constructor.
data RemarketingListsList' = RemarketingListsList'
    { _rllFloodlightActivityId :: !(Maybe Int64)
    , _rllAdvertiserId         :: !Int64
    , _rllProFileId            :: !Int64
    , _rllSortOrder            :: !(Maybe RemarketingListsListSortOrder)
    , _rllActive               :: !(Maybe Bool)
    , _rllName                 :: !(Maybe Text)
    , _rllPageToken            :: !(Maybe Text)
    , _rllSortField            :: !(Maybe RemarketingListsListSortField)
    , _rllMaxResults           :: !(Maybe Int32)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'RemarketingListsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rllFloodlightActivityId'
--
-- * 'rllAdvertiserId'
--
-- * 'rllProFileId'
--
-- * 'rllSortOrder'
--
-- * 'rllActive'
--
-- * 'rllName'
--
-- * 'rllPageToken'
--
-- * 'rllSortField'
--
-- * 'rllMaxResults'
remarketingListsList'
    :: Int64 -- ^ 'advertiserId'
    -> Int64 -- ^ 'profileId'
    -> RemarketingListsList'
remarketingListsList' pRllAdvertiserId_ pRllProFileId_ =
    RemarketingListsList'
    { _rllFloodlightActivityId = Nothing
    , _rllAdvertiserId = pRllAdvertiserId_
    , _rllProFileId = pRllProFileId_
    , _rllSortOrder = Nothing
    , _rllActive = Nothing
    , _rllName = Nothing
    , _rllPageToken = Nothing
    , _rllSortField = Nothing
    , _rllMaxResults = Nothing
    }

-- | Select only remarketing lists that have this floodlight activity ID.
rllFloodlightActivityId :: Lens' RemarketingListsList' (Maybe Int64)
rllFloodlightActivityId
  = lens _rllFloodlightActivityId
      (\ s a -> s{_rllFloodlightActivityId = a})

-- | Select only remarketing lists owned by this advertiser.
rllAdvertiserId :: Lens' RemarketingListsList' Int64
rllAdvertiserId
  = lens _rllAdvertiserId
      (\ s a -> s{_rllAdvertiserId = a})

-- | User profile ID associated with this request.
rllProFileId :: Lens' RemarketingListsList' Int64
rllProFileId
  = lens _rllProFileId (\ s a -> s{_rllProFileId = a})

-- | Order of sorted results, default is ASCENDING.
rllSortOrder :: Lens' RemarketingListsList' (Maybe RemarketingListsListSortOrder)
rllSortOrder
  = lens _rllSortOrder (\ s a -> s{_rllSortOrder = a})

-- | Select only active or only inactive remarketing lists.
rllActive :: Lens' RemarketingListsList' (Maybe Bool)
rllActive
  = lens _rllActive (\ s a -> s{_rllActive = a})

-- | Allows searching for objects by name or ID. Wildcards (*) are allowed.
-- For example, \"remarketing list*2015\" will return objects with names
-- like \"remarketing list June 2015\", \"remarketing list April 2015\", or
-- simply \"remarketing list 2015\". Most of the searches also add
-- wildcards implicitly at the start and the end of the search string. For
-- example, a search string of \"remarketing list\" will match objects with
-- name \"my remarketing list\", \"remarketing list 2015\", or simply
-- \"remarketing list\".
rllName :: Lens' RemarketingListsList' (Maybe Text)
rllName = lens _rllName (\ s a -> s{_rllName = a})

-- | Value of the nextPageToken from the previous result page.
rllPageToken :: Lens' RemarketingListsList' (Maybe Text)
rllPageToken
  = lens _rllPageToken (\ s a -> s{_rllPageToken = a})

-- | Field by which to sort the list.
rllSortField :: Lens' RemarketingListsList' (Maybe RemarketingListsListSortField)
rllSortField
  = lens _rllSortField (\ s a -> s{_rllSortField = a})

-- | Maximum number of results to return.
rllMaxResults :: Lens' RemarketingListsList' (Maybe Int32)
rllMaxResults
  = lens _rllMaxResults
      (\ s a -> s{_rllMaxResults = a})

instance GoogleRequest RemarketingListsList' where
        type Rs RemarketingListsList' =
             RemarketingListsListResponse
        requestClient RemarketingListsList'{..}
          = go _rllProFileId (Just _rllAdvertiserId)
              _rllFloodlightActivityId
              _rllSortOrder
              _rllActive
              _rllName
              _rllPageToken
              _rllSortField
              _rllMaxResults
              (Just AltJSON)
              dFAReportingService
          where go
                  = buildClient
                      (Proxy :: Proxy RemarketingListsListResource)
                      mempty
