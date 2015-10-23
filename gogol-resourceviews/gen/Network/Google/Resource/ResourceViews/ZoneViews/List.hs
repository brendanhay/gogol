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
-- Module      : Network.Google.Resource.ResourceViews.ZoneViews.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- List resource views.
--
-- /See:/ <https://developers.google.com/compute/ Google Compute Engine Instance Groups API Reference> for @resourceviews.zoneViews.list@.
module Network.Google.Resource.ResourceViews.ZoneViews.List
    (
    -- * REST Resource
      ZoneViewsListResource

    -- * Creating a Request
    , zoneViewsList'
    , ZoneViewsList'

    -- * Request Lenses
    , zvlProject
    , zvlZone
    , zvlPageToken
    , zvlMaxResults
    ) where

import           Network.Google.Prelude
import           Network.Google.ResourceViews.Types

-- | A resource alias for @resourceviews.zoneViews.list@ method which the
-- 'ZoneViewsList'' request conforms to.
type ZoneViewsListResource =
     "resourceviews" :>
       "v1beta2" :>
         "projects" :>
           Capture "project" Text :>
             "zones" :>
               Capture "zone" Text :>
                 "resourceViews" :>
                   QueryParam "pageToken" Text :>
                     QueryParam "maxResults" (JSONText Int32) :>
                       QueryParam "alt" AltJSON :> Get '[JSON] ZoneViewsList

-- | List resource views.
--
-- /See:/ 'zoneViewsList'' smart constructor.
data ZoneViewsList' = ZoneViewsList'
    { _zvlProject    :: !Text
    , _zvlZone       :: !Text
    , _zvlPageToken  :: !(Maybe Text)
    , _zvlMaxResults :: !(JSONText Int32)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ZoneViewsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'zvlProject'
--
-- * 'zvlZone'
--
-- * 'zvlPageToken'
--
-- * 'zvlMaxResults'
zoneViewsList'
    :: Text -- ^ 'zvlProject'
    -> Text -- ^ 'zvlZone'
    -> ZoneViewsList'
zoneViewsList' pZvlProject_ pZvlZone_ =
    ZoneViewsList'
    { _zvlProject = pZvlProject_
    , _zvlZone = pZvlZone_
    , _zvlPageToken = Nothing
    , _zvlMaxResults = 5000
    }

-- | The project name of the resource view.
zvlProject :: Lens' ZoneViewsList' Text
zvlProject
  = lens _zvlProject (\ s a -> s{_zvlProject = a})

-- | The zone name of the resource view.
zvlZone :: Lens' ZoneViewsList' Text
zvlZone = lens _zvlZone (\ s a -> s{_zvlZone = a})

-- | Specifies a nextPageToken returned by a previous list request. This
-- token can be used to request the next page of results from a previous
-- list request.
zvlPageToken :: Lens' ZoneViewsList' (Maybe Text)
zvlPageToken
  = lens _zvlPageToken (\ s a -> s{_zvlPageToken = a})

-- | Maximum count of results to be returned. Acceptable values are 0 to
-- 5000, inclusive. (Default: 5000)
zvlMaxResults :: Lens' ZoneViewsList' Int32
zvlMaxResults
  = lens _zvlMaxResults
      (\ s a -> s{_zvlMaxResults = a})
      . _Coerce

instance GoogleRequest ZoneViewsList' where
        type Rs ZoneViewsList' = ZoneViewsList
        requestClient ZoneViewsList'{..}
          = go _zvlProject _zvlZone _zvlPageToken
              (Just _zvlMaxResults)
              (Just AltJSON)
              resourceViewsService
          where go
                  = buildClient (Proxy :: Proxy ZoneViewsListResource)
                      mempty
