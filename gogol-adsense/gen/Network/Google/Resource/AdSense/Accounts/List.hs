{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.AdSense.Accounts.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | List all accounts available to this AdSense account.
--
-- /See:/ <https://developers.google.com/adsense/management/ AdSense Management API Reference> for @AdsenseAccountsList@.
module AdSense.Accounts.List
    (
    -- * REST Resource
      AccountsListAPI

    -- * Creating a Request
    , accountsList
    , AccountsList

    -- * Request Lenses
    , allQuotaUser
    , allPrettyPrint
    , allUserIp
    , allKey
    , allPageToken
    , allOauthToken
    , allMaxResults
    , allFields
    , allAlt
    ) where

import           Network.Google.AdSense.Types
import           Network.Google.Prelude

-- | A resource alias for @AdsenseAccountsList@ which the
-- 'AccountsList' request conforms to.
type AccountsListAPI =
     "accounts" :>
       QueryParam "pageToken" Text :>
         QueryParam "maxResults" Int32 :> Get '[JSON] Accounts

-- | List all accounts available to this AdSense account.
--
-- /See:/ 'accountsList' smart constructor.
data AccountsList = AccountsList
    { _allQuotaUser   :: !(Maybe Text)
    , _allPrettyPrint :: !Bool
    , _allUserIp      :: !(Maybe Text)
    , _allKey         :: !(Maybe Text)
    , _allPageToken   :: !(Maybe Text)
    , _allOauthToken  :: !(Maybe Text)
    , _allMaxResults  :: !(Maybe Int32)
    , _allFields      :: !(Maybe Text)
    , _allAlt         :: !Text
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
-- * 'allKey'
--
-- * 'allPageToken'
--
-- * 'allOauthToken'
--
-- * 'allMaxResults'
--
-- * 'allFields'
--
-- * 'allAlt'
accountsList
    :: AccountsList
accountsList =
    AccountsList
    { _allQuotaUser = Nothing
    , _allPrettyPrint = True
    , _allUserIp = Nothing
    , _allKey = Nothing
    , _allPageToken = Nothing
    , _allOauthToken = Nothing
    , _allMaxResults = Nothing
    , _allFields = Nothing
    , _allAlt = "json"
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

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
allKey :: Lens' AccountsList' (Maybe Text)
allKey = lens _allKey (\ s a -> s{_allKey = a})

-- | A continuation token, used to page through accounts. To retrieve the
-- next page, set this parameter to the value of \"nextPageToken\" from the
-- previous response.
allPageToken :: Lens' AccountsList' (Maybe Text)
allPageToken
  = lens _allPageToken (\ s a -> s{_allPageToken = a})

-- | OAuth 2.0 token for the current user.
allOauthToken :: Lens' AccountsList' (Maybe Text)
allOauthToken
  = lens _allOauthToken
      (\ s a -> s{_allOauthToken = a})

-- | The maximum number of accounts to include in the response, used for
-- paging.
allMaxResults :: Lens' AccountsList' (Maybe Int32)
allMaxResults
  = lens _allMaxResults
      (\ s a -> s{_allMaxResults = a})

-- | Selector specifying which fields to include in a partial response.
allFields :: Lens' AccountsList' (Maybe Text)
allFields
  = lens _allFields (\ s a -> s{_allFields = a})

-- | Data format for the response.
allAlt :: Lens' AccountsList' Text
allAlt = lens _allAlt (\ s a -> s{_allAlt = a})

instance GoogleRequest AccountsList' where
        type Rs AccountsList' = Accounts
        request = requestWithRoute defReq adSenseURL
        requestWithRoute r u AccountsList{..}
          = go _allQuotaUser _allPrettyPrint _allUserIp _allKey
              _allPageToken
              _allOauthToken
              _allMaxResults
              _allFields
              _allAlt
          where go
                  = clientWithRoute (Proxy :: Proxy AccountsListAPI) r
                      u
