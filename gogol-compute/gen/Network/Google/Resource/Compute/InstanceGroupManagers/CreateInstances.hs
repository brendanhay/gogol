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
-- Module      : Network.Google.Resource.Compute.InstanceGroupManagers.CreateInstances
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates instances with per-instance configs in this managed instance
-- group. Instances are created using the current instance template. The
-- create instances operation is marked DONE if the createInstances request
-- is successful. The underlying actions take additional time. You must
-- separately verify the status of the creating or actions with the
-- listmanagedinstances method.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.instanceGroupManagers.createInstances@.
module Network.Google.Resource.Compute.InstanceGroupManagers.CreateInstances
    (
    -- * REST Resource
      InstanceGroupManagersCreateInstancesResource

    -- * Creating a Request
    , instanceGroupManagersCreateInstances
    , InstanceGroupManagersCreateInstances

    -- * Request Lenses
    , igmciRequestId
    , igmciProject
    , igmciInstanceGroupManager
    , igmciZone
    , igmciPayload
    ) where

import Network.Google.Compute.Types
import Network.Google.Prelude

-- | A resource alias for @compute.instanceGroupManagers.createInstances@ method which the
-- 'InstanceGroupManagersCreateInstances' request conforms to.
type InstanceGroupManagersCreateInstancesResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "zones" :>
               Capture "zone" Text :>
                 "instanceGroupManagers" :>
                   Capture "instanceGroupManager" Text :>
                     "createInstances" :>
                       QueryParam "requestId" Text :>
                         QueryParam "alt" AltJSON :>
                           ReqBody '[JSON]
                             InstanceGroupManagersCreateInstancesRequest
                             :> Post '[JSON] Operation

-- | Creates instances with per-instance configs in this managed instance
-- group. Instances are created using the current instance template. The
-- create instances operation is marked DONE if the createInstances request
-- is successful. The underlying actions take additional time. You must
-- separately verify the status of the creating or actions with the
-- listmanagedinstances method.
--
-- /See:/ 'instanceGroupManagersCreateInstances' smart constructor.
data InstanceGroupManagersCreateInstances =
  InstanceGroupManagersCreateInstances'
    { _igmciRequestId :: !(Maybe Text)
    , _igmciProject :: !Text
    , _igmciInstanceGroupManager :: !Text
    , _igmciZone :: !Text
    , _igmciPayload :: !InstanceGroupManagersCreateInstancesRequest
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'InstanceGroupManagersCreateInstances' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'igmciRequestId'
--
-- * 'igmciProject'
--
-- * 'igmciInstanceGroupManager'
--
-- * 'igmciZone'
--
-- * 'igmciPayload'
instanceGroupManagersCreateInstances
    :: Text -- ^ 'igmciProject'
    -> Text -- ^ 'igmciInstanceGroupManager'
    -> Text -- ^ 'igmciZone'
    -> InstanceGroupManagersCreateInstancesRequest -- ^ 'igmciPayload'
    -> InstanceGroupManagersCreateInstances
instanceGroupManagersCreateInstances pIgmciProject_ pIgmciInstanceGroupManager_ pIgmciZone_ pIgmciPayload_ =
  InstanceGroupManagersCreateInstances'
    { _igmciRequestId = Nothing
    , _igmciProject = pIgmciProject_
    , _igmciInstanceGroupManager = pIgmciInstanceGroupManager_
    , _igmciZone = pIgmciZone_
    , _igmciPayload = pIgmciPayload_
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
igmciRequestId :: Lens' InstanceGroupManagersCreateInstances (Maybe Text)
igmciRequestId
  = lens _igmciRequestId
      (\ s a -> s{_igmciRequestId = a})

-- | Project ID for this request.
igmciProject :: Lens' InstanceGroupManagersCreateInstances Text
igmciProject
  = lens _igmciProject (\ s a -> s{_igmciProject = a})

-- | The name of the managed instance group. It should conform to RFC1035.
igmciInstanceGroupManager :: Lens' InstanceGroupManagersCreateInstances Text
igmciInstanceGroupManager
  = lens _igmciInstanceGroupManager
      (\ s a -> s{_igmciInstanceGroupManager = a})

-- | The name of the zone where the managed instance group is located. It
-- should conform to RFC1035.
igmciZone :: Lens' InstanceGroupManagersCreateInstances Text
igmciZone
  = lens _igmciZone (\ s a -> s{_igmciZone = a})

-- | Multipart request metadata.
igmciPayload :: Lens' InstanceGroupManagersCreateInstances InstanceGroupManagersCreateInstancesRequest
igmciPayload
  = lens _igmciPayload (\ s a -> s{_igmciPayload = a})

instance GoogleRequest
           InstanceGroupManagersCreateInstances
         where
        type Rs InstanceGroupManagersCreateInstances =
             Operation
        type Scopes InstanceGroupManagersCreateInstances =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute"]
        requestClient
          InstanceGroupManagersCreateInstances'{..}
          = go _igmciProject _igmciZone
              _igmciInstanceGroupManager
              _igmciRequestId
              (Just AltJSON)
              _igmciPayload
              computeService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy InstanceGroupManagersCreateInstancesResource)
                      mempty
