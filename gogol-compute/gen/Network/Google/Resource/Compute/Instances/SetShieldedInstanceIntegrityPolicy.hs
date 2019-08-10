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
-- Module      : Network.Google.Resource.Compute.Instances.SetShieldedInstanceIntegrityPolicy
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Sets the Shielded Instance integrity policy for an instance. You can
-- only use this method on a running instance. This method supports PATCH
-- semantics and uses the JSON merge patch format and processing rules.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.instances.setShieldedInstanceIntegrityPolicy@.
module Network.Google.Resource.Compute.Instances.SetShieldedInstanceIntegrityPolicy
    (
    -- * REST Resource
      InstancesSetShieldedInstanceIntegrityPolicyResource

    -- * Creating a Request
    , instancesSetShieldedInstanceIntegrityPolicy
    , InstancesSetShieldedInstanceIntegrityPolicy

    -- * Request Lenses
    , issiipRequestId
    , issiipProject
    , issiipZone
    , issiipPayload
    , issiipInstance
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @compute.instances.setShieldedInstanceIntegrityPolicy@ method which the
-- 'InstancesSetShieldedInstanceIntegrityPolicy' request conforms to.
type InstancesSetShieldedInstanceIntegrityPolicyResource
     =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "zones" :>
               Capture "zone" Text :>
                 "instances" :>
                   Capture "instance" Text :>
                     "setShieldedInstanceIntegrityPolicy" :>
                       QueryParam "requestId" Text :>
                         QueryParam "alt" AltJSON :>
                           ReqBody '[JSON] ShieldedInstanceIntegrityPolicy :>
                             Patch '[JSON] Operation

-- | Sets the Shielded Instance integrity policy for an instance. You can
-- only use this method on a running instance. This method supports PATCH
-- semantics and uses the JSON merge patch format and processing rules.
--
-- /See:/ 'instancesSetShieldedInstanceIntegrityPolicy' smart constructor.
data InstancesSetShieldedInstanceIntegrityPolicy =
  InstancesSetShieldedInstanceIntegrityPolicy'
    { _issiipRequestId :: !(Maybe Text)
    , _issiipProject   :: !Text
    , _issiipZone      :: !Text
    , _issiipPayload   :: !ShieldedInstanceIntegrityPolicy
    , _issiipInstance  :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'InstancesSetShieldedInstanceIntegrityPolicy' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'issiipRequestId'
--
-- * 'issiipProject'
--
-- * 'issiipZone'
--
-- * 'issiipPayload'
--
-- * 'issiipInstance'
instancesSetShieldedInstanceIntegrityPolicy
    :: Text -- ^ 'issiipProject'
    -> Text -- ^ 'issiipZone'
    -> ShieldedInstanceIntegrityPolicy -- ^ 'issiipPayload'
    -> Text -- ^ 'issiipInstance'
    -> InstancesSetShieldedInstanceIntegrityPolicy
instancesSetShieldedInstanceIntegrityPolicy pIssiipProject_ pIssiipZone_ pIssiipPayload_ pIssiipInstance_ =
  InstancesSetShieldedInstanceIntegrityPolicy'
    { _issiipRequestId = Nothing
    , _issiipProject = pIssiipProject_
    , _issiipZone = pIssiipZone_
    , _issiipPayload = pIssiipPayload_
    , _issiipInstance = pIssiipInstance_
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
issiipRequestId :: Lens' InstancesSetShieldedInstanceIntegrityPolicy (Maybe Text)
issiipRequestId
  = lens _issiipRequestId
      (\ s a -> s{_issiipRequestId = a})

-- | Project ID for this request.
issiipProject :: Lens' InstancesSetShieldedInstanceIntegrityPolicy Text
issiipProject
  = lens _issiipProject
      (\ s a -> s{_issiipProject = a})

-- | The name of the zone for this request.
issiipZone :: Lens' InstancesSetShieldedInstanceIntegrityPolicy Text
issiipZone
  = lens _issiipZone (\ s a -> s{_issiipZone = a})

-- | Multipart request metadata.
issiipPayload :: Lens' InstancesSetShieldedInstanceIntegrityPolicy ShieldedInstanceIntegrityPolicy
issiipPayload
  = lens _issiipPayload
      (\ s a -> s{_issiipPayload = a})

-- | Name or id of the instance scoping this request.
issiipInstance :: Lens' InstancesSetShieldedInstanceIntegrityPolicy Text
issiipInstance
  = lens _issiipInstance
      (\ s a -> s{_issiipInstance = a})

instance GoogleRequest
           InstancesSetShieldedInstanceIntegrityPolicy
         where
        type Rs InstancesSetShieldedInstanceIntegrityPolicy =
             Operation
        type Scopes
               InstancesSetShieldedInstanceIntegrityPolicy
             =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute"]
        requestClient
          InstancesSetShieldedInstanceIntegrityPolicy'{..}
          = go _issiipProject _issiipZone _issiipInstance
              _issiipRequestId
              (Just AltJSON)
              _issiipPayload
              computeService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           InstancesSetShieldedInstanceIntegrityPolicyResource)
                      mempty
