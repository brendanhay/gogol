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
-- Module      : Network.Google.Resource.IdentityToolkit.RelyingParty.VerifyPassword
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Verifies the user entered password.
--
-- /See:/ <https://developers.google.com/identity-toolkit/v3/ Google Identity Toolkit API Reference> for @identitytoolkit.relyingparty.verifyPassword@.
module Network.Google.Resource.IdentityToolkit.RelyingParty.VerifyPassword
    (
    -- * REST Resource
      RelyingPartyVerifyPasswordResource

    -- * Creating a Request
    , relyingPartyVerifyPassword
    , RelyingPartyVerifyPassword

    -- * Request Lenses
    , rpvpPayload
    ) where

import Network.Google.IdentityToolkit.Types
import Network.Google.Prelude

-- | A resource alias for @identitytoolkit.relyingparty.verifyPassword@ method which the
-- 'RelyingPartyVerifyPassword' request conforms to.
type RelyingPartyVerifyPasswordResource =
     "identitytoolkit" :>
       "v3" :>
         "relyingparty" :>
           "verifyPassword" :>
             QueryParam "alt" AltJSON :>
               ReqBody '[JSON]
                 IdentitytoolkitRelyingPartyVerifyPasswordRequest
                 :> Post '[JSON] VerifyPasswordResponse

-- | Verifies the user entered password.
--
-- /See:/ 'relyingPartyVerifyPassword' smart constructor.
newtype RelyingPartyVerifyPassword =
  RelyingPartyVerifyPassword'
    { _rpvpPayload :: IdentitytoolkitRelyingPartyVerifyPasswordRequest
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'RelyingPartyVerifyPassword' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rpvpPayload'
relyingPartyVerifyPassword
    :: IdentitytoolkitRelyingPartyVerifyPasswordRequest -- ^ 'rpvpPayload'
    -> RelyingPartyVerifyPassword
relyingPartyVerifyPassword pRpvpPayload_ =
  RelyingPartyVerifyPassword' {_rpvpPayload = pRpvpPayload_}


-- | Multipart request metadata.
rpvpPayload :: Lens' RelyingPartyVerifyPassword IdentitytoolkitRelyingPartyVerifyPasswordRequest
rpvpPayload
  = lens _rpvpPayload (\ s a -> s{_rpvpPayload = a})

instance GoogleRequest RelyingPartyVerifyPassword
         where
        type Rs RelyingPartyVerifyPassword =
             VerifyPasswordResponse
        type Scopes RelyingPartyVerifyPassword =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient RelyingPartyVerifyPassword'{..}
          = go (Just AltJSON) _rpvpPayload
              identityToolkitService
          where go
                  = buildClient
                      (Proxy :: Proxy RelyingPartyVerifyPasswordResource)
                      mempty
