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
-- Module      : Network.Google.Resource.Compute.RegionInstances.BulkInsert
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates multiple instances in a given region. Count specifies the number
-- of instances to create.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.regionInstances.bulkInsert@.
module Network.Google.Resource.Compute.RegionInstances.BulkInsert
    (
    -- * REST Resource
      RegionInstancesBulkInsertResource

    -- * Creating a Request
    , regionInstancesBulkInsert
    , RegionInstancesBulkInsert

    -- * Request Lenses
    , ribiRequestId
    , ribiProject
    , ribiPayload
    , ribiRegion
    ) where

import Network.Google.Compute.Types
import Network.Google.Prelude

-- | A resource alias for @compute.regionInstances.bulkInsert@ method which the
-- 'RegionInstancesBulkInsert' request conforms to.
type RegionInstancesBulkInsertResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "regions" :>
               Capture "region" Text :>
                 "instances" :>
                   "bulkInsert" :>
                     QueryParam "requestId" Text :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] BulkInsertInstanceResource :>
                           Post '[JSON] Operation

-- | Creates multiple instances in a given region. Count specifies the number
-- of instances to create.
--
-- /See:/ 'regionInstancesBulkInsert' smart constructor.
data RegionInstancesBulkInsert =
  RegionInstancesBulkInsert'
    { _ribiRequestId :: !(Maybe Text)
    , _ribiProject :: !Text
    , _ribiPayload :: !BulkInsertInstanceResource
    , _ribiRegion :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'RegionInstancesBulkInsert' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ribiRequestId'
--
-- * 'ribiProject'
--
-- * 'ribiPayload'
--
-- * 'ribiRegion'
regionInstancesBulkInsert
    :: Text -- ^ 'ribiProject'
    -> BulkInsertInstanceResource -- ^ 'ribiPayload'
    -> Text -- ^ 'ribiRegion'
    -> RegionInstancesBulkInsert
regionInstancesBulkInsert pRibiProject_ pRibiPayload_ pRibiRegion_ =
  RegionInstancesBulkInsert'
    { _ribiRequestId = Nothing
    , _ribiProject = pRibiProject_
    , _ribiPayload = pRibiPayload_
    , _ribiRegion = pRibiRegion_
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
ribiRequestId :: Lens' RegionInstancesBulkInsert (Maybe Text)
ribiRequestId
  = lens _ribiRequestId
      (\ s a -> s{_ribiRequestId = a})

-- | Project ID for this request.
ribiProject :: Lens' RegionInstancesBulkInsert Text
ribiProject
  = lens _ribiProject (\ s a -> s{_ribiProject = a})

-- | Multipart request metadata.
ribiPayload :: Lens' RegionInstancesBulkInsert BulkInsertInstanceResource
ribiPayload
  = lens _ribiPayload (\ s a -> s{_ribiPayload = a})

-- | The name of the region for this request.
ribiRegion :: Lens' RegionInstancesBulkInsert Text
ribiRegion
  = lens _ribiRegion (\ s a -> s{_ribiRegion = a})

instance GoogleRequest RegionInstancesBulkInsert
         where
        type Rs RegionInstancesBulkInsert = Operation
        type Scopes RegionInstancesBulkInsert =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute"]
        requestClient RegionInstancesBulkInsert'{..}
          = go _ribiProject _ribiRegion _ribiRequestId
              (Just AltJSON)
              _ribiPayload
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy RegionInstancesBulkInsertResource)
                      mempty
