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
-- Module      : Network.Google.Resource.IdentityToolkit.RelyingParty.CreateAuthURI
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Creates the URI used by the IdP to authenticate the user.
--
-- /See:/ <https://developers.google.com/identity-toolkit/v3/ Google Identity Toolkit API Reference> for @IdentitytoolkitRelyingPartyCreateAuthURI@.
module Network.Google.Resource.IdentityToolkit.RelyingParty.CreateAuthURI
    (
    -- * REST Resource
      RelyingPartyCreateAuthURIResource

    -- * Creating a Request
    , relyingPartyCreateAuthURI'
    , RelyingPartyCreateAuthURI'

    -- * Request Lenses
    , rpcauQuotaUser
    , rpcauPrettyPrint
    , rpcauUserIP
    , rpcauKey
    , rpcauIdentitytoolkitRelyingPartyCreateAuthURIRequest
    , rpcauOAuthToken
    , rpcauFields
    ) where

import           Network.Google.IdentityToolkit.Types
import           Network.Google.Prelude

-- | A resource alias for @IdentitytoolkitRelyingPartyCreateAuthURI@ which the
-- 'RelyingPartyCreateAuthURI'' request conforms to.
type RelyingPartyCreateAuthURIResource =
     "createAuthUri" :>
       QueryParam "quotaUser" Text :>
         QueryParam "prettyPrint" Bool :>
           QueryParam "userIp" Text :>
             QueryParam "key" Key :>
               QueryParam "oauth_token" OAuthToken :>
                 QueryParam "fields" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON]
                       IdentitytoolkitRelyingPartyCreateAuthURIRequest
                       :> Post '[JSON] CreateAuthURIResponse

-- | Creates the URI used by the IdP to authenticate the user.
--
-- /See:/ 'relyingPartyCreateAuthURI'' smart constructor.
data RelyingPartyCreateAuthURI' = RelyingPartyCreateAuthURI'
    { _rpcauQuotaUser                                       :: !(Maybe Text)
    , _rpcauPrettyPrint                                     :: !Bool
    , _rpcauUserIP                                          :: !(Maybe Text)
    , _rpcauKey                                             :: !(Maybe Key)
    , _rpcauIdentitytoolkitRelyingPartyCreateAuthURIRequest :: !IdentitytoolkitRelyingPartyCreateAuthURIRequest
    , _rpcauOAuthToken                                      :: !(Maybe OAuthToken)
    , _rpcauFields                                          :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'RelyingPartyCreateAuthURI'' with the minimum fields required to make a request.
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
-- * 'rpcauIdentitytoolkitRelyingPartyCreateAuthURIRequest'
--
-- * 'rpcauOAuthToken'
--
-- * 'rpcauFields'
relyingPartyCreateAuthURI'
    :: IdentitytoolkitRelyingPartyCreateAuthURIRequest -- ^ 'IdentitytoolkitRelyingPartyCreateAuthURIRequest'
    -> RelyingPartyCreateAuthURI'
relyingPartyCreateAuthURI' pRpcauIdentitytoolkitRelyingPartyCreateAuthURIRequest_ =
    RelyingPartyCreateAuthURI'
    { _rpcauQuotaUser = Nothing
    , _rpcauPrettyPrint = True
    , _rpcauUserIP = Nothing
    , _rpcauKey = Nothing
    , _rpcauIdentitytoolkitRelyingPartyCreateAuthURIRequest = pRpcauIdentitytoolkitRelyingPartyCreateAuthURIRequest_
    , _rpcauOAuthToken = Nothing
    , _rpcauFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
rpcauQuotaUser :: Lens' RelyingPartyCreateAuthURI' (Maybe Text)
rpcauQuotaUser
  = lens _rpcauQuotaUser
      (\ s a -> s{_rpcauQuotaUser = a})

-- | Returns response with indentations and line breaks.
rpcauPrettyPrint :: Lens' RelyingPartyCreateAuthURI' Bool
rpcauPrettyPrint
  = lens _rpcauPrettyPrint
      (\ s a -> s{_rpcauPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
rpcauUserIP :: Lens' RelyingPartyCreateAuthURI' (Maybe Text)
rpcauUserIP
  = lens _rpcauUserIP (\ s a -> s{_rpcauUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
rpcauKey :: Lens' RelyingPartyCreateAuthURI' (Maybe Key)
rpcauKey = lens _rpcauKey (\ s a -> s{_rpcauKey = a})

-- | Multipart request metadata.
rpcauIdentitytoolkitRelyingPartyCreateAuthURIRequest :: Lens' RelyingPartyCreateAuthURI' IdentitytoolkitRelyingPartyCreateAuthURIRequest
rpcauIdentitytoolkitRelyingPartyCreateAuthURIRequest
  = lens
      _rpcauIdentitytoolkitRelyingPartyCreateAuthURIRequest
      (\ s a ->
         s{_rpcauIdentitytoolkitRelyingPartyCreateAuthURIRequest
             = a})

-- | OAuth 2.0 token for the current user.
rpcauOAuthToken :: Lens' RelyingPartyCreateAuthURI' (Maybe OAuthToken)
rpcauOAuthToken
  = lens _rpcauOAuthToken
      (\ s a -> s{_rpcauOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
rpcauFields :: Lens' RelyingPartyCreateAuthURI' (Maybe Text)
rpcauFields
  = lens _rpcauFields (\ s a -> s{_rpcauFields = a})

instance GoogleAuth RelyingPartyCreateAuthURI' where
        authKey = rpcauKey . _Just
        authToken = rpcauOAuthToken . _Just

instance GoogleRequest RelyingPartyCreateAuthURI'
         where
        type Rs RelyingPartyCreateAuthURI' =
             CreateAuthURIResponse
        request = requestWithRoute defReq identityToolkitURL
        requestWithRoute r u RelyingPartyCreateAuthURI'{..}
          = go _rpcauQuotaUser (Just _rpcauPrettyPrint)
              _rpcauUserIP
              _rpcauKey
              _rpcauOAuthToken
              _rpcauFields
              (Just AltJSON)
              _rpcauIdentitytoolkitRelyingPartyCreateAuthURIRequest
          where go
                  = clientWithRoute
                      (Proxy :: Proxy RelyingPartyCreateAuthURIResource)
                      r
                      u
