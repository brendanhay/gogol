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
-- Module      : Network.Google.Resource.Compute.InstanceGroups.Delete
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes the specified instance group. The instances in the group are not
-- deleted. Note that instance group must not belong to a backend service.
-- Read Deleting an instance group for more information.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.instanceGroups.delete@.
module Network.Google.Resource.Compute.InstanceGroups.Delete
    (
    -- * REST Resource
      InstanceGroupsDeleteResource

    -- * Creating a Request
    , instanceGroupsDelete
    , InstanceGroupsDelete

    -- * Request Lenses
    , igdRequestId
    , igdProject
    , igdZone
    , igdInstanceGroup
    ) where

import Network.Google.Compute.Types
import Network.Google.Prelude

-- | A resource alias for @compute.instanceGroups.delete@ method which the
-- 'InstanceGroupsDelete' request conforms to.
type InstanceGroupsDeleteResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "zones" :>
               Capture "zone" Text :>
                 "instanceGroups" :>
                   Capture "instanceGroup" Text :>
                     QueryParam "requestId" Text :>
                       QueryParam "alt" AltJSON :> Delete '[JSON] Operation

-- | Deletes the specified instance group. The instances in the group are not
-- deleted. Note that instance group must not belong to a backend service.
-- Read Deleting an instance group for more information.
--
-- /See:/ 'instanceGroupsDelete' smart constructor.
data InstanceGroupsDelete =
  InstanceGroupsDelete'
    { _igdRequestId :: !(Maybe Text)
    , _igdProject :: !Text
    , _igdZone :: !Text
    , _igdInstanceGroup :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'InstanceGroupsDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'igdRequestId'
--
-- * 'igdProject'
--
-- * 'igdZone'
--
-- * 'igdInstanceGroup'
instanceGroupsDelete
    :: Text -- ^ 'igdProject'
    -> Text -- ^ 'igdZone'
    -> Text -- ^ 'igdInstanceGroup'
    -> InstanceGroupsDelete
instanceGroupsDelete pIgdProject_ pIgdZone_ pIgdInstanceGroup_ =
  InstanceGroupsDelete'
    { _igdRequestId = Nothing
    , _igdProject = pIgdProject_
    , _igdZone = pIgdZone_
    , _igdInstanceGroup = pIgdInstanceGroup_
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
igdRequestId :: Lens' InstanceGroupsDelete (Maybe Text)
igdRequestId
  = lens _igdRequestId (\ s a -> s{_igdRequestId = a})

-- | Project ID for this request.
igdProject :: Lens' InstanceGroupsDelete Text
igdProject
  = lens _igdProject (\ s a -> s{_igdProject = a})

-- | The name of the zone where the instance group is located.
igdZone :: Lens' InstanceGroupsDelete Text
igdZone = lens _igdZone (\ s a -> s{_igdZone = a})

-- | The name of the instance group to delete.
igdInstanceGroup :: Lens' InstanceGroupsDelete Text
igdInstanceGroup
  = lens _igdInstanceGroup
      (\ s a -> s{_igdInstanceGroup = a})

instance GoogleRequest InstanceGroupsDelete where
        type Rs InstanceGroupsDelete = Operation
        type Scopes InstanceGroupsDelete =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute"]
        requestClient InstanceGroupsDelete'{..}
          = go _igdProject _igdZone _igdInstanceGroup
              _igdRequestId
              (Just AltJSON)
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy InstanceGroupsDeleteResource)
                      mempty
