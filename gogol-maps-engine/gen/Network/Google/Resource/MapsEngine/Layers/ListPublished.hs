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
-- Module      : Network.Google.Resource.MapsEngine.Layers.ListPublished
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Return all published layers readable by the current user.
--
-- /See:/ <https://developers.google.com/maps-engine/ Google Maps Engine API Reference> for @MapsEngineLayersListPublished@.
module Network.Google.Resource.MapsEngine.Layers.ListPublished
    (
    -- * REST Resource
      LayersListPublishedResource

    -- * Creating a Request
    , layersListPublished'
    , LayersListPublished'

    -- * Request Lenses
    , llpPageToken
    , llpProjectId
    , llpMaxResults
    ) where

import           Network.Google.MapsEngine.Types
import           Network.Google.Prelude

-- | A resource alias for @MapsEngineLayersListPublished@ method which the
-- 'LayersListPublished'' request conforms to.
type LayersListPublishedResource =
     "layers" :>
       "published" :>
         QueryParam "pageToken" Text :>
           QueryParam "projectId" Text :>
             QueryParam "maxResults" Word32 :>
               QueryParam "alt" AltJSON :>
                 Get '[JSON] PublishedLayersListResponse

-- | Return all published layers readable by the current user.
--
-- /See:/ 'layersListPublished'' smart constructor.
data LayersListPublished' = LayersListPublished'
    { _llpPageToken  :: !(Maybe Text)
    , _llpProjectId  :: !(Maybe Text)
    , _llpMaxResults :: !(Maybe Word32)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'LayersListPublished'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'llpPageToken'
--
-- * 'llpProjectId'
--
-- * 'llpMaxResults'
layersListPublished'
    :: LayersListPublished'
layersListPublished' =
    LayersListPublished'
    { _llpPageToken = Nothing
    , _llpProjectId = Nothing
    , _llpMaxResults = Nothing
    }

-- | The continuation token, used to page through large result sets. To get
-- the next page of results, set this parameter to the value of
-- nextPageToken from the previous response.
llpPageToken :: Lens' LayersListPublished' (Maybe Text)
llpPageToken
  = lens _llpPageToken (\ s a -> s{_llpPageToken = a})

-- | The ID of a Maps Engine project, used to filter the response. To list
-- all available projects with their IDs, send a Projects: list request.
-- You can also find your project ID as the value of the DashboardPlace:cid
-- URL parameter when signed in to mapsengine.google.com.
llpProjectId :: Lens' LayersListPublished' (Maybe Text)
llpProjectId
  = lens _llpProjectId (\ s a -> s{_llpProjectId = a})

-- | The maximum number of items to include in a single response page. The
-- maximum supported value is 100.
llpMaxResults :: Lens' LayersListPublished' (Maybe Word32)
llpMaxResults
  = lens _llpMaxResults
      (\ s a -> s{_llpMaxResults = a})

instance GoogleRequest LayersListPublished' where
        type Rs LayersListPublished' =
             PublishedLayersListResponse
        requestClient LayersListPublished'{..}
          = go _llpPageToken _llpProjectId _llpMaxResults
              (Just AltJSON)
              mapsEngineService
          where go
                  = buildClient
                      (Proxy :: Proxy LayersListPublishedResource)
                      mempty
