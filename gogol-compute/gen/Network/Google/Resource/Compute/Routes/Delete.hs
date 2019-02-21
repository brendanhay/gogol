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
    , rdRequestId
    , rdProject
    , rdRoute
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

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
    { _rdRequestId :: !(Maybe Text)
    , _rdProject   :: !Text
    , _rdRoute     :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'RoutesDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rdRequestId'
--
-- * 'rdProject'
--
-- * 'rdRoute'
routesDelete
    :: Text -- ^ 'rdProject'
    -> Text -- ^ 'rdRoute'
    -> RoutesDelete
routesDelete pRdProject_ pRdRoute_ =
  RoutesDelete'
    {_rdRequestId = Nothing, _rdProject = pRdProject_, _rdRoute = pRdRoute_}


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
rdRequestId :: Lens' RoutesDelete (Maybe Text)
rdRequestId
  = lens _rdRequestId (\ s a -> s{_rdRequestId = a})

-- | Project ID for this request.
rdProject :: Lens' RoutesDelete Text
rdProject
  = lens _rdProject (\ s a -> s{_rdProject = a})

-- | Name of the Route resource to delete.
rdRoute :: Lens' RoutesDelete Text
rdRoute = lens _rdRoute (\ s a -> s{_rdRoute = a})

instance GoogleRequest RoutesDelete where
        type Rs RoutesDelete = Operation
        type Scopes RoutesDelete =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute"]
        requestClient RoutesDelete'{..}
          = go _rdProject _rdRoute _rdRequestId (Just AltJSON)
              computeService
          where go
                  = buildClient (Proxy :: Proxy RoutesDeleteResource)
                      mempty
