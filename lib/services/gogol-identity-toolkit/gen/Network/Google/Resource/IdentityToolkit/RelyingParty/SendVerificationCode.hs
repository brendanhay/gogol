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
-- Module      : Network.Google.Resource.IdentityToolkit.RelyingParty.SendVerificationCode
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Send SMS verification code.
--
-- /See:/ <https://developers.google.com/identity-toolkit/v3/ Google Identity Toolkit API Reference> for @identitytoolkit.relyingparty.sendVerificationCode@.
module Network.Google.Resource.IdentityToolkit.RelyingParty.SendVerificationCode
    (
    -- * REST Resource
      RelyingPartySendVerificationCodeResource

    -- * Creating a Request
    , relyingPartySendVerificationCode
    , RelyingPartySendVerificationCode

    -- * Request Lenses
    , rpsvcPayload
    ) where

import Network.Google.IdentityToolkit.Types
import Network.Google.Prelude

-- | A resource alias for @identitytoolkit.relyingparty.sendVerificationCode@ method which the
-- 'RelyingPartySendVerificationCode' request conforms to.
type RelyingPartySendVerificationCodeResource =
     "identitytoolkit" :>
       "v3" :>
         "relyingparty" :>
           "sendVerificationCode" :>
             QueryParam "alt" AltJSON :>
               ReqBody '[JSON]
                 IdentitytoolkitRelyingPartySendVerificationCodeRequest
                 :>
                 Post '[JSON]
                   IdentitytoolkitRelyingPartySendVerificationCodeResponse

-- | Send SMS verification code.
--
-- /See:/ 'relyingPartySendVerificationCode' smart constructor.
newtype RelyingPartySendVerificationCode =
  RelyingPartySendVerificationCode'
    { _rpsvcPayload :: IdentitytoolkitRelyingPartySendVerificationCodeRequest
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'RelyingPartySendVerificationCode' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rpsvcPayload'
relyingPartySendVerificationCode
    :: IdentitytoolkitRelyingPartySendVerificationCodeRequest -- ^ 'rpsvcPayload'
    -> RelyingPartySendVerificationCode
relyingPartySendVerificationCode pRpsvcPayload_ =
  RelyingPartySendVerificationCode' {_rpsvcPayload = pRpsvcPayload_}


-- | Multipart request metadata.
rpsvcPayload :: Lens' RelyingPartySendVerificationCode IdentitytoolkitRelyingPartySendVerificationCodeRequest
rpsvcPayload
  = lens _rpsvcPayload (\ s a -> s{_rpsvcPayload = a})

instance GoogleRequest
           RelyingPartySendVerificationCode
         where
        type Rs RelyingPartySendVerificationCode =
             IdentitytoolkitRelyingPartySendVerificationCodeResponse
        type Scopes RelyingPartySendVerificationCode =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient RelyingPartySendVerificationCode'{..}
          = go (Just AltJSON) _rpsvcPayload
              identityToolkitService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy RelyingPartySendVerificationCodeResource)
                      mempty
