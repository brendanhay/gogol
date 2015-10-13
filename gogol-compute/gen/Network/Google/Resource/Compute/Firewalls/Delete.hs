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
-- Module      : Network.Google.Resource.Compute.Firewalls.Delete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Deletes the specified firewall resource.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @ComputeFirewallsDelete@.
module Network.Google.Resource.Compute.Firewalls.Delete
    (
    -- * REST Resource
      FirewallsDeleteResource

    -- * Creating a Request
    , firewallsDelete'
    , FirewallsDelete'

    -- * Request Lenses
    , fdProject
    , fdFirewall
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @ComputeFirewallsDelete@ method which the
-- 'FirewallsDelete'' request conforms to.
type FirewallsDeleteResource =
     Capture "project" Text :>
       "global" :>
         "firewalls" :>
           Capture "firewall" Text :>
             QueryParam "alt" AltJSON :> Delete '[JSON] Operation

-- | Deletes the specified firewall resource.
--
-- /See:/ 'firewallsDelete'' smart constructor.
data FirewallsDelete' = FirewallsDelete'
    { _fdProject  :: !Text
    , _fdFirewall :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'FirewallsDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'fdProject'
--
-- * 'fdFirewall'
firewallsDelete'
    :: Text -- ^ 'project'
    -> Text -- ^ 'firewall'
    -> FirewallsDelete'
firewallsDelete' pFdProject_ pFdFirewall_ =
    FirewallsDelete'
    { _fdProject = pFdProject_
    , _fdFirewall = pFdFirewall_
    }

-- | Project ID for this request.
fdProject :: Lens' FirewallsDelete' Text
fdProject
  = lens _fdProject (\ s a -> s{_fdProject = a})

-- | Name of the firewall resource to delete.
fdFirewall :: Lens' FirewallsDelete' Text
fdFirewall
  = lens _fdFirewall (\ s a -> s{_fdFirewall = a})

instance GoogleRequest FirewallsDelete' where
        type Rs FirewallsDelete' = Operation
        requestClient FirewallsDelete'{..}
          = go _fdProject _fdFirewall (Just AltJSON)
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy FirewallsDeleteResource)
                      mempty
