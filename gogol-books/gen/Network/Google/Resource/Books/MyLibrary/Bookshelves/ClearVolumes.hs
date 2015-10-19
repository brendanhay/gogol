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
-- Module      : Network.Google.Resource.Books.MyLibrary.Bookshelves.ClearVolumes
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Clears all volumes from a bookshelf.
--
-- /See:/ <https://developers.google.com/books/docs/v1/getting_started Books API Reference> for @BooksMyLibraryBookshelvesClearVolumes@.
module Network.Google.Resource.Books.MyLibrary.Bookshelves.ClearVolumes
    (
    -- * REST Resource
      MyLibraryBookshelvesClearVolumesResource

    -- * Creating a Request
    , myLibraryBookshelvesClearVolumes'
    , MyLibraryBookshelvesClearVolumes'

    -- * Request Lenses
    , mlbcvShelf
    , mlbcvSource
    ) where

import           Network.Google.Books.Types
import           Network.Google.Prelude

-- | A resource alias for @BooksMyLibraryBookshelvesClearVolumes@ method which the
-- 'MyLibraryBookshelvesClearVolumes'' request conforms to.
type MyLibraryBookshelvesClearVolumesResource =
     "mylibrary" :>
       "bookshelves" :>
         Capture "shelf" Text :>
           "clearVolumes" :>
             QueryParam "source" Text :>
               QueryParam "alt" AltJSON :> Post '[JSON] ()

-- | Clears all volumes from a bookshelf.
--
-- /See:/ 'myLibraryBookshelvesClearVolumes'' smart constructor.
data MyLibraryBookshelvesClearVolumes' = MyLibraryBookshelvesClearVolumes'
    { _mlbcvShelf  :: !Text
    , _mlbcvSource :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'MyLibraryBookshelvesClearVolumes'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mlbcvShelf'
--
-- * 'mlbcvSource'
myLibraryBookshelvesClearVolumes'
    :: Text -- ^ 'shelf'
    -> MyLibraryBookshelvesClearVolumes'
myLibraryBookshelvesClearVolumes' pMlbcvShelf_ =
    MyLibraryBookshelvesClearVolumes'
    { _mlbcvShelf = pMlbcvShelf_
    , _mlbcvSource = Nothing
    }

-- | ID of bookshelf from which to remove a volume.
mlbcvShelf :: Lens' MyLibraryBookshelvesClearVolumes' Text
mlbcvShelf
  = lens _mlbcvShelf (\ s a -> s{_mlbcvShelf = a})

-- | String to identify the originator of this request.
mlbcvSource :: Lens' MyLibraryBookshelvesClearVolumes' (Maybe Text)
mlbcvSource
  = lens _mlbcvSource (\ s a -> s{_mlbcvSource = a})

instance GoogleRequest
         MyLibraryBookshelvesClearVolumes' where
        type Rs MyLibraryBookshelvesClearVolumes' = ()
        requestClient MyLibraryBookshelvesClearVolumes'{..}
          = go _mlbcvShelf _mlbcvSource (Just AltJSON)
              booksService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy MyLibraryBookshelvesClearVolumesResource)
                      mempty
