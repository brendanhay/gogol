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
-- Module      : Network.Google.Resource.DLP.Projects.Locations.Content.Deidentify
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- De-identifies potentially sensitive info from a ContentItem. This method
-- has limits on input size and output size. See
-- https:\/\/cloud.google.com\/dlp\/docs\/deidentify-sensitive-data to
-- learn more. When no InfoTypes or CustomInfoTypes are specified in this
-- request, the system will automatically choose what detectors to run. By
-- default this may be all types, but may change over time as detectors are
-- updated.
--
-- /See:/ <https://cloud.google.com/dlp/docs/ Cloud Data Loss Prevention (DLP) API Reference> for @dlp.projects.locations.content.deidentify@.
module Network.Google.Resource.DLP.Projects.Locations.Content.Deidentify
    (
    -- * REST Resource
      ProjectsLocationsContentDeidentifyResource

    -- * Creating a Request
    , projectsLocationsContentDeidentify
    , ProjectsLocationsContentDeidentify

    -- * Request Lenses
    , plcdParent
    , plcdXgafv
    , plcdUploadProtocol
    , plcdAccessToken
    , plcdUploadType
    , plcdPayload
    , plcdCallback
    ) where

import Network.Google.DLP.Types
import Network.Google.Prelude

-- | A resource alias for @dlp.projects.locations.content.deidentify@ method which the
-- 'ProjectsLocationsContentDeidentify' request conforms to.
type ProjectsLocationsContentDeidentifyResource =
     "v2" :>
       Capture "parent" Text :>
         "content:deidentify" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON]
                         GooglePrivacyDlpV2DeidentifyContentRequest
                         :>
                         Post '[JSON]
                           GooglePrivacyDlpV2DeidentifyContentResponse

-- | De-identifies potentially sensitive info from a ContentItem. This method
-- has limits on input size and output size. See
-- https:\/\/cloud.google.com\/dlp\/docs\/deidentify-sensitive-data to
-- learn more. When no InfoTypes or CustomInfoTypes are specified in this
-- request, the system will automatically choose what detectors to run. By
-- default this may be all types, but may change over time as detectors are
-- updated.
--
-- /See:/ 'projectsLocationsContentDeidentify' smart constructor.
data ProjectsLocationsContentDeidentify =
  ProjectsLocationsContentDeidentify'
    { _plcdParent :: !Text
    , _plcdXgafv :: !(Maybe Xgafv)
    , _plcdUploadProtocol :: !(Maybe Text)
    , _plcdAccessToken :: !(Maybe Text)
    , _plcdUploadType :: !(Maybe Text)
    , _plcdPayload :: !GooglePrivacyDlpV2DeidentifyContentRequest
    , _plcdCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsContentDeidentify' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plcdParent'
--
-- * 'plcdXgafv'
--
-- * 'plcdUploadProtocol'
--
-- * 'plcdAccessToken'
--
-- * 'plcdUploadType'
--
-- * 'plcdPayload'
--
-- * 'plcdCallback'
projectsLocationsContentDeidentify
    :: Text -- ^ 'plcdParent'
    -> GooglePrivacyDlpV2DeidentifyContentRequest -- ^ 'plcdPayload'
    -> ProjectsLocationsContentDeidentify
projectsLocationsContentDeidentify pPlcdParent_ pPlcdPayload_ =
  ProjectsLocationsContentDeidentify'
    { _plcdParent = pPlcdParent_
    , _plcdXgafv = Nothing
    , _plcdUploadProtocol = Nothing
    , _plcdAccessToken = Nothing
    , _plcdUploadType = Nothing
    , _plcdPayload = pPlcdPayload_
    , _plcdCallback = Nothing
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
plcdParent :: Lens' ProjectsLocationsContentDeidentify Text
plcdParent
  = lens _plcdParent (\ s a -> s{_plcdParent = a})

-- | V1 error format.
plcdXgafv :: Lens' ProjectsLocationsContentDeidentify (Maybe Xgafv)
plcdXgafv
  = lens _plcdXgafv (\ s a -> s{_plcdXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
plcdUploadProtocol :: Lens' ProjectsLocationsContentDeidentify (Maybe Text)
plcdUploadProtocol
  = lens _plcdUploadProtocol
      (\ s a -> s{_plcdUploadProtocol = a})

-- | OAuth access token.
plcdAccessToken :: Lens' ProjectsLocationsContentDeidentify (Maybe Text)
plcdAccessToken
  = lens _plcdAccessToken
      (\ s a -> s{_plcdAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
plcdUploadType :: Lens' ProjectsLocationsContentDeidentify (Maybe Text)
plcdUploadType
  = lens _plcdUploadType
      (\ s a -> s{_plcdUploadType = a})

-- | Multipart request metadata.
plcdPayload :: Lens' ProjectsLocationsContentDeidentify GooglePrivacyDlpV2DeidentifyContentRequest
plcdPayload
  = lens _plcdPayload (\ s a -> s{_plcdPayload = a})

-- | JSONP
plcdCallback :: Lens' ProjectsLocationsContentDeidentify (Maybe Text)
plcdCallback
  = lens _plcdCallback (\ s a -> s{_plcdCallback = a})

instance GoogleRequest
           ProjectsLocationsContentDeidentify
         where
        type Rs ProjectsLocationsContentDeidentify =
             GooglePrivacyDlpV2DeidentifyContentResponse
        type Scopes ProjectsLocationsContentDeidentify =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient ProjectsLocationsContentDeidentify'{..}
          = go _plcdParent _plcdXgafv _plcdUploadProtocol
              _plcdAccessToken
              _plcdUploadType
              _plcdCallback
              (Just AltJSON)
              _plcdPayload
              dLPService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsLocationsContentDeidentifyResource)
                      mempty
