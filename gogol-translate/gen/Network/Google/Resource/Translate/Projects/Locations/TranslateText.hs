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
-- Module      : Network.Google.Resource.Translate.Projects.Locations.TranslateText
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Translates input text and returns translated text.
--
-- /See:/ <https://cloud.google.com/translate/docs/quickstarts Cloud Translation API Reference> for @translate.projects.locations.translateText@.
module Network.Google.Resource.Translate.Projects.Locations.TranslateText
    (
    -- * REST Resource
      ProjectsLocationsTranslateTextResource

    -- * Creating a Request
    , projectsLocationsTranslateText
    , ProjectsLocationsTranslateText

    -- * Request Lenses
    , plttParent
    , plttXgafv
    , plttUploadProtocol
    , plttAccessToken
    , plttUploadType
    , plttPayload
    , plttCallback
    ) where

import Network.Google.Prelude
import Network.Google.Translate.Types

-- | A resource alias for @translate.projects.locations.translateText@ method which the
-- 'ProjectsLocationsTranslateText' request conforms to.
type ProjectsLocationsTranslateTextResource =
     "v3" :>
       CaptureMode "parent" "translateText" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] TranslateTextRequest :>
                       Post '[JSON] TranslateTextResponse

-- | Translates input text and returns translated text.
--
-- /See:/ 'projectsLocationsTranslateText' smart constructor.
data ProjectsLocationsTranslateText =
  ProjectsLocationsTranslateText'
    { _plttParent :: !Text
    , _plttXgafv :: !(Maybe Xgafv)
    , _plttUploadProtocol :: !(Maybe Text)
    , _plttAccessToken :: !(Maybe Text)
    , _plttUploadType :: !(Maybe Text)
    , _plttPayload :: !TranslateTextRequest
    , _plttCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsTranslateText' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plttParent'
--
-- * 'plttXgafv'
--
-- * 'plttUploadProtocol'
--
-- * 'plttAccessToken'
--
-- * 'plttUploadType'
--
-- * 'plttPayload'
--
-- * 'plttCallback'
projectsLocationsTranslateText
    :: Text -- ^ 'plttParent'
    -> TranslateTextRequest -- ^ 'plttPayload'
    -> ProjectsLocationsTranslateText
projectsLocationsTranslateText pPlttParent_ pPlttPayload_ =
  ProjectsLocationsTranslateText'
    { _plttParent = pPlttParent_
    , _plttXgafv = Nothing
    , _plttUploadProtocol = Nothing
    , _plttAccessToken = Nothing
    , _plttUploadType = Nothing
    , _plttPayload = pPlttPayload_
    , _plttCallback = Nothing
    }


-- | Required. Project or location to make a call. Must refer to a caller\'s
-- project. Format: \`projects\/{project-number-or-id}\` or
-- \`projects\/{project-number-or-id}\/locations\/{location-id}\`. For
-- global calls, use
-- \`projects\/{project-number-or-id}\/locations\/global\` or
-- \`projects\/{project-number-or-id}\`. Non-global location is required
-- for requests using AutoML models or custom glossaries. Models and
-- glossaries must be within the same region (have same location-id),
-- otherwise an INVALID_ARGUMENT (400) error is returned.
plttParent :: Lens' ProjectsLocationsTranslateText Text
plttParent
  = lens _plttParent (\ s a -> s{_plttParent = a})

-- | V1 error format.
plttXgafv :: Lens' ProjectsLocationsTranslateText (Maybe Xgafv)
plttXgafv
  = lens _plttXgafv (\ s a -> s{_plttXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
plttUploadProtocol :: Lens' ProjectsLocationsTranslateText (Maybe Text)
plttUploadProtocol
  = lens _plttUploadProtocol
      (\ s a -> s{_plttUploadProtocol = a})

-- | OAuth access token.
plttAccessToken :: Lens' ProjectsLocationsTranslateText (Maybe Text)
plttAccessToken
  = lens _plttAccessToken
      (\ s a -> s{_plttAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
plttUploadType :: Lens' ProjectsLocationsTranslateText (Maybe Text)
plttUploadType
  = lens _plttUploadType
      (\ s a -> s{_plttUploadType = a})

-- | Multipart request metadata.
plttPayload :: Lens' ProjectsLocationsTranslateText TranslateTextRequest
plttPayload
  = lens _plttPayload (\ s a -> s{_plttPayload = a})

-- | JSONP
plttCallback :: Lens' ProjectsLocationsTranslateText (Maybe Text)
plttCallback
  = lens _plttCallback (\ s a -> s{_plttCallback = a})

instance GoogleRequest ProjectsLocationsTranslateText
         where
        type Rs ProjectsLocationsTranslateText =
             TranslateTextResponse
        type Scopes ProjectsLocationsTranslateText =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/cloud-translation"]
        requestClient ProjectsLocationsTranslateText'{..}
          = go _plttParent _plttXgafv _plttUploadProtocol
              _plttAccessToken
              _plttUploadType
              _plttCallback
              (Just AltJSON)
              _plttPayload
              translateService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsLocationsTranslateTextResource)
                      mempty
