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
-- Module      : Network.Google.Resource.Compute.RegionInstanceGroupManagers.Insert
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
-- individual instances with the listmanagedinstances method. A regional
-- managed instance group can contain up to 2000 instances.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.regionInstanceGroupManagers.insert@.
module Network.Google.Resource.Compute.RegionInstanceGroupManagers.Insert
    (
    -- * REST Resource
      RegionInstanceGroupManagersInsertResource

    -- * Creating a Request
    , regionInstanceGroupManagersInsert
    , RegionInstanceGroupManagersInsert

    -- * Request Lenses
    , rigmiRequestId
    , rigmiProject
    , rigmiPayload
    , rigmiRegion
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @compute.regionInstanceGroupManagers.insert@ method which the
-- 'RegionInstanceGroupManagersInsert' request conforms to.
type RegionInstanceGroupManagersInsertResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "regions" :>
               Capture "region" Text :>
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
-- individual instances with the listmanagedinstances method. A regional
-- managed instance group can contain up to 2000 instances.
--
-- /See:/ 'regionInstanceGroupManagersInsert' smart constructor.
data RegionInstanceGroupManagersInsert =
  RegionInstanceGroupManagersInsert'
    { _rigmiRequestId :: !(Maybe Text)
    , _rigmiProject   :: !Text
    , _rigmiPayload   :: !InstanceGroupManager
    , _rigmiRegion    :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'RegionInstanceGroupManagersInsert' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rigmiRequestId'
--
-- * 'rigmiProject'
--
-- * 'rigmiPayload'
--
-- * 'rigmiRegion'
regionInstanceGroupManagersInsert
    :: Text -- ^ 'rigmiProject'
    -> InstanceGroupManager -- ^ 'rigmiPayload'
    -> Text -- ^ 'rigmiRegion'
    -> RegionInstanceGroupManagersInsert
regionInstanceGroupManagersInsert pRigmiProject_ pRigmiPayload_ pRigmiRegion_ =
  RegionInstanceGroupManagersInsert'
    { _rigmiRequestId = Nothing
    , _rigmiProject = pRigmiProject_
    , _rigmiPayload = pRigmiPayload_
    , _rigmiRegion = pRigmiRegion_
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
rigmiRequestId :: Lens' RegionInstanceGroupManagersInsert (Maybe Text)
rigmiRequestId
  = lens _rigmiRequestId
      (\ s a -> s{_rigmiRequestId = a})

-- | Project ID for this request.
rigmiProject :: Lens' RegionInstanceGroupManagersInsert Text
rigmiProject
  = lens _rigmiProject (\ s a -> s{_rigmiProject = a})

-- | Multipart request metadata.
rigmiPayload :: Lens' RegionInstanceGroupManagersInsert InstanceGroupManager
rigmiPayload
  = lens _rigmiPayload (\ s a -> s{_rigmiPayload = a})

-- | Name of the region scoping this request.
rigmiRegion :: Lens' RegionInstanceGroupManagersInsert Text
rigmiRegion
  = lens _rigmiRegion (\ s a -> s{_rigmiRegion = a})

instance GoogleRequest
           RegionInstanceGroupManagersInsert
         where
        type Rs RegionInstanceGroupManagersInsert = Operation
        type Scopes RegionInstanceGroupManagersInsert =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute"]
        requestClient RegionInstanceGroupManagersInsert'{..}
          = go _rigmiProject _rigmiRegion _rigmiRequestId
              (Just AltJSON)
              _rigmiPayload
              computeService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy RegionInstanceGroupManagersInsertResource)
                      mempty
