{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
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
module DFAReporting.Campaigns.List
    (
    -- * REST Resource
      CampaignsListAPI

    -- * Creating a Request
    , campaignsList
    , CampaignsList

    -- * Request Lenses
    , cExcludedIds
    , cQuotaUser
    , cPrettyPrint
    , cUserIp
    , cSearchString
    , cIds
    , cProfileId
    , cSortOrder
    , cAdvertiserGroupIds
    , cKey
    , cAtLeastOneOptimizationActivity
    , cOverriddenEventTagId
    , cPageToken
    , cSortField
    , cSubaccountId
    , cOauthToken
    , cAdvertiserIds
    , cArchived
    , cMaxResults
    , cFields
    , cAlt
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @DfareportingCampaignsList@ which the
-- 'CampaignsList' request conforms to.
type CampaignsListAPI =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "campaigns" :>
           QueryParams "excludedIds" Int64 :>
             QueryParam "searchString" Text :>
               QueryParams "ids" Int64 :>
                 QueryParam "sortOrder" Text :>
                   QueryParams "advertiserGroupIds" Int64 :>
                     QueryParam "atLeastOneOptimizationActivity" Bool :>
                       QueryParam "overriddenEventTagId" Int64 :>
                         QueryParam "pageToken" Text :>
                           QueryParam "sortField" Text :>
                             QueryParam "subaccountId" Int64 :>
                               QueryParams "advertiserIds" Int64 :>
                                 QueryParam "archived" Bool :>
                                   QueryParam "maxResults" Int32 :>
                                     Get '[JSON] CampaignsListResponse

-- | Retrieves a list of campaigns, possibly filtered.
--
-- /See:/ 'campaignsList' smart constructor.
data CampaignsList = CampaignsList
    { _cExcludedIds                    :: !(Maybe Int64)
    , _cQuotaUser                      :: !(Maybe Text)
    , _cPrettyPrint                    :: !Bool
    , _cUserIp                         :: !(Maybe Text)
    , _cSearchString                   :: !(Maybe Text)
    , _cIds                            :: !(Maybe Int64)
    , _cProfileId                      :: !Int64
    , _cSortOrder                      :: !(Maybe Text)
    , _cAdvertiserGroupIds             :: !(Maybe Int64)
    , _cKey                            :: !(Maybe Text)
    , _cAtLeastOneOptimizationActivity :: !(Maybe Bool)
    , _cOverriddenEventTagId           :: !(Maybe Int64)
    , _cPageToken                      :: !(Maybe Text)
    , _cSortField                      :: !(Maybe Text)
    , _cSubaccountId                   :: !(Maybe Int64)
    , _cOauthToken                     :: !(Maybe Text)
    , _cAdvertiserIds                  :: !(Maybe Int64)
    , _cArchived                       :: !(Maybe Bool)
    , _cMaxResults                     :: !(Maybe Int32)
    , _cFields                         :: !(Maybe Text)
    , _cAlt                            :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'CampaignsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cExcludedIds'
--
-- * 'cQuotaUser'
--
-- * 'cPrettyPrint'
--
-- * 'cUserIp'
--
-- * 'cSearchString'
--
-- * 'cIds'
--
-- * 'cProfileId'
--
-- * 'cSortOrder'
--
-- * 'cAdvertiserGroupIds'
--
-- * 'cKey'
--
-- * 'cAtLeastOneOptimizationActivity'
--
-- * 'cOverriddenEventTagId'
--
-- * 'cPageToken'
--
-- * 'cSortField'
--
-- * 'cSubaccountId'
--
-- * 'cOauthToken'
--
-- * 'cAdvertiserIds'
--
-- * 'cArchived'
--
-- * 'cMaxResults'
--
-- * 'cFields'
--
-- * 'cAlt'
campaignsList
    :: Int64 -- ^ 'profileId'
    -> CampaignsList
campaignsList pCProfileId_ =
    CampaignsList
    { _cExcludedIds = Nothing
    , _cQuotaUser = Nothing
    , _cPrettyPrint = True
    , _cUserIp = Nothing
    , _cSearchString = Nothing
    , _cIds = Nothing
    , _cProfileId = pCProfileId_
    , _cSortOrder = Nothing
    , _cAdvertiserGroupIds = Nothing
    , _cKey = Nothing
    , _cAtLeastOneOptimizationActivity = Nothing
    , _cOverriddenEventTagId = Nothing
    , _cPageToken = Nothing
    , _cSortField = Nothing
    , _cSubaccountId = Nothing
    , _cOauthToken = Nothing
    , _cAdvertiserIds = Nothing
    , _cArchived = Nothing
    , _cMaxResults = Nothing
    , _cFields = Nothing
    , _cAlt = "json"
    }

-- | Exclude campaigns with these IDs.
cExcludedIds :: Lens' CampaignsList' (Maybe Int64)
cExcludedIds
  = lens _cExcludedIds (\ s a -> s{_cExcludedIds = a})

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
cQuotaUser :: Lens' CampaignsList' (Maybe Text)
cQuotaUser
  = lens _cQuotaUser (\ s a -> s{_cQuotaUser = a})

-- | Returns response with indentations and line breaks.
cPrettyPrint :: Lens' CampaignsList' Bool
cPrettyPrint
  = lens _cPrettyPrint (\ s a -> s{_cPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
cUserIp :: Lens' CampaignsList' (Maybe Text)
cUserIp = lens _cUserIp (\ s a -> s{_cUserIp = a})

-- | Allows searching for campaigns by name or ID. Wildcards (*) are allowed.
-- For example, \"campaign*2015\" will return campaigns with names like
-- \"campaign June 2015\", \"campaign April 2015\", or simply \"campaign
-- 2015\". Most of the searches also add wildcards implicitly at the start
-- and the end of the search string. For example, a search string of
-- \"campaign\" will match campaigns with name \"my campaign\", \"campaign
-- 2015\", or simply \"campaign\".
cSearchString :: Lens' CampaignsList' (Maybe Text)
cSearchString
  = lens _cSearchString
      (\ s a -> s{_cSearchString = a})

-- | Select only campaigns with these IDs.
cIds :: Lens' CampaignsList' (Maybe Int64)
cIds = lens _cIds (\ s a -> s{_cIds = a})

-- | User profile ID associated with this request.
cProfileId :: Lens' CampaignsList' Int64
cProfileId
  = lens _cProfileId (\ s a -> s{_cProfileId = a})

-- | Order of sorted results, default is ASCENDING.
cSortOrder :: Lens' CampaignsList' (Maybe Text)
cSortOrder
  = lens _cSortOrder (\ s a -> s{_cSortOrder = a})

-- | Select only campaigns whose advertisers belong to these advertiser
-- groups.
cAdvertiserGroupIds :: Lens' CampaignsList' (Maybe Int64)
cAdvertiserGroupIds
  = lens _cAdvertiserGroupIds
      (\ s a -> s{_cAdvertiserGroupIds = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
cKey :: Lens' CampaignsList' (Maybe Text)
cKey = lens _cKey (\ s a -> s{_cKey = a})

-- | Select only campaigns that have at least one optimization activity.
cAtLeastOneOptimizationActivity :: Lens' CampaignsList' (Maybe Bool)
cAtLeastOneOptimizationActivity
  = lens _cAtLeastOneOptimizationActivity
      (\ s a -> s{_cAtLeastOneOptimizationActivity = a})

-- | Select only campaigns that have overridden this event tag ID.
cOverriddenEventTagId :: Lens' CampaignsList' (Maybe Int64)
cOverriddenEventTagId
  = lens _cOverriddenEventTagId
      (\ s a -> s{_cOverriddenEventTagId = a})

-- | Value of the nextPageToken from the previous result page.
cPageToken :: Lens' CampaignsList' (Maybe Text)
cPageToken
  = lens _cPageToken (\ s a -> s{_cPageToken = a})

-- | Field by which to sort the list.
cSortField :: Lens' CampaignsList' (Maybe Text)
cSortField
  = lens _cSortField (\ s a -> s{_cSortField = a})

-- | Select only campaigns that belong to this subaccount.
cSubaccountId :: Lens' CampaignsList' (Maybe Int64)
cSubaccountId
  = lens _cSubaccountId
      (\ s a -> s{_cSubaccountId = a})

-- | OAuth 2.0 token for the current user.
cOauthToken :: Lens' CampaignsList' (Maybe Text)
cOauthToken
  = lens _cOauthToken (\ s a -> s{_cOauthToken = a})

-- | Select only campaigns that belong to these advertisers.
cAdvertiserIds :: Lens' CampaignsList' (Maybe Int64)
cAdvertiserIds
  = lens _cAdvertiserIds
      (\ s a -> s{_cAdvertiserIds = a})

-- | Select only archived campaigns. Don\'t set this field to select both
-- archived and non-archived campaigns.
cArchived :: Lens' CampaignsList' (Maybe Bool)
cArchived
  = lens _cArchived (\ s a -> s{_cArchived = a})

-- | Maximum number of results to return.
cMaxResults :: Lens' CampaignsList' (Maybe Int32)
cMaxResults
  = lens _cMaxResults (\ s a -> s{_cMaxResults = a})

-- | Selector specifying which fields to include in a partial response.
cFields :: Lens' CampaignsList' (Maybe Text)
cFields = lens _cFields (\ s a -> s{_cFields = a})

-- | Data format for the response.
cAlt :: Lens' CampaignsList' Text
cAlt = lens _cAlt (\ s a -> s{_cAlt = a})

instance GoogleRequest CampaignsList' where
        type Rs CampaignsList' = CampaignsListResponse
        request = requestWithRoute defReq dFAReportingURL
        requestWithRoute r u CampaignsList{..}
          = go _cExcludedIds _cQuotaUser _cPrettyPrint _cUserIp
              _cSearchString
              _cIds
              _cProfileId
              _cSortOrder
              _cAdvertiserGroupIds
              _cKey
              _cAtLeastOneOptimizationActivity
              _cOverriddenEventTagId
              _cPageToken
              _cSortField
              _cSubaccountId
              _cOauthToken
              _cAdvertiserIds
              _cArchived
              _cMaxResults
              _cFields
              _cAlt
          where go
                  = clientWithRoute (Proxy :: Proxy CampaignsListAPI) r
                      u
