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
-- Module      : Network.Google.Resource.Language.Languages.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- List the source\/target languages supported by the API
--
-- /See:/ <https://developers.google.com/translate/v2/using_rest Translate API Reference> for @language.languages.list@.
module Network.Google.Resource.Language.Languages.List
    (
    -- * REST Resource
      LanguagesListResource

    -- * Creating a Request
    , languagesList
    , LanguagesList

    -- * Request Lenses
    , llTarget
    ) where

import           Network.Google.Prelude
import           Network.Google.Translate.Types

-- | A resource alias for @language.languages.list@ method which the
-- 'LanguagesList' request conforms to.
type LanguagesListResource =
     "language" :>
       "translate" :>
         "v2" :>
           "languages" :>
             QueryParam "target" Text :>
               QueryParam "alt" AltJSON :>
                 Get '[JSON] LanguagesListResponse

-- | List the source\/target languages supported by the API
--
-- /See:/ 'languagesList' smart constructor.
newtype LanguagesList = LanguagesList'
    { _llTarget :: Maybe Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'LanguagesList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'llTarget'
languagesList
    :: LanguagesList
languagesList =
    LanguagesList'
    { _llTarget = Nothing
    }

-- | the language and collation in which the localized results should be
-- returned
llTarget :: Lens' LanguagesList (Maybe Text)
llTarget = lens _llTarget (\ s a -> s{_llTarget = a})

instance GoogleRequest LanguagesList where
        type Rs LanguagesList = LanguagesListResponse
        type Scopes LanguagesList = '[]
        requestClient LanguagesList'{..}
          = go _llTarget (Just AltJSON) translateService
          where go
                  = buildClient (Proxy :: Proxy LanguagesListResource)
                      mempty
