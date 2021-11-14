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
-- Module      : Network.Google.Resource.Translate.Projects.GetSupportedLanguages
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns a list of supported languages for translation.
--
-- /See:/ <https://cloud.google.com/translate/docs/quickstarts Cloud Translation API Reference> for @translate.projects.getSupportedLanguages@.
module Network.Google.Resource.Translate.Projects.GetSupportedLanguages
    (
    -- * REST Resource
      ProjectsGetSupportedLanguagesResource

    -- * Creating a Request
    , projectsGetSupportedLanguages
    , ProjectsGetSupportedLanguages

    -- * Request Lenses
    , pgslParent
    , pgslXgafv
    , pgslUploadProtocol
    , pgslDisplayLanguageCode
    , pgslAccessToken
    , pgslUploadType
    , pgslModel
    , pgslCallback
    ) where

import Network.Google.Prelude
import Network.Google.Translate.Types

-- | A resource alias for @translate.projects.getSupportedLanguages@ method which the
-- 'ProjectsGetSupportedLanguages' request conforms to.
type ProjectsGetSupportedLanguagesResource =
     "v3" :>
       Capture "parent" Text :>
         "supportedLanguages" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "displayLanguageCode" Text :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "model" Text :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :>
                           Get '[JSON] SupportedLanguages

-- | Returns a list of supported languages for translation.
--
-- /See:/ 'projectsGetSupportedLanguages' smart constructor.
data ProjectsGetSupportedLanguages =
  ProjectsGetSupportedLanguages'
    { _pgslParent :: !Text
    , _pgslXgafv :: !(Maybe Xgafv)
    , _pgslUploadProtocol :: !(Maybe Text)
    , _pgslDisplayLanguageCode :: !(Maybe Text)
    , _pgslAccessToken :: !(Maybe Text)
    , _pgslUploadType :: !(Maybe Text)
    , _pgslModel :: !(Maybe Text)
    , _pgslCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsGetSupportedLanguages' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pgslParent'
--
-- * 'pgslXgafv'
--
-- * 'pgslUploadProtocol'
--
-- * 'pgslDisplayLanguageCode'
--
-- * 'pgslAccessToken'
--
-- * 'pgslUploadType'
--
-- * 'pgslModel'
--
-- * 'pgslCallback'
projectsGetSupportedLanguages
    :: Text -- ^ 'pgslParent'
    -> ProjectsGetSupportedLanguages
projectsGetSupportedLanguages pPgslParent_ =
  ProjectsGetSupportedLanguages'
    { _pgslParent = pPgslParent_
    , _pgslXgafv = Nothing
    , _pgslUploadProtocol = Nothing
    , _pgslDisplayLanguageCode = Nothing
    , _pgslAccessToken = Nothing
    , _pgslUploadType = Nothing
    , _pgslModel = Nothing
    , _pgslCallback = Nothing
    }


-- | Required. Project or location to make a call. Must refer to a caller\'s
-- project. Format: \`projects\/{project-number-or-id}\` or
-- \`projects\/{project-number-or-id}\/locations\/{location-id}\`. For
-- global calls, use
-- \`projects\/{project-number-or-id}\/locations\/global\` or
-- \`projects\/{project-number-or-id}\`. Non-global location is required
-- for AutoML models. Only models within the same region (have same
-- location-id) can be used, otherwise an INVALID_ARGUMENT (400) error is
-- returned.
pgslParent :: Lens' ProjectsGetSupportedLanguages Text
pgslParent
  = lens _pgslParent (\ s a -> s{_pgslParent = a})

-- | V1 error format.
pgslXgafv :: Lens' ProjectsGetSupportedLanguages (Maybe Xgafv)
pgslXgafv
  = lens _pgslXgafv (\ s a -> s{_pgslXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pgslUploadProtocol :: Lens' ProjectsGetSupportedLanguages (Maybe Text)
pgslUploadProtocol
  = lens _pgslUploadProtocol
      (\ s a -> s{_pgslUploadProtocol = a})

-- | Optional. The language to use to return localized, human readable names
-- of supported languages. If missing, then display names are not returned
-- in a response.
pgslDisplayLanguageCode :: Lens' ProjectsGetSupportedLanguages (Maybe Text)
pgslDisplayLanguageCode
  = lens _pgslDisplayLanguageCode
      (\ s a -> s{_pgslDisplayLanguageCode = a})

-- | OAuth access token.
pgslAccessToken :: Lens' ProjectsGetSupportedLanguages (Maybe Text)
pgslAccessToken
  = lens _pgslAccessToken
      (\ s a -> s{_pgslAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pgslUploadType :: Lens' ProjectsGetSupportedLanguages (Maybe Text)
pgslUploadType
  = lens _pgslUploadType
      (\ s a -> s{_pgslUploadType = a})

-- | Optional. Get supported languages of this model. The format depends on
-- model type: - AutoML Translation models:
-- \`projects\/{project-number-or-id}\/locations\/{location-id}\/models\/{model-id}\`
-- - General (built-in) models:
-- \`projects\/{project-number-or-id}\/locations\/{location-id}\/models\/general\/nmt\`,
-- Returns languages supported by the specified model. If missing, we get
-- supported languages of Google general NMT model.
pgslModel :: Lens' ProjectsGetSupportedLanguages (Maybe Text)
pgslModel
  = lens _pgslModel (\ s a -> s{_pgslModel = a})

-- | JSONP
pgslCallback :: Lens' ProjectsGetSupportedLanguages (Maybe Text)
pgslCallback
  = lens _pgslCallback (\ s a -> s{_pgslCallback = a})

instance GoogleRequest ProjectsGetSupportedLanguages
         where
        type Rs ProjectsGetSupportedLanguages =
             SupportedLanguages
        type Scopes ProjectsGetSupportedLanguages =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/cloud-translation"]
        requestClient ProjectsGetSupportedLanguages'{..}
          = go _pgslParent _pgslXgafv _pgslUploadProtocol
              _pgslDisplayLanguageCode
              _pgslAccessToken
              _pgslUploadType
              _pgslModel
              _pgslCallback
              (Just AltJSON)
              translateService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsGetSupportedLanguagesResource)
                      mempty
