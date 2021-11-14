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
-- Module      : Network.Google.Resource.Books.Bookshelves.List
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a list of public bookshelves for the specified user.
--
-- /See:/ <https://code.google.com/apis/books/docs/v1/getting_started.html Books API Reference> for @books.bookshelves.list@.
module Network.Google.Resource.Books.Bookshelves.List
    (
    -- * REST Resource
      BookshelvesListResource

    -- * Creating a Request
    , bookshelvesList
    , BookshelvesList

    -- * Request Lenses
    , blXgafv
    , blUploadProtocol
    , blAccessToken
    , blUploadType
    , blUserId
    , blSource
    , blCallback
    ) where

import Network.Google.Books.Types
import Network.Google.Prelude

-- | A resource alias for @books.bookshelves.list@ method which the
-- 'BookshelvesList' request conforms to.
type BookshelvesListResource =
     "books" :>
       "v1" :>
         "users" :>
           Capture "userId" Text :>
             "bookshelves" :>
               QueryParam "$.xgafv" Xgafv :>
                 QueryParam "upload_protocol" Text :>
                   QueryParam "access_token" Text :>
                     QueryParam "uploadType" Text :>
                       QueryParam "source" Text :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :> Get '[JSON] Bookshelves

-- | Retrieves a list of public bookshelves for the specified user.
--
-- /See:/ 'bookshelvesList' smart constructor.
data BookshelvesList =
  BookshelvesList'
    { _blXgafv :: !(Maybe Xgafv)
    , _blUploadProtocol :: !(Maybe Text)
    , _blAccessToken :: !(Maybe Text)
    , _blUploadType :: !(Maybe Text)
    , _blUserId :: !Text
    , _blSource :: !(Maybe Text)
    , _blCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'BookshelvesList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'blXgafv'
--
-- * 'blUploadProtocol'
--
-- * 'blAccessToken'
--
-- * 'blUploadType'
--
-- * 'blUserId'
--
-- * 'blSource'
--
-- * 'blCallback'
bookshelvesList
    :: Text -- ^ 'blUserId'
    -> BookshelvesList
bookshelvesList pBlUserId_ =
  BookshelvesList'
    { _blXgafv = Nothing
    , _blUploadProtocol = Nothing
    , _blAccessToken = Nothing
    , _blUploadType = Nothing
    , _blUserId = pBlUserId_
    , _blSource = Nothing
    , _blCallback = Nothing
    }


-- | V1 error format.
blXgafv :: Lens' BookshelvesList (Maybe Xgafv)
blXgafv = lens _blXgafv (\ s a -> s{_blXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
blUploadProtocol :: Lens' BookshelvesList (Maybe Text)
blUploadProtocol
  = lens _blUploadProtocol
      (\ s a -> s{_blUploadProtocol = a})

-- | OAuth access token.
blAccessToken :: Lens' BookshelvesList (Maybe Text)
blAccessToken
  = lens _blAccessToken
      (\ s a -> s{_blAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
blUploadType :: Lens' BookshelvesList (Maybe Text)
blUploadType
  = lens _blUploadType (\ s a -> s{_blUploadType = a})

-- | ID of user for whom to retrieve bookshelves.
blUserId :: Lens' BookshelvesList Text
blUserId = lens _blUserId (\ s a -> s{_blUserId = a})

-- | String to identify the originator of this request.
blSource :: Lens' BookshelvesList (Maybe Text)
blSource = lens _blSource (\ s a -> s{_blSource = a})

-- | JSONP
blCallback :: Lens' BookshelvesList (Maybe Text)
blCallback
  = lens _blCallback (\ s a -> s{_blCallback = a})

instance GoogleRequest BookshelvesList where
        type Rs BookshelvesList = Bookshelves
        type Scopes BookshelvesList =
             '["https://www.googleapis.com/auth/books"]
        requestClient BookshelvesList'{..}
          = go _blUserId _blXgafv _blUploadProtocol
              _blAccessToken
              _blUploadType
              _blSource
              _blCallback
              (Just AltJSON)
              booksService
          where go
                  = buildClient
                      (Proxy :: Proxy BookshelvesListResource)
                      mempty
