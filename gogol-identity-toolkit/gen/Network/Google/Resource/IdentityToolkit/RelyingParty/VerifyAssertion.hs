{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE FlexibleInstances  #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.IdentityToolkit.RelyingParty.VerifyAssertion
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Verifies the assertion returned by the IdP.
--
-- /See:/ <https://developers.google.com/identity-toolkit/v3/ Google Identity Toolkit API Reference> for @IdentitytoolkitRelyingPartyVerifyAssertion@.
module Network.Google.Resource.IdentityToolkit.RelyingParty.VerifyAssertion
    (
    -- * REST Resource
      RelyingPartyVerifyAssertionResource

    -- * Creating a Request
    , relyingPartyVerifyAssertion'
    , RelyingPartyVerifyAssertion'

    -- * Request Lenses
    , rpvaQuotaUser
    , rpvaPrettyPrint
    , rpvaUserIP
    , rpvaPayload
    , rpvaKey
    , rpvaOAuthToken
    , rpvaFields
    ) where

import           Network.Google.IdentityToolkit.Types
import           Network.Google.Prelude

-- | A resource alias for @IdentitytoolkitRelyingPartyVerifyAssertion@ which the
-- 'RelyingPartyVerifyAssertion'' request conforms to.
type RelyingPartyVerifyAssertionResource =
     "verifyAssertion" :>
       QueryParam "quotaUser" Text :>
         QueryParam "prettyPrint" Bool :>
           QueryParam "userIp" Text :>
             QueryParam "fields" Text :>
               QueryParam "key" Key :>
                 QueryParam "oauth_token" OAuthToken :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON]
                       IdentitytoolkitRelyingPartyVerifyAssertionRequest
                       :> Post '[JSON] VerifyAssertionResponse

-- | Verifies the assertion returned by the IdP.
--
-- /See:/ 'relyingPartyVerifyAssertion'' smart constructor.
data RelyingPartyVerifyAssertion' = RelyingPartyVerifyAssertion'
    { _rpvaQuotaUser   :: !(Maybe Text)
    , _rpvaPrettyPrint :: !Bool
    , _rpvaUserIP      :: !(Maybe Text)
    , _rpvaPayload     :: !IdentitytoolkitRelyingPartyVerifyAssertionRequest
    , _rpvaKey         :: !(Maybe Key)
    , _rpvaOAuthToken  :: !(Maybe OAuthToken)
    , _rpvaFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'RelyingPartyVerifyAssertion'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rpvaQuotaUser'
--
-- * 'rpvaPrettyPrint'
--
-- * 'rpvaUserIP'
--
-- * 'rpvaPayload'
--
-- * 'rpvaKey'
--
-- * 'rpvaOAuthToken'
--
-- * 'rpvaFields'
relyingPartyVerifyAssertion'
    :: IdentitytoolkitRelyingPartyVerifyAssertionRequest -- ^ 'payload'
    -> RelyingPartyVerifyAssertion'
relyingPartyVerifyAssertion' pRpvaPayload_ =
    RelyingPartyVerifyAssertion'
    { _rpvaQuotaUser = Nothing
    , _rpvaPrettyPrint = True
    , _rpvaUserIP = Nothing
    , _rpvaPayload = pRpvaPayload_
    , _rpvaKey = Nothing
    , _rpvaOAuthToken = Nothing
    , _rpvaFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
rpvaQuotaUser :: Lens' RelyingPartyVerifyAssertion' (Maybe Text)
rpvaQuotaUser
  = lens _rpvaQuotaUser
      (\ s a -> s{_rpvaQuotaUser = a})

-- | Returns response with indentations and line breaks.
rpvaPrettyPrint :: Lens' RelyingPartyVerifyAssertion' Bool
rpvaPrettyPrint
  = lens _rpvaPrettyPrint
      (\ s a -> s{_rpvaPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
rpvaUserIP :: Lens' RelyingPartyVerifyAssertion' (Maybe Text)
rpvaUserIP
  = lens _rpvaUserIP (\ s a -> s{_rpvaUserIP = a})

-- | Multipart request metadata.
rpvaPayload :: Lens' RelyingPartyVerifyAssertion' IdentitytoolkitRelyingPartyVerifyAssertionRequest
rpvaPayload
  = lens _rpvaPayload (\ s a -> s{_rpvaPayload = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
rpvaKey :: Lens' RelyingPartyVerifyAssertion' (Maybe Key)
rpvaKey = lens _rpvaKey (\ s a -> s{_rpvaKey = a})

-- | OAuth 2.0 token for the current user.
rpvaOAuthToken :: Lens' RelyingPartyVerifyAssertion' (Maybe OAuthToken)
rpvaOAuthToken
  = lens _rpvaOAuthToken
      (\ s a -> s{_rpvaOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
rpvaFields :: Lens' RelyingPartyVerifyAssertion' (Maybe Text)
rpvaFields
  = lens _rpvaFields (\ s a -> s{_rpvaFields = a})

instance GoogleAuth RelyingPartyVerifyAssertion'
         where
        authKey = rpvaKey . _Just
        authToken = rpvaOAuthToken . _Just

instance GoogleRequest RelyingPartyVerifyAssertion'
         where
        type Rs RelyingPartyVerifyAssertion' =
             VerifyAssertionResponse
        request = requestWithRoute defReq identityToolkitURL
        requestWithRoute r u RelyingPartyVerifyAssertion'{..}
          = go _rpvaQuotaUser (Just _rpvaPrettyPrint)
              _rpvaUserIP
              _rpvaFields
              _rpvaKey
              _rpvaOAuthToken
              (Just AltJSON)
              _rpvaPayload
          where go
                  = clientWithRoute
                      (Proxy :: Proxy RelyingPartyVerifyAssertionResource)
                      r
                      u
