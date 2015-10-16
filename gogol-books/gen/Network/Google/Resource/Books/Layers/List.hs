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
-- Module      : Network.Google.Resource.Books.Layers.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | List the layer summaries for a volume.
--
-- /See:/ <https://developers.google.com/books/docs/v1/getting_started Books API Reference> for @BooksLayersList@.
module Network.Google.Resource.Books.Layers.List
    (
    -- * REST Resource
      LayersListResource

    -- * Creating a Request
    , layersList'
    , LayersList'

    -- * Request Lenses
    , llContentVersion
    , llVolumeId
    , llSource
    , llPageToken
    , llMaxResults
    ) where

import           Network.Google.Books.Types
import           Network.Google.Prelude

-- | A resource alias for @BooksLayersList@ method which the
-- 'LayersList'' request conforms to.
type LayersListResource =
     "volumes" :>
       Capture "volumeId" Text :>
         "layersummary" :>
           QueryParam "contentVersion" Text :>
             QueryParam "source" Text :>
               QueryParam "pageToken" Text :>
                 QueryParam "maxResults" Word32 :>
                   QueryParam "alt" AltJSON :>
                     Get '[JSON] Layersummaries

-- | List the layer summaries for a volume.
--
-- /See:/ 'layersList'' smart constructor.
data LayersList' = LayersList'
    { _llContentVersion :: !(Maybe Text)
    , _llVolumeId       :: !Text
    , _llSource         :: !(Maybe Text)
    , _llPageToken      :: !(Maybe Text)
    , _llMaxResults     :: !(Maybe Word32)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'LayersList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'llContentVersion'
--
-- * 'llVolumeId'
--
-- * 'llSource'
--
-- * 'llPageToken'
--
-- * 'llMaxResults'
layersList'
    :: Text -- ^ 'volumeId'
    -> LayersList'
layersList' pLlVolumeId_ =
    LayersList'
    { _llContentVersion = Nothing
    , _llVolumeId = pLlVolumeId_
    , _llSource = Nothing
    , _llPageToken = Nothing
    , _llMaxResults = Nothing
    }

-- | The content version for the requested volume.
llContentVersion :: Lens' LayersList' (Maybe Text)
llContentVersion
  = lens _llContentVersion
      (\ s a -> s{_llContentVersion = a})

-- | The volume to retrieve layers for.
llVolumeId :: Lens' LayersList' Text
llVolumeId
  = lens _llVolumeId (\ s a -> s{_llVolumeId = a})

-- | String to identify the originator of this request.
llSource :: Lens' LayersList' (Maybe Text)
llSource = lens _llSource (\ s a -> s{_llSource = a})

-- | The value of the nextToken from the previous page.
llPageToken :: Lens' LayersList' (Maybe Text)
llPageToken
  = lens _llPageToken (\ s a -> s{_llPageToken = a})

-- | Maximum number of results to return
llMaxResults :: Lens' LayersList' (Maybe Word32)
llMaxResults
  = lens _llMaxResults (\ s a -> s{_llMaxResults = a})

instance GoogleRequest LayersList' where
        type Rs LayersList' = Layersummaries
        requestClient LayersList'{..}
          = go _llVolumeId _llContentVersion _llSource
              _llPageToken
              _llMaxResults
              (Just AltJSON)
              booksService
          where go
                  = buildClient (Proxy :: Proxy LayersListResource)
                      mempty
