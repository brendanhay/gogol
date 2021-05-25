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
-- Module      : Network.Google.Resource.Analytics.Provisioning.CreateAccountTree
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Provision account.
--
-- /See:/ <https://developers.google.com/analytics/ Google Analytics API Reference> for @analytics.provisioning.createAccountTree@.
module Network.Google.Resource.Analytics.Provisioning.CreateAccountTree
    (
    -- * REST Resource
      ProvisioningCreateAccountTreeResource

    -- * Creating a Request
    , provisioningCreateAccountTree
    , ProvisioningCreateAccountTree

    -- * Request Lenses
    , pcatPayload
    ) where

import Network.Google.Analytics.Types
import Network.Google.Prelude

-- | A resource alias for @analytics.provisioning.createAccountTree@ method which the
-- 'ProvisioningCreateAccountTree' request conforms to.
type ProvisioningCreateAccountTreeResource =
     "analytics" :>
       "v3" :>
         "provisioning" :>
           "createAccountTree" :>
             QueryParam "alt" AltJSON :>
               ReqBody '[JSON] AccountTreeRequest :>
                 Post '[JSON] AccountTreeResponse

-- | Provision account.
--
-- /See:/ 'provisioningCreateAccountTree' smart constructor.
newtype ProvisioningCreateAccountTree =
  ProvisioningCreateAccountTree'
    { _pcatPayload :: AccountTreeRequest
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProvisioningCreateAccountTree' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pcatPayload'
provisioningCreateAccountTree
    :: AccountTreeRequest -- ^ 'pcatPayload'
    -> ProvisioningCreateAccountTree
provisioningCreateAccountTree pPcatPayload_ =
  ProvisioningCreateAccountTree' {_pcatPayload = pPcatPayload_}


-- | Multipart request metadata.
pcatPayload :: Lens' ProvisioningCreateAccountTree AccountTreeRequest
pcatPayload
  = lens _pcatPayload (\ s a -> s{_pcatPayload = a})

instance GoogleRequest ProvisioningCreateAccountTree
         where
        type Rs ProvisioningCreateAccountTree =
             AccountTreeResponse
        type Scopes ProvisioningCreateAccountTree =
             '["https://www.googleapis.com/auth/analytics.provision"]
        requestClient ProvisioningCreateAccountTree'{..}
          = go (Just AltJSON) _pcatPayload analyticsService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProvisioningCreateAccountTreeResource)
                      mempty
