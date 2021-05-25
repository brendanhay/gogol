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
-- Module      : Network.Google.Resource.Books.MyLibrary.Bookshelves.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves metadata for a specific bookshelf belonging to the
-- authenticated user.
--
-- /See:/ <https://code.google.com/apis/books/docs/v1/getting_started.html Books API Reference> for @books.mylibrary.bookshelves.get@.
module Network.Google.Resource.Books.MyLibrary.Bookshelves.Get
    (
    -- * REST Resource
      MyLibraryBookshelvesGetResource

    -- * Creating a Request
    , myLibraryBookshelvesGet
    , MyLibraryBookshelvesGet

    -- * Request Lenses
    , mlbgXgafv
    , mlbgUploadProtocol
    , mlbgAccessToken
    , mlbgUploadType
    , mlbgShelf
    , mlbgSource
    , mlbgCallback
    ) where

import Network.Google.Books.Types
import Network.Google.Prelude

-- | A resource alias for @books.mylibrary.bookshelves.get@ method which the
-- 'MyLibraryBookshelvesGet' request conforms to.
type MyLibraryBookshelvesGetResource =
     "books" :>
       "v1" :>
         "mylibrary" :>
           "bookshelves" :>
             Capture "shelf" Text :>
               QueryParam "$.xgafv" Xgafv :>
                 QueryParam "upload_protocol" Text :>
                   QueryParam "access_token" Text :>
                     QueryParam "uploadType" Text :>
                       QueryParam "source" Text :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :> Get '[JSON] Bookshelf

-- | Retrieves metadata for a specific bookshelf belonging to the
-- authenticated user.
--
-- /See:/ 'myLibraryBookshelvesGet' smart constructor.
data MyLibraryBookshelvesGet =
  MyLibraryBookshelvesGet'
    { _mlbgXgafv :: !(Maybe Xgafv)
    , _mlbgUploadProtocol :: !(Maybe Text)
    , _mlbgAccessToken :: !(Maybe Text)
    , _mlbgUploadType :: !(Maybe Text)
    , _mlbgShelf :: !Text
    , _mlbgSource :: !(Maybe Text)
    , _mlbgCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'MyLibraryBookshelvesGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mlbgXgafv'
--
-- * 'mlbgUploadProtocol'
--
-- * 'mlbgAccessToken'
--
-- * 'mlbgUploadType'
--
-- * 'mlbgShelf'
--
-- * 'mlbgSource'
--
-- * 'mlbgCallback'
myLibraryBookshelvesGet
    :: Text -- ^ 'mlbgShelf'
    -> MyLibraryBookshelvesGet
myLibraryBookshelvesGet pMlbgShelf_ =
  MyLibraryBookshelvesGet'
    { _mlbgXgafv = Nothing
    , _mlbgUploadProtocol = Nothing
    , _mlbgAccessToken = Nothing
    , _mlbgUploadType = Nothing
    , _mlbgShelf = pMlbgShelf_
    , _mlbgSource = Nothing
    , _mlbgCallback = Nothing
    }


-- | V1 error format.
mlbgXgafv :: Lens' MyLibraryBookshelvesGet (Maybe Xgafv)
mlbgXgafv
  = lens _mlbgXgafv (\ s a -> s{_mlbgXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
mlbgUploadProtocol :: Lens' MyLibraryBookshelvesGet (Maybe Text)
mlbgUploadProtocol
  = lens _mlbgUploadProtocol
      (\ s a -> s{_mlbgUploadProtocol = a})

-- | OAuth access token.
mlbgAccessToken :: Lens' MyLibraryBookshelvesGet (Maybe Text)
mlbgAccessToken
  = lens _mlbgAccessToken
      (\ s a -> s{_mlbgAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
mlbgUploadType :: Lens' MyLibraryBookshelvesGet (Maybe Text)
mlbgUploadType
  = lens _mlbgUploadType
      (\ s a -> s{_mlbgUploadType = a})

-- | ID of bookshelf to retrieve.
mlbgShelf :: Lens' MyLibraryBookshelvesGet Text
mlbgShelf
  = lens _mlbgShelf (\ s a -> s{_mlbgShelf = a})

-- | String to identify the originator of this request.
mlbgSource :: Lens' MyLibraryBookshelvesGet (Maybe Text)
mlbgSource
  = lens _mlbgSource (\ s a -> s{_mlbgSource = a})

-- | JSONP
mlbgCallback :: Lens' MyLibraryBookshelvesGet (Maybe Text)
mlbgCallback
  = lens _mlbgCallback (\ s a -> s{_mlbgCallback = a})

instance GoogleRequest MyLibraryBookshelvesGet where
        type Rs MyLibraryBookshelvesGet = Bookshelf
        type Scopes MyLibraryBookshelvesGet =
             '["https://www.googleapis.com/auth/books"]
        requestClient MyLibraryBookshelvesGet'{..}
          = go _mlbgShelf _mlbgXgafv _mlbgUploadProtocol
              _mlbgAccessToken
              _mlbgUploadType
              _mlbgSource
              _mlbgCallback
              (Just AltJSON)
              booksService
          where go
                  = buildClient
                      (Proxy :: Proxy MyLibraryBookshelvesGetResource)
                      mempty
