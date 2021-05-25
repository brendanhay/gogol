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
-- Module      : Network.Google.Resource.Compute.RegionInstanceGroupManagers.CreateInstances
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates instances with per-instance configs in this regional managed
-- instance group. Instances are created using the current instance
-- template. The create instances operation is marked DONE if the
-- createInstances request is successful. The underlying actions take
-- additional time. You must separately verify the status of the creating
-- or actions with the listmanagedinstances method.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.regionInstanceGroupManagers.createInstances@.
module Network.Google.Resource.Compute.RegionInstanceGroupManagers.CreateInstances
    (
    -- * REST Resource
      RegionInstanceGroupManagersCreateInstancesResource

    -- * Creating a Request
    , regionInstanceGroupManagersCreateInstances
    , RegionInstanceGroupManagersCreateInstances

    -- * Request Lenses
    , rigmciRequestId
    , rigmciProject
    , rigmciInstanceGroupManager
    , rigmciPayload
    , rigmciRegion
    ) where

import Network.Google.Compute.Types
import Network.Google.Prelude

-- | A resource alias for @compute.regionInstanceGroupManagers.createInstances@ method which the
-- 'RegionInstanceGroupManagersCreateInstances' request conforms to.
type RegionInstanceGroupManagersCreateInstancesResource
     =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "regions" :>
               Capture "region" Text :>
                 "instanceGroupManagers" :>
                   Capture "instanceGroupManager" Text :>
                     "createInstances" :>
                       QueryParam "requestId" Text :>
                         QueryParam "alt" AltJSON :>
                           ReqBody '[JSON]
                             RegionInstanceGroupManagersCreateInstancesRequest
                             :> Post '[JSON] Operation

-- | Creates instances with per-instance configs in this regional managed
-- instance group. Instances are created using the current instance
-- template. The create instances operation is marked DONE if the
-- createInstances request is successful. The underlying actions take
-- additional time. You must separately verify the status of the creating
-- or actions with the listmanagedinstances method.
--
-- /See:/ 'regionInstanceGroupManagersCreateInstances' smart constructor.
data RegionInstanceGroupManagersCreateInstances =
  RegionInstanceGroupManagersCreateInstances'
    { _rigmciRequestId :: !(Maybe Text)
    , _rigmciProject :: !Text
    , _rigmciInstanceGroupManager :: !Text
    , _rigmciPayload :: !RegionInstanceGroupManagersCreateInstancesRequest
    , _rigmciRegion :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'RegionInstanceGroupManagersCreateInstances' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rigmciRequestId'
--
-- * 'rigmciProject'
--
-- * 'rigmciInstanceGroupManager'
--
-- * 'rigmciPayload'
--
-- * 'rigmciRegion'
regionInstanceGroupManagersCreateInstances
    :: Text -- ^ 'rigmciProject'
    -> Text -- ^ 'rigmciInstanceGroupManager'
    -> RegionInstanceGroupManagersCreateInstancesRequest -- ^ 'rigmciPayload'
    -> Text -- ^ 'rigmciRegion'
    -> RegionInstanceGroupManagersCreateInstances
regionInstanceGroupManagersCreateInstances pRigmciProject_ pRigmciInstanceGroupManager_ pRigmciPayload_ pRigmciRegion_ =
  RegionInstanceGroupManagersCreateInstances'
    { _rigmciRequestId = Nothing
    , _rigmciProject = pRigmciProject_
    , _rigmciInstanceGroupManager = pRigmciInstanceGroupManager_
    , _rigmciPayload = pRigmciPayload_
    , _rigmciRegion = pRigmciRegion_
    }


-- | An optional request ID to identify requests. Specify a unique request ID
-- so that if you must retry your request, the server will know to ignore
-- the request if it has already been completed. For example, consider a
-- situation where you make an initial request and the request times out.
-- If you make the request again with the same request ID, the server can
-- check if original operation with the same request ID was received, and
-- if so, will ignore the second request. The request ID must be a valid
-- UUID with the exception that zero UUID is not supported
-- (00000000-0000-0000-0000-000000000000).
rigmciRequestId :: Lens' RegionInstanceGroupManagersCreateInstances (Maybe Text)
rigmciRequestId
  = lens _rigmciRequestId
      (\ s a -> s{_rigmciRequestId = a})

-- | Project ID for this request.
rigmciProject :: Lens' RegionInstanceGroupManagersCreateInstances Text
rigmciProject
  = lens _rigmciProject
      (\ s a -> s{_rigmciProject = a})

-- | The name of the managed instance group. It should conform to RFC1035.
rigmciInstanceGroupManager :: Lens' RegionInstanceGroupManagersCreateInstances Text
rigmciInstanceGroupManager
  = lens _rigmciInstanceGroupManager
      (\ s a -> s{_rigmciInstanceGroupManager = a})

-- | Multipart request metadata.
rigmciPayload :: Lens' RegionInstanceGroupManagersCreateInstances RegionInstanceGroupManagersCreateInstancesRequest
rigmciPayload
  = lens _rigmciPayload
      (\ s a -> s{_rigmciPayload = a})

-- | The name of the region where the managed instance group is located. It
-- should conform to RFC1035.
rigmciRegion :: Lens' RegionInstanceGroupManagersCreateInstances Text
rigmciRegion
  = lens _rigmciRegion (\ s a -> s{_rigmciRegion = a})

instance GoogleRequest
           RegionInstanceGroupManagersCreateInstances
         where
        type Rs RegionInstanceGroupManagersCreateInstances =
             Operation
        type Scopes
               RegionInstanceGroupManagersCreateInstances
             =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute"]
        requestClient
          RegionInstanceGroupManagersCreateInstances'{..}
          = go _rigmciProject _rigmciRegion
              _rigmciInstanceGroupManager
              _rigmciRequestId
              (Just AltJSON)
              _rigmciPayload
              computeService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           RegionInstanceGroupManagersCreateInstancesResource)
                      mempty
