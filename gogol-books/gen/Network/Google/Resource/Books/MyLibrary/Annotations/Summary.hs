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
-- Module      : Network.Google.Resource.Books.MyLibrary.Annotations.Summary
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Gets the summary of specified layers.
--
-- /See:/ <https://developers.google.com/books/docs/v1/getting_started Books API Reference> for @BooksMyLibraryAnnotationsSummary@.
module Network.Google.Resource.Books.MyLibrary.Annotations.Summary
    (
    -- * REST Resource
      MyLibraryAnnotationsSummaryResource

    -- * Creating a Request
    , myLibraryAnnotationsSummary'
    , MyLibraryAnnotationsSummary'

    -- * Request Lenses
    , mlasLayerIds
    , mlasVolumeId
    ) where

import           Network.Google.Books.Types
import           Network.Google.Prelude

-- | A resource alias for @BooksMyLibraryAnnotationsSummary@ method which the
-- 'MyLibraryAnnotationsSummary'' request conforms to.
type MyLibraryAnnotationsSummaryResource =
     "mylibrary" :>
       "annotations" :>
         "summary" :>
           QueryParams "layerIds" Text :>
             QueryParam "volumeId" Text :>
               QueryParam "alt" AltJSON :>
                 Post '[JSON] AnnotationsSummary

-- | Gets the summary of specified layers.
--
-- /See:/ 'myLibraryAnnotationsSummary'' smart constructor.
data MyLibraryAnnotationsSummary' = MyLibraryAnnotationsSummary'
    { _mlasLayerIds :: ![Text]
    , _mlasVolumeId :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'MyLibraryAnnotationsSummary'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mlasLayerIds'
--
-- * 'mlasVolumeId'
myLibraryAnnotationsSummary'
    :: [Text] -- ^ 'layerIds'
    -> Text -- ^ 'volumeId'
    -> MyLibraryAnnotationsSummary'
myLibraryAnnotationsSummary' pMlasLayerIds_ pMlasVolumeId_ =
    MyLibraryAnnotationsSummary'
    { _mlasLayerIds = pMlasLayerIds_
    , _mlasVolumeId = pMlasVolumeId_
    }

-- | Array of layer IDs to get the summary for.
mlasLayerIds :: Lens' MyLibraryAnnotationsSummary' [Text]
mlasLayerIds
  = lens _mlasLayerIds (\ s a -> s{_mlasLayerIds = a})
      . _Coerce

-- | Volume id to get the summary for.
mlasVolumeId :: Lens' MyLibraryAnnotationsSummary' Text
mlasVolumeId
  = lens _mlasVolumeId (\ s a -> s{_mlasVolumeId = a})

instance GoogleRequest MyLibraryAnnotationsSummary'
         where
        type Rs MyLibraryAnnotationsSummary' =
             AnnotationsSummary
        requestClient MyLibraryAnnotationsSummary'{..}
          = go _mlasLayerIds (Just _mlasVolumeId)
              (Just AltJSON)
              booksService
          where go
                  = buildClient
                      (Proxy :: Proxy MyLibraryAnnotationsSummaryResource)
                      mempty
