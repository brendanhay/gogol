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
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Attaches a Disk resource to an instance.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @ComputeInstancesAttachDisk@.
module Network.Google.Resource.Compute.Instances.AttachDisk
    (
    -- * REST Resource
      InstancesAttachDiskResource

    -- * Creating a Request
    , instancesAttachDisk'
    , InstancesAttachDisk'

    -- * Request Lenses
    , iadProject
    , iadZone
    , iadPayload
    , iadInstance
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @ComputeInstancesAttachDisk@ method which the
-- 'InstancesAttachDisk'' request conforms to.
type InstancesAttachDiskResource =
     Capture "project" Text :>
       "zones" :>
         Capture "zone" Text :>
           "instances" :>
             Capture "instance" Text :>
               "attachDisk" :>
                 QueryParam "alt" AltJSON :>
                   ReqBody '[JSON] AttachedDisk :>
                     Post '[JSON] Operation

-- | Attaches a Disk resource to an instance.
--
-- /See:/ 'instancesAttachDisk'' smart constructor.
data InstancesAttachDisk' = InstancesAttachDisk'
    { _iadProject  :: !Text
    , _iadZone     :: !Text
    , _iadPayload  :: !AttachedDisk
    , _iadInstance :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'InstancesAttachDisk'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'iadProject'
--
-- * 'iadZone'
--
-- * 'iadPayload'
--
-- * 'iadInstance'
instancesAttachDisk'
    :: Text -- ^ 'project'
    -> Text -- ^ 'zone'
    -> AttachedDisk -- ^ 'payload'
    -> Text -- ^ 'instance'
    -> InstancesAttachDisk'
instancesAttachDisk' pIadProject_ pIadZone_ pIadPayload_ pIadInstance_ =
    InstancesAttachDisk'
    { _iadProject = pIadProject_
    , _iadZone = pIadZone_
    , _iadPayload = pIadPayload_
    , _iadInstance = pIadInstance_
    }

-- | Project ID for this request.
iadProject :: Lens' InstancesAttachDisk' Text
iadProject
  = lens _iadProject (\ s a -> s{_iadProject = a})

-- | The name of the zone for this request.
iadZone :: Lens' InstancesAttachDisk' Text
iadZone = lens _iadZone (\ s a -> s{_iadZone = a})

-- | Multipart request metadata.
iadPayload :: Lens' InstancesAttachDisk' AttachedDisk
iadPayload
  = lens _iadPayload (\ s a -> s{_iadPayload = a})

-- | Instance name.
iadInstance :: Lens' InstancesAttachDisk' Text
iadInstance
  = lens _iadInstance (\ s a -> s{_iadInstance = a})

instance GoogleRequest InstancesAttachDisk' where
        type Rs InstancesAttachDisk' = Operation
        requestClient InstancesAttachDisk'{..}
          = go _iadProject _iadZone _iadInstance (Just AltJSON)
              _iadPayload
              compute
          where go
                  = buildClient
                      (Proxy :: Proxy InstancesAttachDiskResource)
                      mempty
