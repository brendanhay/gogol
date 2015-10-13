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
-- Module      : Network.Google.Resource.Books.MyLibrary.Annotations.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieves a list of annotations, possibly filtered.
--
-- /See:/ <https://developers.google.com/books/docs/v1/getting_started Books API Reference> for @BooksMyLibraryAnnotationsList@.
module Network.Google.Resource.Books.MyLibrary.Annotations.List
    (
    -- * REST Resource
      MyLibraryAnnotationsListResource

    -- * Creating a Request
    , myLibraryAnnotationsList'
    , MyLibraryAnnotationsList'

    -- * Request Lenses
    , mlalContentVersion
    , mlalShowDeleted
    , mlalUpdatedMax
    , mlalUpdatedMin
    , mlalLayerIds
    , mlalVolumeId
    , mlalSource
    , mlalPageToken
    , mlalLayerId
    , mlalMaxResults
    ) where

import           Network.Google.Books.Types
import           Network.Google.Prelude

-- | A resource alias for @BooksMyLibraryAnnotationsList@ method which the
-- 'MyLibraryAnnotationsList'' request conforms to.
type MyLibraryAnnotationsListResource =
     "mylibrary" :>
       "annotations" :>
         QueryParam "contentVersion" Text :>
           QueryParam "showDeleted" Bool :>
             QueryParam "updatedMax" Text :>
               QueryParam "updatedMin" Text :>
                 QueryParams "layerIds" Text :>
                   QueryParam "volumeId" Text :>
                     QueryParam "source" Text :>
                       QueryParam "pageToken" Text :>
                         QueryParam "layerId" Text :>
                           QueryParam "maxResults" Word32 :>
                             QueryParam "alt" AltJSON :> Get '[JSON] Annotations

-- | Retrieves a list of annotations, possibly filtered.
--
-- /See:/ 'myLibraryAnnotationsList'' smart constructor.
data MyLibraryAnnotationsList' = MyLibraryAnnotationsList'
    { _mlalContentVersion :: !(Maybe Text)
    , _mlalShowDeleted    :: !(Maybe Bool)
    , _mlalUpdatedMax     :: !(Maybe Text)
    , _mlalUpdatedMin     :: !(Maybe Text)
    , _mlalLayerIds       :: !(Maybe [Text])
    , _mlalVolumeId       :: !(Maybe Text)
    , _mlalSource         :: !(Maybe Text)
    , _mlalPageToken      :: !(Maybe Text)
    , _mlalLayerId        :: !(Maybe Text)
    , _mlalMaxResults     :: !(Maybe Word32)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'MyLibraryAnnotationsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mlalContentVersion'
--
-- * 'mlalShowDeleted'
--
-- * 'mlalUpdatedMax'
--
-- * 'mlalUpdatedMin'
--
-- * 'mlalLayerIds'
--
-- * 'mlalVolumeId'
--
-- * 'mlalSource'
--
-- * 'mlalPageToken'
--
-- * 'mlalLayerId'
--
-- * 'mlalMaxResults'
myLibraryAnnotationsList'
    :: MyLibraryAnnotationsList'
myLibraryAnnotationsList' =
    MyLibraryAnnotationsList'
    { _mlalContentVersion = Nothing
    , _mlalShowDeleted = Nothing
    , _mlalUpdatedMax = Nothing
    , _mlalUpdatedMin = Nothing
    , _mlalLayerIds = Nothing
    , _mlalVolumeId = Nothing
    , _mlalSource = Nothing
    , _mlalPageToken = Nothing
    , _mlalLayerId = Nothing
    , _mlalMaxResults = Nothing
    }

-- | The content version for the requested volume.
mlalContentVersion :: Lens' MyLibraryAnnotationsList' (Maybe Text)
mlalContentVersion
  = lens _mlalContentVersion
      (\ s a -> s{_mlalContentVersion = a})

-- | Set to true to return deleted annotations. updatedMin must be in the
-- request to use this. Defaults to false.
mlalShowDeleted :: Lens' MyLibraryAnnotationsList' (Maybe Bool)
mlalShowDeleted
  = lens _mlalShowDeleted
      (\ s a -> s{_mlalShowDeleted = a})

-- | RFC 3339 timestamp to restrict to items updated prior to this timestamp
-- (exclusive).
mlalUpdatedMax :: Lens' MyLibraryAnnotationsList' (Maybe Text)
mlalUpdatedMax
  = lens _mlalUpdatedMax
      (\ s a -> s{_mlalUpdatedMax = a})

-- | RFC 3339 timestamp to restrict to items updated since this timestamp
-- (inclusive).
mlalUpdatedMin :: Lens' MyLibraryAnnotationsList' (Maybe Text)
mlalUpdatedMin
  = lens _mlalUpdatedMin
      (\ s a -> s{_mlalUpdatedMin = a})

-- | The layer ID(s) to limit annotation by.
mlalLayerIds :: Lens' MyLibraryAnnotationsList' [Text]
mlalLayerIds
  = lens _mlalLayerIds (\ s a -> s{_mlalLayerIds = a})
      . _Default
      . _Coerce

-- | The volume to restrict annotations to.
mlalVolumeId :: Lens' MyLibraryAnnotationsList' (Maybe Text)
mlalVolumeId
  = lens _mlalVolumeId (\ s a -> s{_mlalVolumeId = a})

-- | String to identify the originator of this request.
mlalSource :: Lens' MyLibraryAnnotationsList' (Maybe Text)
mlalSource
  = lens _mlalSource (\ s a -> s{_mlalSource = a})

-- | The value of the nextToken from the previous page.
mlalPageToken :: Lens' MyLibraryAnnotationsList' (Maybe Text)
mlalPageToken
  = lens _mlalPageToken
      (\ s a -> s{_mlalPageToken = a})

-- | The layer ID to limit annotation by.
mlalLayerId :: Lens' MyLibraryAnnotationsList' (Maybe Text)
mlalLayerId
  = lens _mlalLayerId (\ s a -> s{_mlalLayerId = a})

-- | Maximum number of results to return
mlalMaxResults :: Lens' MyLibraryAnnotationsList' (Maybe Word32)
mlalMaxResults
  = lens _mlalMaxResults
      (\ s a -> s{_mlalMaxResults = a})

instance GoogleRequest MyLibraryAnnotationsList'
         where
        type Rs MyLibraryAnnotationsList' = Annotations
        requestClient MyLibraryAnnotationsList'{..}
          = go _mlalContentVersion _mlalShowDeleted
              _mlalUpdatedMax
              _mlalUpdatedMin
              (_mlalLayerIds ^. _Default)
              _mlalVolumeId
              _mlalSource
              _mlalPageToken
              _mlalLayerId
              _mlalMaxResults
              (Just AltJSON)
              booksService
          where go
                  = buildClient
                      (Proxy :: Proxy MyLibraryAnnotationsListResource)
                      mempty
