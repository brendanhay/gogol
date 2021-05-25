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
-- Module      : Network.Google.Resource.Books.MyLibrary.Bookshelves.AddVolume
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Adds a volume to a bookshelf.
--
-- /See:/ <https://code.google.com/apis/books/docs/v1/getting_started.html Books API Reference> for @books.mylibrary.bookshelves.addVolume@.
module Network.Google.Resource.Books.MyLibrary.Bookshelves.AddVolume
    (
    -- * REST Resource
      MyLibraryBookshelvesAddVolumeResource

    -- * Creating a Request
    , myLibraryBookshelvesAddVolume
    , MyLibraryBookshelvesAddVolume

    -- * Request Lenses
    , mlbavXgafv
    , mlbavUploadProtocol
    , mlbavAccessToken
    , mlbavUploadType
    , mlbavReason
    , mlbavShelf
    , mlbavVolumeId
    , mlbavSource
    , mlbavCallback
    ) where

import Network.Google.Books.Types
import Network.Google.Prelude

-- | A resource alias for @books.mylibrary.bookshelves.addVolume@ method which the
-- 'MyLibraryBookshelvesAddVolume' request conforms to.
type MyLibraryBookshelvesAddVolumeResource =
     "books" :>
       "v1" :>
         "mylibrary" :>
           "bookshelves" :>
             Capture "shelf" Text :>
               "addVolume" :>
                 QueryParam "volumeId" Text :>
                   QueryParam "$.xgafv" Xgafv :>
                     QueryParam "upload_protocol" Text :>
                       QueryParam "access_token" Text :>
                         QueryParam "uploadType" Text :>
                           QueryParam "reason"
                             MyLibraryBookshelvesAddVolumeReason
                             :>
                             QueryParam "source" Text :>
                               QueryParam "callback" Text :>
                                 QueryParam "alt" AltJSON :> Post '[JSON] Empty

-- | Adds a volume to a bookshelf.
--
-- /See:/ 'myLibraryBookshelvesAddVolume' smart constructor.
data MyLibraryBookshelvesAddVolume =
  MyLibraryBookshelvesAddVolume'
    { _mlbavXgafv :: !(Maybe Xgafv)
    , _mlbavUploadProtocol :: !(Maybe Text)
    , _mlbavAccessToken :: !(Maybe Text)
    , _mlbavUploadType :: !(Maybe Text)
    , _mlbavReason :: !(Maybe MyLibraryBookshelvesAddVolumeReason)
    , _mlbavShelf :: !Text
    , _mlbavVolumeId :: !Text
    , _mlbavSource :: !(Maybe Text)
    , _mlbavCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'MyLibraryBookshelvesAddVolume' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mlbavXgafv'
--
-- * 'mlbavUploadProtocol'
--
-- * 'mlbavAccessToken'
--
-- * 'mlbavUploadType'
--
-- * 'mlbavReason'
--
-- * 'mlbavShelf'
--
-- * 'mlbavVolumeId'
--
-- * 'mlbavSource'
--
-- * 'mlbavCallback'
myLibraryBookshelvesAddVolume
    :: Text -- ^ 'mlbavShelf'
    -> Text -- ^ 'mlbavVolumeId'
    -> MyLibraryBookshelvesAddVolume
myLibraryBookshelvesAddVolume pMlbavShelf_ pMlbavVolumeId_ =
  MyLibraryBookshelvesAddVolume'
    { _mlbavXgafv = Nothing
    , _mlbavUploadProtocol = Nothing
    , _mlbavAccessToken = Nothing
    , _mlbavUploadType = Nothing
    , _mlbavReason = Nothing
    , _mlbavShelf = pMlbavShelf_
    , _mlbavVolumeId = pMlbavVolumeId_
    , _mlbavSource = Nothing
    , _mlbavCallback = Nothing
    }


-- | V1 error format.
mlbavXgafv :: Lens' MyLibraryBookshelvesAddVolume (Maybe Xgafv)
mlbavXgafv
  = lens _mlbavXgafv (\ s a -> s{_mlbavXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
mlbavUploadProtocol :: Lens' MyLibraryBookshelvesAddVolume (Maybe Text)
mlbavUploadProtocol
  = lens _mlbavUploadProtocol
      (\ s a -> s{_mlbavUploadProtocol = a})

-- | OAuth access token.
mlbavAccessToken :: Lens' MyLibraryBookshelvesAddVolume (Maybe Text)
mlbavAccessToken
  = lens _mlbavAccessToken
      (\ s a -> s{_mlbavAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
mlbavUploadType :: Lens' MyLibraryBookshelvesAddVolume (Maybe Text)
mlbavUploadType
  = lens _mlbavUploadType
      (\ s a -> s{_mlbavUploadType = a})

-- | The reason for which the book is added to the library.
mlbavReason :: Lens' MyLibraryBookshelvesAddVolume (Maybe MyLibraryBookshelvesAddVolumeReason)
mlbavReason
  = lens _mlbavReason (\ s a -> s{_mlbavReason = a})

-- | ID of bookshelf to which to add a volume.
mlbavShelf :: Lens' MyLibraryBookshelvesAddVolume Text
mlbavShelf
  = lens _mlbavShelf (\ s a -> s{_mlbavShelf = a})

-- | ID of volume to add.
mlbavVolumeId :: Lens' MyLibraryBookshelvesAddVolume Text
mlbavVolumeId
  = lens _mlbavVolumeId
      (\ s a -> s{_mlbavVolumeId = a})

-- | String to identify the originator of this request.
mlbavSource :: Lens' MyLibraryBookshelvesAddVolume (Maybe Text)
mlbavSource
  = lens _mlbavSource (\ s a -> s{_mlbavSource = a})

-- | JSONP
mlbavCallback :: Lens' MyLibraryBookshelvesAddVolume (Maybe Text)
mlbavCallback
  = lens _mlbavCallback
      (\ s a -> s{_mlbavCallback = a})

instance GoogleRequest MyLibraryBookshelvesAddVolume
         where
        type Rs MyLibraryBookshelvesAddVolume = Empty
        type Scopes MyLibraryBookshelvesAddVolume =
             '["https://www.googleapis.com/auth/books"]
        requestClient MyLibraryBookshelvesAddVolume'{..}
          = go _mlbavShelf (Just _mlbavVolumeId) _mlbavXgafv
              _mlbavUploadProtocol
              _mlbavAccessToken
              _mlbavUploadType
              _mlbavReason
              _mlbavSource
              _mlbavCallback
              (Just AltJSON)
              booksService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy MyLibraryBookshelvesAddVolumeResource)
                      mempty
