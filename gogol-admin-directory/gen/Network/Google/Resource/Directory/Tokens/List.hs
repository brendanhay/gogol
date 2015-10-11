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
-- Module      : Network.Google.Resource.Directory.Tokens.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Returns the set of tokens specified user has issued to 3rd party
-- applications.
--
-- /See:/ <https://developers.google.com/admin-sdk/directory/ Admin Directory API Reference> for @DirectoryTokensList@.
module Network.Google.Resource.Directory.Tokens.List
    (
    -- * REST Resource
      TokensListResource

    -- * Creating a Request
    , tokensList'
    , TokensList'

    -- * Request Lenses
    , tlQuotaUser
    , tlPrettyPrint
    , tlUserIP
    , tlKey
    , tlOAuthToken
    , tlUserKey
    , tlFields
    ) where

import           Network.Google.Directory.Types
import           Network.Google.Prelude

-- | A resource alias for @DirectoryTokensList@ method which the
-- 'TokensList'' request conforms to.
type TokensListResource =
     "users" :>
       Capture "userKey" Text :>
         "tokens" :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "fields" Text :>
                   QueryParam "key" AuthKey :>
                     Header "Authorization" OAuthToken :>
                       QueryParam "alt" AltJSON :> Get '[JSON] Tokens

-- | Returns the set of tokens specified user has issued to 3rd party
-- applications.
--
-- /See:/ 'tokensList'' smart constructor.
data TokensList' = TokensList'
    { _tlQuotaUser   :: !(Maybe Text)
    , _tlPrettyPrint :: !Bool
    , _tlUserIP      :: !(Maybe Text)
    , _tlKey         :: !(Maybe AuthKey)
    , _tlOAuthToken  :: !(Maybe OAuthToken)
    , _tlUserKey     :: !Text
    , _tlFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'TokensList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tlQuotaUser'
--
-- * 'tlPrettyPrint'
--
-- * 'tlUserIP'
--
-- * 'tlKey'
--
-- * 'tlOAuthToken'
--
-- * 'tlUserKey'
--
-- * 'tlFields'
tokensList'
    :: Text -- ^ 'userKey'
    -> TokensList'
tokensList' pTlUserKey_ =
    TokensList'
    { _tlQuotaUser = Nothing
    , _tlPrettyPrint = True
    , _tlUserIP = Nothing
    , _tlKey = Nothing
    , _tlOAuthToken = Nothing
    , _tlUserKey = pTlUserKey_
    , _tlFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
tlQuotaUser :: Lens' TokensList' (Maybe Text)
tlQuotaUser
  = lens _tlQuotaUser (\ s a -> s{_tlQuotaUser = a})

-- | Returns response with indentations and line breaks.
tlPrettyPrint :: Lens' TokensList' Bool
tlPrettyPrint
  = lens _tlPrettyPrint
      (\ s a -> s{_tlPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
tlUserIP :: Lens' TokensList' (Maybe Text)
tlUserIP = lens _tlUserIP (\ s a -> s{_tlUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
tlKey :: Lens' TokensList' (Maybe AuthKey)
tlKey = lens _tlKey (\ s a -> s{_tlKey = a})

-- | OAuth 2.0 token for the current user.
tlOAuthToken :: Lens' TokensList' (Maybe OAuthToken)
tlOAuthToken
  = lens _tlOAuthToken (\ s a -> s{_tlOAuthToken = a})

-- | Identifies the user in the API request. The value can be the user\'s
-- primary email address, alias email address, or unique user ID.
tlUserKey :: Lens' TokensList' Text
tlUserKey
  = lens _tlUserKey (\ s a -> s{_tlUserKey = a})

-- | Selector specifying which fields to include in a partial response.
tlFields :: Lens' TokensList' (Maybe Text)
tlFields = lens _tlFields (\ s a -> s{_tlFields = a})

instance GoogleAuth TokensList' where
        _AuthKey = tlKey . _Just
        _AuthToken = tlOAuthToken . _Just

instance GoogleRequest TokensList' where
        type Rs TokensList' = Tokens
        request = requestWith directoryRequest
        requestWith rq TokensList'{..}
          = go _tlUserKey _tlQuotaUser (Just _tlPrettyPrint)
              _tlUserIP
              _tlFields
              _tlKey
              _tlOAuthToken
              (Just AltJSON)
          where go
                  = clientBuild (Proxy :: Proxy TokensListResource) rq
