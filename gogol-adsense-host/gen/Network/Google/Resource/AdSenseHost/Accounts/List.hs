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
module Network.Google.Resource.AdSenseHost.Accounts.List
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
    , alKey
    , alOAuthToken
    , alFilterAdClientId
    , alFields
    ) where

import           Network.Google.AdSenseHost.Types
import           Network.Google.Prelude

-- | A resource alias for @AdsensehostAccountsList@ which the
-- 'AccountsList'' request conforms to.
type AccountsListResource =
     "accounts" :>
       QueryParams "filterAdClientId" Text :>
         QueryParam "quotaUser" Text :>
           QueryParam "prettyPrint" Bool :>
             QueryParam "userIp" Text :>
               QueryParam "fields" Text :>
                 QueryParam "key" Key :>
                   QueryParam "oauth_token" OAuthToken :>
                     QueryParam "alt" AltJSON :> Get '[JSON] Accounts

-- | List hosted accounts associated with this AdSense account by ad client
-- id.
--
-- /See:/ 'accountsList'' smart constructor.
data AccountsList' = AccountsList'
    { _alQuotaUser        :: !(Maybe Text)
    , _alPrettyPrint      :: !Bool
    , _alUserIP           :: !(Maybe Text)
    , _alKey              :: !(Maybe Key)
    , _alOAuthToken       :: !(Maybe OAuthToken)
    , _alFilterAdClientId :: ![Text]
    , _alFields           :: !(Maybe Text)
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
-- * 'alKey'
--
-- * 'alOAuthToken'
--
-- * 'alFilterAdClientId'
--
-- * 'alFields'
accountsList'
    :: [Text] -- ^ 'filterAdClientId'
    -> AccountsList'
accountsList' pAlFilterAdClientId_ =
    AccountsList'
    { _alQuotaUser = Nothing
    , _alPrettyPrint = True
    , _alUserIP = Nothing
    , _alKey = Nothing
    , _alOAuthToken = Nothing
    , _alFilterAdClientId = pAlFilterAdClientId_
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

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
alKey :: Lens' AccountsList' (Maybe Key)
alKey = lens _alKey (\ s a -> s{_alKey = a})

-- | OAuth 2.0 token for the current user.
alOAuthToken :: Lens' AccountsList' (Maybe OAuthToken)
alOAuthToken
  = lens _alOAuthToken (\ s a -> s{_alOAuthToken = a})

-- | Ad clients to list accounts for.
alFilterAdClientId :: Lens' AccountsList' [Text]
alFilterAdClientId
  = lens _alFilterAdClientId
      (\ s a -> s{_alFilterAdClientId = a})
      . _Coerce

-- | Selector specifying which fields to include in a partial response.
alFields :: Lens' AccountsList' (Maybe Text)
alFields = lens _alFields (\ s a -> s{_alFields = a})

instance GoogleAuth AccountsList' where
        authKey = alKey . _Just
        authToken = alOAuthToken . _Just

instance GoogleRequest AccountsList' where
        type Rs AccountsList' = Accounts
        request = requestWithRoute defReq adSenseHostURL
        requestWithRoute r u AccountsList'{..}
          = go _alFilterAdClientId _alQuotaUser
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
