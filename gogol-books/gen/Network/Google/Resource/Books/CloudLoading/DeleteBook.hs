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
-- Module      : Network.Google.Resource.Books.CloudLoading.DeleteBook
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Remove the book and its contents
--
-- /See:/ <https://developers.google.com/books/docs/v1/getting_started Books API Reference> for @books.cloudloading.deleteBook@.
module Network.Google.Resource.Books.CloudLoading.DeleteBook
    (
    -- * REST Resource
      CloudLoadingDeleteBookResource

    -- * Creating a Request
    , cloudLoadingDeleteBook
    , CloudLoadingDeleteBook

    -- * Request Lenses
    , cldbVolumeId
    ) where

import           Network.Google.Books.Types
import           Network.Google.Prelude

-- | A resource alias for @books.cloudloading.deleteBook@ method which the
-- 'CloudLoadingDeleteBook' request conforms to.
type CloudLoadingDeleteBookResource =
     "books" :>
       "v1" :>
         "cloudloading" :>
           "deleteBook" :>
             QueryParam "volumeId" Text :>
               QueryParam "alt" AltJSON :> Post '[JSON] ()

-- | Remove the book and its contents
--
-- /See:/ 'cloudLoadingDeleteBook' smart constructor.
newtype CloudLoadingDeleteBook =
  CloudLoadingDeleteBook'
    { _cldbVolumeId :: Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'CloudLoadingDeleteBook' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cldbVolumeId'
cloudLoadingDeleteBook
    :: Text -- ^ 'cldbVolumeId'
    -> CloudLoadingDeleteBook
cloudLoadingDeleteBook pCldbVolumeId_ =
  CloudLoadingDeleteBook' {_cldbVolumeId = pCldbVolumeId_}


-- | The id of the book to be removed.
cldbVolumeId :: Lens' CloudLoadingDeleteBook Text
cldbVolumeId
  = lens _cldbVolumeId (\ s a -> s{_cldbVolumeId = a})

instance GoogleRequest CloudLoadingDeleteBook where
        type Rs CloudLoadingDeleteBook = ()
        type Scopes CloudLoadingDeleteBook =
             '["https://www.googleapis.com/auth/books"]
        requestClient CloudLoadingDeleteBook'{..}
          = go (Just _cldbVolumeId) (Just AltJSON) booksService
          where go
                  = buildClient
                      (Proxy :: Proxy CloudLoadingDeleteBookResource)
                      mempty
