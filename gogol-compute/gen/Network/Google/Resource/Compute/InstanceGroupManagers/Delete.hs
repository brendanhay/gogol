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
-- Module      : Network.Google.Resource.Compute.InstanceGroupManagers.Delete
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes the specified managed instance group and all of the instances in
-- that group. Note that the instance group must not belong to a backend
-- service. Read Deleting an instance group for more information.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.instanceGroupManagers.delete@.
module Network.Google.Resource.Compute.InstanceGroupManagers.Delete
    (
    -- * REST Resource
      InstanceGroupManagersDeleteResource

    -- * Creating a Request
    , instanceGroupManagersDelete
    , InstanceGroupManagersDelete

    -- * Request Lenses
    , igmdRequestId
    , igmdProject
    , igmdInstanceGroupManager
    , igmdZone
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @compute.instanceGroupManagers.delete@ method which the
-- 'InstanceGroupManagersDelete' request conforms to.
type InstanceGroupManagersDeleteResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "zones" :>
               Capture "zone" Text :>
                 "instanceGroupManagers" :>
                   Capture "instanceGroupManager" Text :>
                     QueryParam "requestId" Text :>
                       QueryParam "alt" AltJSON :> Delete '[JSON] Operation

-- | Deletes the specified managed instance group and all of the instances in
-- that group. Note that the instance group must not belong to a backend
-- service. Read Deleting an instance group for more information.
--
-- /See:/ 'instanceGroupManagersDelete' smart constructor.
data InstanceGroupManagersDelete =
  InstanceGroupManagersDelete'
    { _igmdRequestId            :: !(Maybe Text)
    , _igmdProject              :: !Text
    , _igmdInstanceGroupManager :: !Text
    , _igmdZone                 :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'InstanceGroupManagersDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'igmdRequestId'
--
-- * 'igmdProject'
--
-- * 'igmdInstanceGroupManager'
--
-- * 'igmdZone'
instanceGroupManagersDelete
    :: Text -- ^ 'igmdProject'
    -> Text -- ^ 'igmdInstanceGroupManager'
    -> Text -- ^ 'igmdZone'
    -> InstanceGroupManagersDelete
instanceGroupManagersDelete pIgmdProject_ pIgmdInstanceGroupManager_ pIgmdZone_ =
  InstanceGroupManagersDelete'
    { _igmdRequestId = Nothing
    , _igmdProject = pIgmdProject_
    , _igmdInstanceGroupManager = pIgmdInstanceGroupManager_
    , _igmdZone = pIgmdZone_
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
igmdRequestId :: Lens' InstanceGroupManagersDelete (Maybe Text)
igmdRequestId
  = lens _igmdRequestId
      (\ s a -> s{_igmdRequestId = a})

-- | Project ID for this request.
igmdProject :: Lens' InstanceGroupManagersDelete Text
igmdProject
  = lens _igmdProject (\ s a -> s{_igmdProject = a})

-- | The name of the managed instance group to delete.
igmdInstanceGroupManager :: Lens' InstanceGroupManagersDelete Text
igmdInstanceGroupManager
  = lens _igmdInstanceGroupManager
      (\ s a -> s{_igmdInstanceGroupManager = a})

-- | The name of the zone where the managed instance group is located.
igmdZone :: Lens' InstanceGroupManagersDelete Text
igmdZone = lens _igmdZone (\ s a -> s{_igmdZone = a})

instance GoogleRequest InstanceGroupManagersDelete
         where
        type Rs InstanceGroupManagersDelete = Operation
        type Scopes InstanceGroupManagersDelete =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute"]
        requestClient InstanceGroupManagersDelete'{..}
          = go _igmdProject _igmdZone _igmdInstanceGroupManager
              _igmdRequestId
              (Just AltJSON)
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy InstanceGroupManagersDeleteResource)
                      mempty
