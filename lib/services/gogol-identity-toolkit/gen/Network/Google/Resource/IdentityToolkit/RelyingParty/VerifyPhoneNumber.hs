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
-- Module      : Network.Google.Resource.IdentityToolkit.RelyingParty.VerifyPhoneNumber
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Verifies ownership of a phone number and creates\/updates the user
-- account accordingly.
--
-- /See:/ <https://developers.google.com/identity-toolkit/v3/ Google Identity Toolkit API Reference> for @identitytoolkit.relyingparty.verifyPhoneNumber@.
module Network.Google.Resource.IdentityToolkit.RelyingParty.VerifyPhoneNumber
    (
    -- * REST Resource
      RelyingPartyVerifyPhoneNumberResource

    -- * Creating a Request
    , relyingPartyVerifyPhoneNumber
    , RelyingPartyVerifyPhoneNumber

    -- * Request Lenses
    , rpvpnPayload
    ) where

import Network.Google.IdentityToolkit.Types
import Network.Google.Prelude

-- | A resource alias for @identitytoolkit.relyingparty.verifyPhoneNumber@ method which the
-- 'RelyingPartyVerifyPhoneNumber' request conforms to.
type RelyingPartyVerifyPhoneNumberResource =
     "identitytoolkit" :>
       "v3" :>
         "relyingparty" :>
           "verifyPhoneNumber" :>
             QueryParam "alt" AltJSON :>
               ReqBody '[JSON]
                 IdentitytoolkitRelyingPartyVerifyPhoneNumberRequest
                 :>
                 Post '[JSON]
                   IdentitytoolkitRelyingPartyVerifyPhoneNumberResponse

-- | Verifies ownership of a phone number and creates\/updates the user
-- account accordingly.
--
-- /See:/ 'relyingPartyVerifyPhoneNumber' smart constructor.
newtype RelyingPartyVerifyPhoneNumber =
  RelyingPartyVerifyPhoneNumber'
    { _rpvpnPayload :: IdentitytoolkitRelyingPartyVerifyPhoneNumberRequest
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'RelyingPartyVerifyPhoneNumber' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rpvpnPayload'
relyingPartyVerifyPhoneNumber
    :: IdentitytoolkitRelyingPartyVerifyPhoneNumberRequest -- ^ 'rpvpnPayload'
    -> RelyingPartyVerifyPhoneNumber
relyingPartyVerifyPhoneNumber pRpvpnPayload_ =
  RelyingPartyVerifyPhoneNumber' {_rpvpnPayload = pRpvpnPayload_}


-- | Multipart request metadata.
rpvpnPayload :: Lens' RelyingPartyVerifyPhoneNumber IdentitytoolkitRelyingPartyVerifyPhoneNumberRequest
rpvpnPayload
  = lens _rpvpnPayload (\ s a -> s{_rpvpnPayload = a})

instance GoogleRequest RelyingPartyVerifyPhoneNumber
         where
        type Rs RelyingPartyVerifyPhoneNumber =
             IdentitytoolkitRelyingPartyVerifyPhoneNumberResponse
        type Scopes RelyingPartyVerifyPhoneNumber =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient RelyingPartyVerifyPhoneNumber'{..}
          = go (Just AltJSON) _rpvpnPayload
              identityToolkitService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy RelyingPartyVerifyPhoneNumberResource)
                      mempty
