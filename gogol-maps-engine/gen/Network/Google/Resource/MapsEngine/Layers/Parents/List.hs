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
-- Module      : Network.Google.Resource.MapsEngine.Layers.Parents.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Return all parent ids of the specified layer.
--
-- /See:/ <https://developers.google.com/maps-engine/ Google Maps Engine API Reference> for @mapsengine.layers.parents.list@.
module Network.Google.Resource.MapsEngine.Layers.Parents.List
    (
    -- * REST Resource
      LayersParentsListResource

    -- * Creating a Request
    , layersParentsList
    , LayersParentsList

    -- * Request Lenses
    , lId
    , lPageToken
    , lMaxResults
    ) where

import           Network.Google.MapsEngine.Types
import           Network.Google.Prelude

-- | A resource alias for @mapsengine.layers.parents.list@ method which the
-- 'LayersParentsList' request conforms to.
type LayersParentsListResource =
     "mapsengine" :>
       "v1" :>
         "layers" :>
           Capture "id" Text :>
             "parents" :>
               QueryParam "pageToken" Text :>
                 QueryParam "maxResults" (JSONText Word32) :>
                   QueryParam "alt" AltJSON :>
                     Get '[JSON] ParentsListResponse

-- | Return all parent ids of the specified layer.
--
-- /See:/ 'layersParentsList' smart constructor.
data LayersParentsList = LayersParentsList
    { _lId         :: !Text
    , _lPageToken  :: !(Maybe Text)
    , _lMaxResults :: !(Maybe (JSONText Word32))
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'LayersParentsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lId'
--
-- * 'lPageToken'
--
-- * 'lMaxResults'
layersParentsList
    :: Text -- ^ 'lId'
    -> LayersParentsList
layersParentsList pLId_ =
    LayersParentsList
    { _lId = pLId_
    , _lPageToken = Nothing
    , _lMaxResults = Nothing
    }

-- | The ID of the layer whose parents will be listed.
lId :: Lens' LayersParentsList Text
lId = lens _lId (\ s a -> s{_lId = a})

-- | The continuation token, used to page through large result sets. To get
-- the next page of results, set this parameter to the value of
-- nextPageToken from the previous response.
lPageToken :: Lens' LayersParentsList (Maybe Text)
lPageToken
  = lens _lPageToken (\ s a -> s{_lPageToken = a})

-- | The maximum number of items to include in a single response page. The
-- maximum supported value is 50.
lMaxResults :: Lens' LayersParentsList (Maybe Word32)
lMaxResults
  = lens _lMaxResults (\ s a -> s{_lMaxResults = a}) .
      mapping _Coerce

instance GoogleRequest LayersParentsList where
        type Rs LayersParentsList = ParentsListResponse
        requestClient LayersParentsList{..}
          = go _lId _lPageToken _lMaxResults (Just AltJSON)
              mapsEngineService
          where go
                  = buildClient
                      (Proxy :: Proxy LayersParentsListResource)
                      mempty
