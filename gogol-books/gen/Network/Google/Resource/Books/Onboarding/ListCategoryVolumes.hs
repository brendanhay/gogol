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
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- List available volumes under categories for onboarding experience.
--
-- /See:/ <https://code.google.com/apis/books/docs/v1/getting_started.html Books API Reference> for @books.onboarding.listCategoryVolumes@.
module Network.Google.Resource.Books.Onboarding.ListCategoryVolumes
    (
    -- * REST Resource
      OnboardingListCategoryVolumesResource

    -- * Creating a Request
    , onboardingListCategoryVolumes
    , OnboardingListCategoryVolumes

    -- * Request Lenses
    , olcvXgafv
    , olcvUploadProtocol
    , olcvLocale
    , olcvAccessToken
    , olcvMaxAllowedMaturityRating
    , olcvUploadType
    , olcvCategoryId
    , olcvPageToken
    , olcvPageSize
    , olcvCallback
    ) where

import Network.Google.Books.Types
import Network.Google.Prelude

-- | A resource alias for @books.onboarding.listCategoryVolumes@ method which the
-- 'OnboardingListCategoryVolumes' request conforms to.
type OnboardingListCategoryVolumesResource =
     "books" :>
       "v1" :>
         "onboarding" :>
           "listCategoryVolumes" :>
             QueryParam "$.xgafv" Xgafv :>
               QueryParam "upload_protocol" Text :>
                 QueryParam "locale" Text :>
                   QueryParam "access_token" Text :>
                     QueryParam "maxAllowedMaturityRating"
                       OnboardingListCategoryVolumesMaxAllowedMaturityRating
                       :>
                       QueryParam "uploadType" Text :>
                         QueryParams "categoryId" Text :>
                           QueryParam "pageToken" Text :>
                             QueryParam "pageSize" (Textual Word32) :>
                               QueryParam "callback" Text :>
                                 QueryParam "alt" AltJSON :> Get '[JSON] Volume2

-- | List available volumes under categories for onboarding experience.
--
-- /See:/ 'onboardingListCategoryVolumes' smart constructor.
data OnboardingListCategoryVolumes =
  OnboardingListCategoryVolumes'
    { _olcvXgafv :: !(Maybe Xgafv)
    , _olcvUploadProtocol :: !(Maybe Text)
    , _olcvLocale :: !(Maybe Text)
    , _olcvAccessToken :: !(Maybe Text)
    , _olcvMaxAllowedMaturityRating :: !(Maybe OnboardingListCategoryVolumesMaxAllowedMaturityRating)
    , _olcvUploadType :: !(Maybe Text)
    , _olcvCategoryId :: !(Maybe [Text])
    , _olcvPageToken :: !(Maybe Text)
    , _olcvPageSize :: !(Maybe (Textual Word32))
    , _olcvCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'OnboardingListCategoryVolumes' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'olcvXgafv'
--
-- * 'olcvUploadProtocol'
--
-- * 'olcvLocale'
--
-- * 'olcvAccessToken'
--
-- * 'olcvMaxAllowedMaturityRating'
--
-- * 'olcvUploadType'
--
-- * 'olcvCategoryId'
--
-- * 'olcvPageToken'
--
-- * 'olcvPageSize'
--
-- * 'olcvCallback'
onboardingListCategoryVolumes
    :: OnboardingListCategoryVolumes
onboardingListCategoryVolumes =
  OnboardingListCategoryVolumes'
    { _olcvXgafv = Nothing
    , _olcvUploadProtocol = Nothing
    , _olcvLocale = Nothing
    , _olcvAccessToken = Nothing
    , _olcvMaxAllowedMaturityRating = Nothing
    , _olcvUploadType = Nothing
    , _olcvCategoryId = Nothing
    , _olcvPageToken = Nothing
    , _olcvPageSize = Nothing
    , _olcvCallback = Nothing
    }


-- | V1 error format.
olcvXgafv :: Lens' OnboardingListCategoryVolumes (Maybe Xgafv)
olcvXgafv
  = lens _olcvXgafv (\ s a -> s{_olcvXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
olcvUploadProtocol :: Lens' OnboardingListCategoryVolumes (Maybe Text)
olcvUploadProtocol
  = lens _olcvUploadProtocol
      (\ s a -> s{_olcvUploadProtocol = a})

-- | ISO-639-1 language and ISO-3166-1 country code. Default is en-US if
-- unset.
olcvLocale :: Lens' OnboardingListCategoryVolumes (Maybe Text)
olcvLocale
  = lens _olcvLocale (\ s a -> s{_olcvLocale = a})

-- | OAuth access token.
olcvAccessToken :: Lens' OnboardingListCategoryVolumes (Maybe Text)
olcvAccessToken
  = lens _olcvAccessToken
      (\ s a -> s{_olcvAccessToken = a})

-- | The maximum allowed maturity rating of returned volumes. Books with a
-- higher maturity rating are filtered out.
olcvMaxAllowedMaturityRating :: Lens' OnboardingListCategoryVolumes (Maybe OnboardingListCategoryVolumesMaxAllowedMaturityRating)
olcvMaxAllowedMaturityRating
  = lens _olcvMaxAllowedMaturityRating
      (\ s a -> s{_olcvMaxAllowedMaturityRating = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
olcvUploadType :: Lens' OnboardingListCategoryVolumes (Maybe Text)
olcvUploadType
  = lens _olcvUploadType
      (\ s a -> s{_olcvUploadType = a})

-- | List of category ids requested.
olcvCategoryId :: Lens' OnboardingListCategoryVolumes [Text]
olcvCategoryId
  = lens _olcvCategoryId
      (\ s a -> s{_olcvCategoryId = a})
      . _Default
      . _Coerce

-- | The value of the nextToken from the previous page.
olcvPageToken :: Lens' OnboardingListCategoryVolumes (Maybe Text)
olcvPageToken
  = lens _olcvPageToken
      (\ s a -> s{_olcvPageToken = a})

-- | Number of maximum results per page to be included in the response.
olcvPageSize :: Lens' OnboardingListCategoryVolumes (Maybe Word32)
olcvPageSize
  = lens _olcvPageSize (\ s a -> s{_olcvPageSize = a})
      . mapping _Coerce

-- | JSONP
olcvCallback :: Lens' OnboardingListCategoryVolumes (Maybe Text)
olcvCallback
  = lens _olcvCallback (\ s a -> s{_olcvCallback = a})

instance GoogleRequest OnboardingListCategoryVolumes
         where
        type Rs OnboardingListCategoryVolumes = Volume2
        type Scopes OnboardingListCategoryVolumes =
             '["https://www.googleapis.com/auth/books"]
        requestClient OnboardingListCategoryVolumes'{..}
          = go _olcvXgafv _olcvUploadProtocol _olcvLocale
              _olcvAccessToken
              _olcvMaxAllowedMaturityRating
              _olcvUploadType
              (_olcvCategoryId ^. _Default)
              _olcvPageToken
              _olcvPageSize
              _olcvCallback
              (Just AltJSON)
              booksService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy OnboardingListCategoryVolumesResource)
                      mempty
