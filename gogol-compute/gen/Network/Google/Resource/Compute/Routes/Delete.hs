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
-- Module      : Network.Google.Resource.Compute.Routes.Delete
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes the specified Route resource.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.routes.delete@.
module Network.Google.Resource.Compute.Routes.Delete
    (
    -- * REST Resource
      RoutesDeleteResource

    -- * Creating a Request
    , routesDelete
    , RoutesDelete

    -- * Request Lenses
    , rouoRequestId
    , rouoProject
    , rouoRoute
    ) where

import Network.Google.Compute.Types
import Network.Google.Prelude

-- | A resource alias for @compute.routes.delete@ method which the
-- 'RoutesDelete' request conforms to.
type RoutesDeleteResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "global" :>
               "routes" :>
                 Capture "route" Text :>
                   QueryParam "requestId" Text :>
                     QueryParam "alt" AltJSON :> Delete '[JSON] Operation

-- | Deletes the specified Route resource.
--
-- /See:/ 'routesDelete' smart constructor.
data RoutesDelete =
  RoutesDelete'
    { _rouoRequestId :: !(Maybe Text)
    , _rouoProject :: !Text
    , _rouoRoute :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'RoutesDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rouoRequestId'
--
-- * 'rouoProject'
--
-- * 'rouoRoute'
routesDelete
    :: Text -- ^ 'rouoProject'
    -> Text -- ^ 'rouoRoute'
    -> RoutesDelete
routesDelete pRouoProject_ pRouoRoute_ =
  RoutesDelete'
    { _rouoRequestId = Nothing
    , _rouoProject = pRouoProject_
    , _rouoRoute = pRouoRoute_
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
rouoRequestId :: Lens' RoutesDelete (Maybe Text)
rouoRequestId
  = lens _rouoRequestId
      (\ s a -> s{_rouoRequestId = a})

-- | Project ID for this request.
rouoProject :: Lens' RoutesDelete Text
rouoProject
  = lens _rouoProject (\ s a -> s{_rouoProject = a})

-- | Name of the Route resource to delete.
rouoRoute :: Lens' RoutesDelete Text
rouoRoute
  = lens _rouoRoute (\ s a -> s{_rouoRoute = a})

instance GoogleRequest RoutesDelete where
        type Rs RoutesDelete = Operation
        type Scopes RoutesDelete =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute"]
        requestClient RoutesDelete'{..}
          = go _rouoProject _rouoRoute _rouoRequestId
              (Just AltJSON)
              computeService
          where go
                  = buildClient (Proxy :: Proxy RoutesDeleteResource)
                      mempty
