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
-- Module      : Network.Google.Resource.Compute.Routers.Delete
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes the specified Router resource.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.routers.delete@.
module Network.Google.Resource.Compute.Routers.Delete
    (
    -- * REST Resource
      RoutersDeleteResource

    -- * Creating a Request
    , routersDelete
    , RoutersDelete

    -- * Request Lenses
    , rouoRequestId
    , rouoProject
    , rouoRouter
    , rouoRegion
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @compute.routers.delete@ method which the
-- 'RoutersDelete' request conforms to.
type RoutersDeleteResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "regions" :>
               Capture "region" Text :>
                 "routers" :>
                   Capture "router" Text :>
                     QueryParam "requestId" Text :>
                       QueryParam "alt" AltJSON :> Delete '[JSON] Operation

-- | Deletes the specified Router resource.
--
-- /See:/ 'routersDelete' smart constructor.
data RoutersDelete = RoutersDelete'
    { _rouoRequestId :: !(Maybe Text)
    , _rouoProject   :: !Text
    , _rouoRouter    :: !Text
    , _rouoRegion    :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'RoutersDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rouoRequestId'
--
-- * 'rouoProject'
--
-- * 'rouoRouter'
--
-- * 'rouoRegion'
routersDelete
    :: Text -- ^ 'rouoProject'
    -> Text -- ^ 'rouoRouter'
    -> Text -- ^ 'rouoRegion'
    -> RoutersDelete
routersDelete pRouoProject_ pRouoRouter_ pRouoRegion_ =
    RoutersDelete'
    { _rouoRequestId = Nothing
    , _rouoProject = pRouoProject_
    , _rouoRouter = pRouoRouter_
    , _rouoRegion = pRouoRegion_
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
rouoRequestId :: Lens' RoutersDelete (Maybe Text)
rouoRequestId
  = lens _rouoRequestId
      (\ s a -> s{_rouoRequestId = a})

-- | Project ID for this request.
rouoProject :: Lens' RoutersDelete Text
rouoProject
  = lens _rouoProject (\ s a -> s{_rouoProject = a})

-- | Name of the Router resource to delete.
rouoRouter :: Lens' RoutersDelete Text
rouoRouter
  = lens _rouoRouter (\ s a -> s{_rouoRouter = a})

-- | Name of the region for this request.
rouoRegion :: Lens' RoutersDelete Text
rouoRegion
  = lens _rouoRegion (\ s a -> s{_rouoRegion = a})

instance GoogleRequest RoutersDelete where
        type Rs RoutersDelete = Operation
        type Scopes RoutersDelete =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute"]
        requestClient RoutersDelete'{..}
          = go _rouoProject _rouoRegion _rouoRouter
              _rouoRequestId
              (Just AltJSON)
              computeService
          where go
                  = buildClient (Proxy :: Proxy RoutersDeleteResource)
                      mempty
