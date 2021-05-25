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
-- Module      : Network.Google.Resource.Compute.InstanceGroupManagers.Insert
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a managed instance group using the information that you specify
-- in the request. After the group is created, instances in the group are
-- created using the specified instance template. This operation is marked
-- as DONE when the group is created even if the instances in the group
-- have not yet been created. You must separately verify the status of the
-- individual instances with the listmanagedinstances method. A managed
-- instance group can have up to 1000 VM instances per group. Please
-- contact Cloud Support if you need an increase in this limit.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.instanceGroupManagers.insert@.
module Network.Google.Resource.Compute.InstanceGroupManagers.Insert
    (
    -- * REST Resource
      InstanceGroupManagersInsertResource

    -- * Creating a Request
    , instanceGroupManagersInsert
    , InstanceGroupManagersInsert

    -- * Request Lenses
    , igmiRequestId
    , igmiProject
    , igmiZone
    , igmiPayload
    ) where

import Network.Google.Compute.Types
import Network.Google.Prelude

-- | A resource alias for @compute.instanceGroupManagers.insert@ method which the
-- 'InstanceGroupManagersInsert' request conforms to.
type InstanceGroupManagersInsertResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "zones" :>
               Capture "zone" Text :>
                 "instanceGroupManagers" :>
                   QueryParam "requestId" Text :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] InstanceGroupManager :>
                         Post '[JSON] Operation

-- | Creates a managed instance group using the information that you specify
-- in the request. After the group is created, instances in the group are
-- created using the specified instance template. This operation is marked
-- as DONE when the group is created even if the instances in the group
-- have not yet been created. You must separately verify the status of the
-- individual instances with the listmanagedinstances method. A managed
-- instance group can have up to 1000 VM instances per group. Please
-- contact Cloud Support if you need an increase in this limit.
--
-- /See:/ 'instanceGroupManagersInsert' smart constructor.
data InstanceGroupManagersInsert =
  InstanceGroupManagersInsert'
    { _igmiRequestId :: !(Maybe Text)
    , _igmiProject :: !Text
    , _igmiZone :: !Text
    , _igmiPayload :: !InstanceGroupManager
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'InstanceGroupManagersInsert' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'igmiRequestId'
--
-- * 'igmiProject'
--
-- * 'igmiZone'
--
-- * 'igmiPayload'
instanceGroupManagersInsert
    :: Text -- ^ 'igmiProject'
    -> Text -- ^ 'igmiZone'
    -> InstanceGroupManager -- ^ 'igmiPayload'
    -> InstanceGroupManagersInsert
instanceGroupManagersInsert pIgmiProject_ pIgmiZone_ pIgmiPayload_ =
  InstanceGroupManagersInsert'
    { _igmiRequestId = Nothing
    , _igmiProject = pIgmiProject_
    , _igmiZone = pIgmiZone_
    , _igmiPayload = pIgmiPayload_
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
igmiRequestId :: Lens' InstanceGroupManagersInsert (Maybe Text)
igmiRequestId
  = lens _igmiRequestId
      (\ s a -> s{_igmiRequestId = a})

-- | Project ID for this request.
igmiProject :: Lens' InstanceGroupManagersInsert Text
igmiProject
  = lens _igmiProject (\ s a -> s{_igmiProject = a})

-- | The name of the zone where you want to create the managed instance
-- group.
igmiZone :: Lens' InstanceGroupManagersInsert Text
igmiZone = lens _igmiZone (\ s a -> s{_igmiZone = a})

-- | Multipart request metadata.
igmiPayload :: Lens' InstanceGroupManagersInsert InstanceGroupManager
igmiPayload
  = lens _igmiPayload (\ s a -> s{_igmiPayload = a})

instance GoogleRequest InstanceGroupManagersInsert
         where
        type Rs InstanceGroupManagersInsert = Operation
        type Scopes InstanceGroupManagersInsert =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute"]
        requestClient InstanceGroupManagersInsert'{..}
          = go _igmiProject _igmiZone _igmiRequestId
              (Just AltJSON)
              _igmiPayload
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy InstanceGroupManagersInsertResource)
                      mempty
