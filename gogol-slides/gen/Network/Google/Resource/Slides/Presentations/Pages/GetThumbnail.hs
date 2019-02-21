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
-- Module      : Network.Google.Resource.Slides.Presentations.Pages.GetThumbnail
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Generates a thumbnail of the latest version of the specified page in the
-- presentation and returns a URL to the thumbnail image. This request
-- counts as an [expensive read request](\/slides\/limits) for quota
-- purposes.
--
-- /See:/ <https://developers.google.com/slides/ Google Slides API Reference> for @slides.presentations.pages.getThumbnail@.
module Network.Google.Resource.Slides.Presentations.Pages.GetThumbnail
    (
    -- * REST Resource
      PresentationsPagesGetThumbnailResource

    -- * Creating a Request
    , presentationsPagesGetThumbnail
    , PresentationsPagesGetThumbnail

    -- * Request Lenses
    , ppgtXgafv
    , ppgtThumbnailPropertiesMimeType
    , ppgtThumbnailPropertiesThumbnailSize
    , ppgtUploadProtocol
    , ppgtAccessToken
    , ppgtPageObjectId
    , ppgtUploadType
    , ppgtPresentationId
    , ppgtCallback
    ) where

import           Network.Google.Prelude
import           Network.Google.Slides.Types

-- | A resource alias for @slides.presentations.pages.getThumbnail@ method which the
-- 'PresentationsPagesGetThumbnail' request conforms to.
type PresentationsPagesGetThumbnailResource =
     "v1" :>
       "presentations" :>
         Capture "presentationId" Text :>
           "pages" :>
             Capture "pageObjectId" Text :>
               "thumbnail" :>
                 QueryParam "$.xgafv" Xgafv :>
                   QueryParam "thumbnailProperties.mimeType" Text :>
                     QueryParam "thumbnailProperties.thumbnailSize" Text
                       :>
                       QueryParam "upload_protocol" Text :>
                         QueryParam "access_token" Text :>
                           QueryParam "uploadType" Text :>
                             QueryParam "callback" Text :>
                               QueryParam "alt" AltJSON :> Get '[JSON] Thumbnail

-- | Generates a thumbnail of the latest version of the specified page in the
-- presentation and returns a URL to the thumbnail image. This request
-- counts as an [expensive read request](\/slides\/limits) for quota
-- purposes.
--
-- /See:/ 'presentationsPagesGetThumbnail' smart constructor.
data PresentationsPagesGetThumbnail =
  PresentationsPagesGetThumbnail'
    { _ppgtXgafv                            :: !(Maybe Xgafv)
    , _ppgtThumbnailPropertiesMimeType      :: !(Maybe Text)
    , _ppgtThumbnailPropertiesThumbnailSize :: !(Maybe Text)
    , _ppgtUploadProtocol                   :: !(Maybe Text)
    , _ppgtAccessToken                      :: !(Maybe Text)
    , _ppgtPageObjectId                     :: !Text
    , _ppgtUploadType                       :: !(Maybe Text)
    , _ppgtPresentationId                   :: !Text
    , _ppgtCallback                         :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'PresentationsPagesGetThumbnail' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ppgtXgafv'
--
-- * 'ppgtThumbnailPropertiesMimeType'
--
-- * 'ppgtThumbnailPropertiesThumbnailSize'
--
-- * 'ppgtUploadProtocol'
--
-- * 'ppgtAccessToken'
--
-- * 'ppgtPageObjectId'
--
-- * 'ppgtUploadType'
--
-- * 'ppgtPresentationId'
--
-- * 'ppgtCallback'
presentationsPagesGetThumbnail
    :: Text -- ^ 'ppgtPageObjectId'
    -> Text -- ^ 'ppgtPresentationId'
    -> PresentationsPagesGetThumbnail
presentationsPagesGetThumbnail pPpgtPageObjectId_ pPpgtPresentationId_ =
  PresentationsPagesGetThumbnail'
    { _ppgtXgafv = Nothing
    , _ppgtThumbnailPropertiesMimeType = Nothing
    , _ppgtThumbnailPropertiesThumbnailSize = Nothing
    , _ppgtUploadProtocol = Nothing
    , _ppgtAccessToken = Nothing
    , _ppgtPageObjectId = pPpgtPageObjectId_
    , _ppgtUploadType = Nothing
    , _ppgtPresentationId = pPpgtPresentationId_
    , _ppgtCallback = Nothing
    }


-- | V1 error format.
ppgtXgafv :: Lens' PresentationsPagesGetThumbnail (Maybe Xgafv)
ppgtXgafv
  = lens _ppgtXgafv (\ s a -> s{_ppgtXgafv = a})

-- | The optional mime type of the thumbnail image. If you don\'t specify the
-- mime type, the default mime type will be PNG.
ppgtThumbnailPropertiesMimeType :: Lens' PresentationsPagesGetThumbnail (Maybe Text)
ppgtThumbnailPropertiesMimeType
  = lens _ppgtThumbnailPropertiesMimeType
      (\ s a -> s{_ppgtThumbnailPropertiesMimeType = a})

-- | The optional thumbnail image size. If you don\'t specify the size, the
-- server chooses a default size of the image.
ppgtThumbnailPropertiesThumbnailSize :: Lens' PresentationsPagesGetThumbnail (Maybe Text)
ppgtThumbnailPropertiesThumbnailSize
  = lens _ppgtThumbnailPropertiesThumbnailSize
      (\ s a ->
         s{_ppgtThumbnailPropertiesThumbnailSize = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
ppgtUploadProtocol :: Lens' PresentationsPagesGetThumbnail (Maybe Text)
ppgtUploadProtocol
  = lens _ppgtUploadProtocol
      (\ s a -> s{_ppgtUploadProtocol = a})

-- | OAuth access token.
ppgtAccessToken :: Lens' PresentationsPagesGetThumbnail (Maybe Text)
ppgtAccessToken
  = lens _ppgtAccessToken
      (\ s a -> s{_ppgtAccessToken = a})

-- | The object ID of the page whose thumbnail to retrieve.
ppgtPageObjectId :: Lens' PresentationsPagesGetThumbnail Text
ppgtPageObjectId
  = lens _ppgtPageObjectId
      (\ s a -> s{_ppgtPageObjectId = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
ppgtUploadType :: Lens' PresentationsPagesGetThumbnail (Maybe Text)
ppgtUploadType
  = lens _ppgtUploadType
      (\ s a -> s{_ppgtUploadType = a})

-- | The ID of the presentation to retrieve.
ppgtPresentationId :: Lens' PresentationsPagesGetThumbnail Text
ppgtPresentationId
  = lens _ppgtPresentationId
      (\ s a -> s{_ppgtPresentationId = a})

-- | JSONP
ppgtCallback :: Lens' PresentationsPagesGetThumbnail (Maybe Text)
ppgtCallback
  = lens _ppgtCallback (\ s a -> s{_ppgtCallback = a})

instance GoogleRequest PresentationsPagesGetThumbnail
         where
        type Rs PresentationsPagesGetThumbnail = Thumbnail
        type Scopes PresentationsPagesGetThumbnail =
             '["https://www.googleapis.com/auth/drive",
               "https://www.googleapis.com/auth/drive.file",
               "https://www.googleapis.com/auth/drive.readonly",
               "https://www.googleapis.com/auth/presentations",
               "https://www.googleapis.com/auth/presentations.readonly"]
        requestClient PresentationsPagesGetThumbnail'{..}
          = go _ppgtPresentationId _ppgtPageObjectId _ppgtXgafv
              _ppgtThumbnailPropertiesMimeType
              _ppgtThumbnailPropertiesThumbnailSize
              _ppgtUploadProtocol
              _ppgtAccessToken
              _ppgtUploadType
              _ppgtCallback
              (Just AltJSON)
              slidesService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy PresentationsPagesGetThumbnailResource)
                      mempty
