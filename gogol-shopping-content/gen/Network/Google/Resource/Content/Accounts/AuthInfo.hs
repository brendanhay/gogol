{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE FlexibleInstances  #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-unused-binds      #-}
{-# OPTIONS_GHC -fno-warn-unused-imports    #-}

-- |
-- Module      : Network.Google.Resource.Content.Accounts.AuthInfo
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Returns information about the authenticated user.
--
-- /See:/ <https://developers.google.com/shopping-content Content API for Shopping Reference> for @ContentAccountsAuthInfo@.
module Network.Google.Resource.Content.Accounts.AuthInfo
    (
    -- * REST Resource
      AccountsAuthInfoResource

    -- * Creating a Request
    , accountsAuthInfo'
    , AccountsAuthInfo'

    -- * Request Lenses
    , aaiQuotaUser
    , aaiPrettyPrint
    , aaiUserIP
    , aaiKey
    , aaiOAuthToken
    , aaiFields
    ) where

import           Network.Google.Prelude
import           Network.Google.ShoppingContent.Types

-- | A resource alias for @ContentAccountsAuthInfo@ method which the
-- 'AccountsAuthInfo'' request conforms to.
type AccountsAuthInfoResource =
     "accounts" :>
       "authinfo" :>
         QueryParam "quotaUser" Text :>
           QueryParam "prettyPrint" Bool :>
             QueryParam "userIp" Text :>
               QueryParam "fields" Text :>
                 QueryParam "key" AuthKey :>
                   Header "Authorization" OAuthToken :>
                     QueryParam "alt" AltJSON :>
                       Get '[JSON] AccountsAuthInfoResponse

-- | Returns information about the authenticated user.
--
-- /See:/ 'accountsAuthInfo'' smart constructor.
data AccountsAuthInfo' = AccountsAuthInfo'
    { _aaiQuotaUser   :: !(Maybe Text)
    , _aaiPrettyPrint :: !Bool
    , _aaiUserIP      :: !(Maybe Text)
    , _aaiKey         :: !(Maybe AuthKey)
    , _aaiOAuthToken  :: !(Maybe OAuthToken)
    , _aaiFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountsAuthInfo'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aaiQuotaUser'
--
-- * 'aaiPrettyPrint'
--
-- * 'aaiUserIP'
--
-- * 'aaiKey'
--
-- * 'aaiOAuthToken'
--
-- * 'aaiFields'
accountsAuthInfo'
    :: AccountsAuthInfo'
accountsAuthInfo' =
    AccountsAuthInfo'
    { _aaiQuotaUser = Nothing
    , _aaiPrettyPrint = True
    , _aaiUserIP = Nothing
    , _aaiKey = Nothing
    , _aaiOAuthToken = Nothing
    , _aaiFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
aaiQuotaUser :: Lens' AccountsAuthInfo' (Maybe Text)
aaiQuotaUser
  = lens _aaiQuotaUser (\ s a -> s{_aaiQuotaUser = a})

-- | Returns response with indentations and line breaks.
aaiPrettyPrint :: Lens' AccountsAuthInfo' Bool
aaiPrettyPrint
  = lens _aaiPrettyPrint
      (\ s a -> s{_aaiPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
aaiUserIP :: Lens' AccountsAuthInfo' (Maybe Text)
aaiUserIP
  = lens _aaiUserIP (\ s a -> s{_aaiUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
aaiKey :: Lens' AccountsAuthInfo' (Maybe AuthKey)
aaiKey = lens _aaiKey (\ s a -> s{_aaiKey = a})

-- | OAuth 2.0 token for the current user.
aaiOAuthToken :: Lens' AccountsAuthInfo' (Maybe OAuthToken)
aaiOAuthToken
  = lens _aaiOAuthToken
      (\ s a -> s{_aaiOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
aaiFields :: Lens' AccountsAuthInfo' (Maybe Text)
aaiFields
  = lens _aaiFields (\ s a -> s{_aaiFields = a})

instance GoogleAuth AccountsAuthInfo' where
        _AuthKey = aaiKey . _Just
        _AuthToken = aaiOAuthToken . _Just

instance GoogleRequest AccountsAuthInfo' where
        type Rs AccountsAuthInfo' = AccountsAuthInfoResponse
        request = requestWith shoppingContentRequest
        requestWith rq AccountsAuthInfo'{..}
          = go _aaiQuotaUser (Just _aaiPrettyPrint) _aaiUserIP
              _aaiFields
              _aaiKey
              _aaiOAuthToken
              (Just AltJSON)
          where go
                  = clientBuild
                      (Proxy :: Proxy AccountsAuthInfoResource)
                      rq
