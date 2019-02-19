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
-- Module      : Network.Google.Resource.DLP.Projects.Image.Redact
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Redacts potentially sensitive info from an image. This method has limits
-- on input size, processing time, and output size. See
-- https:\/\/cloud.google.com\/dlp\/docs\/redacting-sensitive-data-images
-- to learn more. When no InfoTypes or CustomInfoTypes are specified in
-- this request, the system will automatically choose what detectors to
-- run. By default this may be all types, but may change over time as
-- detectors are updated.
--
-- /See:/ <https://cloud.google.com/dlp/docs/ Cloud Data Loss Prevention (DLP) API Reference> for @dlp.projects.image.redact@.
module Network.Google.Resource.DLP.Projects.Image.Redact
    (
    -- * REST Resource
      ProjectsImageRedactResource

    -- * Creating a Request
    , projectsImageRedact
    , ProjectsImageRedact

    -- * Request Lenses
    , pirParent
    , pirXgafv
    , pirUploadProtocol
    , pirAccessToken
    , pirUploadType
    , pirPayload
    , pirCallback
    ) where

import           Network.Google.DLP.Types
import           Network.Google.Prelude

-- | A resource alias for @dlp.projects.image.redact@ method which the
-- 'ProjectsImageRedact' request conforms to.
type ProjectsImageRedactResource =
     "v2" :>
       Capture "parent" Text :>
         "image:redact" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] GooglePrivacyDlpV2RedactImageRequest
                         :> Post '[JSON] GooglePrivacyDlpV2RedactImageResponse

-- | Redacts potentially sensitive info from an image. This method has limits
-- on input size, processing time, and output size. See
-- https:\/\/cloud.google.com\/dlp\/docs\/redacting-sensitive-data-images
-- to learn more. When no InfoTypes or CustomInfoTypes are specified in
-- this request, the system will automatically choose what detectors to
-- run. By default this may be all types, but may change over time as
-- detectors are updated.
--
-- /See:/ 'projectsImageRedact' smart constructor.
data ProjectsImageRedact =
  ProjectsImageRedact'
    { _pirParent         :: !Text
    , _pirXgafv          :: !(Maybe Xgafv)
    , _pirUploadProtocol :: !(Maybe Text)
    , _pirAccessToken    :: !(Maybe Text)
    , _pirUploadType     :: !(Maybe Text)
    , _pirPayload        :: !GooglePrivacyDlpV2RedactImageRequest
    , _pirCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'ProjectsImageRedact' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pirParent'
--
-- * 'pirXgafv'
--
-- * 'pirUploadProtocol'
--
-- * 'pirAccessToken'
--
-- * 'pirUploadType'
--
-- * 'pirPayload'
--
-- * 'pirCallback'
projectsImageRedact
    :: Text -- ^ 'pirParent'
    -> GooglePrivacyDlpV2RedactImageRequest -- ^ 'pirPayload'
    -> ProjectsImageRedact
projectsImageRedact pPirParent_ pPirPayload_ =
  ProjectsImageRedact'
    { _pirParent = pPirParent_
    , _pirXgafv = Nothing
    , _pirUploadProtocol = Nothing
    , _pirAccessToken = Nothing
    , _pirUploadType = Nothing
    , _pirPayload = pPirPayload_
    , _pirCallback = Nothing
    }

-- | The parent resource name, for example projects\/my-project-id.
pirParent :: Lens' ProjectsImageRedact Text
pirParent
  = lens _pirParent (\ s a -> s{_pirParent = a})

-- | V1 error format.
pirXgafv :: Lens' ProjectsImageRedact (Maybe Xgafv)
pirXgafv = lens _pirXgafv (\ s a -> s{_pirXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pirUploadProtocol :: Lens' ProjectsImageRedact (Maybe Text)
pirUploadProtocol
  = lens _pirUploadProtocol
      (\ s a -> s{_pirUploadProtocol = a})

-- | OAuth access token.
pirAccessToken :: Lens' ProjectsImageRedact (Maybe Text)
pirAccessToken
  = lens _pirAccessToken
      (\ s a -> s{_pirAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pirUploadType :: Lens' ProjectsImageRedact (Maybe Text)
pirUploadType
  = lens _pirUploadType
      (\ s a -> s{_pirUploadType = a})

-- | Multipart request metadata.
pirPayload :: Lens' ProjectsImageRedact GooglePrivacyDlpV2RedactImageRequest
pirPayload
  = lens _pirPayload (\ s a -> s{_pirPayload = a})

-- | JSONP
pirCallback :: Lens' ProjectsImageRedact (Maybe Text)
pirCallback
  = lens _pirCallback (\ s a -> s{_pirCallback = a})

instance GoogleRequest ProjectsImageRedact where
        type Rs ProjectsImageRedact =
             GooglePrivacyDlpV2RedactImageResponse
        type Scopes ProjectsImageRedact =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient ProjectsImageRedact'{..}
          = go _pirParent _pirXgafv _pirUploadProtocol
              _pirAccessToken
              _pirUploadType
              _pirCallback
              (Just AltJSON)
              _pirPayload
              dLPService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsImageRedactResource)
                      mempty
