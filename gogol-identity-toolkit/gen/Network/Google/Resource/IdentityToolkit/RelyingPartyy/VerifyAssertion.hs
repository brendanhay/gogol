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
-- Module      : Network.Google.Resource.IdentityToolkit.RelyingPartyy.VerifyAssertion
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Verifies the assertion returned by the IdP.
--
-- /See:/ <https://developers.google.com/identity-toolkit/v3/ Google Identity Toolkit API Reference> for @IdentitytoolkitRelyingPartyyVerifyAssertion@.
module Network.Google.Resource.IdentityToolkit.RelyingPartyy.VerifyAssertion
    (
    -- * REST Resource
      RelyingPartyyVerifyAssertionResource

    -- * Creating a Request
    , relyingPartyyVerifyAssertion'
    , RelyingPartyyVerifyAssertion'

    -- * Request Lenses
    , rpvaQuotaUser
    , rpvaPrettyPrint
    , rpvaUserIP
    , rpvaKey
    , rpvaOAuthToken
    , rpvaIdentitytoolkitRelyingPartyyVerifyAssertionRequest
    , rpvaFields
    ) where

import           Network.Google.IdentityToolkit.Types
import           Network.Google.Prelude

-- | A resource alias for @IdentitytoolkitRelyingPartyyVerifyAssertion@ which the
-- 'RelyingPartyyVerifyAssertion'' request conforms to.
type RelyingPartyyVerifyAssertionResource =
     "verifyAssertion" :>
       QueryParam "quotaUser" Text :>
         QueryParam "prettyPrint" Bool :>
           QueryParam "userIp" Text :>
             QueryParam "key" Key :>
               QueryParam "oauth_token" OAuthToken :>
                 QueryParam "fields" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON]
                       IdentitytoolkitRelyingPartyyVerifyAssertionRequest
                       :> Post '[JSON] VerifyAssertionResponse

-- | Verifies the assertion returned by the IdP.
--
-- /See:/ 'relyingPartyyVerifyAssertion'' smart constructor.
data RelyingPartyyVerifyAssertion' = RelyingPartyyVerifyAssertion'
    { _rpvaQuotaUser                                          :: !(Maybe Text)
    , _rpvaPrettyPrint                                        :: !Bool
    , _rpvaUserIP                                             :: !(Maybe Text)
    , _rpvaKey                                                :: !(Maybe Key)
    , _rpvaOAuthToken                                         :: !(Maybe OAuthToken)
    , _rpvaIdentitytoolkitRelyingPartyyVerifyAssertionRequest :: !IdentitytoolkitRelyingPartyyVerifyAssertionRequest
    , _rpvaFields                                             :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'RelyingPartyyVerifyAssertion'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rpvaQuotaUser'
--
-- * 'rpvaPrettyPrint'
--
-- * 'rpvaUserIP'
--
-- * 'rpvaKey'
--
-- * 'rpvaOAuthToken'
--
-- * 'rpvaIdentitytoolkitRelyingPartyyVerifyAssertionRequest'
--
-- * 'rpvaFields'
relyingPartyyVerifyAssertion'
    :: IdentitytoolkitRelyingPartyyVerifyAssertionRequest -- ^ 'IdentitytoolkitRelyingPartyyVerifyAssertionRequest'
    -> RelyingPartyyVerifyAssertion'
relyingPartyyVerifyAssertion' pRpvaIdentitytoolkitRelyingPartyyVerifyAssertionRequest_ =
    RelyingPartyyVerifyAssertion'
    { _rpvaQuotaUser = Nothing
    , _rpvaPrettyPrint = True
    , _rpvaUserIP = Nothing
    , _rpvaKey = Nothing
    , _rpvaOAuthToken = Nothing
    , _rpvaIdentitytoolkitRelyingPartyyVerifyAssertionRequest = pRpvaIdentitytoolkitRelyingPartyyVerifyAssertionRequest_
    , _rpvaFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
rpvaQuotaUser :: Lens' RelyingPartyyVerifyAssertion' (Maybe Text)
rpvaQuotaUser
  = lens _rpvaQuotaUser
      (\ s a -> s{_rpvaQuotaUser = a})

-- | Returns response with indentations and line breaks.
rpvaPrettyPrint :: Lens' RelyingPartyyVerifyAssertion' Bool
rpvaPrettyPrint
  = lens _rpvaPrettyPrint
      (\ s a -> s{_rpvaPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
rpvaUserIP :: Lens' RelyingPartyyVerifyAssertion' (Maybe Text)
rpvaUserIP
  = lens _rpvaUserIP (\ s a -> s{_rpvaUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
rpvaKey :: Lens' RelyingPartyyVerifyAssertion' (Maybe Key)
rpvaKey = lens _rpvaKey (\ s a -> s{_rpvaKey = a})

-- | OAuth 2.0 token for the current user.
rpvaOAuthToken :: Lens' RelyingPartyyVerifyAssertion' (Maybe OAuthToken)
rpvaOAuthToken
  = lens _rpvaOAuthToken
      (\ s a -> s{_rpvaOAuthToken = a})

-- | Multipart request metadata.
rpvaIdentitytoolkitRelyingPartyyVerifyAssertionRequest :: Lens' RelyingPartyyVerifyAssertion' IdentitytoolkitRelyingPartyyVerifyAssertionRequest
rpvaIdentitytoolkitRelyingPartyyVerifyAssertionRequest
  = lens
      _rpvaIdentitytoolkitRelyingPartyyVerifyAssertionRequest
      (\ s a ->
         s{_rpvaIdentitytoolkitRelyingPartyyVerifyAssertionRequest
             = a})

-- | Selector specifying which fields to include in a partial response.
rpvaFields :: Lens' RelyingPartyyVerifyAssertion' (Maybe Text)
rpvaFields
  = lens _rpvaFields (\ s a -> s{_rpvaFields = a})

instance GoogleAuth RelyingPartyyVerifyAssertion'
         where
        authKey = rpvaKey . _Just
        authToken = rpvaOAuthToken . _Just

instance GoogleRequest RelyingPartyyVerifyAssertion'
         where
        type Rs RelyingPartyyVerifyAssertion' =
             VerifyAssertionResponse
        request = requestWithRoute defReq identityToolkitURL
        requestWithRoute r u
          RelyingPartyyVerifyAssertion'{..}
          = go _rpvaQuotaUser (Just _rpvaPrettyPrint)
              _rpvaUserIP
              _rpvaKey
              _rpvaOAuthToken
              _rpvaFields
              (Just AltJSON)
              _rpvaIdentitytoolkitRelyingPartyyVerifyAssertionRequest
          where go
                  = clientWithRoute
                      (Proxy :: Proxy RelyingPartyyVerifyAssertionResource)
                      r
                      u
