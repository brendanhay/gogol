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
-- Module      : Network.Google.Resource.IdentityToolkit.RelyingPartyy.GetAccountInfo
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Returns the account info.
--
-- /See:/ <https://developers.google.com/identity-toolkit/v3/ Google Identity Toolkit API Reference> for @IdentitytoolkitRelyingPartyyGetAccountInfo@.
module Network.Google.Resource.IdentityToolkit.RelyingPartyy.GetAccountInfo
    (
    -- * REST Resource
      RelyingPartyyGetAccountInfoResource

    -- * Creating a Request
    , relyingPartyyGetAccountInfo'
    , RelyingPartyyGetAccountInfo'

    -- * Request Lenses
    , rpgaiQuotaUser
    , rpgaiPrettyPrint
    , rpgaiUserIP
    , rpgaiKey
    , rpgaiIdentitytoolkitRelyingPartyyGetAccountInfoRequest
    , rpgaiOAuthToken
    , rpgaiFields
    ) where

import           Network.Google.IdentityToolkit.Types
import           Network.Google.Prelude

-- | A resource alias for @IdentitytoolkitRelyingPartyyGetAccountInfo@ which the
-- 'RelyingPartyyGetAccountInfo'' request conforms to.
type RelyingPartyyGetAccountInfoResource =
     "getAccountInfo" :>
       QueryParam "quotaUser" Text :>
         QueryParam "prettyPrint" Bool :>
           QueryParam "userIp" Text :>
             QueryParam "key" Key :>
               QueryParam "oauth_token" OAuthToken :>
                 QueryParam "fields" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON]
                       IdentitytoolkitRelyingPartyyGetAccountInfoRequest
                       :> Post '[JSON] GetAccountInfoResponse

-- | Returns the account info.
--
-- /See:/ 'relyingPartyyGetAccountInfo'' smart constructor.
data RelyingPartyyGetAccountInfo' = RelyingPartyyGetAccountInfo'
    { _rpgaiQuotaUser                                         :: !(Maybe Text)
    , _rpgaiPrettyPrint                                       :: !Bool
    , _rpgaiUserIP                                            :: !(Maybe Text)
    , _rpgaiKey                                               :: !(Maybe Key)
    , _rpgaiIdentitytoolkitRelyingPartyyGetAccountInfoRequest :: !IdentitytoolkitRelyingPartyyGetAccountInfoRequest
    , _rpgaiOAuthToken                                        :: !(Maybe OAuthToken)
    , _rpgaiFields                                            :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'RelyingPartyyGetAccountInfo'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rpgaiQuotaUser'
--
-- * 'rpgaiPrettyPrint'
--
-- * 'rpgaiUserIP'
--
-- * 'rpgaiKey'
--
-- * 'rpgaiIdentitytoolkitRelyingPartyyGetAccountInfoRequest'
--
-- * 'rpgaiOAuthToken'
--
-- * 'rpgaiFields'
relyingPartyyGetAccountInfo'
    :: IdentitytoolkitRelyingPartyyGetAccountInfoRequest -- ^ 'IdentitytoolkitRelyingPartyyGetAccountInfoRequest'
    -> RelyingPartyyGetAccountInfo'
relyingPartyyGetAccountInfo' pRpgaiIdentitytoolkitRelyingPartyyGetAccountInfoRequest_ =
    RelyingPartyyGetAccountInfo'
    { _rpgaiQuotaUser = Nothing
    , _rpgaiPrettyPrint = True
    , _rpgaiUserIP = Nothing
    , _rpgaiKey = Nothing
    , _rpgaiIdentitytoolkitRelyingPartyyGetAccountInfoRequest = pRpgaiIdentitytoolkitRelyingPartyyGetAccountInfoRequest_
    , _rpgaiOAuthToken = Nothing
    , _rpgaiFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
rpgaiQuotaUser :: Lens' RelyingPartyyGetAccountInfo' (Maybe Text)
rpgaiQuotaUser
  = lens _rpgaiQuotaUser
      (\ s a -> s{_rpgaiQuotaUser = a})

-- | Returns response with indentations and line breaks.
rpgaiPrettyPrint :: Lens' RelyingPartyyGetAccountInfo' Bool
rpgaiPrettyPrint
  = lens _rpgaiPrettyPrint
      (\ s a -> s{_rpgaiPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
rpgaiUserIP :: Lens' RelyingPartyyGetAccountInfo' (Maybe Text)
rpgaiUserIP
  = lens _rpgaiUserIP (\ s a -> s{_rpgaiUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
rpgaiKey :: Lens' RelyingPartyyGetAccountInfo' (Maybe Key)
rpgaiKey = lens _rpgaiKey (\ s a -> s{_rpgaiKey = a})

-- | Multipart request metadata.
rpgaiIdentitytoolkitRelyingPartyyGetAccountInfoRequest :: Lens' RelyingPartyyGetAccountInfo' IdentitytoolkitRelyingPartyyGetAccountInfoRequest
rpgaiIdentitytoolkitRelyingPartyyGetAccountInfoRequest
  = lens
      _rpgaiIdentitytoolkitRelyingPartyyGetAccountInfoRequest
      (\ s a ->
         s{_rpgaiIdentitytoolkitRelyingPartyyGetAccountInfoRequest
             = a})

-- | OAuth 2.0 token for the current user.
rpgaiOAuthToken :: Lens' RelyingPartyyGetAccountInfo' (Maybe OAuthToken)
rpgaiOAuthToken
  = lens _rpgaiOAuthToken
      (\ s a -> s{_rpgaiOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
rpgaiFields :: Lens' RelyingPartyyGetAccountInfo' (Maybe Text)
rpgaiFields
  = lens _rpgaiFields (\ s a -> s{_rpgaiFields = a})

instance GoogleAuth RelyingPartyyGetAccountInfo'
         where
        authKey = rpgaiKey . _Just
        authToken = rpgaiOAuthToken . _Just

instance GoogleRequest RelyingPartyyGetAccountInfo'
         where
        type Rs RelyingPartyyGetAccountInfo' =
             GetAccountInfoResponse
        request = requestWithRoute defReq identityToolkitURL
        requestWithRoute r u RelyingPartyyGetAccountInfo'{..}
          = go _rpgaiQuotaUser (Just _rpgaiPrettyPrint)
              _rpgaiUserIP
              _rpgaiKey
              _rpgaiOAuthToken
              _rpgaiFields
              (Just AltJSON)
              _rpgaiIdentitytoolkitRelyingPartyyGetAccountInfoRequest
          where go
                  = clientWithRoute
                      (Proxy :: Proxy RelyingPartyyGetAccountInfoResource)
                      r
                      u
