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
-- Lists all reviews.
--
-- /See:/ <https://developers.google.com/android-publisher Google Play Android Developer API Reference> for @androidpublisher.reviews.list@.
module Network.Google.Resource.AndroidPublisher.Reviews.List
    (
    -- * REST Resource
      ReviewsListResource

    -- * Creating a Request
    , reviewsList
    , ReviewsList

    -- * Request Lenses
    , rlXgafv
    , rlUploadProtocol
    , rlPackageName
    , rlAccessToken
    , rlToken
    , rlUploadType
    , rlTranslationLanguage
    , rlStartIndex
    , rlMaxResults
    , rlCallback
    ) where

import Network.Google.AndroidPublisher.Types
import Network.Google.Prelude

-- | A resource alias for @androidpublisher.reviews.list@ method which the
-- 'ReviewsList' request conforms to.
type ReviewsListResource =
     "androidpublisher" :>
       "v3" :>
         "applications" :>
           Capture "packageName" Text :>
             "reviews" :>
               QueryParam "$.xgafv" Xgafv :>
                 QueryParam "upload_protocol" Text :>
                   QueryParam "access_token" Text :>
                     QueryParam "token" Text :>
                       QueryParam "uploadType" Text :>
                         QueryParam "translationLanguage" Text :>
                           QueryParam "startIndex" (Textual Word32) :>
                             QueryParam "maxResults" (Textual Word32) :>
                               QueryParam "callback" Text :>
                                 QueryParam "alt" AltJSON :>
                                   Get '[JSON] ReviewsListResponse

-- | Lists all reviews.
--
-- /See:/ 'reviewsList' smart constructor.
data ReviewsList =
  ReviewsList'
    { _rlXgafv :: !(Maybe Xgafv)
    , _rlUploadProtocol :: !(Maybe Text)
    , _rlPackageName :: !Text
    , _rlAccessToken :: !(Maybe Text)
    , _rlToken :: !(Maybe Text)
    , _rlUploadType :: !(Maybe Text)
    , _rlTranslationLanguage :: !(Maybe Text)
    , _rlStartIndex :: !(Maybe (Textual Word32))
    , _rlMaxResults :: !(Maybe (Textual Word32))
    , _rlCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ReviewsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rlXgafv'
--
-- * 'rlUploadProtocol'
--
-- * 'rlPackageName'
--
-- * 'rlAccessToken'
--
-- * 'rlToken'
--
-- * 'rlUploadType'
--
-- * 'rlTranslationLanguage'
--
-- * 'rlStartIndex'
--
-- * 'rlMaxResults'
--
-- * 'rlCallback'
reviewsList
    :: Text -- ^ 'rlPackageName'
    -> ReviewsList
reviewsList pRlPackageName_ =
  ReviewsList'
    { _rlXgafv = Nothing
    , _rlUploadProtocol = Nothing
    , _rlPackageName = pRlPackageName_
    , _rlAccessToken = Nothing
    , _rlToken = Nothing
    , _rlUploadType = Nothing
    , _rlTranslationLanguage = Nothing
    , _rlStartIndex = Nothing
    , _rlMaxResults = Nothing
    , _rlCallback = Nothing
    }


-- | V1 error format.
rlXgafv :: Lens' ReviewsList (Maybe Xgafv)
rlXgafv = lens _rlXgafv (\ s a -> s{_rlXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
rlUploadProtocol :: Lens' ReviewsList (Maybe Text)
rlUploadProtocol
  = lens _rlUploadProtocol
      (\ s a -> s{_rlUploadProtocol = a})

-- | Package name of the app.
rlPackageName :: Lens' ReviewsList Text
rlPackageName
  = lens _rlPackageName
      (\ s a -> s{_rlPackageName = a})

-- | OAuth access token.
rlAccessToken :: Lens' ReviewsList (Maybe Text)
rlAccessToken
  = lens _rlAccessToken
      (\ s a -> s{_rlAccessToken = a})

-- | Pagination token. If empty, list starts at the first review.
rlToken :: Lens' ReviewsList (Maybe Text)
rlToken = lens _rlToken (\ s a -> s{_rlToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
rlUploadType :: Lens' ReviewsList (Maybe Text)
rlUploadType
  = lens _rlUploadType (\ s a -> s{_rlUploadType = a})

-- | Language localization code.
rlTranslationLanguage :: Lens' ReviewsList (Maybe Text)
rlTranslationLanguage
  = lens _rlTranslationLanguage
      (\ s a -> s{_rlTranslationLanguage = a})

-- | The index of the first element to return.
rlStartIndex :: Lens' ReviewsList (Maybe Word32)
rlStartIndex
  = lens _rlStartIndex (\ s a -> s{_rlStartIndex = a})
      . mapping _Coerce

-- | How many results the list operation should return.
rlMaxResults :: Lens' ReviewsList (Maybe Word32)
rlMaxResults
  = lens _rlMaxResults (\ s a -> s{_rlMaxResults = a})
      . mapping _Coerce

-- | JSONP
rlCallback :: Lens' ReviewsList (Maybe Text)
rlCallback
  = lens _rlCallback (\ s a -> s{_rlCallback = a})

instance GoogleRequest ReviewsList where
        type Rs ReviewsList = ReviewsListResponse
        type Scopes ReviewsList =
             '["https://www.googleapis.com/auth/androidpublisher"]
        requestClient ReviewsList'{..}
          = go _rlPackageName _rlXgafv _rlUploadProtocol
              _rlAccessToken
              _rlToken
              _rlUploadType
              _rlTranslationLanguage
              _rlStartIndex
              _rlMaxResults
              _rlCallback
              (Just AltJSON)
              androidPublisherService
          where go
                  = buildClient (Proxy :: Proxy ReviewsListResource)
                      mempty
