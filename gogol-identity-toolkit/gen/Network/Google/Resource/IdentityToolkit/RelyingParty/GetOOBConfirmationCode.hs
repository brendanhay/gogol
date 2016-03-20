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
-- Module      : Network.Google.Resource.IdentityToolkit.RelyingParty.GetOOBConfirmationCode
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Get a code for user action confirmation.
--
-- /See:/ <https://developers.google.com/identity-toolkit/v3/ Google Identity Toolkit API Reference> for @identitytoolkit.relyingparty.getOobConfirmationCode@.
module Network.Google.Resource.IdentityToolkit.RelyingParty.GetOOBConfirmationCode
    (
    -- * REST Resource
      RelyingPartyGetOOBConfirmationCodeResource

    -- * Creating a Request
    , relyingPartyGetOOBConfirmationCode
    , RelyingPartyGetOOBConfirmationCode

    -- * Request Lenses
    , rpgoobccPayload
    ) where

import           Network.Google.IdentityToolkit.Types
import           Network.Google.Prelude

-- | A resource alias for @identitytoolkit.relyingparty.getOobConfirmationCode@ method which the
-- 'RelyingPartyGetOOBConfirmationCode' request conforms to.
type RelyingPartyGetOOBConfirmationCodeResource =
     "identitytoolkit" :>
       "v3" :>
         "relyingparty" :>
           "getOobConfirmationCode" :>
             QueryParam "alt" AltJSON :>
               ReqBody '[JSON] RelyingParty :>
                 Post '[JSON] GetOOBConfirmationCodeResponse

-- | Get a code for user action confirmation.
--
-- /See:/ 'relyingPartyGetOOBConfirmationCode' smart constructor.
newtype RelyingPartyGetOOBConfirmationCode = RelyingPartyGetOOBConfirmationCode
    { _rpgoobccPayload :: RelyingParty
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'RelyingPartyGetOOBConfirmationCode' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rpgoobccPayload'
relyingPartyGetOOBConfirmationCode
    :: RelyingParty -- ^ 'rpgoobccPayload'
    -> RelyingPartyGetOOBConfirmationCode
relyingPartyGetOOBConfirmationCode pRpgoobccPayload_ =
    RelyingPartyGetOOBConfirmationCode
    { _rpgoobccPayload = pRpgoobccPayload_
    }

-- | Multipart request metadata.
rpgoobccPayload :: Lens' RelyingPartyGetOOBConfirmationCode RelyingParty
rpgoobccPayload
  = lens _rpgoobccPayload
      (\ s a -> s{_rpgoobccPayload = a})

instance GoogleRequest
         RelyingPartyGetOOBConfirmationCode where
        type Rs RelyingPartyGetOOBConfirmationCode =
             GetOOBConfirmationCodeResponse
        requestClient RelyingPartyGetOOBConfirmationCode{..}
          = go (Just AltJSON) _rpgoobccPayload
              identityToolkitService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy RelyingPartyGetOOBConfirmationCodeResource)
                      mempty
