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
-- Module      : Network.Google.Resource.Compute.Firewalls.Update
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates the specified firewall rule with the data included in the
-- request.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.firewalls.update@.
module Network.Google.Resource.Compute.Firewalls.Update
    (
    -- * REST Resource
      FirewallsUpdateResource

    -- * Creating a Request
    , firewallsUpdate
    , FirewallsUpdate

    -- * Request Lenses
    , fuProject
    , fuPayload
    , fuFirewall
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @compute.firewalls.update@ method which the
-- 'FirewallsUpdate' request conforms to.
type FirewallsUpdateResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "global" :>
               "firewalls" :>
                 Capture "firewall" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] Firewall :> Put '[JSON] Operation

-- | Updates the specified firewall rule with the data included in the
-- request.
--
-- /See:/ 'firewallsUpdate' smart constructor.
data FirewallsUpdate = FirewallsUpdate
    { _fuProject  :: !Text
    , _fuPayload  :: !Firewall
    , _fuFirewall :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'FirewallsUpdate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'fuProject'
--
-- * 'fuPayload'
--
-- * 'fuFirewall'
firewallsUpdate
    :: Text -- ^ 'fuProject'
    -> Firewall -- ^ 'fuPayload'
    -> Text -- ^ 'fuFirewall'
    -> FirewallsUpdate
firewallsUpdate pFuProject_ pFuPayload_ pFuFirewall_ =
    FirewallsUpdate
    { _fuProject = pFuProject_
    , _fuPayload = pFuPayload_
    , _fuFirewall = pFuFirewall_
    }

-- | Project ID for this request.
fuProject :: Lens' FirewallsUpdate Text
fuProject
  = lens _fuProject (\ s a -> s{_fuProject = a})

-- | Multipart request metadata.
fuPayload :: Lens' FirewallsUpdate Firewall
fuPayload
  = lens _fuPayload (\ s a -> s{_fuPayload = a})

-- | Name of the firewall rule to update.
fuFirewall :: Lens' FirewallsUpdate Text
fuFirewall
  = lens _fuFirewall (\ s a -> s{_fuFirewall = a})

instance GoogleRequest FirewallsUpdate where
        type Rs FirewallsUpdate = Operation
        requestClient FirewallsUpdate{..}
          = go _fuProject _fuFirewall (Just AltJSON) _fuPayload
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy FirewallsUpdateResource)
                      mempty
