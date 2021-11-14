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
-- Module      : Network.Google.Resource.Compute.Instances.BulkInsert
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates multiple instances. Count specifies the number of instances to
-- create.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.instances.bulkInsert@.
module Network.Google.Resource.Compute.Instances.BulkInsert
    (
    -- * REST Resource
      InstancesBulkInsertResource

    -- * Creating a Request
    , instancesBulkInsert
    , InstancesBulkInsert

    -- * Request Lenses
    , ibiRequestId
    , ibiProject
    , ibiZone
    , ibiPayload
    ) where

import Network.Google.Compute.Types
import Network.Google.Prelude

-- | A resource alias for @compute.instances.bulkInsert@ method which the
-- 'InstancesBulkInsert' request conforms to.
type InstancesBulkInsertResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "zones" :>
               Capture "zone" Text :>
                 "instances" :>
                   "bulkInsert" :>
                     QueryParam "requestId" Text :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] BulkInsertInstanceResource :>
                           Post '[JSON] Operation

-- | Creates multiple instances. Count specifies the number of instances to
-- create.
--
-- /See:/ 'instancesBulkInsert' smart constructor.
data InstancesBulkInsert =
  InstancesBulkInsert'
    { _ibiRequestId :: !(Maybe Text)
    , _ibiProject :: !Text
    , _ibiZone :: !Text
    , _ibiPayload :: !BulkInsertInstanceResource
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'InstancesBulkInsert' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ibiRequestId'
--
-- * 'ibiProject'
--
-- * 'ibiZone'
--
-- * 'ibiPayload'
instancesBulkInsert
    :: Text -- ^ 'ibiProject'
    -> Text -- ^ 'ibiZone'
    -> BulkInsertInstanceResource -- ^ 'ibiPayload'
    -> InstancesBulkInsert
instancesBulkInsert pIbiProject_ pIbiZone_ pIbiPayload_ =
  InstancesBulkInsert'
    { _ibiRequestId = Nothing
    , _ibiProject = pIbiProject_
    , _ibiZone = pIbiZone_
    , _ibiPayload = pIbiPayload_
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
ibiRequestId :: Lens' InstancesBulkInsert (Maybe Text)
ibiRequestId
  = lens _ibiRequestId (\ s a -> s{_ibiRequestId = a})

-- | Project ID for this request.
ibiProject :: Lens' InstancesBulkInsert Text
ibiProject
  = lens _ibiProject (\ s a -> s{_ibiProject = a})

-- | The name of the zone for this request.
ibiZone :: Lens' InstancesBulkInsert Text
ibiZone = lens _ibiZone (\ s a -> s{_ibiZone = a})

-- | Multipart request metadata.
ibiPayload :: Lens' InstancesBulkInsert BulkInsertInstanceResource
ibiPayload
  = lens _ibiPayload (\ s a -> s{_ibiPayload = a})

instance GoogleRequest InstancesBulkInsert where
        type Rs InstancesBulkInsert = Operation
        type Scopes InstancesBulkInsert =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute"]
        requestClient InstancesBulkInsert'{..}
          = go _ibiProject _ibiZone _ibiRequestId
              (Just AltJSON)
              _ibiPayload
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy InstancesBulkInsertResource)
                      mempty
