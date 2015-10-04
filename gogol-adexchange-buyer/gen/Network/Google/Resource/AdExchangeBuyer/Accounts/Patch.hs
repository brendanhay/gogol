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
    , apUserIP
    , apPayload
    , apKey
    , apId
    , apOAuthToken
    , apFields
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
               QueryParam "fields" Text :>
                 QueryParam "key" Key :>
                   QueryParam "oauth_token" OAuthToken :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[OctetStream] Account :>
                         Patch '[JSON] Account

-- | Updates an existing account. This method supports patch semantics.
--
-- /See:/ 'accountsPatch'' smart constructor.
data AccountsPatch' = AccountsPatch'
    { _apQuotaUser   :: !(Maybe Text)
    , _apPrettyPrint :: !Bool
    , _apUserIP      :: !(Maybe Text)
    , _apPayload     :: !Account
    , _apKey         :: !(Maybe Key)
    , _apId          :: !Int32
    , _apOAuthToken  :: !(Maybe OAuthToken)
    , _apFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountsPatch'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'apQuotaUser'
--
-- * 'apPrettyPrint'
--
-- * 'apUserIP'
--
-- * 'apPayload'
--
-- * 'apKey'
--
-- * 'apId'
--
-- * 'apOAuthToken'
--
-- * 'apFields'
accountsPatch'
    :: Account -- ^ 'payload'
    -> Int32 -- ^ 'id'
    -> AccountsPatch'
accountsPatch' pApPayload_ pApId_ =
    AccountsPatch'
    { _apQuotaUser = Nothing
    , _apPrettyPrint = True
    , _apUserIP = Nothing
    , _apPayload = pApPayload_
    , _apKey = Nothing
    , _apId = pApId_
    , _apOAuthToken = Nothing
    , _apFields = Nothing
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
apUserIP :: Lens' AccountsPatch' (Maybe Text)
apUserIP = lens _apUserIP (\ s a -> s{_apUserIP = a})

-- | Multipart request metadata.
apPayload :: Lens' AccountsPatch' Account
apPayload
  = lens _apPayload (\ s a -> s{_apPayload = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
apKey :: Lens' AccountsPatch' (Maybe Key)
apKey = lens _apKey (\ s a -> s{_apKey = a})

-- | The account id
apId :: Lens' AccountsPatch' Int32
apId = lens _apId (\ s a -> s{_apId = a})

-- | OAuth 2.0 token for the current user.
apOAuthToken :: Lens' AccountsPatch' (Maybe OAuthToken)
apOAuthToken
  = lens _apOAuthToken (\ s a -> s{_apOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
apFields :: Lens' AccountsPatch' (Maybe Text)
apFields = lens _apFields (\ s a -> s{_apFields = a})

instance GoogleAuth AccountsPatch' where
        authKey = apKey . _Just
        authToken = apOAuthToken . _Just

instance GoogleRequest AccountsPatch' where
        type Rs AccountsPatch' = Account
        request = requestWithRoute defReq adExchangeBuyerURL
        requestWithRoute r u AccountsPatch'{..}
          = go _apId _apQuotaUser (Just _apPrettyPrint)
              _apUserIP
              _apFields
              _apKey
              _apOAuthToken
              (Just AltJSON)
              _apPayload
          where go
                  = clientWithRoute
                      (Proxy :: Proxy AccountsPatchResource)
                      r
                      u
