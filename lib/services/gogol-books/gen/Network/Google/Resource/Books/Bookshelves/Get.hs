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
-- Module      : Network.Google.Resource.Books.Bookshelves.Get
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves metadata for a specific bookshelf for the specified user.
--
-- /See:/ <https://code.google.com/apis/books/docs/v1/getting_started.html Books API Reference> for @books.bookshelves.get@.
module Network.Google.Resource.Books.Bookshelves.Get
    (
    -- * REST Resource
      BookshelvesGetResource

    -- * Creating a Request
    , bookshelvesGet
    , BookshelvesGet

    -- * Request Lenses
    , bgXgafv
    , bgUploadProtocol
    , bgAccessToken
    , bgUploadType
    , bgUserId
    , bgShelf
    , bgSource
    , bgCallback
    ) where

import Network.Google.Books.Types
import Network.Google.Prelude

-- | A resource alias for @books.bookshelves.get@ method which the
-- 'BookshelvesGet' request conforms to.
type BookshelvesGetResource =
     "books" :>
       "v1" :>
         "users" :>
           Capture "userId" Text :>
             "bookshelves" :>
               Capture "shelf" Text :>
                 QueryParam "$.xgafv" Xgafv :>
                   QueryParam "upload_protocol" Text :>
                     QueryParam "access_token" Text :>
                       QueryParam "uploadType" Text :>
                         QueryParam "source" Text :>
                           QueryParam "callback" Text :>
                             QueryParam "alt" AltJSON :> Get '[JSON] Bookshelf

-- | Retrieves metadata for a specific bookshelf for the specified user.
--
-- /See:/ 'bookshelvesGet' smart constructor.
data BookshelvesGet =
  BookshelvesGet'
    { _bgXgafv :: !(Maybe Xgafv)
    , _bgUploadProtocol :: !(Maybe Text)
    , _bgAccessToken :: !(Maybe Text)
    , _bgUploadType :: !(Maybe Text)
    , _bgUserId :: !Text
    , _bgShelf :: !Text
    , _bgSource :: !(Maybe Text)
    , _bgCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'BookshelvesGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bgXgafv'
--
-- * 'bgUploadProtocol'
--
-- * 'bgAccessToken'
--
-- * 'bgUploadType'
--
-- * 'bgUserId'
--
-- * 'bgShelf'
--
-- * 'bgSource'
--
-- * 'bgCallback'
bookshelvesGet
    :: Text -- ^ 'bgUserId'
    -> Text -- ^ 'bgShelf'
    -> BookshelvesGet
bookshelvesGet pBgUserId_ pBgShelf_ =
  BookshelvesGet'
    { _bgXgafv = Nothing
    , _bgUploadProtocol = Nothing
    , _bgAccessToken = Nothing
    , _bgUploadType = Nothing
    , _bgUserId = pBgUserId_
    , _bgShelf = pBgShelf_
    , _bgSource = Nothing
    , _bgCallback = Nothing
    }


-- | V1 error format.
bgXgafv :: Lens' BookshelvesGet (Maybe Xgafv)
bgXgafv = lens _bgXgafv (\ s a -> s{_bgXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
bgUploadProtocol :: Lens' BookshelvesGet (Maybe Text)
bgUploadProtocol
  = lens _bgUploadProtocol
      (\ s a -> s{_bgUploadProtocol = a})

-- | OAuth access token.
bgAccessToken :: Lens' BookshelvesGet (Maybe Text)
bgAccessToken
  = lens _bgAccessToken
      (\ s a -> s{_bgAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
bgUploadType :: Lens' BookshelvesGet (Maybe Text)
bgUploadType
  = lens _bgUploadType (\ s a -> s{_bgUploadType = a})

-- | ID of user for whom to retrieve bookshelves.
bgUserId :: Lens' BookshelvesGet Text
bgUserId = lens _bgUserId (\ s a -> s{_bgUserId = a})

-- | ID of bookshelf to retrieve.
bgShelf :: Lens' BookshelvesGet Text
bgShelf = lens _bgShelf (\ s a -> s{_bgShelf = a})

-- | String to identify the originator of this request.
bgSource :: Lens' BookshelvesGet (Maybe Text)
bgSource = lens _bgSource (\ s a -> s{_bgSource = a})

-- | JSONP
bgCallback :: Lens' BookshelvesGet (Maybe Text)
bgCallback
  = lens _bgCallback (\ s a -> s{_bgCallback = a})

instance GoogleRequest BookshelvesGet where
        type Rs BookshelvesGet = Bookshelf
        type Scopes BookshelvesGet =
             '["https://www.googleapis.com/auth/books"]
        requestClient BookshelvesGet'{..}
          = go _bgUserId _bgShelf _bgXgafv _bgUploadProtocol
              _bgAccessToken
              _bgUploadType
              _bgSource
              _bgCallback
              (Just AltJSON)
              booksService
          where go
                  = buildClient (Proxy :: Proxy BookshelvesGetResource)
                      mempty
