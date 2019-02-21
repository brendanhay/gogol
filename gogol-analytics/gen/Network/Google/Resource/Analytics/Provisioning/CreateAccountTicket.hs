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
-- Module      : Network.Google.Resource.Analytics.Provisioning.CreateAccountTicket
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates an account ticket.
--
-- /See:/ <https://developers.google.com/analytics/ Google Analytics API Reference> for @analytics.provisioning.createAccountTicket@.
module Network.Google.Resource.Analytics.Provisioning.CreateAccountTicket
    (
    -- * REST Resource
      ProvisioningCreateAccountTicketResource

    -- * Creating a Request
    , provisioningCreateAccountTicket
    , ProvisioningCreateAccountTicket

    -- * Request Lenses
    , pPayload
    ) where

import           Network.Google.Analytics.Types
import           Network.Google.Prelude

-- | A resource alias for @analytics.provisioning.createAccountTicket@ method which the
-- 'ProvisioningCreateAccountTicket' request conforms to.
type ProvisioningCreateAccountTicketResource =
     "analytics" :>
       "v3" :>
         "provisioning" :>
           "createAccountTicket" :>
             QueryParam "alt" AltJSON :>
               ReqBody '[JSON] AccountTicket :>
                 Post '[JSON] AccountTicket

-- | Creates an account ticket.
--
-- /See:/ 'provisioningCreateAccountTicket' smart constructor.
newtype ProvisioningCreateAccountTicket =
  ProvisioningCreateAccountTicket'
    { _pPayload :: AccountTicket
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProvisioningCreateAccountTicket' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pPayload'
provisioningCreateAccountTicket
    :: AccountTicket -- ^ 'pPayload'
    -> ProvisioningCreateAccountTicket
provisioningCreateAccountTicket pPPayload_ =
  ProvisioningCreateAccountTicket' {_pPayload = pPPayload_}


-- | Multipart request metadata.
pPayload :: Lens' ProvisioningCreateAccountTicket AccountTicket
pPayload = lens _pPayload (\ s a -> s{_pPayload = a})

instance GoogleRequest
           ProvisioningCreateAccountTicket
         where
        type Rs ProvisioningCreateAccountTicket =
             AccountTicket
        type Scopes ProvisioningCreateAccountTicket =
             '["https://www.googleapis.com/auth/analytics.provision"]
        requestClient ProvisioningCreateAccountTicket'{..}
          = go (Just AltJSON) _pPayload analyticsService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProvisioningCreateAccountTicketResource)
                      mempty
