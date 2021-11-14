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
-- Module      : Network.Google.Resource.Compute.Instances.UpdateDisplayDevice
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates the Display config for a VM instance. You can only use this
-- method on a stopped VM instance. This method supports PATCH semantics
-- and uses the JSON merge patch format and processing rules.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.instances.updateDisplayDevice@.
module Network.Google.Resource.Compute.Instances.UpdateDisplayDevice
    (
    -- * REST Resource
      InstancesUpdateDisplayDeviceResource

    -- * Creating a Request
    , instancesUpdateDisplayDevice
    , InstancesUpdateDisplayDevice

    -- * Request Lenses
    , iuddRequestId
    , iuddProject
    , iuddZone
    , iuddPayload
    , iuddInstance
    ) where

import Network.Google.Compute.Types
import Network.Google.Prelude

-- | A resource alias for @compute.instances.updateDisplayDevice@ method which the
-- 'InstancesUpdateDisplayDevice' request conforms to.
type InstancesUpdateDisplayDeviceResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "zones" :>
               Capture "zone" Text :>
                 "instances" :>
                   Capture "instance" Text :>
                     "updateDisplayDevice" :>
                       QueryParam "requestId" Text :>
                         QueryParam "alt" AltJSON :>
                           ReqBody '[JSON] DisplayDevice :>
                             Patch '[JSON] Operation

-- | Updates the Display config for a VM instance. You can only use this
-- method on a stopped VM instance. This method supports PATCH semantics
-- and uses the JSON merge patch format and processing rules.
--
-- /See:/ 'instancesUpdateDisplayDevice' smart constructor.
data InstancesUpdateDisplayDevice =
  InstancesUpdateDisplayDevice'
    { _iuddRequestId :: !(Maybe Text)
    , _iuddProject :: !Text
    , _iuddZone :: !Text
    , _iuddPayload :: !DisplayDevice
    , _iuddInstance :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'InstancesUpdateDisplayDevice' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'iuddRequestId'
--
-- * 'iuddProject'
--
-- * 'iuddZone'
--
-- * 'iuddPayload'
--
-- * 'iuddInstance'
instancesUpdateDisplayDevice
    :: Text -- ^ 'iuddProject'
    -> Text -- ^ 'iuddZone'
    -> DisplayDevice -- ^ 'iuddPayload'
    -> Text -- ^ 'iuddInstance'
    -> InstancesUpdateDisplayDevice
instancesUpdateDisplayDevice pIuddProject_ pIuddZone_ pIuddPayload_ pIuddInstance_ =
  InstancesUpdateDisplayDevice'
    { _iuddRequestId = Nothing
    , _iuddProject = pIuddProject_
    , _iuddZone = pIuddZone_
    , _iuddPayload = pIuddPayload_
    , _iuddInstance = pIuddInstance_
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
iuddRequestId :: Lens' InstancesUpdateDisplayDevice (Maybe Text)
iuddRequestId
  = lens _iuddRequestId
      (\ s a -> s{_iuddRequestId = a})

-- | Project ID for this request.
iuddProject :: Lens' InstancesUpdateDisplayDevice Text
iuddProject
  = lens _iuddProject (\ s a -> s{_iuddProject = a})

-- | The name of the zone for this request.
iuddZone :: Lens' InstancesUpdateDisplayDevice Text
iuddZone = lens _iuddZone (\ s a -> s{_iuddZone = a})

-- | Multipart request metadata.
iuddPayload :: Lens' InstancesUpdateDisplayDevice DisplayDevice
iuddPayload
  = lens _iuddPayload (\ s a -> s{_iuddPayload = a})

-- | Name of the instance scoping this request.
iuddInstance :: Lens' InstancesUpdateDisplayDevice Text
iuddInstance
  = lens _iuddInstance (\ s a -> s{_iuddInstance = a})

instance GoogleRequest InstancesUpdateDisplayDevice
         where
        type Rs InstancesUpdateDisplayDevice = Operation
        type Scopes InstancesUpdateDisplayDevice =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute"]
        requestClient InstancesUpdateDisplayDevice'{..}
          = go _iuddProject _iuddZone _iuddInstance
              _iuddRequestId
              (Just AltJSON)
              _iuddPayload
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy InstancesUpdateDisplayDeviceResource)
                      mempty
