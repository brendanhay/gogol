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
-- Module      : Network.Google.Resource.DFAReporting.AccountUserProFiles.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieves a list of account user profiles, possibly filtered.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @DfareportingAccountUserProFilesList@.
module Network.Google.Resource.DFAReporting.AccountUserProFiles.List
    (
    -- * REST Resource
      AccountUserProFilesListResource

    -- * Creating a Request
    , accountUserProFilesList'
    , AccountUserProFilesList'

    -- * Request Lenses
    , aupflQuotaUser
    , aupflPrettyPrint
    , aupflUserRoleId
    , aupflUserIP
    , aupflSearchString
    , aupflIds
    , aupflProFileId
    , aupflSortOrder
    , aupflActive
    , aupflKey
    , aupflPageToken
    , aupflSortField
    , aupflSubAccountId
    , aupflOAuthToken
    , aupflMaxResults
    , aupflFields
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @DfareportingAccountUserProFilesList@ which the
-- 'AccountUserProFilesList'' request conforms to.
type AccountUserProFilesListResource =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "accountUserProfiles" :>
           QueryParam "userRoleId" Int64 :>
             QueryParam "searchString" Text :>
               QueryParams "ids" Int64 :>
                 QueryParam "sortOrder"
                   AccountUserProFilesListSortOrder
                   :>
                   QueryParam "active" Bool :>
                     QueryParam "pageToken" Text :>
                       QueryParam "sortField"
                         AccountUserProFilesListSortField
                         :>
                         QueryParam "subaccountId" Int64 :>
                           QueryParam "maxResults" Int32 :>
                             QueryParam "quotaUser" Text :>
                               QueryParam "prettyPrint" Bool :>
                                 QueryParam "userIp" Text :>
                                   QueryParam "fields" Text :>
                                     QueryParam "key" Key :>
                                       QueryParam "oauth_token" OAuthToken :>
                                         QueryParam "alt" AltJSON :>
                                           Get '[JSON]
                                             AccountUserProFilesListResponse

-- | Retrieves a list of account user profiles, possibly filtered.
--
-- /See:/ 'accountUserProFilesList'' smart constructor.
data AccountUserProFilesList' = AccountUserProFilesList'
    { _aupflQuotaUser    :: !(Maybe Text)
    , _aupflPrettyPrint  :: !Bool
    , _aupflUserRoleId   :: !(Maybe Int64)
    , _aupflUserIP       :: !(Maybe Text)
    , _aupflSearchString :: !(Maybe Text)
    , _aupflIds          :: !(Maybe [Int64])
    , _aupflProFileId    :: !Int64
    , _aupflSortOrder    :: !(Maybe AccountUserProFilesListSortOrder)
    , _aupflActive       :: !(Maybe Bool)
    , _aupflKey          :: !(Maybe Key)
    , _aupflPageToken    :: !(Maybe Text)
    , _aupflSortField    :: !(Maybe AccountUserProFilesListSortField)
    , _aupflSubAccountId :: !(Maybe Int64)
    , _aupflOAuthToken   :: !(Maybe OAuthToken)
    , _aupflMaxResults   :: !(Maybe Int32)
    , _aupflFields       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountUserProFilesList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aupflQuotaUser'
--
-- * 'aupflPrettyPrint'
--
-- * 'aupflUserRoleId'
--
-- * 'aupflUserIP'
--
-- * 'aupflSearchString'
--
-- * 'aupflIds'
--
-- * 'aupflProFileId'
--
-- * 'aupflSortOrder'
--
-- * 'aupflActive'
--
-- * 'aupflKey'
--
-- * 'aupflPageToken'
--
-- * 'aupflSortField'
--
-- * 'aupflSubAccountId'
--
-- * 'aupflOAuthToken'
--
-- * 'aupflMaxResults'
--
-- * 'aupflFields'
accountUserProFilesList'
    :: Int64 -- ^ 'profileId'
    -> AccountUserProFilesList'
accountUserProFilesList' pAupflProFileId_ =
    AccountUserProFilesList'
    { _aupflQuotaUser = Nothing
    , _aupflPrettyPrint = True
    , _aupflUserRoleId = Nothing
    , _aupflUserIP = Nothing
    , _aupflSearchString = Nothing
    , _aupflIds = Nothing
    , _aupflProFileId = pAupflProFileId_
    , _aupflSortOrder = Nothing
    , _aupflActive = Nothing
    , _aupflKey = Nothing
    , _aupflPageToken = Nothing
    , _aupflSortField = Nothing
    , _aupflSubAccountId = Nothing
    , _aupflOAuthToken = Nothing
    , _aupflMaxResults = Nothing
    , _aupflFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
aupflQuotaUser :: Lens' AccountUserProFilesList' (Maybe Text)
aupflQuotaUser
  = lens _aupflQuotaUser
      (\ s a -> s{_aupflQuotaUser = a})

-- | Returns response with indentations and line breaks.
aupflPrettyPrint :: Lens' AccountUserProFilesList' Bool
aupflPrettyPrint
  = lens _aupflPrettyPrint
      (\ s a -> s{_aupflPrettyPrint = a})

-- | Select only user profiles with the specified user role ID.
aupflUserRoleId :: Lens' AccountUserProFilesList' (Maybe Int64)
aupflUserRoleId
  = lens _aupflUserRoleId
      (\ s a -> s{_aupflUserRoleId = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
aupflUserIP :: Lens' AccountUserProFilesList' (Maybe Text)
aupflUserIP
  = lens _aupflUserIP (\ s a -> s{_aupflUserIP = a})

-- | Allows searching for objects by name, ID or email. Wildcards (*) are
-- allowed. For example, \"user profile*2015\" will return objects with
-- names like \"user profile June 2015\", \"user profile April 2015\", or
-- simply \"user profile 2015\". Most of the searches also add wildcards
-- implicitly at the start and the end of the search string. For example, a
-- search string of \"user profile\" will match objects with name \"my user
-- profile\", \"user profile 2015\", or simply \"user profile\".
aupflSearchString :: Lens' AccountUserProFilesList' (Maybe Text)
aupflSearchString
  = lens _aupflSearchString
      (\ s a -> s{_aupflSearchString = a})

-- | Select only user profiles with these IDs.
aupflIds :: Lens' AccountUserProFilesList' [Int64]
aupflIds
  = lens _aupflIds (\ s a -> s{_aupflIds = a}) .
      _Default
      . _Coerce

-- | User profile ID associated with this request.
aupflProFileId :: Lens' AccountUserProFilesList' Int64
aupflProFileId
  = lens _aupflProFileId
      (\ s a -> s{_aupflProFileId = a})

-- | Order of sorted results, default is ASCENDING.
aupflSortOrder :: Lens' AccountUserProFilesList' (Maybe AccountUserProFilesListSortOrder)
aupflSortOrder
  = lens _aupflSortOrder
      (\ s a -> s{_aupflSortOrder = a})

-- | Select only active user profiles.
aupflActive :: Lens' AccountUserProFilesList' (Maybe Bool)
aupflActive
  = lens _aupflActive (\ s a -> s{_aupflActive = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
aupflKey :: Lens' AccountUserProFilesList' (Maybe Key)
aupflKey = lens _aupflKey (\ s a -> s{_aupflKey = a})

-- | Value of the nextPageToken from the previous result page.
aupflPageToken :: Lens' AccountUserProFilesList' (Maybe Text)
aupflPageToken
  = lens _aupflPageToken
      (\ s a -> s{_aupflPageToken = a})

-- | Field by which to sort the list.
aupflSortField :: Lens' AccountUserProFilesList' (Maybe AccountUserProFilesListSortField)
aupflSortField
  = lens _aupflSortField
      (\ s a -> s{_aupflSortField = a})

-- | Select only user profiles with the specified subaccount ID.
aupflSubAccountId :: Lens' AccountUserProFilesList' (Maybe Int64)
aupflSubAccountId
  = lens _aupflSubAccountId
      (\ s a -> s{_aupflSubAccountId = a})

-- | OAuth 2.0 token for the current user.
aupflOAuthToken :: Lens' AccountUserProFilesList' (Maybe OAuthToken)
aupflOAuthToken
  = lens _aupflOAuthToken
      (\ s a -> s{_aupflOAuthToken = a})

-- | Maximum number of results to return.
aupflMaxResults :: Lens' AccountUserProFilesList' (Maybe Int32)
aupflMaxResults
  = lens _aupflMaxResults
      (\ s a -> s{_aupflMaxResults = a})

-- | Selector specifying which fields to include in a partial response.
aupflFields :: Lens' AccountUserProFilesList' (Maybe Text)
aupflFields
  = lens _aupflFields (\ s a -> s{_aupflFields = a})

instance GoogleAuth AccountUserProFilesList' where
        authKey = aupflKey . _Just
        authToken = aupflOAuthToken . _Just

instance GoogleRequest AccountUserProFilesList' where
        type Rs AccountUserProFilesList' =
             AccountUserProFilesListResponse
        request = requestWithRoute defReq dFAReportingURL
        requestWithRoute r u AccountUserProFilesList'{..}
          = go _aupflProFileId _aupflUserRoleId
              _aupflSearchString
              (_aupflIds ^. _Default)
              _aupflSortOrder
              _aupflActive
              _aupflPageToken
              _aupflSortField
              _aupflSubAccountId
              _aupflMaxResults
              _aupflQuotaUser
              (Just _aupflPrettyPrint)
              _aupflUserIP
              _aupflFields
              _aupflKey
              _aupflOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy AccountUserProFilesListResource)
                      r
                      u
