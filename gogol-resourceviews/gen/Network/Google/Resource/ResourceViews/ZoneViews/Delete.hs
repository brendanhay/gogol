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
-- Module      : Network.Google.Resource.ResourceViews.ZoneViews.Delete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Delete a resource view.
--
-- /See:/ <https://developers.google.com/compute/ Google Compute Engine Instance Groups API Reference> for @resourceviews.zoneViews.delete@.
module Network.Google.Resource.ResourceViews.ZoneViews.Delete
    (
    -- * REST Resource
      ZoneViewsDeleteResource

    -- * Creating a Request
    , zoneViewsDelete
    , ZoneViewsDelete

    -- * Request Lenses
    , zvdResourceView
    , zvdProject
    , zvdZone
    ) where

import           Network.Google.Prelude
import           Network.Google.ResourceViews.Types

-- | A resource alias for @resourceviews.zoneViews.delete@ method which the
-- 'ZoneViewsDelete' request conforms to.
type ZoneViewsDeleteResource =
     Capture "project" Text :>
       "zones" :>
         Capture "zone" Text :>
           "resourceViews" :>
             Capture "resourceView" Text :>
               QueryParam "alt" AltJSON :> Delete '[JSON] Operation

-- | Delete a resource view.
--
-- /See:/ 'zoneViewsDelete' smart constructor.
data ZoneViewsDelete = ZoneViewsDelete
    { _zvdResourceView :: !Text
    , _zvdProject      :: !Text
    , _zvdZone         :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ZoneViewsDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'zvdResourceView'
--
-- * 'zvdProject'
--
-- * 'zvdZone'
zoneViewsDelete
    :: Text -- ^ 'zvdResourceView'
    -> Text -- ^ 'zvdProject'
    -> Text -- ^ 'zvdZone'
    -> ZoneViewsDelete
zoneViewsDelete pZvdResourceView_ pZvdProject_ pZvdZone_ =
    ZoneViewsDelete
    { _zvdResourceView = pZvdResourceView_
    , _zvdProject = pZvdProject_
    , _zvdZone = pZvdZone_
    }

-- | The name of the resource view.
zvdResourceView :: Lens' ZoneViewsDelete Text
zvdResourceView
  = lens _zvdResourceView
      (\ s a -> s{_zvdResourceView = a})

-- | The project name of the resource view.
zvdProject :: Lens' ZoneViewsDelete Text
zvdProject
  = lens _zvdProject (\ s a -> s{_zvdProject = a})

-- | The zone name of the resource view.
zvdZone :: Lens' ZoneViewsDelete Text
zvdZone = lens _zvdZone (\ s a -> s{_zvdZone = a})

instance GoogleRequest ZoneViewsDelete where
        type Rs ZoneViewsDelete = Operation
        requestClient ZoneViewsDelete{..}
          = go _zvdProject _zvdZone _zvdResourceView
              (Just AltJSON)
              resourceViewsService
          where go
                  = buildClient
                      (Proxy :: Proxy ZoneViewsDeleteResource)
                      mempty
