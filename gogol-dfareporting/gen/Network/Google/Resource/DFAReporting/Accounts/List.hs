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
-- Module      : Network.Google.Resource.DFAReporting.Accounts.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieves the list of accounts, possibly filtered.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @DfareportingAccountsList@.
module Network.Google.Resource.DFAReporting.Accounts.List
    (
    -- * REST Resource
      AccountsListResource

    -- * Creating a Request
    , accountsList'
    , AccountsList'

    -- * Request Lenses
    , alQuotaUser
    , alPrettyPrint
    , alUserIP
    , alSearchString
    , alIds
    , alProfileId
    , alSortOrder
    , alActive
    , alKey
    , alPageToken
    , alSortField
    , alOAuthToken
    , alMaxResults
    , alFields
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @DfareportingAccountsList@ which the
-- 'AccountsList'' request conforms to.
type AccountsListResource =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "accounts" :>
           QueryParam "searchString" Text :>
             QueryParams "ids" Int64 :>
               QueryParam "sortOrder"
                 DfareportingAccountsListSortOrder
                 :>
                 QueryParam "active" Bool :>
                   QueryParam "pageToken" Text :>
                     QueryParam "sortField"
                       DfareportingAccountsListSortField
                       :>
                       QueryParam "maxResults" Int32 :>
                         QueryParam "quotaUser" Text :>
                           QueryParam "prettyPrint" Bool :>
                             QueryParam "userIp" Text :>
                               QueryParam "fields" Text :>
                                 QueryParam "key" Key :>
                                   QueryParam "oauth_token" OAuthToken :>
                                     QueryParam "alt" AltJSON :>
                                       Get '[JSON] AccountsListResponse

-- | Retrieves the list of accounts, possibly filtered.
--
-- /See:/ 'accountsList'' smart constructor.
data AccountsList' = AccountsList'
    { _alQuotaUser    :: !(Maybe Text)
    , _alPrettyPrint  :: !Bool
    , _alUserIP       :: !(Maybe Text)
    , _alSearchString :: !(Maybe Text)
    , _alIds          :: !(Maybe [Int64])
    , _alProfileId    :: !Int64
    , _alSortOrder    :: !(Maybe DfareportingAccountsListSortOrder)
    , _alActive       :: !(Maybe Bool)
    , _alKey          :: !(Maybe Key)
    , _alPageToken    :: !(Maybe Text)
    , _alSortField    :: !(Maybe DfareportingAccountsListSortField)
    , _alOAuthToken   :: !(Maybe OAuthToken)
    , _alMaxResults   :: !(Maybe Int32)
    , _alFields       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'alQuotaUser'
--
-- * 'alPrettyPrint'
--
-- * 'alUserIP'
--
-- * 'alSearchString'
--
-- * 'alIds'
--
-- * 'alProfileId'
--
-- * 'alSortOrder'
--
-- * 'alActive'
--
-- * 'alKey'
--
-- * 'alPageToken'
--
-- * 'alSortField'
--
-- * 'alOAuthToken'
--
-- * 'alMaxResults'
--
-- * 'alFields'
accountsList'
    :: Int64 -- ^ 'profileId'
    -> AccountsList'
accountsList' pAlProfileId_ =
    AccountsList'
    { _alQuotaUser = Nothing
    , _alPrettyPrint = True
    , _alUserIP = Nothing
    , _alSearchString = Nothing
    , _alIds = Nothing
    , _alProfileId = pAlProfileId_
    , _alSortOrder = Nothing
    , _alActive = Nothing
    , _alKey = Nothing
    , _alPageToken = Nothing
    , _alSortField = Nothing
    , _alOAuthToken = Nothing
    , _alMaxResults = Nothing
    , _alFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
alQuotaUser :: Lens' AccountsList' (Maybe Text)
alQuotaUser
  = lens _alQuotaUser (\ s a -> s{_alQuotaUser = a})

-- | Returns response with indentations and line breaks.
alPrettyPrint :: Lens' AccountsList' Bool
alPrettyPrint
  = lens _alPrettyPrint
      (\ s a -> s{_alPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
alUserIP :: Lens' AccountsList' (Maybe Text)
alUserIP = lens _alUserIP (\ s a -> s{_alUserIP = a})

-- | Allows searching for objects by name or ID. Wildcards (*) are allowed.
-- For example, \"account*2015\" will return objects with names like
-- \"account June 2015\", \"account April 2015\", or simply \"account
-- 2015\". Most of the searches also add wildcards implicitly at the start
-- and the end of the search string. For example, a search string of
-- \"account\" will match objects with name \"my account\", \"account
-- 2015\", or simply \"account\".
alSearchString :: Lens' AccountsList' (Maybe Text)
alSearchString
  = lens _alSearchString
      (\ s a -> s{_alSearchString = a})

-- | Select only accounts with these IDs.
alIds :: Lens' AccountsList' [Int64]
alIds
  = lens _alIds (\ s a -> s{_alIds = a}) . _Default .
      _Coerce

-- | User profile ID associated with this request.
alProfileId :: Lens' AccountsList' Int64
alProfileId
  = lens _alProfileId (\ s a -> s{_alProfileId = a})

-- | Order of sorted results, default is ASCENDING.
alSortOrder :: Lens' AccountsList' (Maybe DfareportingAccountsListSortOrder)
alSortOrder
  = lens _alSortOrder (\ s a -> s{_alSortOrder = a})

-- | Select only active accounts. Don\'t set this field to select both active
-- and non-active accounts.
alActive :: Lens' AccountsList' (Maybe Bool)
alActive = lens _alActive (\ s a -> s{_alActive = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
alKey :: Lens' AccountsList' (Maybe Key)
alKey = lens _alKey (\ s a -> s{_alKey = a})

-- | Value of the nextPageToken from the previous result page.
alPageToken :: Lens' AccountsList' (Maybe Text)
alPageToken
  = lens _alPageToken (\ s a -> s{_alPageToken = a})

-- | Field by which to sort the list.
alSortField :: Lens' AccountsList' (Maybe DfareportingAccountsListSortField)
alSortField
  = lens _alSortField (\ s a -> s{_alSortField = a})

-- | OAuth 2.0 token for the current user.
alOAuthToken :: Lens' AccountsList' (Maybe OAuthToken)
alOAuthToken
  = lens _alOAuthToken (\ s a -> s{_alOAuthToken = a})

-- | Maximum number of results to return.
alMaxResults :: Lens' AccountsList' (Maybe Int32)
alMaxResults
  = lens _alMaxResults (\ s a -> s{_alMaxResults = a})

-- | Selector specifying which fields to include in a partial response.
alFields :: Lens' AccountsList' (Maybe Text)
alFields = lens _alFields (\ s a -> s{_alFields = a})

instance GoogleAuth AccountsList' where
        authKey = alKey . _Just
        authToken = alOAuthToken . _Just

instance GoogleRequest AccountsList' where
        type Rs AccountsList' = AccountsListResponse
        request = requestWithRoute defReq dFAReportingURL
        requestWithRoute r u AccountsList'{..}
          = go _alProfileId _alSearchString
              (_alIds ^. _Default)
              _alSortOrder
              _alActive
              _alPageToken
              _alSortField
              _alMaxResults
              _alQuotaUser
              (Just _alPrettyPrint)
              _alUserIP
              _alFields
              _alKey
              _alOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy AccountsListResource)
                      r
                      u
