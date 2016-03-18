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
-- Copyright   : (c) 2015 Brendan Hay
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
                   QueryParam "alt" AltJSON :> Delete '[JSON] Operation

-- | Deletes the specified Route resource.
--
-- /See:/ 'routesDelete' smart constructor.
data RoutesDelete = RoutesDelete
    { _rdProject :: !Text
    , _rdRoute   :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'RoutesDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rdProject'
--
-- * 'rdRoute'
routesDelete
    :: Text -- ^ 'rdProject'
    -> Text -- ^ 'rdRoute'
    -> RoutesDelete
routesDelete pRdProject_ pRdRoute_ =
    RoutesDelete
    { _rdProject = pRdProject_
    , _rdRoute = pRdRoute_
    }

-- | Project ID for this request.
rdProject :: Lens' RoutesDelete Text
rdProject
  = lens _rdProject (\ s a -> s{_rdProject = a})

-- | Name of the Route resource to delete.
rdRoute :: Lens' RoutesDelete Text
rdRoute = lens _rdRoute (\ s a -> s{_rdRoute = a})

instance GoogleRequest RoutesDelete where
        type Rs RoutesDelete = Operation
        requestClient RoutesDelete{..}
          = go _rdProject _rdRoute (Just AltJSON)
              computeService
          where go
                  = buildClient (Proxy :: Proxy RoutesDeleteResource)
                      mempty
