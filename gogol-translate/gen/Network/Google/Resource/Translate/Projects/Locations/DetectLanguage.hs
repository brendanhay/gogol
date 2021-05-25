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
-- Module      : Network.Google.Resource.Translate.Projects.Locations.DetectLanguage
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Detects the language of text within a request.
--
-- /See:/ <https://cloud.google.com/translate/docs/quickstarts Cloud Translation API Reference> for @translate.projects.locations.detectLanguage@.
module Network.Google.Resource.Translate.Projects.Locations.DetectLanguage
    (
    -- * REST Resource
      ProjectsLocationsDetectLanguageResource

    -- * Creating a Request
    , projectsLocationsDetectLanguage
    , ProjectsLocationsDetectLanguage

    -- * Request Lenses
    , pldlParent
    , pldlXgafv
    , pldlUploadProtocol
    , pldlAccessToken
    , pldlUploadType
    , pldlPayload
    , pldlCallback
    ) where

import Network.Google.Prelude
import Network.Google.Translate.Types

-- | A resource alias for @translate.projects.locations.detectLanguage@ method which the
-- 'ProjectsLocationsDetectLanguage' request conforms to.
type ProjectsLocationsDetectLanguageResource =
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
-- /See:/ 'projectsLocationsDetectLanguage' smart constructor.
data ProjectsLocationsDetectLanguage =
  ProjectsLocationsDetectLanguage'
    { _pldlParent :: !Text
    , _pldlXgafv :: !(Maybe Xgafv)
    , _pldlUploadProtocol :: !(Maybe Text)
    , _pldlAccessToken :: !(Maybe Text)
    , _pldlUploadType :: !(Maybe Text)
    , _pldlPayload :: !DetectLanguageRequest
    , _pldlCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsDetectLanguage' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pldlParent'
--
-- * 'pldlXgafv'
--
-- * 'pldlUploadProtocol'
--
-- * 'pldlAccessToken'
--
-- * 'pldlUploadType'
--
-- * 'pldlPayload'
--
-- * 'pldlCallback'
projectsLocationsDetectLanguage
    :: Text -- ^ 'pldlParent'
    -> DetectLanguageRequest -- ^ 'pldlPayload'
    -> ProjectsLocationsDetectLanguage
projectsLocationsDetectLanguage pPldlParent_ pPldlPayload_ =
  ProjectsLocationsDetectLanguage'
    { _pldlParent = pPldlParent_
    , _pldlXgafv = Nothing
    , _pldlUploadProtocol = Nothing
    , _pldlAccessToken = Nothing
    , _pldlUploadType = Nothing
    , _pldlPayload = pPldlPayload_
    , _pldlCallback = Nothing
    }


-- | Required. Project or location to make a call. Must refer to a caller\'s
-- project. Format:
-- \`projects\/{project-number-or-id}\/locations\/{location-id}\` or
-- \`projects\/{project-number-or-id}\`. For global calls, use
-- \`projects\/{project-number-or-id}\/locations\/global\` or
-- \`projects\/{project-number-or-id}\`. Only models within the same region
-- (has same location-id) can be used. Otherwise an INVALID_ARGUMENT (400)
-- error is returned.
pldlParent :: Lens' ProjectsLocationsDetectLanguage Text
pldlParent
  = lens _pldlParent (\ s a -> s{_pldlParent = a})

-- | V1 error format.
pldlXgafv :: Lens' ProjectsLocationsDetectLanguage (Maybe Xgafv)
pldlXgafv
  = lens _pldlXgafv (\ s a -> s{_pldlXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pldlUploadProtocol :: Lens' ProjectsLocationsDetectLanguage (Maybe Text)
pldlUploadProtocol
  = lens _pldlUploadProtocol
      (\ s a -> s{_pldlUploadProtocol = a})

-- | OAuth access token.
pldlAccessToken :: Lens' ProjectsLocationsDetectLanguage (Maybe Text)
pldlAccessToken
  = lens _pldlAccessToken
      (\ s a -> s{_pldlAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pldlUploadType :: Lens' ProjectsLocationsDetectLanguage (Maybe Text)
pldlUploadType
  = lens _pldlUploadType
      (\ s a -> s{_pldlUploadType = a})

-- | Multipart request metadata.
pldlPayload :: Lens' ProjectsLocationsDetectLanguage DetectLanguageRequest
pldlPayload
  = lens _pldlPayload (\ s a -> s{_pldlPayload = a})

-- | JSONP
pldlCallback :: Lens' ProjectsLocationsDetectLanguage (Maybe Text)
pldlCallback
  = lens _pldlCallback (\ s a -> s{_pldlCallback = a})

instance GoogleRequest
           ProjectsLocationsDetectLanguage
         where
        type Rs ProjectsLocationsDetectLanguage =
             DetectLanguageResponse
        type Scopes ProjectsLocationsDetectLanguage =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/cloud-translation"]
        requestClient ProjectsLocationsDetectLanguage'{..}
          = go _pldlParent _pldlXgafv _pldlUploadProtocol
              _pldlAccessToken
              _pldlUploadType
              _pldlCallback
              (Just AltJSON)
              _pldlPayload
              translateService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsLocationsDetectLanguageResource)
                      mempty
