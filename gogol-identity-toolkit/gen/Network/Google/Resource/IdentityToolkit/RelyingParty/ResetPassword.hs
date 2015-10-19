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
-- Module      : Network.Google.Resource.IdentityToolkit.RelyingParty.ResetPassword
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Reset password for a user.
--
-- /See:/ <https://developers.google.com/identity-toolkit/v3/ Google Identity Toolkit API Reference> for @IdentitytoolkitRelyingPartyResetPassword@.
module Network.Google.Resource.IdentityToolkit.RelyingParty.ResetPassword
    (
    -- * REST Resource
      RelyingPartyResetPasswordResource

    -- * Creating a Request
    , relyingPartyResetPassword'
    , RelyingPartyResetPassword'

    -- * Request Lenses
    , rprpPayload
    ) where

import           Network.Google.IdentityToolkit.Types
import           Network.Google.Prelude

-- | A resource alias for @IdentitytoolkitRelyingPartyResetPassword@ method which the
-- 'RelyingPartyResetPassword'' request conforms to.
type RelyingPartyResetPasswordResource =
     "resetPassword" :>
       QueryParam "alt" AltJSON :>
         ReqBody '[JSON]
           IdentitytoolkitRelyingPartyResetPasswordRequest
           :> Post '[JSON] ResetPasswordResponse

-- | Reset password for a user.
--
-- /See:/ 'relyingPartyResetPassword'' smart constructor.
newtype RelyingPartyResetPassword' = RelyingPartyResetPassword'
    { _rprpPayload :: IdentitytoolkitRelyingPartyResetPasswordRequest
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'RelyingPartyResetPassword'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rprpPayload'
relyingPartyResetPassword'
    :: IdentitytoolkitRelyingPartyResetPasswordRequest -- ^ 'payload'
    -> RelyingPartyResetPassword'
relyingPartyResetPassword' pRprpPayload_ =
    RelyingPartyResetPassword'
    { _rprpPayload = pRprpPayload_
    }

-- | Multipart request metadata.
rprpPayload :: Lens' RelyingPartyResetPassword' IdentitytoolkitRelyingPartyResetPasswordRequest
rprpPayload
  = lens _rprpPayload (\ s a -> s{_rprpPayload = a})

instance GoogleRequest RelyingPartyResetPassword'
         where
        type Rs RelyingPartyResetPassword' =
             ResetPasswordResponse
        requestClient RelyingPartyResetPassword'{..}
          = go (Just AltJSON) _rprpPayload
              identityToolkitService
          where go
                  = buildClient
                      (Proxy :: Proxy RelyingPartyResetPasswordResource)
                      mempty
