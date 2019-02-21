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
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Return a list of recommended books for the current user.
--
-- /See:/ <https://developers.google.com/books/docs/v1/getting_started Books API Reference> for @books.volumes.recommended.list@.
module Network.Google.Resource.Books.Volumes.Recommended.List
    (
    -- * REST Resource
      VolumesRecommendedListResource

    -- * Creating a Request
    , volumesRecommendedList
    , VolumesRecommendedList

    -- * Request Lenses
    , vrlLocale
    , vrlMaxAllowedMaturityRating
    , vrlSource
    ) where

import           Network.Google.Books.Types
import           Network.Google.Prelude

-- | A resource alias for @books.volumes.recommended.list@ method which the
-- 'VolumesRecommendedList' request conforms to.
type VolumesRecommendedListResource =
     "books" :>
       "v1" :>
         "volumes" :>
           "recommended" :>
             QueryParam "locale" Text :>
               QueryParam "maxAllowedMaturityRating"
                 VolumesRecommendedListMaxAllowedMaturityRating
                 :>
                 QueryParam "source" Text :>
                   QueryParam "alt" AltJSON :> Get '[JSON] Volumes

-- | Return a list of recommended books for the current user.
--
-- /See:/ 'volumesRecommendedList' smart constructor.
data VolumesRecommendedList =
  VolumesRecommendedList'
    { _vrlLocale                   :: !(Maybe Text)
    , _vrlMaxAllowedMaturityRating :: !(Maybe VolumesRecommendedListMaxAllowedMaturityRating)
    , _vrlSource                   :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'VolumesRecommendedList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vrlLocale'
--
-- * 'vrlMaxAllowedMaturityRating'
--
-- * 'vrlSource'
volumesRecommendedList
    :: VolumesRecommendedList
volumesRecommendedList =
  VolumesRecommendedList'
    { _vrlLocale = Nothing
    , _vrlMaxAllowedMaturityRating = Nothing
    , _vrlSource = Nothing
    }


-- | ISO-639-1 language and ISO-3166-1 country code. Ex: \'en_US\'. Used for
-- generating recommendations.
vrlLocale :: Lens' VolumesRecommendedList (Maybe Text)
vrlLocale
  = lens _vrlLocale (\ s a -> s{_vrlLocale = a})

-- | The maximum allowed maturity rating of returned recommendations. Books
-- with a higher maturity rating are filtered out.
vrlMaxAllowedMaturityRating :: Lens' VolumesRecommendedList (Maybe VolumesRecommendedListMaxAllowedMaturityRating)
vrlMaxAllowedMaturityRating
  = lens _vrlMaxAllowedMaturityRating
      (\ s a -> s{_vrlMaxAllowedMaturityRating = a})

-- | String to identify the originator of this request.
vrlSource :: Lens' VolumesRecommendedList (Maybe Text)
vrlSource
  = lens _vrlSource (\ s a -> s{_vrlSource = a})

instance GoogleRequest VolumesRecommendedList where
        type Rs VolumesRecommendedList = Volumes
        type Scopes VolumesRecommendedList =
             '["https://www.googleapis.com/auth/books"]
        requestClient VolumesRecommendedList'{..}
          = go _vrlLocale _vrlMaxAllowedMaturityRating
              _vrlSource
              (Just AltJSON)
              booksService
          where go
                  = buildClient
                      (Proxy :: Proxy VolumesRecommendedListResource)
                      mempty
