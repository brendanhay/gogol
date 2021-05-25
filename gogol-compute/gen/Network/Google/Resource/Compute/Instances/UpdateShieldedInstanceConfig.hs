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
-- Module      : Network.Google.Resource.Compute.Instances.UpdateShieldedInstanceConfig
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates the Shielded Instance config for an instance. You can only use
-- this method on a stopped instance. This method supports PATCH semantics
-- and uses the JSON merge patch format and processing rules.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.instances.updateShieldedInstanceConfig@.
module Network.Google.Resource.Compute.Instances.UpdateShieldedInstanceConfig
    (
    -- * REST Resource
      InstancesUpdateShieldedInstanceConfigResource

    -- * Creating a Request
    , instancesUpdateShieldedInstanceConfig
    , InstancesUpdateShieldedInstanceConfig

    -- * Request Lenses
    , iusicRequestId
    , iusicProject
    , iusicZone
    , iusicPayload
    , iusicInstance
    ) where

import Network.Google.Compute.Types
import Network.Google.Prelude

-- | A resource alias for @compute.instances.updateShieldedInstanceConfig@ method which the
-- 'InstancesUpdateShieldedInstanceConfig' request conforms to.
type InstancesUpdateShieldedInstanceConfigResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "zones" :>
               Capture "zone" Text :>
                 "instances" :>
                   Capture "instance" Text :>
                     "updateShieldedInstanceConfig" :>
                       QueryParam "requestId" Text :>
                         QueryParam "alt" AltJSON :>
                           ReqBody '[JSON] ShieldedInstanceConfig :>
                             Patch '[JSON] Operation

-- | Updates the Shielded Instance config for an instance. You can only use
-- this method on a stopped instance. This method supports PATCH semantics
-- and uses the JSON merge patch format and processing rules.
--
-- /See:/ 'instancesUpdateShieldedInstanceConfig' smart constructor.
data InstancesUpdateShieldedInstanceConfig =
  InstancesUpdateShieldedInstanceConfig'
    { _iusicRequestId :: !(Maybe Text)
    , _iusicProject :: !Text
    , _iusicZone :: !Text
    , _iusicPayload :: !ShieldedInstanceConfig
    , _iusicInstance :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'InstancesUpdateShieldedInstanceConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'iusicRequestId'
--
-- * 'iusicProject'
--
-- * 'iusicZone'
--
-- * 'iusicPayload'
--
-- * 'iusicInstance'
instancesUpdateShieldedInstanceConfig
    :: Text -- ^ 'iusicProject'
    -> Text -- ^ 'iusicZone'
    -> ShieldedInstanceConfig -- ^ 'iusicPayload'
    -> Text -- ^ 'iusicInstance'
    -> InstancesUpdateShieldedInstanceConfig
instancesUpdateShieldedInstanceConfig pIusicProject_ pIusicZone_ pIusicPayload_ pIusicInstance_ =
  InstancesUpdateShieldedInstanceConfig'
    { _iusicRequestId = Nothing
    , _iusicProject = pIusicProject_
    , _iusicZone = pIusicZone_
    , _iusicPayload = pIusicPayload_
    , _iusicInstance = pIusicInstance_
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
iusicRequestId :: Lens' InstancesUpdateShieldedInstanceConfig (Maybe Text)
iusicRequestId
  = lens _iusicRequestId
      (\ s a -> s{_iusicRequestId = a})

-- | Project ID for this request.
iusicProject :: Lens' InstancesUpdateShieldedInstanceConfig Text
iusicProject
  = lens _iusicProject (\ s a -> s{_iusicProject = a})

-- | The name of the zone for this request.
iusicZone :: Lens' InstancesUpdateShieldedInstanceConfig Text
iusicZone
  = lens _iusicZone (\ s a -> s{_iusicZone = a})

-- | Multipart request metadata.
iusicPayload :: Lens' InstancesUpdateShieldedInstanceConfig ShieldedInstanceConfig
iusicPayload
  = lens _iusicPayload (\ s a -> s{_iusicPayload = a})

-- | Name or id of the instance scoping this request.
iusicInstance :: Lens' InstancesUpdateShieldedInstanceConfig Text
iusicInstance
  = lens _iusicInstance
      (\ s a -> s{_iusicInstance = a})

instance GoogleRequest
           InstancesUpdateShieldedInstanceConfig
         where
        type Rs InstancesUpdateShieldedInstanceConfig =
             Operation
        type Scopes InstancesUpdateShieldedInstanceConfig =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute"]
        requestClient
          InstancesUpdateShieldedInstanceConfig'{..}
          = go _iusicProject _iusicZone _iusicInstance
              _iusicRequestId
              (Just AltJSON)
              _iusicPayload
              computeService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy InstancesUpdateShieldedInstanceConfigResource)
                      mempty
