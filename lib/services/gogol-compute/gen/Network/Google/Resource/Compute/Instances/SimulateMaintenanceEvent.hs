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
-- Module      : Network.Google.Resource.Compute.Instances.SimulateMaintenanceEvent
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Simulates a maintenance event on the instance.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.instances.simulateMaintenanceEvent@.
module Network.Google.Resource.Compute.Instances.SimulateMaintenanceEvent
    (
    -- * REST Resource
      InstancesSimulateMaintenanceEventResource

    -- * Creating a Request
    , instancesSimulateMaintenanceEvent
    , InstancesSimulateMaintenanceEvent

    -- * Request Lenses
    , ismeProject
    , ismeZone
    , ismeInstance
    ) where

import Network.Google.Compute.Types
import Network.Google.Prelude

-- | A resource alias for @compute.instances.simulateMaintenanceEvent@ method which the
-- 'InstancesSimulateMaintenanceEvent' request conforms to.
type InstancesSimulateMaintenanceEventResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "zones" :>
               Capture "zone" Text :>
                 "instances" :>
                   Capture "instance" Text :>
                     "simulateMaintenanceEvent" :>
                       QueryParam "alt" AltJSON :> Post '[JSON] Operation

-- | Simulates a maintenance event on the instance.
--
-- /See:/ 'instancesSimulateMaintenanceEvent' smart constructor.
data InstancesSimulateMaintenanceEvent =
  InstancesSimulateMaintenanceEvent'
    { _ismeProject :: !Text
    , _ismeZone :: !Text
    , _ismeInstance :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'InstancesSimulateMaintenanceEvent' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ismeProject'
--
-- * 'ismeZone'
--
-- * 'ismeInstance'
instancesSimulateMaintenanceEvent
    :: Text -- ^ 'ismeProject'
    -> Text -- ^ 'ismeZone'
    -> Text -- ^ 'ismeInstance'
    -> InstancesSimulateMaintenanceEvent
instancesSimulateMaintenanceEvent pIsmeProject_ pIsmeZone_ pIsmeInstance_ =
  InstancesSimulateMaintenanceEvent'
    { _ismeProject = pIsmeProject_
    , _ismeZone = pIsmeZone_
    , _ismeInstance = pIsmeInstance_
    }


-- | Project ID for this request.
ismeProject :: Lens' InstancesSimulateMaintenanceEvent Text
ismeProject
  = lens _ismeProject (\ s a -> s{_ismeProject = a})

-- | The name of the zone for this request.
ismeZone :: Lens' InstancesSimulateMaintenanceEvent Text
ismeZone = lens _ismeZone (\ s a -> s{_ismeZone = a})

-- | Name of the instance scoping this request.
ismeInstance :: Lens' InstancesSimulateMaintenanceEvent Text
ismeInstance
  = lens _ismeInstance (\ s a -> s{_ismeInstance = a})

instance GoogleRequest
           InstancesSimulateMaintenanceEvent
         where
        type Rs InstancesSimulateMaintenanceEvent = Operation
        type Scopes InstancesSimulateMaintenanceEvent =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute"]
        requestClient InstancesSimulateMaintenanceEvent'{..}
          = go _ismeProject _ismeZone _ismeInstance
              (Just AltJSON)
              computeService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy InstancesSimulateMaintenanceEventResource)
                      mempty
