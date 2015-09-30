{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

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
module Directory.Tokens.List
    (
    -- * REST Resource
      TokensListAPI

    -- * Creating a Request
    , tokensList
    , TokensList

    -- * Request Lenses
    , tlQuotaUser
    , tlPrettyPrint
    , tlUserIp
    , tlKey
    , tlOauthToken
    , tlUserKey
    , tlFields
    , tlAlt
    ) where

import           Network.Google.AdminDirectory.Types
import           Network.Google.Prelude

-- | A resource alias for @DirectoryTokensList@ which the
-- 'TokensList' request conforms to.
type TokensListAPI =
     "users" :>
       Capture "userKey" Text :>
         "tokens" :> Get '[JSON] Tokens

-- | Returns the set of tokens specified user has issued to 3rd party
-- applications.
--
-- /See:/ 'tokensList' smart constructor.
data TokensList = TokensList
    { _tlQuotaUser   :: !(Maybe Text)
    , _tlPrettyPrint :: !Bool
    , _tlUserIp      :: !(Maybe Text)
    , _tlKey         :: !(Maybe Text)
    , _tlOauthToken  :: !(Maybe Text)
    , _tlUserKey     :: !Text
    , _tlFields      :: !(Maybe Text)
    , _tlAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'TokensList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tlQuotaUser'
--
-- * 'tlPrettyPrint'
--
-- * 'tlUserIp'
--
-- * 'tlKey'
--
-- * 'tlOauthToken'
--
-- * 'tlUserKey'
--
-- * 'tlFields'
--
-- * 'tlAlt'
tokensList
    :: Text -- ^ 'userKey'
    -> TokensList
tokensList pTlUserKey_ =
    TokensList
    { _tlQuotaUser = Nothing
    , _tlPrettyPrint = True
    , _tlUserIp = Nothing
    , _tlKey = Nothing
    , _tlOauthToken = Nothing
    , _tlUserKey = pTlUserKey_
    , _tlFields = Nothing
    , _tlAlt = "json"
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
tlUserIp :: Lens' TokensList' (Maybe Text)
tlUserIp = lens _tlUserIp (\ s a -> s{_tlUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
tlKey :: Lens' TokensList' (Maybe Text)
tlKey = lens _tlKey (\ s a -> s{_tlKey = a})

-- | OAuth 2.0 token for the current user.
tlOauthToken :: Lens' TokensList' (Maybe Text)
tlOauthToken
  = lens _tlOauthToken (\ s a -> s{_tlOauthToken = a})

-- | Identifies the user in the API request. The value can be the user\'s
-- primary email address, alias email address, or unique user ID.
tlUserKey :: Lens' TokensList' Text
tlUserKey
  = lens _tlUserKey (\ s a -> s{_tlUserKey = a})

-- | Selector specifying which fields to include in a partial response.
tlFields :: Lens' TokensList' (Maybe Text)
tlFields = lens _tlFields (\ s a -> s{_tlFields = a})

-- | Data format for the response.
tlAlt :: Lens' TokensList' Text
tlAlt = lens _tlAlt (\ s a -> s{_tlAlt = a})

instance GoogleRequest TokensList' where
        type Rs TokensList' = Tokens
        request = requestWithRoute defReq adminDirectoryURL
        requestWithRoute r u TokensList{..}
          = go _tlQuotaUser _tlPrettyPrint _tlUserIp _tlKey
              _tlOauthToken
              _tlUserKey
              _tlFields
              _tlAlt
          where go
                  = clientWithRoute (Proxy :: Proxy TokensListAPI) r u
