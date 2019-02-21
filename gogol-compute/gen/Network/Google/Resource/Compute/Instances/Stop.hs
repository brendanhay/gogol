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
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Stops a running instance, shutting it down cleanly, and allows you to
-- restart the instance at a later time. Stopped instances do not incur VM
-- usage charges while they are stopped. However, resources that the VM is
-- using, such as persistent disks and static IP addresses, will continue
-- to be charged until they are deleted. For more information, see Stopping
-- an instance.
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
    , isRequestId
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
                       QueryParam "requestId" Text :>
                         QueryParam "alt" AltJSON :> Post '[JSON] Operation

-- | Stops a running instance, shutting it down cleanly, and allows you to
-- restart the instance at a later time. Stopped instances do not incur VM
-- usage charges while they are stopped. However, resources that the VM is
-- using, such as persistent disks and static IP addresses, will continue
-- to be charged until they are deleted. For more information, see Stopping
-- an instance.
--
-- /See:/ 'instancesStop' smart constructor.
data InstancesStop =
  InstancesStop'
    { _isRequestId :: !(Maybe Text)
    , _isProject   :: !Text
    , _isZone      :: !Text
    , _isInstance  :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'InstancesStop' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'isRequestId'
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
  InstancesStop'
    { _isRequestId = Nothing
    , _isProject = pIsProject_
    , _isZone = pIsZone_
    , _isInstance = pIsInstance_
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
isRequestId :: Lens' InstancesStop (Maybe Text)
isRequestId
  = lens _isRequestId (\ s a -> s{_isRequestId = a})

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
        type Scopes InstancesStop =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute"]
        requestClient InstancesStop'{..}
          = go _isProject _isZone _isInstance _isRequestId
              (Just AltJSON)
              computeService
          where go
                  = buildClient (Proxy :: Proxy InstancesStopResource)
                      mempty
