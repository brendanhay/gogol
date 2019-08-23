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
-- Module      : Network.Google.Resource.Compute.RegionInstanceGroupManagers.Patch
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates a managed instance group using the information that you specify
-- in the request. This operation is marked as DONE when the group is
-- patched even if the instances in the group are still in the process of
-- being patched. You must separately verify the status of the individual
-- instances with the listmanagedinstances method. This method supports
-- PATCH semantics and uses the JSON merge patch format and processing
-- rules.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.regionInstanceGroupManagers.patch@.
module Network.Google.Resource.Compute.RegionInstanceGroupManagers.Patch
    (
    -- * REST Resource
      RegionInstanceGroupManagersPatchResource

    -- * Creating a Request
    , regionInstanceGroupManagersPatch
    , RegionInstanceGroupManagersPatch

    -- * Request Lenses
    , rigmpRequestId
    , rigmpProject
    , rigmpInstanceGroupManager
    , rigmpPayload
    , rigmpRegion
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @compute.regionInstanceGroupManagers.patch@ method which the
-- 'RegionInstanceGroupManagersPatch' request conforms to.
type RegionInstanceGroupManagersPatchResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "regions" :>
               Capture "region" Text :>
                 "instanceGroupManagers" :>
                   Capture "instanceGroupManager" Text :>
                     QueryParam "requestId" Text :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] InstanceGroupManager :>
                           Patch '[JSON] Operation

-- | Updates a managed instance group using the information that you specify
-- in the request. This operation is marked as DONE when the group is
-- patched even if the instances in the group are still in the process of
-- being patched. You must separately verify the status of the individual
-- instances with the listmanagedinstances method. This method supports
-- PATCH semantics and uses the JSON merge patch format and processing
-- rules.
--
-- /See:/ 'regionInstanceGroupManagersPatch' smart constructor.
data RegionInstanceGroupManagersPatch =
  RegionInstanceGroupManagersPatch'
    { _rigmpRequestId            :: !(Maybe Text)
    , _rigmpProject              :: !Text
    , _rigmpInstanceGroupManager :: !Text
    , _rigmpPayload              :: !InstanceGroupManager
    , _rigmpRegion               :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'RegionInstanceGroupManagersPatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rigmpRequestId'
--
-- * 'rigmpProject'
--
-- * 'rigmpInstanceGroupManager'
--
-- * 'rigmpPayload'
--
-- * 'rigmpRegion'
regionInstanceGroupManagersPatch
    :: Text -- ^ 'rigmpProject'
    -> Text -- ^ 'rigmpInstanceGroupManager'
    -> InstanceGroupManager -- ^ 'rigmpPayload'
    -> Text -- ^ 'rigmpRegion'
    -> RegionInstanceGroupManagersPatch
regionInstanceGroupManagersPatch pRigmpProject_ pRigmpInstanceGroupManager_ pRigmpPayload_ pRigmpRegion_ =
  RegionInstanceGroupManagersPatch'
    { _rigmpRequestId = Nothing
    , _rigmpProject = pRigmpProject_
    , _rigmpInstanceGroupManager = pRigmpInstanceGroupManager_
    , _rigmpPayload = pRigmpPayload_
    , _rigmpRegion = pRigmpRegion_
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
rigmpRequestId :: Lens' RegionInstanceGroupManagersPatch (Maybe Text)
rigmpRequestId
  = lens _rigmpRequestId
      (\ s a -> s{_rigmpRequestId = a})

-- | Project ID for this request.
rigmpProject :: Lens' RegionInstanceGroupManagersPatch Text
rigmpProject
  = lens _rigmpProject (\ s a -> s{_rigmpProject = a})

-- | The name of the instance group manager.
rigmpInstanceGroupManager :: Lens' RegionInstanceGroupManagersPatch Text
rigmpInstanceGroupManager
  = lens _rigmpInstanceGroupManager
      (\ s a -> s{_rigmpInstanceGroupManager = a})

-- | Multipart request metadata.
rigmpPayload :: Lens' RegionInstanceGroupManagersPatch InstanceGroupManager
rigmpPayload
  = lens _rigmpPayload (\ s a -> s{_rigmpPayload = a})

-- | Name of the region scoping this request.
rigmpRegion :: Lens' RegionInstanceGroupManagersPatch Text
rigmpRegion
  = lens _rigmpRegion (\ s a -> s{_rigmpRegion = a})

instance GoogleRequest
           RegionInstanceGroupManagersPatch
         where
        type Rs RegionInstanceGroupManagersPatch = Operation
        type Scopes RegionInstanceGroupManagersPatch =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute"]
        requestClient RegionInstanceGroupManagersPatch'{..}
          = go _rigmpProject _rigmpRegion
              _rigmpInstanceGroupManager
              _rigmpRequestId
              (Just AltJSON)
              _rigmpPayload
              computeService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy RegionInstanceGroupManagersPatchResource)
                      mempty
