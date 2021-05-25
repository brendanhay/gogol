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
-- Module      : Network.Google.Resource.Translate.Projects.Locations.GetSupportedLanguages
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns a list of supported languages for translation.
--
-- /See:/ <https://cloud.google.com/translate/docs/quickstarts Cloud Translation API Reference> for @translate.projects.locations.getSupportedLanguages@.
module Network.Google.Resource.Translate.Projects.Locations.GetSupportedLanguages
    (
    -- * REST Resource
      ProjectsLocationsGetSupportedLanguagesResource

    -- * Creating a Request
    , projectsLocationsGetSupportedLanguages
    , ProjectsLocationsGetSupportedLanguages

    -- * Request Lenses
    , plgslParent
    , plgslXgafv
    , plgslUploadProtocol
    , plgslDisplayLanguageCode
    , plgslAccessToken
    , plgslUploadType
    , plgslModel
    , plgslCallback
    ) where

import Network.Google.Prelude
import Network.Google.Translate.Types

-- | A resource alias for @translate.projects.locations.getSupportedLanguages@ method which the
-- 'ProjectsLocationsGetSupportedLanguages' request conforms to.
type ProjectsLocationsGetSupportedLanguagesResource =
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
-- /See:/ 'projectsLocationsGetSupportedLanguages' smart constructor.
data ProjectsLocationsGetSupportedLanguages =
  ProjectsLocationsGetSupportedLanguages'
    { _plgslParent :: !Text
    , _plgslXgafv :: !(Maybe Xgafv)
    , _plgslUploadProtocol :: !(Maybe Text)
    , _plgslDisplayLanguageCode :: !(Maybe Text)
    , _plgslAccessToken :: !(Maybe Text)
    , _plgslUploadType :: !(Maybe Text)
    , _plgslModel :: !(Maybe Text)
    , _plgslCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsGetSupportedLanguages' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plgslParent'
--
-- * 'plgslXgafv'
--
-- * 'plgslUploadProtocol'
--
-- * 'plgslDisplayLanguageCode'
--
-- * 'plgslAccessToken'
--
-- * 'plgslUploadType'
--
-- * 'plgslModel'
--
-- * 'plgslCallback'
projectsLocationsGetSupportedLanguages
    :: Text -- ^ 'plgslParent'
    -> ProjectsLocationsGetSupportedLanguages
projectsLocationsGetSupportedLanguages pPlgslParent_ =
  ProjectsLocationsGetSupportedLanguages'
    { _plgslParent = pPlgslParent_
    , _plgslXgafv = Nothing
    , _plgslUploadProtocol = Nothing
    , _plgslDisplayLanguageCode = Nothing
    , _plgslAccessToken = Nothing
    , _plgslUploadType = Nothing
    , _plgslModel = Nothing
    , _plgslCallback = Nothing
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
plgslParent :: Lens' ProjectsLocationsGetSupportedLanguages Text
plgslParent
  = lens _plgslParent (\ s a -> s{_plgslParent = a})

-- | V1 error format.
plgslXgafv :: Lens' ProjectsLocationsGetSupportedLanguages (Maybe Xgafv)
plgslXgafv
  = lens _plgslXgafv (\ s a -> s{_plgslXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
plgslUploadProtocol :: Lens' ProjectsLocationsGetSupportedLanguages (Maybe Text)
plgslUploadProtocol
  = lens _plgslUploadProtocol
      (\ s a -> s{_plgslUploadProtocol = a})

-- | Optional. The language to use to return localized, human readable names
-- of supported languages. If missing, then display names are not returned
-- in a response.
plgslDisplayLanguageCode :: Lens' ProjectsLocationsGetSupportedLanguages (Maybe Text)
plgslDisplayLanguageCode
  = lens _plgslDisplayLanguageCode
      (\ s a -> s{_plgslDisplayLanguageCode = a})

-- | OAuth access token.
plgslAccessToken :: Lens' ProjectsLocationsGetSupportedLanguages (Maybe Text)
plgslAccessToken
  = lens _plgslAccessToken
      (\ s a -> s{_plgslAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
plgslUploadType :: Lens' ProjectsLocationsGetSupportedLanguages (Maybe Text)
plgslUploadType
  = lens _plgslUploadType
      (\ s a -> s{_plgslUploadType = a})

-- | Optional. Get supported languages of this model. The format depends on
-- model type: - AutoML Translation models:
-- \`projects\/{project-number-or-id}\/locations\/{location-id}\/models\/{model-id}\`
-- - General (built-in) models:
-- \`projects\/{project-number-or-id}\/locations\/{location-id}\/models\/general\/nmt\`,
-- Returns languages supported by the specified model. If missing, we get
-- supported languages of Google general NMT model.
plgslModel :: Lens' ProjectsLocationsGetSupportedLanguages (Maybe Text)
plgslModel
  = lens _plgslModel (\ s a -> s{_plgslModel = a})

-- | JSONP
plgslCallback :: Lens' ProjectsLocationsGetSupportedLanguages (Maybe Text)
plgslCallback
  = lens _plgslCallback
      (\ s a -> s{_plgslCallback = a})

instance GoogleRequest
           ProjectsLocationsGetSupportedLanguages
         where
        type Rs ProjectsLocationsGetSupportedLanguages =
             SupportedLanguages
        type Scopes ProjectsLocationsGetSupportedLanguages =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/cloud-translation"]
        requestClient
          ProjectsLocationsGetSupportedLanguages'{..}
          = go _plgslParent _plgslXgafv _plgslUploadProtocol
              _plgslDisplayLanguageCode
              _plgslAccessToken
              _plgslUploadType
              _plgslModel
              _plgslCallback
              (Just AltJSON)
              translateService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsLocationsGetSupportedLanguagesResource)
                      mempty
