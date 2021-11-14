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
-- Module      : Network.Google.Resource.Translate.Projects.Locations.BatchTranslateText
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Translates a large volume of text in asynchronous batch mode. This
-- function provides real-time output as the inputs are being processed. If
-- caller cancels a request, the partial results (for an input file, it\'s
-- all or nothing) may still be available on the specified output location.
-- This call returns immediately and you can use
-- google.longrunning.Operation.name to poll the status of the call.
--
-- /See:/ <https://cloud.google.com/translate/docs/quickstarts Cloud Translation API Reference> for @translate.projects.locations.batchTranslateText@.
module Network.Google.Resource.Translate.Projects.Locations.BatchTranslateText
    (
    -- * REST Resource
      ProjectsLocationsBatchTranslateTextResource

    -- * Creating a Request
    , projectsLocationsBatchTranslateText
    , ProjectsLocationsBatchTranslateText

    -- * Request Lenses
    , plbttParent
    , plbttXgafv
    , plbttUploadProtocol
    , plbttAccessToken
    , plbttUploadType
    , plbttPayload
    , plbttCallback
    ) where

import Network.Google.Prelude
import Network.Google.Translate.Types

-- | A resource alias for @translate.projects.locations.batchTranslateText@ method which the
-- 'ProjectsLocationsBatchTranslateText' request conforms to.
type ProjectsLocationsBatchTranslateTextResource =
     "v3" :>
       CaptureMode "parent" "batchTranslateText" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] BatchTranslateTextRequest :>
                       Post '[JSON] Operation

-- | Translates a large volume of text in asynchronous batch mode. This
-- function provides real-time output as the inputs are being processed. If
-- caller cancels a request, the partial results (for an input file, it\'s
-- all or nothing) may still be available on the specified output location.
-- This call returns immediately and you can use
-- google.longrunning.Operation.name to poll the status of the call.
--
-- /See:/ 'projectsLocationsBatchTranslateText' smart constructor.
data ProjectsLocationsBatchTranslateText =
  ProjectsLocationsBatchTranslateText'
    { _plbttParent :: !Text
    , _plbttXgafv :: !(Maybe Xgafv)
    , _plbttUploadProtocol :: !(Maybe Text)
    , _plbttAccessToken :: !(Maybe Text)
    , _plbttUploadType :: !(Maybe Text)
    , _plbttPayload :: !BatchTranslateTextRequest
    , _plbttCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsBatchTranslateText' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plbttParent'
--
-- * 'plbttXgafv'
--
-- * 'plbttUploadProtocol'
--
-- * 'plbttAccessToken'
--
-- * 'plbttUploadType'
--
-- * 'plbttPayload'
--
-- * 'plbttCallback'
projectsLocationsBatchTranslateText
    :: Text -- ^ 'plbttParent'
    -> BatchTranslateTextRequest -- ^ 'plbttPayload'
    -> ProjectsLocationsBatchTranslateText
projectsLocationsBatchTranslateText pPlbttParent_ pPlbttPayload_ =
  ProjectsLocationsBatchTranslateText'
    { _plbttParent = pPlbttParent_
    , _plbttXgafv = Nothing
    , _plbttUploadProtocol = Nothing
    , _plbttAccessToken = Nothing
    , _plbttUploadType = Nothing
    , _plbttPayload = pPlbttPayload_
    , _plbttCallback = Nothing
    }


-- | Required. Location to make a call. Must refer to a caller\'s project.
-- Format: \`projects\/{project-number-or-id}\/locations\/{location-id}\`.
-- The \`global\` location is not supported for batch translation. Only
-- AutoML Translation models or glossaries within the same region (have the
-- same location-id) can be used, otherwise an INVALID_ARGUMENT (400) error
-- is returned.
plbttParent :: Lens' ProjectsLocationsBatchTranslateText Text
plbttParent
  = lens _plbttParent (\ s a -> s{_plbttParent = a})

-- | V1 error format.
plbttXgafv :: Lens' ProjectsLocationsBatchTranslateText (Maybe Xgafv)
plbttXgafv
  = lens _plbttXgafv (\ s a -> s{_plbttXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
plbttUploadProtocol :: Lens' ProjectsLocationsBatchTranslateText (Maybe Text)
plbttUploadProtocol
  = lens _plbttUploadProtocol
      (\ s a -> s{_plbttUploadProtocol = a})

-- | OAuth access token.
plbttAccessToken :: Lens' ProjectsLocationsBatchTranslateText (Maybe Text)
plbttAccessToken
  = lens _plbttAccessToken
      (\ s a -> s{_plbttAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
plbttUploadType :: Lens' ProjectsLocationsBatchTranslateText (Maybe Text)
plbttUploadType
  = lens _plbttUploadType
      (\ s a -> s{_plbttUploadType = a})

-- | Multipart request metadata.
plbttPayload :: Lens' ProjectsLocationsBatchTranslateText BatchTranslateTextRequest
plbttPayload
  = lens _plbttPayload (\ s a -> s{_plbttPayload = a})

-- | JSONP
plbttCallback :: Lens' ProjectsLocationsBatchTranslateText (Maybe Text)
plbttCallback
  = lens _plbttCallback
      (\ s a -> s{_plbttCallback = a})

instance GoogleRequest
           ProjectsLocationsBatchTranslateText
         where
        type Rs ProjectsLocationsBatchTranslateText =
             Operation
        type Scopes ProjectsLocationsBatchTranslateText =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          ProjectsLocationsBatchTranslateText'{..}
          = go _plbttParent _plbttXgafv _plbttUploadProtocol
              _plbttAccessToken
              _plbttUploadType
              _plbttCallback
              (Just AltJSON)
              _plbttPayload
              translateService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsLocationsBatchTranslateTextResource)
                      mempty
