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
-- Module      : Network.Google.Resource.Compute.Instances.UpdateAccessConfig
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates the specified access config from an instance\'s network
-- interface with the data included in the request. This method supports
-- PATCH semantics and uses the JSON merge patch format and processing
-- rules.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.instances.updateAccessConfig@.
module Network.Google.Resource.Compute.Instances.UpdateAccessConfig
    (
    -- * REST Resource
      InstancesUpdateAccessConfigResource

    -- * Creating a Request
    , instancesUpdateAccessConfig
    , InstancesUpdateAccessConfig

    -- * Request Lenses
    , iuacRequestId
    , iuacProject
    , iuacNetworkInterface
    , iuacZone
    , iuacPayload
    , iuacInstance
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @compute.instances.updateAccessConfig@ method which the
-- 'InstancesUpdateAccessConfig' request conforms to.
type InstancesUpdateAccessConfigResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "zones" :>
               Capture "zone" Text :>
                 "instances" :>
                   Capture "instance" Text :>
                     "updateAccessConfig" :>
                       QueryParam "networkInterface" Text :>
                         QueryParam "requestId" Text :>
                           QueryParam "alt" AltJSON :>
                             ReqBody '[JSON] AccessConfig :>
                               Post '[JSON] Operation

-- | Updates the specified access config from an instance\'s network
-- interface with the data included in the request. This method supports
-- PATCH semantics and uses the JSON merge patch format and processing
-- rules.
--
-- /See:/ 'instancesUpdateAccessConfig' smart constructor.
data InstancesUpdateAccessConfig = InstancesUpdateAccessConfig'
    { _iuacRequestId        :: !(Maybe Text)
    , _iuacProject          :: !Text
    , _iuacNetworkInterface :: !Text
    , _iuacZone             :: !Text
    , _iuacPayload          :: !AccessConfig
    , _iuacInstance         :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'InstancesUpdateAccessConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'iuacRequestId'
--
-- * 'iuacProject'
--
-- * 'iuacNetworkInterface'
--
-- * 'iuacZone'
--
-- * 'iuacPayload'
--
-- * 'iuacInstance'
instancesUpdateAccessConfig
    :: Text -- ^ 'iuacProject'
    -> Text -- ^ 'iuacNetworkInterface'
    -> Text -- ^ 'iuacZone'
    -> AccessConfig -- ^ 'iuacPayload'
    -> Text -- ^ 'iuacInstance'
    -> InstancesUpdateAccessConfig
instancesUpdateAccessConfig pIuacProject_ pIuacNetworkInterface_ pIuacZone_ pIuacPayload_ pIuacInstance_ =
    InstancesUpdateAccessConfig'
    { _iuacRequestId = Nothing
    , _iuacProject = pIuacProject_
    , _iuacNetworkInterface = pIuacNetworkInterface_
    , _iuacZone = pIuacZone_
    , _iuacPayload = pIuacPayload_
    , _iuacInstance = pIuacInstance_
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
iuacRequestId :: Lens' InstancesUpdateAccessConfig (Maybe Text)
iuacRequestId
  = lens _iuacRequestId
      (\ s a -> s{_iuacRequestId = a})

-- | Project ID for this request.
iuacProject :: Lens' InstancesUpdateAccessConfig Text
iuacProject
  = lens _iuacProject (\ s a -> s{_iuacProject = a})

-- | The name of the network interface where the access config is attached.
iuacNetworkInterface :: Lens' InstancesUpdateAccessConfig Text
iuacNetworkInterface
  = lens _iuacNetworkInterface
      (\ s a -> s{_iuacNetworkInterface = a})

-- | The name of the zone for this request.
iuacZone :: Lens' InstancesUpdateAccessConfig Text
iuacZone = lens _iuacZone (\ s a -> s{_iuacZone = a})

-- | Multipart request metadata.
iuacPayload :: Lens' InstancesUpdateAccessConfig AccessConfig
iuacPayload
  = lens _iuacPayload (\ s a -> s{_iuacPayload = a})

-- | The instance name for this request.
iuacInstance :: Lens' InstancesUpdateAccessConfig Text
iuacInstance
  = lens _iuacInstance (\ s a -> s{_iuacInstance = a})

instance GoogleRequest InstancesUpdateAccessConfig
         where
        type Rs InstancesUpdateAccessConfig = Operation
        type Scopes InstancesUpdateAccessConfig =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute"]
        requestClient InstancesUpdateAccessConfig'{..}
          = go _iuacProject _iuacZone _iuacInstance
              (Just _iuacNetworkInterface)
              _iuacRequestId
              (Just AltJSON)
              _iuacPayload
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy InstancesUpdateAccessConfigResource)
                      mempty
