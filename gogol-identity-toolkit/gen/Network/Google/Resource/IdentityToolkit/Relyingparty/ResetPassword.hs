{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.IdentityToolkit.Relyingparty.ResetPassword
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Reset password for a user.
--
-- /See:/ <https://developers.google.com/identity-toolkit/v3/ Google Identity Toolkit API Reference> for @IdentitytoolkitRelyingpartyResetPassword@.
module IdentityToolkit.Relyingparty.ResetPassword
    (
    -- * REST Resource
      RelyingpartyResetPasswordAPI

    -- * Creating a Request
    , relyingpartyResetPassword
    , RelyingpartyResetPassword

    -- * Request Lenses
    , rrpQuotaUser
    , rrpPrettyPrint
    , rrpUserIp
    , rrpKey
    , rrpOauthToken
    , rrpFields
    , rrpAlt
    ) where

import           Network.Google.IdentityToolkit.Types
import           Network.Google.Prelude

-- | A resource alias for @IdentitytoolkitRelyingpartyResetPassword@ which the
-- 'RelyingpartyResetPassword' request conforms to.
type RelyingpartyResetPasswordAPI =
     "resetPassword" :> Post '[JSON] ResetPasswordResponse

-- | Reset password for a user.
--
-- /See:/ 'relyingpartyResetPassword' smart constructor.
data RelyingpartyResetPassword = RelyingpartyResetPassword
    { _rrpQuotaUser   :: !(Maybe Text)
    , _rrpPrettyPrint :: !Bool
    , _rrpUserIp      :: !(Maybe Text)
    , _rrpKey         :: !(Maybe Text)
    , _rrpOauthToken  :: !(Maybe Text)
    , _rrpFields      :: !(Maybe Text)
    , _rrpAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'RelyingpartyResetPassword'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rrpQuotaUser'
--
-- * 'rrpPrettyPrint'
--
-- * 'rrpUserIp'
--
-- * 'rrpKey'
--
-- * 'rrpOauthToken'
--
-- * 'rrpFields'
--
-- * 'rrpAlt'
relyingpartyResetPassword
    :: RelyingpartyResetPassword
relyingpartyResetPassword =
    RelyingpartyResetPassword
    { _rrpQuotaUser = Nothing
    , _rrpPrettyPrint = True
    , _rrpUserIp = Nothing
    , _rrpKey = Nothing
    , _rrpOauthToken = Nothing
    , _rrpFields = Nothing
    , _rrpAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
rrpQuotaUser :: Lens' RelyingpartyResetPassword' (Maybe Text)
rrpQuotaUser
  = lens _rrpQuotaUser (\ s a -> s{_rrpQuotaUser = a})

-- | Returns response with indentations and line breaks.
rrpPrettyPrint :: Lens' RelyingpartyResetPassword' Bool
rrpPrettyPrint
  = lens _rrpPrettyPrint
      (\ s a -> s{_rrpPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
rrpUserIp :: Lens' RelyingpartyResetPassword' (Maybe Text)
rrpUserIp
  = lens _rrpUserIp (\ s a -> s{_rrpUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
rrpKey :: Lens' RelyingpartyResetPassword' (Maybe Text)
rrpKey = lens _rrpKey (\ s a -> s{_rrpKey = a})

-- | OAuth 2.0 token for the current user.
rrpOauthToken :: Lens' RelyingpartyResetPassword' (Maybe Text)
rrpOauthToken
  = lens _rrpOauthToken
      (\ s a -> s{_rrpOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
rrpFields :: Lens' RelyingpartyResetPassword' (Maybe Text)
rrpFields
  = lens _rrpFields (\ s a -> s{_rrpFields = a})

-- | Data format for the response.
rrpAlt :: Lens' RelyingpartyResetPassword' Text
rrpAlt = lens _rrpAlt (\ s a -> s{_rrpAlt = a})

instance GoogleRequest RelyingpartyResetPassword'
         where
        type Rs RelyingpartyResetPassword' =
             ResetPasswordResponse
        request = requestWithRoute defReq identityToolkitURL
        requestWithRoute r u RelyingpartyResetPassword{..}
          = go _rrpQuotaUser _rrpPrettyPrint _rrpUserIp _rrpKey
              _rrpOauthToken
              _rrpFields
              _rrpAlt
          where go
                  = clientWithRoute
                      (Proxy :: Proxy RelyingpartyResetPasswordAPI)
                      r
                      u
