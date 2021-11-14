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
-- Module      : Network.Google.Resource.Compute.InstanceGroupManagers.Patch
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates a managed instance group using the information that you specify
-- in the request. This operation is marked as DONE when the group is
-- patched even if the instances in the group are still in the process of
-- being patched. You must separately verify the status of the individual
-- instances with the listManagedInstances method. This method supports
-- PATCH semantics and uses the JSON merge patch format and processing
-- rules.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.instanceGroupManagers.patch@.
module Network.Google.Resource.Compute.InstanceGroupManagers.Patch
    (
    -- * REST Resource
      InstanceGroupManagersPatchResource

    -- * Creating a Request
    , instanceGroupManagersPatch
    , InstanceGroupManagersPatch

    -- * Request Lenses
    , igmpRequestId
    , igmpProject
    , igmpInstanceGroupManager
    , igmpZone
    , igmpPayload
    ) where

import Network.Google.Compute.Types
import Network.Google.Prelude

-- | A resource alias for @compute.instanceGroupManagers.patch@ method which the
-- 'InstanceGroupManagersPatch' request conforms to.
type InstanceGroupManagersPatchResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "zones" :>
               Capture "zone" Text :>
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
-- instances with the listManagedInstances method. This method supports
-- PATCH semantics and uses the JSON merge patch format and processing
-- rules.
--
-- /See:/ 'instanceGroupManagersPatch' smart constructor.
data InstanceGroupManagersPatch =
  InstanceGroupManagersPatch'
    { _igmpRequestId :: !(Maybe Text)
    , _igmpProject :: !Text
    , _igmpInstanceGroupManager :: !Text
    , _igmpZone :: !Text
    , _igmpPayload :: !InstanceGroupManager
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'InstanceGroupManagersPatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'igmpRequestId'
--
-- * 'igmpProject'
--
-- * 'igmpInstanceGroupManager'
--
-- * 'igmpZone'
--
-- * 'igmpPayload'
instanceGroupManagersPatch
    :: Text -- ^ 'igmpProject'
    -> Text -- ^ 'igmpInstanceGroupManager'
    -> Text -- ^ 'igmpZone'
    -> InstanceGroupManager -- ^ 'igmpPayload'
    -> InstanceGroupManagersPatch
instanceGroupManagersPatch pIgmpProject_ pIgmpInstanceGroupManager_ pIgmpZone_ pIgmpPayload_ =
  InstanceGroupManagersPatch'
    { _igmpRequestId = Nothing
    , _igmpProject = pIgmpProject_
    , _igmpInstanceGroupManager = pIgmpInstanceGroupManager_
    , _igmpZone = pIgmpZone_
    , _igmpPayload = pIgmpPayload_
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
igmpRequestId :: Lens' InstanceGroupManagersPatch (Maybe Text)
igmpRequestId
  = lens _igmpRequestId
      (\ s a -> s{_igmpRequestId = a})

-- | Project ID for this request.
igmpProject :: Lens' InstanceGroupManagersPatch Text
igmpProject
  = lens _igmpProject (\ s a -> s{_igmpProject = a})

-- | The name of the instance group manager.
igmpInstanceGroupManager :: Lens' InstanceGroupManagersPatch Text
igmpInstanceGroupManager
  = lens _igmpInstanceGroupManager
      (\ s a -> s{_igmpInstanceGroupManager = a})

-- | The name of the zone where you want to create the managed instance
-- group.
igmpZone :: Lens' InstanceGroupManagersPatch Text
igmpZone = lens _igmpZone (\ s a -> s{_igmpZone = a})

-- | Multipart request metadata.
igmpPayload :: Lens' InstanceGroupManagersPatch InstanceGroupManager
igmpPayload
  = lens _igmpPayload (\ s a -> s{_igmpPayload = a})

instance GoogleRequest InstanceGroupManagersPatch
         where
        type Rs InstanceGroupManagersPatch = Operation
        type Scopes InstanceGroupManagersPatch =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute"]
        requestClient InstanceGroupManagersPatch'{..}
          = go _igmpProject _igmpZone _igmpInstanceGroupManager
              _igmpRequestId
              (Just AltJSON)
              _igmpPayload
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy InstanceGroupManagersPatchResource)
                      mempty
