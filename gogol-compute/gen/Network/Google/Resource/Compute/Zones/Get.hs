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
-- Module      : Network.Google.Resource.Compute.Zones.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the specified Zone resource. Gets a list of available zones by
-- making a list() request.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.zones.get@.
module Network.Google.Resource.Compute.Zones.Get
    (
    -- * REST Resource
      ZonesGetResource

    -- * Creating a Request
    , zonesGet
    , ZonesGet

    -- * Request Lenses
    , zgProject
    , zgZone
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @compute.zones.get@ method which the
-- 'ZonesGet' request conforms to.
type ZonesGetResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "zones" :>
               Capture "zone" Text :>
                 QueryParam "alt" AltJSON :> Get '[JSON] Zone

-- | Returns the specified Zone resource. Gets a list of available zones by
-- making a list() request.
--
-- /See:/ 'zonesGet' smart constructor.
data ZonesGet = ZonesGet'
    { _zgProject :: !Text
    , _zgZone    :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ZonesGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'zgProject'
--
-- * 'zgZone'
zonesGet
    :: Text -- ^ 'zgProject'
    -> Text -- ^ 'zgZone'
    -> ZonesGet
zonesGet pZgProject_ pZgZone_ =
    ZonesGet'
    { _zgProject = pZgProject_
    , _zgZone = pZgZone_
    }

-- | Project ID for this request.
zgProject :: Lens' ZonesGet Text
zgProject
  = lens _zgProject (\ s a -> s{_zgProject = a})

-- | Name of the zone resource to return.
zgZone :: Lens' ZonesGet Text
zgZone = lens _zgZone (\ s a -> s{_zgZone = a})

instance GoogleRequest ZonesGet where
        type Rs ZonesGet = Zone
        type Scopes ZonesGet =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute",
               "https://www.googleapis.com/auth/compute.readonly"]
        requestClient ZonesGet'{..}
          = go _zgProject _zgZone (Just AltJSON) computeService
          where go
                  = buildClient (Proxy :: Proxy ZonesGetResource)
                      mempty
