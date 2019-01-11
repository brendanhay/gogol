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
-- Module      : Network.Google.Resource.Compute.Instances.SetMachineResources
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Changes the number and\/or type of accelerator for a stopped instance to
-- the values specified in the request.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.instances.setMachineResources@.
module Network.Google.Resource.Compute.Instances.SetMachineResources
    (
    -- * REST Resource
      InstancesSetMachineResourcesResource

    -- * Creating a Request
    , instancesSetMachineResources
    , InstancesSetMachineResources

    -- * Request Lenses
    , ismrRequestId
    , ismrProject
    , ismrZone
    , ismrPayload
    , ismrInstance
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @compute.instances.setMachineResources@ method which the
-- 'InstancesSetMachineResources' request conforms to.
type InstancesSetMachineResourcesResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "zones" :>
               Capture "zone" Text :>
                 "instances" :>
                   Capture "instance" Text :>
                     "setMachineResources" :>
                       QueryParam "requestId" Text :>
                         QueryParam "alt" AltJSON :>
                           ReqBody '[JSON] InstancesSetMachineResourcesRequest
                             :> Post '[JSON] Operation

-- | Changes the number and\/or type of accelerator for a stopped instance to
-- the values specified in the request.
--
-- /See:/ 'instancesSetMachineResources' smart constructor.
data InstancesSetMachineResources = InstancesSetMachineResources'
    { _ismrRequestId :: !(Maybe Text)
    , _ismrProject   :: !Text
    , _ismrZone      :: !Text
    , _ismrPayload   :: !InstancesSetMachineResourcesRequest
    , _ismrInstance  :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'InstancesSetMachineResources' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ismrRequestId'
--
-- * 'ismrProject'
--
-- * 'ismrZone'
--
-- * 'ismrPayload'
--
-- * 'ismrInstance'
instancesSetMachineResources
    :: Text -- ^ 'ismrProject'
    -> Text -- ^ 'ismrZone'
    -> InstancesSetMachineResourcesRequest -- ^ 'ismrPayload'
    -> Text -- ^ 'ismrInstance'
    -> InstancesSetMachineResources
instancesSetMachineResources pIsmrProject_ pIsmrZone_ pIsmrPayload_ pIsmrInstance_ =
    InstancesSetMachineResources'
    { _ismrRequestId = Nothing
    , _ismrProject = pIsmrProject_
    , _ismrZone = pIsmrZone_
    , _ismrPayload = pIsmrPayload_
    , _ismrInstance = pIsmrInstance_
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
ismrRequestId :: Lens' InstancesSetMachineResources (Maybe Text)
ismrRequestId
  = lens _ismrRequestId
      (\ s a -> s{_ismrRequestId = a})

-- | Project ID for this request.
ismrProject :: Lens' InstancesSetMachineResources Text
ismrProject
  = lens _ismrProject (\ s a -> s{_ismrProject = a})

-- | The name of the zone for this request.
ismrZone :: Lens' InstancesSetMachineResources Text
ismrZone = lens _ismrZone (\ s a -> s{_ismrZone = a})

-- | Multipart request metadata.
ismrPayload :: Lens' InstancesSetMachineResources InstancesSetMachineResourcesRequest
ismrPayload
  = lens _ismrPayload (\ s a -> s{_ismrPayload = a})

-- | Name of the instance scoping this request.
ismrInstance :: Lens' InstancesSetMachineResources Text
ismrInstance
  = lens _ismrInstance (\ s a -> s{_ismrInstance = a})

instance GoogleRequest InstancesSetMachineResources
         where
        type Rs InstancesSetMachineResources = Operation
        type Scopes InstancesSetMachineResources =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute"]
        requestClient InstancesSetMachineResources'{..}
          = go _ismrProject _ismrZone _ismrInstance
              _ismrRequestId
              (Just AltJSON)
              _ismrPayload
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy InstancesSetMachineResourcesResource)
                      mempty
