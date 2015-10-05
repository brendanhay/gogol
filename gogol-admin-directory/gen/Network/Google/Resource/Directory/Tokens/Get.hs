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
-- Module      : Network.Google.Resource.Directory.Tokens.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Get information about an access token issued by a user.
--
-- /See:/ <https://developers.google.com/admin-sdk/directory/ Admin Directory API Reference> for @DirectoryTokensGet@.
module Network.Google.Resource.Directory.Tokens.Get
    (
    -- * REST Resource
      TokensGetResource

    -- * Creating a Request
    , tokensGet'
    , TokensGet'

    -- * Request Lenses
    , tgClientId
    , tgQuotaUser
    , tgPrettyPrint
    , tgUserIP
    , tgKey
    , tgOAuthToken
    , tgUserKey
    , tgFields
    ) where

import           Network.Google.Directory.Types
import           Network.Google.Prelude

-- | A resource alias for @DirectoryTokensGet@ which the
-- 'TokensGet'' request conforms to.
type TokensGetResource =
     "users" :>
       Capture "userKey" Text :>
         "tokens" :>
           Capture "clientId" Text :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "key" Key :>
                       QueryParam "oauth_token" OAuthToken :>
                         QueryParam "alt" AltJSON :> Get '[JSON] Token

-- | Get information about an access token issued by a user.
--
-- /See:/ 'tokensGet'' smart constructor.
data TokensGet' = TokensGet'
    { _tgClientId    :: !Text
    , _tgQuotaUser   :: !(Maybe Text)
    , _tgPrettyPrint :: !Bool
    , _tgUserIP      :: !(Maybe Text)
    , _tgKey         :: !(Maybe Key)
    , _tgOAuthToken  :: !(Maybe OAuthToken)
    , _tgUserKey     :: !Text
    , _tgFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'TokensGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tgClientId'
--
-- * 'tgQuotaUser'
--
-- * 'tgPrettyPrint'
--
-- * 'tgUserIP'
--
-- * 'tgKey'
--
-- * 'tgOAuthToken'
--
-- * 'tgUserKey'
--
-- * 'tgFields'
tokensGet'
    :: Text -- ^ 'clientId'
    -> Text -- ^ 'userKey'
    -> TokensGet'
tokensGet' pTgClientId_ pTgUserKey_ =
    TokensGet'
    { _tgClientId = pTgClientId_
    , _tgQuotaUser = Nothing
    , _tgPrettyPrint = True
    , _tgUserIP = Nothing
    , _tgKey = Nothing
    , _tgOAuthToken = Nothing
    , _tgUserKey = pTgUserKey_
    , _tgFields = Nothing
    }

-- | The Client ID of the application the token is issued to.
tgClientId :: Lens' TokensGet' Text
tgClientId
  = lens _tgClientId (\ s a -> s{_tgClientId = a})

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
tgQuotaUser :: Lens' TokensGet' (Maybe Text)
tgQuotaUser
  = lens _tgQuotaUser (\ s a -> s{_tgQuotaUser = a})

-- | Returns response with indentations and line breaks.
tgPrettyPrint :: Lens' TokensGet' Bool
tgPrettyPrint
  = lens _tgPrettyPrint
      (\ s a -> s{_tgPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
tgUserIP :: Lens' TokensGet' (Maybe Text)
tgUserIP = lens _tgUserIP (\ s a -> s{_tgUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
tgKey :: Lens' TokensGet' (Maybe Key)
tgKey = lens _tgKey (\ s a -> s{_tgKey = a})

-- | OAuth 2.0 token for the current user.
tgOAuthToken :: Lens' TokensGet' (Maybe OAuthToken)
tgOAuthToken
  = lens _tgOAuthToken (\ s a -> s{_tgOAuthToken = a})

-- | Identifies the user in the API request. The value can be the user\'s
-- primary email address, alias email address, or unique user ID.
tgUserKey :: Lens' TokensGet' Text
tgUserKey
  = lens _tgUserKey (\ s a -> s{_tgUserKey = a})

-- | Selector specifying which fields to include in a partial response.
tgFields :: Lens' TokensGet' (Maybe Text)
tgFields = lens _tgFields (\ s a -> s{_tgFields = a})

instance GoogleAuth TokensGet' where
        authKey = tgKey . _Just
        authToken = tgOAuthToken . _Just

instance GoogleRequest TokensGet' where
        type Rs TokensGet' = Token
        request = requestWithRoute defReq directoryURL
        requestWithRoute r u TokensGet'{..}
          = go _tgUserKey _tgClientId _tgQuotaUser
              (Just _tgPrettyPrint)
              _tgUserIP
              _tgFields
              _tgKey
              _tgOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute (Proxy :: Proxy TokensGetResource)
                      r
                      u
