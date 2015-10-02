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
-- Module      : Network.Google.Resource.IdentityToolkit.RelyingPartyy.VerifyPassword
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Verifies the user entered password.
--
-- /See:/ <https://developers.google.com/identity-toolkit/v3/ Google Identity Toolkit API Reference> for @IdentitytoolkitRelyingPartyyVerifyPassword@.
module Network.Google.Resource.IdentityToolkit.RelyingPartyy.VerifyPassword
    (
    -- * REST Resource
      RelyingPartyyVerifyPasswordResource

    -- * Creating a Request
    , relyingPartyyVerifyPassword'
    , RelyingPartyyVerifyPassword'

    -- * Request Lenses
    , rpvpIdentitytoolkitRelyingPartyyVerifyPasswordRequest
    , rpvpQuotaUser
    , rpvpPrettyPrint
    , rpvpUserIP
    , rpvpKey
    , rpvpOAuthToken
    , rpvpFields
    ) where

import           Network.Google.IdentityToolkit.Types
import           Network.Google.Prelude

-- | A resource alias for @IdentitytoolkitRelyingPartyyVerifyPassword@ which the
-- 'RelyingPartyyVerifyPassword'' request conforms to.
type RelyingPartyyVerifyPasswordResource =
     "verifyPassword" :>
       QueryParam "quotaUser" Text :>
         QueryParam "prettyPrint" Bool :>
           QueryParam "userIp" Text :>
             QueryParam "key" Key :>
               QueryParam "oauth_token" OAuthToken :>
                 QueryParam "fields" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON]
                       IdentitytoolkitRelyingPartyyVerifyPasswordRequest
                       :> Post '[JSON] VerifyPasswordResponse

-- | Verifies the user entered password.
--
-- /See:/ 'relyingPartyyVerifyPassword'' smart constructor.
data RelyingPartyyVerifyPassword' = RelyingPartyyVerifyPassword'
    { _rpvpIdentitytoolkitRelyingPartyyVerifyPasswordRequest :: !IdentitytoolkitRelyingPartyyVerifyPasswordRequest
    , _rpvpQuotaUser                                         :: !(Maybe Text)
    , _rpvpPrettyPrint                                       :: !Bool
    , _rpvpUserIP                                            :: !(Maybe Text)
    , _rpvpKey                                               :: !(Maybe Key)
    , _rpvpOAuthToken                                        :: !(Maybe OAuthToken)
    , _rpvpFields                                            :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'RelyingPartyyVerifyPassword'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rpvpIdentitytoolkitRelyingPartyyVerifyPasswordRequest'
--
-- * 'rpvpQuotaUser'
--
-- * 'rpvpPrettyPrint'
--
-- * 'rpvpUserIP'
--
-- * 'rpvpKey'
--
-- * 'rpvpOAuthToken'
--
-- * 'rpvpFields'
relyingPartyyVerifyPassword'
    :: IdentitytoolkitRelyingPartyyVerifyPasswordRequest -- ^ 'IdentitytoolkitRelyingPartyyVerifyPasswordRequest'
    -> RelyingPartyyVerifyPassword'
relyingPartyyVerifyPassword' pRpvpIdentitytoolkitRelyingPartyyVerifyPasswordRequest_ =
    RelyingPartyyVerifyPassword'
    { _rpvpIdentitytoolkitRelyingPartyyVerifyPasswordRequest = pRpvpIdentitytoolkitRelyingPartyyVerifyPasswordRequest_
    , _rpvpQuotaUser = Nothing
    , _rpvpPrettyPrint = True
    , _rpvpUserIP = Nothing
    , _rpvpKey = Nothing
    , _rpvpOAuthToken = Nothing
    , _rpvpFields = Nothing
    }

-- | Multipart request metadata.
rpvpIdentitytoolkitRelyingPartyyVerifyPasswordRequest :: Lens' RelyingPartyyVerifyPassword' IdentitytoolkitRelyingPartyyVerifyPasswordRequest
rpvpIdentitytoolkitRelyingPartyyVerifyPasswordRequest
  = lens
      _rpvpIdentitytoolkitRelyingPartyyVerifyPasswordRequest
      (\ s a ->
         s{_rpvpIdentitytoolkitRelyingPartyyVerifyPasswordRequest
             = a})

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
rpvpQuotaUser :: Lens' RelyingPartyyVerifyPassword' (Maybe Text)
rpvpQuotaUser
  = lens _rpvpQuotaUser
      (\ s a -> s{_rpvpQuotaUser = a})

-- | Returns response with indentations and line breaks.
rpvpPrettyPrint :: Lens' RelyingPartyyVerifyPassword' Bool
rpvpPrettyPrint
  = lens _rpvpPrettyPrint
      (\ s a -> s{_rpvpPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
rpvpUserIP :: Lens' RelyingPartyyVerifyPassword' (Maybe Text)
rpvpUserIP
  = lens _rpvpUserIP (\ s a -> s{_rpvpUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
rpvpKey :: Lens' RelyingPartyyVerifyPassword' (Maybe Key)
rpvpKey = lens _rpvpKey (\ s a -> s{_rpvpKey = a})

-- | OAuth 2.0 token for the current user.
rpvpOAuthToken :: Lens' RelyingPartyyVerifyPassword' (Maybe OAuthToken)
rpvpOAuthToken
  = lens _rpvpOAuthToken
      (\ s a -> s{_rpvpOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
rpvpFields :: Lens' RelyingPartyyVerifyPassword' (Maybe Text)
rpvpFields
  = lens _rpvpFields (\ s a -> s{_rpvpFields = a})

instance GoogleAuth RelyingPartyyVerifyPassword'
         where
        authKey = rpvpKey . _Just
        authToken = rpvpOAuthToken . _Just

instance GoogleRequest RelyingPartyyVerifyPassword'
         where
        type Rs RelyingPartyyVerifyPassword' =
             VerifyPasswordResponse
        request = requestWithRoute defReq identityToolkitURL
        requestWithRoute r u RelyingPartyyVerifyPassword'{..}
          = go _rpvpQuotaUser (Just _rpvpPrettyPrint)
              _rpvpUserIP
              _rpvpKey
              _rpvpOAuthToken
              _rpvpFields
              (Just AltJSON)
              _rpvpIdentitytoolkitRelyingPartyyVerifyPasswordRequest
          where go
                  = clientWithRoute
                      (Proxy :: Proxy RelyingPartyyVerifyPasswordResource)
                      r
                      u
