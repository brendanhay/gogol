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
-- Module      : Network.Google.Resource.Books.MyLibrary.Annotations.Delete
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes an annotation.
--
-- /See:/ <https://developers.google.com/books/docs/v1/getting_started Books API Reference> for @books.mylibrary.annotations.delete@.
module Network.Google.Resource.Books.MyLibrary.Annotations.Delete
    (
    -- * REST Resource
      MyLibraryAnnotationsDeleteResource

    -- * Creating a Request
    , myLibraryAnnotationsDelete
    , MyLibraryAnnotationsDelete

    -- * Request Lenses
    , mladAnnotationId
    , mladSource
    ) where

import           Network.Google.Books.Types
import           Network.Google.Prelude

-- | A resource alias for @books.mylibrary.annotations.delete@ method which the
-- 'MyLibraryAnnotationsDelete' request conforms to.
type MyLibraryAnnotationsDeleteResource =
     "books" :>
       "v1" :>
         "mylibrary" :>
           "annotations" :>
             Capture "annotationId" Text :>
               QueryParam "source" Text :>
                 QueryParam "alt" AltJSON :> Delete '[JSON] ()

-- | Deletes an annotation.
--
-- /See:/ 'myLibraryAnnotationsDelete' smart constructor.
data MyLibraryAnnotationsDelete =
  MyLibraryAnnotationsDelete'
    { _mladAnnotationId :: !Text
    , _mladSource       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'MyLibraryAnnotationsDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mladAnnotationId'
--
-- * 'mladSource'
myLibraryAnnotationsDelete
    :: Text -- ^ 'mladAnnotationId'
    -> MyLibraryAnnotationsDelete
myLibraryAnnotationsDelete pMladAnnotationId_ =
  MyLibraryAnnotationsDelete'
    {_mladAnnotationId = pMladAnnotationId_, _mladSource = Nothing}

-- | The ID for the annotation to delete.
mladAnnotationId :: Lens' MyLibraryAnnotationsDelete Text
mladAnnotationId
  = lens _mladAnnotationId
      (\ s a -> s{_mladAnnotationId = a})

-- | String to identify the originator of this request.
mladSource :: Lens' MyLibraryAnnotationsDelete (Maybe Text)
mladSource
  = lens _mladSource (\ s a -> s{_mladSource = a})

instance GoogleRequest MyLibraryAnnotationsDelete
         where
        type Rs MyLibraryAnnotationsDelete = ()
        type Scopes MyLibraryAnnotationsDelete =
             '["https://www.googleapis.com/auth/books"]
        requestClient MyLibraryAnnotationsDelete'{..}
          = go _mladAnnotationId _mladSource (Just AltJSON)
              booksService
          where go
                  = buildClient
                      (Proxy :: Proxy MyLibraryAnnotationsDeleteResource)
                      mempty
