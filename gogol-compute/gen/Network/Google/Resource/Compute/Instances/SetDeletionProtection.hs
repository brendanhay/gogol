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
-- Module      : Network.Google.Resource.Compute.Instances.SetDeletionProtection
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Sets deletion protection on the instance.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.instances.setDeletionProtection@.
module Network.Google.Resource.Compute.Instances.SetDeletionProtection
    (
    -- * REST Resource
      InstancesSetDeletionProtectionResource

    -- * Creating a Request
    , instancesSetDeletionProtection
    , InstancesSetDeletionProtection

    -- * Request Lenses
    , isdpRequestId
    , isdpDeletionProtection
    , isdpProject
    , isdpZone
    , isdpResource
    ) where

import Network.Google.Compute.Types
import Network.Google.Prelude

-- | A resource alias for @compute.instances.setDeletionProtection@ method which the
-- 'InstancesSetDeletionProtection' request conforms to.
type InstancesSetDeletionProtectionResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "zones" :>
               Capture "zone" Text :>
                 "instances" :>
                   Capture "resource" Text :>
                     "setDeletionProtection" :>
                       QueryParam "requestId" Text :>
                         QueryParam "deletionProtection" Bool :>
                           QueryParam "alt" AltJSON :> Post '[JSON] Operation

-- | Sets deletion protection on the instance.
--
-- /See:/ 'instancesSetDeletionProtection' smart constructor.
data InstancesSetDeletionProtection =
  InstancesSetDeletionProtection'
    { _isdpRequestId :: !(Maybe Text)
    , _isdpDeletionProtection :: !Bool
    , _isdpProject :: !Text
    , _isdpZone :: !Text
    , _isdpResource :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'InstancesSetDeletionProtection' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'isdpRequestId'
--
-- * 'isdpDeletionProtection'
--
-- * 'isdpProject'
--
-- * 'isdpZone'
--
-- * 'isdpResource'
instancesSetDeletionProtection
    :: Text -- ^ 'isdpProject'
    -> Text -- ^ 'isdpZone'
    -> Text -- ^ 'isdpResource'
    -> InstancesSetDeletionProtection
instancesSetDeletionProtection pIsdpProject_ pIsdpZone_ pIsdpResource_ =
  InstancesSetDeletionProtection'
    { _isdpRequestId = Nothing
    , _isdpDeletionProtection = True
    , _isdpProject = pIsdpProject_
    , _isdpZone = pIsdpZone_
    , _isdpResource = pIsdpResource_
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
isdpRequestId :: Lens' InstancesSetDeletionProtection (Maybe Text)
isdpRequestId
  = lens _isdpRequestId
      (\ s a -> s{_isdpRequestId = a})

-- | Whether the resource should be protected against deletion.
isdpDeletionProtection :: Lens' InstancesSetDeletionProtection Bool
isdpDeletionProtection
  = lens _isdpDeletionProtection
      (\ s a -> s{_isdpDeletionProtection = a})

-- | Project ID for this request.
isdpProject :: Lens' InstancesSetDeletionProtection Text
isdpProject
  = lens _isdpProject (\ s a -> s{_isdpProject = a})

-- | The name of the zone for this request.
isdpZone :: Lens' InstancesSetDeletionProtection Text
isdpZone = lens _isdpZone (\ s a -> s{_isdpZone = a})

-- | Name or id of the resource for this request.
isdpResource :: Lens' InstancesSetDeletionProtection Text
isdpResource
  = lens _isdpResource (\ s a -> s{_isdpResource = a})

instance GoogleRequest InstancesSetDeletionProtection
         where
        type Rs InstancesSetDeletionProtection = Operation
        type Scopes InstancesSetDeletionProtection =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute"]
        requestClient InstancesSetDeletionProtection'{..}
          = go _isdpProject _isdpZone _isdpResource
              _isdpRequestId
              (Just _isdpDeletionProtection)
              (Just AltJSON)
              computeService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy InstancesSetDeletionProtectionResource)
                      mempty
