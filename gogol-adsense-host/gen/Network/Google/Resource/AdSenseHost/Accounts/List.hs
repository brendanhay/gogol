{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.AdSenseHost.Accounts.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | List hosted accounts associated with this AdSense account by ad client
-- id.
--
-- /See:/ <https://developers.google.com/adsense/host/ AdSense Host API Reference> for @AdsensehostAccountsList@.
module AdSenseHost.Accounts.List
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
    , allOauthToken
    , allFilterAdClientId
    , allFields
    , allAlt
    ) where

import           Network.Google.AdSenseHost.Types
import           Network.Google.Prelude

-- | A resource alias for @AdsensehostAccountsList@ which the
-- 'AccountsList' request conforms to.
type AccountsListAPI =
     "accounts" :>
       QueryParams "filterAdClientId" Text :>
         Get '[JSON] Accounts

-- | List hosted accounts associated with this AdSense account by ad client
-- id.
--
-- /See:/ 'accountsList' smart constructor.
data AccountsList = AccountsList
    { _allQuotaUser        :: !(Maybe Text)
    , _allPrettyPrint      :: !Bool
    , _allUserIp           :: !(Maybe Text)
    , _allKey              :: !(Maybe Text)
    , _allOauthToken       :: !(Maybe Text)
    , _allFilterAdClientId :: !Text
    , _allFields           :: !(Maybe Text)
    , _allAlt              :: !Text
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
-- * 'allOauthToken'
--
-- * 'allFilterAdClientId'
--
-- * 'allFields'
--
-- * 'allAlt'
accountsList
    :: Text -- ^ 'filterAdClientId'
    -> AccountsList
accountsList pAllFilterAdClientId_ =
    AccountsList
    { _allQuotaUser = Nothing
    , _allPrettyPrint = True
    , _allUserIp = Nothing
    , _allKey = Nothing
    , _allOauthToken = Nothing
    , _allFilterAdClientId = pAllFilterAdClientId_
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

-- | OAuth 2.0 token for the current user.
allOauthToken :: Lens' AccountsList' (Maybe Text)
allOauthToken
  = lens _allOauthToken
      (\ s a -> s{_allOauthToken = a})

-- | Ad clients to list accounts for.
allFilterAdClientId :: Lens' AccountsList' Text
allFilterAdClientId
  = lens _allFilterAdClientId
      (\ s a -> s{_allFilterAdClientId = a})

-- | Selector specifying which fields to include in a partial response.
allFields :: Lens' AccountsList' (Maybe Text)
allFields
  = lens _allFields (\ s a -> s{_allFields = a})

-- | Data format for the response.
allAlt :: Lens' AccountsList' Text
allAlt = lens _allAlt (\ s a -> s{_allAlt = a})

instance GoogleRequest AccountsList' where
        type Rs AccountsList' = Accounts
        request = requestWithRoute defReq adSenseHostURL
        requestWithRoute r u AccountsList{..}
          = go _allQuotaUser _allPrettyPrint _allUserIp _allKey
              _allOauthToken
              (Just _allFilterAdClientId)
              _allFields
              _allAlt
          where go
                  = clientWithRoute (Proxy :: Proxy AccountsListAPI) r
                      u
