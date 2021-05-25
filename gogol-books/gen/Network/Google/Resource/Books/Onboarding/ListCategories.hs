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
-- Module      : Network.Google.Resource.Books.Onboarding.ListCategories
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- List categories for onboarding experience.
--
-- /See:/ <https://code.google.com/apis/books/docs/v1/getting_started.html Books API Reference> for @books.onboarding.listCategories@.
module Network.Google.Resource.Books.Onboarding.ListCategories
    (
    -- * REST Resource
      OnboardingListCategoriesResource

    -- * Creating a Request
    , onboardingListCategories
    , OnboardingListCategories

    -- * Request Lenses
    , olcXgafv
    , olcUploadProtocol
    , olcLocale
    , olcAccessToken
    , olcUploadType
    , olcCallback
    ) where

import Network.Google.Books.Types
import Network.Google.Prelude

-- | A resource alias for @books.onboarding.listCategories@ method which the
-- 'OnboardingListCategories' request conforms to.
type OnboardingListCategoriesResource =
     "books" :>
       "v1" :>
         "onboarding" :>
           "listCategories" :>
             QueryParam "$.xgafv" Xgafv :>
               QueryParam "upload_protocol" Text :>
                 QueryParam "locale" Text :>
                   QueryParam "access_token" Text :>
                     QueryParam "uploadType" Text :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :> Get '[JSON] Category

-- | List categories for onboarding experience.
--
-- /See:/ 'onboardingListCategories' smart constructor.
data OnboardingListCategories =
  OnboardingListCategories'
    { _olcXgafv :: !(Maybe Xgafv)
    , _olcUploadProtocol :: !(Maybe Text)
    , _olcLocale :: !(Maybe Text)
    , _olcAccessToken :: !(Maybe Text)
    , _olcUploadType :: !(Maybe Text)
    , _olcCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'OnboardingListCategories' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'olcXgafv'
--
-- * 'olcUploadProtocol'
--
-- * 'olcLocale'
--
-- * 'olcAccessToken'
--
-- * 'olcUploadType'
--
-- * 'olcCallback'
onboardingListCategories
    :: OnboardingListCategories
onboardingListCategories =
  OnboardingListCategories'
    { _olcXgafv = Nothing
    , _olcUploadProtocol = Nothing
    , _olcLocale = Nothing
    , _olcAccessToken = Nothing
    , _olcUploadType = Nothing
    , _olcCallback = Nothing
    }


-- | V1 error format.
olcXgafv :: Lens' OnboardingListCategories (Maybe Xgafv)
olcXgafv = lens _olcXgafv (\ s a -> s{_olcXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
olcUploadProtocol :: Lens' OnboardingListCategories (Maybe Text)
olcUploadProtocol
  = lens _olcUploadProtocol
      (\ s a -> s{_olcUploadProtocol = a})

-- | ISO-639-1 language and ISO-3166-1 country code. Default is en-US if
-- unset.
olcLocale :: Lens' OnboardingListCategories (Maybe Text)
olcLocale
  = lens _olcLocale (\ s a -> s{_olcLocale = a})

-- | OAuth access token.
olcAccessToken :: Lens' OnboardingListCategories (Maybe Text)
olcAccessToken
  = lens _olcAccessToken
      (\ s a -> s{_olcAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
olcUploadType :: Lens' OnboardingListCategories (Maybe Text)
olcUploadType
  = lens _olcUploadType
      (\ s a -> s{_olcUploadType = a})

-- | JSONP
olcCallback :: Lens' OnboardingListCategories (Maybe Text)
olcCallback
  = lens _olcCallback (\ s a -> s{_olcCallback = a})

instance GoogleRequest OnboardingListCategories where
        type Rs OnboardingListCategories = Category
        type Scopes OnboardingListCategories =
             '["https://www.googleapis.com/auth/books"]
        requestClient OnboardingListCategories'{..}
          = go _olcXgafv _olcUploadProtocol _olcLocale
              _olcAccessToken
              _olcUploadType
              _olcCallback
              (Just AltJSON)
              booksService
          where go
                  = buildClient
                      (Proxy :: Proxy OnboardingListCategoriesResource)
                      mempty
