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
-- Module      : Network.Google.Resource.IdentityToolkit.RelyingPartyy.ResetPassword
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Reset password for a user.
--
-- /See:/ <https://developers.google.com/identity-toolkit/v3/ Google Identity Toolkit API Reference> for @IdentitytoolkitRelyingPartyyResetPassword@.
module Network.Google.Resource.IdentityToolkit.RelyingPartyy.ResetPassword
    (
    -- * REST Resource
      RelyingPartyyResetPasswordResource

    -- * Creating a Request
    , relyingPartyyResetPassword'
    , RelyingPartyyResetPassword'

    -- * Request Lenses
    , rprpQuotaUser
    , rprpPrettyPrint
    , rprpUserIP
    , rprpKey
    , rprpOAuthToken
    , rprpIdentitytoolkitRelyingPartyyResetPasswordRequest
    , rprpFields
    ) where

import           Network.Google.IdentityToolkit.Types
import           Network.Google.Prelude

-- | A resource alias for @IdentitytoolkitRelyingPartyyResetPassword@ which the
-- 'RelyingPartyyResetPassword'' request conforms to.
type RelyingPartyyResetPasswordResource =
     "resetPassword" :>
       QueryParam "quotaUser" Text :>
         QueryParam "prettyPrint" Bool :>
           QueryParam "userIp" Text :>
             QueryParam "key" Key :>
               QueryParam "oauth_token" OAuthToken :>
                 QueryParam "fields" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON]
                       IdentitytoolkitRelyingPartyyResetPasswordRequest
                       :> Post '[JSON] ResetPasswordResponse

-- | Reset password for a user.
--
-- /See:/ 'relyingPartyyResetPassword'' smart constructor.
data RelyingPartyyResetPassword' = RelyingPartyyResetPassword'
    { _rprpQuotaUser                                        :: !(Maybe Text)
    , _rprpPrettyPrint                                      :: !Bool
    , _rprpUserIP                                           :: !(Maybe Text)
    , _rprpKey                                              :: !(Maybe Key)
    , _rprpOAuthToken                                       :: !(Maybe OAuthToken)
    , _rprpIdentitytoolkitRelyingPartyyResetPasswordRequest :: !IdentitytoolkitRelyingPartyyResetPasswordRequest
    , _rprpFields                                           :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'RelyingPartyyResetPassword'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rprpQuotaUser'
--
-- * 'rprpPrettyPrint'
--
-- * 'rprpUserIP'
--
-- * 'rprpKey'
--
-- * 'rprpOAuthToken'
--
-- * 'rprpIdentitytoolkitRelyingPartyyResetPasswordRequest'
--
-- * 'rprpFields'
relyingPartyyResetPassword'
    :: IdentitytoolkitRelyingPartyyResetPasswordRequest -- ^ 'IdentitytoolkitRelyingPartyyResetPasswordRequest'
    -> RelyingPartyyResetPassword'
relyingPartyyResetPassword' pRprpIdentitytoolkitRelyingPartyyResetPasswordRequest_ =
    RelyingPartyyResetPassword'
    { _rprpQuotaUser = Nothing
    , _rprpPrettyPrint = True
    , _rprpUserIP = Nothing
    , _rprpKey = Nothing
    , _rprpOAuthToken = Nothing
    , _rprpIdentitytoolkitRelyingPartyyResetPasswordRequest = pRprpIdentitytoolkitRelyingPartyyResetPasswordRequest_
    , _rprpFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
rprpQuotaUser :: Lens' RelyingPartyyResetPassword' (Maybe Text)
rprpQuotaUser
  = lens _rprpQuotaUser
      (\ s a -> s{_rprpQuotaUser = a})

-- | Returns response with indentations and line breaks.
rprpPrettyPrint :: Lens' RelyingPartyyResetPassword' Bool
rprpPrettyPrint
  = lens _rprpPrettyPrint
      (\ s a -> s{_rprpPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
rprpUserIP :: Lens' RelyingPartyyResetPassword' (Maybe Text)
rprpUserIP
  = lens _rprpUserIP (\ s a -> s{_rprpUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
rprpKey :: Lens' RelyingPartyyResetPassword' (Maybe Key)
rprpKey = lens _rprpKey (\ s a -> s{_rprpKey = a})

-- | OAuth 2.0 token for the current user.
rprpOAuthToken :: Lens' RelyingPartyyResetPassword' (Maybe OAuthToken)
rprpOAuthToken
  = lens _rprpOAuthToken
      (\ s a -> s{_rprpOAuthToken = a})

-- | Multipart request metadata.
rprpIdentitytoolkitRelyingPartyyResetPasswordRequest :: Lens' RelyingPartyyResetPassword' IdentitytoolkitRelyingPartyyResetPasswordRequest
rprpIdentitytoolkitRelyingPartyyResetPasswordRequest
  = lens
      _rprpIdentitytoolkitRelyingPartyyResetPasswordRequest
      (\ s a ->
         s{_rprpIdentitytoolkitRelyingPartyyResetPasswordRequest
             = a})

-- | Selector specifying which fields to include in a partial response.
rprpFields :: Lens' RelyingPartyyResetPassword' (Maybe Text)
rprpFields
  = lens _rprpFields (\ s a -> s{_rprpFields = a})

instance GoogleAuth RelyingPartyyResetPassword' where
        authKey = rprpKey . _Just
        authToken = rprpOAuthToken . _Just

instance GoogleRequest RelyingPartyyResetPassword'
         where
        type Rs RelyingPartyyResetPassword' =
             ResetPasswordResponse
        request = requestWithRoute defReq identityToolkitURL
        requestWithRoute r u RelyingPartyyResetPassword'{..}
          = go _rprpQuotaUser (Just _rprpPrettyPrint)
              _rprpUserIP
              _rprpKey
              _rprpOAuthToken
              _rprpFields
              (Just AltJSON)
              _rprpIdentitytoolkitRelyingPartyyResetPasswordRequest
          where go
                  = clientWithRoute
                      (Proxy :: Proxy RelyingPartyyResetPasswordResource)
                      r
                      u
