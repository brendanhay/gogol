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
-- Module      : Network.Google.Resource.DLP.Projects.Locations.InspectTemplates.Create
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates an InspectTemplate for re-using frequently used configuration
-- for inspecting content, images, and storage. See
-- https:\/\/cloud.google.com\/dlp\/docs\/creating-templates to learn more.
--
-- /See:/ <https://cloud.google.com/dlp/docs/ Cloud Data Loss Prevention (DLP) API Reference> for @dlp.projects.locations.inspectTemplates.create@.
module Network.Google.Resource.DLP.Projects.Locations.InspectTemplates.Create
    (
    -- * REST Resource
      ProjectsLocationsInspectTemplatesCreateResource

    -- * Creating a Request
    , projectsLocationsInspectTemplatesCreate
    , ProjectsLocationsInspectTemplatesCreate

    -- * Request Lenses
    , plitcParent
    , plitcXgafv
    , plitcUploadProtocol
    , plitcAccessToken
    , plitcUploadType
    , plitcPayload
    , plitcCallback
    ) where

import Network.Google.DLP.Types
import Network.Google.Prelude

-- | A resource alias for @dlp.projects.locations.inspectTemplates.create@ method which the
-- 'ProjectsLocationsInspectTemplatesCreate' request conforms to.
type ProjectsLocationsInspectTemplatesCreateResource
     =
     "v2" :>
       Capture "parent" Text :>
         "inspectTemplates" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON]
                         GooglePrivacyDlpV2CreateInspectTemplateRequest
                         :> Post '[JSON] GooglePrivacyDlpV2InspectTemplate

-- | Creates an InspectTemplate for re-using frequently used configuration
-- for inspecting content, images, and storage. See
-- https:\/\/cloud.google.com\/dlp\/docs\/creating-templates to learn more.
--
-- /See:/ 'projectsLocationsInspectTemplatesCreate' smart constructor.
data ProjectsLocationsInspectTemplatesCreate =
  ProjectsLocationsInspectTemplatesCreate'
    { _plitcParent :: !Text
    , _plitcXgafv :: !(Maybe Xgafv)
    , _plitcUploadProtocol :: !(Maybe Text)
    , _plitcAccessToken :: !(Maybe Text)
    , _plitcUploadType :: !(Maybe Text)
    , _plitcPayload :: !GooglePrivacyDlpV2CreateInspectTemplateRequest
    , _plitcCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsInspectTemplatesCreate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plitcParent'
--
-- * 'plitcXgafv'
--
-- * 'plitcUploadProtocol'
--
-- * 'plitcAccessToken'
--
-- * 'plitcUploadType'
--
-- * 'plitcPayload'
--
-- * 'plitcCallback'
projectsLocationsInspectTemplatesCreate
    :: Text -- ^ 'plitcParent'
    -> GooglePrivacyDlpV2CreateInspectTemplateRequest -- ^ 'plitcPayload'
    -> ProjectsLocationsInspectTemplatesCreate
projectsLocationsInspectTemplatesCreate pPlitcParent_ pPlitcPayload_ =
  ProjectsLocationsInspectTemplatesCreate'
    { _plitcParent = pPlitcParent_
    , _plitcXgafv = Nothing
    , _plitcUploadProtocol = Nothing
    , _plitcAccessToken = Nothing
    , _plitcUploadType = Nothing
    , _plitcPayload = pPlitcPayload_
    , _plitcCallback = Nothing
    }


-- | Required. Parent resource name. The format of this value varies
-- depending on the scope of the request (project or organization) and
-- whether you have [specified a processing
-- location](https:\/\/cloud.google.com\/dlp\/docs\/specifying-location): +
-- Projects scope, location specified:
-- \`projects\/\`PROJECT_ID\`\/locations\/\`LOCATION_ID + Projects scope,
-- no location specified (defaults to global): \`projects\/\`PROJECT_ID +
-- Organizations scope, location specified:
-- \`organizations\/\`ORG_ID\`\/locations\/\`LOCATION_ID + Organizations
-- scope, no location specified (defaults to global):
-- \`organizations\/\`ORG_ID The following example \`parent\` string
-- specifies a parent project with the identifier \`example-project\`, and
-- specifies the \`europe-west3\` location for processing data:
-- parent=projects\/example-project\/locations\/europe-west3
plitcParent :: Lens' ProjectsLocationsInspectTemplatesCreate Text
plitcParent
  = lens _plitcParent (\ s a -> s{_plitcParent = a})

-- | V1 error format.
plitcXgafv :: Lens' ProjectsLocationsInspectTemplatesCreate (Maybe Xgafv)
plitcXgafv
  = lens _plitcXgafv (\ s a -> s{_plitcXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
plitcUploadProtocol :: Lens' ProjectsLocationsInspectTemplatesCreate (Maybe Text)
plitcUploadProtocol
  = lens _plitcUploadProtocol
      (\ s a -> s{_plitcUploadProtocol = a})

-- | OAuth access token.
plitcAccessToken :: Lens' ProjectsLocationsInspectTemplatesCreate (Maybe Text)
plitcAccessToken
  = lens _plitcAccessToken
      (\ s a -> s{_plitcAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
plitcUploadType :: Lens' ProjectsLocationsInspectTemplatesCreate (Maybe Text)
plitcUploadType
  = lens _plitcUploadType
      (\ s a -> s{_plitcUploadType = a})

-- | Multipart request metadata.
plitcPayload :: Lens' ProjectsLocationsInspectTemplatesCreate GooglePrivacyDlpV2CreateInspectTemplateRequest
plitcPayload
  = lens _plitcPayload (\ s a -> s{_plitcPayload = a})

-- | JSONP
plitcCallback :: Lens' ProjectsLocationsInspectTemplatesCreate (Maybe Text)
plitcCallback
  = lens _plitcCallback
      (\ s a -> s{_plitcCallback = a})

instance GoogleRequest
           ProjectsLocationsInspectTemplatesCreate
         where
        type Rs ProjectsLocationsInspectTemplatesCreate =
             GooglePrivacyDlpV2InspectTemplate
        type Scopes ProjectsLocationsInspectTemplatesCreate =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          ProjectsLocationsInspectTemplatesCreate'{..}
          = go _plitcParent _plitcXgafv _plitcUploadProtocol
              _plitcAccessToken
              _plitcUploadType
              _plitcCallback
              (Just AltJSON)
              _plitcPayload
              dLPService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsLocationsInspectTemplatesCreateResource)
                      mempty
