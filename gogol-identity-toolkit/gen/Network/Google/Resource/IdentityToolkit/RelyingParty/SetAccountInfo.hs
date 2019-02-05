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
-- Module      : Network.Google.Resource.IdentityToolkit.RelyingParty.SetAccountInfo
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Set account info for a user.
--
-- /See:/ <https://developers.google.com/identity-toolkit/v3/ Google Identity Toolkit API Reference> for @identitytoolkit.relyingparty.setAccountInfo@.
module Network.Google.Resource.IdentityToolkit.RelyingParty.SetAccountInfo
    (
    -- * REST Resource
      RelyingPartySetAccountInfoResource

    -- * Creating a Request
    , relyingPartySetAccountInfo
    , RelyingPartySetAccountInfo

    -- * Request Lenses
    , rpsaiPayload
    ) where

import           Network.Google.IdentityToolkit.Types
import           Network.Google.Prelude

-- | A resource alias for @identitytoolkit.relyingparty.setAccountInfo@ method which the
-- 'RelyingPartySetAccountInfo' request conforms to.
type RelyingPartySetAccountInfoResource =
     "identitytoolkit" :>
       "v3" :>
         "relyingparty" :>
           "setAccountInfo" :>
             QueryParam "alt" AltJSON :>
               ReqBody '[JSON]
                 IdentitytoolkitRelyingPartySetAccountInfoRequest
                 :> Post '[JSON] SetAccountInfoResponse

-- | Set account info for a user.
--
-- /See:/ 'relyingPartySetAccountInfo' smart constructor.
newtype RelyingPartySetAccountInfo = RelyingPartySetAccountInfo'
    { _rpsaiPayload :: IdentitytoolkitRelyingPartySetAccountInfoRequest
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'RelyingPartySetAccountInfo' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rpsaiPayload'
relyingPartySetAccountInfo
    :: IdentitytoolkitRelyingPartySetAccountInfoRequest -- ^ 'rpsaiPayload'
    -> RelyingPartySetAccountInfo
relyingPartySetAccountInfo pRpsaiPayload_ =
    RelyingPartySetAccountInfo'
    { _rpsaiPayload = pRpsaiPayload_
    }

-- | Multipart request metadata.
rpsaiPayload :: Lens' RelyingPartySetAccountInfo IdentitytoolkitRelyingPartySetAccountInfoRequest
rpsaiPayload
  = lens _rpsaiPayload (\ s a -> s{_rpsaiPayload = a})

instance GoogleRequest RelyingPartySetAccountInfo
         where
        type Rs RelyingPartySetAccountInfo =
             SetAccountInfoResponse
        type Scopes RelyingPartySetAccountInfo =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient RelyingPartySetAccountInfo'{..}
          = go (Just AltJSON) _rpsaiPayload
              identityToolkitService
          where go
                  = buildClient
                      (Proxy :: Proxy RelyingPartySetAccountInfoResource)
                      mempty
