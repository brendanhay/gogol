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
-- Module      : Network.Google.Resource.Compute.TargetPools.Insert
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a target pool in the specified project and region using the data
-- included in the request.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.targetPools.insert@.
module Network.Google.Resource.Compute.TargetPools.Insert
    (
    -- * REST Resource
      TargetPoolsInsertResource

    -- * Creating a Request
    , targetPoolsInsert
    , TargetPoolsInsert

    -- * Request Lenses
    , tpiRequestId
    , tpiProject
    , tpiPayload
    , tpiRegion
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @compute.targetPools.insert@ method which the
-- 'TargetPoolsInsert' request conforms to.
type TargetPoolsInsertResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "regions" :>
               Capture "region" Text :>
                 "targetPools" :>
                   QueryParam "requestId" Text :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] TargetPool :> Post '[JSON] Operation

-- | Creates a target pool in the specified project and region using the data
-- included in the request.
--
-- /See:/ 'targetPoolsInsert' smart constructor.
data TargetPoolsInsert =
  TargetPoolsInsert'
    { _tpiRequestId :: !(Maybe Text)
    , _tpiProject   :: !Text
    , _tpiPayload   :: !TargetPool
    , _tpiRegion    :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'TargetPoolsInsert' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tpiRequestId'
--
-- * 'tpiProject'
--
-- * 'tpiPayload'
--
-- * 'tpiRegion'
targetPoolsInsert
    :: Text -- ^ 'tpiProject'
    -> TargetPool -- ^ 'tpiPayload'
    -> Text -- ^ 'tpiRegion'
    -> TargetPoolsInsert
targetPoolsInsert pTpiProject_ pTpiPayload_ pTpiRegion_ =
  TargetPoolsInsert'
    { _tpiRequestId = Nothing
    , _tpiProject = pTpiProject_
    , _tpiPayload = pTpiPayload_
    , _tpiRegion = pTpiRegion_
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
tpiRequestId :: Lens' TargetPoolsInsert (Maybe Text)
tpiRequestId
  = lens _tpiRequestId (\ s a -> s{_tpiRequestId = a})

-- | Project ID for this request.
tpiProject :: Lens' TargetPoolsInsert Text
tpiProject
  = lens _tpiProject (\ s a -> s{_tpiProject = a})

-- | Multipart request metadata.
tpiPayload :: Lens' TargetPoolsInsert TargetPool
tpiPayload
  = lens _tpiPayload (\ s a -> s{_tpiPayload = a})

-- | Name of the region scoping this request.
tpiRegion :: Lens' TargetPoolsInsert Text
tpiRegion
  = lens _tpiRegion (\ s a -> s{_tpiRegion = a})

instance GoogleRequest TargetPoolsInsert where
        type Rs TargetPoolsInsert = Operation
        type Scopes TargetPoolsInsert =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute"]
        requestClient TargetPoolsInsert'{..}
          = go _tpiProject _tpiRegion _tpiRequestId
              (Just AltJSON)
              _tpiPayload
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy TargetPoolsInsertResource)
                      mempty
