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
-- Returns a list of supported languages for translation.
--
-- /See:/ <https://code.google.com/apis/language/translate/v2/getting_started.html Google Cloud Translation API Reference> for @language.languages.list@.
module Network.Google.Resource.Language.Languages.List
    (
    -- * REST Resource
      LanguagesListResource

    -- * Creating a Request
    , languagesList
    , LanguagesList

    -- * Request Lenses
    , llXgafv
    , llUploadProtocol
    , llPp
    , llAccessToken
    , llUploadType
    , llBearerToken
    , llModel
    , llTarget
    , llCallback
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
             QueryParam "$.xgafv" Xgafv :>
               QueryParam "upload_protocol" Text :>
                 QueryParam "pp" Bool :>
                   QueryParam "access_token" Text :>
                     QueryParam "uploadType" Text :>
                       QueryParam "bearer_token" Text :>
                         QueryParam "model" Text :>
                           QueryParam "target" Text :>
                             QueryParam "callback" Text :>
                               QueryParam "alt" AltJSON :>
                                 Get '[JSON] LanguagesListResponse

-- | Returns a list of supported languages for translation.
--
-- /See:/ 'languagesList' smart constructor.
data LanguagesList =
  LanguagesList'
    { _llXgafv          :: !(Maybe Xgafv)
    , _llUploadProtocol :: !(Maybe Text)
    , _llPp             :: !Bool
    , _llAccessToken    :: !(Maybe Text)
    , _llUploadType     :: !(Maybe Text)
    , _llBearerToken    :: !(Maybe Text)
    , _llModel          :: !(Maybe Text)
    , _llTarget         :: !(Maybe Text)
    , _llCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'LanguagesList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'llXgafv'
--
-- * 'llUploadProtocol'
--
-- * 'llPp'
--
-- * 'llAccessToken'
--
-- * 'llUploadType'
--
-- * 'llBearerToken'
--
-- * 'llModel'
--
-- * 'llTarget'
--
-- * 'llCallback'
languagesList
    :: LanguagesList
languagesList =
  LanguagesList'
    { _llXgafv = Nothing
    , _llUploadProtocol = Nothing
    , _llPp = True
    , _llAccessToken = Nothing
    , _llUploadType = Nothing
    , _llBearerToken = Nothing
    , _llModel = Nothing
    , _llTarget = Nothing
    , _llCallback = Nothing
    }

-- | V1 error format.
llXgafv :: Lens' LanguagesList (Maybe Xgafv)
llXgafv = lens _llXgafv (\ s a -> s{_llXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
llUploadProtocol :: Lens' LanguagesList (Maybe Text)
llUploadProtocol
  = lens _llUploadProtocol
      (\ s a -> s{_llUploadProtocol = a})

-- | Pretty-print response.
llPp :: Lens' LanguagesList Bool
llPp = lens _llPp (\ s a -> s{_llPp = a})

-- | OAuth access token.
llAccessToken :: Lens' LanguagesList (Maybe Text)
llAccessToken
  = lens _llAccessToken
      (\ s a -> s{_llAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
llUploadType :: Lens' LanguagesList (Maybe Text)
llUploadType
  = lens _llUploadType (\ s a -> s{_llUploadType = a})

-- | OAuth bearer token.
llBearerToken :: Lens' LanguagesList (Maybe Text)
llBearerToken
  = lens _llBearerToken
      (\ s a -> s{_llBearerToken = a})

-- | The model type for which supported languages should be returned.
llModel :: Lens' LanguagesList (Maybe Text)
llModel = lens _llModel (\ s a -> s{_llModel = a})

-- | The language to use to return localized, human readable names of
-- supported languages.
llTarget :: Lens' LanguagesList (Maybe Text)
llTarget = lens _llTarget (\ s a -> s{_llTarget = a})

-- | JSONP
llCallback :: Lens' LanguagesList (Maybe Text)
llCallback
  = lens _llCallback (\ s a -> s{_llCallback = a})

instance GoogleRequest LanguagesList where
        type Rs LanguagesList = LanguagesListResponse
        type Scopes LanguagesList =
             '["https://www.googleapis.com/auth/cloud-translation",
               "https://www.googleapis.com/auth/cloud-platform"]
        requestClient LanguagesList'{..}
          = go _llXgafv _llUploadProtocol (Just _llPp)
              _llAccessToken
              _llUploadType
              _llBearerToken
              _llModel
              _llTarget
              _llCallback
              (Just AltJSON)
              translateService
          where go
                  = buildClient (Proxy :: Proxy LanguagesListResource)
                      mempty
