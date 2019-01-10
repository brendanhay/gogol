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
-- Module      : Network.Google.Resource.Compute.Instances.DeleteAccessConfig
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes an access config from an instance\'s network interface.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.instances.deleteAccessConfig@.
module Network.Google.Resource.Compute.Instances.DeleteAccessConfig
    (
    -- * REST Resource
      InstancesDeleteAccessConfigResource

    -- * Creating a Request
    , instancesDeleteAccessConfig
    , InstancesDeleteAccessConfig

    -- * Request Lenses
    , idacRequestId
    , idacProject
    , idacNetworkInterface
    , idacZone
    , idacAccessConfig
    , idacInstance
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @compute.instances.deleteAccessConfig@ method which the
-- 'InstancesDeleteAccessConfig' request conforms to.
type InstancesDeleteAccessConfigResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "zones" :>
               Capture "zone" Text :>
                 "instances" :>
                   Capture "instance" Text :>
                     "deleteAccessConfig" :>
                       QueryParam "accessConfig" Text :>
                         QueryParam "networkInterface" Text :>
                           QueryParam "requestId" Text :>
                             QueryParam "alt" AltJSON :> Post '[JSON] Operation

-- | Deletes an access config from an instance\'s network interface.
--
-- /See:/ 'instancesDeleteAccessConfig' smart constructor.
data InstancesDeleteAccessConfig = InstancesDeleteAccessConfig'
    { _idacRequestId        :: !(Maybe Text)
    , _idacProject          :: !Text
    , _idacNetworkInterface :: !Text
    , _idacZone             :: !Text
    , _idacAccessConfig     :: !Text
    , _idacInstance         :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'InstancesDeleteAccessConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'idacRequestId'
--
-- * 'idacProject'
--
-- * 'idacNetworkInterface'
--
-- * 'idacZone'
--
-- * 'idacAccessConfig'
--
-- * 'idacInstance'
instancesDeleteAccessConfig
    :: Text -- ^ 'idacProject'
    -> Text -- ^ 'idacNetworkInterface'
    -> Text -- ^ 'idacZone'
    -> Text -- ^ 'idacAccessConfig'
    -> Text -- ^ 'idacInstance'
    -> InstancesDeleteAccessConfig
instancesDeleteAccessConfig pIdacProject_ pIdacNetworkInterface_ pIdacZone_ pIdacAccessConfig_ pIdacInstance_ =
    InstancesDeleteAccessConfig'
    { _idacRequestId = Nothing
    , _idacProject = pIdacProject_
    , _idacNetworkInterface = pIdacNetworkInterface_
    , _idacZone = pIdacZone_
    , _idacAccessConfig = pIdacAccessConfig_
    , _idacInstance = pIdacInstance_
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
idacRequestId :: Lens' InstancesDeleteAccessConfig (Maybe Text)
idacRequestId
  = lens _idacRequestId
      (\ s a -> s{_idacRequestId = a})

-- | Project ID for this request.
idacProject :: Lens' InstancesDeleteAccessConfig Text
idacProject
  = lens _idacProject (\ s a -> s{_idacProject = a})

-- | The name of the network interface.
idacNetworkInterface :: Lens' InstancesDeleteAccessConfig Text
idacNetworkInterface
  = lens _idacNetworkInterface
      (\ s a -> s{_idacNetworkInterface = a})

-- | The name of the zone for this request.
idacZone :: Lens' InstancesDeleteAccessConfig Text
idacZone = lens _idacZone (\ s a -> s{_idacZone = a})

-- | The name of the access config to delete.
idacAccessConfig :: Lens' InstancesDeleteAccessConfig Text
idacAccessConfig
  = lens _idacAccessConfig
      (\ s a -> s{_idacAccessConfig = a})

-- | The instance name for this request.
idacInstance :: Lens' InstancesDeleteAccessConfig Text
idacInstance
  = lens _idacInstance (\ s a -> s{_idacInstance = a})

instance GoogleRequest InstancesDeleteAccessConfig
         where
        type Rs InstancesDeleteAccessConfig = Operation
        type Scopes InstancesDeleteAccessConfig =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute"]
        requestClient InstancesDeleteAccessConfig'{..}
          = go _idacProject _idacZone _idacInstance
              (Just _idacAccessConfig)
              (Just _idacNetworkInterface)
              _idacRequestId
              (Just AltJSON)
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy InstancesDeleteAccessConfigResource)
                      mempty
