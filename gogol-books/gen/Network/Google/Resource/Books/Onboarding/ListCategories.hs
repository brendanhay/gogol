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
-- /See:/ <https://developers.google.com/books/docs/v1/getting_started Books API Reference> for @books.onboarding.listCategories@.
module Network.Google.Resource.Books.Onboarding.ListCategories
    (
    -- * REST Resource
      OnboardingListCategoriesResource

    -- * Creating a Request
    , onboardingListCategories
    , OnboardingListCategories

    -- * Request Lenses
    , olcLocale
    ) where

import           Network.Google.Books.Types
import           Network.Google.Prelude

-- | A resource alias for @books.onboarding.listCategories@ method which the
-- 'OnboardingListCategories' request conforms to.
type OnboardingListCategoriesResource =
     "books" :>
       "v1" :>
         "onboarding" :>
           "listCategories" :>
             QueryParam "locale" Text :>
               QueryParam "alt" AltJSON :> Get '[JSON] Category

-- | List categories for onboarding experience.
--
-- /See:/ 'onboardingListCategories' smart constructor.
newtype OnboardingListCategories =
  OnboardingListCategories'
    { _olcLocale :: Maybe Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'OnboardingListCategories' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'olcLocale'
onboardingListCategories
    :: OnboardingListCategories
onboardingListCategories = OnboardingListCategories' {_olcLocale = Nothing}

-- | ISO-639-1 language and ISO-3166-1 country code. Default is en-US if
-- unset.
olcLocale :: Lens' OnboardingListCategories (Maybe Text)
olcLocale
  = lens _olcLocale (\ s a -> s{_olcLocale = a})

instance GoogleRequest OnboardingListCategories where
        type Rs OnboardingListCategories = Category
        type Scopes OnboardingListCategories =
             '["https://www.googleapis.com/auth/books"]
        requestClient OnboardingListCategories'{..}
          = go _olcLocale (Just AltJSON) booksService
          where go
                  = buildClient
                      (Proxy :: Proxy OnboardingListCategoriesResource)
                      mempty
