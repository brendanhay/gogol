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
-- Module      : Network.Google.Resource.Books.MyLibrary.Annotations.Update
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates an existing annotation.
--
-- /See:/ <https://code.google.com/apis/books/docs/v1/getting_started.html Books API Reference> for @books.mylibrary.annotations.update@.
module Network.Google.Resource.Books.MyLibrary.Annotations.Update
    (
    -- * REST Resource
      MyLibraryAnnotationsUpdateResource

    -- * Creating a Request
    , myLibraryAnnotationsUpdate
    , MyLibraryAnnotationsUpdate

    -- * Request Lenses
    , mlauXgafv
    , mlauUploadProtocol
    , mlauAccessToken
    , mlauUploadType
    , mlauPayload
    , mlauAnnotationId
    , mlauSource
    , mlauCallback
    ) where

import Network.Google.Books.Types
import Network.Google.Prelude

-- | A resource alias for @books.mylibrary.annotations.update@ method which the
-- 'MyLibraryAnnotationsUpdate' request conforms to.
type MyLibraryAnnotationsUpdateResource =
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
                           QueryParam "alt" AltJSON :>
                             ReqBody '[JSON] Annotation :>
                               Put '[JSON] Annotation

-- | Updates an existing annotation.
--
-- /See:/ 'myLibraryAnnotationsUpdate' smart constructor.
data MyLibraryAnnotationsUpdate =
  MyLibraryAnnotationsUpdate'
    { _mlauXgafv :: !(Maybe Xgafv)
    , _mlauUploadProtocol :: !(Maybe Text)
    , _mlauAccessToken :: !(Maybe Text)
    , _mlauUploadType :: !(Maybe Text)
    , _mlauPayload :: !Annotation
    , _mlauAnnotationId :: !Text
    , _mlauSource :: !(Maybe Text)
    , _mlauCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'MyLibraryAnnotationsUpdate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mlauXgafv'
--
-- * 'mlauUploadProtocol'
--
-- * 'mlauAccessToken'
--
-- * 'mlauUploadType'
--
-- * 'mlauPayload'
--
-- * 'mlauAnnotationId'
--
-- * 'mlauSource'
--
-- * 'mlauCallback'
myLibraryAnnotationsUpdate
    :: Annotation -- ^ 'mlauPayload'
    -> Text -- ^ 'mlauAnnotationId'
    -> MyLibraryAnnotationsUpdate
myLibraryAnnotationsUpdate pMlauPayload_ pMlauAnnotationId_ =
  MyLibraryAnnotationsUpdate'
    { _mlauXgafv = Nothing
    , _mlauUploadProtocol = Nothing
    , _mlauAccessToken = Nothing
    , _mlauUploadType = Nothing
    , _mlauPayload = pMlauPayload_
    , _mlauAnnotationId = pMlauAnnotationId_
    , _mlauSource = Nothing
    , _mlauCallback = Nothing
    }


-- | V1 error format.
mlauXgafv :: Lens' MyLibraryAnnotationsUpdate (Maybe Xgafv)
mlauXgafv
  = lens _mlauXgafv (\ s a -> s{_mlauXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
mlauUploadProtocol :: Lens' MyLibraryAnnotationsUpdate (Maybe Text)
mlauUploadProtocol
  = lens _mlauUploadProtocol
      (\ s a -> s{_mlauUploadProtocol = a})

-- | OAuth access token.
mlauAccessToken :: Lens' MyLibraryAnnotationsUpdate (Maybe Text)
mlauAccessToken
  = lens _mlauAccessToken
      (\ s a -> s{_mlauAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
mlauUploadType :: Lens' MyLibraryAnnotationsUpdate (Maybe Text)
mlauUploadType
  = lens _mlauUploadType
      (\ s a -> s{_mlauUploadType = a})

-- | Multipart request metadata.
mlauPayload :: Lens' MyLibraryAnnotationsUpdate Annotation
mlauPayload
  = lens _mlauPayload (\ s a -> s{_mlauPayload = a})

-- | The ID for the annotation to update.
mlauAnnotationId :: Lens' MyLibraryAnnotationsUpdate Text
mlauAnnotationId
  = lens _mlauAnnotationId
      (\ s a -> s{_mlauAnnotationId = a})

-- | String to identify the originator of this request.
mlauSource :: Lens' MyLibraryAnnotationsUpdate (Maybe Text)
mlauSource
  = lens _mlauSource (\ s a -> s{_mlauSource = a})

-- | JSONP
mlauCallback :: Lens' MyLibraryAnnotationsUpdate (Maybe Text)
mlauCallback
  = lens _mlauCallback (\ s a -> s{_mlauCallback = a})

instance GoogleRequest MyLibraryAnnotationsUpdate
         where
        type Rs MyLibraryAnnotationsUpdate = Annotation
        type Scopes MyLibraryAnnotationsUpdate =
             '["https://www.googleapis.com/auth/books"]
        requestClient MyLibraryAnnotationsUpdate'{..}
          = go _mlauAnnotationId _mlauXgafv _mlauUploadProtocol
              _mlauAccessToken
              _mlauUploadType
              _mlauSource
              _mlauCallback
              (Just AltJSON)
              _mlauPayload
              booksService
          where go
                  = buildClient
                      (Proxy :: Proxy MyLibraryAnnotationsUpdateResource)
                      mempty
