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
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Rate a recommended book for the current user.
--
-- /See:/ <https://developers.google.com/books/docs/v1/getting_started Books API Reference> for @books.volumes.recommended.rate@.
module Network.Google.Resource.Books.Volumes.Recommended.Rate
    (
    -- * REST Resource
      VolumesRecommendedRateResource

    -- * Creating a Request
    , volumesRecommendedRate
    , VolumesRecommendedRate

    -- * Request Lenses
    , vrrRating
    , vrrLocale
    , vrrVolumeId
    , vrrSource
    ) where

import           Network.Google.Books.Types
import           Network.Google.Prelude

-- | A resource alias for @books.volumes.recommended.rate@ method which the
-- 'VolumesRecommendedRate' request conforms to.
type VolumesRecommendedRateResource =
     "volumes" :>
       "recommended" :>
         "rate" :>
           QueryParam "rating" VolumesRecommendedRateRating :>
             QueryParam "volumeId" Text :>
               QueryParam "locale" Text :>
                 QueryParam "source" Text :>
                   QueryParam "alt" AltJSON :>
                     Post '[JSON] BooksVolumesRecommendedRateResponse

-- | Rate a recommended book for the current user.
--
-- /See:/ 'volumesRecommendedRate' smart constructor.
data VolumesRecommendedRate = VolumesRecommendedRate
    { _vrrRating   :: !VolumesRecommendedRateRating
    , _vrrLocale   :: !(Maybe Text)
    , _vrrVolumeId :: !Text
    , _vrrSource   :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'VolumesRecommendedRate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vrrRating'
--
-- * 'vrrLocale'
--
-- * 'vrrVolumeId'
--
-- * 'vrrSource'
volumesRecommendedRate
    :: VolumesRecommendedRateRating -- ^ 'vrrRating'
    -> Text -- ^ 'vrrVolumeId'
    -> VolumesRecommendedRate
volumesRecommendedRate pVrrRating_ pVrrVolumeId_ =
    VolumesRecommendedRate
    { _vrrRating = pVrrRating_
    , _vrrLocale = Nothing
    , _vrrVolumeId = pVrrVolumeId_
    , _vrrSource = Nothing
    }

-- | Rating to be given to the volume.
vrrRating :: Lens' VolumesRecommendedRate VolumesRecommendedRateRating
vrrRating
  = lens _vrrRating (\ s a -> s{_vrrRating = a})

-- | ISO-639-1 language and ISO-3166-1 country code. Ex: \'en_US\'. Used for
-- generating recommendations.
vrrLocale :: Lens' VolumesRecommendedRate (Maybe Text)
vrrLocale
  = lens _vrrLocale (\ s a -> s{_vrrLocale = a})

-- | ID of the source volume.
vrrVolumeId :: Lens' VolumesRecommendedRate Text
vrrVolumeId
  = lens _vrrVolumeId (\ s a -> s{_vrrVolumeId = a})

-- | String to identify the originator of this request.
vrrSource :: Lens' VolumesRecommendedRate (Maybe Text)
vrrSource
  = lens _vrrSource (\ s a -> s{_vrrSource = a})

instance GoogleRequest VolumesRecommendedRate where
        type Rs VolumesRecommendedRate =
             BooksVolumesRecommendedRateResponse
        requestClient VolumesRecommendedRate{..}
          = go (Just _vrrRating) (Just _vrrVolumeId) _vrrLocale
              _vrrSource
              (Just AltJSON)
              booksService
          where go
                  = buildClient
                      (Proxy :: Proxy VolumesRecommendedRateResource)
                      mempty
