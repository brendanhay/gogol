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
-- Module      : Network.Google.Resource.DFAReporting.Campaigns.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieves a list of campaigns, possibly filtered.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @DfareportingCampaignsList@.
module Network.Google.Resource.DFAReporting.Campaigns.List
    (
    -- * REST Resource
      CampaignsListResource

    -- * Creating a Request
    , campaignsList'
    , CampaignsList'

    -- * Request Lenses
    , ccExcludedIds
    , ccSearchString
    , ccIds
    , ccProFileId
    , ccSortOrder
    , ccAdvertiserGroupIds
    , ccAtLeastOneOptimizationActivity
    , ccOverriddenEventTagId
    , ccPageToken
    , ccSortField
    , ccSubAccountId
    , ccAdvertiserIds
    , ccArchived
    , ccMaxResults
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @DfareportingCampaignsList@ method which the
-- 'CampaignsList'' request conforms to.
type CampaignsListResource =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "campaigns" :>
           QueryParams "excludedIds" Int64 :>
             QueryParam "searchString" Text :>
               QueryParams "ids" Int64 :>
                 QueryParam "sortOrder" CampaignsListSortOrder :>
                   QueryParams "advertiserGroupIds" Int64 :>
                     QueryParam "atLeastOneOptimizationActivity" Bool :>
                       QueryParam "overriddenEventTagId" Int64 :>
                         QueryParam "pageToken" Text :>
                           QueryParam "sortField" CampaignsListSortField :>
                             QueryParam "subaccountId" Int64 :>
                               QueryParams "advertiserIds" Int64 :>
                                 QueryParam "archived" Bool :>
                                   QueryParam "maxResults" Int32 :>
                                     QueryParam "alt" AltJSON :>
                                       Get '[JSON] CampaignsListResponse

-- | Retrieves a list of campaigns, possibly filtered.
--
-- /See:/ 'campaignsList'' smart constructor.
data CampaignsList' = CampaignsList'
    { _ccExcludedIds                    :: !(Maybe [Int64])
    , _ccSearchString                   :: !(Maybe Text)
    , _ccIds                            :: !(Maybe [Int64])
    , _ccProFileId                      :: !Int64
    , _ccSortOrder                      :: !(Maybe CampaignsListSortOrder)
    , _ccAdvertiserGroupIds             :: !(Maybe [Int64])
    , _ccAtLeastOneOptimizationActivity :: !(Maybe Bool)
    , _ccOverriddenEventTagId           :: !(Maybe Int64)
    , _ccPageToken                      :: !(Maybe Text)
    , _ccSortField                      :: !(Maybe CampaignsListSortField)
    , _ccSubAccountId                   :: !(Maybe Int64)
    , _ccAdvertiserIds                  :: !(Maybe [Int64])
    , _ccArchived                       :: !(Maybe Bool)
    , _ccMaxResults                     :: !(Maybe Int32)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'CampaignsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ccExcludedIds'
--
-- * 'ccSearchString'
--
-- * 'ccIds'
--
-- * 'ccProFileId'
--
-- * 'ccSortOrder'
--
-- * 'ccAdvertiserGroupIds'
--
-- * 'ccAtLeastOneOptimizationActivity'
--
-- * 'ccOverriddenEventTagId'
--
-- * 'ccPageToken'
--
-- * 'ccSortField'
--
-- * 'ccSubAccountId'
--
-- * 'ccAdvertiserIds'
--
-- * 'ccArchived'
--
-- * 'ccMaxResults'
campaignsList'
    :: Int64 -- ^ 'profileId'
    -> CampaignsList'
campaignsList' pCcProFileId_ =
    CampaignsList'
    { _ccExcludedIds = Nothing
    , _ccSearchString = Nothing
    , _ccIds = Nothing
    , _ccProFileId = pCcProFileId_
    , _ccSortOrder = Nothing
    , _ccAdvertiserGroupIds = Nothing
    , _ccAtLeastOneOptimizationActivity = Nothing
    , _ccOverriddenEventTagId = Nothing
    , _ccPageToken = Nothing
    , _ccSortField = Nothing
    , _ccSubAccountId = Nothing
    , _ccAdvertiserIds = Nothing
    , _ccArchived = Nothing
    , _ccMaxResults = Nothing
    }

-- | Exclude campaigns with these IDs.
ccExcludedIds :: Lens' CampaignsList' [Int64]
ccExcludedIds
  = lens _ccExcludedIds
      (\ s a -> s{_ccExcludedIds = a})
      . _Default
      . _Coerce

-- | Allows searching for campaigns by name or ID. Wildcards (*) are allowed.
-- For example, \"campaign*2015\" will return campaigns with names like
-- \"campaign June 2015\", \"campaign April 2015\", or simply \"campaign
-- 2015\". Most of the searches also add wildcards implicitly at the start
-- and the end of the search string. For example, a search string of
-- \"campaign\" will match campaigns with name \"my campaign\", \"campaign
-- 2015\", or simply \"campaign\".
ccSearchString :: Lens' CampaignsList' (Maybe Text)
ccSearchString
  = lens _ccSearchString
      (\ s a -> s{_ccSearchString = a})

-- | Select only campaigns with these IDs.
ccIds :: Lens' CampaignsList' [Int64]
ccIds
  = lens _ccIds (\ s a -> s{_ccIds = a}) . _Default .
      _Coerce

-- | User profile ID associated with this request.
ccProFileId :: Lens' CampaignsList' Int64
ccProFileId
  = lens _ccProFileId (\ s a -> s{_ccProFileId = a})

-- | Order of sorted results, default is ASCENDING.
ccSortOrder :: Lens' CampaignsList' (Maybe CampaignsListSortOrder)
ccSortOrder
  = lens _ccSortOrder (\ s a -> s{_ccSortOrder = a})

-- | Select only campaigns whose advertisers belong to these advertiser
-- groups.
ccAdvertiserGroupIds :: Lens' CampaignsList' [Int64]
ccAdvertiserGroupIds
  = lens _ccAdvertiserGroupIds
      (\ s a -> s{_ccAdvertiserGroupIds = a})
      . _Default
      . _Coerce

-- | Select only campaigns that have at least one optimization activity.
ccAtLeastOneOptimizationActivity :: Lens' CampaignsList' (Maybe Bool)
ccAtLeastOneOptimizationActivity
  = lens _ccAtLeastOneOptimizationActivity
      (\ s a -> s{_ccAtLeastOneOptimizationActivity = a})

-- | Select only campaigns that have overridden this event tag ID.
ccOverriddenEventTagId :: Lens' CampaignsList' (Maybe Int64)
ccOverriddenEventTagId
  = lens _ccOverriddenEventTagId
      (\ s a -> s{_ccOverriddenEventTagId = a})

-- | Value of the nextPageToken from the previous result page.
ccPageToken :: Lens' CampaignsList' (Maybe Text)
ccPageToken
  = lens _ccPageToken (\ s a -> s{_ccPageToken = a})

-- | Field by which to sort the list.
ccSortField :: Lens' CampaignsList' (Maybe CampaignsListSortField)
ccSortField
  = lens _ccSortField (\ s a -> s{_ccSortField = a})

-- | Select only campaigns that belong to this subaccount.
ccSubAccountId :: Lens' CampaignsList' (Maybe Int64)
ccSubAccountId
  = lens _ccSubAccountId
      (\ s a -> s{_ccSubAccountId = a})

-- | Select only campaigns that belong to these advertisers.
ccAdvertiserIds :: Lens' CampaignsList' [Int64]
ccAdvertiserIds
  = lens _ccAdvertiserIds
      (\ s a -> s{_ccAdvertiserIds = a})
      . _Default
      . _Coerce

-- | Select only archived campaigns. Don\'t set this field to select both
-- archived and non-archived campaigns.
ccArchived :: Lens' CampaignsList' (Maybe Bool)
ccArchived
  = lens _ccArchived (\ s a -> s{_ccArchived = a})

-- | Maximum number of results to return.
ccMaxResults :: Lens' CampaignsList' (Maybe Int32)
ccMaxResults
  = lens _ccMaxResults (\ s a -> s{_ccMaxResults = a})

instance GoogleRequest CampaignsList' where
        type Rs CampaignsList' = CampaignsListResponse
        requestClient CampaignsList'{..}
          = go _ccProFileId (_ccExcludedIds ^. _Default)
              _ccSearchString
              (_ccIds ^. _Default)
              _ccSortOrder
              (_ccAdvertiserGroupIds ^. _Default)
              _ccAtLeastOneOptimizationActivity
              _ccOverriddenEventTagId
              _ccPageToken
              _ccSortField
              _ccSubAccountId
              (_ccAdvertiserIds ^. _Default)
              _ccArchived
              _ccMaxResults
              (Just AltJSON)
              dFAReporting
          where go
                  = buildClient (Proxy :: Proxy CampaignsListResource)
                      mempty
