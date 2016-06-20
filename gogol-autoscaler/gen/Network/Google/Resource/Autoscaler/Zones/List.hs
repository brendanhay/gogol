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
-- Module      : Network.Google.Resource.Autoscaler.Zones.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- -- |
--
-- /See:/ <http://developers.google.com/compute/docs/autoscaler Google Compute Engine Autoscaler API Reference> for @autoscaler.zones.list@.
module Network.Google.Resource.Autoscaler.Zones.List
    (
    -- * REST Resource
      ZonesListResource

    -- * Creating a Request
    , zonesList
    , ZonesList

    -- * Request Lenses
    , zlProject
    , zlFilter
    , zlPageToken
    , zlMaxResults
    ) where

import           Network.Google.Autoscaler.Types
import           Network.Google.Prelude

-- | A resource alias for @autoscaler.zones.list@ method which the
-- 'ZonesList' request conforms to.
type ZonesListResource =
     "autoscaler" :>
       "v1beta2" :>
         "zones" :>
           QueryParam "project" Text :>
             QueryParam "filter" Text :>
               QueryParam "pageToken" Text :>
                 QueryParam "maxResults" (Textual Word32) :>
                   QueryParam "alt" AltJSON :> Get '[JSON] ZoneList

-- |
--
-- /See:/ 'zonesList' smart constructor.
data ZonesList = ZonesList'
    { _zlProject    :: !(Maybe Text)
    , _zlFilter     :: !(Maybe Text)
    , _zlPageToken  :: !(Maybe Text)
    , _zlMaxResults :: !(Textual Word32)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ZonesList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'zlProject'
--
-- * 'zlFilter'
--
-- * 'zlPageToken'
--
-- * 'zlMaxResults'
zonesList
    :: ZonesList
zonesList =
    ZonesList'
    { _zlProject = Nothing
    , _zlFilter = Nothing
    , _zlPageToken = Nothing
    , _zlMaxResults = 500
    }

zlProject :: Lens' ZonesList (Maybe Text)
zlProject
  = lens _zlProject (\ s a -> s{_zlProject = a})

zlFilter :: Lens' ZonesList (Maybe Text)
zlFilter = lens _zlFilter (\ s a -> s{_zlFilter = a})

zlPageToken :: Lens' ZonesList (Maybe Text)
zlPageToken
  = lens _zlPageToken (\ s a -> s{_zlPageToken = a})

zlMaxResults :: Lens' ZonesList Word32
zlMaxResults
  = lens _zlMaxResults (\ s a -> s{_zlMaxResults = a})
      . _Coerce

instance GoogleRequest ZonesList where
        type Rs ZonesList = ZoneList
        type Scopes ZonesList =
             '["https://www.googleapis.com/auth/compute",
               "https://www.googleapis.com/auth/compute.readonly"]
        requestClient ZonesList'{..}
          = go _zlProject _zlFilter _zlPageToken
              (Just _zlMaxResults)
              (Just AltJSON)
              autoscalerService
          where go
                  = buildClient (Proxy :: Proxy ZonesListResource)
                      mempty
