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
-- Module      : Network.Google.Resource.Books.MyLibrary.Annotations.Delete
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes an annotation.
--
-- /See:/ <https://code.google.com/apis/books/docs/v1/getting_started.html Books API Reference> for @books.mylibrary.annotations.delete@.
module Network.Google.Resource.Books.MyLibrary.Annotations.Delete
    (
    -- * REST Resource
      MyLibraryAnnotationsDeleteResource

    -- * Creating a Request
    , myLibraryAnnotationsDelete
    , MyLibraryAnnotationsDelete

    -- * Request Lenses
    , mladXgafv
    , mladUploadProtocol
    , mladAccessToken
    , mladUploadType
    , mladAnnotationId
    , mladSource
    , mladCallback
    ) where

import Network.Google.Books.Types
import Network.Google.Prelude

-- | A resource alias for @books.mylibrary.annotations.delete@ method which the
-- 'MyLibraryAnnotationsDelete' request conforms to.
type MyLibraryAnnotationsDeleteResource =
     "books" :>
       "v1" :>
         "mylibrary" :>
           "annotations" :>
             Capture "annotationId" Text :>
               QueryParam "$.xgafv" Xgafv :>
                 QueryParam "upload_protocol" Text :>
                   QueryParam "access_token" Text :>
                     QueryParam "uploadType" Text :>
                       QueryParam "source" Text :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :> Delete '[JSON] Empty

-- | Deletes an annotation.
--
-- /See:/ 'myLibraryAnnotationsDelete' smart constructor.
data MyLibraryAnnotationsDelete =
  MyLibraryAnnotationsDelete'
    { _mladXgafv :: !(Maybe Xgafv)
    , _mladUploadProtocol :: !(Maybe Text)
    , _mladAccessToken :: !(Maybe Text)
    , _mladUploadType :: !(Maybe Text)
    , _mladAnnotationId :: !Text
    , _mladSource :: !(Maybe Text)
    , _mladCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'MyLibraryAnnotationsDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mladXgafv'
--
-- * 'mladUploadProtocol'
--
-- * 'mladAccessToken'
--
-- * 'mladUploadType'
--
-- * 'mladAnnotationId'
--
-- * 'mladSource'
--
-- * 'mladCallback'
myLibraryAnnotationsDelete
    :: Text -- ^ 'mladAnnotationId'
    -> MyLibraryAnnotationsDelete
myLibraryAnnotationsDelete pMladAnnotationId_ =
  MyLibraryAnnotationsDelete'
    { _mladXgafv = Nothing
    , _mladUploadProtocol = Nothing
    , _mladAccessToken = Nothing
    , _mladUploadType = Nothing
    , _mladAnnotationId = pMladAnnotationId_
    , _mladSource = Nothing
    , _mladCallback = Nothing
    }


-- | V1 error format.
mladXgafv :: Lens' MyLibraryAnnotationsDelete (Maybe Xgafv)
mladXgafv
  = lens _mladXgafv (\ s a -> s{_mladXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
mladUploadProtocol :: Lens' MyLibraryAnnotationsDelete (Maybe Text)
mladUploadProtocol
  = lens _mladUploadProtocol
      (\ s a -> s{_mladUploadProtocol = a})

-- | OAuth access token.
mladAccessToken :: Lens' MyLibraryAnnotationsDelete (Maybe Text)
mladAccessToken
  = lens _mladAccessToken
      (\ s a -> s{_mladAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
mladUploadType :: Lens' MyLibraryAnnotationsDelete (Maybe Text)
mladUploadType
  = lens _mladUploadType
      (\ s a -> s{_mladUploadType = a})

-- | The ID for the annotation to delete.
mladAnnotationId :: Lens' MyLibraryAnnotationsDelete Text
mladAnnotationId
  = lens _mladAnnotationId
      (\ s a -> s{_mladAnnotationId = a})

-- | String to identify the originator of this request.
mladSource :: Lens' MyLibraryAnnotationsDelete (Maybe Text)
mladSource
  = lens _mladSource (\ s a -> s{_mladSource = a})

-- | JSONP
mladCallback :: Lens' MyLibraryAnnotationsDelete (Maybe Text)
mladCallback
  = lens _mladCallback (\ s a -> s{_mladCallback = a})

instance GoogleRequest MyLibraryAnnotationsDelete
         where
        type Rs MyLibraryAnnotationsDelete = Empty
        type Scopes MyLibraryAnnotationsDelete =
             '["https://www.googleapis.com/auth/books"]
        requestClient MyLibraryAnnotationsDelete'{..}
          = go _mladAnnotationId _mladXgafv _mladUploadProtocol
              _mladAccessToken
              _mladUploadType
              _mladSource
              _mladCallback
              (Just AltJSON)
              booksService
          where go
                  = buildClient
                      (Proxy :: Proxy MyLibraryAnnotationsDeleteResource)
                      mempty
