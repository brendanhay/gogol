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
-- Module      : Network.Google.Resource.ResourceViews.ZoneViews.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Get the information of a zonal resource view.
--
-- /See:/ <https://developers.google.com/compute/ Google Compute Engine Instance Groups API Reference> for @ResourceviewsZoneViewsGet@.
module Network.Google.Resource.ResourceViews.ZoneViews.Get
    (
    -- * REST Resource
      ZoneViewsGetResource

    -- * Creating a Request
    , zoneViewsGet'
    , ZoneViewsGet'

    -- * Request Lenses
    , zvgResourceView
    , zvgProject
    , zvgZone
    ) where

import           Network.Google.Prelude
import           Network.Google.ResourceViews.Types

-- | A resource alias for @ResourceviewsZoneViewsGet@ method which the
-- 'ZoneViewsGet'' request conforms to.
type ZoneViewsGetResource =
     Capture "project" Text :>
       "zones" :>
         Capture "zone" Text :>
           "resourceViews" :>
             Capture "resourceView" Text :>
               QueryParam "alt" AltJSON :> Get '[JSON] ResourceView

-- | Get the information of a zonal resource view.
--
-- /See:/ 'zoneViewsGet'' smart constructor.
data ZoneViewsGet' = ZoneViewsGet'
    { _zvgResourceView :: !Text
    , _zvgProject      :: !Text
    , _zvgZone         :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ZoneViewsGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'zvgResourceView'
--
-- * 'zvgProject'
--
-- * 'zvgZone'
zoneViewsGet'
    :: Text -- ^ 'resourceView'
    -> Text -- ^ 'project'
    -> Text -- ^ 'zone'
    -> ZoneViewsGet'
zoneViewsGet' pZvgResourceView_ pZvgProject_ pZvgZone_ =
    ZoneViewsGet'
    { _zvgResourceView = pZvgResourceView_
    , _zvgProject = pZvgProject_
    , _zvgZone = pZvgZone_
    }

-- | The name of the resource view.
zvgResourceView :: Lens' ZoneViewsGet' Text
zvgResourceView
  = lens _zvgResourceView
      (\ s a -> s{_zvgResourceView = a})

-- | The project name of the resource view.
zvgProject :: Lens' ZoneViewsGet' Text
zvgProject
  = lens _zvgProject (\ s a -> s{_zvgProject = a})

-- | The zone name of the resource view.
zvgZone :: Lens' ZoneViewsGet' Text
zvgZone = lens _zvgZone (\ s a -> s{_zvgZone = a})

instance GoogleRequest ZoneViewsGet' where
        type Rs ZoneViewsGet' = ResourceView
        requestClient ZoneViewsGet'{..}
          = go _zvgProject _zvgZone _zvgResourceView
              (Just AltJSON)
              resourceViews
          where go
                  = buildClient (Proxy :: Proxy ZoneViewsGetResource)
                      mempty
