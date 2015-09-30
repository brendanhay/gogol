{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.IdentityToolkit.Relyingparty.VerifyPassword
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Verifies the user entered password.
--
-- /See:/ <https://developers.google.com/identity-toolkit/v3/ Google Identity Toolkit API Reference> for @IdentitytoolkitRelyingpartyVerifyPassword@.
module IdentityToolkit.Relyingparty.VerifyPassword
    (
    -- * REST Resource
      RelyingpartyVerifyPasswordAPI

    -- * Creating a Request
    , relyingpartyVerifyPassword
    , RelyingpartyVerifyPassword

    -- * Request Lenses
    , rvpQuotaUser
    , rvpPrettyPrint
    , rvpUserIp
    , rvpKey
    , rvpOauthToken
    , rvpFields
    , rvpAlt
    ) where

import           Network.Google.IdentityToolkit.Types
import           Network.Google.Prelude

-- | A resource alias for @IdentitytoolkitRelyingpartyVerifyPassword@ which the
-- 'RelyingpartyVerifyPassword' request conforms to.
type RelyingpartyVerifyPasswordAPI =
     "verifyPassword" :>
       Post '[JSON] VerifyPasswordResponse

-- | Verifies the user entered password.
--
-- /See:/ 'relyingpartyVerifyPassword' smart constructor.
data RelyingpartyVerifyPassword = RelyingpartyVerifyPassword
    { _rvpQuotaUser   :: !(Maybe Text)
    , _rvpPrettyPrint :: !Bool
    , _rvpUserIp      :: !(Maybe Text)
    , _rvpKey         :: !(Maybe Text)
    , _rvpOauthToken  :: !(Maybe Text)
    , _rvpFields      :: !(Maybe Text)
    , _rvpAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'RelyingpartyVerifyPassword'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rvpQuotaUser'
--
-- * 'rvpPrettyPrint'
--
-- * 'rvpUserIp'
--
-- * 'rvpKey'
--
-- * 'rvpOauthToken'
--
-- * 'rvpFields'
--
-- * 'rvpAlt'
relyingpartyVerifyPassword
    :: RelyingpartyVerifyPassword
relyingpartyVerifyPassword =
    RelyingpartyVerifyPassword
    { _rvpQuotaUser = Nothing
    , _rvpPrettyPrint = True
    , _rvpUserIp = Nothing
    , _rvpKey = Nothing
    , _rvpOauthToken = Nothing
    , _rvpFields = Nothing
    , _rvpAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
rvpQuotaUser :: Lens' RelyingpartyVerifyPassword' (Maybe Text)
rvpQuotaUser
  = lens _rvpQuotaUser (\ s a -> s{_rvpQuotaUser = a})

-- | Returns response with indentations and line breaks.
rvpPrettyPrint :: Lens' RelyingpartyVerifyPassword' Bool
rvpPrettyPrint
  = lens _rvpPrettyPrint
      (\ s a -> s{_rvpPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
rvpUserIp :: Lens' RelyingpartyVerifyPassword' (Maybe Text)
rvpUserIp
  = lens _rvpUserIp (\ s a -> s{_rvpUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
rvpKey :: Lens' RelyingpartyVerifyPassword' (Maybe Text)
rvpKey = lens _rvpKey (\ s a -> s{_rvpKey = a})

-- | OAuth 2.0 token for the current user.
rvpOauthToken :: Lens' RelyingpartyVerifyPassword' (Maybe Text)
rvpOauthToken
  = lens _rvpOauthToken
      (\ s a -> s{_rvpOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
rvpFields :: Lens' RelyingpartyVerifyPassword' (Maybe Text)
rvpFields
  = lens _rvpFields (\ s a -> s{_rvpFields = a})

-- | Data format for the response.
rvpAlt :: Lens' RelyingpartyVerifyPassword' Text
rvpAlt = lens _rvpAlt (\ s a -> s{_rvpAlt = a})

instance GoogleRequest RelyingpartyVerifyPassword'
         where
        type Rs RelyingpartyVerifyPassword' =
             VerifyPasswordResponse
        request = requestWithRoute defReq identityToolkitURL
        requestWithRoute r u RelyingpartyVerifyPassword{..}
          = go _rvpQuotaUser _rvpPrettyPrint _rvpUserIp _rvpKey
              _rvpOauthToken
              _rvpFields
              _rvpAlt
          where go
                  = clientWithRoute
                      (Proxy :: Proxy RelyingpartyVerifyPasswordAPI)
                      r
                      u
