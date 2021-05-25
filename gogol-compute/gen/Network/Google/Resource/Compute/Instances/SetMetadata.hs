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
-- Module      : Network.Google.Resource.Compute.Instances.SetMetadata
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Sets metadata for the specified instance to the data included in the
-- request.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.instances.setMetadata@.
module Network.Google.Resource.Compute.Instances.SetMetadata
    (
    -- * REST Resource
      InstancesSetMetadataResource

    -- * Creating a Request
    , instancesSetMetadata
    , InstancesSetMetadata

    -- * Request Lenses
    , ismRequestId
    , ismProject
    , ismZone
    , ismPayload
    , ismInstance
    ) where

import Network.Google.Compute.Types
import Network.Google.Prelude

-- | A resource alias for @compute.instances.setMetadata@ method which the
-- 'InstancesSetMetadata' request conforms to.
type InstancesSetMetadataResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "zones" :>
               Capture "zone" Text :>
                 "instances" :>
                   Capture "instance" Text :>
                     "setMetadata" :>
                       QueryParam "requestId" Text :>
                         QueryParam "alt" AltJSON :>
                           ReqBody '[JSON] Metadata :> Post '[JSON] Operation

-- | Sets metadata for the specified instance to the data included in the
-- request.
--
-- /See:/ 'instancesSetMetadata' smart constructor.
data InstancesSetMetadata =
  InstancesSetMetadata'
    { _ismRequestId :: !(Maybe Text)
    , _ismProject :: !Text
    , _ismZone :: !Text
    , _ismPayload :: !Metadata
    , _ismInstance :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'InstancesSetMetadata' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ismRequestId'
--
-- * 'ismProject'
--
-- * 'ismZone'
--
-- * 'ismPayload'
--
-- * 'ismInstance'
instancesSetMetadata
    :: Text -- ^ 'ismProject'
    -> Text -- ^ 'ismZone'
    -> Metadata -- ^ 'ismPayload'
    -> Text -- ^ 'ismInstance'
    -> InstancesSetMetadata
instancesSetMetadata pIsmProject_ pIsmZone_ pIsmPayload_ pIsmInstance_ =
  InstancesSetMetadata'
    { _ismRequestId = Nothing
    , _ismProject = pIsmProject_
    , _ismZone = pIsmZone_
    , _ismPayload = pIsmPayload_
    , _ismInstance = pIsmInstance_
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
ismRequestId :: Lens' InstancesSetMetadata (Maybe Text)
ismRequestId
  = lens _ismRequestId (\ s a -> s{_ismRequestId = a})

-- | Project ID for this request.
ismProject :: Lens' InstancesSetMetadata Text
ismProject
  = lens _ismProject (\ s a -> s{_ismProject = a})

-- | The name of the zone for this request.
ismZone :: Lens' InstancesSetMetadata Text
ismZone = lens _ismZone (\ s a -> s{_ismZone = a})

-- | Multipart request metadata.
ismPayload :: Lens' InstancesSetMetadata Metadata
ismPayload
  = lens _ismPayload (\ s a -> s{_ismPayload = a})

-- | Name of the instance scoping this request.
ismInstance :: Lens' InstancesSetMetadata Text
ismInstance
  = lens _ismInstance (\ s a -> s{_ismInstance = a})

instance GoogleRequest InstancesSetMetadata where
        type Rs InstancesSetMetadata = Operation
        type Scopes InstancesSetMetadata =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute"]
        requestClient InstancesSetMetadata'{..}
          = go _ismProject _ismZone _ismInstance _ismRequestId
              (Just AltJSON)
              _ismPayload
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy InstancesSetMetadataResource)
                      mempty
