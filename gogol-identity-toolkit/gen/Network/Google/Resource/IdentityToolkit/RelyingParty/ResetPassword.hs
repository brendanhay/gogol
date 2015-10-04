{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE FlexibleInstances  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.IdentityToolkit.RelyingParty.ResetPassword
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Reset password for a user.
--
-- /See:/ <https://developers.google.com/identity-toolkit/v3/ Google Identity Toolkit API Reference> for @IdentitytoolkitRelyingPartyResetPassword@.
module Network.Google.Resource.IdentityToolkit.RelyingParty.ResetPassword
    (
    -- * REST Resource
      RelyingPartyResetPasswordResource

    -- * Creating a Request
    , relyingPartyResetPassword'
    , RelyingPartyResetPassword'

    -- * Request Lenses
    , rprpQuotaUser
    , rprpPrettyPrint
    , rprpUserIP
    , rprpPayload
    , rprpKey
    , rprpOAuthToken
    , rprpFields
    ) where

import           Network.Google.IdentityToolkit.Types
import           Network.Google.Prelude

-- | A resource alias for @IdentitytoolkitRelyingPartyResetPassword@ which the
-- 'RelyingPartyResetPassword'' request conforms to.
type RelyingPartyResetPasswordResource =
     "resetPassword" :>
       QueryParam "quotaUser" Text :>
         QueryParam "prettyPrint" Bool :>
           QueryParam "userIp" Text :>
             QueryParam "fields" Text :>
               QueryParam "key" Key :>
                 QueryParam "oauth_token" OAuthToken :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON]
                       IdentitytoolkitRelyingPartyResetPasswordRequest
                       :> Post '[JSON] ResetPasswordResponse

-- | Reset password for a user.
--
-- /See:/ 'relyingPartyResetPassword'' smart constructor.
data RelyingPartyResetPassword' = RelyingPartyResetPassword'
    { _rprpQuotaUser   :: !(Maybe Text)
    , _rprpPrettyPrint :: !Bool
    , _rprpUserIP      :: !(Maybe Text)
    , _rprpPayload     :: !IdentitytoolkitRelyingPartyResetPasswordRequest
    , _rprpKey         :: !(Maybe Key)
    , _rprpOAuthToken  :: !(Maybe OAuthToken)
    , _rprpFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'RelyingPartyResetPassword'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rprpQuotaUser'
--
-- * 'rprpPrettyPrint'
--
-- * 'rprpUserIP'
--
-- * 'rprpPayload'
--
-- * 'rprpKey'
--
-- * 'rprpOAuthToken'
--
-- * 'rprpFields'
relyingPartyResetPassword'
    :: IdentitytoolkitRelyingPartyResetPasswordRequest -- ^ 'payload'
    -> RelyingPartyResetPassword'
relyingPartyResetPassword' pRprpPayload_ =
    RelyingPartyResetPassword'
    { _rprpQuotaUser = Nothing
    , _rprpPrettyPrint = True
    , _rprpUserIP = Nothing
    , _rprpPayload = pRprpPayload_
    , _rprpKey = Nothing
    , _rprpOAuthToken = Nothing
    , _rprpFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
rprpQuotaUser :: Lens' RelyingPartyResetPassword' (Maybe Text)
rprpQuotaUser
  = lens _rprpQuotaUser
      (\ s a -> s{_rprpQuotaUser = a})

-- | Returns response with indentations and line breaks.
rprpPrettyPrint :: Lens' RelyingPartyResetPassword' Bool
rprpPrettyPrint
  = lens _rprpPrettyPrint
      (\ s a -> s{_rprpPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
rprpUserIP :: Lens' RelyingPartyResetPassword' (Maybe Text)
rprpUserIP
  = lens _rprpUserIP (\ s a -> s{_rprpUserIP = a})

-- | Multipart request metadata.
rprpPayload :: Lens' RelyingPartyResetPassword' IdentitytoolkitRelyingPartyResetPasswordRequest
rprpPayload
  = lens _rprpPayload (\ s a -> s{_rprpPayload = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
rprpKey :: Lens' RelyingPartyResetPassword' (Maybe Key)
rprpKey = lens _rprpKey (\ s a -> s{_rprpKey = a})

-- | OAuth 2.0 token for the current user.
rprpOAuthToken :: Lens' RelyingPartyResetPassword' (Maybe OAuthToken)
rprpOAuthToken
  = lens _rprpOAuthToken
      (\ s a -> s{_rprpOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
rprpFields :: Lens' RelyingPartyResetPassword' (Maybe Text)
rprpFields
  = lens _rprpFields (\ s a -> s{_rprpFields = a})

instance GoogleAuth RelyingPartyResetPassword' where
        authKey = rprpKey . _Just
        authToken = rprpOAuthToken . _Just

instance GoogleRequest RelyingPartyResetPassword'
         where
        type Rs RelyingPartyResetPassword' =
             ResetPasswordResponse
        request = requestWithRoute defReq identityToolkitURL
        requestWithRoute r u RelyingPartyResetPassword'{..}
          = go _rprpQuotaUser (Just _rprpPrettyPrint)
              _rprpUserIP
              _rprpFields
              _rprpKey
              _rprpOAuthToken
              (Just AltJSON)
              _rprpPayload
          where go
                  = clientWithRoute
                      (Proxy :: Proxy RelyingPartyResetPasswordResource)
                      r
                      u
