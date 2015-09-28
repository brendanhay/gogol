{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.IdentityToolkit.Relyingparty.GetPublicKeys
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Get token signing public key.
--
-- /See:/ <https://developers.google.com/identity-toolkit/v3/ Google Identity Toolkit API Reference> for @identitytoolkit.relyingparty.getPublicKeys@.
module Network.Google.API.IdentityToolkit.Relyingparty.GetPublicKeys
    (
    -- * REST Resource
      RelyingpartyGetPublicKeysAPI

    -- * Creating a Request
    , relyingpartyGetPublicKeys'
    , RelyingpartyGetPublicKeys'

    -- * Request Lenses
    , rgpkQuotaUser
    , rgpkPrettyPrint
    , rgpkUserIp
    , rgpkKey
    , rgpkOauthToken
    , rgpkFields
    , rgpkAlt
    ) where

import           Network.Google.IdentityToolkit.Types
import           Network.Google.Prelude

-- | A resource alias for identitytoolkit.relyingparty.getPublicKeys which the
-- 'RelyingpartyGetPublicKeys'' request conforms to.
type RelyingpartyGetPublicKeysAPI =
     "publicKeys" :>
       QueryParam "quotaUser" Text :>
         QueryParam "prettyPrint" Bool :>
           QueryParam "userIp" Text :>
             QueryParam "key" Text :>
               QueryParam "oauth_token" Text :>
                 QueryParam "fields" Text :>
                   QueryParam "alt" Alt :>
                     Get '[JSON]
                       IdentitytoolkitRelyingpartyGetPublicKeysResponse

-- | Get token signing public key.
--
-- /See:/ 'relyingpartyGetPublicKeys'' smart constructor.
data RelyingpartyGetPublicKeys' = RelyingpartyGetPublicKeys'
    { _rgpkQuotaUser   :: !(Maybe Text)
    , _rgpkPrettyPrint :: !Bool
    , _rgpkUserIp      :: !(Maybe Text)
    , _rgpkKey         :: !(Maybe Text)
    , _rgpkOauthToken  :: !(Maybe Text)
    , _rgpkFields      :: !(Maybe Text)
    , _rgpkAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'RelyingpartyGetPublicKeys'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rgpkQuotaUser'
--
-- * 'rgpkPrettyPrint'
--
-- * 'rgpkUserIp'
--
-- * 'rgpkKey'
--
-- * 'rgpkOauthToken'
--
-- * 'rgpkFields'
--
-- * 'rgpkAlt'
relyingpartyGetPublicKeys'
    :: RelyingpartyGetPublicKeys'
relyingpartyGetPublicKeys' =
    RelyingpartyGetPublicKeys'
    { _rgpkQuotaUser = Nothing
    , _rgpkPrettyPrint = True
    , _rgpkUserIp = Nothing
    , _rgpkKey = Nothing
    , _rgpkOauthToken = Nothing
    , _rgpkFields = Nothing
    , _rgpkAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
rgpkQuotaUser :: Lens' RelyingpartyGetPublicKeys' (Maybe Text)
rgpkQuotaUser
  = lens _rgpkQuotaUser
      (\ s a -> s{_rgpkQuotaUser = a})

-- | Returns response with indentations and line breaks.
rgpkPrettyPrint :: Lens' RelyingpartyGetPublicKeys' Bool
rgpkPrettyPrint
  = lens _rgpkPrettyPrint
      (\ s a -> s{_rgpkPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
rgpkUserIp :: Lens' RelyingpartyGetPublicKeys' (Maybe Text)
rgpkUserIp
  = lens _rgpkUserIp (\ s a -> s{_rgpkUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
rgpkKey :: Lens' RelyingpartyGetPublicKeys' (Maybe Text)
rgpkKey = lens _rgpkKey (\ s a -> s{_rgpkKey = a})

-- | OAuth 2.0 token for the current user.
rgpkOauthToken :: Lens' RelyingpartyGetPublicKeys' (Maybe Text)
rgpkOauthToken
  = lens _rgpkOauthToken
      (\ s a -> s{_rgpkOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
rgpkFields :: Lens' RelyingpartyGetPublicKeys' (Maybe Text)
rgpkFields
  = lens _rgpkFields (\ s a -> s{_rgpkFields = a})

-- | Data format for the response.
rgpkAlt :: Lens' RelyingpartyGetPublicKeys' Alt
rgpkAlt = lens _rgpkAlt (\ s a -> s{_rgpkAlt = a})

instance GoogleRequest RelyingpartyGetPublicKeys'
         where
        type Rs RelyingpartyGetPublicKeys' =
             IdentitytoolkitRelyingpartyGetPublicKeysResponse
        request = requestWithRoute defReq identityToolkitURL
        requestWithRoute r u RelyingpartyGetPublicKeys'{..}
          = go _rgpkQuotaUser (Just _rgpkPrettyPrint)
              _rgpkUserIp
              _rgpkKey
              _rgpkOauthToken
              _rgpkFields
              (Just _rgpkAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy RelyingpartyGetPublicKeysAPI)
                      r
                      u
