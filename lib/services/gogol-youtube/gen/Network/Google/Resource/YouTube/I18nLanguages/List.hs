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
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a list of resources, possibly filtered.
--
-- /See:/ <https://developers.google.com/youtube/ YouTube Data API v3 Reference> for @youtube.i18nLanguages.list@.
module Network.Google.Resource.YouTube.I18nLanguages.List
    (
    -- * REST Resource
      I18nLanguagesListResource

    -- * Creating a Request
    , i18nLanguagesList
    , I18nLanguagesList

    -- * Request Lenses
    , illXgafv
    , illPart
    , illUploadProtocol
    , illAccessToken
    , illUploadType
    , illHl
    , illCallback
    ) where

import Network.Google.Prelude
import Network.Google.YouTube.Types

-- | A resource alias for @youtube.i18nLanguages.list@ method which the
-- 'I18nLanguagesList' request conforms to.
type I18nLanguagesListResource =
     "youtube" :>
       "v3" :>
         "i18nLanguages" :>
           QueryParams "part" Text :>
             QueryParam "$.xgafv" Xgafv :>
               QueryParam "upload_protocol" Text :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "hl" Text :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :>
                           Get '[JSON] I18nLanguageListResponse

-- | Retrieves a list of resources, possibly filtered.
--
-- /See:/ 'i18nLanguagesList' smart constructor.
data I18nLanguagesList =
  I18nLanguagesList'
    { _illXgafv :: !(Maybe Xgafv)
    , _illPart :: ![Text]
    , _illUploadProtocol :: !(Maybe Text)
    , _illAccessToken :: !(Maybe Text)
    , _illUploadType :: !(Maybe Text)
    , _illHl :: !Text
    , _illCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'I18nLanguagesList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'illXgafv'
--
-- * 'illPart'
--
-- * 'illUploadProtocol'
--
-- * 'illAccessToken'
--
-- * 'illUploadType'
--
-- * 'illHl'
--
-- * 'illCallback'
i18nLanguagesList
    :: [Text] -- ^ 'illPart'
    -> I18nLanguagesList
i18nLanguagesList pIllPart_ =
  I18nLanguagesList'
    { _illXgafv = Nothing
    , _illPart = _Coerce # pIllPart_
    , _illUploadProtocol = Nothing
    , _illAccessToken = Nothing
    , _illUploadType = Nothing
    , _illHl = "en_US"
    , _illCallback = Nothing
    }


-- | V1 error format.
illXgafv :: Lens' I18nLanguagesList (Maybe Xgafv)
illXgafv = lens _illXgafv (\ s a -> s{_illXgafv = a})

-- | The *part* parameter specifies the i18nLanguage resource properties that
-- the API response will include. Set the parameter value to snippet.
illPart :: Lens' I18nLanguagesList [Text]
illPart
  = lens _illPart (\ s a -> s{_illPart = a}) . _Coerce

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
illUploadProtocol :: Lens' I18nLanguagesList (Maybe Text)
illUploadProtocol
  = lens _illUploadProtocol
      (\ s a -> s{_illUploadProtocol = a})

-- | OAuth access token.
illAccessToken :: Lens' I18nLanguagesList (Maybe Text)
illAccessToken
  = lens _illAccessToken
      (\ s a -> s{_illAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
illUploadType :: Lens' I18nLanguagesList (Maybe Text)
illUploadType
  = lens _illUploadType
      (\ s a -> s{_illUploadType = a})

illHl :: Lens' I18nLanguagesList Text
illHl = lens _illHl (\ s a -> s{_illHl = a})

-- | JSONP
illCallback :: Lens' I18nLanguagesList (Maybe Text)
illCallback
  = lens _illCallback (\ s a -> s{_illCallback = a})

instance GoogleRequest I18nLanguagesList where
        type Rs I18nLanguagesList = I18nLanguageListResponse
        type Scopes I18nLanguagesList =
             '["https://www.googleapis.com/auth/youtube",
               "https://www.googleapis.com/auth/youtube.force-ssl",
               "https://www.googleapis.com/auth/youtube.readonly",
               "https://www.googleapis.com/auth/youtubepartner"]
        requestClient I18nLanguagesList'{..}
          = go _illPart _illXgafv _illUploadProtocol
              _illAccessToken
              _illUploadType
              (Just _illHl)
              _illCallback
              (Just AltJSON)
              youTubeService
          where go
                  = buildClient
                      (Proxy :: Proxy I18nLanguagesListResource)
                      mempty
