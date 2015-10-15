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
-- | Return all parent ids of the specified layer.
--
-- /See:/ <https://developers.google.com/maps-engine/ Google Maps Engine API Reference> for @MapsEngineLayersParentsList@.
module Network.Google.Resource.MapsEngine.Layers.Parents.List
    (
    -- * REST Resource
      LayersParentsListResource

    -- * Creating a Request
    , layersParentsList'
    , LayersParentsList'

    -- * Request Lenses
    , lplpId
    , lplpPageToken
    , lplpMaxResults
    ) where

import           Network.Google.MapsEngine.Types
import           Network.Google.Prelude

-- | A resource alias for @MapsEngineLayersParentsList@ method which the
-- 'LayersParentsList'' request conforms to.
type LayersParentsListResource =
     "layers" :>
       Capture "id" Text :>
         "parents" :>
           QueryParam "pageToken" Text :>
             QueryParam "maxResults" Word32 :>
               QueryParam "alt" AltJSON :>
                 Get '[JSON] ParentsListResponse

-- | Return all parent ids of the specified layer.
--
-- /See:/ 'layersParentsList'' smart constructor.
data LayersParentsList' = LayersParentsList'
    { _lplpId         :: !Text
    , _lplpPageToken  :: !(Maybe Text)
    , _lplpMaxResults :: !(Maybe Word32)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'LayersParentsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lplpId'
--
-- * 'lplpPageToken'
--
-- * 'lplpMaxResults'
layersParentsList'
    :: Text -- ^ 'id'
    -> LayersParentsList'
layersParentsList' pLplpId_ =
    LayersParentsList'
    { _lplpId = pLplpId_
    , _lplpPageToken = Nothing
    , _lplpMaxResults = Nothing
    }

-- | The ID of the layer whose parents will be listed.
lplpId :: Lens' LayersParentsList' Text
lplpId = lens _lplpId (\ s a -> s{_lplpId = a})

-- | The continuation token, used to page through large result sets. To get
-- the next page of results, set this parameter to the value of
-- nextPageToken from the previous response.
lplpPageToken :: Lens' LayersParentsList' (Maybe Text)
lplpPageToken
  = lens _lplpPageToken
      (\ s a -> s{_lplpPageToken = a})

-- | The maximum number of items to include in a single response page. The
-- maximum supported value is 50.
lplpMaxResults :: Lens' LayersParentsList' (Maybe Word32)
lplpMaxResults
  = lens _lplpMaxResults
      (\ s a -> s{_lplpMaxResults = a})

instance GoogleRequest LayersParentsList' where
        type Rs LayersParentsList' = ParentsListResponse
        requestClient LayersParentsList'{..}
          = go _lplpId _lplpPageToken _lplpMaxResults
              (Just AltJSON)
              mapsEngine
          where go
                  = buildClient
                      (Proxy :: Proxy LayersParentsListResource)
                      mempty
