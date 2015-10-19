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
-- Module      : Network.Google.Resource.Compute.Routes.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the specified route resource.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @ComputeRoutesGet@.
module Network.Google.Resource.Compute.Routes.Get
    (
    -- * REST Resource
      RoutesGetResource

    -- * Creating a Request
    , routesGet'
    , RoutesGet'

    -- * Request Lenses
    , rouProject
    , rouRoute
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @ComputeRoutesGet@ method which the
-- 'RoutesGet'' request conforms to.
type RoutesGetResource =
     Capture "project" Text :>
       "global" :>
         "routes" :>
           Capture "route" Text :>
             QueryParam "alt" AltJSON :> Get '[JSON] Route

-- | Returns the specified route resource.
--
-- /See:/ 'routesGet'' smart constructor.
data RoutesGet' = RoutesGet'
    { _rouProject :: !Text
    , _rouRoute   :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'RoutesGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rouProject'
--
-- * 'rouRoute'
routesGet'
    :: Text -- ^ 'project'
    -> Text -- ^ 'route'
    -> RoutesGet'
routesGet' pRouProject_ pRouRoute_ =
    RoutesGet'
    { _rouProject = pRouProject_
    , _rouRoute = pRouRoute_
    }

-- | Name of the project scoping this request.
rouProject :: Lens' RoutesGet' Text
rouProject
  = lens _rouProject (\ s a -> s{_rouProject = a})

-- | Name of the route resource to return.
rouRoute :: Lens' RoutesGet' Text
rouRoute = lens _rouRoute (\ s a -> s{_rouRoute = a})

instance GoogleRequest RoutesGet' where
        type Rs RoutesGet' = Route
        requestClient RoutesGet'{..}
          = go _rouProject _rouRoute (Just AltJSON)
              computeService
          where go
                  = buildClient (Proxy :: Proxy RoutesGetResource)
                      mempty
