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
    , rd1RequestId
    , rd1Project
    , rd1Router
    , rd1Region
    ) where

import Network.Google.Compute.Types
import Network.Google.Prelude

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
data RoutersDelete =
  RoutersDelete'
    { _rd1RequestId :: !(Maybe Text)
    , _rd1Project :: !Text
    , _rd1Router :: !Text
    , _rd1Region :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'RoutersDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rd1RequestId'
--
-- * 'rd1Project'
--
-- * 'rd1Router'
--
-- * 'rd1Region'
routersDelete
    :: Text -- ^ 'rd1Project'
    -> Text -- ^ 'rd1Router'
    -> Text -- ^ 'rd1Region'
    -> RoutersDelete
routersDelete pRd1Project_ pRd1Router_ pRd1Region_ =
  RoutersDelete'
    { _rd1RequestId = Nothing
    , _rd1Project = pRd1Project_
    , _rd1Router = pRd1Router_
    , _rd1Region = pRd1Region_
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
rd1RequestId :: Lens' RoutersDelete (Maybe Text)
rd1RequestId
  = lens _rd1RequestId (\ s a -> s{_rd1RequestId = a})

-- | Project ID for this request.
rd1Project :: Lens' RoutersDelete Text
rd1Project
  = lens _rd1Project (\ s a -> s{_rd1Project = a})

-- | Name of the Router resource to delete.
rd1Router :: Lens' RoutersDelete Text
rd1Router
  = lens _rd1Router (\ s a -> s{_rd1Router = a})

-- | Name of the region for this request.
rd1Region :: Lens' RoutersDelete Text
rd1Region
  = lens _rd1Region (\ s a -> s{_rd1Region = a})

instance GoogleRequest RoutersDelete where
        type Rs RoutersDelete = Operation
        type Scopes RoutersDelete =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute"]
        requestClient RoutersDelete'{..}
          = go _rd1Project _rd1Region _rd1Router _rd1RequestId
              (Just AltJSON)
              computeService
          where go
                  = buildClient (Proxy :: Proxy RoutersDeleteResource)
                      mempty
