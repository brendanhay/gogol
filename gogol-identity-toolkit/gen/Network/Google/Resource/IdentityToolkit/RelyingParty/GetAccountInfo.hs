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
-- Module      : Network.Google.Resource.IdentityToolkit.RelyingParty.GetAccountInfo
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the account info.
--
-- /See:/ <https://developers.google.com/identity-toolkit/v3/ Google Identity Toolkit API Reference> for @identitytoolkit.relyingparty.getAccountInfo@.
module Network.Google.Resource.IdentityToolkit.RelyingParty.GetAccountInfo
    (
    -- * REST Resource
      RelyingPartyGetAccountInfoResource

    -- * Creating a Request
    , relyingPartyGetAccountInfo
    , RelyingPartyGetAccountInfo

    -- * Request Lenses
    , rpgaiPayload
    ) where

import           Network.Google.IdentityToolkit.Types
import           Network.Google.Prelude

-- | A resource alias for @identitytoolkit.relyingparty.getAccountInfo@ method which the
-- 'RelyingPartyGetAccountInfo' request conforms to.
type RelyingPartyGetAccountInfoResource =
     "getAccountInfo" :>
       QueryParam "alt" AltJSON :>
         ReqBody '[JSON]
           IdentitytoolkitRelyingPartyGetAccountInfoRequest
           :> Post '[JSON] GetAccountInfoResponse

-- | Returns the account info.
--
-- /See:/ 'relyingPartyGetAccountInfo' smart constructor.
newtype RelyingPartyGetAccountInfo = RelyingPartyGetAccountInfo
    { _rpgaiPayload :: IdentitytoolkitRelyingPartyGetAccountInfoRequest
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'RelyingPartyGetAccountInfo' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rpgaiPayload'
relyingPartyGetAccountInfo
    :: IdentitytoolkitRelyingPartyGetAccountInfoRequest -- ^ 'rpgaiPayload'
    -> RelyingPartyGetAccountInfo
relyingPartyGetAccountInfo pRpgaiPayload_ =
    RelyingPartyGetAccountInfo
    { _rpgaiPayload = pRpgaiPayload_
    }

-- | Multipart request metadata.
rpgaiPayload :: Lens' RelyingPartyGetAccountInfo IdentitytoolkitRelyingPartyGetAccountInfoRequest
rpgaiPayload
  = lens _rpgaiPayload (\ s a -> s{_rpgaiPayload = a})

instance GoogleRequest RelyingPartyGetAccountInfo
         where
        type Rs RelyingPartyGetAccountInfo =
             GetAccountInfoResponse
        requestClient RelyingPartyGetAccountInfo{..}
          = go (Just AltJSON) _rpgaiPayload
              identityToolkitService
          where go
                  = buildClient
                      (Proxy :: Proxy RelyingPartyGetAccountInfoResource)
                      mempty
