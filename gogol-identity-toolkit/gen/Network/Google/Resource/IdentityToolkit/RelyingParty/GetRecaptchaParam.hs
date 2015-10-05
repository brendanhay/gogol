{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE FlexibleInstances  #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-unused-binds      #-}
{-# OPTIONS_GHC -fno-warn-unused-imports    #-}

-- |
-- Module      : Network.Google.Resource.IdentityToolkit.RelyingParty.GetRecaptchaParam
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Get recaptcha secure param.
--
-- /See:/ <https://developers.google.com/identity-toolkit/v3/ Google Identity Toolkit API Reference> for @IdentitytoolkitRelyingPartyGetRecaptchaParam@.
module Network.Google.Resource.IdentityToolkit.RelyingParty.GetRecaptchaParam
    (
    -- * REST Resource
      RelyingPartyGetRecaptchaParamResource

    -- * Creating a Request
    , relyingPartyGetRecaptchaParam'
    , RelyingPartyGetRecaptchaParam'

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

-- | A resource alias for @IdentitytoolkitRelyingPartyGetRecaptchaParam@ which the
-- 'RelyingPartyGetRecaptchaParam'' request conforms to.
type RelyingPartyGetRecaptchaParamResource =
     "getRecaptchaParam" :>
       QueryParam "quotaUser" Text :>
         QueryParam "prettyPrint" Bool :>
           QueryParam "userIp" Text :>
             QueryParam "fields" Text :>
               QueryParam "key" Key :>
                 QueryParam "oauth_token" OAuthToken :>
                   QueryParam "alt" AltJSON :>
                     Get '[JSON] GetRecaptchaParamResponse

-- | Get recaptcha secure param.
--
-- /See:/ 'relyingPartyGetRecaptchaParam'' smart constructor.
data RelyingPartyGetRecaptchaParam' = RelyingPartyGetRecaptchaParam'
    { _rpgrpQuotaUser   :: !(Maybe Text)
    , _rpgrpPrettyPrint :: !Bool
    , _rpgrpUserIP      :: !(Maybe Text)
    , _rpgrpKey         :: !(Maybe Key)
    , _rpgrpOAuthToken  :: !(Maybe OAuthToken)
    , _rpgrpFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'RelyingPartyGetRecaptchaParam'' with the minimum fields required to make a request.
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
relyingPartyGetRecaptchaParam'
    :: RelyingPartyGetRecaptchaParam'
relyingPartyGetRecaptchaParam' =
    RelyingPartyGetRecaptchaParam'
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
rpgrpQuotaUser :: Lens' RelyingPartyGetRecaptchaParam' (Maybe Text)
rpgrpQuotaUser
  = lens _rpgrpQuotaUser
      (\ s a -> s{_rpgrpQuotaUser = a})

-- | Returns response with indentations and line breaks.
rpgrpPrettyPrint :: Lens' RelyingPartyGetRecaptchaParam' Bool
rpgrpPrettyPrint
  = lens _rpgrpPrettyPrint
      (\ s a -> s{_rpgrpPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
rpgrpUserIP :: Lens' RelyingPartyGetRecaptchaParam' (Maybe Text)
rpgrpUserIP
  = lens _rpgrpUserIP (\ s a -> s{_rpgrpUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
rpgrpKey :: Lens' RelyingPartyGetRecaptchaParam' (Maybe Key)
rpgrpKey = lens _rpgrpKey (\ s a -> s{_rpgrpKey = a})

-- | OAuth 2.0 token for the current user.
rpgrpOAuthToken :: Lens' RelyingPartyGetRecaptchaParam' (Maybe OAuthToken)
rpgrpOAuthToken
  = lens _rpgrpOAuthToken
      (\ s a -> s{_rpgrpOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
rpgrpFields :: Lens' RelyingPartyGetRecaptchaParam' (Maybe Text)
rpgrpFields
  = lens _rpgrpFields (\ s a -> s{_rpgrpFields = a})

instance GoogleAuth RelyingPartyGetRecaptchaParam'
         where
        authKey = rpgrpKey . _Just
        authToken = rpgrpOAuthToken . _Just

instance GoogleRequest RelyingPartyGetRecaptchaParam'
         where
        type Rs RelyingPartyGetRecaptchaParam' =
             GetRecaptchaParamResponse
        request = requestWithRoute defReq identityToolkitURL
        requestWithRoute r u
          RelyingPartyGetRecaptchaParam'{..}
          = go _rpgrpQuotaUser (Just _rpgrpPrettyPrint)
              _rpgrpUserIP
              _rpgrpFields
              _rpgrpKey
              _rpgrpOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy ::
                         Proxy RelyingPartyGetRecaptchaParamResource)
                      r
                      u
