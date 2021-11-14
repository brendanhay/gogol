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
-- Module      : Network.Google.Resource.Compute.Instances.UpdateNetworkInterface
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates an instance\'s network interface. This method can only update an
-- interface\'s alias IP range and attached network. See Modifying alias IP
-- ranges for an existing instance for instructions on changing alias IP
-- ranges. See Migrating a VM between networks for instructions on
-- migrating an interface. This method follows PATCH semantics.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.instances.updateNetworkInterface@.
module Network.Google.Resource.Compute.Instances.UpdateNetworkInterface
    (
    -- * REST Resource
      InstancesUpdateNetworkInterfaceResource

    -- * Creating a Request
    , instancesUpdateNetworkInterface
    , InstancesUpdateNetworkInterface

    -- * Request Lenses
    , iuniRequestId
    , iuniProject
    , iuniNetworkInterface
    , iuniZone
    , iuniPayload
    , iuniInstance
    ) where

import Network.Google.Compute.Types
import Network.Google.Prelude

-- | A resource alias for @compute.instances.updateNetworkInterface@ method which the
-- 'InstancesUpdateNetworkInterface' request conforms to.
type InstancesUpdateNetworkInterfaceResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "zones" :>
               Capture "zone" Text :>
                 "instances" :>
                   Capture "instance" Text :>
                     "updateNetworkInterface" :>
                       QueryParam "networkInterface" Text :>
                         QueryParam "requestId" Text :>
                           QueryParam "alt" AltJSON :>
                             ReqBody '[JSON] NetworkInterface :>
                               Patch '[JSON] Operation

-- | Updates an instance\'s network interface. This method can only update an
-- interface\'s alias IP range and attached network. See Modifying alias IP
-- ranges for an existing instance for instructions on changing alias IP
-- ranges. See Migrating a VM between networks for instructions on
-- migrating an interface. This method follows PATCH semantics.
--
-- /See:/ 'instancesUpdateNetworkInterface' smart constructor.
data InstancesUpdateNetworkInterface =
  InstancesUpdateNetworkInterface'
    { _iuniRequestId :: !(Maybe Text)
    , _iuniProject :: !Text
    , _iuniNetworkInterface :: !Text
    , _iuniZone :: !Text
    , _iuniPayload :: !NetworkInterface
    , _iuniInstance :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'InstancesUpdateNetworkInterface' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'iuniRequestId'
--
-- * 'iuniProject'
--
-- * 'iuniNetworkInterface'
--
-- * 'iuniZone'
--
-- * 'iuniPayload'
--
-- * 'iuniInstance'
instancesUpdateNetworkInterface
    :: Text -- ^ 'iuniProject'
    -> Text -- ^ 'iuniNetworkInterface'
    -> Text -- ^ 'iuniZone'
    -> NetworkInterface -- ^ 'iuniPayload'
    -> Text -- ^ 'iuniInstance'
    -> InstancesUpdateNetworkInterface
instancesUpdateNetworkInterface pIuniProject_ pIuniNetworkInterface_ pIuniZone_ pIuniPayload_ pIuniInstance_ =
  InstancesUpdateNetworkInterface'
    { _iuniRequestId = Nothing
    , _iuniProject = pIuniProject_
    , _iuniNetworkInterface = pIuniNetworkInterface_
    , _iuniZone = pIuniZone_
    , _iuniPayload = pIuniPayload_
    , _iuniInstance = pIuniInstance_
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
iuniRequestId :: Lens' InstancesUpdateNetworkInterface (Maybe Text)
iuniRequestId
  = lens _iuniRequestId
      (\ s a -> s{_iuniRequestId = a})

-- | Project ID for this request.
iuniProject :: Lens' InstancesUpdateNetworkInterface Text
iuniProject
  = lens _iuniProject (\ s a -> s{_iuniProject = a})

-- | The name of the network interface to update.
iuniNetworkInterface :: Lens' InstancesUpdateNetworkInterface Text
iuniNetworkInterface
  = lens _iuniNetworkInterface
      (\ s a -> s{_iuniNetworkInterface = a})

-- | The name of the zone for this request.
iuniZone :: Lens' InstancesUpdateNetworkInterface Text
iuniZone = lens _iuniZone (\ s a -> s{_iuniZone = a})

-- | Multipart request metadata.
iuniPayload :: Lens' InstancesUpdateNetworkInterface NetworkInterface
iuniPayload
  = lens _iuniPayload (\ s a -> s{_iuniPayload = a})

-- | The instance name for this request.
iuniInstance :: Lens' InstancesUpdateNetworkInterface Text
iuniInstance
  = lens _iuniInstance (\ s a -> s{_iuniInstance = a})

instance GoogleRequest
           InstancesUpdateNetworkInterface
         where
        type Rs InstancesUpdateNetworkInterface = Operation
        type Scopes InstancesUpdateNetworkInterface =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute"]
        requestClient InstancesUpdateNetworkInterface'{..}
          = go _iuniProject _iuniZone _iuniInstance
              (Just _iuniNetworkInterface)
              _iuniRequestId
              (Just AltJSON)
              _iuniPayload
              computeService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy InstancesUpdateNetworkInterfaceResource)
                      mempty
