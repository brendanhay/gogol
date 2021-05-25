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
-- Module      : Network.Google.Resource.DLP.Projects.Locations.Content.Inspect
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Finds potentially sensitive info in content. This method has limits on
-- input size, processing time, and output size. When no InfoTypes or
-- CustomInfoTypes are specified in this request, the system will
-- automatically choose what detectors to run. By default this may be all
-- types, but may change over time as detectors are updated. For how to
-- guides, see https:\/\/cloud.google.com\/dlp\/docs\/inspecting-images and
-- https:\/\/cloud.google.com\/dlp\/docs\/inspecting-text,
--
-- /See:/ <https://cloud.google.com/dlp/docs/ Cloud Data Loss Prevention (DLP) API Reference> for @dlp.projects.locations.content.inspect@.
module Network.Google.Resource.DLP.Projects.Locations.Content.Inspect
    (
    -- * REST Resource
      ProjectsLocationsContentInspectResource

    -- * Creating a Request
    , projectsLocationsContentInspect
    , ProjectsLocationsContentInspect

    -- * Request Lenses
    , plciParent
    , plciXgafv
    , plciUploadProtocol
    , plciAccessToken
    , plciUploadType
    , plciPayload
    , plciCallback
    ) where

import Network.Google.DLP.Types
import Network.Google.Prelude

-- | A resource alias for @dlp.projects.locations.content.inspect@ method which the
-- 'ProjectsLocationsContentInspect' request conforms to.
type ProjectsLocationsContentInspectResource =
     "v2" :>
       Capture "parent" Text :>
         "content:inspect" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON]
                         GooglePrivacyDlpV2InspectContentRequest
                         :>
                         Post '[JSON] GooglePrivacyDlpV2InspectContentResponse

-- | Finds potentially sensitive info in content. This method has limits on
-- input size, processing time, and output size. When no InfoTypes or
-- CustomInfoTypes are specified in this request, the system will
-- automatically choose what detectors to run. By default this may be all
-- types, but may change over time as detectors are updated. For how to
-- guides, see https:\/\/cloud.google.com\/dlp\/docs\/inspecting-images and
-- https:\/\/cloud.google.com\/dlp\/docs\/inspecting-text,
--
-- /See:/ 'projectsLocationsContentInspect' smart constructor.
data ProjectsLocationsContentInspect =
  ProjectsLocationsContentInspect'
    { _plciParent :: !Text
    , _plciXgafv :: !(Maybe Xgafv)
    , _plciUploadProtocol :: !(Maybe Text)
    , _plciAccessToken :: !(Maybe Text)
    , _plciUploadType :: !(Maybe Text)
    , _plciPayload :: !GooglePrivacyDlpV2InspectContentRequest
    , _plciCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsContentInspect' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plciParent'
--
-- * 'plciXgafv'
--
-- * 'plciUploadProtocol'
--
-- * 'plciAccessToken'
--
-- * 'plciUploadType'
--
-- * 'plciPayload'
--
-- * 'plciCallback'
projectsLocationsContentInspect
    :: Text -- ^ 'plciParent'
    -> GooglePrivacyDlpV2InspectContentRequest -- ^ 'plciPayload'
    -> ProjectsLocationsContentInspect
projectsLocationsContentInspect pPlciParent_ pPlciPayload_ =
  ProjectsLocationsContentInspect'
    { _plciParent = pPlciParent_
    , _plciXgafv = Nothing
    , _plciUploadProtocol = Nothing
    , _plciAccessToken = Nothing
    , _plciUploadType = Nothing
    , _plciPayload = pPlciPayload_
    , _plciCallback = Nothing
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
plciParent :: Lens' ProjectsLocationsContentInspect Text
plciParent
  = lens _plciParent (\ s a -> s{_plciParent = a})

-- | V1 error format.
plciXgafv :: Lens' ProjectsLocationsContentInspect (Maybe Xgafv)
plciXgafv
  = lens _plciXgafv (\ s a -> s{_plciXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
plciUploadProtocol :: Lens' ProjectsLocationsContentInspect (Maybe Text)
plciUploadProtocol
  = lens _plciUploadProtocol
      (\ s a -> s{_plciUploadProtocol = a})

-- | OAuth access token.
plciAccessToken :: Lens' ProjectsLocationsContentInspect (Maybe Text)
plciAccessToken
  = lens _plciAccessToken
      (\ s a -> s{_plciAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
plciUploadType :: Lens' ProjectsLocationsContentInspect (Maybe Text)
plciUploadType
  = lens _plciUploadType
      (\ s a -> s{_plciUploadType = a})

-- | Multipart request metadata.
plciPayload :: Lens' ProjectsLocationsContentInspect GooglePrivacyDlpV2InspectContentRequest
plciPayload
  = lens _plciPayload (\ s a -> s{_plciPayload = a})

-- | JSONP
plciCallback :: Lens' ProjectsLocationsContentInspect (Maybe Text)
plciCallback
  = lens _plciCallback (\ s a -> s{_plciCallback = a})

instance GoogleRequest
           ProjectsLocationsContentInspect
         where
        type Rs ProjectsLocationsContentInspect =
             GooglePrivacyDlpV2InspectContentResponse
        type Scopes ProjectsLocationsContentInspect =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient ProjectsLocationsContentInspect'{..}
          = go _plciParent _plciXgafv _plciUploadProtocol
              _plciAccessToken
              _plciUploadType
              _plciCallback
              (Just AltJSON)
              _plciPayload
              dLPService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsLocationsContentInspectResource)
                      mempty
