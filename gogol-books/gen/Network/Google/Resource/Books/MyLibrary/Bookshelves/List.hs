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
-- Module      : Network.Google.Resource.Books.MyLibrary.Bookshelves.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a list of bookshelves belonging to the authenticated user.
--
-- /See:/ <https://code.google.com/apis/books/docs/v1/getting_started.html Books API Reference> for @books.mylibrary.bookshelves.list@.
module Network.Google.Resource.Books.MyLibrary.Bookshelves.List
    (
    -- * REST Resource
      MyLibraryBookshelvesListResource

    -- * Creating a Request
    , myLibraryBookshelvesList
    , MyLibraryBookshelvesList

    -- * Request Lenses
    , mlblXgafv
    , mlblUploadProtocol
    , mlblAccessToken
    , mlblUploadType
    , mlblSource
    , mlblCallback
    ) where

import Network.Google.Books.Types
import Network.Google.Prelude

-- | A resource alias for @books.mylibrary.bookshelves.list@ method which the
-- 'MyLibraryBookshelvesList' request conforms to.
type MyLibraryBookshelvesListResource =
     "books" :>
       "v1" :>
         "mylibrary" :>
           "bookshelves" :>
             QueryParam "$.xgafv" Xgafv :>
               QueryParam "upload_protocol" Text :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "source" Text :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :> Get '[JSON] Bookshelves

-- | Retrieves a list of bookshelves belonging to the authenticated user.
--
-- /See:/ 'myLibraryBookshelvesList' smart constructor.
data MyLibraryBookshelvesList =
  MyLibraryBookshelvesList'
    { _mlblXgafv :: !(Maybe Xgafv)
    , _mlblUploadProtocol :: !(Maybe Text)
    , _mlblAccessToken :: !(Maybe Text)
    , _mlblUploadType :: !(Maybe Text)
    , _mlblSource :: !(Maybe Text)
    , _mlblCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'MyLibraryBookshelvesList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mlblXgafv'
--
-- * 'mlblUploadProtocol'
--
-- * 'mlblAccessToken'
--
-- * 'mlblUploadType'
--
-- * 'mlblSource'
--
-- * 'mlblCallback'
myLibraryBookshelvesList
    :: MyLibraryBookshelvesList
myLibraryBookshelvesList =
  MyLibraryBookshelvesList'
    { _mlblXgafv = Nothing
    , _mlblUploadProtocol = Nothing
    , _mlblAccessToken = Nothing
    , _mlblUploadType = Nothing
    , _mlblSource = Nothing
    , _mlblCallback = Nothing
    }


-- | V1 error format.
mlblXgafv :: Lens' MyLibraryBookshelvesList (Maybe Xgafv)
mlblXgafv
  = lens _mlblXgafv (\ s a -> s{_mlblXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
mlblUploadProtocol :: Lens' MyLibraryBookshelvesList (Maybe Text)
mlblUploadProtocol
  = lens _mlblUploadProtocol
      (\ s a -> s{_mlblUploadProtocol = a})

-- | OAuth access token.
mlblAccessToken :: Lens' MyLibraryBookshelvesList (Maybe Text)
mlblAccessToken
  = lens _mlblAccessToken
      (\ s a -> s{_mlblAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
mlblUploadType :: Lens' MyLibraryBookshelvesList (Maybe Text)
mlblUploadType
  = lens _mlblUploadType
      (\ s a -> s{_mlblUploadType = a})

-- | String to identify the originator of this request.
mlblSource :: Lens' MyLibraryBookshelvesList (Maybe Text)
mlblSource
  = lens _mlblSource (\ s a -> s{_mlblSource = a})

-- | JSONP
mlblCallback :: Lens' MyLibraryBookshelvesList (Maybe Text)
mlblCallback
  = lens _mlblCallback (\ s a -> s{_mlblCallback = a})

instance GoogleRequest MyLibraryBookshelvesList where
        type Rs MyLibraryBookshelvesList = Bookshelves
        type Scopes MyLibraryBookshelvesList =
             '["https://www.googleapis.com/auth/books"]
        requestClient MyLibraryBookshelvesList'{..}
          = go _mlblXgafv _mlblUploadProtocol _mlblAccessToken
              _mlblUploadType
              _mlblSource
              _mlblCallback
              (Just AltJSON)
              booksService
          where go
                  = buildClient
                      (Proxy :: Proxy MyLibraryBookshelvesListResource)
                      mempty
