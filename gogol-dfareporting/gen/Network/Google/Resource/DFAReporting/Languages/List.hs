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
-- Module      : Network.Google.Resource.DFAReporting.Languages.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a list of languages.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/ DCM/DFA Reporting And Trafficking API Reference> for @dfareporting.languages.list@.
module Network.Google.Resource.DFAReporting.Languages.List
    (
    -- * REST Resource
      LanguagesListResource

    -- * Creating a Request
    , languagesList
    , LanguagesList

    -- * Request Lenses
    , llProFileId
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @dfareporting.languages.list@ method which the
-- 'LanguagesList' request conforms to.
type LanguagesListResource =
     "dfareporting" :>
       "v3.2" :>
         "userprofiles" :>
           Capture "profileId" (Textual Int64) :>
             "languages" :>
               QueryParam "alt" AltJSON :>
                 Get '[JSON] LanguagesListResponse

-- | Retrieves a list of languages.
--
-- /See:/ 'languagesList' smart constructor.
newtype LanguagesList = LanguagesList'
    { _llProFileId :: Textual Int64
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'LanguagesList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'llProFileId'
languagesList
    :: Int64 -- ^ 'llProFileId'
    -> LanguagesList
languagesList pLlProFileId_ =
    LanguagesList'
    { _llProFileId = _Coerce # pLlProFileId_
    }

-- | User profile ID associated with this request.
llProFileId :: Lens' LanguagesList Int64
llProFileId
  = lens _llProFileId (\ s a -> s{_llProFileId = a}) .
      _Coerce

instance GoogleRequest LanguagesList where
        type Rs LanguagesList = LanguagesListResponse
        type Scopes LanguagesList =
             '["https://www.googleapis.com/auth/dfatrafficking"]
        requestClient LanguagesList'{..}
          = go _llProFileId (Just AltJSON) dFAReportingService
          where go
                  = buildClient (Proxy :: Proxy LanguagesListResource)
                      mempty
