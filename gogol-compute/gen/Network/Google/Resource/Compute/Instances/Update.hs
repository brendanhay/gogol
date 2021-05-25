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
-- Module      : Network.Google.Resource.Compute.Instances.Update
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates an instance only if the necessary resources are available. This
-- method can update only a specific set of instance properties. See
-- Updating a running instance for a list of updatable instance properties.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.instances.update@.
module Network.Google.Resource.Compute.Instances.Update
    (
    -- * REST Resource
      InstancesUpdateResource

    -- * Creating a Request
    , instancesUpdate
    , InstancesUpdate

    -- * Request Lenses
    , iuRequestId
    , iuProject
    , iuZone
    , iuPayload
    , iuMostDisruptiveAllowedAction
    , iuMinimalAction
    , iuInstance
    ) where

import Network.Google.Compute.Types
import Network.Google.Prelude

-- | A resource alias for @compute.instances.update@ method which the
-- 'InstancesUpdate' request conforms to.
type InstancesUpdateResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "zones" :>
               Capture "zone" Text :>
                 "instances" :>
                   Capture "instance" Text :>
                     QueryParam "requestId" Text :>
                       QueryParam "mostDisruptiveAllowedAction"
                         InstancesUpdateMostDisruptiveAllowedAction
                         :>
                         QueryParam "minimalAction"
                           InstancesUpdateMinimalAction
                           :>
                           QueryParam "alt" AltJSON :>
                             ReqBody '[JSON] Instance :> Put '[JSON] Operation

-- | Updates an instance only if the necessary resources are available. This
-- method can update only a specific set of instance properties. See
-- Updating a running instance for a list of updatable instance properties.
--
-- /See:/ 'instancesUpdate' smart constructor.
data InstancesUpdate =
  InstancesUpdate'
    { _iuRequestId :: !(Maybe Text)
    , _iuProject :: !Text
    , _iuZone :: !Text
    , _iuPayload :: !Instance
    , _iuMostDisruptiveAllowedAction :: !(Maybe InstancesUpdateMostDisruptiveAllowedAction)
    , _iuMinimalAction :: !(Maybe InstancesUpdateMinimalAction)
    , _iuInstance :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'InstancesUpdate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'iuRequestId'
--
-- * 'iuProject'
--
-- * 'iuZone'
--
-- * 'iuPayload'
--
-- * 'iuMostDisruptiveAllowedAction'
--
-- * 'iuMinimalAction'
--
-- * 'iuInstance'
instancesUpdate
    :: Text -- ^ 'iuProject'
    -> Text -- ^ 'iuZone'
    -> Instance -- ^ 'iuPayload'
    -> Text -- ^ 'iuInstance'
    -> InstancesUpdate
instancesUpdate pIuProject_ pIuZone_ pIuPayload_ pIuInstance_ =
  InstancesUpdate'
    { _iuRequestId = Nothing
    , _iuProject = pIuProject_
    , _iuZone = pIuZone_
    , _iuPayload = pIuPayload_
    , _iuMostDisruptiveAllowedAction = Nothing
    , _iuMinimalAction = Nothing
    , _iuInstance = pIuInstance_
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
iuRequestId :: Lens' InstancesUpdate (Maybe Text)
iuRequestId
  = lens _iuRequestId (\ s a -> s{_iuRequestId = a})

-- | Project ID for this request.
iuProject :: Lens' InstancesUpdate Text
iuProject
  = lens _iuProject (\ s a -> s{_iuProject = a})

-- | The name of the zone for this request.
iuZone :: Lens' InstancesUpdate Text
iuZone = lens _iuZone (\ s a -> s{_iuZone = a})

-- | Multipart request metadata.
iuPayload :: Lens' InstancesUpdate Instance
iuPayload
  = lens _iuPayload (\ s a -> s{_iuPayload = a})

-- | Specifies the most disruptive action that can be taken on the instance
-- as part of the update. Compute Engine returns an error if the instance
-- properties require a more disruptive action as part of the instance
-- update. Valid options from lowest to highest are NO_EFFECT, REFRESH, and
-- RESTART.
iuMostDisruptiveAllowedAction :: Lens' InstancesUpdate (Maybe InstancesUpdateMostDisruptiveAllowedAction)
iuMostDisruptiveAllowedAction
  = lens _iuMostDisruptiveAllowedAction
      (\ s a -> s{_iuMostDisruptiveAllowedAction = a})

-- | Specifies the action to take when updating an instance even if the
-- updated properties do not require it. If not specified, then Compute
-- Engine acts based on the minimum action that the updated properties
-- require.
iuMinimalAction :: Lens' InstancesUpdate (Maybe InstancesUpdateMinimalAction)
iuMinimalAction
  = lens _iuMinimalAction
      (\ s a -> s{_iuMinimalAction = a})

-- | Name of the instance resource to update.
iuInstance :: Lens' InstancesUpdate Text
iuInstance
  = lens _iuInstance (\ s a -> s{_iuInstance = a})

instance GoogleRequest InstancesUpdate where
        type Rs InstancesUpdate = Operation
        type Scopes InstancesUpdate =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute"]
        requestClient InstancesUpdate'{..}
          = go _iuProject _iuZone _iuInstance _iuRequestId
              _iuMostDisruptiveAllowedAction
              _iuMinimalAction
              (Just AltJSON)
              _iuPayload
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy InstancesUpdateResource)
                      mempty
