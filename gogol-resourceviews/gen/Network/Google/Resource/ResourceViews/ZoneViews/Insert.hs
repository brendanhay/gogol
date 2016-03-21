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
-- Module      : Network.Google.Resource.ResourceViews.ZoneViews.Insert
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Create a resource view.
--
-- /See:/ <https://developers.google.com/compute/ Google Compute Engine Instance Groups API Reference> for @resourceviews.zoneViews.insert@.
module Network.Google.Resource.ResourceViews.ZoneViews.Insert
    (
    -- * REST Resource
      ZoneViewsInsertResource

    -- * Creating a Request
    , zoneViewsInsert
    , ZoneViewsInsert

    -- * Request Lenses
    , zviProject
    , zviZone
    , zviPayload
    ) where

import           Network.Google.Prelude
import           Network.Google.ResourceViews.Types

-- | A resource alias for @resourceviews.zoneViews.insert@ method which the
-- 'ZoneViewsInsert' request conforms to.
type ZoneViewsInsertResource =
     "resourceviews" :>
       "v1beta2" :>
         "projects" :>
           Capture "project" Text :>
             "zones" :>
               Capture "zone" Text :>
                 "resourceViews" :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] ResourceView :>
                       Post '[JSON] Operation

-- | Create a resource view.
--
-- /See:/ 'zoneViewsInsert' smart constructor.
data ZoneViewsInsert = ZoneViewsInsert'
    { _zviProject :: !Text
    , _zviZone    :: !Text
    , _zviPayload :: !ResourceView
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ZoneViewsInsert' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'zviProject'
--
-- * 'zviZone'
--
-- * 'zviPayload'
zoneViewsInsert
    :: Text -- ^ 'zviProject'
    -> Text -- ^ 'zviZone'
    -> ResourceView -- ^ 'zviPayload'
    -> ZoneViewsInsert
zoneViewsInsert pZviProject_ pZviZone_ pZviPayload_ =
    ZoneViewsInsert'
    { _zviProject = pZviProject_
    , _zviZone = pZviZone_
    , _zviPayload = pZviPayload_
    }

-- | The project name of the resource view.
zviProject :: Lens' ZoneViewsInsert Text
zviProject
  = lens _zviProject (\ s a -> s{_zviProject = a})

-- | The zone name of the resource view.
zviZone :: Lens' ZoneViewsInsert Text
zviZone = lens _zviZone (\ s a -> s{_zviZone = a})

-- | Multipart request metadata.
zviPayload :: Lens' ZoneViewsInsert ResourceView
zviPayload
  = lens _zviPayload (\ s a -> s{_zviPayload = a})

instance GoogleRequest ZoneViewsInsert where
        type Rs ZoneViewsInsert = Operation
        type Scopes ZoneViewsInsert =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute",
               "https://www.googleapis.com/auth/ndev.cloudman"]
        requestClient ZoneViewsInsert'{..}
          = go _zviProject _zviZone (Just AltJSON) _zviPayload
              resourceViewsService
          where go
                  = buildClient
                      (Proxy :: Proxy ZoneViewsInsertResource)
                      mempty
