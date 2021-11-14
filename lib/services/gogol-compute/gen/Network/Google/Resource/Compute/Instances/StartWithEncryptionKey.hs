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
-- Module      : Network.Google.Resource.Compute.Instances.StartWithEncryptionKey
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Starts an instance that was stopped using the instances().stop method.
-- For more information, see Restart an instance.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.instances.startWithEncryptionKey@.
module Network.Google.Resource.Compute.Instances.StartWithEncryptionKey
    (
    -- * REST Resource
      InstancesStartWithEncryptionKeyResource

    -- * Creating a Request
    , instancesStartWithEncryptionKey
    , InstancesStartWithEncryptionKey

    -- * Request Lenses
    , iswekRequestId
    , iswekProject
    , iswekZone
    , iswekPayload
    , iswekInstance
    ) where

import Network.Google.Compute.Types
import Network.Google.Prelude

-- | A resource alias for @compute.instances.startWithEncryptionKey@ method which the
-- 'InstancesStartWithEncryptionKey' request conforms to.
type InstancesStartWithEncryptionKeyResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "zones" :>
               Capture "zone" Text :>
                 "instances" :>
                   Capture "instance" Text :>
                     "startWithEncryptionKey" :>
                       QueryParam "requestId" Text :>
                         QueryParam "alt" AltJSON :>
                           ReqBody '[JSON]
                             InstancesStartWithEncryptionKeyRequest
                             :> Post '[JSON] Operation

-- | Starts an instance that was stopped using the instances().stop method.
-- For more information, see Restart an instance.
--
-- /See:/ 'instancesStartWithEncryptionKey' smart constructor.
data InstancesStartWithEncryptionKey =
  InstancesStartWithEncryptionKey'
    { _iswekRequestId :: !(Maybe Text)
    , _iswekProject :: !Text
    , _iswekZone :: !Text
    , _iswekPayload :: !InstancesStartWithEncryptionKeyRequest
    , _iswekInstance :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'InstancesStartWithEncryptionKey' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'iswekRequestId'
--
-- * 'iswekProject'
--
-- * 'iswekZone'
--
-- * 'iswekPayload'
--
-- * 'iswekInstance'
instancesStartWithEncryptionKey
    :: Text -- ^ 'iswekProject'
    -> Text -- ^ 'iswekZone'
    -> InstancesStartWithEncryptionKeyRequest -- ^ 'iswekPayload'
    -> Text -- ^ 'iswekInstance'
    -> InstancesStartWithEncryptionKey
instancesStartWithEncryptionKey pIswekProject_ pIswekZone_ pIswekPayload_ pIswekInstance_ =
  InstancesStartWithEncryptionKey'
    { _iswekRequestId = Nothing
    , _iswekProject = pIswekProject_
    , _iswekZone = pIswekZone_
    , _iswekPayload = pIswekPayload_
    , _iswekInstance = pIswekInstance_
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
iswekRequestId :: Lens' InstancesStartWithEncryptionKey (Maybe Text)
iswekRequestId
  = lens _iswekRequestId
      (\ s a -> s{_iswekRequestId = a})

-- | Project ID for this request.
iswekProject :: Lens' InstancesStartWithEncryptionKey Text
iswekProject
  = lens _iswekProject (\ s a -> s{_iswekProject = a})

-- | The name of the zone for this request.
iswekZone :: Lens' InstancesStartWithEncryptionKey Text
iswekZone
  = lens _iswekZone (\ s a -> s{_iswekZone = a})

-- | Multipart request metadata.
iswekPayload :: Lens' InstancesStartWithEncryptionKey InstancesStartWithEncryptionKeyRequest
iswekPayload
  = lens _iswekPayload (\ s a -> s{_iswekPayload = a})

-- | Name of the instance resource to start.
iswekInstance :: Lens' InstancesStartWithEncryptionKey Text
iswekInstance
  = lens _iswekInstance
      (\ s a -> s{_iswekInstance = a})

instance GoogleRequest
           InstancesStartWithEncryptionKey
         where
        type Rs InstancesStartWithEncryptionKey = Operation
        type Scopes InstancesStartWithEncryptionKey =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute"]
        requestClient InstancesStartWithEncryptionKey'{..}
          = go _iswekProject _iswekZone _iswekInstance
              _iswekRequestId
              (Just AltJSON)
              _iswekPayload
              computeService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy InstancesStartWithEncryptionKeyResource)
                      mempty
