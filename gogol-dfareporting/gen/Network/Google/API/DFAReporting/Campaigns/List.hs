{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.DFAReporting.Campaigns.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieves a list of campaigns, possibly filtered.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @dfareporting.campaigns.list@.
module Network.Google.API.DFAReporting.Campaigns.List
    (
    -- * REST Resource
      CampaignsListAPI

    -- * Creating a Request
    , campaignsList'
    , CampaignsList'

    -- * Request Lenses
    , camExcludedIds
    , camQuotaUser
    , camPrettyPrint
    , camUserIp
    , camSearchString
    , camIds
    , camProfileId
    , camSortOrder
    , camAdvertiserGroupIds
    , camKey
    , camAtLeastOneOptimizationActivity
    , camOverriddenEventTagId
    , camPageToken
    , camSortField
    , camSubaccountId
    , camOauthToken
    , camAdvertiserIds
    , camArchived
    , camMaxResults
    , camFields
    , camAlt
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for dfareporting.campaigns.list which the
-- 'CampaignsList'' request conforms to.
type CampaignsListAPI =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "campaigns" :>
           QueryParam "excludedIds" Int64 :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "searchString" Text :>
                     QueryParam "ids" Int64 :>
                       QueryParam "sortOrder" CampaignsList'SortOrder :>
                         QueryParam "advertiserGroupIds" Int64 :>
                           QueryParam "key" Text :>
                             QueryParam "atLeastOneOptimizationActivity" Bool :>
                               QueryParam "overriddenEventTagId" Int64 :>
                                 QueryParam "pageToken" Text :>
                                   QueryParam "sortField"
                                     CampaignsList'SortField
                                     :>
                                     QueryParam "subaccountId" Int64 :>
                                       QueryParam "oauth_token" Text :>
                                         QueryParam "advertiserIds" Int64 :>
                                           QueryParam "archived" Bool :>
                                             QueryParam "maxResults" Int32 :>
                                               QueryParam "fields" Text :>
                                                 QueryParam "alt" Alt :>
                                                   Get '[JSON]
                                                     CampaignsListResponse

-- | Retrieves a list of campaigns, possibly filtered.
--
-- /See:/ 'campaignsList'' smart constructor.
data CampaignsList' = CampaignsList'
    { _camExcludedIds                    :: !(Maybe Int64)
    , _camQuotaUser                      :: !(Maybe Text)
    , _camPrettyPrint                    :: !Bool
    , _camUserIp                         :: !(Maybe Text)
    , _camSearchString                   :: !(Maybe Text)
    , _camIds                            :: !(Maybe Int64)
    , _camProfileId                      :: !Int64
    , _camSortOrder                      :: !(Maybe CampaignsList'SortOrder)
    , _camAdvertiserGroupIds             :: !(Maybe Int64)
    , _camKey                            :: !(Maybe Text)
    , _camAtLeastOneOptimizationActivity :: !(Maybe Bool)
    , _camOverriddenEventTagId           :: !(Maybe Int64)
    , _camPageToken                      :: !(Maybe Text)
    , _camSortField                      :: !(Maybe CampaignsList'SortField)
    , _camSubaccountId                   :: !(Maybe Int64)
    , _camOauthToken                     :: !(Maybe Text)
    , _camAdvertiserIds                  :: !(Maybe Int64)
    , _camArchived                       :: !(Maybe Bool)
    , _camMaxResults                     :: !(Maybe Int32)
    , _camFields                         :: !(Maybe Text)
    , _camAlt                            :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'CampaignsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'camExcludedIds'
--
-- * 'camQuotaUser'
--
-- * 'camPrettyPrint'
--
-- * 'camUserIp'
--
-- * 'camSearchString'
--
-- * 'camIds'
--
-- * 'camProfileId'
--
-- * 'camSortOrder'
--
-- * 'camAdvertiserGroupIds'
--
-- * 'camKey'
--
-- * 'camAtLeastOneOptimizationActivity'
--
-- * 'camOverriddenEventTagId'
--
-- * 'camPageToken'
--
-- * 'camSortField'
--
-- * 'camSubaccountId'
--
-- * 'camOauthToken'
--
-- * 'camAdvertiserIds'
--
-- * 'camArchived'
--
-- * 'camMaxResults'
--
-- * 'camFields'
--
-- * 'camAlt'
campaignsList'
    :: Int64 -- ^ 'profileId'
    -> CampaignsList'
campaignsList' pCamProfileId_ =
    CampaignsList'
    { _camExcludedIds = Nothing
    , _camQuotaUser = Nothing
    , _camPrettyPrint = True
    , _camUserIp = Nothing
    , _camSearchString = Nothing
    , _camIds = Nothing
    , _camProfileId = pCamProfileId_
    , _camSortOrder = Nothing
    , _camAdvertiserGroupIds = Nothing
    , _camKey = Nothing
    , _camAtLeastOneOptimizationActivity = Nothing
    , _camOverriddenEventTagId = Nothing
    , _camPageToken = Nothing
    , _camSortField = Nothing
    , _camSubaccountId = Nothing
    , _camOauthToken = Nothing
    , _camAdvertiserIds = Nothing
    , _camArchived = Nothing
    , _camMaxResults = Nothing
    , _camFields = Nothing
    , _camAlt = JSON
    }

-- | Exclude campaigns with these IDs.
camExcludedIds :: Lens' CampaignsList' (Maybe Int64)
camExcludedIds
  = lens _camExcludedIds
      (\ s a -> s{_camExcludedIds = a})

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
camQuotaUser :: Lens' CampaignsList' (Maybe Text)
camQuotaUser
  = lens _camQuotaUser (\ s a -> s{_camQuotaUser = a})

-- | Returns response with indentations and line breaks.
camPrettyPrint :: Lens' CampaignsList' Bool
camPrettyPrint
  = lens _camPrettyPrint
      (\ s a -> s{_camPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
camUserIp :: Lens' CampaignsList' (Maybe Text)
camUserIp
  = lens _camUserIp (\ s a -> s{_camUserIp = a})

-- | Allows searching for campaigns by name or ID. Wildcards (*) are allowed.
-- For example, \"campaign*2015\" will return campaigns with names like
-- \"campaign June 2015\", \"campaign April 2015\", or simply \"campaign
-- 2015\". Most of the searches also add wildcards implicitly at the start
-- and the end of the search string. For example, a search string of
-- \"campaign\" will match campaigns with name \"my campaign\", \"campaign
-- 2015\", or simply \"campaign\".
camSearchString :: Lens' CampaignsList' (Maybe Text)
camSearchString
  = lens _camSearchString
      (\ s a -> s{_camSearchString = a})

-- | Select only campaigns with these IDs.
camIds :: Lens' CampaignsList' (Maybe Int64)
camIds = lens _camIds (\ s a -> s{_camIds = a})

-- | User profile ID associated with this request.
camProfileId :: Lens' CampaignsList' Int64
camProfileId
  = lens _camProfileId (\ s a -> s{_camProfileId = a})

-- | Order of sorted results, default is ASCENDING.
camSortOrder :: Lens' CampaignsList' (Maybe CampaignsList'SortOrder)
camSortOrder
  = lens _camSortOrder (\ s a -> s{_camSortOrder = a})

-- | Select only campaigns whose advertisers belong to these advertiser
-- groups.
camAdvertiserGroupIds :: Lens' CampaignsList' (Maybe Int64)
camAdvertiserGroupIds
  = lens _camAdvertiserGroupIds
      (\ s a -> s{_camAdvertiserGroupIds = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
camKey :: Lens' CampaignsList' (Maybe Text)
camKey = lens _camKey (\ s a -> s{_camKey = a})

-- | Select only campaigns that have at least one optimization activity.
camAtLeastOneOptimizationActivity :: Lens' CampaignsList' (Maybe Bool)
camAtLeastOneOptimizationActivity
  = lens _camAtLeastOneOptimizationActivity
      (\ s a -> s{_camAtLeastOneOptimizationActivity = a})

-- | Select only campaigns that have overridden this event tag ID.
camOverriddenEventTagId :: Lens' CampaignsList' (Maybe Int64)
camOverriddenEventTagId
  = lens _camOverriddenEventTagId
      (\ s a -> s{_camOverriddenEventTagId = a})

-- | Value of the nextPageToken from the previous result page.
camPageToken :: Lens' CampaignsList' (Maybe Text)
camPageToken
  = lens _camPageToken (\ s a -> s{_camPageToken = a})

-- | Field by which to sort the list.
camSortField :: Lens' CampaignsList' (Maybe CampaignsList'SortField)
camSortField
  = lens _camSortField (\ s a -> s{_camSortField = a})

-- | Select only campaigns that belong to this subaccount.
camSubaccountId :: Lens' CampaignsList' (Maybe Int64)
camSubaccountId
  = lens _camSubaccountId
      (\ s a -> s{_camSubaccountId = a})

-- | OAuth 2.0 token for the current user.
camOauthToken :: Lens' CampaignsList' (Maybe Text)
camOauthToken
  = lens _camOauthToken
      (\ s a -> s{_camOauthToken = a})

-- | Select only campaigns that belong to these advertisers.
camAdvertiserIds :: Lens' CampaignsList' (Maybe Int64)
camAdvertiserIds
  = lens _camAdvertiserIds
      (\ s a -> s{_camAdvertiserIds = a})

-- | Select only archived campaigns. Don\'t set this field to select both
-- archived and non-archived campaigns.
camArchived :: Lens' CampaignsList' (Maybe Bool)
camArchived
  = lens _camArchived (\ s a -> s{_camArchived = a})

-- | Maximum number of results to return.
camMaxResults :: Lens' CampaignsList' (Maybe Int32)
camMaxResults
  = lens _camMaxResults
      (\ s a -> s{_camMaxResults = a})

-- | Selector specifying which fields to include in a partial response.
camFields :: Lens' CampaignsList' (Maybe Text)
camFields
  = lens _camFields (\ s a -> s{_camFields = a})

-- | Data format for the response.
camAlt :: Lens' CampaignsList' Alt
camAlt = lens _camAlt (\ s a -> s{_camAlt = a})

instance GoogleRequest CampaignsList' where
        type Rs CampaignsList' = CampaignsListResponse
        request = requestWithRoute defReq dFAReportingURL
        requestWithRoute r u CampaignsList'{..}
          = go _camExcludedIds _camQuotaUser
              (Just _camPrettyPrint)
              _camUserIp
              _camSearchString
              _camIds
              _camProfileId
              _camSortOrder
              _camAdvertiserGroupIds
              _camKey
              _camAtLeastOneOptimizationActivity
              _camOverriddenEventTagId
              _camPageToken
              _camSortField
              _camSubaccountId
              _camOauthToken
              _camAdvertiserIds
              _camArchived
              _camMaxResults
              _camFields
              (Just _camAlt)
          where go
                  = clientWithRoute (Proxy :: Proxy CampaignsListAPI) r
                      u
