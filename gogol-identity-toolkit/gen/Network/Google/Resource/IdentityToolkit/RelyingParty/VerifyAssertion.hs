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
-- Module      : Network.Google.Resource.IdentityToolkit.RelyingParty.VerifyAssertion
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Verifies the assertion returned by the IdP.
--
-- /See:/ <https://developers.google.com/identity-toolkit/v3/ Google Identity Toolkit API Reference> for @identitytoolkit.relyingparty.verifyAssertion@.
module Network.Google.Resource.IdentityToolkit.RelyingParty.VerifyAssertion
    (
    -- * REST Resource
      RelyingPartyVerifyAssertionResource

    -- * Creating a Request
    , relyingPartyVerifyAssertion
    , RelyingPartyVerifyAssertion

    -- * Request Lenses
    , rpvaPayload
    ) where

import           Network.Google.IdentityToolkit.Types
import           Network.Google.Prelude

-- | A resource alias for @identitytoolkit.relyingparty.verifyAssertion@ method which the
-- 'RelyingPartyVerifyAssertion' request conforms to.
type RelyingPartyVerifyAssertionResource =
     "identitytoolkit" :>
       "v3" :>
         "relyingparty" :>
           "verifyAssertion" :>
             QueryParam "alt" AltJSON :>
               ReqBody '[JSON]
                 IdentitytoolkitRelyingPartyVerifyAssertionRequest
                 :> Post '[JSON] VerifyAssertionResponse

-- | Verifies the assertion returned by the IdP.
--
-- /See:/ 'relyingPartyVerifyAssertion' smart constructor.
newtype RelyingPartyVerifyAssertion =
  RelyingPartyVerifyAssertion'
    { _rpvaPayload :: IdentitytoolkitRelyingPartyVerifyAssertionRequest
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'RelyingPartyVerifyAssertion' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rpvaPayload'
relyingPartyVerifyAssertion
    :: IdentitytoolkitRelyingPartyVerifyAssertionRequest -- ^ 'rpvaPayload'
    -> RelyingPartyVerifyAssertion
relyingPartyVerifyAssertion pRpvaPayload_ =
  RelyingPartyVerifyAssertion' {_rpvaPayload = pRpvaPayload_}


-- | Multipart request metadata.
rpvaPayload :: Lens' RelyingPartyVerifyAssertion IdentitytoolkitRelyingPartyVerifyAssertionRequest
rpvaPayload
  = lens _rpvaPayload (\ s a -> s{_rpvaPayload = a})

instance GoogleRequest RelyingPartyVerifyAssertion
         where
        type Rs RelyingPartyVerifyAssertion =
             VerifyAssertionResponse
        type Scopes RelyingPartyVerifyAssertion =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient RelyingPartyVerifyAssertion'{..}
          = go (Just AltJSON) _rpvaPayload
              identityToolkitService
          where go
                  = buildClient
                      (Proxy :: Proxy RelyingPartyVerifyAssertionResource)
                      mempty
