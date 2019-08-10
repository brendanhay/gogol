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
-- Module      : Network.Google.Resource.StreetViewPublish.Photos.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists all the Photos that belong to the user.
-- __Note:__ Recently created photos that are still being indexed are not
-- returned in the response.
--
-- /See:/ <https://developers.google.com/streetview/publish/ Street View Publish API Reference> for @streetviewpublish.photos.list@.
module Network.Google.Resource.StreetViewPublish.Photos.List
    (
    -- * REST Resource
      PhotosListResource

    -- * Creating a Request
    , photosList
    , PhotosList

    -- * Request Lenses
    , plXgafv
    , plLanguageCode
    , plUploadProtocol
    , plAccessToken
    , plUploadType
    , plView
    , plFilter
    , plPageToken
    , plPageSize
    , plCallback
    ) where

import           Network.Google.Prelude
import           Network.Google.StreetViewPublish.Types

-- | A resource alias for @streetviewpublish.photos.list@ method which the
-- 'PhotosList' request conforms to.
type PhotosListResource =
     "v1" :>
       "photos" :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "languageCode" Text :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "view" Text :>
                     QueryParam "filter" Text :>
                       QueryParam "pageToken" Text :>
                         QueryParam "pageSize" (Textual Int32) :>
                           QueryParam "callback" Text :>
                             QueryParam "alt" AltJSON :>
                               Get '[JSON] ListPhotosResponse

-- | Lists all the Photos that belong to the user.
-- __Note:__ Recently created photos that are still being indexed are not
-- returned in the response.
--
-- /See:/ 'photosList' smart constructor.
data PhotosList =
  PhotosList'
    { _plXgafv          :: !(Maybe Xgafv)
    , _plLanguageCode   :: !(Maybe Text)
    , _plUploadProtocol :: !(Maybe Text)
    , _plAccessToken    :: !(Maybe Text)
    , _plUploadType     :: !(Maybe Text)
    , _plView           :: !(Maybe Text)
    , _plFilter         :: !(Maybe Text)
    , _plPageToken      :: !(Maybe Text)
    , _plPageSize       :: !(Maybe (Textual Int32))
    , _plCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'PhotosList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plXgafv'
--
-- * 'plLanguageCode'
--
-- * 'plUploadProtocol'
--
-- * 'plAccessToken'
--
-- * 'plUploadType'
--
-- * 'plView'
--
-- * 'plFilter'
--
-- * 'plPageToken'
--
-- * 'plPageSize'
--
-- * 'plCallback'
photosList
    :: PhotosList
photosList =
  PhotosList'
    { _plXgafv = Nothing
    , _plLanguageCode = Nothing
    , _plUploadProtocol = Nothing
    , _plAccessToken = Nothing
    , _plUploadType = Nothing
    , _plView = Nothing
    , _plFilter = Nothing
    , _plPageToken = Nothing
    , _plPageSize = Nothing
    , _plCallback = Nothing
    }


-- | V1 error format.
plXgafv :: Lens' PhotosList (Maybe Xgafv)
plXgafv = lens _plXgafv (\ s a -> s{_plXgafv = a})

-- | The BCP-47 language code, such as \"en-US\" or \"sr-Latn\". For more
-- information, see
-- http:\/\/www.unicode.org\/reports\/tr35\/#Unicode_locale_identifier. If
-- language_code is unspecified, the user\'s language preference for Google
-- services is used.
plLanguageCode :: Lens' PhotosList (Maybe Text)
plLanguageCode
  = lens _plLanguageCode
      (\ s a -> s{_plLanguageCode = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
plUploadProtocol :: Lens' PhotosList (Maybe Text)
plUploadProtocol
  = lens _plUploadProtocol
      (\ s a -> s{_plUploadProtocol = a})

-- | OAuth access token.
plAccessToken :: Lens' PhotosList (Maybe Text)
plAccessToken
  = lens _plAccessToken
      (\ s a -> s{_plAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
plUploadType :: Lens' PhotosList (Maybe Text)
plUploadType
  = lens _plUploadType (\ s a -> s{_plUploadType = a})

-- | Specifies if a download URL for the photos bytes should be returned in
-- the Photos response.
plView :: Lens' PhotosList (Maybe Text)
plView = lens _plView (\ s a -> s{_plView = a})

-- | The filter expression. For example:
-- \`placeId=ChIJj61dQgK6j4AR4GeTYWZsKWw\`. The only filter supported at
-- the moment is \`placeId\`.
plFilter :: Lens' PhotosList (Maybe Text)
plFilter = lens _plFilter (\ s a -> s{_plFilter = a})

-- | The nextPageToken value returned from a previous ListPhotos request, if
-- any.
plPageToken :: Lens' PhotosList (Maybe Text)
plPageToken
  = lens _plPageToken (\ s a -> s{_plPageToken = a})

-- | The maximum number of photos to return. \`pageSize\` must be
-- non-negative. If \`pageSize\` is zero or is not provided, the default
-- page size of 100 is used. The number of photos returned in the response
-- may be less than \`pageSize\` if the number of photos that belong to the
-- user is less than \`pageSize\`.
plPageSize :: Lens' PhotosList (Maybe Int32)
plPageSize
  = lens _plPageSize (\ s a -> s{_plPageSize = a}) .
      mapping _Coerce

-- | JSONP
plCallback :: Lens' PhotosList (Maybe Text)
plCallback
  = lens _plCallback (\ s a -> s{_plCallback = a})

instance GoogleRequest PhotosList where
        type Rs PhotosList = ListPhotosResponse
        type Scopes PhotosList =
             '["https://www.googleapis.com/auth/streetviewpublish"]
        requestClient PhotosList'{..}
          = go _plXgafv _plLanguageCode _plUploadProtocol
              _plAccessToken
              _plUploadType
              _plView
              _plFilter
              _plPageToken
              _plPageSize
              _plCallback
              (Just AltJSON)
              streetViewPublishService
          where go
                  = buildClient (Proxy :: Proxy PhotosListResource)
                      mempty
