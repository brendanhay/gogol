{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
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
module DFAReporting.Advertisers.List
    (
    -- * REST Resource
      AdvertisersListAPI

    -- * Creating a Request
    , advertisersList
    , AdvertisersList

    -- * Request Lenses
    , advStatus
    , advQuotaUser
    , advPrettyPrint
    , advUserIp
    , advOnlyParent
    , advSearchString
    , advIds
    , advIncludeAdvertisersWithoutGroupsOnly
    , advProfileId
    , advSortOrder
    , advAdvertiserGroupIds
    , advKey
    , advPageToken
    , advSortField
    , advSubaccountId
    , advOauthToken
    , advFloodlightConfigurationIds
    , advMaxResults
    , advFields
    , advAlt
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @DfareportingAdvertisersList@ which the
-- 'AdvertisersList' request conforms to.
type AdvertisersListAPI =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "advertisers" :>
           QueryParam "status" Text :>
             QueryParam "onlyParent" Bool :>
               QueryParam "searchString" Text :>
                 QueryParams "ids" Int64 :>
                   QueryParam "includeAdvertisersWithoutGroupsOnly" Bool
                     :>
                     QueryParam "sortOrder" Text :>
                       QueryParams "advertiserGroupIds" Int64 :>
                         QueryParam "pageToken" Text :>
                           QueryParam "sortField" Text :>
                             QueryParam "subaccountId" Int64 :>
                               QueryParams "floodlightConfigurationIds" Int64 :>
                                 QueryParam "maxResults" Int32 :>
                                   Get '[JSON] AdvertisersListResponse

-- | Retrieves a list of advertisers, possibly filtered.
--
-- /See:/ 'advertisersList' smart constructor.
data AdvertisersList = AdvertisersList
    { _advStatus                              :: !(Maybe Text)
    , _advQuotaUser                           :: !(Maybe Text)
    , _advPrettyPrint                         :: !Bool
    , _advUserIp                              :: !(Maybe Text)
    , _advOnlyParent                          :: !(Maybe Bool)
    , _advSearchString                        :: !(Maybe Text)
    , _advIds                                 :: !(Maybe Int64)
    , _advIncludeAdvertisersWithoutGroupsOnly :: !(Maybe Bool)
    , _advProfileId                           :: !Int64
    , _advSortOrder                           :: !(Maybe Text)
    , _advAdvertiserGroupIds                  :: !(Maybe Int64)
    , _advKey                                 :: !(Maybe Text)
    , _advPageToken                           :: !(Maybe Text)
    , _advSortField                           :: !(Maybe Text)
    , _advSubaccountId                        :: !(Maybe Int64)
    , _advOauthToken                          :: !(Maybe Text)
    , _advFloodlightConfigurationIds          :: !(Maybe Int64)
    , _advMaxResults                          :: !(Maybe Int32)
    , _advFields                              :: !(Maybe Text)
    , _advAlt                                 :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'AdvertisersList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'advStatus'
--
-- * 'advQuotaUser'
--
-- * 'advPrettyPrint'
--
-- * 'advUserIp'
--
-- * 'advOnlyParent'
--
-- * 'advSearchString'
--
-- * 'advIds'
--
-- * 'advIncludeAdvertisersWithoutGroupsOnly'
--
-- * 'advProfileId'
--
-- * 'advSortOrder'
--
-- * 'advAdvertiserGroupIds'
--
-- * 'advKey'
--
-- * 'advPageToken'
--
-- * 'advSortField'
--
-- * 'advSubaccountId'
--
-- * 'advOauthToken'
--
-- * 'advFloodlightConfigurationIds'
--
-- * 'advMaxResults'
--
-- * 'advFields'
--
-- * 'advAlt'
advertisersList
    :: Int64 -- ^ 'profileId'
    -> AdvertisersList
advertisersList pAdvProfileId_ =
    AdvertisersList
    { _advStatus = Nothing
    , _advQuotaUser = Nothing
    , _advPrettyPrint = True
    , _advUserIp = Nothing
    , _advOnlyParent = Nothing
    , _advSearchString = Nothing
    , _advIds = Nothing
    , _advIncludeAdvertisersWithoutGroupsOnly = Nothing
    , _advProfileId = pAdvProfileId_
    , _advSortOrder = Nothing
    , _advAdvertiserGroupIds = Nothing
    , _advKey = Nothing
    , _advPageToken = Nothing
    , _advSortField = Nothing
    , _advSubaccountId = Nothing
    , _advOauthToken = Nothing
    , _advFloodlightConfigurationIds = Nothing
    , _advMaxResults = Nothing
    , _advFields = Nothing
    , _advAlt = "json"
    }

-- | Select only advertisers with the specified status.
advStatus :: Lens' AdvertisersList' (Maybe Text)
advStatus
  = lens _advStatus (\ s a -> s{_advStatus = a})

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
advQuotaUser :: Lens' AdvertisersList' (Maybe Text)
advQuotaUser
  = lens _advQuotaUser (\ s a -> s{_advQuotaUser = a})

-- | Returns response with indentations and line breaks.
advPrettyPrint :: Lens' AdvertisersList' Bool
advPrettyPrint
  = lens _advPrettyPrint
      (\ s a -> s{_advPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
advUserIp :: Lens' AdvertisersList' (Maybe Text)
advUserIp
  = lens _advUserIp (\ s a -> s{_advUserIp = a})

-- | Select only advertisers which use another advertiser\'s floodlight
-- configuration.
advOnlyParent :: Lens' AdvertisersList' (Maybe Bool)
advOnlyParent
  = lens _advOnlyParent
      (\ s a -> s{_advOnlyParent = a})

-- | Allows searching for objects by name or ID. Wildcards (*) are allowed.
-- For example, \"advertiser*2015\" will return objects with names like
-- \"advertiser June 2015\", \"advertiser April 2015\", or simply
-- \"advertiser 2015\". Most of the searches also add wildcards implicitly
-- at the start and the end of the search string. For example, a search
-- string of \"advertiser\" will match objects with name \"my advertiser\",
-- \"advertiser 2015\", or simply \"advertiser\".
advSearchString :: Lens' AdvertisersList' (Maybe Text)
advSearchString
  = lens _advSearchString
      (\ s a -> s{_advSearchString = a})

-- | Select only advertisers with these IDs.
advIds :: Lens' AdvertisersList' (Maybe Int64)
advIds = lens _advIds (\ s a -> s{_advIds = a})

-- | Select only advertisers which do not belong to any advertiser group.
advIncludeAdvertisersWithoutGroupsOnly :: Lens' AdvertisersList' (Maybe Bool)
advIncludeAdvertisersWithoutGroupsOnly
  = lens _advIncludeAdvertisersWithoutGroupsOnly
      (\ s a ->
         s{_advIncludeAdvertisersWithoutGroupsOnly = a})

-- | User profile ID associated with this request.
advProfileId :: Lens' AdvertisersList' Int64
advProfileId
  = lens _advProfileId (\ s a -> s{_advProfileId = a})

-- | Order of sorted results, default is ASCENDING.
advSortOrder :: Lens' AdvertisersList' (Maybe Text)
advSortOrder
  = lens _advSortOrder (\ s a -> s{_advSortOrder = a})

-- | Select only advertisers with these advertiser group IDs.
advAdvertiserGroupIds :: Lens' AdvertisersList' (Maybe Int64)
advAdvertiserGroupIds
  = lens _advAdvertiserGroupIds
      (\ s a -> s{_advAdvertiserGroupIds = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
advKey :: Lens' AdvertisersList' (Maybe Text)
advKey = lens _advKey (\ s a -> s{_advKey = a})

-- | Value of the nextPageToken from the previous result page.
advPageToken :: Lens' AdvertisersList' (Maybe Text)
advPageToken
  = lens _advPageToken (\ s a -> s{_advPageToken = a})

-- | Field by which to sort the list.
advSortField :: Lens' AdvertisersList' (Maybe Text)
advSortField
  = lens _advSortField (\ s a -> s{_advSortField = a})

-- | Select only advertisers with these subaccount IDs.
advSubaccountId :: Lens' AdvertisersList' (Maybe Int64)
advSubaccountId
  = lens _advSubaccountId
      (\ s a -> s{_advSubaccountId = a})

-- | OAuth 2.0 token for the current user.
advOauthToken :: Lens' AdvertisersList' (Maybe Text)
advOauthToken
  = lens _advOauthToken
      (\ s a -> s{_advOauthToken = a})

-- | Select only advertisers with these floodlight configuration IDs.
advFloodlightConfigurationIds :: Lens' AdvertisersList' (Maybe Int64)
advFloodlightConfigurationIds
  = lens _advFloodlightConfigurationIds
      (\ s a -> s{_advFloodlightConfigurationIds = a})

-- | Maximum number of results to return.
advMaxResults :: Lens' AdvertisersList' (Maybe Int32)
advMaxResults
  = lens _advMaxResults
      (\ s a -> s{_advMaxResults = a})

-- | Selector specifying which fields to include in a partial response.
advFields :: Lens' AdvertisersList' (Maybe Text)
advFields
  = lens _advFields (\ s a -> s{_advFields = a})

-- | Data format for the response.
advAlt :: Lens' AdvertisersList' Text
advAlt = lens _advAlt (\ s a -> s{_advAlt = a})

instance GoogleRequest AdvertisersList' where
        type Rs AdvertisersList' = AdvertisersListResponse
        request = requestWithRoute defReq dFAReportingURL
        requestWithRoute r u AdvertisersList{..}
          = go _advStatus _advQuotaUser _advPrettyPrint
              _advUserIp
              _advOnlyParent
              _advSearchString
              _advIds
              _advIncludeAdvertisersWithoutGroupsOnly
              _advProfileId
              _advSortOrder
              _advAdvertiserGroupIds
              _advKey
              _advPageToken
              _advSortField
              _advSubaccountId
              _advOauthToken
              _advFloodlightConfigurationIds
              _advMaxResults
              _advFields
              _advAlt
          where go
                  = clientWithRoute (Proxy :: Proxy AdvertisersListAPI)
                      r
                      u
