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
-- Module      : Network.Google.Resource.IdentityToolkit.RelyingParty.SetAccountInfo
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Set account info for a user.
--
-- /See:/ <https://developers.google.com/identity-toolkit/v3/ Google Identity Toolkit API Reference> for @IdentitytoolkitRelyingPartySetAccountInfo@.
module Network.Google.Resource.IdentityToolkit.RelyingParty.SetAccountInfo
    (
    -- * REST Resource
      RelyingPartySetAccountInfoResource

    -- * Creating a Request
    , relyingPartySetAccountInfo'
    , RelyingPartySetAccountInfo'

    -- * Request Lenses
    , rpsaiQuotaUser
    , rpsaiPrettyPrint
    , rpsaiUserIP
    , rpsaiIdentitytoolkitRelyingPartySetAccountInfoRequest
    , rpsaiKey
    , rpsaiOAuthToken
    , rpsaiFields
    ) where

import           Network.Google.IdentityToolkit.Types
import           Network.Google.Prelude

-- | A resource alias for @IdentitytoolkitRelyingPartySetAccountInfo@ which the
-- 'RelyingPartySetAccountInfo'' request conforms to.
type RelyingPartySetAccountInfoResource =
     "setAccountInfo" :>
       QueryParam "quotaUser" Text :>
         QueryParam "prettyPrint" Bool :>
           QueryParam "userIp" Text :>
             QueryParam "key" Key :>
               QueryParam "oauth_token" OAuthToken :>
                 QueryParam "fields" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON]
                       IdentitytoolkitRelyingPartySetAccountInfoRequest
                       :> Post '[JSON] SetAccountInfoResponse

-- | Set account info for a user.
--
-- /See:/ 'relyingPartySetAccountInfo'' smart constructor.
data RelyingPartySetAccountInfo' = RelyingPartySetAccountInfo'
    { _rpsaiQuotaUser                                        :: !(Maybe Text)
    , _rpsaiPrettyPrint                                      :: !Bool
    , _rpsaiUserIP                                           :: !(Maybe Text)
    , _rpsaiIdentitytoolkitRelyingPartySetAccountInfoRequest :: !IdentitytoolkitRelyingPartySetAccountInfoRequest
    , _rpsaiKey                                              :: !(Maybe Key)
    , _rpsaiOAuthToken                                       :: !(Maybe OAuthToken)
    , _rpsaiFields                                           :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'RelyingPartySetAccountInfo'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rpsaiQuotaUser'
--
-- * 'rpsaiPrettyPrint'
--
-- * 'rpsaiUserIP'
--
-- * 'rpsaiIdentitytoolkitRelyingPartySetAccountInfoRequest'
--
-- * 'rpsaiKey'
--
-- * 'rpsaiOAuthToken'
--
-- * 'rpsaiFields'
relyingPartySetAccountInfo'
    :: IdentitytoolkitRelyingPartySetAccountInfoRequest -- ^ 'IdentitytoolkitRelyingPartySetAccountInfoRequest'
    -> RelyingPartySetAccountInfo'
relyingPartySetAccountInfo' pRpsaiIdentitytoolkitRelyingPartySetAccountInfoRequest_ =
    RelyingPartySetAccountInfo'
    { _rpsaiQuotaUser = Nothing
    , _rpsaiPrettyPrint = True
    , _rpsaiUserIP = Nothing
    , _rpsaiIdentitytoolkitRelyingPartySetAccountInfoRequest = pRpsaiIdentitytoolkitRelyingPartySetAccountInfoRequest_
    , _rpsaiKey = Nothing
    , _rpsaiOAuthToken = Nothing
    , _rpsaiFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
rpsaiQuotaUser :: Lens' RelyingPartySetAccountInfo' (Maybe Text)
rpsaiQuotaUser
  = lens _rpsaiQuotaUser
      (\ s a -> s{_rpsaiQuotaUser = a})

-- | Returns response with indentations and line breaks.
rpsaiPrettyPrint :: Lens' RelyingPartySetAccountInfo' Bool
rpsaiPrettyPrint
  = lens _rpsaiPrettyPrint
      (\ s a -> s{_rpsaiPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
rpsaiUserIP :: Lens' RelyingPartySetAccountInfo' (Maybe Text)
rpsaiUserIP
  = lens _rpsaiUserIP (\ s a -> s{_rpsaiUserIP = a})

-- | Multipart request metadata.
rpsaiIdentitytoolkitRelyingPartySetAccountInfoRequest :: Lens' RelyingPartySetAccountInfo' IdentitytoolkitRelyingPartySetAccountInfoRequest
rpsaiIdentitytoolkitRelyingPartySetAccountInfoRequest
  = lens
      _rpsaiIdentitytoolkitRelyingPartySetAccountInfoRequest
      (\ s a ->
         s{_rpsaiIdentitytoolkitRelyingPartySetAccountInfoRequest
             = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
rpsaiKey :: Lens' RelyingPartySetAccountInfo' (Maybe Key)
rpsaiKey = lens _rpsaiKey (\ s a -> s{_rpsaiKey = a})

-- | OAuth 2.0 token for the current user.
rpsaiOAuthToken :: Lens' RelyingPartySetAccountInfo' (Maybe OAuthToken)
rpsaiOAuthToken
  = lens _rpsaiOAuthToken
      (\ s a -> s{_rpsaiOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
rpsaiFields :: Lens' RelyingPartySetAccountInfo' (Maybe Text)
rpsaiFields
  = lens _rpsaiFields (\ s a -> s{_rpsaiFields = a})

instance GoogleAuth RelyingPartySetAccountInfo' where
        authKey = rpsaiKey . _Just
        authToken = rpsaiOAuthToken . _Just

instance GoogleRequest RelyingPartySetAccountInfo'
         where
        type Rs RelyingPartySetAccountInfo' =
             SetAccountInfoResponse
        request = requestWithRoute defReq identityToolkitURL
        requestWithRoute r u RelyingPartySetAccountInfo'{..}
          = go _rpsaiQuotaUser (Just _rpsaiPrettyPrint)
              _rpsaiUserIP
              _rpsaiKey
              _rpsaiOAuthToken
              _rpsaiFields
              (Just AltJSON)
              _rpsaiIdentitytoolkitRelyingPartySetAccountInfoRequest
          where go
                  = clientWithRoute
                      (Proxy :: Proxy RelyingPartySetAccountInfoResource)
                      r
                      u
