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
-- Module      : Network.Google.Resource.ResourceViews.ZoneViews.SetService
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Update the service information of a resource view or a resource.
--
-- /See:/ <https://developers.google.com/compute/ Google Compute Engine Instance Groups API Reference> for @resourceviews.zoneViews.setService@.
module Network.Google.Resource.ResourceViews.ZoneViews.SetService
    (
    -- * REST Resource
      ZoneViewsSetServiceResource

    -- * Creating a Request
    , zoneViewsSetService'
    , ZoneViewsSetService'

    -- * Request Lenses
    , zvssResourceView
    , zvssProject
    , zvssZone
    , zvssPayload
    ) where

import           Network.Google.Prelude
import           Network.Google.ResourceViews.Types

-- | A resource alias for @resourceviews.zoneViews.setService@ method which the
-- 'ZoneViewsSetService'' request conforms to.
type ZoneViewsSetServiceResource =
     Capture "project" Text :>
       "zones" :>
         Capture "zone" Text :>
           "resourceViews" :>
             Capture "resourceView" Text :>
               "setService" :>
                 QueryParam "alt" AltJSON :>
                   ReqBody '[JSON] ZoneViewsSetServiceRequest :>
                     Post '[JSON] Operation

-- | Update the service information of a resource view or a resource.
--
-- /See:/ 'zoneViewsSetService'' smart constructor.
data ZoneViewsSetService' = ZoneViewsSetService'
    { _zvssResourceView :: !Text
    , _zvssProject      :: !Text
    , _zvssZone         :: !Text
    , _zvssPayload      :: !ZoneViewsSetServiceRequest
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ZoneViewsSetService'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'zvssResourceView'
--
-- * 'zvssProject'
--
-- * 'zvssZone'
--
-- * 'zvssPayload'
zoneViewsSetService'
    :: Text -- ^ 'zvssResourceView'
    -> Text -- ^ 'zvssProject'
    -> Text -- ^ 'zvssZone'
    -> ZoneViewsSetServiceRequest -- ^ 'zvssPayload'
    -> ZoneViewsSetService'
zoneViewsSetService' pZvssResourceView_ pZvssProject_ pZvssZone_ pZvssPayload_ =
    ZoneViewsSetService'
    { _zvssResourceView = pZvssResourceView_
    , _zvssProject = pZvssProject_
    , _zvssZone = pZvssZone_
    , _zvssPayload = pZvssPayload_
    }

-- | The name of the resource view.
zvssResourceView :: Lens' ZoneViewsSetService' Text
zvssResourceView
  = lens _zvssResourceView
      (\ s a -> s{_zvssResourceView = a})

-- | The project name of the resource view.
zvssProject :: Lens' ZoneViewsSetService' Text
zvssProject
  = lens _zvssProject (\ s a -> s{_zvssProject = a})

-- | The zone name of the resource view.
zvssZone :: Lens' ZoneViewsSetService' Text
zvssZone = lens _zvssZone (\ s a -> s{_zvssZone = a})

-- | Multipart request metadata.
zvssPayload :: Lens' ZoneViewsSetService' ZoneViewsSetServiceRequest
zvssPayload
  = lens _zvssPayload (\ s a -> s{_zvssPayload = a})

instance GoogleRequest ZoneViewsSetService' where
        type Rs ZoneViewsSetService' = Operation
        requestClient ZoneViewsSetService'{..}
          = go _zvssProject _zvssZone _zvssResourceView
              (Just AltJSON)
              _zvssPayload
              resourceViewsService
          where go
                  = buildClient
                      (Proxy :: Proxy ZoneViewsSetServiceResource)
                      mempty
