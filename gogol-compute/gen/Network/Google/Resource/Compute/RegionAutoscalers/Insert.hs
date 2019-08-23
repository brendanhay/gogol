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
-- Module      : Network.Google.Resource.Compute.RegionAutoscalers.Insert
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates an autoscaler in the specified project using the data included
-- in the request.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.regionAutoscalers.insert@.
module Network.Google.Resource.Compute.RegionAutoscalers.Insert
    (
    -- * REST Resource
      RegionAutoscalersInsertResource

    -- * Creating a Request
    , regionAutoscalersInsert
    , RegionAutoscalersInsert

    -- * Request Lenses
    , raiRequestId
    , raiProject
    , raiPayload
    , raiRegion
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @compute.regionAutoscalers.insert@ method which the
-- 'RegionAutoscalersInsert' request conforms to.
type RegionAutoscalersInsertResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "regions" :>
               Capture "region" Text :>
                 "autoscalers" :>
                   QueryParam "requestId" Text :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] Autoscaler :> Post '[JSON] Operation

-- | Creates an autoscaler in the specified project using the data included
-- in the request.
--
-- /See:/ 'regionAutoscalersInsert' smart constructor.
data RegionAutoscalersInsert =
  RegionAutoscalersInsert'
    { _raiRequestId :: !(Maybe Text)
    , _raiProject   :: !Text
    , _raiPayload   :: !Autoscaler
    , _raiRegion    :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'RegionAutoscalersInsert' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'raiRequestId'
--
-- * 'raiProject'
--
-- * 'raiPayload'
--
-- * 'raiRegion'
regionAutoscalersInsert
    :: Text -- ^ 'raiProject'
    -> Autoscaler -- ^ 'raiPayload'
    -> Text -- ^ 'raiRegion'
    -> RegionAutoscalersInsert
regionAutoscalersInsert pRaiProject_ pRaiPayload_ pRaiRegion_ =
  RegionAutoscalersInsert'
    { _raiRequestId = Nothing
    , _raiProject = pRaiProject_
    , _raiPayload = pRaiPayload_
    , _raiRegion = pRaiRegion_
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
raiRequestId :: Lens' RegionAutoscalersInsert (Maybe Text)
raiRequestId
  = lens _raiRequestId (\ s a -> s{_raiRequestId = a})

-- | Project ID for this request.
raiProject :: Lens' RegionAutoscalersInsert Text
raiProject
  = lens _raiProject (\ s a -> s{_raiProject = a})

-- | Multipart request metadata.
raiPayload :: Lens' RegionAutoscalersInsert Autoscaler
raiPayload
  = lens _raiPayload (\ s a -> s{_raiPayload = a})

-- | Name of the region scoping this request.
raiRegion :: Lens' RegionAutoscalersInsert Text
raiRegion
  = lens _raiRegion (\ s a -> s{_raiRegion = a})

instance GoogleRequest RegionAutoscalersInsert where
        type Rs RegionAutoscalersInsert = Operation
        type Scopes RegionAutoscalersInsert =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute"]
        requestClient RegionAutoscalersInsert'{..}
          = go _raiProject _raiRegion _raiRequestId
              (Just AltJSON)
              _raiPayload
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy RegionAutoscalersInsertResource)
                      mempty
