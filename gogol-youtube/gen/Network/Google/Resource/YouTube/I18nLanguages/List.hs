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
-- Module      : Network.Google.Resource.YouTube.I18nLanguages.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns a list of application languages that the YouTube website
-- supports.
--
-- /See:/ <https://developers.google.com/youtube/v3 YouTube Data API Reference> for @youtube.i18nLanguages.list@.
module Network.Google.Resource.YouTube.I18nLanguages.List
    (
    -- * REST Resource
      I18nLanguagesListResource

    -- * Creating a Request
    , i18nLanguagesList
    , I18nLanguagesList

    -- * Request Lenses
    , illPart
    , illHl
    ) where

import           Network.Google.Prelude
import           Network.Google.YouTube.Types

-- | A resource alias for @youtube.i18nLanguages.list@ method which the
-- 'I18nLanguagesList' request conforms to.
type I18nLanguagesListResource =
     "youtube" :>
       "v3" :>
         "i18nLanguages" :>
           QueryParam "part" Text :>
             QueryParam "hl" Text :>
               QueryParam "alt" AltJSON :>
                 Get '[JSON] I18nLanguageListResponse

-- | Returns a list of application languages that the YouTube website
-- supports.
--
-- /See:/ 'i18nLanguagesList' smart constructor.
data I18nLanguagesList = I18nLanguagesList
    { _illPart :: !Text
    , _illHl   :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'I18nLanguagesList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'illPart'
--
-- * 'illHl'
i18nLanguagesList
    :: Text -- ^ 'illPart'
    -> I18nLanguagesList
i18nLanguagesList pIllPart_ =
    I18nLanguagesList
    { _illPart = pIllPart_
    , _illHl = "en_US"
    }

-- | The part parameter specifies the i18nLanguage resource properties that
-- the API response will include. Set the parameter value to snippet.
illPart :: Lens' I18nLanguagesList Text
illPart = lens _illPart (\ s a -> s{_illPart = a})

-- | The hl parameter specifies the language that should be used for text
-- values in the API response.
illHl :: Lens' I18nLanguagesList Text
illHl = lens _illHl (\ s a -> s{_illHl = a})

instance GoogleRequest I18nLanguagesList where
        type Rs I18nLanguagesList = I18nLanguageListResponse
        type Scopes I18nLanguagesList =
             '["https://www.googleapis.com/auth/youtube",
               "https://www.googleapis.com/auth/youtube.force-ssl",
               "https://www.googleapis.com/auth/youtube.readonly",
               "https://www.googleapis.com/auth/youtubepartner"]
        requestClient I18nLanguagesList{..}
          = go (Just _illPart) (Just _illHl) (Just AltJSON)
              youTubeService
          where go
                  = buildClient
                      (Proxy :: Proxy I18nLanguagesListResource)
                      mempty
