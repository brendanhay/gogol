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
-- Module      : Network.Google.Resource.IdentityToolkit.RelyingPartyy.GetRecaptchaParam
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Get recaptcha secure param.
--
-- /See:/ <https://developers.google.com/identity-toolkit/v3/ Google Identity Toolkit API Reference> for @IdentitytoolkitRelyingPartyyGetRecaptchaParam@.
module Network.Google.Resource.IdentityToolkit.RelyingPartyy.GetRecaptchaParam
    (
    -- * REST Resource
      RelyingPartyyGetRecaptchaParamResource

    -- * Creating a Request
    , relyingPartyyGetRecaptchaParam'
    , RelyingPartyyGetRecaptchaParam'

    -- * Request Lenses
    , rpgrpQuotaUser
    , rpgrpPrettyPrint
    , rpgrpUserIP
    , rpgrpKey
    , rpgrpOAuthToken
    , rpgrpFields
    ) where

import           Network.Google.IdentityToolkit.Types
import           Network.Google.Prelude

-- | A resource alias for @IdentitytoolkitRelyingPartyyGetRecaptchaParam@ which the
-- 'RelyingPartyyGetRecaptchaParam'' request conforms to.
type RelyingPartyyGetRecaptchaParamResource =
     "getRecaptchaParam" :>
       QueryParam "quotaUser" Text :>
         QueryParam "prettyPrint" Bool :>
           QueryParam "userIp" Text :>
             QueryParam "key" Key :>
               QueryParam "oauth_token" OAuthToken :>
                 QueryParam "fields" Text :>
                   QueryParam "alt" AltJSON :>
                     Get '[JSON] GetRecaptchaParamResponse

-- | Get recaptcha secure param.
--
-- /See:/ 'relyingPartyyGetRecaptchaParam'' smart constructor.
data RelyingPartyyGetRecaptchaParam' = RelyingPartyyGetRecaptchaParam'
    { _rpgrpQuotaUser   :: !(Maybe Text)
    , _rpgrpPrettyPrint :: !Bool
    , _rpgrpUserIP      :: !(Maybe Text)
    , _rpgrpKey         :: !(Maybe Key)
    , _rpgrpOAuthToken  :: !(Maybe OAuthToken)
    , _rpgrpFields      :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'RelyingPartyyGetRecaptchaParam'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rpgrpQuotaUser'
--
-- * 'rpgrpPrettyPrint'
--
-- * 'rpgrpUserIP'
--
-- * 'rpgrpKey'
--
-- * 'rpgrpOAuthToken'
--
-- * 'rpgrpFields'
relyingPartyyGetRecaptchaParam'
    :: RelyingPartyyGetRecaptchaParam'
relyingPartyyGetRecaptchaParam' =
    RelyingPartyyGetRecaptchaParam'
    { _rpgrpQuotaUser = Nothing
    , _rpgrpPrettyPrint = True
    , _rpgrpUserIP = Nothing
    , _rpgrpKey = Nothing
    , _rpgrpOAuthToken = Nothing
    , _rpgrpFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
rpgrpQuotaUser :: Lens' RelyingPartyyGetRecaptchaParam' (Maybe Text)
rpgrpQuotaUser
  = lens _rpgrpQuotaUser
      (\ s a -> s{_rpgrpQuotaUser = a})

-- | Returns response with indentations and line breaks.
rpgrpPrettyPrint :: Lens' RelyingPartyyGetRecaptchaParam' Bool
rpgrpPrettyPrint
  = lens _rpgrpPrettyPrint
      (\ s a -> s{_rpgrpPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
rpgrpUserIP :: Lens' RelyingPartyyGetRecaptchaParam' (Maybe Text)
rpgrpUserIP
  = lens _rpgrpUserIP (\ s a -> s{_rpgrpUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
rpgrpKey :: Lens' RelyingPartyyGetRecaptchaParam' (Maybe Key)
rpgrpKey = lens _rpgrpKey (\ s a -> s{_rpgrpKey = a})

-- | OAuth 2.0 token for the current user.
rpgrpOAuthToken :: Lens' RelyingPartyyGetRecaptchaParam' (Maybe OAuthToken)
rpgrpOAuthToken
  = lens _rpgrpOAuthToken
      (\ s a -> s{_rpgrpOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
rpgrpFields :: Lens' RelyingPartyyGetRecaptchaParam' (Maybe Text)
rpgrpFields
  = lens _rpgrpFields (\ s a -> s{_rpgrpFields = a})

instance GoogleAuth RelyingPartyyGetRecaptchaParam'
         where
        authKey = rpgrpKey . _Just
        authToken = rpgrpOAuthToken . _Just

instance GoogleRequest
         RelyingPartyyGetRecaptchaParam' where
        type Rs RelyingPartyyGetRecaptchaParam' =
             GetRecaptchaParamResponse
        request = requestWithRoute defReq identityToolkitURL
        requestWithRoute r u
          RelyingPartyyGetRecaptchaParam'{..}
          = go _rpgrpQuotaUser (Just _rpgrpPrettyPrint)
              _rpgrpUserIP
              _rpgrpKey
              _rpgrpOAuthToken
              _rpgrpFields
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy ::
                         Proxy RelyingPartyyGetRecaptchaParamResource)
                      r
                      u
