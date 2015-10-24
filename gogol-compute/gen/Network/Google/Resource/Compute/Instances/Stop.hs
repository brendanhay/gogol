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
-- Module      : Network.Google.Resource.Compute.Instances.Stop
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- This method stops a running instance, shutting it down cleanly, and
-- allows you to restart the instance at a later time. Stopped instances do
-- not incur per-minute, virtual machine usage charges while they are
-- stopped, but any resources that the virtual machine is using, such as
-- persistent disks and static IP addresses,will continue to be charged
-- until they are deleted. For more information, see Stopping an instance.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.instances.stop@.
module Network.Google.Resource.Compute.Instances.Stop
    (
    -- * REST Resource
      InstancesStopResource

    -- * Creating a Request
    , instancesStop
    , InstancesStop

    -- * Request Lenses
    , isProject
    , isZone
    , isInstance
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @compute.instances.stop@ method which the
-- 'InstancesStop' request conforms to.
type InstancesStopResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "zones" :>
               Capture "zone" Text :>
                 "instances" :>
                   Capture "instance" Text :>
                     "stop" :>
                       QueryParam "alt" AltJSON :> Post '[JSON] Operation

-- | This method stops a running instance, shutting it down cleanly, and
-- allows you to restart the instance at a later time. Stopped instances do
-- not incur per-minute, virtual machine usage charges while they are
-- stopped, but any resources that the virtual machine is using, such as
-- persistent disks and static IP addresses,will continue to be charged
-- until they are deleted. For more information, see Stopping an instance.
--
-- /See:/ 'instancesStop' smart constructor.
data InstancesStop = InstancesStop
    { _isProject  :: !Text
    , _isZone     :: !Text
    , _isInstance :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'InstancesStop' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'isProject'
--
-- * 'isZone'
--
-- * 'isInstance'
instancesStop
    :: Text -- ^ 'isProject'
    -> Text -- ^ 'isZone'
    -> Text -- ^ 'isInstance'
    -> InstancesStop
instancesStop pIsProject_ pIsZone_ pIsInstance_ =
    InstancesStop
    { _isProject = pIsProject_
    , _isZone = pIsZone_
    , _isInstance = pIsInstance_
    }

-- | Project ID for this request.
isProject :: Lens' InstancesStop Text
isProject
  = lens _isProject (\ s a -> s{_isProject = a})

-- | The name of the zone for this request.
isZone :: Lens' InstancesStop Text
isZone = lens _isZone (\ s a -> s{_isZone = a})

-- | Name of the instance resource to stop.
isInstance :: Lens' InstancesStop Text
isInstance
  = lens _isInstance (\ s a -> s{_isInstance = a})

instance GoogleRequest InstancesStop where
        type Rs InstancesStop = Operation
        requestClient InstancesStop{..}
          = go _isProject _isZone _isInstance (Just AltJSON)
              computeService
          where go
                  = buildClient (Proxy :: Proxy InstancesStopResource)
                      mempty
