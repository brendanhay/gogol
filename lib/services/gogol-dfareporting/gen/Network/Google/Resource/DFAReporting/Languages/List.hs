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
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a list of languages.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/ Campaign Manager 360 API Reference> for @dfareporting.languages.list@.
module Network.Google.Resource.DFAReporting.Languages.List
    (
    -- * REST Resource
      LanguagesListResource

    -- * Creating a Request
    , languagesList
    , LanguagesList

    -- * Request Lenses
    , llXgafv
    , llUploadProtocol
    , llAccessToken
    , llUploadType
    , llProFileId
    , llCallback
    ) where

import Network.Google.DFAReporting.Types
import Network.Google.Prelude

-- | A resource alias for @dfareporting.languages.list@ method which the
-- 'LanguagesList' request conforms to.
type LanguagesListResource =
     "dfareporting" :>
       "v3.5" :>
         "userprofiles" :>
           Capture "profileId" (Textual Int64) :>
             "languages" :>
               QueryParam "$.xgafv" Xgafv :>
                 QueryParam "upload_protocol" Text :>
                   QueryParam "access_token" Text :>
                     QueryParam "uploadType" Text :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :>
                           Get '[JSON] LanguagesListResponse

-- | Retrieves a list of languages.
--
-- /See:/ 'languagesList' smart constructor.
data LanguagesList =
  LanguagesList'
    { _llXgafv :: !(Maybe Xgafv)
    , _llUploadProtocol :: !(Maybe Text)
    , _llAccessToken :: !(Maybe Text)
    , _llUploadType :: !(Maybe Text)
    , _llProFileId :: !(Textual Int64)
    , _llCallback :: !(Maybe Text)
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
-- * 'llAccessToken'
--
-- * 'llUploadType'
--
-- * 'llProFileId'
--
-- * 'llCallback'
languagesList
    :: Int64 -- ^ 'llProFileId'
    -> LanguagesList
languagesList pLlProFileId_ =
  LanguagesList'
    { _llXgafv = Nothing
    , _llUploadProtocol = Nothing
    , _llAccessToken = Nothing
    , _llUploadType = Nothing
    , _llProFileId = _Coerce # pLlProFileId_
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

-- | OAuth access token.
llAccessToken :: Lens' LanguagesList (Maybe Text)
llAccessToken
  = lens _llAccessToken
      (\ s a -> s{_llAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
llUploadType :: Lens' LanguagesList (Maybe Text)
llUploadType
  = lens _llUploadType (\ s a -> s{_llUploadType = a})

-- | User profile ID associated with this request.
llProFileId :: Lens' LanguagesList Int64
llProFileId
  = lens _llProFileId (\ s a -> s{_llProFileId = a}) .
      _Coerce

-- | JSONP
llCallback :: Lens' LanguagesList (Maybe Text)
llCallback
  = lens _llCallback (\ s a -> s{_llCallback = a})

instance GoogleRequest LanguagesList where
        type Rs LanguagesList = LanguagesListResponse
        type Scopes LanguagesList =
             '["https://www.googleapis.com/auth/dfatrafficking"]
        requestClient LanguagesList'{..}
          = go _llProFileId _llXgafv _llUploadProtocol
              _llAccessToken
              _llUploadType
              _llCallback
              (Just AltJSON)
              dFAReportingService
          where go
                  = buildClient (Proxy :: Proxy LanguagesListResource)
                      mempty
