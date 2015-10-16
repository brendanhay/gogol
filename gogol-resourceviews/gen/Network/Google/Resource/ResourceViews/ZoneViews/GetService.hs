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
-- Module      : Network.Google.Resource.ResourceViews.ZoneViews.GetService
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Get the service information of a resource view or a resource.
--
-- /See:/ <https://developers.google.com/compute/ Google Compute Engine Instance Groups API Reference> for @ResourceviewsZoneViewsGetService@.
module Network.Google.Resource.ResourceViews.ZoneViews.GetService
    (
    -- * REST Resource
      ZoneViewsGetServiceResource

    -- * Creating a Request
    , zoneViewsGetService'
    , ZoneViewsGetService'

    -- * Request Lenses
    , zvgsResourceView
    , zvgsResourceName
    , zvgsProject
    , zvgsZone
    ) where

import           Network.Google.Prelude
import           Network.Google.ResourceViews.Types

-- | A resource alias for @ResourceviewsZoneViewsGetService@ method which the
-- 'ZoneViewsGetService'' request conforms to.
type ZoneViewsGetServiceResource =
     Capture "project" Text :>
       "zones" :>
         Capture "zone" Text :>
           "resourceViews" :>
             Capture "resourceView" Text :>
               "getService" :>
                 QueryParam "resourceName" Text :>
                   QueryParam "alt" AltJSON :>
                     Post '[JSON] ZoneViewsGetServiceResponse

-- | Get the service information of a resource view or a resource.
--
-- /See:/ 'zoneViewsGetService'' smart constructor.
data ZoneViewsGetService' = ZoneViewsGetService'
    { _zvgsResourceView :: !Text
    , _zvgsResourceName :: !(Maybe Text)
    , _zvgsProject      :: !Text
    , _zvgsZone         :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ZoneViewsGetService'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'zvgsResourceView'
--
-- * 'zvgsResourceName'
--
-- * 'zvgsProject'
--
-- * 'zvgsZone'
zoneViewsGetService'
    :: Text -- ^ 'resourceView'
    -> Text -- ^ 'project'
    -> Text -- ^ 'zone'
    -> ZoneViewsGetService'
zoneViewsGetService' pZvgsResourceView_ pZvgsProject_ pZvgsZone_ =
    ZoneViewsGetService'
    { _zvgsResourceView = pZvgsResourceView_
    , _zvgsResourceName = Nothing
    , _zvgsProject = pZvgsProject_
    , _zvgsZone = pZvgsZone_
    }

-- | The name of the resource view.
zvgsResourceView :: Lens' ZoneViewsGetService' Text
zvgsResourceView
  = lens _zvgsResourceView
      (\ s a -> s{_zvgsResourceView = a})

-- | The name of the resource if user wants to get the service information of
-- the resource.
zvgsResourceName :: Lens' ZoneViewsGetService' (Maybe Text)
zvgsResourceName
  = lens _zvgsResourceName
      (\ s a -> s{_zvgsResourceName = a})

-- | The project name of the resource view.
zvgsProject :: Lens' ZoneViewsGetService' Text
zvgsProject
  = lens _zvgsProject (\ s a -> s{_zvgsProject = a})

-- | The zone name of the resource view.
zvgsZone :: Lens' ZoneViewsGetService' Text
zvgsZone = lens _zvgsZone (\ s a -> s{_zvgsZone = a})

instance GoogleRequest ZoneViewsGetService' where
        type Rs ZoneViewsGetService' =
             ZoneViewsGetServiceResponse
        requestClient ZoneViewsGetService'{..}
          = go _zvgsProject _zvgsZone _zvgsResourceView
              _zvgsResourceName
              (Just AltJSON)
              resourceViewsService
          where go
                  = buildClient
                      (Proxy :: Proxy ZoneViewsGetServiceResource)
                      mempty
