{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

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
module Directory.Tokens.Get
    (
    -- * REST Resource
      TokensGetAPI

    -- * Creating a Request
    , tokensGet
    , TokensGet

    -- * Request Lenses
    , tgClientId
    , tgQuotaUser
    , tgPrettyPrint
    , tgUserIp
    , tgKey
    , tgOauthToken
    , tgUserKey
    , tgFields
    , tgAlt
    ) where

import           Network.Google.AdminDirectory.Types
import           Network.Google.Prelude

-- | A resource alias for @DirectoryTokensGet@ which the
-- 'TokensGet' request conforms to.
type TokensGetAPI =
     "users" :>
       Capture "userKey" Text :>
         "tokens" :>
           Capture "clientId" Text :> Get '[JSON] Token

-- | Get information about an access token issued by a user.
--
-- /See:/ 'tokensGet' smart constructor.
data TokensGet = TokensGet
    { _tgClientId    :: !Text
    , _tgQuotaUser   :: !(Maybe Text)
    , _tgPrettyPrint :: !Bool
    , _tgUserIp      :: !(Maybe Text)
    , _tgKey         :: !(Maybe Text)
    , _tgOauthToken  :: !(Maybe Text)
    , _tgUserKey     :: !Text
    , _tgFields      :: !(Maybe Text)
    , _tgAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

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
-- * 'tgUserIp'
--
-- * 'tgKey'
--
-- * 'tgOauthToken'
--
-- * 'tgUserKey'
--
-- * 'tgFields'
--
-- * 'tgAlt'
tokensGet
    :: Text -- ^ 'clientId'
    -> Text -- ^ 'userKey'
    -> TokensGet
tokensGet pTgClientId_ pTgUserKey_ =
    TokensGet
    { _tgClientId = pTgClientId_
    , _tgQuotaUser = Nothing
    , _tgPrettyPrint = True
    , _tgUserIp = Nothing
    , _tgKey = Nothing
    , _tgOauthToken = Nothing
    , _tgUserKey = pTgUserKey_
    , _tgFields = Nothing
    , _tgAlt = "json"
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
tgUserIp :: Lens' TokensGet' (Maybe Text)
tgUserIp = lens _tgUserIp (\ s a -> s{_tgUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
tgKey :: Lens' TokensGet' (Maybe Text)
tgKey = lens _tgKey (\ s a -> s{_tgKey = a})

-- | OAuth 2.0 token for the current user.
tgOauthToken :: Lens' TokensGet' (Maybe Text)
tgOauthToken
  = lens _tgOauthToken (\ s a -> s{_tgOauthToken = a})

-- | Identifies the user in the API request. The value can be the user\'s
-- primary email address, alias email address, or unique user ID.
tgUserKey :: Lens' TokensGet' Text
tgUserKey
  = lens _tgUserKey (\ s a -> s{_tgUserKey = a})

-- | Selector specifying which fields to include in a partial response.
tgFields :: Lens' TokensGet' (Maybe Text)
tgFields = lens _tgFields (\ s a -> s{_tgFields = a})

-- | Data format for the response.
tgAlt :: Lens' TokensGet' Text
tgAlt = lens _tgAlt (\ s a -> s{_tgAlt = a})

instance GoogleRequest TokensGet' where
        type Rs TokensGet' = Token
        request = requestWithRoute defReq adminDirectoryURL
        requestWithRoute r u TokensGet{..}
          = go _tgClientId _tgQuotaUser _tgPrettyPrint
              _tgUserIp
              _tgKey
              _tgOauthToken
              _tgUserKey
              _tgFields
              _tgAlt
          where go
                  = clientWithRoute (Proxy :: Proxy TokensGetAPI) r u
