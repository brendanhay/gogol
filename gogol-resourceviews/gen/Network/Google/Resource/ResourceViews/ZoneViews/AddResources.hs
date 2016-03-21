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
-- Module      : Network.Google.Resource.ResourceViews.ZoneViews.AddResources
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Add resources to the view.
--
-- /See:/ <https://developers.google.com/compute/ Google Compute Engine Instance Groups API Reference> for @resourceviews.zoneViews.addResources@.
module Network.Google.Resource.ResourceViews.ZoneViews.AddResources
    (
    -- * REST Resource
      ZoneViewsAddResourcesResource

    -- * Creating a Request
    , zoneViewsAddResources
    , ZoneViewsAddResources

    -- * Request Lenses
    , zvarResourceView
    , zvarProject
    , zvarZone
    , zvarPayload
    ) where

import           Network.Google.Prelude
import           Network.Google.ResourceViews.Types

-- | A resource alias for @resourceviews.zoneViews.addResources@ method which the
-- 'ZoneViewsAddResources' request conforms to.
type ZoneViewsAddResourcesResource =
     "resourceviews" :>
       "v1beta2" :>
         "projects" :>
           Capture "project" Text :>
             "zones" :>
               Capture "zone" Text :>
                 "resourceViews" :>
                   Capture "resourceView" Text :>
                     "addResources" :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] ZoneViewsAddResourcesRequest :>
                           Post '[JSON] Operation

-- | Add resources to the view.
--
-- /See:/ 'zoneViewsAddResources' smart constructor.
data ZoneViewsAddResources = ZoneViewsAddResources'
    { _zvarResourceView :: !Text
    , _zvarProject      :: !Text
    , _zvarZone         :: !Text
    , _zvarPayload      :: !ZoneViewsAddResourcesRequest
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ZoneViewsAddResources' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'zvarResourceView'
--
-- * 'zvarProject'
--
-- * 'zvarZone'
--
-- * 'zvarPayload'
zoneViewsAddResources
    :: Text -- ^ 'zvarResourceView'
    -> Text -- ^ 'zvarProject'
    -> Text -- ^ 'zvarZone'
    -> ZoneViewsAddResourcesRequest -- ^ 'zvarPayload'
    -> ZoneViewsAddResources
zoneViewsAddResources pZvarResourceView_ pZvarProject_ pZvarZone_ pZvarPayload_ =
    ZoneViewsAddResources'
    { _zvarResourceView = pZvarResourceView_
    , _zvarProject = pZvarProject_
    , _zvarZone = pZvarZone_
    , _zvarPayload = pZvarPayload_
    }

-- | The name of the resource view.
zvarResourceView :: Lens' ZoneViewsAddResources Text
zvarResourceView
  = lens _zvarResourceView
      (\ s a -> s{_zvarResourceView = a})

-- | The project name of the resource view.
zvarProject :: Lens' ZoneViewsAddResources Text
zvarProject
  = lens _zvarProject (\ s a -> s{_zvarProject = a})

-- | The zone name of the resource view.
zvarZone :: Lens' ZoneViewsAddResources Text
zvarZone = lens _zvarZone (\ s a -> s{_zvarZone = a})

-- | Multipart request metadata.
zvarPayload :: Lens' ZoneViewsAddResources ZoneViewsAddResourcesRequest
zvarPayload
  = lens _zvarPayload (\ s a -> s{_zvarPayload = a})

instance GoogleRequest ZoneViewsAddResources where
        type Rs ZoneViewsAddResources = Operation
        type Scopes ZoneViewsAddResources =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute",
               "https://www.googleapis.com/auth/ndev.cloudman"]
        requestClient ZoneViewsAddResources'{..}
          = go _zvarProject _zvarZone _zvarResourceView
              (Just AltJSON)
              _zvarPayload
              resourceViewsService
          where go
                  = buildClient
                      (Proxy :: Proxy ZoneViewsAddResourcesResource)
                      mempty
