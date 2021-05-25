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
-- Module      : Network.Google.Resource.Compute.Firewalls.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the specified firewall.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.firewalls.get@.
module Network.Google.Resource.Compute.Firewalls.Get
    (
    -- * REST Resource
      FirewallsGetResource

    -- * Creating a Request
    , firewallsGet
    , FirewallsGet

    -- * Request Lenses
    , fgProject
    , fgFirewall
    ) where

import Network.Google.Compute.Types
import Network.Google.Prelude

-- | A resource alias for @compute.firewalls.get@ method which the
-- 'FirewallsGet' request conforms to.
type FirewallsGetResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "global" :>
               "firewalls" :>
                 Capture "firewall" Text :>
                   QueryParam "alt" AltJSON :> Get '[JSON] Firewall

-- | Returns the specified firewall.
--
-- /See:/ 'firewallsGet' smart constructor.
data FirewallsGet =
  FirewallsGet'
    { _fgProject :: !Text
    , _fgFirewall :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'FirewallsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'fgProject'
--
-- * 'fgFirewall'
firewallsGet
    :: Text -- ^ 'fgProject'
    -> Text -- ^ 'fgFirewall'
    -> FirewallsGet
firewallsGet pFgProject_ pFgFirewall_ =
  FirewallsGet' {_fgProject = pFgProject_, _fgFirewall = pFgFirewall_}


-- | Project ID for this request.
fgProject :: Lens' FirewallsGet Text
fgProject
  = lens _fgProject (\ s a -> s{_fgProject = a})

-- | Name of the firewall rule to return.
fgFirewall :: Lens' FirewallsGet Text
fgFirewall
  = lens _fgFirewall (\ s a -> s{_fgFirewall = a})

instance GoogleRequest FirewallsGet where
        type Rs FirewallsGet = Firewall
        type Scopes FirewallsGet =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute",
               "https://www.googleapis.com/auth/compute.readonly"]
        requestClient FirewallsGet'{..}
          = go _fgProject _fgFirewall (Just AltJSON)
              computeService
          where go
                  = buildClient (Proxy :: Proxy FirewallsGetResource)
                      mempty
