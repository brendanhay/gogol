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
-- Module      : Network.Google.Resource.MapsEngine.Maps.ListPublished
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Return all published maps readable by the current user.
--
-- /See:/ <https://developers.google.com/maps-engine/ Google Maps Engine API Reference> for @mapsengine.maps.listPublished@.
module Network.Google.Resource.MapsEngine.Maps.ListPublished
    (
    -- * REST Resource
      MapsListPublishedResource

    -- * Creating a Request
    , mapsListPublished
    , MapsListPublished

    -- * Request Lenses
    , mlpPageToken
    , mlpProjectId
    , mlpMaxResults
    ) where

import           Network.Google.MapsEngine.Types
import           Network.Google.Prelude

-- | A resource alias for @mapsengine.maps.listPublished@ method which the
-- 'MapsListPublished' request conforms to.
type MapsListPublishedResource =
     "mapsengine" :>
       "v1" :>
         "maps" :>
           "published" :>
             QueryParam "pageToken" Text :>
               QueryParam "projectId" Text :>
                 QueryParam "maxResults" (Textual Word32) :>
                   QueryParam "alt" AltJSON :>
                     Get '[JSON] PublishedMapsListResponse

-- | Return all published maps readable by the current user.
--
-- /See:/ 'mapsListPublished' smart constructor.
data MapsListPublished = MapsListPublished
    { _mlpPageToken  :: !(Maybe Text)
    , _mlpProjectId  :: !(Maybe Text)
    , _mlpMaxResults :: !(Maybe (Textual Word32))
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'MapsListPublished' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mlpPageToken'
--
-- * 'mlpProjectId'
--
-- * 'mlpMaxResults'
mapsListPublished
    :: MapsListPublished
mapsListPublished =
    MapsListPublished
    { _mlpPageToken = Nothing
    , _mlpProjectId = Nothing
    , _mlpMaxResults = Nothing
    }

-- | The continuation token, used to page through large result sets. To get
-- the next page of results, set this parameter to the value of
-- nextPageToken from the previous response.
mlpPageToken :: Lens' MapsListPublished (Maybe Text)
mlpPageToken
  = lens _mlpPageToken (\ s a -> s{_mlpPageToken = a})

-- | The ID of a Maps Engine project, used to filter the response. To list
-- all available projects with their IDs, send a Projects: list request.
-- You can also find your project ID as the value of the DashboardPlace:cid
-- URL parameter when signed in to mapsengine.google.com.
mlpProjectId :: Lens' MapsListPublished (Maybe Text)
mlpProjectId
  = lens _mlpProjectId (\ s a -> s{_mlpProjectId = a})

-- | The maximum number of items to include in a single response page. The
-- maximum supported value is 100.
mlpMaxResults :: Lens' MapsListPublished (Maybe Word32)
mlpMaxResults
  = lens _mlpMaxResults
      (\ s a -> s{_mlpMaxResults = a})
      . mapping _Coerce

instance GoogleRequest MapsListPublished where
        type Rs MapsListPublished = PublishedMapsListResponse
        type Scopes MapsListPublished =
             '["https://www.googleapis.com/auth/mapsengine",
               "https://www.googleapis.com/auth/mapsengine.readonly"]
        requestClient MapsListPublished{..}
          = go _mlpPageToken _mlpProjectId _mlpMaxResults
              (Just AltJSON)
              mapsEngineService
          where go
                  = buildClient
                      (Proxy :: Proxy MapsListPublishedResource)
                      mempty
