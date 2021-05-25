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
-- Module      : Network.Google.Resource.Books.MyLibrary.Annotations.Insert
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Inserts a new annotation.
--
-- /See:/ <https://code.google.com/apis/books/docs/v1/getting_started.html Books API Reference> for @books.mylibrary.annotations.insert@.
module Network.Google.Resource.Books.MyLibrary.Annotations.Insert
    (
    -- * REST Resource
      MyLibraryAnnotationsInsertResource

    -- * Creating a Request
    , myLibraryAnnotationsInsert
    , MyLibraryAnnotationsInsert

    -- * Request Lenses
    , mlaiXgafv
    , mlaiUploadProtocol
    , mlaiCountry
    , mlaiAccessToken
    , mlaiUploadType
    , mlaiPayload
    , mlaiShowOnlySummaryInResponse
    , mlaiAnnotationId
    , mlaiSource
    , mlaiCallback
    ) where

import Network.Google.Books.Types
import Network.Google.Prelude

-- | A resource alias for @books.mylibrary.annotations.insert@ method which the
-- 'MyLibraryAnnotationsInsert' request conforms to.
type MyLibraryAnnotationsInsertResource =
     "books" :>
       "v1" :>
         "mylibrary" :>
           "annotations" :>
             QueryParam "$.xgafv" Xgafv :>
               QueryParam "upload_protocol" Text :>
                 QueryParam "country" Text :>
                   QueryParam "access_token" Text :>
                     QueryParam "uploadType" Text :>
                       QueryParam "showOnlySummaryInResponse" Bool :>
                         QueryParam "annotationId" Text :>
                           QueryParam "source" Text :>
                             QueryParam "callback" Text :>
                               QueryParam "alt" AltJSON :>
                                 ReqBody '[JSON] Annotation :>
                                   Post '[JSON] Annotation

-- | Inserts a new annotation.
--
-- /See:/ 'myLibraryAnnotationsInsert' smart constructor.
data MyLibraryAnnotationsInsert =
  MyLibraryAnnotationsInsert'
    { _mlaiXgafv :: !(Maybe Xgafv)
    , _mlaiUploadProtocol :: !(Maybe Text)
    , _mlaiCountry :: !(Maybe Text)
    , _mlaiAccessToken :: !(Maybe Text)
    , _mlaiUploadType :: !(Maybe Text)
    , _mlaiPayload :: !Annotation
    , _mlaiShowOnlySummaryInResponse :: !(Maybe Bool)
    , _mlaiAnnotationId :: !(Maybe Text)
    , _mlaiSource :: !(Maybe Text)
    , _mlaiCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'MyLibraryAnnotationsInsert' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mlaiXgafv'
--
-- * 'mlaiUploadProtocol'
--
-- * 'mlaiCountry'
--
-- * 'mlaiAccessToken'
--
-- * 'mlaiUploadType'
--
-- * 'mlaiPayload'
--
-- * 'mlaiShowOnlySummaryInResponse'
--
-- * 'mlaiAnnotationId'
--
-- * 'mlaiSource'
--
-- * 'mlaiCallback'
myLibraryAnnotationsInsert
    :: Annotation -- ^ 'mlaiPayload'
    -> MyLibraryAnnotationsInsert
myLibraryAnnotationsInsert pMlaiPayload_ =
  MyLibraryAnnotationsInsert'
    { _mlaiXgafv = Nothing
    , _mlaiUploadProtocol = Nothing
    , _mlaiCountry = Nothing
    , _mlaiAccessToken = Nothing
    , _mlaiUploadType = Nothing
    , _mlaiPayload = pMlaiPayload_
    , _mlaiShowOnlySummaryInResponse = Nothing
    , _mlaiAnnotationId = Nothing
    , _mlaiSource = Nothing
    , _mlaiCallback = Nothing
    }


-- | V1 error format.
mlaiXgafv :: Lens' MyLibraryAnnotationsInsert (Maybe Xgafv)
mlaiXgafv
  = lens _mlaiXgafv (\ s a -> s{_mlaiXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
mlaiUploadProtocol :: Lens' MyLibraryAnnotationsInsert (Maybe Text)
mlaiUploadProtocol
  = lens _mlaiUploadProtocol
      (\ s a -> s{_mlaiUploadProtocol = a})

-- | ISO-3166-1 code to override the IP-based location.
mlaiCountry :: Lens' MyLibraryAnnotationsInsert (Maybe Text)
mlaiCountry
  = lens _mlaiCountry (\ s a -> s{_mlaiCountry = a})

-- | OAuth access token.
mlaiAccessToken :: Lens' MyLibraryAnnotationsInsert (Maybe Text)
mlaiAccessToken
  = lens _mlaiAccessToken
      (\ s a -> s{_mlaiAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
mlaiUploadType :: Lens' MyLibraryAnnotationsInsert (Maybe Text)
mlaiUploadType
  = lens _mlaiUploadType
      (\ s a -> s{_mlaiUploadType = a})

-- | Multipart request metadata.
mlaiPayload :: Lens' MyLibraryAnnotationsInsert Annotation
mlaiPayload
  = lens _mlaiPayload (\ s a -> s{_mlaiPayload = a})

-- | Requests that only the summary of the specified layer be provided in the
-- response.
mlaiShowOnlySummaryInResponse :: Lens' MyLibraryAnnotationsInsert (Maybe Bool)
mlaiShowOnlySummaryInResponse
  = lens _mlaiShowOnlySummaryInResponse
      (\ s a -> s{_mlaiShowOnlySummaryInResponse = a})

-- | The ID for the annotation to insert.
mlaiAnnotationId :: Lens' MyLibraryAnnotationsInsert (Maybe Text)
mlaiAnnotationId
  = lens _mlaiAnnotationId
      (\ s a -> s{_mlaiAnnotationId = a})

-- | String to identify the originator of this request.
mlaiSource :: Lens' MyLibraryAnnotationsInsert (Maybe Text)
mlaiSource
  = lens _mlaiSource (\ s a -> s{_mlaiSource = a})

-- | JSONP
mlaiCallback :: Lens' MyLibraryAnnotationsInsert (Maybe Text)
mlaiCallback
  = lens _mlaiCallback (\ s a -> s{_mlaiCallback = a})

instance GoogleRequest MyLibraryAnnotationsInsert
         where
        type Rs MyLibraryAnnotationsInsert = Annotation
        type Scopes MyLibraryAnnotationsInsert =
             '["https://www.googleapis.com/auth/books"]
        requestClient MyLibraryAnnotationsInsert'{..}
          = go _mlaiXgafv _mlaiUploadProtocol _mlaiCountry
              _mlaiAccessToken
              _mlaiUploadType
              _mlaiShowOnlySummaryInResponse
              _mlaiAnnotationId
              _mlaiSource
              _mlaiCallback
              (Just AltJSON)
              _mlaiPayload
              booksService
          where go
                  = buildClient
                      (Proxy :: Proxy MyLibraryAnnotationsInsertResource)
                      mempty
