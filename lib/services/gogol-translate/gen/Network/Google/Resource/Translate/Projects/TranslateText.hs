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
-- Module      : Network.Google.Resource.Translate.Projects.TranslateText
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Translates input text and returns translated text.
--
-- /See:/ <https://cloud.google.com/translate/docs/quickstarts Cloud Translation API Reference> for @translate.projects.translateText@.
module Network.Google.Resource.Translate.Projects.TranslateText
    (
    -- * REST Resource
      ProjectsTranslateTextResource

    -- * Creating a Request
    , projectsTranslateText
    , ProjectsTranslateText

    -- * Request Lenses
    , pttParent
    , pttXgafv
    , pttUploadProtocol
    , pttAccessToken
    , pttUploadType
    , pttPayload
    , pttCallback
    ) where

import Network.Google.Prelude
import Network.Google.Translate.Types

-- | A resource alias for @translate.projects.translateText@ method which the
-- 'ProjectsTranslateText' request conforms to.
type ProjectsTranslateTextResource =
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
-- /See:/ 'projectsTranslateText' smart constructor.
data ProjectsTranslateText =
  ProjectsTranslateText'
    { _pttParent :: !Text
    , _pttXgafv :: !(Maybe Xgafv)
    , _pttUploadProtocol :: !(Maybe Text)
    , _pttAccessToken :: !(Maybe Text)
    , _pttUploadType :: !(Maybe Text)
    , _pttPayload :: !TranslateTextRequest
    , _pttCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsTranslateText' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pttParent'
--
-- * 'pttXgafv'
--
-- * 'pttUploadProtocol'
--
-- * 'pttAccessToken'
--
-- * 'pttUploadType'
--
-- * 'pttPayload'
--
-- * 'pttCallback'
projectsTranslateText
    :: Text -- ^ 'pttParent'
    -> TranslateTextRequest -- ^ 'pttPayload'
    -> ProjectsTranslateText
projectsTranslateText pPttParent_ pPttPayload_ =
  ProjectsTranslateText'
    { _pttParent = pPttParent_
    , _pttXgafv = Nothing
    , _pttUploadProtocol = Nothing
    , _pttAccessToken = Nothing
    , _pttUploadType = Nothing
    , _pttPayload = pPttPayload_
    , _pttCallback = Nothing
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
pttParent :: Lens' ProjectsTranslateText Text
pttParent
  = lens _pttParent (\ s a -> s{_pttParent = a})

-- | V1 error format.
pttXgafv :: Lens' ProjectsTranslateText (Maybe Xgafv)
pttXgafv = lens _pttXgafv (\ s a -> s{_pttXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pttUploadProtocol :: Lens' ProjectsTranslateText (Maybe Text)
pttUploadProtocol
  = lens _pttUploadProtocol
      (\ s a -> s{_pttUploadProtocol = a})

-- | OAuth access token.
pttAccessToken :: Lens' ProjectsTranslateText (Maybe Text)
pttAccessToken
  = lens _pttAccessToken
      (\ s a -> s{_pttAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pttUploadType :: Lens' ProjectsTranslateText (Maybe Text)
pttUploadType
  = lens _pttUploadType
      (\ s a -> s{_pttUploadType = a})

-- | Multipart request metadata.
pttPayload :: Lens' ProjectsTranslateText TranslateTextRequest
pttPayload
  = lens _pttPayload (\ s a -> s{_pttPayload = a})

-- | JSONP
pttCallback :: Lens' ProjectsTranslateText (Maybe Text)
pttCallback
  = lens _pttCallback (\ s a -> s{_pttCallback = a})

instance GoogleRequest ProjectsTranslateText where
        type Rs ProjectsTranslateText = TranslateTextResponse
        type Scopes ProjectsTranslateText =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/cloud-translation"]
        requestClient ProjectsTranslateText'{..}
          = go _pttParent _pttXgafv _pttUploadProtocol
              _pttAccessToken
              _pttUploadType
              _pttCallback
              (Just AltJSON)
              _pttPayload
              translateService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsTranslateTextResource)
                      mempty
