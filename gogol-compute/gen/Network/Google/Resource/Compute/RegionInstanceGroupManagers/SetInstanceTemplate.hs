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
-- Module      : Network.Google.Resource.Compute.RegionInstanceGroupManagers.SetInstanceTemplate
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Sets the instance template to use when creating new instances or
-- recreating instances in this group. Existing instances are not affected.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.regionInstanceGroupManagers.setInstanceTemplate@.
module Network.Google.Resource.Compute.RegionInstanceGroupManagers.SetInstanceTemplate
    (
    -- * REST Resource
      RegionInstanceGroupManagersSetInstanceTemplateResource

    -- * Creating a Request
    , regionInstanceGroupManagersSetInstanceTemplate
    , RegionInstanceGroupManagersSetInstanceTemplate

    -- * Request Lenses
    , rigmsitRequestId
    , rigmsitProject
    , rigmsitInstanceGroupManager
    , rigmsitPayload
    , rigmsitRegion
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @compute.regionInstanceGroupManagers.setInstanceTemplate@ method which the
-- 'RegionInstanceGroupManagersSetInstanceTemplate' request conforms to.
type RegionInstanceGroupManagersSetInstanceTemplateResource
     =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "regions" :>
               Capture "region" Text :>
                 "instanceGroupManagers" :>
                   Capture "instanceGroupManager" Text :>
                     "setInstanceTemplate" :>
                       QueryParam "requestId" Text :>
                         QueryParam "alt" AltJSON :>
                           ReqBody '[JSON]
                             RegionInstanceGroupManagersSetTemplateRequest
                             :> Post '[JSON] Operation

-- | Sets the instance template to use when creating new instances or
-- recreating instances in this group. Existing instances are not affected.
--
-- /See:/ 'regionInstanceGroupManagersSetInstanceTemplate' smart constructor.
data RegionInstanceGroupManagersSetInstanceTemplate = RegionInstanceGroupManagersSetInstanceTemplate'
    { _rigmsitRequestId            :: !(Maybe Text)
    , _rigmsitProject              :: !Text
    , _rigmsitInstanceGroupManager :: !Text
    , _rigmsitPayload              :: !RegionInstanceGroupManagersSetTemplateRequest
    , _rigmsitRegion               :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'RegionInstanceGroupManagersSetInstanceTemplate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rigmsitRequestId'
--
-- * 'rigmsitProject'
--
-- * 'rigmsitInstanceGroupManager'
--
-- * 'rigmsitPayload'
--
-- * 'rigmsitRegion'
regionInstanceGroupManagersSetInstanceTemplate
    :: Text -- ^ 'rigmsitProject'
    -> Text -- ^ 'rigmsitInstanceGroupManager'
    -> RegionInstanceGroupManagersSetTemplateRequest -- ^ 'rigmsitPayload'
    -> Text -- ^ 'rigmsitRegion'
    -> RegionInstanceGroupManagersSetInstanceTemplate
regionInstanceGroupManagersSetInstanceTemplate pRigmsitProject_ pRigmsitInstanceGroupManager_ pRigmsitPayload_ pRigmsitRegion_ =
    RegionInstanceGroupManagersSetInstanceTemplate'
    { _rigmsitRequestId = Nothing
    , _rigmsitProject = pRigmsitProject_
    , _rigmsitInstanceGroupManager = pRigmsitInstanceGroupManager_
    , _rigmsitPayload = pRigmsitPayload_
    , _rigmsitRegion = pRigmsitRegion_
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
rigmsitRequestId :: Lens' RegionInstanceGroupManagersSetInstanceTemplate (Maybe Text)
rigmsitRequestId
  = lens _rigmsitRequestId
      (\ s a -> s{_rigmsitRequestId = a})

-- | Project ID for this request.
rigmsitProject :: Lens' RegionInstanceGroupManagersSetInstanceTemplate Text
rigmsitProject
  = lens _rigmsitProject
      (\ s a -> s{_rigmsitProject = a})

-- | The name of the managed instance group.
rigmsitInstanceGroupManager :: Lens' RegionInstanceGroupManagersSetInstanceTemplate Text
rigmsitInstanceGroupManager
  = lens _rigmsitInstanceGroupManager
      (\ s a -> s{_rigmsitInstanceGroupManager = a})

-- | Multipart request metadata.
rigmsitPayload :: Lens' RegionInstanceGroupManagersSetInstanceTemplate RegionInstanceGroupManagersSetTemplateRequest
rigmsitPayload
  = lens _rigmsitPayload
      (\ s a -> s{_rigmsitPayload = a})

-- | Name of the region scoping this request.
rigmsitRegion :: Lens' RegionInstanceGroupManagersSetInstanceTemplate Text
rigmsitRegion
  = lens _rigmsitRegion
      (\ s a -> s{_rigmsitRegion = a})

instance GoogleRequest
         RegionInstanceGroupManagersSetInstanceTemplate where
        type Rs
               RegionInstanceGroupManagersSetInstanceTemplate
             = Operation
        type Scopes
               RegionInstanceGroupManagersSetInstanceTemplate
             =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute"]
        requestClient
          RegionInstanceGroupManagersSetInstanceTemplate'{..}
          = go _rigmsitProject _rigmsitRegion
              _rigmsitInstanceGroupManager
              _rigmsitRequestId
              (Just AltJSON)
              _rigmsitPayload
              computeService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           RegionInstanceGroupManagersSetInstanceTemplateResource)
                      mempty
