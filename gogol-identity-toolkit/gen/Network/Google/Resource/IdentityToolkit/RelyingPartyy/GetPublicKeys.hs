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
-- Module      : Network.Google.Resource.IdentityToolkit.RelyingPartyy.GetPublicKeys
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Get token signing public key.
--
-- /See:/ <https://developers.google.com/identity-toolkit/v3/ Google Identity Toolkit API Reference> for @IdentitytoolkitRelyingPartyyGetPublicKeys@.
module Network.Google.Resource.IdentityToolkit.RelyingPartyy.GetPublicKeys
    (
    -- * REST Resource
      RelyingPartyyGetPublicKeysResource

    -- * Creating a Request
    , relyingPartyyGetPublicKeys'
    , RelyingPartyyGetPublicKeys'

    -- * Request Lenses
    , rpgpkQuotaUser
    , rpgpkPrettyPrint
    , rpgpkUserIP
    , rpgpkKey
    , rpgpkOAuthToken
    , rpgpkFields
    ) where

import           Network.Google.IdentityToolkit.Types
import           Network.Google.Prelude

-- | A resource alias for @IdentitytoolkitRelyingPartyyGetPublicKeys@ which the
-- 'RelyingPartyyGetPublicKeys'' request conforms to.
type RelyingPartyyGetPublicKeysResource =
     "publicKeys" :>
       QueryParam "quotaUser" Text :>
         QueryParam "prettyPrint" Bool :>
           QueryParam "userIp" Text :>
             QueryParam "key" Key :>
               QueryParam "oauth_token" OAuthToken :>
                 QueryParam "fields" Text :>
                   QueryParam "alt" AltJSON :>
                     Get '[JSON]
                       IdentitytoolkitRelyingPartyyGetPublicKeysResponse

-- | Get token signing public key.
--
-- /See:/ 'relyingPartyyGetPublicKeys'' smart constructor.
data RelyingPartyyGetPublicKeys' = RelyingPartyyGetPublicKeys'
    { _rpgpkQuotaUser   :: !(Maybe Text)
    , _rpgpkPrettyPrint :: !Bool
    , _rpgpkUserIP      :: !(Maybe Text)
    , _rpgpkKey         :: !(Maybe Key)
    , _rpgpkOAuthToken  :: !(Maybe OAuthToken)
    , _rpgpkFields      :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'RelyingPartyyGetPublicKeys'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rpgpkQuotaUser'
--
-- * 'rpgpkPrettyPrint'
--
-- * 'rpgpkUserIP'
--
-- * 'rpgpkKey'
--
-- * 'rpgpkOAuthToken'
--
-- * 'rpgpkFields'
relyingPartyyGetPublicKeys'
    :: RelyingPartyyGetPublicKeys'
relyingPartyyGetPublicKeys' =
    RelyingPartyyGetPublicKeys'
    { _rpgpkQuotaUser = Nothing
    , _rpgpkPrettyPrint = True
    , _rpgpkUserIP = Nothing
    , _rpgpkKey = Nothing
    , _rpgpkOAuthToken = Nothing
    , _rpgpkFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
rpgpkQuotaUser :: Lens' RelyingPartyyGetPublicKeys' (Maybe Text)
rpgpkQuotaUser
  = lens _rpgpkQuotaUser
      (\ s a -> s{_rpgpkQuotaUser = a})

-- | Returns response with indentations and line breaks.
rpgpkPrettyPrint :: Lens' RelyingPartyyGetPublicKeys' Bool
rpgpkPrettyPrint
  = lens _rpgpkPrettyPrint
      (\ s a -> s{_rpgpkPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
rpgpkUserIP :: Lens' RelyingPartyyGetPublicKeys' (Maybe Text)
rpgpkUserIP
  = lens _rpgpkUserIP (\ s a -> s{_rpgpkUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
rpgpkKey :: Lens' RelyingPartyyGetPublicKeys' (Maybe Key)
rpgpkKey = lens _rpgpkKey (\ s a -> s{_rpgpkKey = a})

-- | OAuth 2.0 token for the current user.
rpgpkOAuthToken :: Lens' RelyingPartyyGetPublicKeys' (Maybe OAuthToken)
rpgpkOAuthToken
  = lens _rpgpkOAuthToken
      (\ s a -> s{_rpgpkOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
rpgpkFields :: Lens' RelyingPartyyGetPublicKeys' (Maybe Text)
rpgpkFields
  = lens _rpgpkFields (\ s a -> s{_rpgpkFields = a})

instance GoogleAuth RelyingPartyyGetPublicKeys' where
        authKey = rpgpkKey . _Just
        authToken = rpgpkOAuthToken . _Just

instance GoogleRequest RelyingPartyyGetPublicKeys'
         where
        type Rs RelyingPartyyGetPublicKeys' =
             IdentitytoolkitRelyingPartyyGetPublicKeysResponse
        request = requestWithRoute defReq identityToolkitURL
        requestWithRoute r u RelyingPartyyGetPublicKeys'{..}
          = go _rpgpkQuotaUser (Just _rpgpkPrettyPrint)
              _rpgpkUserIP
              _rpgpkKey
              _rpgpkOAuthToken
              _rpgpkFields
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy RelyingPartyyGetPublicKeysResource)
                      r
                      u
