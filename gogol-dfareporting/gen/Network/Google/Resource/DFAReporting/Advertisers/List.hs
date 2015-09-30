{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.DFAReporting.Advertisers.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieves a list of advertisers, possibly filtered.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @DfareportingAdvertisersList@.
module Network.Google.Resource.DFAReporting.Advertisers.List
    (
    -- * REST Resource
      AdvertisersListResource

    -- * Creating a Request
    , advertisersList'
    , AdvertisersList'

    -- * Request Lenses
    , allStatus
    , allQuotaUser
    , allPrettyPrint
    , allUserIp
    , allOnlyParent
    , allSearchString
    , allIds
    , allIncludeAdvertisersWithoutGroupsOnly
    , allProfileId
    , allSortOrder
    , allAdvertiserGroupIds
    , allKey
    , allPageToken
    , allSortField
    , allSubaccountId
    , allOauthToken
    , allFloodlightConfigurationIds
    , allMaxResults
    , allFields
    , allAlt
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @DfareportingAdvertisersList@ which the
-- 'AdvertisersList'' request conforms to.
type AdvertisersListResource =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "advertisers" :>
           QueryParam "status" DfareportingAdvertisersListStatus
             :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "onlyParent" Bool :>
                     QueryParam "searchString" Text :>
                       QueryParams "ids" Int64 :>
                         QueryParam "includeAdvertisersWithoutGroupsOnly" Bool
                           :>
                           QueryParam "sortOrder"
                             DfareportingAdvertisersListSortOrder
                             :>
                             QueryParams "advertiserGroupIds" Int64 :>
                               QueryParam "key" Text :>
                                 QueryParam "pageToken" Text :>
                                   QueryParam "sortField"
                                     DfareportingAdvertisersListSortField
                                     :>
                                     QueryParam "subaccountId" Int64 :>
                                       QueryParam "oauth_token" Text :>
                                         QueryParams
                                           "floodlightConfigurationIds"
                                           Int64
                                           :>
                                           QueryParam "maxResults" Int32 :>
                                             QueryParam "fields" Text :>
                                               QueryParam "alt" Alt :>
                                                 Get '[JSON]
                                                   AdvertisersListResponse

-- | Retrieves a list of advertisers, possibly filtered.
--
-- /See:/ 'advertisersList'' smart constructor.
data AdvertisersList' = AdvertisersList'
    { _allStatus                              :: !(Maybe DfareportingAdvertisersListStatus)
    , _allQuotaUser                           :: !(Maybe Text)
    , _allPrettyPrint                         :: !Bool
    , _allUserIp                              :: !(Maybe Text)
    , _allOnlyParent                          :: !(Maybe Bool)
    , _allSearchString                        :: !(Maybe Text)
    , _allIds                                 :: !(Maybe Int64)
    , _allIncludeAdvertisersWithoutGroupsOnly :: !(Maybe Bool)
    , _allProfileId                           :: !Int64
    , _allSortOrder                           :: !(Maybe DfareportingAdvertisersListSortOrder)
    , _allAdvertiserGroupIds                  :: !(Maybe Int64)
    , _allKey                                 :: !(Maybe Text)
    , _allPageToken                           :: !(Maybe Text)
    , _allSortField                           :: !(Maybe DfareportingAdvertisersListSortField)
    , _allSubaccountId                        :: !(Maybe Int64)
    , _allOauthToken                          :: !(Maybe Text)
    , _allFloodlightConfigurationIds          :: !(Maybe Int64)
    , _allMaxResults                          :: !(Maybe Int32)
    , _allFields                              :: !(Maybe Text)
    , _allAlt                                 :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'AdvertisersList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'allStatus'
--
-- * 'allQuotaUser'
--
-- * 'allPrettyPrint'
--
-- * 'allUserIp'
--
-- * 'allOnlyParent'
--
-- * 'allSearchString'
--
-- * 'allIds'
--
-- * 'allIncludeAdvertisersWithoutGroupsOnly'
--
-- * 'allProfileId'
--
-- * 'allSortOrder'
--
-- * 'allAdvertiserGroupIds'
--
-- * 'allKey'
--
-- * 'allPageToken'
--
-- * 'allSortField'
--
-- * 'allSubaccountId'
--
-- * 'allOauthToken'
--
-- * 'allFloodlightConfigurationIds'
--
-- * 'allMaxResults'
--
-- * 'allFields'
--
-- * 'allAlt'
advertisersList'
    :: Int64 -- ^ 'profileId'
    -> AdvertisersList'
advertisersList' pAllProfileId_ =
    AdvertisersList'
    { _allStatus = Nothing
    , _allQuotaUser = Nothing
    , _allPrettyPrint = True
    , _allUserIp = Nothing
    , _allOnlyParent = Nothing
    , _allSearchString = Nothing
    , _allIds = Nothing
    , _allIncludeAdvertisersWithoutGroupsOnly = Nothing
    , _allProfileId = pAllProfileId_
    , _allSortOrder = Nothing
    , _allAdvertiserGroupIds = Nothing
    , _allKey = Nothing
    , _allPageToken = Nothing
    , _allSortField = Nothing
    , _allSubaccountId = Nothing
    , _allOauthToken = Nothing
    , _allFloodlightConfigurationIds = Nothing
    , _allMaxResults = Nothing
    , _allFields = Nothing
    , _allAlt = JSON
    }

-- | Select only advertisers with the specified status.
allStatus :: Lens' AdvertisersList' (Maybe DfareportingAdvertisersListStatus)
allStatus
  = lens _allStatus (\ s a -> s{_allStatus = a})

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
allQuotaUser :: Lens' AdvertisersList' (Maybe Text)
allQuotaUser
  = lens _allQuotaUser (\ s a -> s{_allQuotaUser = a})

-- | Returns response with indentations and line breaks.
allPrettyPrint :: Lens' AdvertisersList' Bool
allPrettyPrint
  = lens _allPrettyPrint
      (\ s a -> s{_allPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
allUserIp :: Lens' AdvertisersList' (Maybe Text)
allUserIp
  = lens _allUserIp (\ s a -> s{_allUserIp = a})

-- | Select only advertisers which use another advertiser\'s floodlight
-- configuration.
allOnlyParent :: Lens' AdvertisersList' (Maybe Bool)
allOnlyParent
  = lens _allOnlyParent
      (\ s a -> s{_allOnlyParent = a})

-- | Allows searching for objects by name or ID. Wildcards (*) are allowed.
-- For example, \"advertiser*2015\" will return objects with names like
-- \"advertiser June 2015\", \"advertiser April 2015\", or simply
-- \"advertiser 2015\". Most of the searches also add wildcards implicitly
-- at the start and the end of the search string. For example, a search
-- string of \"advertiser\" will match objects with name \"my advertiser\",
-- \"advertiser 2015\", or simply \"advertiser\".
allSearchString :: Lens' AdvertisersList' (Maybe Text)
allSearchString
  = lens _allSearchString
      (\ s a -> s{_allSearchString = a})

-- | Select only advertisers with these IDs.
allIds :: Lens' AdvertisersList' (Maybe Int64)
allIds = lens _allIds (\ s a -> s{_allIds = a})

-- | Select only advertisers which do not belong to any advertiser group.
allIncludeAdvertisersWithoutGroupsOnly :: Lens' AdvertisersList' (Maybe Bool)
allIncludeAdvertisersWithoutGroupsOnly
  = lens _allIncludeAdvertisersWithoutGroupsOnly
      (\ s a ->
         s{_allIncludeAdvertisersWithoutGroupsOnly = a})

-- | User profile ID associated with this request.
allProfileId :: Lens' AdvertisersList' Int64
allProfileId
  = lens _allProfileId (\ s a -> s{_allProfileId = a})

-- | Order of sorted results, default is ASCENDING.
allSortOrder :: Lens' AdvertisersList' (Maybe DfareportingAdvertisersListSortOrder)
allSortOrder
  = lens _allSortOrder (\ s a -> s{_allSortOrder = a})

-- | Select only advertisers with these advertiser group IDs.
allAdvertiserGroupIds :: Lens' AdvertisersList' (Maybe Int64)
allAdvertiserGroupIds
  = lens _allAdvertiserGroupIds
      (\ s a -> s{_allAdvertiserGroupIds = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
allKey :: Lens' AdvertisersList' (Maybe Text)
allKey = lens _allKey (\ s a -> s{_allKey = a})

-- | Value of the nextPageToken from the previous result page.
allPageToken :: Lens' AdvertisersList' (Maybe Text)
allPageToken
  = lens _allPageToken (\ s a -> s{_allPageToken = a})

-- | Field by which to sort the list.
allSortField :: Lens' AdvertisersList' (Maybe DfareportingAdvertisersListSortField)
allSortField
  = lens _allSortField (\ s a -> s{_allSortField = a})

-- | Select only advertisers with these subaccount IDs.
allSubaccountId :: Lens' AdvertisersList' (Maybe Int64)
allSubaccountId
  = lens _allSubaccountId
      (\ s a -> s{_allSubaccountId = a})

-- | OAuth 2.0 token for the current user.
allOauthToken :: Lens' AdvertisersList' (Maybe Text)
allOauthToken
  = lens _allOauthToken
      (\ s a -> s{_allOauthToken = a})

-- | Select only advertisers with these floodlight configuration IDs.
allFloodlightConfigurationIds :: Lens' AdvertisersList' (Maybe Int64)
allFloodlightConfigurationIds
  = lens _allFloodlightConfigurationIds
      (\ s a -> s{_allFloodlightConfigurationIds = a})

-- | Maximum number of results to return.
allMaxResults :: Lens' AdvertisersList' (Maybe Int32)
allMaxResults
  = lens _allMaxResults
      (\ s a -> s{_allMaxResults = a})

-- | Selector specifying which fields to include in a partial response.
allFields :: Lens' AdvertisersList' (Maybe Text)
allFields
  = lens _allFields (\ s a -> s{_allFields = a})

-- | Data format for the response.
allAlt :: Lens' AdvertisersList' Alt
allAlt = lens _allAlt (\ s a -> s{_allAlt = a})

instance GoogleRequest AdvertisersList' where
        type Rs AdvertisersList' = AdvertisersListResponse
        request = requestWithRoute defReq dFAReportingURL
        requestWithRoute r u AdvertisersList'{..}
          = go _allStatus _allQuotaUser (Just _allPrettyPrint)
              _allUserIp
              _allOnlyParent
              _allSearchString
              _allIds
              _allIncludeAdvertisersWithoutGroupsOnly
              _allProfileId
              _allSortOrder
              _allAdvertiserGroupIds
              _allKey
              _allPageToken
              _allSortField
              _allSubaccountId
              _allOauthToken
              _allFloodlightConfigurationIds
              _allMaxResults
              _allFields
              (Just _allAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy AdvertisersListResource)
                      r
                      u
