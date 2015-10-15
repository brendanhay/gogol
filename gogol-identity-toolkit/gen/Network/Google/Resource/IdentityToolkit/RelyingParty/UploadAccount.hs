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
-- Module      : Network.Google.Resource.IdentityToolkit.RelyingParty.UploadAccount
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Batch upload existing user accounts.
--
-- /See:/ <https://developers.google.com/identity-toolkit/v3/ Google Identity Toolkit API Reference> for @IdentitytoolkitRelyingPartyUploadAccount@.
module Network.Google.Resource.IdentityToolkit.RelyingParty.UploadAccount
    (
    -- * REST Resource
      RelyingPartyUploadAccountResource

    -- * Creating a Request
    , relyingPartyUploadAccount'
    , RelyingPartyUploadAccount'

    -- * Request Lenses
    , rpuaPayload
    ) where

import           Network.Google.IdentityToolkit.Types
import           Network.Google.Prelude

-- | A resource alias for @IdentitytoolkitRelyingPartyUploadAccount@ method which the
-- 'RelyingPartyUploadAccount'' request conforms to.
type RelyingPartyUploadAccountResource =
     "uploadAccount" :>
       QueryParam "alt" AltJSON :>
         ReqBody '[JSON]
           IdentitytoolkitRelyingPartyUploadAccountRequest
           :> Post '[JSON] UploadAccountResponse

-- | Batch upload existing user accounts.
--
-- /See:/ 'relyingPartyUploadAccount'' smart constructor.
newtype RelyingPartyUploadAccount' = RelyingPartyUploadAccount'
    { _rpuaPayload :: IdentitytoolkitRelyingPartyUploadAccountRequest
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'RelyingPartyUploadAccount'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rpuaPayload'
relyingPartyUploadAccount'
    :: IdentitytoolkitRelyingPartyUploadAccountRequest -- ^ 'payload'
    -> RelyingPartyUploadAccount'
relyingPartyUploadAccount' pRpuaPayload_ =
    RelyingPartyUploadAccount'
    { _rpuaPayload = pRpuaPayload_
    }

-- | Multipart request metadata.
rpuaPayload :: Lens' RelyingPartyUploadAccount' IdentitytoolkitRelyingPartyUploadAccountRequest
rpuaPayload
  = lens _rpuaPayload (\ s a -> s{_rpuaPayload = a})

instance GoogleRequest RelyingPartyUploadAccount'
         where
        type Rs RelyingPartyUploadAccount' =
             UploadAccountResponse
        requestClient RelyingPartyUploadAccount'{..}
          = go (Just AltJSON) _rpuaPayload identityToolkit
          where go
                  = buildClient
                      (Proxy :: Proxy RelyingPartyUploadAccountResource)
                      mempty
