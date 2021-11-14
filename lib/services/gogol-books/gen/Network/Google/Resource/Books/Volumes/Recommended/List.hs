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
-- Module      : Network.Google.Resource.Books.Volumes.Recommended.List
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Return a list of recommended books for the current user.
--
-- /See:/ <https://code.google.com/apis/books/docs/v1/getting_started.html Books API Reference> for @books.volumes.recommended.list@.
module Network.Google.Resource.Books.Volumes.Recommended.List
    (
    -- * REST Resource
      VolumesRecommendedListResource

    -- * Creating a Request
    , volumesRecommendedList
    , VolumesRecommendedList

    -- * Request Lenses
    , vrlXgafv
    , vrlUploadProtocol
    , vrlLocale
    , vrlAccessToken
    , vrlMaxAllowedMaturityRating
    , vrlUploadType
    , vrlSource
    , vrlCallback
    ) where

import Network.Google.Books.Types
import Network.Google.Prelude

-- | A resource alias for @books.volumes.recommended.list@ method which the
-- 'VolumesRecommendedList' request conforms to.
type VolumesRecommendedListResource =
     "books" :>
       "v1" :>
         "volumes" :>
           "recommended" :>
             QueryParam "$.xgafv" Xgafv :>
               QueryParam "upload_protocol" Text :>
                 QueryParam "locale" Text :>
                   QueryParam "access_token" Text :>
                     QueryParam "maxAllowedMaturityRating"
                       VolumesRecommendedListMaxAllowedMaturityRating
                       :>
                       QueryParam "uploadType" Text :>
                         QueryParam "source" Text :>
                           QueryParam "callback" Text :>
                             QueryParam "alt" AltJSON :> Get '[JSON] Volumes

-- | Return a list of recommended books for the current user.
--
-- /See:/ 'volumesRecommendedList' smart constructor.
data VolumesRecommendedList =
  VolumesRecommendedList'
    { _vrlXgafv :: !(Maybe Xgafv)
    , _vrlUploadProtocol :: !(Maybe Text)
    , _vrlLocale :: !(Maybe Text)
    , _vrlAccessToken :: !(Maybe Text)
    , _vrlMaxAllowedMaturityRating :: !(Maybe VolumesRecommendedListMaxAllowedMaturityRating)
    , _vrlUploadType :: !(Maybe Text)
    , _vrlSource :: !(Maybe Text)
    , _vrlCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'VolumesRecommendedList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vrlXgafv'
--
-- * 'vrlUploadProtocol'
--
-- * 'vrlLocale'
--
-- * 'vrlAccessToken'
--
-- * 'vrlMaxAllowedMaturityRating'
--
-- * 'vrlUploadType'
--
-- * 'vrlSource'
--
-- * 'vrlCallback'
volumesRecommendedList
    :: VolumesRecommendedList
volumesRecommendedList =
  VolumesRecommendedList'
    { _vrlXgafv = Nothing
    , _vrlUploadProtocol = Nothing
    , _vrlLocale = Nothing
    , _vrlAccessToken = Nothing
    , _vrlMaxAllowedMaturityRating = Nothing
    , _vrlUploadType = Nothing
    , _vrlSource = Nothing
    , _vrlCallback = Nothing
    }


-- | V1 error format.
vrlXgafv :: Lens' VolumesRecommendedList (Maybe Xgafv)
vrlXgafv = lens _vrlXgafv (\ s a -> s{_vrlXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
vrlUploadProtocol :: Lens' VolumesRecommendedList (Maybe Text)
vrlUploadProtocol
  = lens _vrlUploadProtocol
      (\ s a -> s{_vrlUploadProtocol = a})

-- | ISO-639-1 language and ISO-3166-1 country code. Ex: \'en_US\'. Used for
-- generating recommendations.
vrlLocale :: Lens' VolumesRecommendedList (Maybe Text)
vrlLocale
  = lens _vrlLocale (\ s a -> s{_vrlLocale = a})

-- | OAuth access token.
vrlAccessToken :: Lens' VolumesRecommendedList (Maybe Text)
vrlAccessToken
  = lens _vrlAccessToken
      (\ s a -> s{_vrlAccessToken = a})

-- | The maximum allowed maturity rating of returned recommendations. Books
-- with a higher maturity rating are filtered out.
vrlMaxAllowedMaturityRating :: Lens' VolumesRecommendedList (Maybe VolumesRecommendedListMaxAllowedMaturityRating)
vrlMaxAllowedMaturityRating
  = lens _vrlMaxAllowedMaturityRating
      (\ s a -> s{_vrlMaxAllowedMaturityRating = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
vrlUploadType :: Lens' VolumesRecommendedList (Maybe Text)
vrlUploadType
  = lens _vrlUploadType
      (\ s a -> s{_vrlUploadType = a})

-- | String to identify the originator of this request.
vrlSource :: Lens' VolumesRecommendedList (Maybe Text)
vrlSource
  = lens _vrlSource (\ s a -> s{_vrlSource = a})

-- | JSONP
vrlCallback :: Lens' VolumesRecommendedList (Maybe Text)
vrlCallback
  = lens _vrlCallback (\ s a -> s{_vrlCallback = a})

instance GoogleRequest VolumesRecommendedList where
        type Rs VolumesRecommendedList = Volumes
        type Scopes VolumesRecommendedList =
             '["https://www.googleapis.com/auth/books"]
        requestClient VolumesRecommendedList'{..}
          = go _vrlXgafv _vrlUploadProtocol _vrlLocale
              _vrlAccessToken
              _vrlMaxAllowedMaturityRating
              _vrlUploadType
              _vrlSource
              _vrlCallback
              (Just AltJSON)
              booksService
          where go
                  = buildClient
                      (Proxy :: Proxy VolumesRecommendedListResource)
                      mempty
