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
-- Module      : Network.Google.Resource.ResourceViews.ZoneViews.RemoveResources
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Remove resources from the view.
--
-- /See:/ <https://developers.google.com/compute/ Google Compute Engine Instance Groups API Reference> for @ResourceviewsZoneViewsRemoveResources@.
module Network.Google.Resource.ResourceViews.ZoneViews.RemoveResources
    (
    -- * REST Resource
      ZoneViewsRemoveResourcesResource

    -- * Creating a Request
    , zoneViewsRemoveResources'
    , ZoneViewsRemoveResources'

    -- * Request Lenses
    , zvrrResourceView
    , zvrrProject
    , zvrrZone
    , zvrrPayload
    ) where

import           Network.Google.Prelude
import           Network.Google.ResourceViews.Types

-- | A resource alias for @ResourceviewsZoneViewsRemoveResources@ method which the
-- 'ZoneViewsRemoveResources'' request conforms to.
type ZoneViewsRemoveResourcesResource =
     Capture "project" Text :>
       "zones" :>
         Capture "zone" Text :>
           "resourceViews" :>
             Capture "resourceView" Text :>
               "removeResources" :>
                 QueryParam "alt" AltJSON :>
                   ReqBody '[JSON] ZoneViewsRemoveResourcesRequest :>
                     Post '[JSON] Operation

-- | Remove resources from the view.
--
-- /See:/ 'zoneViewsRemoveResources'' smart constructor.
data ZoneViewsRemoveResources' = ZoneViewsRemoveResources'
    { _zvrrResourceView :: !Text
    , _zvrrProject      :: !Text
    , _zvrrZone         :: !Text
    , _zvrrPayload      :: !ZoneViewsRemoveResourcesRequest
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ZoneViewsRemoveResources'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'zvrrResourceView'
--
-- * 'zvrrProject'
--
-- * 'zvrrZone'
--
-- * 'zvrrPayload'
zoneViewsRemoveResources'
    :: Text -- ^ 'resourceView'
    -> Text -- ^ 'project'
    -> Text -- ^ 'zone'
    -> ZoneViewsRemoveResourcesRequest -- ^ 'payload'
    -> ZoneViewsRemoveResources'
zoneViewsRemoveResources' pZvrrResourceView_ pZvrrProject_ pZvrrZone_ pZvrrPayload_ =
    ZoneViewsRemoveResources'
    { _zvrrResourceView = pZvrrResourceView_
    , _zvrrProject = pZvrrProject_
    , _zvrrZone = pZvrrZone_
    , _zvrrPayload = pZvrrPayload_
    }

-- | The name of the resource view.
zvrrResourceView :: Lens' ZoneViewsRemoveResources' Text
zvrrResourceView
  = lens _zvrrResourceView
      (\ s a -> s{_zvrrResourceView = a})

-- | The project name of the resource view.
zvrrProject :: Lens' ZoneViewsRemoveResources' Text
zvrrProject
  = lens _zvrrProject (\ s a -> s{_zvrrProject = a})

-- | The zone name of the resource view.
zvrrZone :: Lens' ZoneViewsRemoveResources' Text
zvrrZone = lens _zvrrZone (\ s a -> s{_zvrrZone = a})

-- | Multipart request metadata.
zvrrPayload :: Lens' ZoneViewsRemoveResources' ZoneViewsRemoveResourcesRequest
zvrrPayload
  = lens _zvrrPayload (\ s a -> s{_zvrrPayload = a})

instance GoogleRequest ZoneViewsRemoveResources'
         where
        type Rs ZoneViewsRemoveResources' = Operation
        requestClient ZoneViewsRemoveResources'{..}
          = go _zvrrProject _zvrrZone _zvrrResourceView
              (Just AltJSON)
              _zvrrPayload
              resourceViewsService
          where go
                  = buildClient
                      (Proxy :: Proxy ZoneViewsRemoveResourcesResource)
                      mempty
