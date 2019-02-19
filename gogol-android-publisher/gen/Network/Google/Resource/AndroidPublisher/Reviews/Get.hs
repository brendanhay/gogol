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
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns a single review.
--
-- /See:/ <https://developers.google.com/android-publisher Google Play Developer API Reference> for @androidpublisher.reviews.get@.
module Network.Google.Resource.AndroidPublisher.Reviews.Get
    (
    -- * REST Resource
      ReviewsGetResource

    -- * Creating a Request
    , reviewsGet
    , ReviewsGet

    -- * Request Lenses
    , rgReviewId
    , rgPackageName
    , rgTranslationLanguage
    ) where

import           Network.Google.AndroidPublisher.Types
import           Network.Google.Prelude

-- | A resource alias for @androidpublisher.reviews.get@ method which the
-- 'ReviewsGet' request conforms to.
type ReviewsGetResource =
     "androidpublisher" :>
       "v3" :>
         "applications" :>
           Capture "packageName" Text :>
             "reviews" :>
               Capture "reviewId" Text :>
                 QueryParam "translationLanguage" Text :>
                   QueryParam "alt" AltJSON :> Get '[JSON] Review

-- | Returns a single review.
--
-- /See:/ 'reviewsGet' smart constructor.
data ReviewsGet =
  ReviewsGet'
    { _rgReviewId            :: !Text
    , _rgPackageName         :: !Text
    , _rgTranslationLanguage :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'ReviewsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rgReviewId'
--
-- * 'rgPackageName'
--
-- * 'rgTranslationLanguage'
reviewsGet
    :: Text -- ^ 'rgReviewId'
    -> Text -- ^ 'rgPackageName'
    -> ReviewsGet
reviewsGet pRgReviewId_ pRgPackageName_ =
  ReviewsGet'
    { _rgReviewId = pRgReviewId_
    , _rgPackageName = pRgPackageName_
    , _rgTranslationLanguage = Nothing
    }

rgReviewId :: Lens' ReviewsGet Text
rgReviewId
  = lens _rgReviewId (\ s a -> s{_rgReviewId = a})

-- | Unique identifier for the Android app for which we want reviews; for
-- example, \"com.spiffygame\".
rgPackageName :: Lens' ReviewsGet Text
rgPackageName
  = lens _rgPackageName
      (\ s a -> s{_rgPackageName = a})

rgTranslationLanguage :: Lens' ReviewsGet (Maybe Text)
rgTranslationLanguage
  = lens _rgTranslationLanguage
      (\ s a -> s{_rgTranslationLanguage = a})

instance GoogleRequest ReviewsGet where
        type Rs ReviewsGet = Review
        type Scopes ReviewsGet =
             '["https://www.googleapis.com/auth/androidpublisher"]
        requestClient ReviewsGet'{..}
          = go _rgPackageName _rgReviewId
              _rgTranslationLanguage
              (Just AltJSON)
              androidPublisherService
          where go
                  = buildClient (Proxy :: Proxy ReviewsGetResource)
                      mempty
