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
-- Module      : Network.Google.Resource.DLP.Projects.Locations.Image.Redact
-- Copyright   : (c) 2015-2021 Brendan Hay
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
-- /See:/ <https://cloud.google.com/dlp/docs/ Cloud Data Loss Prevention (DLP) API Reference> for @dlp.projects.locations.image.redact@.
module Network.Google.Resource.DLP.Projects.Locations.Image.Redact
    (
    -- * REST Resource
      ProjectsLocationsImageRedactResource

    -- * Creating a Request
    , projectsLocationsImageRedact
    , ProjectsLocationsImageRedact

    -- * Request Lenses
    , plirParent
    , plirXgafv
    , plirUploadProtocol
    , plirAccessToken
    , plirUploadType
    , plirPayload
    , plirCallback
    ) where

import Network.Google.DLP.Types
import Network.Google.Prelude

-- | A resource alias for @dlp.projects.locations.image.redact@ method which the
-- 'ProjectsLocationsImageRedact' request conforms to.
type ProjectsLocationsImageRedactResource =
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
-- /See:/ 'projectsLocationsImageRedact' smart constructor.
data ProjectsLocationsImageRedact =
  ProjectsLocationsImageRedact'
    { _plirParent :: !Text
    , _plirXgafv :: !(Maybe Xgafv)
    , _plirUploadProtocol :: !(Maybe Text)
    , _plirAccessToken :: !(Maybe Text)
    , _plirUploadType :: !(Maybe Text)
    , _plirPayload :: !GooglePrivacyDlpV2RedactImageRequest
    , _plirCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsImageRedact' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plirParent'
--
-- * 'plirXgafv'
--
-- * 'plirUploadProtocol'
--
-- * 'plirAccessToken'
--
-- * 'plirUploadType'
--
-- * 'plirPayload'
--
-- * 'plirCallback'
projectsLocationsImageRedact
    :: Text -- ^ 'plirParent'
    -> GooglePrivacyDlpV2RedactImageRequest -- ^ 'plirPayload'
    -> ProjectsLocationsImageRedact
projectsLocationsImageRedact pPlirParent_ pPlirPayload_ =
  ProjectsLocationsImageRedact'
    { _plirParent = pPlirParent_
    , _plirXgafv = Nothing
    , _plirUploadProtocol = Nothing
    , _plirAccessToken = Nothing
    , _plirUploadType = Nothing
    , _plirPayload = pPlirPayload_
    , _plirCallback = Nothing
    }


-- | Parent resource name. The format of this value varies depending on
-- whether you have [specified a processing
-- location](https:\/\/cloud.google.com\/dlp\/docs\/specifying-location): +
-- Projects scope, location specified:
-- \`projects\/\`PROJECT_ID\`\/locations\/\`LOCATION_ID + Projects scope,
-- no location specified (defaults to global): \`projects\/\`PROJECT_ID The
-- following example \`parent\` string specifies a parent project with the
-- identifier \`example-project\`, and specifies the \`europe-west3\`
-- location for processing data:
-- parent=projects\/example-project\/locations\/europe-west3
plirParent :: Lens' ProjectsLocationsImageRedact Text
plirParent
  = lens _plirParent (\ s a -> s{_plirParent = a})

-- | V1 error format.
plirXgafv :: Lens' ProjectsLocationsImageRedact (Maybe Xgafv)
plirXgafv
  = lens _plirXgafv (\ s a -> s{_plirXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
plirUploadProtocol :: Lens' ProjectsLocationsImageRedact (Maybe Text)
plirUploadProtocol
  = lens _plirUploadProtocol
      (\ s a -> s{_plirUploadProtocol = a})

-- | OAuth access token.
plirAccessToken :: Lens' ProjectsLocationsImageRedact (Maybe Text)
plirAccessToken
  = lens _plirAccessToken
      (\ s a -> s{_plirAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
plirUploadType :: Lens' ProjectsLocationsImageRedact (Maybe Text)
plirUploadType
  = lens _plirUploadType
      (\ s a -> s{_plirUploadType = a})

-- | Multipart request metadata.
plirPayload :: Lens' ProjectsLocationsImageRedact GooglePrivacyDlpV2RedactImageRequest
plirPayload
  = lens _plirPayload (\ s a -> s{_plirPayload = a})

-- | JSONP
plirCallback :: Lens' ProjectsLocationsImageRedact (Maybe Text)
plirCallback
  = lens _plirCallback (\ s a -> s{_plirCallback = a})

instance GoogleRequest ProjectsLocationsImageRedact
         where
        type Rs ProjectsLocationsImageRedact =
             GooglePrivacyDlpV2RedactImageResponse
        type Scopes ProjectsLocationsImageRedact =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient ProjectsLocationsImageRedact'{..}
          = go _plirParent _plirXgafv _plirUploadProtocol
              _plirAccessToken
              _plirUploadType
              _plirCallback
              (Just AltJSON)
              _plirPayload
              dLPService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsLocationsImageRedactResource)
                      mempty
