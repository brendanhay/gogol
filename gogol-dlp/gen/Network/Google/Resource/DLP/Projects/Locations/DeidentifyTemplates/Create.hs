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
-- Module      : Network.Google.Resource.DLP.Projects.Locations.DeidentifyTemplates.Create
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a DeidentifyTemplate for re-using frequently used configuration
-- for de-identifying content, images, and storage. See
-- https:\/\/cloud.google.com\/dlp\/docs\/creating-templates-deid to learn
-- more.
--
-- /See:/ <https://cloud.google.com/dlp/docs/ Cloud Data Loss Prevention (DLP) API Reference> for @dlp.projects.locations.deidentifyTemplates.create@.
module Network.Google.Resource.DLP.Projects.Locations.DeidentifyTemplates.Create
    (
    -- * REST Resource
      ProjectsLocationsDeidentifyTemplatesCreateResource

    -- * Creating a Request
    , projectsLocationsDeidentifyTemplatesCreate
    , ProjectsLocationsDeidentifyTemplatesCreate

    -- * Request Lenses
    , pldtcParent
    , pldtcXgafv
    , pldtcUploadProtocol
    , pldtcAccessToken
    , pldtcUploadType
    , pldtcPayload
    , pldtcCallback
    ) where

import Network.Google.DLP.Types
import Network.Google.Prelude

-- | A resource alias for @dlp.projects.locations.deidentifyTemplates.create@ method which the
-- 'ProjectsLocationsDeidentifyTemplatesCreate' request conforms to.
type ProjectsLocationsDeidentifyTemplatesCreateResource
     =
     "v2" :>
       Capture "parent" Text :>
         "deidentifyTemplates" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON]
                         GooglePrivacyDlpV2CreateDeidentifyTemplateRequest
                         :> Post '[JSON] GooglePrivacyDlpV2DeidentifyTemplate

-- | Creates a DeidentifyTemplate for re-using frequently used configuration
-- for de-identifying content, images, and storage. See
-- https:\/\/cloud.google.com\/dlp\/docs\/creating-templates-deid to learn
-- more.
--
-- /See:/ 'projectsLocationsDeidentifyTemplatesCreate' smart constructor.
data ProjectsLocationsDeidentifyTemplatesCreate =
  ProjectsLocationsDeidentifyTemplatesCreate'
    { _pldtcParent :: !Text
    , _pldtcXgafv :: !(Maybe Xgafv)
    , _pldtcUploadProtocol :: !(Maybe Text)
    , _pldtcAccessToken :: !(Maybe Text)
    , _pldtcUploadType :: !(Maybe Text)
    , _pldtcPayload :: !GooglePrivacyDlpV2CreateDeidentifyTemplateRequest
    , _pldtcCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsDeidentifyTemplatesCreate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pldtcParent'
--
-- * 'pldtcXgafv'
--
-- * 'pldtcUploadProtocol'
--
-- * 'pldtcAccessToken'
--
-- * 'pldtcUploadType'
--
-- * 'pldtcPayload'
--
-- * 'pldtcCallback'
projectsLocationsDeidentifyTemplatesCreate
    :: Text -- ^ 'pldtcParent'
    -> GooglePrivacyDlpV2CreateDeidentifyTemplateRequest -- ^ 'pldtcPayload'
    -> ProjectsLocationsDeidentifyTemplatesCreate
projectsLocationsDeidentifyTemplatesCreate pPldtcParent_ pPldtcPayload_ =
  ProjectsLocationsDeidentifyTemplatesCreate'
    { _pldtcParent = pPldtcParent_
    , _pldtcXgafv = Nothing
    , _pldtcUploadProtocol = Nothing
    , _pldtcAccessToken = Nothing
    , _pldtcUploadType = Nothing
    , _pldtcPayload = pPldtcPayload_
    , _pldtcCallback = Nothing
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
pldtcParent :: Lens' ProjectsLocationsDeidentifyTemplatesCreate Text
pldtcParent
  = lens _pldtcParent (\ s a -> s{_pldtcParent = a})

-- | V1 error format.
pldtcXgafv :: Lens' ProjectsLocationsDeidentifyTemplatesCreate (Maybe Xgafv)
pldtcXgafv
  = lens _pldtcXgafv (\ s a -> s{_pldtcXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pldtcUploadProtocol :: Lens' ProjectsLocationsDeidentifyTemplatesCreate (Maybe Text)
pldtcUploadProtocol
  = lens _pldtcUploadProtocol
      (\ s a -> s{_pldtcUploadProtocol = a})

-- | OAuth access token.
pldtcAccessToken :: Lens' ProjectsLocationsDeidentifyTemplatesCreate (Maybe Text)
pldtcAccessToken
  = lens _pldtcAccessToken
      (\ s a -> s{_pldtcAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pldtcUploadType :: Lens' ProjectsLocationsDeidentifyTemplatesCreate (Maybe Text)
pldtcUploadType
  = lens _pldtcUploadType
      (\ s a -> s{_pldtcUploadType = a})

-- | Multipart request metadata.
pldtcPayload :: Lens' ProjectsLocationsDeidentifyTemplatesCreate GooglePrivacyDlpV2CreateDeidentifyTemplateRequest
pldtcPayload
  = lens _pldtcPayload (\ s a -> s{_pldtcPayload = a})

-- | JSONP
pldtcCallback :: Lens' ProjectsLocationsDeidentifyTemplatesCreate (Maybe Text)
pldtcCallback
  = lens _pldtcCallback
      (\ s a -> s{_pldtcCallback = a})

instance GoogleRequest
           ProjectsLocationsDeidentifyTemplatesCreate
         where
        type Rs ProjectsLocationsDeidentifyTemplatesCreate =
             GooglePrivacyDlpV2DeidentifyTemplate
        type Scopes
               ProjectsLocationsDeidentifyTemplatesCreate
             = '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          ProjectsLocationsDeidentifyTemplatesCreate'{..}
          = go _pldtcParent _pldtcXgafv _pldtcUploadProtocol
              _pldtcAccessToken
              _pldtcUploadType
              _pldtcCallback
              (Just AltJSON)
              _pldtcPayload
              dLPService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsLocationsDeidentifyTemplatesCreateResource)
                      mempty
