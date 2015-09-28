{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.DFAReporting.Advertisers.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieves a list of advertisers, possibly filtered.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @dfareporting.advertisers.list@.
module Network.Google.API.DFAReporting.Advertisers.List
    (
    -- * REST Resource
      AdvertisersListAPI

    -- * Creating a Request
    , advertisersList'
    , AdvertisersList'

    -- * Request Lenses
    , alStatus
    , alQuotaUser
    , alPrettyPrint
    , alUserIp
    , alOnlyParent
    , alSearchString
    , alIds
    , alIncludeAdvertisersWithoutGroupsOnly
    , alProfileId
    , alSortOrder
    , alAdvertiserGroupIds
    , alKey
    , alPageToken
    , alSortField
    , alSubaccountId
    , alOauthToken
    , alFloodlightConfigurationIds
    , alMaxResults
    , alFields
    , alAlt
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for dfareporting.advertisers.list which the
-- 'AdvertisersList'' request conforms to.
type AdvertisersListAPI =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "advertisers" :>
           QueryParam "status" AdvertisersList'Status :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "onlyParent" Bool :>
                     QueryParam "searchString" Text :>
                       QueryParam "ids" Int64 :>
                         QueryParam "includeAdvertisersWithoutGroupsOnly" Bool
                           :>
                           QueryParam "sortOrder" AdvertisersList'SortOrder :>
                             QueryParam "advertiserGroupIds" Int64 :>
                               QueryParam "key" Text :>
                                 QueryParam "pageToken" Text :>
                                   QueryParam "sortField"
                                     AdvertisersList'SortField
                                     :>
                                     QueryParam "subaccountId" Int64 :>
                                       QueryParam "oauth_token" Text :>
                                         QueryParam "floodlightConfigurationIds"
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
    { _alStatus                              :: !(Maybe AdvertisersList'Status)
    , _alQuotaUser                           :: !(Maybe Text)
    , _alPrettyPrint                         :: !Bool
    , _alUserIp                              :: !(Maybe Text)
    , _alOnlyParent                          :: !(Maybe Bool)
    , _alSearchString                        :: !(Maybe Text)
    , _alIds                                 :: !(Maybe Int64)
    , _alIncludeAdvertisersWithoutGroupsOnly :: !(Maybe Bool)
    , _alProfileId                           :: !Int64
    , _alSortOrder                           :: !(Maybe AdvertisersList'SortOrder)
    , _alAdvertiserGroupIds                  :: !(Maybe Int64)
    , _alKey                                 :: !(Maybe Text)
    , _alPageToken                           :: !(Maybe Text)
    , _alSortField                           :: !(Maybe AdvertisersList'SortField)
    , _alSubaccountId                        :: !(Maybe Int64)
    , _alOauthToken                          :: !(Maybe Text)
    , _alFloodlightConfigurationIds          :: !(Maybe Int64)
    , _alMaxResults                          :: !(Maybe Int32)
    , _alFields                              :: !(Maybe Text)
    , _alAlt                                 :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'AdvertisersList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'alStatus'
--
-- * 'alQuotaUser'
--
-- * 'alPrettyPrint'
--
-- * 'alUserIp'
--
-- * 'alOnlyParent'
--
-- * 'alSearchString'
--
-- * 'alIds'
--
-- * 'alIncludeAdvertisersWithoutGroupsOnly'
--
-- * 'alProfileId'
--
-- * 'alSortOrder'
--
-- * 'alAdvertiserGroupIds'
--
-- * 'alKey'
--
-- * 'alPageToken'
--
-- * 'alSortField'
--
-- * 'alSubaccountId'
--
-- * 'alOauthToken'
--
-- * 'alFloodlightConfigurationIds'
--
-- * 'alMaxResults'
--
-- * 'alFields'
--
-- * 'alAlt'
advertisersList'
    :: Int64 -- ^ 'profileId'
    -> AdvertisersList'
advertisersList' pAlProfileId_ =
    AdvertisersList'
    { _alStatus = Nothing
    , _alQuotaUser = Nothing
    , _alPrettyPrint = True
    , _alUserIp = Nothing
    , _alOnlyParent = Nothing
    , _alSearchString = Nothing
    , _alIds = Nothing
    , _alIncludeAdvertisersWithoutGroupsOnly = Nothing
    , _alProfileId = pAlProfileId_
    , _alSortOrder = Nothing
    , _alAdvertiserGroupIds = Nothing
    , _alKey = Nothing
    , _alPageToken = Nothing
    , _alSortField = Nothing
    , _alSubaccountId = Nothing
    , _alOauthToken = Nothing
    , _alFloodlightConfigurationIds = Nothing
    , _alMaxResults = Nothing
    , _alFields = Nothing
    , _alAlt = JSON
    }

-- | Select only advertisers with the specified status.
alStatus :: Lens' AdvertisersList' (Maybe AdvertisersList'Status)
alStatus = lens _alStatus (\ s a -> s{_alStatus = a})

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
alQuotaUser :: Lens' AdvertisersList' (Maybe Text)
alQuotaUser
  = lens _alQuotaUser (\ s a -> s{_alQuotaUser = a})

-- | Returns response with indentations and line breaks.
alPrettyPrint :: Lens' AdvertisersList' Bool
alPrettyPrint
  = lens _alPrettyPrint
      (\ s a -> s{_alPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
alUserIp :: Lens' AdvertisersList' (Maybe Text)
alUserIp = lens _alUserIp (\ s a -> s{_alUserIp = a})

-- | Select only advertisers which use another advertiser\'s floodlight
-- configuration.
alOnlyParent :: Lens' AdvertisersList' (Maybe Bool)
alOnlyParent
  = lens _alOnlyParent (\ s a -> s{_alOnlyParent = a})

-- | Allows searching for objects by name or ID. Wildcards (*) are allowed.
-- For example, \"advertiser*2015\" will return objects with names like
-- \"advertiser June 2015\", \"advertiser April 2015\", or simply
-- \"advertiser 2015\". Most of the searches also add wildcards implicitly
-- at the start and the end of the search string. For example, a search
-- string of \"advertiser\" will match objects with name \"my advertiser\",
-- \"advertiser 2015\", or simply \"advertiser\".
alSearchString :: Lens' AdvertisersList' (Maybe Text)
alSearchString
  = lens _alSearchString
      (\ s a -> s{_alSearchString = a})

-- | Select only advertisers with these IDs.
alIds :: Lens' AdvertisersList' (Maybe Int64)
alIds = lens _alIds (\ s a -> s{_alIds = a})

-- | Select only advertisers which do not belong to any advertiser group.
alIncludeAdvertisersWithoutGroupsOnly :: Lens' AdvertisersList' (Maybe Bool)
alIncludeAdvertisersWithoutGroupsOnly
  = lens _alIncludeAdvertisersWithoutGroupsOnly
      (\ s a ->
         s{_alIncludeAdvertisersWithoutGroupsOnly = a})

-- | User profile ID associated with this request.
alProfileId :: Lens' AdvertisersList' Int64
alProfileId
  = lens _alProfileId (\ s a -> s{_alProfileId = a})

-- | Order of sorted results, default is ASCENDING.
alSortOrder :: Lens' AdvertisersList' (Maybe AdvertisersList'SortOrder)
alSortOrder
  = lens _alSortOrder (\ s a -> s{_alSortOrder = a})

-- | Select only advertisers with these advertiser group IDs.
alAdvertiserGroupIds :: Lens' AdvertisersList' (Maybe Int64)
alAdvertiserGroupIds
  = lens _alAdvertiserGroupIds
      (\ s a -> s{_alAdvertiserGroupIds = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
alKey :: Lens' AdvertisersList' (Maybe Text)
alKey = lens _alKey (\ s a -> s{_alKey = a})

-- | Value of the nextPageToken from the previous result page.
alPageToken :: Lens' AdvertisersList' (Maybe Text)
alPageToken
  = lens _alPageToken (\ s a -> s{_alPageToken = a})

-- | Field by which to sort the list.
alSortField :: Lens' AdvertisersList' (Maybe AdvertisersList'SortField)
alSortField
  = lens _alSortField (\ s a -> s{_alSortField = a})

-- | Select only advertisers with these subaccount IDs.
alSubaccountId :: Lens' AdvertisersList' (Maybe Int64)
alSubaccountId
  = lens _alSubaccountId
      (\ s a -> s{_alSubaccountId = a})

-- | OAuth 2.0 token for the current user.
alOauthToken :: Lens' AdvertisersList' (Maybe Text)
alOauthToken
  = lens _alOauthToken (\ s a -> s{_alOauthToken = a})

-- | Select only advertisers with these floodlight configuration IDs.
alFloodlightConfigurationIds :: Lens' AdvertisersList' (Maybe Int64)
alFloodlightConfigurationIds
  = lens _alFloodlightConfigurationIds
      (\ s a -> s{_alFloodlightConfigurationIds = a})

-- | Maximum number of results to return.
alMaxResults :: Lens' AdvertisersList' (Maybe Int32)
alMaxResults
  = lens _alMaxResults (\ s a -> s{_alMaxResults = a})

-- | Selector specifying which fields to include in a partial response.
alFields :: Lens' AdvertisersList' (Maybe Text)
alFields = lens _alFields (\ s a -> s{_alFields = a})

-- | Data format for the response.
alAlt :: Lens' AdvertisersList' Alt
alAlt = lens _alAlt (\ s a -> s{_alAlt = a})

instance GoogleRequest AdvertisersList' where
        type Rs AdvertisersList' = AdvertisersListResponse
        request = requestWithRoute defReq dFAReportingURL
        requestWithRoute r u AdvertisersList'{..}
          = go _alStatus _alQuotaUser (Just _alPrettyPrint)
              _alUserIp
              _alOnlyParent
              _alSearchString
              _alIds
              _alIncludeAdvertisersWithoutGroupsOnly
              _alProfileId
              _alSortOrder
              _alAdvertiserGroupIds
              _alKey
              _alPageToken
              _alSortField
              _alSubaccountId
              _alOauthToken
              _alFloodlightConfigurationIds
              _alMaxResults
              _alFields
              (Just _alAlt)
          where go
                  = clientWithRoute (Proxy :: Proxy AdvertisersListAPI)
                      r
                      u
