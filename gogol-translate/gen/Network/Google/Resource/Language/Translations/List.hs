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
-- Module      : Network.Google.Resource.Language.Translations.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns text translations from one language to another.
--
-- /See:/ <https://developers.google.com/translate/v2/using_rest Translate API Reference> for @language.translations.list@.
module Network.Google.Resource.Language.Translations.List
    (
    -- * REST Resource
      TranslationsListResource

    -- * Creating a Request
    , translationsList
    , TranslationsList

    -- * Request Lenses
    , tlFormat
    , tlQ
    , tlSource
    , tlCid
    , tlTarget
    ) where

import           Network.Google.Prelude
import           Network.Google.Translate.Types

-- | A resource alias for @language.translations.list@ method which the
-- 'TranslationsList' request conforms to.
type TranslationsListResource =
     "language" :>
       "translate" :>
         "v2" :>
           QueryParams "q" Text :>
             QueryParam "target" Text :>
               QueryParam "format" TranslationsListFormat :>
                 QueryParam "source" Text :>
                   QueryParams "cid" Text :>
                     QueryParam "alt" AltJSON :>
                       Get '[JSON] TranslationsListResponse

-- | Returns text translations from one language to another.
--
-- /See:/ 'translationsList' smart constructor.
data TranslationsList = TranslationsList
    { _tlFormat :: !(Maybe TranslationsListFormat)
    , _tlQ      :: ![Text]
    , _tlSource :: !(Maybe Text)
    , _tlCid    :: !(Maybe [Text])
    , _tlTarget :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'TranslationsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tlFormat'
--
-- * 'tlQ'
--
-- * 'tlSource'
--
-- * 'tlCid'
--
-- * 'tlTarget'
translationsList
    :: [Text] -- ^ 'tlQ'
    -> Text -- ^ 'tlTarget'
    -> TranslationsList
translationsList pTlQ_ pTlTarget_ =
    TranslationsList
    { _tlFormat = Nothing
    , _tlQ = _Coerce # pTlQ_
    , _tlSource = Nothing
    , _tlCid = Nothing
    , _tlTarget = pTlTarget_
    }

-- | The format of the text
tlFormat :: Lens' TranslationsList (Maybe TranslationsListFormat)
tlFormat = lens _tlFormat (\ s a -> s{_tlFormat = a})

-- | The text to translate
tlQ :: Lens' TranslationsList [Text]
tlQ = lens _tlQ (\ s a -> s{_tlQ = a}) . _Coerce

-- | The source language of the text
tlSource :: Lens' TranslationsList (Maybe Text)
tlSource = lens _tlSource (\ s a -> s{_tlSource = a})

-- | The customization id for translate
tlCid :: Lens' TranslationsList [Text]
tlCid
  = lens _tlCid (\ s a -> s{_tlCid = a}) . _Default .
      _Coerce

-- | The target language into which the text should be translated
tlTarget :: Lens' TranslationsList Text
tlTarget = lens _tlTarget (\ s a -> s{_tlTarget = a})

instance GoogleRequest TranslationsList where
        type Rs TranslationsList = TranslationsListResponse
        requestClient TranslationsList{..}
          = go _tlQ (Just _tlTarget) _tlFormat _tlSource
              (_tlCid ^. _Default)
              (Just AltJSON)
              translateService
          where go
                  = buildClient
                      (Proxy :: Proxy TranslationsListResource)
                      mempty
