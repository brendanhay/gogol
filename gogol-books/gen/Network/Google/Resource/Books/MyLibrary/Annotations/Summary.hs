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
-- Module      : Network.Google.Resource.Books.MyLibrary.Annotations.Summary
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the summary of specified layers.
--
-- /See:/ <https://code.google.com/apis/books/docs/v1/getting_started.html Books API Reference> for @books.mylibrary.annotations.summary@.
module Network.Google.Resource.Books.MyLibrary.Annotations.Summary
    (
    -- * REST Resource
      MyLibraryAnnotationsSummaryResource

    -- * Creating a Request
    , myLibraryAnnotationsSummary
    , MyLibraryAnnotationsSummary

    -- * Request Lenses
    , mlasXgafv
    , mlasUploadProtocol
    , mlasAccessToken
    , mlasUploadType
    , mlasLayerIds
    , mlasVolumeId
    , mlasCallback
    ) where

import Network.Google.Books.Types
import Network.Google.Prelude

-- | A resource alias for @books.mylibrary.annotations.summary@ method which the
-- 'MyLibraryAnnotationsSummary' request conforms to.
type MyLibraryAnnotationsSummaryResource =
     "books" :>
       "v1" :>
         "mylibrary" :>
           "annotations" :>
             "summary" :>
               QueryParams "layerIds" Text :>
                 QueryParam "volumeId" Text :>
                   QueryParam "$.xgafv" Xgafv :>
                     QueryParam "upload_protocol" Text :>
                       QueryParam "access_token" Text :>
                         QueryParam "uploadType" Text :>
                           QueryParam "callback" Text :>
                             QueryParam "alt" AltJSON :>
                               Post '[JSON] AnnotationsSummary

-- | Gets the summary of specified layers.
--
-- /See:/ 'myLibraryAnnotationsSummary' smart constructor.
data MyLibraryAnnotationsSummary =
  MyLibraryAnnotationsSummary'
    { _mlasXgafv :: !(Maybe Xgafv)
    , _mlasUploadProtocol :: !(Maybe Text)
    , _mlasAccessToken :: !(Maybe Text)
    , _mlasUploadType :: !(Maybe Text)
    , _mlasLayerIds :: ![Text]
    , _mlasVolumeId :: !Text
    , _mlasCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'MyLibraryAnnotationsSummary' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mlasXgafv'
--
-- * 'mlasUploadProtocol'
--
-- * 'mlasAccessToken'
--
-- * 'mlasUploadType'
--
-- * 'mlasLayerIds'
--
-- * 'mlasVolumeId'
--
-- * 'mlasCallback'
myLibraryAnnotationsSummary
    :: [Text] -- ^ 'mlasLayerIds'
    -> Text -- ^ 'mlasVolumeId'
    -> MyLibraryAnnotationsSummary
myLibraryAnnotationsSummary pMlasLayerIds_ pMlasVolumeId_ =
  MyLibraryAnnotationsSummary'
    { _mlasXgafv = Nothing
    , _mlasUploadProtocol = Nothing
    , _mlasAccessToken = Nothing
    , _mlasUploadType = Nothing
    , _mlasLayerIds = _Coerce # pMlasLayerIds_
    , _mlasVolumeId = pMlasVolumeId_
    , _mlasCallback = Nothing
    }


-- | V1 error format.
mlasXgafv :: Lens' MyLibraryAnnotationsSummary (Maybe Xgafv)
mlasXgafv
  = lens _mlasXgafv (\ s a -> s{_mlasXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
mlasUploadProtocol :: Lens' MyLibraryAnnotationsSummary (Maybe Text)
mlasUploadProtocol
  = lens _mlasUploadProtocol
      (\ s a -> s{_mlasUploadProtocol = a})

-- | OAuth access token.
mlasAccessToken :: Lens' MyLibraryAnnotationsSummary (Maybe Text)
mlasAccessToken
  = lens _mlasAccessToken
      (\ s a -> s{_mlasAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
mlasUploadType :: Lens' MyLibraryAnnotationsSummary (Maybe Text)
mlasUploadType
  = lens _mlasUploadType
      (\ s a -> s{_mlasUploadType = a})

-- | Array of layer IDs to get the summary for.
mlasLayerIds :: Lens' MyLibraryAnnotationsSummary [Text]
mlasLayerIds
  = lens _mlasLayerIds (\ s a -> s{_mlasLayerIds = a})
      . _Coerce

-- | Volume id to get the summary for.
mlasVolumeId :: Lens' MyLibraryAnnotationsSummary Text
mlasVolumeId
  = lens _mlasVolumeId (\ s a -> s{_mlasVolumeId = a})

-- | JSONP
mlasCallback :: Lens' MyLibraryAnnotationsSummary (Maybe Text)
mlasCallback
  = lens _mlasCallback (\ s a -> s{_mlasCallback = a})

instance GoogleRequest MyLibraryAnnotationsSummary
         where
        type Rs MyLibraryAnnotationsSummary =
             AnnotationsSummary
        type Scopes MyLibraryAnnotationsSummary =
             '["https://www.googleapis.com/auth/books"]
        requestClient MyLibraryAnnotationsSummary'{..}
          = go _mlasLayerIds (Just _mlasVolumeId) _mlasXgafv
              _mlasUploadProtocol
              _mlasAccessToken
              _mlasUploadType
              _mlasCallback
              (Just AltJSON)
              booksService
          where go
                  = buildClient
                      (Proxy :: Proxy MyLibraryAnnotationsSummaryResource)
                      mempty
