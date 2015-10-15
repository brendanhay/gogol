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
-- Module      : Network.Google.Resource.Books.Onboarding.ListCategoryVolumes
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | List available volumes under categories for onboarding experience.
--
-- /See:/ <https://developers.google.com/books/docs/v1/getting_started Books API Reference> for @BooksOnboardingListCategoryVolumes@.
module Network.Google.Resource.Books.Onboarding.ListCategoryVolumes
    (
    -- * REST Resource
      OnboardingListCategoryVolumesResource

    -- * Creating a Request
    , onboardingListCategoryVolumes'
    , OnboardingListCategoryVolumes'

    -- * Request Lenses
    , olcvLocale
    , olcvMaxAllowedMaturityRating
    , olcvCategoryId
    , olcvPageToken
    , olcvPageSize
    ) where

import           Network.Google.Books.Types
import           Network.Google.Prelude

-- | A resource alias for @BooksOnboardingListCategoryVolumes@ method which the
-- 'OnboardingListCategoryVolumes'' request conforms to.
type OnboardingListCategoryVolumesResource =
     "onboarding" :>
       "listCategoryVolumes" :>
         QueryParam "locale" Text :>
           QueryParam "maxAllowedMaturityRating"
             OnboardingListCategoryVolumesMaxAllowedMaturityRating
             :>
             QueryParams "categoryId" Text :>
               QueryParam "pageToken" Text :>
                 QueryParam "pageSize" Word32 :>
                   QueryParam "alt" AltJSON :> Get '[JSON] Volume2

-- | List available volumes under categories for onboarding experience.
--
-- /See:/ 'onboardingListCategoryVolumes'' smart constructor.
data OnboardingListCategoryVolumes' = OnboardingListCategoryVolumes'
    { _olcvLocale                   :: !(Maybe Text)
    , _olcvMaxAllowedMaturityRating :: !(Maybe OnboardingListCategoryVolumesMaxAllowedMaturityRating)
    , _olcvCategoryId               :: !(Maybe [Text])
    , _olcvPageToken                :: !(Maybe Text)
    , _olcvPageSize                 :: !(Maybe Word32)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'OnboardingListCategoryVolumes'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'olcvLocale'
--
-- * 'olcvMaxAllowedMaturityRating'
--
-- * 'olcvCategoryId'
--
-- * 'olcvPageToken'
--
-- * 'olcvPageSize'
onboardingListCategoryVolumes'
    :: OnboardingListCategoryVolumes'
onboardingListCategoryVolumes' =
    OnboardingListCategoryVolumes'
    { _olcvLocale = Nothing
    , _olcvMaxAllowedMaturityRating = Nothing
    , _olcvCategoryId = Nothing
    , _olcvPageToken = Nothing
    , _olcvPageSize = Nothing
    }

-- | ISO-639-1 language and ISO-3166-1 country code. Default is en-US if
-- unset.
olcvLocale :: Lens' OnboardingListCategoryVolumes' (Maybe Text)
olcvLocale
  = lens _olcvLocale (\ s a -> s{_olcvLocale = a})

-- | The maximum allowed maturity rating of returned volumes. Books with a
-- higher maturity rating are filtered out.
olcvMaxAllowedMaturityRating :: Lens' OnboardingListCategoryVolumes' (Maybe OnboardingListCategoryVolumesMaxAllowedMaturityRating)
olcvMaxAllowedMaturityRating
  = lens _olcvMaxAllowedMaturityRating
      (\ s a -> s{_olcvMaxAllowedMaturityRating = a})

-- | List of category ids requested.
olcvCategoryId :: Lens' OnboardingListCategoryVolumes' [Text]
olcvCategoryId
  = lens _olcvCategoryId
      (\ s a -> s{_olcvCategoryId = a})
      . _Default
      . _Coerce

-- | The value of the nextToken from the previous page.
olcvPageToken :: Lens' OnboardingListCategoryVolumes' (Maybe Text)
olcvPageToken
  = lens _olcvPageToken
      (\ s a -> s{_olcvPageToken = a})

-- | Number of maximum results per page to be included in the response.
olcvPageSize :: Lens' OnboardingListCategoryVolumes' (Maybe Word32)
olcvPageSize
  = lens _olcvPageSize (\ s a -> s{_olcvPageSize = a})

instance GoogleRequest OnboardingListCategoryVolumes'
         where
        type Rs OnboardingListCategoryVolumes' = Volume2
        requestClient OnboardingListCategoryVolumes'{..}
          = go _olcvLocale _olcvMaxAllowedMaturityRating
              (_olcvCategoryId ^. _Default)
              _olcvPageToken
              _olcvPageSize
              (Just AltJSON)
              books
          where go
                  = buildClient
                      (Proxy ::
                         Proxy OnboardingListCategoryVolumesResource)
                      mempty
