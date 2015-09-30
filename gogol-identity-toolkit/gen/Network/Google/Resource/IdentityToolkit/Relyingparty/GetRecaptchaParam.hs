{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.IdentityToolkit.Relyingparty.GetRecaptchaParam
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Get recaptcha secure param.
--
-- /See:/ <https://developers.google.com/identity-toolkit/v3/ Google Identity Toolkit API Reference> for @IdentitytoolkitRelyingpartyGetRecaptchaParam@.
module IdentityToolkit.Relyingparty.GetRecaptchaParam
    (
    -- * REST Resource
      RelyingpartyGetRecaptchaParamAPI

    -- * Creating a Request
    , relyingpartyGetRecaptchaParam
    , RelyingpartyGetRecaptchaParam

    -- * Request Lenses
    , rgrpQuotaUser
    , rgrpPrettyPrint
    , rgrpUserIp
    , rgrpKey
    , rgrpOauthToken
    , rgrpFields
    , rgrpAlt
    ) where

import           Network.Google.IdentityToolkit.Types
import           Network.Google.Prelude

-- | A resource alias for @IdentitytoolkitRelyingpartyGetRecaptchaParam@ which the
-- 'RelyingpartyGetRecaptchaParam' request conforms to.
type RelyingpartyGetRecaptchaParamAPI =
     "getRecaptchaParam" :>
       Get '[JSON] GetRecaptchaParamResponse

-- | Get recaptcha secure param.
--
-- /See:/ 'relyingpartyGetRecaptchaParam' smart constructor.
data RelyingpartyGetRecaptchaParam = RelyingpartyGetRecaptchaParam
    { _rgrpQuotaUser   :: !(Maybe Text)
    , _rgrpPrettyPrint :: !Bool
    , _rgrpUserIp      :: !(Maybe Text)
    , _rgrpKey         :: !(Maybe Text)
    , _rgrpOauthToken  :: !(Maybe Text)
    , _rgrpFields      :: !(Maybe Text)
    , _rgrpAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'RelyingpartyGetRecaptchaParam'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rgrpQuotaUser'
--
-- * 'rgrpPrettyPrint'
--
-- * 'rgrpUserIp'
--
-- * 'rgrpKey'
--
-- * 'rgrpOauthToken'
--
-- * 'rgrpFields'
--
-- * 'rgrpAlt'
relyingpartyGetRecaptchaParam
    :: RelyingpartyGetRecaptchaParam
relyingpartyGetRecaptchaParam =
    RelyingpartyGetRecaptchaParam
    { _rgrpQuotaUser = Nothing
    , _rgrpPrettyPrint = True
    , _rgrpUserIp = Nothing
    , _rgrpKey = Nothing
    , _rgrpOauthToken = Nothing
    , _rgrpFields = Nothing
    , _rgrpAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
rgrpQuotaUser :: Lens' RelyingpartyGetRecaptchaParam' (Maybe Text)
rgrpQuotaUser
  = lens _rgrpQuotaUser
      (\ s a -> s{_rgrpQuotaUser = a})

-- | Returns response with indentations and line breaks.
rgrpPrettyPrint :: Lens' RelyingpartyGetRecaptchaParam' Bool
rgrpPrettyPrint
  = lens _rgrpPrettyPrint
      (\ s a -> s{_rgrpPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
rgrpUserIp :: Lens' RelyingpartyGetRecaptchaParam' (Maybe Text)
rgrpUserIp
  = lens _rgrpUserIp (\ s a -> s{_rgrpUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
rgrpKey :: Lens' RelyingpartyGetRecaptchaParam' (Maybe Text)
rgrpKey = lens _rgrpKey (\ s a -> s{_rgrpKey = a})

-- | OAuth 2.0 token for the current user.
rgrpOauthToken :: Lens' RelyingpartyGetRecaptchaParam' (Maybe Text)
rgrpOauthToken
  = lens _rgrpOauthToken
      (\ s a -> s{_rgrpOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
rgrpFields :: Lens' RelyingpartyGetRecaptchaParam' (Maybe Text)
rgrpFields
  = lens _rgrpFields (\ s a -> s{_rgrpFields = a})

-- | Data format for the response.
rgrpAlt :: Lens' RelyingpartyGetRecaptchaParam' Text
rgrpAlt = lens _rgrpAlt (\ s a -> s{_rgrpAlt = a})

instance GoogleRequest RelyingpartyGetRecaptchaParam'
         where
        type Rs RelyingpartyGetRecaptchaParam' =
             GetRecaptchaParamResponse
        request = requestWithRoute defReq identityToolkitURL
        requestWithRoute r u
          RelyingpartyGetRecaptchaParam{..}
          = go _rgrpQuotaUser _rgrpPrettyPrint _rgrpUserIp
              _rgrpKey
              _rgrpOauthToken
              _rgrpFields
              _rgrpAlt
          where go
                  = clientWithRoute
                      (Proxy :: Proxy RelyingpartyGetRecaptchaParamAPI)
                      r
                      u
