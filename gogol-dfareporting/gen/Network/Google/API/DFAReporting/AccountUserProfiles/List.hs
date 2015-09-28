{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.DFAReporting.AccountUserProfiles.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieves a list of account user profiles, possibly filtered.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @dfareporting.accountUserProfiles.list@.
module Network.Google.API.DFAReporting.AccountUserProfiles.List
    (
    -- * REST Resource
      AccountUserProfilesListAPI

    -- * Creating a Request
    , accountUserProfilesList'
    , AccountUserProfilesList'

    -- * Request Lenses
    , auplQuotaUser
    , auplPrettyPrint
    , auplUserRoleId
    , auplUserIp
    , auplSearchString
    , auplIds
    , auplProfileId
    , auplSortOrder
    , auplActive
    , auplKey
    , auplPageToken
    , auplSortField
    , auplSubaccountId
    , auplOauthToken
    , auplMaxResults
    , auplFields
    , auplAlt
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for dfareporting.accountUserProfiles.list which the
-- 'AccountUserProfilesList'' request conforms to.
type AccountUserProfilesListAPI =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "accountUserProfiles" :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userRoleId" Int64 :>
                 QueryParam "userIp" Text :>
                   QueryParam "searchString" Text :>
                     QueryParam "ids" Int64 :>
                       QueryParam "sortOrder"
                         AccountUserProfilesList'SortOrder
                         :>
                         QueryParam "active" Bool :>
                           QueryParam "key" Text :>
                             QueryParam "pageToken" Text :>
                               QueryParam "sortField"
                                 AccountUserProfilesList'SortField
                                 :>
                                 QueryParam "subaccountId" Int64 :>
                                   QueryParam "oauth_token" Text :>
                                     QueryParam "maxResults" Int32 :>
                                       QueryParam "fields" Text :>
                                         QueryParam "alt" Alt :>
                                           Get '[JSON]
                                             AccountUserProfilesListResponse

-- | Retrieves a list of account user profiles, possibly filtered.
--
-- /See:/ 'accountUserProfilesList'' smart constructor.
data AccountUserProfilesList' = AccountUserProfilesList'
    { _auplQuotaUser    :: !(Maybe Text)
    , _auplPrettyPrint  :: !Bool
    , _auplUserRoleId   :: !(Maybe Int64)
    , _auplUserIp       :: !(Maybe Text)
    , _auplSearchString :: !(Maybe Text)
    , _auplIds          :: !(Maybe Int64)
    , _auplProfileId    :: !Int64
    , _auplSortOrder    :: !(Maybe AccountUserProfilesList'SortOrder)
    , _auplActive       :: !(Maybe Bool)
    , _auplKey          :: !(Maybe Text)
    , _auplPageToken    :: !(Maybe Text)
    , _auplSortField    :: !(Maybe AccountUserProfilesList'SortField)
    , _auplSubaccountId :: !(Maybe Int64)
    , _auplOauthToken   :: !(Maybe Text)
    , _auplMaxResults   :: !(Maybe Int32)
    , _auplFields       :: !(Maybe Text)
    , _auplAlt          :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountUserProfilesList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'auplQuotaUser'
--
-- * 'auplPrettyPrint'
--
-- * 'auplUserRoleId'
--
-- * 'auplUserIp'
--
-- * 'auplSearchString'
--
-- * 'auplIds'
--
-- * 'auplProfileId'
--
-- * 'auplSortOrder'
--
-- * 'auplActive'
--
-- * 'auplKey'
--
-- * 'auplPageToken'
--
-- * 'auplSortField'
--
-- * 'auplSubaccountId'
--
-- * 'auplOauthToken'
--
-- * 'auplMaxResults'
--
-- * 'auplFields'
--
-- * 'auplAlt'
accountUserProfilesList'
    :: Int64 -- ^ 'profileId'
    -> AccountUserProfilesList'
accountUserProfilesList' pAuplProfileId_ =
    AccountUserProfilesList'
    { _auplQuotaUser = Nothing
    , _auplPrettyPrint = True
    , _auplUserRoleId = Nothing
    , _auplUserIp = Nothing
    , _auplSearchString = Nothing
    , _auplIds = Nothing
    , _auplProfileId = pAuplProfileId_
    , _auplSortOrder = Nothing
    , _auplActive = Nothing
    , _auplKey = Nothing
    , _auplPageToken = Nothing
    , _auplSortField = Nothing
    , _auplSubaccountId = Nothing
    , _auplOauthToken = Nothing
    , _auplMaxResults = Nothing
    , _auplFields = Nothing
    , _auplAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
auplQuotaUser :: Lens' AccountUserProfilesList' (Maybe Text)
auplQuotaUser
  = lens _auplQuotaUser
      (\ s a -> s{_auplQuotaUser = a})

-- | Returns response with indentations and line breaks.
auplPrettyPrint :: Lens' AccountUserProfilesList' Bool
auplPrettyPrint
  = lens _auplPrettyPrint
      (\ s a -> s{_auplPrettyPrint = a})

-- | Select only user profiles with the specified user role ID.
auplUserRoleId :: Lens' AccountUserProfilesList' (Maybe Int64)
auplUserRoleId
  = lens _auplUserRoleId
      (\ s a -> s{_auplUserRoleId = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
auplUserIp :: Lens' AccountUserProfilesList' (Maybe Text)
auplUserIp
  = lens _auplUserIp (\ s a -> s{_auplUserIp = a})

-- | Allows searching for objects by name, ID or email. Wildcards (*) are
-- allowed. For example, \"user profile*2015\" will return objects with
-- names like \"user profile June 2015\", \"user profile April 2015\", or
-- simply \"user profile 2015\". Most of the searches also add wildcards
-- implicitly at the start and the end of the search string. For example, a
-- search string of \"user profile\" will match objects with name \"my user
-- profile\", \"user profile 2015\", or simply \"user profile\".
auplSearchString :: Lens' AccountUserProfilesList' (Maybe Text)
auplSearchString
  = lens _auplSearchString
      (\ s a -> s{_auplSearchString = a})

-- | Select only user profiles with these IDs.
auplIds :: Lens' AccountUserProfilesList' (Maybe Int64)
auplIds = lens _auplIds (\ s a -> s{_auplIds = a})

-- | User profile ID associated with this request.
auplProfileId :: Lens' AccountUserProfilesList' Int64
auplProfileId
  = lens _auplProfileId
      (\ s a -> s{_auplProfileId = a})

-- | Order of sorted results, default is ASCENDING.
auplSortOrder :: Lens' AccountUserProfilesList' (Maybe AccountUserProfilesList'SortOrder)
auplSortOrder
  = lens _auplSortOrder
      (\ s a -> s{_auplSortOrder = a})

-- | Select only active user profiles.
auplActive :: Lens' AccountUserProfilesList' (Maybe Bool)
auplActive
  = lens _auplActive (\ s a -> s{_auplActive = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
auplKey :: Lens' AccountUserProfilesList' (Maybe Text)
auplKey = lens _auplKey (\ s a -> s{_auplKey = a})

-- | Value of the nextPageToken from the previous result page.
auplPageToken :: Lens' AccountUserProfilesList' (Maybe Text)
auplPageToken
  = lens _auplPageToken
      (\ s a -> s{_auplPageToken = a})

-- | Field by which to sort the list.
auplSortField :: Lens' AccountUserProfilesList' (Maybe AccountUserProfilesList'SortField)
auplSortField
  = lens _auplSortField
      (\ s a -> s{_auplSortField = a})

-- | Select only user profiles with the specified subaccount ID.
auplSubaccountId :: Lens' AccountUserProfilesList' (Maybe Int64)
auplSubaccountId
  = lens _auplSubaccountId
      (\ s a -> s{_auplSubaccountId = a})

-- | OAuth 2.0 token for the current user.
auplOauthToken :: Lens' AccountUserProfilesList' (Maybe Text)
auplOauthToken
  = lens _auplOauthToken
      (\ s a -> s{_auplOauthToken = a})

-- | Maximum number of results to return.
auplMaxResults :: Lens' AccountUserProfilesList' (Maybe Int32)
auplMaxResults
  = lens _auplMaxResults
      (\ s a -> s{_auplMaxResults = a})

-- | Selector specifying which fields to include in a partial response.
auplFields :: Lens' AccountUserProfilesList' (Maybe Text)
auplFields
  = lens _auplFields (\ s a -> s{_auplFields = a})

-- | Data format for the response.
auplAlt :: Lens' AccountUserProfilesList' Alt
auplAlt = lens _auplAlt (\ s a -> s{_auplAlt = a})

instance GoogleRequest AccountUserProfilesList' where
        type Rs AccountUserProfilesList' =
             AccountUserProfilesListResponse
        request = requestWithRoute defReq dFAReportingURL
        requestWithRoute r u AccountUserProfilesList'{..}
          = go _auplQuotaUser (Just _auplPrettyPrint)
              _auplUserRoleId
              _auplUserIp
              _auplSearchString
              _auplIds
              _auplProfileId
              _auplSortOrder
              _auplActive
              _auplKey
              _auplPageToken
              _auplSortField
              _auplSubaccountId
              _auplOauthToken
              _auplMaxResults
              _auplFields
              (Just _auplAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy AccountUserProfilesListAPI)
                      r
                      u
