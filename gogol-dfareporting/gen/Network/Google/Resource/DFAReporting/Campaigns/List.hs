{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE FlexibleInstances  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

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
    , ccQuotaUser
    , ccPrettyPrint
    , ccUserIP
    , ccSearchString
    , ccIds
    , ccProFileId
    , ccSortOrder
    , ccAdvertiserGroupIds
    , ccKey
    , ccAtLeastOneOptimizationActivity
    , ccOverriddenEventTagId
    , ccPageToken
    , ccSortField
    , ccSubAccountId
    , ccOAuthToken
    , ccAdvertiserIds
    , ccArchived
    , ccMaxResults
    , ccFields
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @DfareportingCampaignsList@ which the
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
                                     QueryParam "quotaUser" Text :>
                                       QueryParam "prettyPrint" Bool :>
                                         QueryParam "userIp" Text :>
                                           QueryParam "fields" Text :>
                                             QueryParam "key" Key :>
                                               QueryParam "oauth_token"
                                                 OAuthToken
                                                 :>
                                                 QueryParam "alt" AltJSON :>
                                                   Get '[JSON]
                                                     CampaignsListResponse

-- | Retrieves a list of campaigns, possibly filtered.
--
-- /See:/ 'campaignsList'' smart constructor.
data CampaignsList' = CampaignsList'
    { _ccExcludedIds                    :: !(Maybe [Int64])
    , _ccQuotaUser                      :: !(Maybe Text)
    , _ccPrettyPrint                    :: !Bool
    , _ccUserIP                         :: !(Maybe Text)
    , _ccSearchString                   :: !(Maybe Text)
    , _ccIds                            :: !(Maybe [Int64])
    , _ccProFileId                      :: !Int64
    , _ccSortOrder                      :: !(Maybe CampaignsListSortOrder)
    , _ccAdvertiserGroupIds             :: !(Maybe [Int64])
    , _ccKey                            :: !(Maybe Key)
    , _ccAtLeastOneOptimizationActivity :: !(Maybe Bool)
    , _ccOverriddenEventTagId           :: !(Maybe Int64)
    , _ccPageToken                      :: !(Maybe Text)
    , _ccSortField                      :: !(Maybe CampaignsListSortField)
    , _ccSubAccountId                   :: !(Maybe Int64)
    , _ccOAuthToken                     :: !(Maybe OAuthToken)
    , _ccAdvertiserIds                  :: !(Maybe [Int64])
    , _ccArchived                       :: !(Maybe Bool)
    , _ccMaxResults                     :: !(Maybe Int32)
    , _ccFields                         :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'CampaignsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ccExcludedIds'
--
-- * 'ccQuotaUser'
--
-- * 'ccPrettyPrint'
--
-- * 'ccUserIP'
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
-- * 'ccKey'
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
-- * 'ccOAuthToken'
--
-- * 'ccAdvertiserIds'
--
-- * 'ccArchived'
--
-- * 'ccMaxResults'
--
-- * 'ccFields'
campaignsList'
    :: Int64 -- ^ 'profileId'
    -> CampaignsList'
campaignsList' pCcProFileId_ =
    CampaignsList'
    { _ccExcludedIds = Nothing
    , _ccQuotaUser = Nothing
    , _ccPrettyPrint = True
    , _ccUserIP = Nothing
    , _ccSearchString = Nothing
    , _ccIds = Nothing
    , _ccProFileId = pCcProFileId_
    , _ccSortOrder = Nothing
    , _ccAdvertiserGroupIds = Nothing
    , _ccKey = Nothing
    , _ccAtLeastOneOptimizationActivity = Nothing
    , _ccOverriddenEventTagId = Nothing
    , _ccPageToken = Nothing
    , _ccSortField = Nothing
    , _ccSubAccountId = Nothing
    , _ccOAuthToken = Nothing
    , _ccAdvertiserIds = Nothing
    , _ccArchived = Nothing
    , _ccMaxResults = Nothing
    , _ccFields = Nothing
    }

-- | Exclude campaigns with these IDs.
ccExcludedIds :: Lens' CampaignsList' [Int64]
ccExcludedIds
  = lens _ccExcludedIds
      (\ s a -> s{_ccExcludedIds = a})
      . _Default
      . _Coerce

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
ccQuotaUser :: Lens' CampaignsList' (Maybe Text)
ccQuotaUser
  = lens _ccQuotaUser (\ s a -> s{_ccQuotaUser = a})

-- | Returns response with indentations and line breaks.
ccPrettyPrint :: Lens' CampaignsList' Bool
ccPrettyPrint
  = lens _ccPrettyPrint
      (\ s a -> s{_ccPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
ccUserIP :: Lens' CampaignsList' (Maybe Text)
ccUserIP = lens _ccUserIP (\ s a -> s{_ccUserIP = a})

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

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
ccKey :: Lens' CampaignsList' (Maybe Key)
ccKey = lens _ccKey (\ s a -> s{_ccKey = a})

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

-- | OAuth 2.0 token for the current user.
ccOAuthToken :: Lens' CampaignsList' (Maybe OAuthToken)
ccOAuthToken
  = lens _ccOAuthToken (\ s a -> s{_ccOAuthToken = a})

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

-- | Selector specifying which fields to include in a partial response.
ccFields :: Lens' CampaignsList' (Maybe Text)
ccFields = lens _ccFields (\ s a -> s{_ccFields = a})

instance GoogleAuth CampaignsList' where
        authKey = ccKey . _Just
        authToken = ccOAuthToken . _Just

instance GoogleRequest CampaignsList' where
        type Rs CampaignsList' = CampaignsListResponse
        request = requestWithRoute defReq dFAReportingURL
        requestWithRoute r u CampaignsList'{..}
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
              _ccQuotaUser
              (Just _ccPrettyPrint)
              _ccUserIP
              _ccFields
              _ccKey
              _ccOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy CampaignsListResource)
                      r
                      u
