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
-- Module      : Network.Google.Resource.Compute.Instances.RemoveResourcePolicies
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Removes resource policies from an instance.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.instances.removeResourcePolicies@.
module Network.Google.Resource.Compute.Instances.RemoveResourcePolicies
    (
    -- * REST Resource
      InstancesRemoveResourcePoliciesResource

    -- * Creating a Request
    , instancesRemoveResourcePolicies
    , InstancesRemoveResourcePolicies

    -- * Request Lenses
    , irrpRequestId
    , irrpProject
    , irrpZone
    , irrpPayload
    , irrpInstance
    ) where

import Network.Google.Compute.Types
import Network.Google.Prelude

-- | A resource alias for @compute.instances.removeResourcePolicies@ method which the
-- 'InstancesRemoveResourcePolicies' request conforms to.
type InstancesRemoveResourcePoliciesResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "zones" :>
               Capture "zone" Text :>
                 "instances" :>
                   Capture "instance" Text :>
                     "removeResourcePolicies" :>
                       QueryParam "requestId" Text :>
                         QueryParam "alt" AltJSON :>
                           ReqBody '[JSON]
                             InstancesRemoveResourcePoliciesRequest
                             :> Post '[JSON] Operation

-- | Removes resource policies from an instance.
--
-- /See:/ 'instancesRemoveResourcePolicies' smart constructor.
data InstancesRemoveResourcePolicies =
  InstancesRemoveResourcePolicies'
    { _irrpRequestId :: !(Maybe Text)
    , _irrpProject :: !Text
    , _irrpZone :: !Text
    , _irrpPayload :: !InstancesRemoveResourcePoliciesRequest
    , _irrpInstance :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'InstancesRemoveResourcePolicies' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'irrpRequestId'
--
-- * 'irrpProject'
--
-- * 'irrpZone'
--
-- * 'irrpPayload'
--
-- * 'irrpInstance'
instancesRemoveResourcePolicies
    :: Text -- ^ 'irrpProject'
    -> Text -- ^ 'irrpZone'
    -> InstancesRemoveResourcePoliciesRequest -- ^ 'irrpPayload'
    -> Text -- ^ 'irrpInstance'
    -> InstancesRemoveResourcePolicies
instancesRemoveResourcePolicies pIrrpProject_ pIrrpZone_ pIrrpPayload_ pIrrpInstance_ =
  InstancesRemoveResourcePolicies'
    { _irrpRequestId = Nothing
    , _irrpProject = pIrrpProject_
    , _irrpZone = pIrrpZone_
    , _irrpPayload = pIrrpPayload_
    , _irrpInstance = pIrrpInstance_
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
irrpRequestId :: Lens' InstancesRemoveResourcePolicies (Maybe Text)
irrpRequestId
  = lens _irrpRequestId
      (\ s a -> s{_irrpRequestId = a})

-- | Project ID for this request.
irrpProject :: Lens' InstancesRemoveResourcePolicies Text
irrpProject
  = lens _irrpProject (\ s a -> s{_irrpProject = a})

-- | The name of the zone for this request.
irrpZone :: Lens' InstancesRemoveResourcePolicies Text
irrpZone = lens _irrpZone (\ s a -> s{_irrpZone = a})

-- | Multipart request metadata.
irrpPayload :: Lens' InstancesRemoveResourcePolicies InstancesRemoveResourcePoliciesRequest
irrpPayload
  = lens _irrpPayload (\ s a -> s{_irrpPayload = a})

-- | The instance name for this request.
irrpInstance :: Lens' InstancesRemoveResourcePolicies Text
irrpInstance
  = lens _irrpInstance (\ s a -> s{_irrpInstance = a})

instance GoogleRequest
           InstancesRemoveResourcePolicies
         where
        type Rs InstancesRemoveResourcePolicies = Operation
        type Scopes InstancesRemoveResourcePolicies =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute"]
        requestClient InstancesRemoveResourcePolicies'{..}
          = go _irrpProject _irrpZone _irrpInstance
              _irrpRequestId
              (Just AltJSON)
              _irrpPayload
              computeService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy InstancesRemoveResourcePoliciesResource)
                      mempty
