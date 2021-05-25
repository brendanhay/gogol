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
-- Module      : Network.Google.Resource.Translate.Projects.DetectLanguage
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Detects the language of text within a request.
--
-- /See:/ <https://cloud.google.com/translate/docs/quickstarts Cloud Translation API Reference> for @translate.projects.detectLanguage@.
module Network.Google.Resource.Translate.Projects.DetectLanguage
    (
    -- * REST Resource
      ProjectsDetectLanguageResource

    -- * Creating a Request
    , projectsDetectLanguage
    , ProjectsDetectLanguage

    -- * Request Lenses
    , pdlParent
    , pdlXgafv
    , pdlUploadProtocol
    , pdlAccessToken
    , pdlUploadType
    , pdlPayload
    , pdlCallback
    ) where

import Network.Google.Prelude
import Network.Google.Translate.Types

-- | A resource alias for @translate.projects.detectLanguage@ method which the
-- 'ProjectsDetectLanguage' request conforms to.
type ProjectsDetectLanguageResource =
     "v3" :>
       CaptureMode "parent" "detectLanguage" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] DetectLanguageRequest :>
                       Post '[JSON] DetectLanguageResponse

-- | Detects the language of text within a request.
--
-- /See:/ 'projectsDetectLanguage' smart constructor.
data ProjectsDetectLanguage =
  ProjectsDetectLanguage'
    { _pdlParent :: !Text
    , _pdlXgafv :: !(Maybe Xgafv)
    , _pdlUploadProtocol :: !(Maybe Text)
    , _pdlAccessToken :: !(Maybe Text)
    , _pdlUploadType :: !(Maybe Text)
    , _pdlPayload :: !DetectLanguageRequest
    , _pdlCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsDetectLanguage' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pdlParent'
--
-- * 'pdlXgafv'
--
-- * 'pdlUploadProtocol'
--
-- * 'pdlAccessToken'
--
-- * 'pdlUploadType'
--
-- * 'pdlPayload'
--
-- * 'pdlCallback'
projectsDetectLanguage
    :: Text -- ^ 'pdlParent'
    -> DetectLanguageRequest -- ^ 'pdlPayload'
    -> ProjectsDetectLanguage
projectsDetectLanguage pPdlParent_ pPdlPayload_ =
  ProjectsDetectLanguage'
    { _pdlParent = pPdlParent_
    , _pdlXgafv = Nothing
    , _pdlUploadProtocol = Nothing
    , _pdlAccessToken = Nothing
    , _pdlUploadType = Nothing
    , _pdlPayload = pPdlPayload_
    , _pdlCallback = Nothing
    }


-- | Required. Project or location to make a call. Must refer to a caller\'s
-- project. Format:
-- \`projects\/{project-number-or-id}\/locations\/{location-id}\` or
-- \`projects\/{project-number-or-id}\`. For global calls, use
-- \`projects\/{project-number-or-id}\/locations\/global\` or
-- \`projects\/{project-number-or-id}\`. Only models within the same region
-- (has same location-id) can be used. Otherwise an INVALID_ARGUMENT (400)
-- error is returned.
pdlParent :: Lens' ProjectsDetectLanguage Text
pdlParent
  = lens _pdlParent (\ s a -> s{_pdlParent = a})

-- | V1 error format.
pdlXgafv :: Lens' ProjectsDetectLanguage (Maybe Xgafv)
pdlXgafv = lens _pdlXgafv (\ s a -> s{_pdlXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pdlUploadProtocol :: Lens' ProjectsDetectLanguage (Maybe Text)
pdlUploadProtocol
  = lens _pdlUploadProtocol
      (\ s a -> s{_pdlUploadProtocol = a})

-- | OAuth access token.
pdlAccessToken :: Lens' ProjectsDetectLanguage (Maybe Text)
pdlAccessToken
  = lens _pdlAccessToken
      (\ s a -> s{_pdlAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pdlUploadType :: Lens' ProjectsDetectLanguage (Maybe Text)
pdlUploadType
  = lens _pdlUploadType
      (\ s a -> s{_pdlUploadType = a})

-- | Multipart request metadata.
pdlPayload :: Lens' ProjectsDetectLanguage DetectLanguageRequest
pdlPayload
  = lens _pdlPayload (\ s a -> s{_pdlPayload = a})

-- | JSONP
pdlCallback :: Lens' ProjectsDetectLanguage (Maybe Text)
pdlCallback
  = lens _pdlCallback (\ s a -> s{_pdlCallback = a})

instance GoogleRequest ProjectsDetectLanguage where
        type Rs ProjectsDetectLanguage =
             DetectLanguageResponse
        type Scopes ProjectsDetectLanguage =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/cloud-translation"]
        requestClient ProjectsDetectLanguage'{..}
          = go _pdlParent _pdlXgafv _pdlUploadProtocol
              _pdlAccessToken
              _pdlUploadType
              _pdlCallback
              (Just AltJSON)
              _pdlPayload
              translateService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsDetectLanguageResource)
                      mempty
