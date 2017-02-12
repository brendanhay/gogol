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
-- Module      : Network.Google.Resource.AndroidPublisher.Reviews.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns a list of reviews.
--
-- /See:/ <https://developers.google.com/android-publisher Google Play Developer API Reference> for @androidpublisher.reviews.list@.
module Network.Google.Resource.AndroidPublisher.Reviews.List
    (
    -- * REST Resource
      ReviewsListResource

    -- * Creating a Request
    , reviewsList
    , ReviewsList

    -- * Request Lenses
    , rlPackageName
    , rlToken
    , rlTranslationLanguage
    , rlStartIndex
    , rlMaxResults
    ) where

import           Network.Google.AndroidPublisher.Types
import           Network.Google.Prelude

-- | A resource alias for @androidpublisher.reviews.list@ method which the
-- 'ReviewsList' request conforms to.
type ReviewsListResource =
     "androidpublisher" :>
       "v2" :>
         "applications" :>
           Capture "packageName" Text :>
             "reviews" :>
               QueryParam "token" Text :>
                 QueryParam "translationLanguage" Text :>
                   QueryParam "startIndex" (Textual Word32) :>
                     QueryParam "maxResults" (Textual Word32) :>
                       QueryParam "alt" AltJSON :>
                         Get '[JSON] ReviewsListResponse

-- | Returns a list of reviews.
--
-- /See:/ 'reviewsList' smart constructor.
data ReviewsList = ReviewsList'
    { _rlPackageName         :: !Text
    , _rlToken               :: !(Maybe Text)
    , _rlTranslationLanguage :: !(Maybe Text)
    , _rlStartIndex          :: !(Maybe (Textual Word32))
    , _rlMaxResults          :: !(Maybe (Textual Word32))
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ReviewsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rlPackageName'
--
-- * 'rlToken'
--
-- * 'rlTranslationLanguage'
--
-- * 'rlStartIndex'
--
-- * 'rlMaxResults'
reviewsList
    :: Text -- ^ 'rlPackageName'
    -> ReviewsList
reviewsList pRlPackageName_ =
    ReviewsList'
    { _rlPackageName = pRlPackageName_
    , _rlToken = Nothing
    , _rlTranslationLanguage = Nothing
    , _rlStartIndex = Nothing
    , _rlMaxResults = Nothing
    }

-- | Unique identifier for the Android app for which we want reviews; for
-- example, \"com.spiffygame\".
rlPackageName :: Lens' ReviewsList Text
rlPackageName
  = lens _rlPackageName
      (\ s a -> s{_rlPackageName = a})

rlToken :: Lens' ReviewsList (Maybe Text)
rlToken = lens _rlToken (\ s a -> s{_rlToken = a})

rlTranslationLanguage :: Lens' ReviewsList (Maybe Text)
rlTranslationLanguage
  = lens _rlTranslationLanguage
      (\ s a -> s{_rlTranslationLanguage = a})

rlStartIndex :: Lens' ReviewsList (Maybe Word32)
rlStartIndex
  = lens _rlStartIndex (\ s a -> s{_rlStartIndex = a})
      . mapping _Coerce

rlMaxResults :: Lens' ReviewsList (Maybe Word32)
rlMaxResults
  = lens _rlMaxResults (\ s a -> s{_rlMaxResults = a})
      . mapping _Coerce

instance GoogleRequest ReviewsList where
        type Rs ReviewsList = ReviewsListResponse
        type Scopes ReviewsList =
             '["https://www.googleapis.com/auth/androidpublisher"]
        requestClient ReviewsList'{..}
          = go _rlPackageName _rlToken _rlTranslationLanguage
              _rlStartIndex
              _rlMaxResults
              (Just AltJSON)
              androidPublisherService
          where go
                  = buildClient (Proxy :: Proxy ReviewsListResource)
                      mempty
