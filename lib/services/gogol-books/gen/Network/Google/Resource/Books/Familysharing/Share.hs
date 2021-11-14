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
-- Module      : Network.Google.Resource.Books.Familysharing.Share
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Initiates sharing of the content with the user\'s family. Empty response
-- indicates success.
--
-- /See:/ <https://code.google.com/apis/books/docs/v1/getting_started.html Books API Reference> for @books.familysharing.share@.
module Network.Google.Resource.Books.Familysharing.Share
    (
    -- * REST Resource
      FamilysharingShareResource

    -- * Creating a Request
    , familysharingShare
    , FamilysharingShare

    -- * Request Lenses
    , fsXgafv
    , fsUploadProtocol
    , fsAccessToken
    , fsUploadType
    , fsVolumeId
    , fsSource
    , fsDocId
    , fsCallback
    ) where

import Network.Google.Books.Types
import Network.Google.Prelude

-- | A resource alias for @books.familysharing.share@ method which the
-- 'FamilysharingShare' request conforms to.
type FamilysharingShareResource =
     "books" :>
       "v1" :>
         "familysharing" :>
           "share" :>
             QueryParam "$.xgafv" Xgafv :>
               QueryParam "upload_protocol" Text :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "volumeId" Text :>
                       QueryParam "source" Text :>
                         QueryParam "docId" Text :>
                           QueryParam "callback" Text :>
                             QueryParam "alt" AltJSON :> Post '[JSON] Empty

-- | Initiates sharing of the content with the user\'s family. Empty response
-- indicates success.
--
-- /See:/ 'familysharingShare' smart constructor.
data FamilysharingShare =
  FamilysharingShare'
    { _fsXgafv :: !(Maybe Xgafv)
    , _fsUploadProtocol :: !(Maybe Text)
    , _fsAccessToken :: !(Maybe Text)
    , _fsUploadType :: !(Maybe Text)
    , _fsVolumeId :: !(Maybe Text)
    , _fsSource :: !(Maybe Text)
    , _fsDocId :: !(Maybe Text)
    , _fsCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'FamilysharingShare' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'fsXgafv'
--
-- * 'fsUploadProtocol'
--
-- * 'fsAccessToken'
--
-- * 'fsUploadType'
--
-- * 'fsVolumeId'
--
-- * 'fsSource'
--
-- * 'fsDocId'
--
-- * 'fsCallback'
familysharingShare
    :: FamilysharingShare
familysharingShare =
  FamilysharingShare'
    { _fsXgafv = Nothing
    , _fsUploadProtocol = Nothing
    , _fsAccessToken = Nothing
    , _fsUploadType = Nothing
    , _fsVolumeId = Nothing
    , _fsSource = Nothing
    , _fsDocId = Nothing
    , _fsCallback = Nothing
    }


-- | V1 error format.
fsXgafv :: Lens' FamilysharingShare (Maybe Xgafv)
fsXgafv = lens _fsXgafv (\ s a -> s{_fsXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
fsUploadProtocol :: Lens' FamilysharingShare (Maybe Text)
fsUploadProtocol
  = lens _fsUploadProtocol
      (\ s a -> s{_fsUploadProtocol = a})

-- | OAuth access token.
fsAccessToken :: Lens' FamilysharingShare (Maybe Text)
fsAccessToken
  = lens _fsAccessToken
      (\ s a -> s{_fsAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
fsUploadType :: Lens' FamilysharingShare (Maybe Text)
fsUploadType
  = lens _fsUploadType (\ s a -> s{_fsUploadType = a})

-- | The volume to share.
fsVolumeId :: Lens' FamilysharingShare (Maybe Text)
fsVolumeId
  = lens _fsVolumeId (\ s a -> s{_fsVolumeId = a})

-- | String to identify the originator of this request.
fsSource :: Lens' FamilysharingShare (Maybe Text)
fsSource = lens _fsSource (\ s a -> s{_fsSource = a})

-- | The docid to share.
fsDocId :: Lens' FamilysharingShare (Maybe Text)
fsDocId = lens _fsDocId (\ s a -> s{_fsDocId = a})

-- | JSONP
fsCallback :: Lens' FamilysharingShare (Maybe Text)
fsCallback
  = lens _fsCallback (\ s a -> s{_fsCallback = a})

instance GoogleRequest FamilysharingShare where
        type Rs FamilysharingShare = Empty
        type Scopes FamilysharingShare =
             '["https://www.googleapis.com/auth/books"]
        requestClient FamilysharingShare'{..}
          = go _fsXgafv _fsUploadProtocol _fsAccessToken
              _fsUploadType
              _fsVolumeId
              _fsSource
              _fsDocId
              _fsCallback
              (Just AltJSON)
              booksService
          where go
                  = buildClient
                      (Proxy :: Proxy FamilysharingShareResource)
                      mempty
