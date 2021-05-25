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
-- Module      : Network.Google.Resource.IdentityToolkit.RelyingParty.DeleteAccount
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Delete user account.
--
-- /See:/ <https://developers.google.com/identity-toolkit/v3/ Google Identity Toolkit API Reference> for @identitytoolkit.relyingparty.deleteAccount@.
module Network.Google.Resource.IdentityToolkit.RelyingParty.DeleteAccount
    (
    -- * REST Resource
      RelyingPartyDeleteAccountResource

    -- * Creating a Request
    , relyingPartyDeleteAccount
    , RelyingPartyDeleteAccount

    -- * Request Lenses
    , rPayload
    ) where

import Network.Google.IdentityToolkit.Types
import Network.Google.Prelude

-- | A resource alias for @identitytoolkit.relyingparty.deleteAccount@ method which the
-- 'RelyingPartyDeleteAccount' request conforms to.
type RelyingPartyDeleteAccountResource =
     "identitytoolkit" :>
       "v3" :>
         "relyingparty" :>
           "deleteAccount" :>
             QueryParam "alt" AltJSON :>
               ReqBody '[JSON]
                 IdentitytoolkitRelyingPartyDeleteAccountRequest
                 :> Post '[JSON] DeleteAccountResponse

-- | Delete user account.
--
-- /See:/ 'relyingPartyDeleteAccount' smart constructor.
newtype RelyingPartyDeleteAccount =
  RelyingPartyDeleteAccount'
    { _rPayload :: IdentitytoolkitRelyingPartyDeleteAccountRequest
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'RelyingPartyDeleteAccount' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rPayload'
relyingPartyDeleteAccount
    :: IdentitytoolkitRelyingPartyDeleteAccountRequest -- ^ 'rPayload'
    -> RelyingPartyDeleteAccount
relyingPartyDeleteAccount pRPayload_ =
  RelyingPartyDeleteAccount' {_rPayload = pRPayload_}


-- | Multipart request metadata.
rPayload :: Lens' RelyingPartyDeleteAccount IdentitytoolkitRelyingPartyDeleteAccountRequest
rPayload = lens _rPayload (\ s a -> s{_rPayload = a})

instance GoogleRequest RelyingPartyDeleteAccount
         where
        type Rs RelyingPartyDeleteAccount =
             DeleteAccountResponse
        type Scopes RelyingPartyDeleteAccount =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient RelyingPartyDeleteAccount'{..}
          = go (Just AltJSON) _rPayload identityToolkitService
          where go
                  = buildClient
                      (Proxy :: Proxy RelyingPartyDeleteAccountResource)
                      mempty
