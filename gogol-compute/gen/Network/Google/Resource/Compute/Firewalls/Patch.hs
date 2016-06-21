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
-- Module      : Network.Google.Resource.Compute.Firewalls.Patch
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates the specified firewall rule with the data included in the
-- request. This method supports patch semantics.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.firewalls.patch@.
module Network.Google.Resource.Compute.Firewalls.Patch
    (
    -- * REST Resource
      FirewallsPatchResource

    -- * Creating a Request
    , firewallsPatch
    , FirewallsPatch

    -- * Request Lenses
    , fpProject
    , fpPayload
    , fpFirewall
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @compute.firewalls.patch@ method which the
-- 'FirewallsPatch' request conforms to.
type FirewallsPatchResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "global" :>
               "firewalls" :>
                 Capture "firewall" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] Firewall :> Patch '[JSON] Operation

-- | Updates the specified firewall rule with the data included in the
-- request. This method supports patch semantics.
--
-- /See:/ 'firewallsPatch' smart constructor.
data FirewallsPatch = FirewallsPatch'
    { _fpProject  :: !Text
    , _fpPayload  :: !Firewall
    , _fpFirewall :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'FirewallsPatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'fpProject'
--
-- * 'fpPayload'
--
-- * 'fpFirewall'
firewallsPatch
    :: Text -- ^ 'fpProject'
    -> Firewall -- ^ 'fpPayload'
    -> Text -- ^ 'fpFirewall'
    -> FirewallsPatch
firewallsPatch pFpProject_ pFpPayload_ pFpFirewall_ =
    FirewallsPatch'
    { _fpProject = pFpProject_
    , _fpPayload = pFpPayload_
    , _fpFirewall = pFpFirewall_
    }

-- | Project ID for this request.
fpProject :: Lens' FirewallsPatch Text
fpProject
  = lens _fpProject (\ s a -> s{_fpProject = a})

-- | Multipart request metadata.
fpPayload :: Lens' FirewallsPatch Firewall
fpPayload
  = lens _fpPayload (\ s a -> s{_fpPayload = a})

-- | Name of the firewall rule to update.
fpFirewall :: Lens' FirewallsPatch Text
fpFirewall
  = lens _fpFirewall (\ s a -> s{_fpFirewall = a})

instance GoogleRequest FirewallsPatch where
        type Rs FirewallsPatch = Operation
        type Scopes FirewallsPatch =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute"]
        requestClient FirewallsPatch'{..}
          = go _fpProject _fpFirewall (Just AltJSON) _fpPayload
              computeService
          where go
                  = buildClient (Proxy :: Proxy FirewallsPatchResource)
                      mempty
