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
-- Module      : Network.Google.Resource.AndroidPublisher.Reviews.Get
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets a single review.
--
-- /See:/ <https://developers.google.com/android-publisher Google Play Android Developer API Reference> for @androidpublisher.reviews.get@.
module Network.Google.Resource.AndroidPublisher.Reviews.Get
    (
    -- * REST Resource
      ReviewsGetResource

    -- * Creating a Request
    , reviewsGet
    , ReviewsGet

    -- * Request Lenses
    , rgXgafv
    , rgReviewId
    , rgUploadProtocol
    , rgPackageName
    , rgAccessToken
    , rgUploadType
    , rgTranslationLanguage
    , rgCallback
    ) where

import Network.Google.AndroidPublisher.Types
import Network.Google.Prelude

-- | A resource alias for @androidpublisher.reviews.get@ method which the
-- 'ReviewsGet' request conforms to.
type ReviewsGetResource =
     "androidpublisher" :>
       "v3" :>
         "applications" :>
           Capture "packageName" Text :>
             "reviews" :>
               Capture "reviewId" Text :>
                 QueryParam "$.xgafv" Xgafv :>
                   QueryParam "upload_protocol" Text :>
                     QueryParam "access_token" Text :>
                       QueryParam "uploadType" Text :>
                         QueryParam "translationLanguage" Text :>
                           QueryParam "callback" Text :>
                             QueryParam "alt" AltJSON :> Get '[JSON] Review

-- | Gets a single review.
--
-- /See:/ 'reviewsGet' smart constructor.
data ReviewsGet =
  ReviewsGet'
    { _rgXgafv :: !(Maybe Xgafv)
    , _rgReviewId :: !Text
    , _rgUploadProtocol :: !(Maybe Text)
    , _rgPackageName :: !Text
    , _rgAccessToken :: !(Maybe Text)
    , _rgUploadType :: !(Maybe Text)
    , _rgTranslationLanguage :: !(Maybe Text)
    , _rgCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ReviewsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rgXgafv'
--
-- * 'rgReviewId'
--
-- * 'rgUploadProtocol'
--
-- * 'rgPackageName'
--
-- * 'rgAccessToken'
--
-- * 'rgUploadType'
--
-- * 'rgTranslationLanguage'
--
-- * 'rgCallback'
reviewsGet
    :: Text -- ^ 'rgReviewId'
    -> Text -- ^ 'rgPackageName'
    -> ReviewsGet
reviewsGet pRgReviewId_ pRgPackageName_ =
  ReviewsGet'
    { _rgXgafv = Nothing
    , _rgReviewId = pRgReviewId_
    , _rgUploadProtocol = Nothing
    , _rgPackageName = pRgPackageName_
    , _rgAccessToken = Nothing
    , _rgUploadType = Nothing
    , _rgTranslationLanguage = Nothing
    , _rgCallback = Nothing
    }


-- | V1 error format.
rgXgafv :: Lens' ReviewsGet (Maybe Xgafv)
rgXgafv = lens _rgXgafv (\ s a -> s{_rgXgafv = a})

-- | Unique identifier for a review.
rgReviewId :: Lens' ReviewsGet Text
rgReviewId
  = lens _rgReviewId (\ s a -> s{_rgReviewId = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
rgUploadProtocol :: Lens' ReviewsGet (Maybe Text)
rgUploadProtocol
  = lens _rgUploadProtocol
      (\ s a -> s{_rgUploadProtocol = a})

-- | Package name of the app.
rgPackageName :: Lens' ReviewsGet Text
rgPackageName
  = lens _rgPackageName
      (\ s a -> s{_rgPackageName = a})

-- | OAuth access token.
rgAccessToken :: Lens' ReviewsGet (Maybe Text)
rgAccessToken
  = lens _rgAccessToken
      (\ s a -> s{_rgAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
rgUploadType :: Lens' ReviewsGet (Maybe Text)
rgUploadType
  = lens _rgUploadType (\ s a -> s{_rgUploadType = a})

-- | Language localization code.
rgTranslationLanguage :: Lens' ReviewsGet (Maybe Text)
rgTranslationLanguage
  = lens _rgTranslationLanguage
      (\ s a -> s{_rgTranslationLanguage = a})

-- | JSONP
rgCallback :: Lens' ReviewsGet (Maybe Text)
rgCallback
  = lens _rgCallback (\ s a -> s{_rgCallback = a})

instance GoogleRequest ReviewsGet where
        type Rs ReviewsGet = Review
        type Scopes ReviewsGet =
             '["https://www.googleapis.com/auth/androidpublisher"]
        requestClient ReviewsGet'{..}
          = go _rgPackageName _rgReviewId _rgXgafv
              _rgUploadProtocol
              _rgAccessToken
              _rgUploadType
              _rgTranslationLanguage
              _rgCallback
              (Just AltJSON)
              androidPublisherService
          where go
                  = buildClient (Proxy :: Proxy ReviewsGetResource)
                      mempty
