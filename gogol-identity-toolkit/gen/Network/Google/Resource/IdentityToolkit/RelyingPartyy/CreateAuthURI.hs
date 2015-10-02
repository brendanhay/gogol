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
-- Module      : Network.Google.Resource.IdentityToolkit.RelyingPartyy.CreateAuthURI
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Creates the URI used by the IdP to authenticate the user.
--
-- /See:/ <https://developers.google.com/identity-toolkit/v3/ Google Identity Toolkit API Reference> for @IdentitytoolkitRelyingPartyyCreateAuthURI@.
module Network.Google.Resource.IdentityToolkit.RelyingPartyy.CreateAuthURI
    (
    -- * REST Resource
      RelyingPartyyCreateAuthURIResource

    -- * Creating a Request
    , relyingPartyyCreateAuthURI'
    , RelyingPartyyCreateAuthURI'

    -- * Request Lenses
    , rpcauQuotaUser
    , rpcauPrettyPrint
    , rpcauUserIP
    , rpcauKey
    , rpcauOAuthToken
    , rpcauIdentitytoolkitRelyingPartyyCreateAuthURIRequest
    , rpcauFields
    ) where

import           Network.Google.IdentityToolkit.Types
import           Network.Google.Prelude

-- | A resource alias for @IdentitytoolkitRelyingPartyyCreateAuthURI@ which the
-- 'RelyingPartyyCreateAuthURI'' request conforms to.
type RelyingPartyyCreateAuthURIResource =
     "createAuthUri" :>
       QueryParam "quotaUser" Text :>
         QueryParam "prettyPrint" Bool :>
           QueryParam "userIp" Text :>
             QueryParam "key" Key :>
               QueryParam "oauth_token" OAuthToken :>
                 QueryParam "fields" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON]
                       IdentitytoolkitRelyingPartyyCreateAuthURIRequest
                       :> Post '[JSON] CreateAuthURIResponse

-- | Creates the URI used by the IdP to authenticate the user.
--
-- /See:/ 'relyingPartyyCreateAuthURI'' smart constructor.
data RelyingPartyyCreateAuthURI' = RelyingPartyyCreateAuthURI'
    { _rpcauQuotaUser                                        :: !(Maybe Text)
    , _rpcauPrettyPrint                                      :: !Bool
    , _rpcauUserIP                                           :: !(Maybe Text)
    , _rpcauKey                                              :: !(Maybe Key)
    , _rpcauOAuthToken                                       :: !(Maybe OAuthToken)
    , _rpcauIdentitytoolkitRelyingPartyyCreateAuthURIRequest :: !IdentitytoolkitRelyingPartyyCreateAuthURIRequest
    , _rpcauFields                                           :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'RelyingPartyyCreateAuthURI'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rpcauQuotaUser'
--
-- * 'rpcauPrettyPrint'
--
-- * 'rpcauUserIP'
--
-- * 'rpcauKey'
--
-- * 'rpcauOAuthToken'
--
-- * 'rpcauIdentitytoolkitRelyingPartyyCreateAuthURIRequest'
--
-- * 'rpcauFields'
relyingPartyyCreateAuthURI'
    :: IdentitytoolkitRelyingPartyyCreateAuthURIRequest -- ^ 'IdentitytoolkitRelyingPartyyCreateAuthURIRequest'
    -> RelyingPartyyCreateAuthURI'
relyingPartyyCreateAuthURI' pRpcauIdentitytoolkitRelyingPartyyCreateAuthURIRequest_ =
    RelyingPartyyCreateAuthURI'
    { _rpcauQuotaUser = Nothing
    , _rpcauPrettyPrint = True
    , _rpcauUserIP = Nothing
    , _rpcauKey = Nothing
    , _rpcauOAuthToken = Nothing
    , _rpcauIdentitytoolkitRelyingPartyyCreateAuthURIRequest = pRpcauIdentitytoolkitRelyingPartyyCreateAuthURIRequest_
    , _rpcauFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
rpcauQuotaUser :: Lens' RelyingPartyyCreateAuthURI' (Maybe Text)
rpcauQuotaUser
  = lens _rpcauQuotaUser
      (\ s a -> s{_rpcauQuotaUser = a})

-- | Returns response with indentations and line breaks.
rpcauPrettyPrint :: Lens' RelyingPartyyCreateAuthURI' Bool
rpcauPrettyPrint
  = lens _rpcauPrettyPrint
      (\ s a -> s{_rpcauPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
rpcauUserIP :: Lens' RelyingPartyyCreateAuthURI' (Maybe Text)
rpcauUserIP
  = lens _rpcauUserIP (\ s a -> s{_rpcauUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
rpcauKey :: Lens' RelyingPartyyCreateAuthURI' (Maybe Key)
rpcauKey = lens _rpcauKey (\ s a -> s{_rpcauKey = a})

-- | OAuth 2.0 token for the current user.
rpcauOAuthToken :: Lens' RelyingPartyyCreateAuthURI' (Maybe OAuthToken)
rpcauOAuthToken
  = lens _rpcauOAuthToken
      (\ s a -> s{_rpcauOAuthToken = a})

-- | Multipart request metadata.
rpcauIdentitytoolkitRelyingPartyyCreateAuthURIRequest :: Lens' RelyingPartyyCreateAuthURI' IdentitytoolkitRelyingPartyyCreateAuthURIRequest
rpcauIdentitytoolkitRelyingPartyyCreateAuthURIRequest
  = lens
      _rpcauIdentitytoolkitRelyingPartyyCreateAuthURIRequest
      (\ s a ->
         s{_rpcauIdentitytoolkitRelyingPartyyCreateAuthURIRequest
             = a})

-- | Selector specifying which fields to include in a partial response.
rpcauFields :: Lens' RelyingPartyyCreateAuthURI' (Maybe Text)
rpcauFields
  = lens _rpcauFields (\ s a -> s{_rpcauFields = a})

instance GoogleAuth RelyingPartyyCreateAuthURI' where
        authKey = rpcauKey . _Just
        authToken = rpcauOAuthToken . _Just

instance GoogleRequest RelyingPartyyCreateAuthURI'
         where
        type Rs RelyingPartyyCreateAuthURI' =
             CreateAuthURIResponse
        request = requestWithRoute defReq identityToolkitURL
        requestWithRoute r u RelyingPartyyCreateAuthURI'{..}
          = go _rpcauQuotaUser (Just _rpcauPrettyPrint)
              _rpcauUserIP
              _rpcauKey
              _rpcauOAuthToken
              _rpcauFields
              (Just AltJSON)
              _rpcauIdentitytoolkitRelyingPartyyCreateAuthURIRequest
          where go
                  = clientWithRoute
                      (Proxy :: Proxy RelyingPartyyCreateAuthURIResource)
                      r
                      u
