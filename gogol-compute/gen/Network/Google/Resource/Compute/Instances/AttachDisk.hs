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
-- Module      : Network.Google.Resource.Compute.Instances.AttachDisk
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Attaches an existing Disk resource to an instance. You must first create
-- the disk before you can attach it. It is not possible to create and
-- attach a disk at the same time. For more information, read Adding a
-- persistent disk to your instance.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.instances.attachDisk@.
module Network.Google.Resource.Compute.Instances.AttachDisk
    (
    -- * REST Resource
      InstancesAttachDiskResource

    -- * Creating a Request
    , instancesAttachDisk
    , InstancesAttachDisk

    -- * Request Lenses
    , insRequestId
    , insProject
    , insZone
    , insPayload
    , insForceAttach
    , insInstance
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @compute.instances.attachDisk@ method which the
-- 'InstancesAttachDisk' request conforms to.
type InstancesAttachDiskResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "zones" :>
               Capture "zone" Text :>
                 "instances" :>
                   Capture "instance" Text :>
                     "attachDisk" :>
                       QueryParam "requestId" Text :>
                         QueryParam "forceAttach" Bool :>
                           QueryParam "alt" AltJSON :>
                             ReqBody '[JSON] AttachedDisk :>
                               Post '[JSON] Operation

-- | Attaches an existing Disk resource to an instance. You must first create
-- the disk before you can attach it. It is not possible to create and
-- attach a disk at the same time. For more information, read Adding a
-- persistent disk to your instance.
--
-- /See:/ 'instancesAttachDisk' smart constructor.
data InstancesAttachDisk =
  InstancesAttachDisk'
    { _insRequestId   :: !(Maybe Text)
    , _insProject     :: !Text
    , _insZone        :: !Text
    , _insPayload     :: !AttachedDisk
    , _insForceAttach :: !(Maybe Bool)
    , _insInstance    :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'InstancesAttachDisk' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'insRequestId'
--
-- * 'insProject'
--
-- * 'insZone'
--
-- * 'insPayload'
--
-- * 'insForceAttach'
--
-- * 'insInstance'
instancesAttachDisk
    :: Text -- ^ 'insProject'
    -> Text -- ^ 'insZone'
    -> AttachedDisk -- ^ 'insPayload'
    -> Text -- ^ 'insInstance'
    -> InstancesAttachDisk
instancesAttachDisk pInsProject_ pInsZone_ pInsPayload_ pInsInstance_ =
  InstancesAttachDisk'
    { _insRequestId = Nothing
    , _insProject = pInsProject_
    , _insZone = pInsZone_
    , _insPayload = pInsPayload_
    , _insForceAttach = Nothing
    , _insInstance = pInsInstance_
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
insRequestId :: Lens' InstancesAttachDisk (Maybe Text)
insRequestId
  = lens _insRequestId (\ s a -> s{_insRequestId = a})

-- | Project ID for this request.
insProject :: Lens' InstancesAttachDisk Text
insProject
  = lens _insProject (\ s a -> s{_insProject = a})

-- | The name of the zone for this request.
insZone :: Lens' InstancesAttachDisk Text
insZone = lens _insZone (\ s a -> s{_insZone = a})

-- | Multipart request metadata.
insPayload :: Lens' InstancesAttachDisk AttachedDisk
insPayload
  = lens _insPayload (\ s a -> s{_insPayload = a})

-- | Whether to force attach the disk even if it\'s currently attached to
-- another instance. This is only available for regional disks.
insForceAttach :: Lens' InstancesAttachDisk (Maybe Bool)
insForceAttach
  = lens _insForceAttach
      (\ s a -> s{_insForceAttach = a})

-- | The instance name for this request.
insInstance :: Lens' InstancesAttachDisk Text
insInstance
  = lens _insInstance (\ s a -> s{_insInstance = a})

instance GoogleRequest InstancesAttachDisk where
        type Rs InstancesAttachDisk = Operation
        type Scopes InstancesAttachDisk =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute"]
        requestClient InstancesAttachDisk'{..}
          = go _insProject _insZone _insInstance _insRequestId
              _insForceAttach
              (Just AltJSON)
              _insPayload
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy InstancesAttachDiskResource)
                      mempty
