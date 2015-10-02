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
-- Module      : Network.Google.Resource.DFAReporting.SubAccounts.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Gets a list of subaccounts, possibly filtered.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @DfareportingSubAccountsList@.
module Network.Google.Resource.DFAReporting.SubAccounts.List
    (
    -- * REST Resource
      SubAccountsListResource

    -- * Creating a Request
    , subAccountsList'
    , SubAccountsList'

    -- * Request Lenses
    , salQuotaUser
    , salPrettyPrint
    , salUserIP
    , salSearchString
    , salIds
    , salProfileId
    , salSortOrder
    , salKey
    , salPageToken
    , salSortField
    , salOAuthToken
    , salMaxResults
    , salFields
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @DfareportingSubAccountsList@ which the
-- 'SubAccountsList'' request conforms to.
type SubAccountsListResource =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "subaccounts" :>
           QueryParams "ids" Int64 :>
             QueryParam "maxResults" Int32 :>
               QueryParam "pageToken" Text :>
                 QueryParam "searchString" Text :>
                   QueryParam "sortField"
                     DfareportingSubAccountsListSortField
                     :>
                     QueryParam "sortOrder"
                       DfareportingSubAccountsListSortOrder
                       :>
                       QueryParam "quotaUser" Text :>
                         QueryParam "prettyPrint" Bool :>
                           QueryParam "userIp" Text :>
                             QueryParam "fields" Text :>
                               QueryParam "key" Key :>
                                 QueryParam "oauth_token" OAuthToken :>
                                   QueryParam "alt" AltJSON :>
                                     Get '[JSON] SubAccountsListResponse

-- | Gets a list of subaccounts, possibly filtered.
--
-- /See:/ 'subAccountsList'' smart constructor.
data SubAccountsList' = SubAccountsList'
    { _salQuotaUser    :: !(Maybe Text)
    , _salPrettyPrint  :: !Bool
    , _salUserIP       :: !(Maybe Text)
    , _salSearchString :: !(Maybe Text)
    , _salIds          :: !(Maybe Int64)
    , _salProfileId    :: !Int64
    , _salSortOrder    :: !(Maybe DfareportingSubAccountsListSortOrder)
    , _salKey          :: !(Maybe Key)
    , _salPageToken    :: !(Maybe Text)
    , _salSortField    :: !(Maybe DfareportingSubAccountsListSortField)
    , _salOAuthToken   :: !(Maybe OAuthToken)
    , _salMaxResults   :: !(Maybe Int32)
    , _salFields       :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'SubAccountsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'salQuotaUser'
--
-- * 'salPrettyPrint'
--
-- * 'salUserIP'
--
-- * 'salSearchString'
--
-- * 'salIds'
--
-- * 'salProfileId'
--
-- * 'salSortOrder'
--
-- * 'salKey'
--
-- * 'salPageToken'
--
-- * 'salSortField'
--
-- * 'salOAuthToken'
--
-- * 'salMaxResults'
--
-- * 'salFields'
subAccountsList'
    :: Int64 -- ^ 'profileId'
    -> SubAccountsList'
subAccountsList' pSalProfileId_ =
    SubAccountsList'
    { _salQuotaUser = Nothing
    , _salPrettyPrint = True
    , _salUserIP = Nothing
    , _salSearchString = Nothing
    , _salIds = Nothing
    , _salProfileId = pSalProfileId_
    , _salSortOrder = Nothing
    , _salKey = Nothing
    , _salPageToken = Nothing
    , _salSortField = Nothing
    , _salOAuthToken = Nothing
    , _salMaxResults = Nothing
    , _salFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
salQuotaUser :: Lens' SubAccountsList' (Maybe Text)
salQuotaUser
  = lens _salQuotaUser (\ s a -> s{_salQuotaUser = a})

-- | Returns response with indentations and line breaks.
salPrettyPrint :: Lens' SubAccountsList' Bool
salPrettyPrint
  = lens _salPrettyPrint
      (\ s a -> s{_salPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
salUserIP :: Lens' SubAccountsList' (Maybe Text)
salUserIP
  = lens _salUserIP (\ s a -> s{_salUserIP = a})

-- | Allows searching for objects by name or ID. Wildcards (*) are allowed.
-- For example, \"subaccount*2015\" will return objects with names like
-- \"subaccount June 2015\", \"subaccount April 2015\", or simply
-- \"subaccount 2015\". Most of the searches also add wildcards implicitly
-- at the start and the end of the search string. For example, a search
-- string of \"subaccount\" will match objects with name \"my subaccount\",
-- \"subaccount 2015\", or simply \"subaccount\".
salSearchString :: Lens' SubAccountsList' (Maybe Text)
salSearchString
  = lens _salSearchString
      (\ s a -> s{_salSearchString = a})

-- | Select only subaccounts with these IDs.
salIds :: Lens' SubAccountsList' (Maybe Int64)
salIds = lens _salIds (\ s a -> s{_salIds = a})

-- | User profile ID associated with this request.
salProfileId :: Lens' SubAccountsList' Int64
salProfileId
  = lens _salProfileId (\ s a -> s{_salProfileId = a})

-- | Order of sorted results, default is ASCENDING.
salSortOrder :: Lens' SubAccountsList' (Maybe DfareportingSubAccountsListSortOrder)
salSortOrder
  = lens _salSortOrder (\ s a -> s{_salSortOrder = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
salKey :: Lens' SubAccountsList' (Maybe Key)
salKey = lens _salKey (\ s a -> s{_salKey = a})

-- | Value of the nextPageToken from the previous result page.
salPageToken :: Lens' SubAccountsList' (Maybe Text)
salPageToken
  = lens _salPageToken (\ s a -> s{_salPageToken = a})

-- | Field by which to sort the list.
salSortField :: Lens' SubAccountsList' (Maybe DfareportingSubAccountsListSortField)
salSortField
  = lens _salSortField (\ s a -> s{_salSortField = a})

-- | OAuth 2.0 token for the current user.
salOAuthToken :: Lens' SubAccountsList' (Maybe OAuthToken)
salOAuthToken
  = lens _salOAuthToken
      (\ s a -> s{_salOAuthToken = a})

-- | Maximum number of results to return.
salMaxResults :: Lens' SubAccountsList' (Maybe Int32)
salMaxResults
  = lens _salMaxResults
      (\ s a -> s{_salMaxResults = a})

-- | Selector specifying which fields to include in a partial response.
salFields :: Lens' SubAccountsList' (Maybe Text)
salFields
  = lens _salFields (\ s a -> s{_salFields = a})

instance GoogleAuth SubAccountsList' where
        authKey = salKey . _Just
        authToken = salOAuthToken . _Just

instance GoogleRequest SubAccountsList' where
        type Rs SubAccountsList' = SubAccountsListResponse
        request = requestWithRoute defReq dFAReportingURL
        requestWithRoute r u SubAccountsList'{..}
          = go _salIds _salMaxResults _salPageToken
              _salSearchString
              _salSortField
              _salSortOrder
              _salProfileId
              _salQuotaUser
              (Just _salPrettyPrint)
              _salUserIP
              _salFields
              _salKey
              _salOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy SubAccountsListResource)
                      r
                      u
