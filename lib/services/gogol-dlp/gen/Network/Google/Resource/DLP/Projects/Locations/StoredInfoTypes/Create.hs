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
-- Module      : Network.Google.Resource.DLP.Projects.Locations.StoredInfoTypes.Create
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a pre-built stored infoType to be used for inspection. See
-- https:\/\/cloud.google.com\/dlp\/docs\/creating-stored-infotypes to
-- learn more.
--
-- /See:/ <https://cloud.google.com/dlp/docs/ Cloud Data Loss Prevention (DLP) API Reference> for @dlp.projects.locations.storedInfoTypes.create@.
module Network.Google.Resource.DLP.Projects.Locations.StoredInfoTypes.Create
    (
    -- * REST Resource
      ProjectsLocationsStoredInfoTypesCreateResource

    -- * Creating a Request
    , projectsLocationsStoredInfoTypesCreate
    , ProjectsLocationsStoredInfoTypesCreate

    -- * Request Lenses
    , plsitcParent
    , plsitcXgafv
    , plsitcUploadProtocol
    , plsitcAccessToken
    , plsitcUploadType
    , plsitcPayload
    , plsitcCallback
    ) where

import Network.Google.DLP.Types
import Network.Google.Prelude

-- | A resource alias for @dlp.projects.locations.storedInfoTypes.create@ method which the
-- 'ProjectsLocationsStoredInfoTypesCreate' request conforms to.
type ProjectsLocationsStoredInfoTypesCreateResource =
     "v2" :>
       Capture "parent" Text :>
         "storedInfoTypes" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON]
                         GooglePrivacyDlpV2CreateStoredInfoTypeRequest
                         :> Post '[JSON] GooglePrivacyDlpV2StoredInfoType

-- | Creates a pre-built stored infoType to be used for inspection. See
-- https:\/\/cloud.google.com\/dlp\/docs\/creating-stored-infotypes to
-- learn more.
--
-- /See:/ 'projectsLocationsStoredInfoTypesCreate' smart constructor.
data ProjectsLocationsStoredInfoTypesCreate =
  ProjectsLocationsStoredInfoTypesCreate'
    { _plsitcParent :: !Text
    , _plsitcXgafv :: !(Maybe Xgafv)
    , _plsitcUploadProtocol :: !(Maybe Text)
    , _plsitcAccessToken :: !(Maybe Text)
    , _plsitcUploadType :: !(Maybe Text)
    , _plsitcPayload :: !GooglePrivacyDlpV2CreateStoredInfoTypeRequest
    , _plsitcCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsStoredInfoTypesCreate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plsitcParent'
--
-- * 'plsitcXgafv'
--
-- * 'plsitcUploadProtocol'
--
-- * 'plsitcAccessToken'
--
-- * 'plsitcUploadType'
--
-- * 'plsitcPayload'
--
-- * 'plsitcCallback'
projectsLocationsStoredInfoTypesCreate
    :: Text -- ^ 'plsitcParent'
    -> GooglePrivacyDlpV2CreateStoredInfoTypeRequest -- ^ 'plsitcPayload'
    -> ProjectsLocationsStoredInfoTypesCreate
projectsLocationsStoredInfoTypesCreate pPlsitcParent_ pPlsitcPayload_ =
  ProjectsLocationsStoredInfoTypesCreate'
    { _plsitcParent = pPlsitcParent_
    , _plsitcXgafv = Nothing
    , _plsitcUploadProtocol = Nothing
    , _plsitcAccessToken = Nothing
    , _plsitcUploadType = Nothing
    , _plsitcPayload = pPlsitcPayload_
    , _plsitcCallback = Nothing
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
plsitcParent :: Lens' ProjectsLocationsStoredInfoTypesCreate Text
plsitcParent
  = lens _plsitcParent (\ s a -> s{_plsitcParent = a})

-- | V1 error format.
plsitcXgafv :: Lens' ProjectsLocationsStoredInfoTypesCreate (Maybe Xgafv)
plsitcXgafv
  = lens _plsitcXgafv (\ s a -> s{_plsitcXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
plsitcUploadProtocol :: Lens' ProjectsLocationsStoredInfoTypesCreate (Maybe Text)
plsitcUploadProtocol
  = lens _plsitcUploadProtocol
      (\ s a -> s{_plsitcUploadProtocol = a})

-- | OAuth access token.
plsitcAccessToken :: Lens' ProjectsLocationsStoredInfoTypesCreate (Maybe Text)
plsitcAccessToken
  = lens _plsitcAccessToken
      (\ s a -> s{_plsitcAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
plsitcUploadType :: Lens' ProjectsLocationsStoredInfoTypesCreate (Maybe Text)
plsitcUploadType
  = lens _plsitcUploadType
      (\ s a -> s{_plsitcUploadType = a})

-- | Multipart request metadata.
plsitcPayload :: Lens' ProjectsLocationsStoredInfoTypesCreate GooglePrivacyDlpV2CreateStoredInfoTypeRequest
plsitcPayload
  = lens _plsitcPayload
      (\ s a -> s{_plsitcPayload = a})

-- | JSONP
plsitcCallback :: Lens' ProjectsLocationsStoredInfoTypesCreate (Maybe Text)
plsitcCallback
  = lens _plsitcCallback
      (\ s a -> s{_plsitcCallback = a})

instance GoogleRequest
           ProjectsLocationsStoredInfoTypesCreate
         where
        type Rs ProjectsLocationsStoredInfoTypesCreate =
             GooglePrivacyDlpV2StoredInfoType
        type Scopes ProjectsLocationsStoredInfoTypesCreate =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          ProjectsLocationsStoredInfoTypesCreate'{..}
          = go _plsitcParent _plsitcXgafv _plsitcUploadProtocol
              _plsitcAccessToken
              _plsitcUploadType
              _plsitcCallback
              (Just AltJSON)
              _plsitcPayload
              dLPService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsLocationsStoredInfoTypesCreateResource)
                      mempty
