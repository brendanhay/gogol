{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.DFAReporting.Accounts.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieves the list of accounts, possibly filtered.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @dfareporting.accounts.list@.
module Network.Google.API.DFAReporting.Accounts.List
    (
    -- * REST Resource
      AccountsListAPI

    -- * Creating a Request
    , accountsList'
    , AccountsList'

    -- * Request Lenses
    , allQuotaUser
    , allPrettyPrint
    , allUserIp
    , allSearchString
    , allIds
    , allProfileId
    , allSortOrder
    , allActive
    , allKey
    , allPageToken
    , allSortField
    , allOauthToken
    , allMaxResults
    , allFields
    , allAlt
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for dfareporting.accounts.list which the
-- 'AccountsList'' request conforms to.
type AccountsListAPI =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "accounts" :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "searchString" Text :>
                   QueryParam "ids" Int64 :>
                     QueryParam "sortOrder" AccountsList'SortOrder :>
                       QueryParam "active" Bool :>
                         QueryParam "key" Text :>
                           QueryParam "pageToken" Text :>
                             QueryParam "sortField" AccountsList'SortField :>
                               QueryParam "oauth_token" Text :>
                                 QueryParam "maxResults" Int32 :>
                                   QueryParam "fields" Text :>
                                     QueryParam "alt" Alt :>
                                       Get '[JSON] AccountsListResponse

-- | Retrieves the list of accounts, possibly filtered.
--
-- /See:/ 'accountsList'' smart constructor.
data AccountsList' = AccountsList'
    { _allQuotaUser    :: !(Maybe Text)
    , _allPrettyPrint  :: !Bool
    , _allUserIp       :: !(Maybe Text)
    , _allSearchString :: !(Maybe Text)
    , _allIds          :: !(Maybe Int64)
    , _allProfileId    :: !Int64
    , _allSortOrder    :: !(Maybe AccountsList'SortOrder)
    , _allActive       :: !(Maybe Bool)
    , _allKey          :: !(Maybe Text)
    , _allPageToken    :: !(Maybe Text)
    , _allSortField    :: !(Maybe AccountsList'SortField)
    , _allOauthToken   :: !(Maybe Text)
    , _allMaxResults   :: !(Maybe Int32)
    , _allFields       :: !(Maybe Text)
    , _allAlt          :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'allQuotaUser'
--
-- * 'allPrettyPrint'
--
-- * 'allUserIp'
--
-- * 'allSearchString'
--
-- * 'allIds'
--
-- * 'allProfileId'
--
-- * 'allSortOrder'
--
-- * 'allActive'
--
-- * 'allKey'
--
-- * 'allPageToken'
--
-- * 'allSortField'
--
-- * 'allOauthToken'
--
-- * 'allMaxResults'
--
-- * 'allFields'
--
-- * 'allAlt'
accountsList'
    :: Int64 -- ^ 'profileId'
    -> AccountsList'
accountsList' pAllProfileId_ =
    AccountsList'
    { _allQuotaUser = Nothing
    , _allPrettyPrint = True
    , _allUserIp = Nothing
    , _allSearchString = Nothing
    , _allIds = Nothing
    , _allProfileId = pAllProfileId_
    , _allSortOrder = Nothing
    , _allActive = Nothing
    , _allKey = Nothing
    , _allPageToken = Nothing
    , _allSortField = Nothing
    , _allOauthToken = Nothing
    , _allMaxResults = Nothing
    , _allFields = Nothing
    , _allAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
allQuotaUser :: Lens' AccountsList' (Maybe Text)
allQuotaUser
  = lens _allQuotaUser (\ s a -> s{_allQuotaUser = a})

-- | Returns response with indentations and line breaks.
allPrettyPrint :: Lens' AccountsList' Bool
allPrettyPrint
  = lens _allPrettyPrint
      (\ s a -> s{_allPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
allUserIp :: Lens' AccountsList' (Maybe Text)
allUserIp
  = lens _allUserIp (\ s a -> s{_allUserIp = a})

-- | Allows searching for objects by name or ID. Wildcards (*) are allowed.
-- For example, \"account*2015\" will return objects with names like
-- \"account June 2015\", \"account April 2015\", or simply \"account
-- 2015\". Most of the searches also add wildcards implicitly at the start
-- and the end of the search string. For example, a search string of
-- \"account\" will match objects with name \"my account\", \"account
-- 2015\", or simply \"account\".
allSearchString :: Lens' AccountsList' (Maybe Text)
allSearchString
  = lens _allSearchString
      (\ s a -> s{_allSearchString = a})

-- | Select only accounts with these IDs.
allIds :: Lens' AccountsList' (Maybe Int64)
allIds = lens _allIds (\ s a -> s{_allIds = a})

-- | User profile ID associated with this request.
allProfileId :: Lens' AccountsList' Int64
allProfileId
  = lens _allProfileId (\ s a -> s{_allProfileId = a})

-- | Order of sorted results, default is ASCENDING.
allSortOrder :: Lens' AccountsList' (Maybe AccountsList'SortOrder)
allSortOrder
  = lens _allSortOrder (\ s a -> s{_allSortOrder = a})

-- | Select only active accounts. Don\'t set this field to select both active
-- and non-active accounts.
allActive :: Lens' AccountsList' (Maybe Bool)
allActive
  = lens _allActive (\ s a -> s{_allActive = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
allKey :: Lens' AccountsList' (Maybe Text)
allKey = lens _allKey (\ s a -> s{_allKey = a})

-- | Value of the nextPageToken from the previous result page.
allPageToken :: Lens' AccountsList' (Maybe Text)
allPageToken
  = lens _allPageToken (\ s a -> s{_allPageToken = a})

-- | Field by which to sort the list.
allSortField :: Lens' AccountsList' (Maybe AccountsList'SortField)
allSortField
  = lens _allSortField (\ s a -> s{_allSortField = a})

-- | OAuth 2.0 token for the current user.
allOauthToken :: Lens' AccountsList' (Maybe Text)
allOauthToken
  = lens _allOauthToken
      (\ s a -> s{_allOauthToken = a})

-- | Maximum number of results to return.
allMaxResults :: Lens' AccountsList' (Maybe Int32)
allMaxResults
  = lens _allMaxResults
      (\ s a -> s{_allMaxResults = a})

-- | Selector specifying which fields to include in a partial response.
allFields :: Lens' AccountsList' (Maybe Text)
allFields
  = lens _allFields (\ s a -> s{_allFields = a})

-- | Data format for the response.
allAlt :: Lens' AccountsList' Alt
allAlt = lens _allAlt (\ s a -> s{_allAlt = a})

instance GoogleRequest AccountsList' where
        type Rs AccountsList' = AccountsListResponse
        request = requestWithRoute defReq dFAReportingURL
        requestWithRoute r u AccountsList'{..}
          = go _allQuotaUser (Just _allPrettyPrint) _allUserIp
              _allSearchString
              _allIds
              _allProfileId
              _allSortOrder
              _allActive
              _allKey
              _allPageToken
              _allSortField
              _allOauthToken
              _allMaxResults
              _allFields
              (Just _allAlt)
          where go
                  = clientWithRoute (Proxy :: Proxy AccountsListAPI) r
                      u
