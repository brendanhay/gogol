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
-- Module      : Network.Google.Resource.Compute.Instances.AddResourcePolicies
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Adds existing resource policies to an instance. You can only add one
-- policy right now which will be applied to this instance for scheduling
-- live migrations.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.instances.addResourcePolicies@.
module Network.Google.Resource.Compute.Instances.AddResourcePolicies
    (
    -- * REST Resource
      InstancesAddResourcePoliciesResource

    -- * Creating a Request
    , instancesAddResourcePolicies
    , InstancesAddResourcePolicies

    -- * Request Lenses
    , iarpRequestId
    , iarpProject
    , iarpZone
    , iarpPayload
    , iarpInstance
    ) where

import Network.Google.Compute.Types
import Network.Google.Prelude

-- | A resource alias for @compute.instances.addResourcePolicies@ method which the
-- 'InstancesAddResourcePolicies' request conforms to.
type InstancesAddResourcePoliciesResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "zones" :>
               Capture "zone" Text :>
                 "instances" :>
                   Capture "instance" Text :>
                     "addResourcePolicies" :>
                       QueryParam "requestId" Text :>
                         QueryParam "alt" AltJSON :>
                           ReqBody '[JSON] InstancesAddResourcePoliciesRequest
                             :> Post '[JSON] Operation

-- | Adds existing resource policies to an instance. You can only add one
-- policy right now which will be applied to this instance for scheduling
-- live migrations.
--
-- /See:/ 'instancesAddResourcePolicies' smart constructor.
data InstancesAddResourcePolicies =
  InstancesAddResourcePolicies'
    { _iarpRequestId :: !(Maybe Text)
    , _iarpProject :: !Text
    , _iarpZone :: !Text
    , _iarpPayload :: !InstancesAddResourcePoliciesRequest
    , _iarpInstance :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'InstancesAddResourcePolicies' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'iarpRequestId'
--
-- * 'iarpProject'
--
-- * 'iarpZone'
--
-- * 'iarpPayload'
--
-- * 'iarpInstance'
instancesAddResourcePolicies
    :: Text -- ^ 'iarpProject'
    -> Text -- ^ 'iarpZone'
    -> InstancesAddResourcePoliciesRequest -- ^ 'iarpPayload'
    -> Text -- ^ 'iarpInstance'
    -> InstancesAddResourcePolicies
instancesAddResourcePolicies pIarpProject_ pIarpZone_ pIarpPayload_ pIarpInstance_ =
  InstancesAddResourcePolicies'
    { _iarpRequestId = Nothing
    , _iarpProject = pIarpProject_
    , _iarpZone = pIarpZone_
    , _iarpPayload = pIarpPayload_
    , _iarpInstance = pIarpInstance_
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
iarpRequestId :: Lens' InstancesAddResourcePolicies (Maybe Text)
iarpRequestId
  = lens _iarpRequestId
      (\ s a -> s{_iarpRequestId = a})

-- | Project ID for this request.
iarpProject :: Lens' InstancesAddResourcePolicies Text
iarpProject
  = lens _iarpProject (\ s a -> s{_iarpProject = a})

-- | The name of the zone for this request.
iarpZone :: Lens' InstancesAddResourcePolicies Text
iarpZone = lens _iarpZone (\ s a -> s{_iarpZone = a})

-- | Multipart request metadata.
iarpPayload :: Lens' InstancesAddResourcePolicies InstancesAddResourcePoliciesRequest
iarpPayload
  = lens _iarpPayload (\ s a -> s{_iarpPayload = a})

-- | The instance name for this request.
iarpInstance :: Lens' InstancesAddResourcePolicies Text
iarpInstance
  = lens _iarpInstance (\ s a -> s{_iarpInstance = a})

instance GoogleRequest InstancesAddResourcePolicies
         where
        type Rs InstancesAddResourcePolicies = Operation
        type Scopes InstancesAddResourcePolicies =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute"]
        requestClient InstancesAddResourcePolicies'{..}
          = go _iarpProject _iarpZone _iarpInstance
              _iarpRequestId
              (Just AltJSON)
              _iarpPayload
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy InstancesAddResourcePoliciesResource)
                      mempty
