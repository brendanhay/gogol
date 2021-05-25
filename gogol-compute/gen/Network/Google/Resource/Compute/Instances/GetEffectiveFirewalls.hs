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
-- Module      : Network.Google.Resource.Compute.Instances.GetEffectiveFirewalls
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns effective firewalls applied to an interface of the instance.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.instances.getEffectiveFirewalls@.
module Network.Google.Resource.Compute.Instances.GetEffectiveFirewalls
    (
    -- * REST Resource
      InstancesGetEffectiveFirewallsResource

    -- * Creating a Request
    , instancesGetEffectiveFirewalls
    , InstancesGetEffectiveFirewalls

    -- * Request Lenses
    , igefProject
    , igefNetworkInterface
    , igefZone
    , igefInstance
    ) where

import Network.Google.Compute.Types
import Network.Google.Prelude

-- | A resource alias for @compute.instances.getEffectiveFirewalls@ method which the
-- 'InstancesGetEffectiveFirewalls' request conforms to.
type InstancesGetEffectiveFirewallsResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "zones" :>
               Capture "zone" Text :>
                 "instances" :>
                   Capture "instance" Text :>
                     "getEffectiveFirewalls" :>
                       QueryParam "networkInterface" Text :>
                         QueryParam "alt" AltJSON :>
                           Get '[JSON] InstancesGetEffectiveFirewallsResponse

-- | Returns effective firewalls applied to an interface of the instance.
--
-- /See:/ 'instancesGetEffectiveFirewalls' smart constructor.
data InstancesGetEffectiveFirewalls =
  InstancesGetEffectiveFirewalls'
    { _igefProject :: !Text
    , _igefNetworkInterface :: !Text
    , _igefZone :: !Text
    , _igefInstance :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'InstancesGetEffectiveFirewalls' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'igefProject'
--
-- * 'igefNetworkInterface'
--
-- * 'igefZone'
--
-- * 'igefInstance'
instancesGetEffectiveFirewalls
    :: Text -- ^ 'igefProject'
    -> Text -- ^ 'igefNetworkInterface'
    -> Text -- ^ 'igefZone'
    -> Text -- ^ 'igefInstance'
    -> InstancesGetEffectiveFirewalls
instancesGetEffectiveFirewalls pIgefProject_ pIgefNetworkInterface_ pIgefZone_ pIgefInstance_ =
  InstancesGetEffectiveFirewalls'
    { _igefProject = pIgefProject_
    , _igefNetworkInterface = pIgefNetworkInterface_
    , _igefZone = pIgefZone_
    , _igefInstance = pIgefInstance_
    }


-- | Project ID for this request.
igefProject :: Lens' InstancesGetEffectiveFirewalls Text
igefProject
  = lens _igefProject (\ s a -> s{_igefProject = a})

-- | The name of the network interface to get the effective firewalls.
igefNetworkInterface :: Lens' InstancesGetEffectiveFirewalls Text
igefNetworkInterface
  = lens _igefNetworkInterface
      (\ s a -> s{_igefNetworkInterface = a})

-- | The name of the zone for this request.
igefZone :: Lens' InstancesGetEffectiveFirewalls Text
igefZone = lens _igefZone (\ s a -> s{_igefZone = a})

-- | Name of the instance scoping this request.
igefInstance :: Lens' InstancesGetEffectiveFirewalls Text
igefInstance
  = lens _igefInstance (\ s a -> s{_igefInstance = a})

instance GoogleRequest InstancesGetEffectiveFirewalls
         where
        type Rs InstancesGetEffectiveFirewalls =
             InstancesGetEffectiveFirewallsResponse
        type Scopes InstancesGetEffectiveFirewalls =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute",
               "https://www.googleapis.com/auth/compute.readonly"]
        requestClient InstancesGetEffectiveFirewalls'{..}
          = go _igefProject _igefZone _igefInstance
              (Just _igefNetworkInterface)
              (Just AltJSON)
              computeService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy InstancesGetEffectiveFirewallsResource)
                      mempty
