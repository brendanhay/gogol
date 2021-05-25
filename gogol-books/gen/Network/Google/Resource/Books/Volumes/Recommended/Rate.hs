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
-- Module      : Network.Google.Resource.Books.Volumes.Recommended.Rate
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Rate a recommended book for the current user.
--
-- /See:/ <https://code.google.com/apis/books/docs/v1/getting_started.html Books API Reference> for @books.volumes.recommended.rate@.
module Network.Google.Resource.Books.Volumes.Recommended.Rate
    (
    -- * REST Resource
      VolumesRecommendedRateResource

    -- * Creating a Request
    , volumesRecommendedRate
    , VolumesRecommendedRate

    -- * Request Lenses
    , vrrXgafv
    , vrrRating
    , vrrUploadProtocol
    , vrrLocale
    , vrrAccessToken
    , vrrUploadType
    , vrrVolumeId
    , vrrSource
    , vrrCallback
    ) where

import Network.Google.Books.Types
import Network.Google.Prelude

-- | A resource alias for @books.volumes.recommended.rate@ method which the
-- 'VolumesRecommendedRate' request conforms to.
type VolumesRecommendedRateResource =
     "books" :>
       "v1" :>
         "volumes" :>
           "recommended" :>
             "rate" :>
               QueryParam "rating" VolumesRecommendedRateRating :>
                 QueryParam "volumeId" Text :>
                   QueryParam "$.xgafv" Xgafv :>
                     QueryParam "upload_protocol" Text :>
                       QueryParam "locale" Text :>
                         QueryParam "access_token" Text :>
                           QueryParam "uploadType" Text :>
                             QueryParam "source" Text :>
                               QueryParam "callback" Text :>
                                 QueryParam "alt" AltJSON :>
                                   Post '[JSON]
                                     BooksVolumesRecommendedRateResponse

-- | Rate a recommended book for the current user.
--
-- /See:/ 'volumesRecommendedRate' smart constructor.
data VolumesRecommendedRate =
  VolumesRecommendedRate'
    { _vrrXgafv :: !(Maybe Xgafv)
    , _vrrRating :: !VolumesRecommendedRateRating
    , _vrrUploadProtocol :: !(Maybe Text)
    , _vrrLocale :: !(Maybe Text)
    , _vrrAccessToken :: !(Maybe Text)
    , _vrrUploadType :: !(Maybe Text)
    , _vrrVolumeId :: !Text
    , _vrrSource :: !(Maybe Text)
    , _vrrCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'VolumesRecommendedRate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vrrXgafv'
--
-- * 'vrrRating'
--
-- * 'vrrUploadProtocol'
--
-- * 'vrrLocale'
--
-- * 'vrrAccessToken'
--
-- * 'vrrUploadType'
--
-- * 'vrrVolumeId'
--
-- * 'vrrSource'
--
-- * 'vrrCallback'
volumesRecommendedRate
    :: VolumesRecommendedRateRating -- ^ 'vrrRating'
    -> Text -- ^ 'vrrVolumeId'
    -> VolumesRecommendedRate
volumesRecommendedRate pVrrRating_ pVrrVolumeId_ =
  VolumesRecommendedRate'
    { _vrrXgafv = Nothing
    , _vrrRating = pVrrRating_
    , _vrrUploadProtocol = Nothing
    , _vrrLocale = Nothing
    , _vrrAccessToken = Nothing
    , _vrrUploadType = Nothing
    , _vrrVolumeId = pVrrVolumeId_
    , _vrrSource = Nothing
    , _vrrCallback = Nothing
    }


-- | V1 error format.
vrrXgafv :: Lens' VolumesRecommendedRate (Maybe Xgafv)
vrrXgafv = lens _vrrXgafv (\ s a -> s{_vrrXgafv = a})

-- | Rating to be given to the volume.
vrrRating :: Lens' VolumesRecommendedRate VolumesRecommendedRateRating
vrrRating
  = lens _vrrRating (\ s a -> s{_vrrRating = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
vrrUploadProtocol :: Lens' VolumesRecommendedRate (Maybe Text)
vrrUploadProtocol
  = lens _vrrUploadProtocol
      (\ s a -> s{_vrrUploadProtocol = a})

-- | ISO-639-1 language and ISO-3166-1 country code. Ex: \'en_US\'. Used for
-- generating recommendations.
vrrLocale :: Lens' VolumesRecommendedRate (Maybe Text)
vrrLocale
  = lens _vrrLocale (\ s a -> s{_vrrLocale = a})

-- | OAuth access token.
vrrAccessToken :: Lens' VolumesRecommendedRate (Maybe Text)
vrrAccessToken
  = lens _vrrAccessToken
      (\ s a -> s{_vrrAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
vrrUploadType :: Lens' VolumesRecommendedRate (Maybe Text)
vrrUploadType
  = lens _vrrUploadType
      (\ s a -> s{_vrrUploadType = a})

-- | ID of the source volume.
vrrVolumeId :: Lens' VolumesRecommendedRate Text
vrrVolumeId
  = lens _vrrVolumeId (\ s a -> s{_vrrVolumeId = a})

-- | String to identify the originator of this request.
vrrSource :: Lens' VolumesRecommendedRate (Maybe Text)
vrrSource
  = lens _vrrSource (\ s a -> s{_vrrSource = a})

-- | JSONP
vrrCallback :: Lens' VolumesRecommendedRate (Maybe Text)
vrrCallback
  = lens _vrrCallback (\ s a -> s{_vrrCallback = a})

instance GoogleRequest VolumesRecommendedRate where
        type Rs VolumesRecommendedRate =
             BooksVolumesRecommendedRateResponse
        type Scopes VolumesRecommendedRate =
             '["https://www.googleapis.com/auth/books"]
        requestClient VolumesRecommendedRate'{..}
          = go (Just _vrrRating) (Just _vrrVolumeId) _vrrXgafv
              _vrrUploadProtocol
              _vrrLocale
              _vrrAccessToken
              _vrrUploadType
              _vrrSource
              _vrrCallback
              (Just AltJSON)
              booksService
          where go
                  = buildClient
                      (Proxy :: Proxy VolumesRecommendedRateResource)
                      mempty
