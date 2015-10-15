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
-- Module      : Network.Google.Resource.Compute.Instances.DetachDisk
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Detaches a disk from an instance.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @ComputeInstancesDetachDisk@.
module Network.Google.Resource.Compute.Instances.DetachDisk
    (
    -- * REST Resource
      InstancesDetachDiskResource

    -- * Creating a Request
    , instancesDetachDisk'
    , InstancesDetachDisk'

    -- * Request Lenses
    , iddProject
    , iddZone
    , iddDeviceName
    , iddInstance
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @ComputeInstancesDetachDisk@ method which the
-- 'InstancesDetachDisk'' request conforms to.
type InstancesDetachDiskResource =
     Capture "project" Text :>
       "zones" :>
         Capture "zone" Text :>
           "instances" :>
             Capture "instance" Text :>
               "detachDisk" :>
                 QueryParam "deviceName" Text :>
                   QueryParam "alt" AltJSON :> Post '[JSON] Operation

-- | Detaches a disk from an instance.
--
-- /See:/ 'instancesDetachDisk'' smart constructor.
data InstancesDetachDisk' = InstancesDetachDisk'
    { _iddProject    :: !Text
    , _iddZone       :: !Text
    , _iddDeviceName :: !Text
    , _iddInstance   :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'InstancesDetachDisk'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'iddProject'
--
-- * 'iddZone'
--
-- * 'iddDeviceName'
--
-- * 'iddInstance'
instancesDetachDisk'
    :: Text -- ^ 'project'
    -> Text -- ^ 'zone'
    -> Text -- ^ 'deviceName'
    -> Text -- ^ 'instance'
    -> InstancesDetachDisk'
instancesDetachDisk' pIddProject_ pIddZone_ pIddDeviceName_ pIddInstance_ =
    InstancesDetachDisk'
    { _iddProject = pIddProject_
    , _iddZone = pIddZone_
    , _iddDeviceName = pIddDeviceName_
    , _iddInstance = pIddInstance_
    }

-- | Project ID for this request.
iddProject :: Lens' InstancesDetachDisk' Text
iddProject
  = lens _iddProject (\ s a -> s{_iddProject = a})

-- | The name of the zone for this request.
iddZone :: Lens' InstancesDetachDisk' Text
iddZone = lens _iddZone (\ s a -> s{_iddZone = a})

-- | Disk device name to detach.
iddDeviceName :: Lens' InstancesDetachDisk' Text
iddDeviceName
  = lens _iddDeviceName
      (\ s a -> s{_iddDeviceName = a})

-- | Instance name.
iddInstance :: Lens' InstancesDetachDisk' Text
iddInstance
  = lens _iddInstance (\ s a -> s{_iddInstance = a})

instance GoogleRequest InstancesDetachDisk' where
        type Rs InstancesDetachDisk' = Operation
        requestClient InstancesDetachDisk'{..}
          = go _iddProject _iddZone _iddInstance
              (Just _iddDeviceName)
              (Just AltJSON)
              compute
          where go
                  = buildClient
                      (Proxy :: Proxy InstancesDetachDiskResource)
                      mempty
