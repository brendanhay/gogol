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
-- Module      : Network.Google.Resource.Books.MyLibrary.Bookshelves.MoveVolume
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Moves a volume within a bookshelf.
--
-- /See:/ <https://code.google.com/apis/books/docs/v1/getting_started.html Books API Reference> for @books.mylibrary.bookshelves.moveVolume@.
module Network.Google.Resource.Books.MyLibrary.Bookshelves.MoveVolume
    (
    -- * REST Resource
      MyLibraryBookshelvesMoveVolumeResource

    -- * Creating a Request
    , myLibraryBookshelvesMoveVolume
    , MyLibraryBookshelvesMoveVolume

    -- * Request Lenses
    , mlbmvXgafv
    , mlbmvUploadProtocol
    , mlbmvAccessToken
    , mlbmvUploadType
    , mlbmvShelf
    , mlbmvVolumeId
    , mlbmvSource
    , mlbmvVolumePosition
    , mlbmvCallback
    ) where

import Network.Google.Books.Types
import Network.Google.Prelude

-- | A resource alias for @books.mylibrary.bookshelves.moveVolume@ method which the
-- 'MyLibraryBookshelvesMoveVolume' request conforms to.
type MyLibraryBookshelvesMoveVolumeResource =
     "books" :>
       "v1" :>
         "mylibrary" :>
           "bookshelves" :>
             Capture "shelf" Text :>
               "moveVolume" :>
                 QueryParam "volumeId" Text :>
                   QueryParam "volumePosition" (Textual Int32) :>
                     QueryParam "$.xgafv" Xgafv :>
                       QueryParam "upload_protocol" Text :>
                         QueryParam "access_token" Text :>
                           QueryParam "uploadType" Text :>
                             QueryParam "source" Text :>
                               QueryParam "callback" Text :>
                                 QueryParam "alt" AltJSON :> Post '[JSON] Empty

-- | Moves a volume within a bookshelf.
--
-- /See:/ 'myLibraryBookshelvesMoveVolume' smart constructor.
data MyLibraryBookshelvesMoveVolume =
  MyLibraryBookshelvesMoveVolume'
    { _mlbmvXgafv :: !(Maybe Xgafv)
    , _mlbmvUploadProtocol :: !(Maybe Text)
    , _mlbmvAccessToken :: !(Maybe Text)
    , _mlbmvUploadType :: !(Maybe Text)
    , _mlbmvShelf :: !Text
    , _mlbmvVolumeId :: !Text
    , _mlbmvSource :: !(Maybe Text)
    , _mlbmvVolumePosition :: !(Textual Int32)
    , _mlbmvCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'MyLibraryBookshelvesMoveVolume' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mlbmvXgafv'
--
-- * 'mlbmvUploadProtocol'
--
-- * 'mlbmvAccessToken'
--
-- * 'mlbmvUploadType'
--
-- * 'mlbmvShelf'
--
-- * 'mlbmvVolumeId'
--
-- * 'mlbmvSource'
--
-- * 'mlbmvVolumePosition'
--
-- * 'mlbmvCallback'
myLibraryBookshelvesMoveVolume
    :: Text -- ^ 'mlbmvShelf'
    -> Text -- ^ 'mlbmvVolumeId'
    -> Int32 -- ^ 'mlbmvVolumePosition'
    -> MyLibraryBookshelvesMoveVolume
myLibraryBookshelvesMoveVolume pMlbmvShelf_ pMlbmvVolumeId_ pMlbmvVolumePosition_ =
  MyLibraryBookshelvesMoveVolume'
    { _mlbmvXgafv = Nothing
    , _mlbmvUploadProtocol = Nothing
    , _mlbmvAccessToken = Nothing
    , _mlbmvUploadType = Nothing
    , _mlbmvShelf = pMlbmvShelf_
    , _mlbmvVolumeId = pMlbmvVolumeId_
    , _mlbmvSource = Nothing
    , _mlbmvVolumePosition = _Coerce # pMlbmvVolumePosition_
    , _mlbmvCallback = Nothing
    }


-- | V1 error format.
mlbmvXgafv :: Lens' MyLibraryBookshelvesMoveVolume (Maybe Xgafv)
mlbmvXgafv
  = lens _mlbmvXgafv (\ s a -> s{_mlbmvXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
mlbmvUploadProtocol :: Lens' MyLibraryBookshelvesMoveVolume (Maybe Text)
mlbmvUploadProtocol
  = lens _mlbmvUploadProtocol
      (\ s a -> s{_mlbmvUploadProtocol = a})

-- | OAuth access token.
mlbmvAccessToken :: Lens' MyLibraryBookshelvesMoveVolume (Maybe Text)
mlbmvAccessToken
  = lens _mlbmvAccessToken
      (\ s a -> s{_mlbmvAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
mlbmvUploadType :: Lens' MyLibraryBookshelvesMoveVolume (Maybe Text)
mlbmvUploadType
  = lens _mlbmvUploadType
      (\ s a -> s{_mlbmvUploadType = a})

-- | ID of bookshelf with the volume.
mlbmvShelf :: Lens' MyLibraryBookshelvesMoveVolume Text
mlbmvShelf
  = lens _mlbmvShelf (\ s a -> s{_mlbmvShelf = a})

-- | ID of volume to move.
mlbmvVolumeId :: Lens' MyLibraryBookshelvesMoveVolume Text
mlbmvVolumeId
  = lens _mlbmvVolumeId
      (\ s a -> s{_mlbmvVolumeId = a})

-- | String to identify the originator of this request.
mlbmvSource :: Lens' MyLibraryBookshelvesMoveVolume (Maybe Text)
mlbmvSource
  = lens _mlbmvSource (\ s a -> s{_mlbmvSource = a})

-- | Position on shelf to move the item (0 puts the item before the current
-- first item, 1 puts it between the first and the second and so on.)
mlbmvVolumePosition :: Lens' MyLibraryBookshelvesMoveVolume Int32
mlbmvVolumePosition
  = lens _mlbmvVolumePosition
      (\ s a -> s{_mlbmvVolumePosition = a})
      . _Coerce

-- | JSONP
mlbmvCallback :: Lens' MyLibraryBookshelvesMoveVolume (Maybe Text)
mlbmvCallback
  = lens _mlbmvCallback
      (\ s a -> s{_mlbmvCallback = a})

instance GoogleRequest MyLibraryBookshelvesMoveVolume
         where
        type Rs MyLibraryBookshelvesMoveVolume = Empty
        type Scopes MyLibraryBookshelvesMoveVolume =
             '["https://www.googleapis.com/auth/books"]
        requestClient MyLibraryBookshelvesMoveVolume'{..}
          = go _mlbmvShelf (Just _mlbmvVolumeId)
              (Just _mlbmvVolumePosition)
              _mlbmvXgafv
              _mlbmvUploadProtocol
              _mlbmvAccessToken
              _mlbmvUploadType
              _mlbmvSource
              _mlbmvCallback
              (Just AltJSON)
              booksService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy MyLibraryBookshelvesMoveVolumeResource)
                      mempty
