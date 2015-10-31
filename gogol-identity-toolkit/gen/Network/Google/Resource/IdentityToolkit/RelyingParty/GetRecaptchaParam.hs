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
-- Module      : Network.Google.Resource.IdentityToolkit.RelyingParty.GetRecaptchaParam
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Get recaptcha secure param.
--
-- /See:/ <https://developers.google.com/identity-toolkit/v3/ Google Identity Toolkit API Reference> for @identitytoolkit.relyingparty.getRecaptchaParam@.
module Network.Google.Resource.IdentityToolkit.RelyingParty.GetRecaptchaParam
    (
    -- * REST Resource
      RelyingPartyGetRecaptchaParamResource

    -- * Creating a Request
    , relyingPartyGetRecaptchaParam
    , RelyingPartyGetRecaptchaParam

    ) where

import           Network.Google.IdentityToolkit.Types
import           Network.Google.Prelude

-- | A resource alias for @identitytoolkit.relyingparty.getRecaptchaParam@ method which the
-- 'RelyingPartyGetRecaptchaParam' request conforms to.
type RelyingPartyGetRecaptchaParamResource =
     "identitytoolkit" :>
       "v3" :>
         "relyingparty" :>
           "getRecaptchaParam" :>
             QueryParam "alt" AltJSON :>
               Get '[JSON] GetRecaptchaParamResponse

-- | Get recaptcha secure param.
--
-- /See:/ 'relyingPartyGetRecaptchaParam' smart constructor.
data RelyingPartyGetRecaptchaParam =
    RelyingPartyGetRecaptchaParam
    deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'RelyingPartyGetRecaptchaParam' with the minimum fields required to make a request.
--
relyingPartyGetRecaptchaParam
    :: RelyingPartyGetRecaptchaParam
relyingPartyGetRecaptchaParam = RelyingPartyGetRecaptchaParam

instance GoogleRequest RelyingPartyGetRecaptchaParam
         where
        type Rs RelyingPartyGetRecaptchaParam =
             GetRecaptchaParamResponse
        type Scopes RelyingPartyGetRecaptchaParam = '[]
        requestClient RelyingPartyGetRecaptchaParam{}
          = go (Just AltJSON) identityToolkitService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy RelyingPartyGetRecaptchaParamResource)
                      mempty
