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
-- Module      : Network.Google.Resource.Compute.InstanceGroups.Insert
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates an instance group in the specified project using the parameters
-- that are included in the request.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.instanceGroups.insert@.
module Network.Google.Resource.Compute.InstanceGroups.Insert
    (
    -- * REST Resource
      InstanceGroupsInsertResource

    -- * Creating a Request
    , instanceGroupsInsert
    , InstanceGroupsInsert

    -- * Request Lenses
    , igiRequestId
    , igiProject
    , igiZone
    , igiPayload
    ) where

import Network.Google.Compute.Types
import Network.Google.Prelude

-- | A resource alias for @compute.instanceGroups.insert@ method which the
-- 'InstanceGroupsInsert' request conforms to.
type InstanceGroupsInsertResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "zones" :>
               Capture "zone" Text :>
                 "instanceGroups" :>
                   QueryParam "requestId" Text :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] InstanceGroup :>
                         Post '[JSON] Operation

-- | Creates an instance group in the specified project using the parameters
-- that are included in the request.
--
-- /See:/ 'instanceGroupsInsert' smart constructor.
data InstanceGroupsInsert =
  InstanceGroupsInsert'
    { _igiRequestId :: !(Maybe Text)
    , _igiProject :: !Text
    , _igiZone :: !Text
    , _igiPayload :: !InstanceGroup
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'InstanceGroupsInsert' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'igiRequestId'
--
-- * 'igiProject'
--
-- * 'igiZone'
--
-- * 'igiPayload'
instanceGroupsInsert
    :: Text -- ^ 'igiProject'
    -> Text -- ^ 'igiZone'
    -> InstanceGroup -- ^ 'igiPayload'
    -> InstanceGroupsInsert
instanceGroupsInsert pIgiProject_ pIgiZone_ pIgiPayload_ =
  InstanceGroupsInsert'
    { _igiRequestId = Nothing
    , _igiProject = pIgiProject_
    , _igiZone = pIgiZone_
    , _igiPayload = pIgiPayload_
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
igiRequestId :: Lens' InstanceGroupsInsert (Maybe Text)
igiRequestId
  = lens _igiRequestId (\ s a -> s{_igiRequestId = a})

-- | Project ID for this request.
igiProject :: Lens' InstanceGroupsInsert Text
igiProject
  = lens _igiProject (\ s a -> s{_igiProject = a})

-- | The name of the zone where you want to create the instance group.
igiZone :: Lens' InstanceGroupsInsert Text
igiZone = lens _igiZone (\ s a -> s{_igiZone = a})

-- | Multipart request metadata.
igiPayload :: Lens' InstanceGroupsInsert InstanceGroup
igiPayload
  = lens _igiPayload (\ s a -> s{_igiPayload = a})

instance GoogleRequest InstanceGroupsInsert where
        type Rs InstanceGroupsInsert = Operation
        type Scopes InstanceGroupsInsert =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute"]
        requestClient InstanceGroupsInsert'{..}
          = go _igiProject _igiZone _igiRequestId
              (Just AltJSON)
              _igiPayload
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy InstanceGroupsInsertResource)
                      mempty
