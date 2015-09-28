{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.Directory.Tokens.Delete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Delete all access tokens issued by a user for an application.
--
-- /See:/ <https://developers.google.com/admin-sdk/directory/ Admin Directory API Reference> for @directory.tokens.delete@.
module Network.Google.API.Directory.Tokens.Delete
    (
    -- * REST Resource
      TokensDeleteAPI

    -- * Creating a Request
    , tokensDelete'
    , TokensDelete'

    -- * Request Lenses
    , tdClientId
    , tdQuotaUser
    , tdPrettyPrint
    , tdUserIp
    , tdKey
    , tdOauthToken
    , tdUserKey
    , tdFields
    , tdAlt
    ) where

import           Network.Google.Admin.Directory.Types
import           Network.Google.Prelude

-- | A resource alias for directory.tokens.delete which the
-- 'TokensDelete'' request conforms to.
type TokensDeleteAPI =
     "users" :>
       Capture "userKey" Text :>
         "tokens" :>
           Capture "clientId" Text :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "key" Text :>
                     QueryParam "oauth_token" Text :>
                       QueryParam "fields" Text :>
                         QueryParam "alt" Alt :> Delete '[JSON] ()

-- | Delete all access tokens issued by a user for an application.
--
-- /See:/ 'tokensDelete'' smart constructor.
data TokensDelete' = TokensDelete'
    { _tdClientId    :: !Text
    , _tdQuotaUser   :: !(Maybe Text)
    , _tdPrettyPrint :: !Bool
    , _tdUserIp      :: !(Maybe Text)
    , _tdKey         :: !(Maybe Text)
    , _tdOauthToken  :: !(Maybe Text)
    , _tdUserKey     :: !Text
    , _tdFields      :: !(Maybe Text)
    , _tdAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'TokensDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tdClientId'
--
-- * 'tdQuotaUser'
--
-- * 'tdPrettyPrint'
--
-- * 'tdUserIp'
--
-- * 'tdKey'
--
-- * 'tdOauthToken'
--
-- * 'tdUserKey'
--
-- * 'tdFields'
--
-- * 'tdAlt'
tokensDelete'
    :: Text -- ^ 'clientId'
    -> Text -- ^ 'userKey'
    -> TokensDelete'
tokensDelete' pTdClientId_ pTdUserKey_ =
    TokensDelete'
    { _tdClientId = pTdClientId_
    , _tdQuotaUser = Nothing
    , _tdPrettyPrint = True
    , _tdUserIp = Nothing
    , _tdKey = Nothing
    , _tdOauthToken = Nothing
    , _tdUserKey = pTdUserKey_
    , _tdFields = Nothing
    , _tdAlt = JSON
    }

-- | The Client ID of the application the token is issued to.
tdClientId :: Lens' TokensDelete' Text
tdClientId
  = lens _tdClientId (\ s a -> s{_tdClientId = a})

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
tdQuotaUser :: Lens' TokensDelete' (Maybe Text)
tdQuotaUser
  = lens _tdQuotaUser (\ s a -> s{_tdQuotaUser = a})

-- | Returns response with indentations and line breaks.
tdPrettyPrint :: Lens' TokensDelete' Bool
tdPrettyPrint
  = lens _tdPrettyPrint
      (\ s a -> s{_tdPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
tdUserIp :: Lens' TokensDelete' (Maybe Text)
tdUserIp = lens _tdUserIp (\ s a -> s{_tdUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
tdKey :: Lens' TokensDelete' (Maybe Text)
tdKey = lens _tdKey (\ s a -> s{_tdKey = a})

-- | OAuth 2.0 token for the current user.
tdOauthToken :: Lens' TokensDelete' (Maybe Text)
tdOauthToken
  = lens _tdOauthToken (\ s a -> s{_tdOauthToken = a})

-- | Identifies the user in the API request. The value can be the user\'s
-- primary email address, alias email address, or unique user ID.
tdUserKey :: Lens' TokensDelete' Text
tdUserKey
  = lens _tdUserKey (\ s a -> s{_tdUserKey = a})

-- | Selector specifying which fields to include in a partial response.
tdFields :: Lens' TokensDelete' (Maybe Text)
tdFields = lens _tdFields (\ s a -> s{_tdFields = a})

-- | Data format for the response.
tdAlt :: Lens' TokensDelete' Alt
tdAlt = lens _tdAlt (\ s a -> s{_tdAlt = a})

instance GoogleRequest TokensDelete' where
        type Rs TokensDelete' = ()
        request = requestWithRoute defReq adminDirectoryURL
        requestWithRoute r u TokensDelete'{..}
          = go _tdClientId _tdQuotaUser (Just _tdPrettyPrint)
              _tdUserIp
              _tdKey
              _tdOauthToken
              _tdUserKey
              _tdFields
              (Just _tdAlt)
          where go
                  = clientWithRoute (Proxy :: Proxy TokensDeleteAPI) r
                      u
