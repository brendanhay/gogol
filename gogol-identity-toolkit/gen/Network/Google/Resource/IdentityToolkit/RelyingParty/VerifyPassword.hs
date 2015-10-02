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
-- Module      : Network.Google.Resource.IdentityToolkit.RelyingParty.VerifyPassword
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Verifies the user entered password.
--
-- /See:/ <https://developers.google.com/identity-toolkit/v3/ Google Identity Toolkit API Reference> for @IdentitytoolkitRelyingPartyVerifyPassword@.
module Network.Google.Resource.IdentityToolkit.RelyingParty.VerifyPassword
    (
    -- * REST Resource
      RelyingPartyVerifyPasswordResource

    -- * Creating a Request
    , relyingPartyVerifyPassword'
    , RelyingPartyVerifyPassword'

    -- * Request Lenses
    , rpvpQuotaUser
    , rpvpPrettyPrint
    , rpvpIdentitytoolkitRelyingPartyVerifyPasswordRequest
    , rpvpUserIP
    , rpvpKey
    , rpvpOAuthToken
    , rpvpFields
    ) where

import           Network.Google.IdentityToolkit.Types
import           Network.Google.Prelude

-- | A resource alias for @IdentitytoolkitRelyingPartyVerifyPassword@ which the
-- 'RelyingPartyVerifyPassword'' request conforms to.
type RelyingPartyVerifyPasswordResource =
     "verifyPassword" :>
       QueryParam "quotaUser" Text :>
         QueryParam "prettyPrint" Bool :>
           QueryParam "userIp" Text :>
             QueryParam "fields" Text :>
               QueryParam "key" Key :>
                 QueryParam "oauth_token" OAuthToken :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON]
                       IdentitytoolkitRelyingPartyVerifyPasswordRequest
                       :> Post '[JSON] VerifyPasswordResponse

-- | Verifies the user entered password.
--
-- /See:/ 'relyingPartyVerifyPassword'' smart constructor.
data RelyingPartyVerifyPassword' = RelyingPartyVerifyPassword'
    { _rpvpQuotaUser                                        :: !(Maybe Text)
    , _rpvpPrettyPrint                                      :: !Bool
    , _rpvpIdentitytoolkitRelyingPartyVerifyPasswordRequest :: !IdentitytoolkitRelyingPartyVerifyPasswordRequest
    , _rpvpUserIP                                           :: !(Maybe Text)
    , _rpvpKey                                              :: !(Maybe Key)
    , _rpvpOAuthToken                                       :: !(Maybe OAuthToken)
    , _rpvpFields                                           :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'RelyingPartyVerifyPassword'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rpvpQuotaUser'
--
-- * 'rpvpPrettyPrint'
--
-- * 'rpvpIdentitytoolkitRelyingPartyVerifyPasswordRequest'
--
-- * 'rpvpUserIP'
--
-- * 'rpvpKey'
--
-- * 'rpvpOAuthToken'
--
-- * 'rpvpFields'
relyingPartyVerifyPassword'
    :: IdentitytoolkitRelyingPartyVerifyPasswordRequest -- ^ 'IdentitytoolkitRelyingPartyVerifyPasswordRequest'
    -> RelyingPartyVerifyPassword'
relyingPartyVerifyPassword' pRpvpIdentitytoolkitRelyingPartyVerifyPasswordRequest_ =
    RelyingPartyVerifyPassword'
    { _rpvpQuotaUser = Nothing
    , _rpvpPrettyPrint = True
    , _rpvpIdentitytoolkitRelyingPartyVerifyPasswordRequest = pRpvpIdentitytoolkitRelyingPartyVerifyPasswordRequest_
    , _rpvpUserIP = Nothing
    , _rpvpKey = Nothing
    , _rpvpOAuthToken = Nothing
    , _rpvpFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
rpvpQuotaUser :: Lens' RelyingPartyVerifyPassword' (Maybe Text)
rpvpQuotaUser
  = lens _rpvpQuotaUser
      (\ s a -> s{_rpvpQuotaUser = a})

-- | Returns response with indentations and line breaks.
rpvpPrettyPrint :: Lens' RelyingPartyVerifyPassword' Bool
rpvpPrettyPrint
  = lens _rpvpPrettyPrint
      (\ s a -> s{_rpvpPrettyPrint = a})

-- | Multipart request metadata.
rpvpIdentitytoolkitRelyingPartyVerifyPasswordRequest :: Lens' RelyingPartyVerifyPassword' IdentitytoolkitRelyingPartyVerifyPasswordRequest
rpvpIdentitytoolkitRelyingPartyVerifyPasswordRequest
  = lens
      _rpvpIdentitytoolkitRelyingPartyVerifyPasswordRequest
      (\ s a ->
         s{_rpvpIdentitytoolkitRelyingPartyVerifyPasswordRequest
             = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
rpvpUserIP :: Lens' RelyingPartyVerifyPassword' (Maybe Text)
rpvpUserIP
  = lens _rpvpUserIP (\ s a -> s{_rpvpUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
rpvpKey :: Lens' RelyingPartyVerifyPassword' (Maybe Key)
rpvpKey = lens _rpvpKey (\ s a -> s{_rpvpKey = a})

-- | OAuth 2.0 token for the current user.
rpvpOAuthToken :: Lens' RelyingPartyVerifyPassword' (Maybe OAuthToken)
rpvpOAuthToken
  = lens _rpvpOAuthToken
      (\ s a -> s{_rpvpOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
rpvpFields :: Lens' RelyingPartyVerifyPassword' (Maybe Text)
rpvpFields
  = lens _rpvpFields (\ s a -> s{_rpvpFields = a})

instance GoogleAuth RelyingPartyVerifyPassword' where
        authKey = rpvpKey . _Just
        authToken = rpvpOAuthToken . _Just

instance GoogleRequest RelyingPartyVerifyPassword'
         where
        type Rs RelyingPartyVerifyPassword' =
             VerifyPasswordResponse
        request = requestWithRoute defReq identityToolkitURL
        requestWithRoute r u RelyingPartyVerifyPassword'{..}
          = go _rpvpQuotaUser (Just _rpvpPrettyPrint)
              _rpvpUserIP
              _rpvpFields
              _rpvpKey
              _rpvpOAuthToken
              (Just AltJSON)
              _rpvpIdentitytoolkitRelyingPartyVerifyPasswordRequest
          where go
                  = clientWithRoute
                      (Proxy :: Proxy RelyingPartyVerifyPasswordResource)
                      r
                      u
