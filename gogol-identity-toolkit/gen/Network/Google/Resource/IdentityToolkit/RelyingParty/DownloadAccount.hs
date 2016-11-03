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
-- Module      : Network.Google.Resource.IdentityToolkit.RelyingParty.DownloadAccount
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Batch download user accounts.
--
-- /See:/ <https://developers.google.com/identity-toolkit/v3/ Google Identity Toolkit API Reference> for @identitytoolkit.relyingparty.downloadAccount@.
module Network.Google.Resource.IdentityToolkit.RelyingParty.DownloadAccount
    (
    -- * REST Resource
      RelyingPartyDownloadAccountResource

    -- * Creating a Request
    , relyingPartyDownloadAccount
    , RelyingPartyDownloadAccount

    -- * Request Lenses
    , rpdaPayload
    ) where

import           Network.Google.IdentityToolkit.Types
import           Network.Google.Prelude

-- | A resource alias for @identitytoolkit.relyingparty.downloadAccount@ method which the
-- 'RelyingPartyDownloadAccount' request conforms to.
type RelyingPartyDownloadAccountResource =
     "identitytoolkit" :>
       "v3" :>
         "relyingparty" :>
           "downloadAccount" :>
             QueryParam "alt" AltJSON :>
               ReqBody '[JSON]
                 IdentitytoolkitRelyingPartyDownloadAccountRequest
                 :> Post '[JSON] DownloadAccountResponse

-- | Batch download user accounts.
--
-- /See:/ 'relyingPartyDownloadAccount' smart constructor.
newtype RelyingPartyDownloadAccount = RelyingPartyDownloadAccount'
    { _rpdaPayload :: IdentitytoolkitRelyingPartyDownloadAccountRequest
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'RelyingPartyDownloadAccount' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rpdaPayload'
relyingPartyDownloadAccount
    :: IdentitytoolkitRelyingPartyDownloadAccountRequest -- ^ 'rpdaPayload'
    -> RelyingPartyDownloadAccount
relyingPartyDownloadAccount pRpdaPayload_ =
    RelyingPartyDownloadAccount'
    { _rpdaPayload = pRpdaPayload_
    }

-- | Multipart request metadata.
rpdaPayload :: Lens' RelyingPartyDownloadAccount IdentitytoolkitRelyingPartyDownloadAccountRequest
rpdaPayload
  = lens _rpdaPayload (\ s a -> s{_rpdaPayload = a})

instance GoogleRequest RelyingPartyDownloadAccount
         where
        type Rs RelyingPartyDownloadAccount =
             DownloadAccountResponse
        type Scopes RelyingPartyDownloadAccount =
             '["https://www.googleapis.com/auth/firebase"]
        requestClient RelyingPartyDownloadAccount'{..}
          = go (Just AltJSON) _rpdaPayload
              identityToolkitService
          where go
                  = buildClient
                      (Proxy :: Proxy RelyingPartyDownloadAccountResource)
                      mempty
