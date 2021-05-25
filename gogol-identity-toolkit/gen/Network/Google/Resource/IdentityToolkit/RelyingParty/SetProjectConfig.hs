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
-- Module      : Network.Google.Resource.IdentityToolkit.RelyingParty.SetProjectConfig
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Set project configuration.
--
-- /See:/ <https://developers.google.com/identity-toolkit/v3/ Google Identity Toolkit API Reference> for @identitytoolkit.relyingparty.setProjectConfig@.
module Network.Google.Resource.IdentityToolkit.RelyingParty.SetProjectConfig
    (
    -- * REST Resource
      RelyingPartySetProjectConfigResource

    -- * Creating a Request
    , relyingPartySetProjectConfig
    , RelyingPartySetProjectConfig

    -- * Request Lenses
    , rpspcPayload
    ) where

import Network.Google.IdentityToolkit.Types
import Network.Google.Prelude

-- | A resource alias for @identitytoolkit.relyingparty.setProjectConfig@ method which the
-- 'RelyingPartySetProjectConfig' request conforms to.
type RelyingPartySetProjectConfigResource =
     "identitytoolkit" :>
       "v3" :>
         "relyingparty" :>
           "setProjectConfig" :>
             QueryParam "alt" AltJSON :>
               ReqBody '[JSON]
                 IdentitytoolkitRelyingPartySetProjectConfigRequest
                 :>
                 Post '[JSON]
                   IdentitytoolkitRelyingPartySetProjectConfigResponse

-- | Set project configuration.
--
-- /See:/ 'relyingPartySetProjectConfig' smart constructor.
newtype RelyingPartySetProjectConfig =
  RelyingPartySetProjectConfig'
    { _rpspcPayload :: IdentitytoolkitRelyingPartySetProjectConfigRequest
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'RelyingPartySetProjectConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rpspcPayload'
relyingPartySetProjectConfig
    :: IdentitytoolkitRelyingPartySetProjectConfigRequest -- ^ 'rpspcPayload'
    -> RelyingPartySetProjectConfig
relyingPartySetProjectConfig pRpspcPayload_ =
  RelyingPartySetProjectConfig' {_rpspcPayload = pRpspcPayload_}


-- | Multipart request metadata.
rpspcPayload :: Lens' RelyingPartySetProjectConfig IdentitytoolkitRelyingPartySetProjectConfigRequest
rpspcPayload
  = lens _rpspcPayload (\ s a -> s{_rpspcPayload = a})

instance GoogleRequest RelyingPartySetProjectConfig
         where
        type Rs RelyingPartySetProjectConfig =
             IdentitytoolkitRelyingPartySetProjectConfigResponse
        type Scopes RelyingPartySetProjectConfig =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient RelyingPartySetProjectConfig'{..}
          = go (Just AltJSON) _rpspcPayload
              identityToolkitService
          where go
                  = buildClient
                      (Proxy :: Proxy RelyingPartySetProjectConfigResource)
                      mempty
