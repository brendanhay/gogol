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
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Detaches a disk from an instance.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.instances.detachDisk@.
module Network.Google.Resource.Compute.Instances.DetachDisk
    (
    -- * REST Resource
      InstancesDetachDiskResource

    -- * Creating a Request
    , instancesDetachDisk
    , InstancesDetachDisk

    -- * Request Lenses
    , idddRequestId
    , idddProject
    , idddZone
    , idddDeviceName
    , idddInstance
    ) where

import Network.Google.Compute.Types
import Network.Google.Prelude

-- | A resource alias for @compute.instances.detachDisk@ method which the
-- 'InstancesDetachDisk' request conforms to.
type InstancesDetachDiskResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "zones" :>
               Capture "zone" Text :>
                 "instances" :>
                   Capture "instance" Text :>
                     "detachDisk" :>
                       QueryParam "deviceName" Text :>
                         QueryParam "requestId" Text :>
                           QueryParam "alt" AltJSON :> Post '[JSON] Operation

-- | Detaches a disk from an instance.
--
-- /See:/ 'instancesDetachDisk' smart constructor.
data InstancesDetachDisk =
  InstancesDetachDisk'
    { _idddRequestId :: !(Maybe Text)
    , _idddProject :: !Text
    , _idddZone :: !Text
    , _idddDeviceName :: !Text
    , _idddInstance :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'InstancesDetachDisk' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'idddRequestId'
--
-- * 'idddProject'
--
-- * 'idddZone'
--
-- * 'idddDeviceName'
--
-- * 'idddInstance'
instancesDetachDisk
    :: Text -- ^ 'idddProject'
    -> Text -- ^ 'idddZone'
    -> Text -- ^ 'idddDeviceName'
    -> Text -- ^ 'idddInstance'
    -> InstancesDetachDisk
instancesDetachDisk pIdddProject_ pIdddZone_ pIdddDeviceName_ pIdddInstance_ =
  InstancesDetachDisk'
    { _idddRequestId = Nothing
    , _idddProject = pIdddProject_
    , _idddZone = pIdddZone_
    , _idddDeviceName = pIdddDeviceName_
    , _idddInstance = pIdddInstance_
    }


-- | An optional request ID to identify requests. Specify a unique request ID
-- so that if you must retry your request, the server will know to ignore
-- the request if it has already been completed. For example, consider a
-- situation where you make an initial request and the request times out.
-- If you make the request again with the same request ID, the server can
-- check if original operation with the same request ID was received, and
-- if so, will ignore the second request. This prevents clients from
-- accidentally creating duplicate commitments. The request ID must be a
-- valid UUID with the exception that zero UUID is not supported
-- (00000000-0000-0000-0000-000000000000).
idddRequestId :: Lens' InstancesDetachDisk (Maybe Text)
idddRequestId
  = lens _idddRequestId
      (\ s a -> s{_idddRequestId = a})

-- | Project ID for this request.
idddProject :: Lens' InstancesDetachDisk Text
idddProject
  = lens _idddProject (\ s a -> s{_idddProject = a})

-- | The name of the zone for this request.
idddZone :: Lens' InstancesDetachDisk Text
idddZone = lens _idddZone (\ s a -> s{_idddZone = a})

-- | The device name of the disk to detach. Make a get() request on the
-- instance to view currently attached disks and device names.
idddDeviceName :: Lens' InstancesDetachDisk Text
idddDeviceName
  = lens _idddDeviceName
      (\ s a -> s{_idddDeviceName = a})

-- | Instance name for this request.
idddInstance :: Lens' InstancesDetachDisk Text
idddInstance
  = lens _idddInstance (\ s a -> s{_idddInstance = a})

instance GoogleRequest InstancesDetachDisk where
        type Rs InstancesDetachDisk = Operation
        type Scopes InstancesDetachDisk =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute"]
        requestClient InstancesDetachDisk'{..}
          = go _idddProject _idddZone _idddInstance
              (Just _idddDeviceName)
              _idddRequestId
              (Just AltJSON)
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy InstancesDetachDiskResource)
                      mempty
