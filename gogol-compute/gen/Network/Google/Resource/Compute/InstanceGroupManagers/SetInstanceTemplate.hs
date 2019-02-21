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
-- Module      : Network.Google.Resource.Compute.InstanceGroupManagers.SetInstanceTemplate
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Specifies the instance template to use when creating new instances in
-- this group. The templates for existing instances in the group do not
-- change unless you recreate them.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.instanceGroupManagers.setInstanceTemplate@.
module Network.Google.Resource.Compute.InstanceGroupManagers.SetInstanceTemplate
    (
    -- * REST Resource
      InstanceGroupManagersSetInstanceTemplateResource

    -- * Creating a Request
    , instanceGroupManagersSetInstanceTemplate
    , InstanceGroupManagersSetInstanceTemplate

    -- * Request Lenses
    , igmsitRequestId
    , igmsitProject
    , igmsitInstanceGroupManager
    , igmsitZone
    , igmsitPayload
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @compute.instanceGroupManagers.setInstanceTemplate@ method which the
-- 'InstanceGroupManagersSetInstanceTemplate' request conforms to.
type InstanceGroupManagersSetInstanceTemplateResource
     =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "zones" :>
               Capture "zone" Text :>
                 "instanceGroupManagers" :>
                   Capture "instanceGroupManager" Text :>
                     "setInstanceTemplate" :>
                       QueryParam "requestId" Text :>
                         QueryParam "alt" AltJSON :>
                           ReqBody '[JSON]
                             InstanceGroupManagersSetInstanceTemplateRequest
                             :> Post '[JSON] Operation

-- | Specifies the instance template to use when creating new instances in
-- this group. The templates for existing instances in the group do not
-- change unless you recreate them.
--
-- /See:/ 'instanceGroupManagersSetInstanceTemplate' smart constructor.
data InstanceGroupManagersSetInstanceTemplate =
  InstanceGroupManagersSetInstanceTemplate'
    { _igmsitRequestId            :: !(Maybe Text)
    , _igmsitProject              :: !Text
    , _igmsitInstanceGroupManager :: !Text
    , _igmsitZone                 :: !Text
    , _igmsitPayload              :: !InstanceGroupManagersSetInstanceTemplateRequest
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'InstanceGroupManagersSetInstanceTemplate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'igmsitRequestId'
--
-- * 'igmsitProject'
--
-- * 'igmsitInstanceGroupManager'
--
-- * 'igmsitZone'
--
-- * 'igmsitPayload'
instanceGroupManagersSetInstanceTemplate
    :: Text -- ^ 'igmsitProject'
    -> Text -- ^ 'igmsitInstanceGroupManager'
    -> Text -- ^ 'igmsitZone'
    -> InstanceGroupManagersSetInstanceTemplateRequest -- ^ 'igmsitPayload'
    -> InstanceGroupManagersSetInstanceTemplate
instanceGroupManagersSetInstanceTemplate pIgmsitProject_ pIgmsitInstanceGroupManager_ pIgmsitZone_ pIgmsitPayload_ =
  InstanceGroupManagersSetInstanceTemplate'
    { _igmsitRequestId = Nothing
    , _igmsitProject = pIgmsitProject_
    , _igmsitInstanceGroupManager = pIgmsitInstanceGroupManager_
    , _igmsitZone = pIgmsitZone_
    , _igmsitPayload = pIgmsitPayload_
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
igmsitRequestId :: Lens' InstanceGroupManagersSetInstanceTemplate (Maybe Text)
igmsitRequestId
  = lens _igmsitRequestId
      (\ s a -> s{_igmsitRequestId = a})

-- | Project ID for this request.
igmsitProject :: Lens' InstanceGroupManagersSetInstanceTemplate Text
igmsitProject
  = lens _igmsitProject
      (\ s a -> s{_igmsitProject = a})

-- | The name of the managed instance group.
igmsitInstanceGroupManager :: Lens' InstanceGroupManagersSetInstanceTemplate Text
igmsitInstanceGroupManager
  = lens _igmsitInstanceGroupManager
      (\ s a -> s{_igmsitInstanceGroupManager = a})

-- | The name of the zone where the managed instance group is located.
igmsitZone :: Lens' InstanceGroupManagersSetInstanceTemplate Text
igmsitZone
  = lens _igmsitZone (\ s a -> s{_igmsitZone = a})

-- | Multipart request metadata.
igmsitPayload :: Lens' InstanceGroupManagersSetInstanceTemplate InstanceGroupManagersSetInstanceTemplateRequest
igmsitPayload
  = lens _igmsitPayload
      (\ s a -> s{_igmsitPayload = a})

instance GoogleRequest
           InstanceGroupManagersSetInstanceTemplate
         where
        type Rs InstanceGroupManagersSetInstanceTemplate =
             Operation
        type Scopes InstanceGroupManagersSetInstanceTemplate
             =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute"]
        requestClient
          InstanceGroupManagersSetInstanceTemplate'{..}
          = go _igmsitProject _igmsitZone
              _igmsitInstanceGroupManager
              _igmsitRequestId
              (Just AltJSON)
              _igmsitPayload
              computeService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           InstanceGroupManagersSetInstanceTemplateResource)
                      mempty
