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
-- Module      : Network.Google.Resource.Compute.Instances.GetShieldedInstanceIdentity
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the Shielded Instance Identity of an instance
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.instances.getShieldedInstanceIdentity@.
module Network.Google.Resource.Compute.Instances.GetShieldedInstanceIdentity
    (
    -- * REST Resource
      InstancesGetShieldedInstanceIdentityResource

    -- * Creating a Request
    , instancesGetShieldedInstanceIdentity
    , InstancesGetShieldedInstanceIdentity

    -- * Request Lenses
    , igsiiProject
    , igsiiZone
    , igsiiInstance
    ) where

import Network.Google.Compute.Types
import Network.Google.Prelude

-- | A resource alias for @compute.instances.getShieldedInstanceIdentity@ method which the
-- 'InstancesGetShieldedInstanceIdentity' request conforms to.
type InstancesGetShieldedInstanceIdentityResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "zones" :>
               Capture "zone" Text :>
                 "instances" :>
                   Capture "instance" Text :>
                     "getShieldedInstanceIdentity" :>
                       QueryParam "alt" AltJSON :>
                         Get '[JSON] ShieldedInstanceIdentity

-- | Returns the Shielded Instance Identity of an instance
--
-- /See:/ 'instancesGetShieldedInstanceIdentity' smart constructor.
data InstancesGetShieldedInstanceIdentity =
  InstancesGetShieldedInstanceIdentity'
    { _igsiiProject :: !Text
    , _igsiiZone :: !Text
    , _igsiiInstance :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'InstancesGetShieldedInstanceIdentity' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'igsiiProject'
--
-- * 'igsiiZone'
--
-- * 'igsiiInstance'
instancesGetShieldedInstanceIdentity
    :: Text -- ^ 'igsiiProject'
    -> Text -- ^ 'igsiiZone'
    -> Text -- ^ 'igsiiInstance'
    -> InstancesGetShieldedInstanceIdentity
instancesGetShieldedInstanceIdentity pIgsiiProject_ pIgsiiZone_ pIgsiiInstance_ =
  InstancesGetShieldedInstanceIdentity'
    { _igsiiProject = pIgsiiProject_
    , _igsiiZone = pIgsiiZone_
    , _igsiiInstance = pIgsiiInstance_
    }


-- | Project ID for this request.
igsiiProject :: Lens' InstancesGetShieldedInstanceIdentity Text
igsiiProject
  = lens _igsiiProject (\ s a -> s{_igsiiProject = a})

-- | The name of the zone for this request.
igsiiZone :: Lens' InstancesGetShieldedInstanceIdentity Text
igsiiZone
  = lens _igsiiZone (\ s a -> s{_igsiiZone = a})

-- | Name or id of the instance scoping this request.
igsiiInstance :: Lens' InstancesGetShieldedInstanceIdentity Text
igsiiInstance
  = lens _igsiiInstance
      (\ s a -> s{_igsiiInstance = a})

instance GoogleRequest
           InstancesGetShieldedInstanceIdentity
         where
        type Rs InstancesGetShieldedInstanceIdentity =
             ShieldedInstanceIdentity
        type Scopes InstancesGetShieldedInstanceIdentity =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute",
               "https://www.googleapis.com/auth/compute.readonly"]
        requestClient
          InstancesGetShieldedInstanceIdentity'{..}
          = go _igsiiProject _igsiiZone _igsiiInstance
              (Just AltJSON)
              computeService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy InstancesGetShieldedInstanceIdentityResource)
                      mempty
