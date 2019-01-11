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
-- Module      : Network.Google.Resource.Compute.Instances.SetServiceAccount
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Sets the service account on the instance. For more information, read
-- Changing the service account and access scopes for an instance.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.instances.setServiceAccount@.
module Network.Google.Resource.Compute.Instances.SetServiceAccount
    (
    -- * REST Resource
      InstancesSetServiceAccountResource

    -- * Creating a Request
    , instancesSetServiceAccount
    , InstancesSetServiceAccount

    -- * Request Lenses
    , issaRequestId
    , issaProject
    , issaZone
    , issaPayload
    , issaInstance
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @compute.instances.setServiceAccount@ method which the
-- 'InstancesSetServiceAccount' request conforms to.
type InstancesSetServiceAccountResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "zones" :>
               Capture "zone" Text :>
                 "instances" :>
                   Capture "instance" Text :>
                     "setServiceAccount" :>
                       QueryParam "requestId" Text :>
                         QueryParam "alt" AltJSON :>
                           ReqBody '[JSON] InstancesSetServiceAccountRequest :>
                             Post '[JSON] Operation

-- | Sets the service account on the instance. For more information, read
-- Changing the service account and access scopes for an instance.
--
-- /See:/ 'instancesSetServiceAccount' smart constructor.
data InstancesSetServiceAccount = InstancesSetServiceAccount'
    { _issaRequestId :: !(Maybe Text)
    , _issaProject   :: !Text
    , _issaZone      :: !Text
    , _issaPayload   :: !InstancesSetServiceAccountRequest
    , _issaInstance  :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'InstancesSetServiceAccount' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'issaRequestId'
--
-- * 'issaProject'
--
-- * 'issaZone'
--
-- * 'issaPayload'
--
-- * 'issaInstance'
instancesSetServiceAccount
    :: Text -- ^ 'issaProject'
    -> Text -- ^ 'issaZone'
    -> InstancesSetServiceAccountRequest -- ^ 'issaPayload'
    -> Text -- ^ 'issaInstance'
    -> InstancesSetServiceAccount
instancesSetServiceAccount pIssaProject_ pIssaZone_ pIssaPayload_ pIssaInstance_ =
    InstancesSetServiceAccount'
    { _issaRequestId = Nothing
    , _issaProject = pIssaProject_
    , _issaZone = pIssaZone_
    , _issaPayload = pIssaPayload_
    , _issaInstance = pIssaInstance_
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
issaRequestId :: Lens' InstancesSetServiceAccount (Maybe Text)
issaRequestId
  = lens _issaRequestId
      (\ s a -> s{_issaRequestId = a})

-- | Project ID for this request.
issaProject :: Lens' InstancesSetServiceAccount Text
issaProject
  = lens _issaProject (\ s a -> s{_issaProject = a})

-- | The name of the zone for this request.
issaZone :: Lens' InstancesSetServiceAccount Text
issaZone = lens _issaZone (\ s a -> s{_issaZone = a})

-- | Multipart request metadata.
issaPayload :: Lens' InstancesSetServiceAccount InstancesSetServiceAccountRequest
issaPayload
  = lens _issaPayload (\ s a -> s{_issaPayload = a})

-- | Name of the instance resource to start.
issaInstance :: Lens' InstancesSetServiceAccount Text
issaInstance
  = lens _issaInstance (\ s a -> s{_issaInstance = a})

instance GoogleRequest InstancesSetServiceAccount
         where
        type Rs InstancesSetServiceAccount = Operation
        type Scopes InstancesSetServiceAccount =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute"]
        requestClient InstancesSetServiceAccount'{..}
          = go _issaProject _issaZone _issaInstance
              _issaRequestId
              (Just AltJSON)
              _issaPayload
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy InstancesSetServiceAccountResource)
                      mempty
