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
-- Module      : Network.Google.Resource.Books.MyLibrary.Bookshelves.RemoveVolume
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Removes a volume from a bookshelf.
--
-- /See:/ <https://code.google.com/apis/books/docs/v1/getting_started.html Books API Reference> for @books.mylibrary.bookshelves.removeVolume@.
module Network.Google.Resource.Books.MyLibrary.Bookshelves.RemoveVolume
    (
    -- * REST Resource
      MyLibraryBookshelvesRemoveVolumeResource

    -- * Creating a Request
    , myLibraryBookshelvesRemoveVolume
    , MyLibraryBookshelvesRemoveVolume

    -- * Request Lenses
    , mlbrvXgafv
    , mlbrvUploadProtocol
    , mlbrvAccessToken
    , mlbrvUploadType
    , mlbrvReason
    , mlbrvShelf
    , mlbrvVolumeId
    , mlbrvSource
    , mlbrvCallback
    ) where

import Network.Google.Books.Types
import Network.Google.Prelude

-- | A resource alias for @books.mylibrary.bookshelves.removeVolume@ method which the
-- 'MyLibraryBookshelvesRemoveVolume' request conforms to.
type MyLibraryBookshelvesRemoveVolumeResource =
     "books" :>
       "v1" :>
         "mylibrary" :>
           "bookshelves" :>
             Capture "shelf" Text :>
               "removeVolume" :>
                 QueryParam "volumeId" Text :>
                   QueryParam "$.xgafv" Xgafv :>
                     QueryParam "upload_protocol" Text :>
                       QueryParam "access_token" Text :>
                         QueryParam "uploadType" Text :>
                           QueryParam "reason"
                             MyLibraryBookshelvesRemoveVolumeReason
                             :>
                             QueryParam "source" Text :>
                               QueryParam "callback" Text :>
                                 QueryParam "alt" AltJSON :> Post '[JSON] Empty

-- | Removes a volume from a bookshelf.
--
-- /See:/ 'myLibraryBookshelvesRemoveVolume' smart constructor.
data MyLibraryBookshelvesRemoveVolume =
  MyLibraryBookshelvesRemoveVolume'
    { _mlbrvXgafv :: !(Maybe Xgafv)
    , _mlbrvUploadProtocol :: !(Maybe Text)
    , _mlbrvAccessToken :: !(Maybe Text)
    , _mlbrvUploadType :: !(Maybe Text)
    , _mlbrvReason :: !(Maybe MyLibraryBookshelvesRemoveVolumeReason)
    , _mlbrvShelf :: !Text
    , _mlbrvVolumeId :: !Text
    , _mlbrvSource :: !(Maybe Text)
    , _mlbrvCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'MyLibraryBookshelvesRemoveVolume' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mlbrvXgafv'
--
-- * 'mlbrvUploadProtocol'
--
-- * 'mlbrvAccessToken'
--
-- * 'mlbrvUploadType'
--
-- * 'mlbrvReason'
--
-- * 'mlbrvShelf'
--
-- * 'mlbrvVolumeId'
--
-- * 'mlbrvSource'
--
-- * 'mlbrvCallback'
myLibraryBookshelvesRemoveVolume
    :: Text -- ^ 'mlbrvShelf'
    -> Text -- ^ 'mlbrvVolumeId'
    -> MyLibraryBookshelvesRemoveVolume
myLibraryBookshelvesRemoveVolume pMlbrvShelf_ pMlbrvVolumeId_ =
  MyLibraryBookshelvesRemoveVolume'
    { _mlbrvXgafv = Nothing
    , _mlbrvUploadProtocol = Nothing
    , _mlbrvAccessToken = Nothing
    , _mlbrvUploadType = Nothing
    , _mlbrvReason = Nothing
    , _mlbrvShelf = pMlbrvShelf_
    , _mlbrvVolumeId = pMlbrvVolumeId_
    , _mlbrvSource = Nothing
    , _mlbrvCallback = Nothing
    }


-- | V1 error format.
mlbrvXgafv :: Lens' MyLibraryBookshelvesRemoveVolume (Maybe Xgafv)
mlbrvXgafv
  = lens _mlbrvXgafv (\ s a -> s{_mlbrvXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
mlbrvUploadProtocol :: Lens' MyLibraryBookshelvesRemoveVolume (Maybe Text)
mlbrvUploadProtocol
  = lens _mlbrvUploadProtocol
      (\ s a -> s{_mlbrvUploadProtocol = a})

-- | OAuth access token.
mlbrvAccessToken :: Lens' MyLibraryBookshelvesRemoveVolume (Maybe Text)
mlbrvAccessToken
  = lens _mlbrvAccessToken
      (\ s a -> s{_mlbrvAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
mlbrvUploadType :: Lens' MyLibraryBookshelvesRemoveVolume (Maybe Text)
mlbrvUploadType
  = lens _mlbrvUploadType
      (\ s a -> s{_mlbrvUploadType = a})

-- | The reason for which the book is removed from the library.
mlbrvReason :: Lens' MyLibraryBookshelvesRemoveVolume (Maybe MyLibraryBookshelvesRemoveVolumeReason)
mlbrvReason
  = lens _mlbrvReason (\ s a -> s{_mlbrvReason = a})

-- | ID of bookshelf from which to remove a volume.
mlbrvShelf :: Lens' MyLibraryBookshelvesRemoveVolume Text
mlbrvShelf
  = lens _mlbrvShelf (\ s a -> s{_mlbrvShelf = a})

-- | ID of volume to remove.
mlbrvVolumeId :: Lens' MyLibraryBookshelvesRemoveVolume Text
mlbrvVolumeId
  = lens _mlbrvVolumeId
      (\ s a -> s{_mlbrvVolumeId = a})

-- | String to identify the originator of this request.
mlbrvSource :: Lens' MyLibraryBookshelvesRemoveVolume (Maybe Text)
mlbrvSource
  = lens _mlbrvSource (\ s a -> s{_mlbrvSource = a})

-- | JSONP
mlbrvCallback :: Lens' MyLibraryBookshelvesRemoveVolume (Maybe Text)
mlbrvCallback
  = lens _mlbrvCallback
      (\ s a -> s{_mlbrvCallback = a})

instance GoogleRequest
           MyLibraryBookshelvesRemoveVolume
         where
        type Rs MyLibraryBookshelvesRemoveVolume = Empty
        type Scopes MyLibraryBookshelvesRemoveVolume =
             '["https://www.googleapis.com/auth/books"]
        requestClient MyLibraryBookshelvesRemoveVolume'{..}
          = go _mlbrvShelf (Just _mlbrvVolumeId) _mlbrvXgafv
              _mlbrvUploadProtocol
              _mlbrvAccessToken
              _mlbrvUploadType
              _mlbrvReason
              _mlbrvSource
              _mlbrvCallback
              (Just AltJSON)
              booksService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy MyLibraryBookshelvesRemoveVolumeResource)
                      mempty
