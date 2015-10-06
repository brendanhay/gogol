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
-- Module      : Network.Google.Resource.Directory.Tokens.Delete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Delete all access tokens issued by a user for an application.
--
-- /See:/ <https://developers.google.com/admin-sdk/directory/ Admin Directory API Reference> for @DirectoryTokensDelete@.
module Network.Google.Resource.Directory.Tokens.Delete
    (
    -- * REST Resource
      TokensDeleteResource

    -- * Creating a Request
    , tokensDelete'
    , TokensDelete'

    -- * Request Lenses
    , tdClientId
    , tdQuotaUser
    , tdPrettyPrint
    , tdUserIP
    , tdKey
    , tdOAuthToken
    , tdUserKey
    , tdFields
    ) where

import           Network.Google.Directory.Types
import           Network.Google.Prelude

-- | A resource alias for @DirectoryTokensDelete@ which the
-- 'TokensDelete'' request conforms to.
type TokensDeleteResource =
     "users" :>
       Capture "userKey" Text :>
         "tokens" :>
           Capture "clientId" Text :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "key" AuthKey :>
                       QueryParam "oauth_token" OAuthToken :>
                         QueryParam "alt" AltJSON :> Delete '[JSON] ()

-- | Delete all access tokens issued by a user for an application.
--
-- /See:/ 'tokensDelete'' smart constructor.
data TokensDelete' = TokensDelete'
    { _tdClientId    :: !Text
    , _tdQuotaUser   :: !(Maybe Text)
    , _tdPrettyPrint :: !Bool
    , _tdUserIP      :: !(Maybe Text)
    , _tdKey         :: !(Maybe AuthKey)
    , _tdOAuthToken  :: !(Maybe OAuthToken)
    , _tdUserKey     :: !Text
    , _tdFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
-- * 'tdUserIP'
--
-- * 'tdKey'
--
-- * 'tdOAuthToken'
--
-- * 'tdUserKey'
--
-- * 'tdFields'
tokensDelete'
    :: Text -- ^ 'clientId'
    -> Text -- ^ 'userKey'
    -> TokensDelete'
tokensDelete' pTdClientId_ pTdUserKey_ =
    TokensDelete'
    { _tdClientId = pTdClientId_
    , _tdQuotaUser = Nothing
    , _tdPrettyPrint = True
    , _tdUserIP = Nothing
    , _tdKey = Nothing
    , _tdOAuthToken = Nothing
    , _tdUserKey = pTdUserKey_
    , _tdFields = Nothing
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
tdUserIP :: Lens' TokensDelete' (Maybe Text)
tdUserIP = lens _tdUserIP (\ s a -> s{_tdUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
tdKey :: Lens' TokensDelete' (Maybe AuthKey)
tdKey = lens _tdKey (\ s a -> s{_tdKey = a})

-- | OAuth 2.0 token for the current user.
tdOAuthToken :: Lens' TokensDelete' (Maybe OAuthToken)
tdOAuthToken
  = lens _tdOAuthToken (\ s a -> s{_tdOAuthToken = a})

-- | Identifies the user in the API request. The value can be the user\'s
-- primary email address, alias email address, or unique user ID.
tdUserKey :: Lens' TokensDelete' Text
tdUserKey
  = lens _tdUserKey (\ s a -> s{_tdUserKey = a})

-- | Selector specifying which fields to include in a partial response.
tdFields :: Lens' TokensDelete' (Maybe Text)
tdFields = lens _tdFields (\ s a -> s{_tdFields = a})

instance GoogleAuth TokensDelete' where
        authKey = tdKey . _Just
        authToken = tdOAuthToken . _Just

instance GoogleRequest TokensDelete' where
        type Rs TokensDelete' = ()
        request = requestWith directoryRequest
        requestWith rq TokensDelete'{..}
          = go _tdUserKey _tdClientId _tdQuotaUser
              (Just _tdPrettyPrint)
              _tdUserIP
              _tdFields
              _tdKey
              _tdOAuthToken
              (Just AltJSON)
          where go
                  = clientBuild (Proxy :: Proxy TokensDeleteResource)
                      rq
