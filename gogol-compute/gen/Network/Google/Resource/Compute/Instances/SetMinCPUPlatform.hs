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
-- Module      : Network.Google.Resource.Compute.Instances.SetMinCPUPlatform
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Changes the minimum CPU platform that this instance should use. This
-- method can only be called on a stopped instance. For more information,
-- read Specifying a Minimum CPU Platform.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.instances.setMinCpuPlatform@.
module Network.Google.Resource.Compute.Instances.SetMinCPUPlatform
    (
    -- * REST Resource
      InstancesSetMinCPUPlatformResource

    -- * Creating a Request
    , instancesSetMinCPUPlatform
    , InstancesSetMinCPUPlatform

    -- * Request Lenses
    , ismcpRequestId
    , ismcpProject
    , ismcpZone
    , ismcpPayload
    , ismcpInstance
    ) where

import Network.Google.Compute.Types
import Network.Google.Prelude

-- | A resource alias for @compute.instances.setMinCpuPlatform@ method which the
-- 'InstancesSetMinCPUPlatform' request conforms to.
type InstancesSetMinCPUPlatformResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "zones" :>
               Capture "zone" Text :>
                 "instances" :>
                   Capture "instance" Text :>
                     "setMinCpuPlatform" :>
                       QueryParam "requestId" Text :>
                         QueryParam "alt" AltJSON :>
                           ReqBody '[JSON] InstancesSetMinCPUPlatformRequest :>
                             Post '[JSON] Operation

-- | Changes the minimum CPU platform that this instance should use. This
-- method can only be called on a stopped instance. For more information,
-- read Specifying a Minimum CPU Platform.
--
-- /See:/ 'instancesSetMinCPUPlatform' smart constructor.
data InstancesSetMinCPUPlatform =
  InstancesSetMinCPUPlatform'
    { _ismcpRequestId :: !(Maybe Text)
    , _ismcpProject :: !Text
    , _ismcpZone :: !Text
    , _ismcpPayload :: !InstancesSetMinCPUPlatformRequest
    , _ismcpInstance :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'InstancesSetMinCPUPlatform' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ismcpRequestId'
--
-- * 'ismcpProject'
--
-- * 'ismcpZone'
--
-- * 'ismcpPayload'
--
-- * 'ismcpInstance'
instancesSetMinCPUPlatform
    :: Text -- ^ 'ismcpProject'
    -> Text -- ^ 'ismcpZone'
    -> InstancesSetMinCPUPlatformRequest -- ^ 'ismcpPayload'
    -> Text -- ^ 'ismcpInstance'
    -> InstancesSetMinCPUPlatform
instancesSetMinCPUPlatform pIsmcpProject_ pIsmcpZone_ pIsmcpPayload_ pIsmcpInstance_ =
  InstancesSetMinCPUPlatform'
    { _ismcpRequestId = Nothing
    , _ismcpProject = pIsmcpProject_
    , _ismcpZone = pIsmcpZone_
    , _ismcpPayload = pIsmcpPayload_
    , _ismcpInstance = pIsmcpInstance_
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
ismcpRequestId :: Lens' InstancesSetMinCPUPlatform (Maybe Text)
ismcpRequestId
  = lens _ismcpRequestId
      (\ s a -> s{_ismcpRequestId = a})

-- | Project ID for this request.
ismcpProject :: Lens' InstancesSetMinCPUPlatform Text
ismcpProject
  = lens _ismcpProject (\ s a -> s{_ismcpProject = a})

-- | The name of the zone for this request.
ismcpZone :: Lens' InstancesSetMinCPUPlatform Text
ismcpZone
  = lens _ismcpZone (\ s a -> s{_ismcpZone = a})

-- | Multipart request metadata.
ismcpPayload :: Lens' InstancesSetMinCPUPlatform InstancesSetMinCPUPlatformRequest
ismcpPayload
  = lens _ismcpPayload (\ s a -> s{_ismcpPayload = a})

-- | Name of the instance scoping this request.
ismcpInstance :: Lens' InstancesSetMinCPUPlatform Text
ismcpInstance
  = lens _ismcpInstance
      (\ s a -> s{_ismcpInstance = a})

instance GoogleRequest InstancesSetMinCPUPlatform
         where
        type Rs InstancesSetMinCPUPlatform = Operation
        type Scopes InstancesSetMinCPUPlatform =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute"]
        requestClient InstancesSetMinCPUPlatform'{..}
          = go _ismcpProject _ismcpZone _ismcpInstance
              _ismcpRequestId
              (Just AltJSON)
              _ismcpPayload
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy InstancesSetMinCPUPlatformResource)
                      mempty
