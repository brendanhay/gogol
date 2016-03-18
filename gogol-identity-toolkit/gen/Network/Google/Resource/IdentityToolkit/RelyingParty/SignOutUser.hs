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
-- Module      : Network.Google.Resource.IdentityToolkit.RelyingParty.SignOutUser
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Sign out user.
--
-- /See:/ <https://developers.google.com/identity-toolkit/v3/ Google Identity Toolkit API Reference> for @identitytoolkit.relyingparty.signOutUser@.
module Network.Google.Resource.IdentityToolkit.RelyingParty.SignOutUser
    (
    -- * REST Resource
      RelyingPartySignOutUserResource

    -- * Creating a Request
    , relyingPartySignOutUser
    , RelyingPartySignOutUser

    -- * Request Lenses
    , rpsouPayload
    ) where

import           Network.Google.IdentityToolkit.Types
import           Network.Google.Prelude

-- | A resource alias for @identitytoolkit.relyingparty.signOutUser@ method which the
-- 'RelyingPartySignOutUser' request conforms to.
type RelyingPartySignOutUserResource =
     "identitytoolkit" :>
       "v3" :>
         "relyingparty" :>
           "signOutUser" :>
             QueryParam "alt" AltJSON :>
               ReqBody '[JSON]
                 IdentitytoolkitRelyingPartySignOutUserRequest
                 :>
                 Post '[JSON]
                   IdentitytoolkitRelyingPartySignOutUserResponse

-- | Sign out user.
--
-- /See:/ 'relyingPartySignOutUser' smart constructor.
newtype RelyingPartySignOutUser = RelyingPartySignOutUser
    { _rpsouPayload :: IdentitytoolkitRelyingPartySignOutUserRequest
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'RelyingPartySignOutUser' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rpsouPayload'
relyingPartySignOutUser
    :: IdentitytoolkitRelyingPartySignOutUserRequest -- ^ 'rpsouPayload'
    -> RelyingPartySignOutUser
relyingPartySignOutUser pRpsouPayload_ =
    RelyingPartySignOutUser
    { _rpsouPayload = pRpsouPayload_
    }

-- | Multipart request metadata.
rpsouPayload :: Lens' RelyingPartySignOutUser IdentitytoolkitRelyingPartySignOutUserRequest
rpsouPayload
  = lens _rpsouPayload (\ s a -> s{_rpsouPayload = a})

instance GoogleRequest RelyingPartySignOutUser where
        type Rs RelyingPartySignOutUser =
             IdentitytoolkitRelyingPartySignOutUserResponse
        requestClient RelyingPartySignOutUser{..}
          = go (Just AltJSON) _rpsouPayload
              identityToolkitService
          where go
                  = buildClient
                      (Proxy :: Proxy RelyingPartySignOutUserResource)
                      mempty
