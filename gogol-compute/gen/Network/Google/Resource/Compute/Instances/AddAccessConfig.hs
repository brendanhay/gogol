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
-- Module      : Network.Google.Resource.Compute.Instances.AddAccessConfig
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Adds an access config to an instance\'s network interface.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.instances.addAccessConfig@.
module Network.Google.Resource.Compute.Instances.AddAccessConfig
    (
    -- * REST Resource
      InstancesAddAccessConfigResource

    -- * Creating a Request
    , instancesAddAccessConfig
    , InstancesAddAccessConfig

    -- * Request Lenses
    , iaacRequestId
    , iaacProject
    , iaacNetworkInterface
    , iaacZone
    , iaacPayload
    , iaacInstance
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @compute.instances.addAccessConfig@ method which the
-- 'InstancesAddAccessConfig' request conforms to.
type InstancesAddAccessConfigResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "zones" :>
               Capture "zone" Text :>
                 "instances" :>
                   Capture "instance" Text :>
                     "addAccessConfig" :>
                       QueryParam "networkInterface" Text :>
                         QueryParam "requestId" Text :>
                           QueryParam "alt" AltJSON :>
                             ReqBody '[JSON] AccessConfig :>
                               Post '[JSON] Operation

-- | Adds an access config to an instance\'s network interface.
--
-- /See:/ 'instancesAddAccessConfig' smart constructor.
data InstancesAddAccessConfig = InstancesAddAccessConfig'
    { _iaacRequestId        :: !(Maybe Text)
    , _iaacProject          :: !Text
    , _iaacNetworkInterface :: !Text
    , _iaacZone             :: !Text
    , _iaacPayload          :: !AccessConfig
    , _iaacInstance         :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'InstancesAddAccessConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'iaacRequestId'
--
-- * 'iaacProject'
--
-- * 'iaacNetworkInterface'
--
-- * 'iaacZone'
--
-- * 'iaacPayload'
--
-- * 'iaacInstance'
instancesAddAccessConfig
    :: Text -- ^ 'iaacProject'
    -> Text -- ^ 'iaacNetworkInterface'
    -> Text -- ^ 'iaacZone'
    -> AccessConfig -- ^ 'iaacPayload'
    -> Text -- ^ 'iaacInstance'
    -> InstancesAddAccessConfig
instancesAddAccessConfig pIaacProject_ pIaacNetworkInterface_ pIaacZone_ pIaacPayload_ pIaacInstance_ =
    InstancesAddAccessConfig'
    { _iaacRequestId = Nothing
    , _iaacProject = pIaacProject_
    , _iaacNetworkInterface = pIaacNetworkInterface_
    , _iaacZone = pIaacZone_
    , _iaacPayload = pIaacPayload_
    , _iaacInstance = pIaacInstance_
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
iaacRequestId :: Lens' InstancesAddAccessConfig (Maybe Text)
iaacRequestId
  = lens _iaacRequestId
      (\ s a -> s{_iaacRequestId = a})

-- | Project ID for this request.
iaacProject :: Lens' InstancesAddAccessConfig Text
iaacProject
  = lens _iaacProject (\ s a -> s{_iaacProject = a})

-- | The name of the network interface to add to this instance.
iaacNetworkInterface :: Lens' InstancesAddAccessConfig Text
iaacNetworkInterface
  = lens _iaacNetworkInterface
      (\ s a -> s{_iaacNetworkInterface = a})

-- | The name of the zone for this request.
iaacZone :: Lens' InstancesAddAccessConfig Text
iaacZone = lens _iaacZone (\ s a -> s{_iaacZone = a})

-- | Multipart request metadata.
iaacPayload :: Lens' InstancesAddAccessConfig AccessConfig
iaacPayload
  = lens _iaacPayload (\ s a -> s{_iaacPayload = a})

-- | The instance name for this request.
iaacInstance :: Lens' InstancesAddAccessConfig Text
iaacInstance
  = lens _iaacInstance (\ s a -> s{_iaacInstance = a})

instance GoogleRequest InstancesAddAccessConfig where
        type Rs InstancesAddAccessConfig = Operation
        type Scopes InstancesAddAccessConfig =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute"]
        requestClient InstancesAddAccessConfig'{..}
          = go _iaacProject _iaacZone _iaacInstance
              (Just _iaacNetworkInterface)
              _iaacRequestId
              (Just AltJSON)
              _iaacPayload
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy InstancesAddAccessConfigResource)
                      mempty
