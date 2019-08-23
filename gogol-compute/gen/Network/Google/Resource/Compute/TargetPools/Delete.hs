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
-- Module      : Network.Google.Resource.Compute.TargetPools.Delete
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes the specified target pool.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.targetPools.delete@.
module Network.Google.Resource.Compute.TargetPools.Delete
    (
    -- * REST Resource
      TargetPoolsDeleteResource

    -- * Creating a Request
    , targetPoolsDelete
    , TargetPoolsDelete

    -- * Request Lenses
    , tpdRequestId
    , tpdProject
    , tpdTargetPool
    , tpdRegion
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @compute.targetPools.delete@ method which the
-- 'TargetPoolsDelete' request conforms to.
type TargetPoolsDeleteResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "regions" :>
               Capture "region" Text :>
                 "targetPools" :>
                   Capture "targetPool" Text :>
                     QueryParam "requestId" Text :>
                       QueryParam "alt" AltJSON :> Delete '[JSON] Operation

-- | Deletes the specified target pool.
--
-- /See:/ 'targetPoolsDelete' smart constructor.
data TargetPoolsDelete =
  TargetPoolsDelete'
    { _tpdRequestId  :: !(Maybe Text)
    , _tpdProject    :: !Text
    , _tpdTargetPool :: !Text
    , _tpdRegion     :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'TargetPoolsDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tpdRequestId'
--
-- * 'tpdProject'
--
-- * 'tpdTargetPool'
--
-- * 'tpdRegion'
targetPoolsDelete
    :: Text -- ^ 'tpdProject'
    -> Text -- ^ 'tpdTargetPool'
    -> Text -- ^ 'tpdRegion'
    -> TargetPoolsDelete
targetPoolsDelete pTpdProject_ pTpdTargetPool_ pTpdRegion_ =
  TargetPoolsDelete'
    { _tpdRequestId = Nothing
    , _tpdProject = pTpdProject_
    , _tpdTargetPool = pTpdTargetPool_
    , _tpdRegion = pTpdRegion_
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
tpdRequestId :: Lens' TargetPoolsDelete (Maybe Text)
tpdRequestId
  = lens _tpdRequestId (\ s a -> s{_tpdRequestId = a})

-- | Project ID for this request.
tpdProject :: Lens' TargetPoolsDelete Text
tpdProject
  = lens _tpdProject (\ s a -> s{_tpdProject = a})

-- | Name of the TargetPool resource to delete.
tpdTargetPool :: Lens' TargetPoolsDelete Text
tpdTargetPool
  = lens _tpdTargetPool
      (\ s a -> s{_tpdTargetPool = a})

-- | Name of the region scoping this request.
tpdRegion :: Lens' TargetPoolsDelete Text
tpdRegion
  = lens _tpdRegion (\ s a -> s{_tpdRegion = a})

instance GoogleRequest TargetPoolsDelete where
        type Rs TargetPoolsDelete = Operation
        type Scopes TargetPoolsDelete =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute"]
        requestClient TargetPoolsDelete'{..}
          = go _tpdProject _tpdRegion _tpdTargetPool
              _tpdRequestId
              (Just AltJSON)
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy TargetPoolsDeleteResource)
                      mempty
