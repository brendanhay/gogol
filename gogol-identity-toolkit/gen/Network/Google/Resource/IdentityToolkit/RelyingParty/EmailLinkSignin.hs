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
-- Module      : Network.Google.Resource.IdentityToolkit.RelyingParty.EmailLinkSignin
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Reset password for a user.
--
-- /See:/ <https://developers.google.com/identity-toolkit/v3/ Google Identity Toolkit API Reference> for @identitytoolkit.relyingparty.emailLinkSignin@.
module Network.Google.Resource.IdentityToolkit.RelyingParty.EmailLinkSignin
    (
    -- * REST Resource
      RelyingPartyEmailLinkSigninResource

    -- * Creating a Request
    , relyingPartyEmailLinkSignin
    , RelyingPartyEmailLinkSignin

    -- * Request Lenses
    , rpelsPayload
    ) where

import           Network.Google.IdentityToolkit.Types
import           Network.Google.Prelude

-- | A resource alias for @identitytoolkit.relyingparty.emailLinkSignin@ method which the
-- 'RelyingPartyEmailLinkSignin' request conforms to.
type RelyingPartyEmailLinkSigninResource =
     "identitytoolkit" :>
       "v3" :>
         "relyingparty" :>
           "emailLinkSignin" :>
             QueryParam "alt" AltJSON :>
               ReqBody '[JSON]
                 IdentitytoolkitRelyingPartyEmailLinkSigninRequest
                 :> Post '[JSON] EmailLinkSigninResponse

-- | Reset password for a user.
--
-- /See:/ 'relyingPartyEmailLinkSignin' smart constructor.
newtype RelyingPartyEmailLinkSignin = RelyingPartyEmailLinkSignin'
    { _rpelsPayload :: IdentitytoolkitRelyingPartyEmailLinkSigninRequest
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'RelyingPartyEmailLinkSignin' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rpelsPayload'
relyingPartyEmailLinkSignin
    :: IdentitytoolkitRelyingPartyEmailLinkSigninRequest -- ^ 'rpelsPayload'
    -> RelyingPartyEmailLinkSignin
relyingPartyEmailLinkSignin pRpelsPayload_ =
    RelyingPartyEmailLinkSignin'
    { _rpelsPayload = pRpelsPayload_
    }

-- | Multipart request metadata.
rpelsPayload :: Lens' RelyingPartyEmailLinkSignin IdentitytoolkitRelyingPartyEmailLinkSigninRequest
rpelsPayload
  = lens _rpelsPayload (\ s a -> s{_rpelsPayload = a})

instance GoogleRequest RelyingPartyEmailLinkSignin
         where
        type Rs RelyingPartyEmailLinkSignin =
             EmailLinkSigninResponse
        type Scopes RelyingPartyEmailLinkSignin =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient RelyingPartyEmailLinkSignin'{..}
          = go (Just AltJSON) _rpelsPayload
              identityToolkitService
          where go
                  = buildClient
                      (Proxy :: Proxy RelyingPartyEmailLinkSigninResource)
                      mempty
