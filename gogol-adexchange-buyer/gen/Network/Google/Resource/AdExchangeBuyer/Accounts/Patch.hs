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
-- Module      : Network.Google.Resource.AdExchangeBuyer.Accounts.Patch
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Updates an existing account. This method supports patch semantics.
--
-- /See:/ <https://developers.google.com/ad-exchange/buyer-rest Ad Exchange Buyer API Reference> for @AdexchangebuyerAccountsPatch@.
module Network.Google.Resource.AdExchangeBuyer.Accounts.Patch
    (
    -- * REST Resource
      AccountsPatchResource

    -- * Creating a Request
    , accountsPatch'
    , AccountsPatch'

    -- * Request Lenses
    , apQuotaUser
    , apPrettyPrint
    , apUserIp
    , apKey
    , apId
    , apOauthToken
    , apFields
    , apAlt
    ) where

import           Network.Google.AdExchangeBuyer.Types
import           Network.Google.Prelude

-- | A resource alias for @AdexchangebuyerAccountsPatch@ which the
-- 'AccountsPatch'' request conforms to.
type AccountsPatchResource =
     "accounts" :>
       Capture "id" Int32 :>
         QueryParam "quotaUser" Text :>
           QueryParam "prettyPrint" Bool :>
             QueryParam "userIp" Text :>
               QueryParam "key" Text :>
                 QueryParam "oauth_token" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "alt" Alt :> Patch '[JSON] Account

-- | Updates an existing account. This method supports patch semantics.
--
-- /See:/ 'accountsPatch'' smart constructor.
data AccountsPatch' = AccountsPatch'
    { _apQuotaUser   :: !(Maybe Text)
    , _apPrettyPrint :: !Bool
    , _apUserIp      :: !(Maybe Text)
    , _apKey         :: !(Maybe Text)
    , _apId          :: !Int32
    , _apOauthToken  :: !(Maybe Text)
    , _apFields      :: !(Maybe Text)
    , _apAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountsPatch'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'apQuotaUser'
--
-- * 'apPrettyPrint'
--
-- * 'apUserIp'
--
-- * 'apKey'
--
-- * 'apId'
--
-- * 'apOauthToken'
--
-- * 'apFields'
--
-- * 'apAlt'
accountsPatch'
    :: Int32 -- ^ 'id'
    -> AccountsPatch'
accountsPatch' pApId_ =
    AccountsPatch'
    { _apQuotaUser = Nothing
    , _apPrettyPrint = True
    , _apUserIp = Nothing
    , _apKey = Nothing
    , _apId = pApId_
    , _apOauthToken = Nothing
    , _apFields = Nothing
    , _apAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
apQuotaUser :: Lens' AccountsPatch' (Maybe Text)
apQuotaUser
  = lens _apQuotaUser (\ s a -> s{_apQuotaUser = a})

-- | Returns response with indentations and line breaks.
apPrettyPrint :: Lens' AccountsPatch' Bool
apPrettyPrint
  = lens _apPrettyPrint
      (\ s a -> s{_apPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
apUserIp :: Lens' AccountsPatch' (Maybe Text)
apUserIp = lens _apUserIp (\ s a -> s{_apUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
apKey :: Lens' AccountsPatch' (Maybe Text)
apKey = lens _apKey (\ s a -> s{_apKey = a})

-- | The account id
apId :: Lens' AccountsPatch' Int32
apId = lens _apId (\ s a -> s{_apId = a})

-- | OAuth 2.0 token for the current user.
apOauthToken :: Lens' AccountsPatch' (Maybe Text)
apOauthToken
  = lens _apOauthToken (\ s a -> s{_apOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
apFields :: Lens' AccountsPatch' (Maybe Text)
apFields = lens _apFields (\ s a -> s{_apFields = a})

-- | Data format for the response.
apAlt :: Lens' AccountsPatch' Alt
apAlt = lens _apAlt (\ s a -> s{_apAlt = a})

instance GoogleRequest AccountsPatch' where
        type Rs AccountsPatch' = Account
        request = requestWithRoute defReq adExchangeBuyerURL
        requestWithRoute r u AccountsPatch'{..}
          = go _apQuotaUser (Just _apPrettyPrint) _apUserIp
              _apKey
              _apId
              _apOauthToken
              _apFields
              (Just _apAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy AccountsPatchResource)
                      r
                      u
