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
-- Module      : Network.Google.Resource.DLP.Projects.StoredInfoTypes.Create
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
-- /See:/ <https://cloud.google.com/dlp/docs/ Cloud Data Loss Prevention (DLP) API Reference> for @dlp.projects.storedInfoTypes.create@.
module Network.Google.Resource.DLP.Projects.StoredInfoTypes.Create
    (
    -- * REST Resource
      ProjectsStoredInfoTypesCreateResource

    -- * Creating a Request
    , projectsStoredInfoTypesCreate
    , ProjectsStoredInfoTypesCreate

    -- * Request Lenses
    , psitcParent
    , psitcXgafv
    , psitcUploadProtocol
    , psitcAccessToken
    , psitcUploadType
    , psitcPayload
    , psitcCallback
    ) where

import Network.Google.DLP.Types
import Network.Google.Prelude

-- | A resource alias for @dlp.projects.storedInfoTypes.create@ method which the
-- 'ProjectsStoredInfoTypesCreate' request conforms to.
type ProjectsStoredInfoTypesCreateResource =
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
-- /See:/ 'projectsStoredInfoTypesCreate' smart constructor.
data ProjectsStoredInfoTypesCreate =
  ProjectsStoredInfoTypesCreate'
    { _psitcParent :: !Text
    , _psitcXgafv :: !(Maybe Xgafv)
    , _psitcUploadProtocol :: !(Maybe Text)
    , _psitcAccessToken :: !(Maybe Text)
    , _psitcUploadType :: !(Maybe Text)
    , _psitcPayload :: !GooglePrivacyDlpV2CreateStoredInfoTypeRequest
    , _psitcCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsStoredInfoTypesCreate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'psitcParent'
--
-- * 'psitcXgafv'
--
-- * 'psitcUploadProtocol'
--
-- * 'psitcAccessToken'
--
-- * 'psitcUploadType'
--
-- * 'psitcPayload'
--
-- * 'psitcCallback'
projectsStoredInfoTypesCreate
    :: Text -- ^ 'psitcParent'
    -> GooglePrivacyDlpV2CreateStoredInfoTypeRequest -- ^ 'psitcPayload'
    -> ProjectsStoredInfoTypesCreate
projectsStoredInfoTypesCreate pPsitcParent_ pPsitcPayload_ =
  ProjectsStoredInfoTypesCreate'
    { _psitcParent = pPsitcParent_
    , _psitcXgafv = Nothing
    , _psitcUploadProtocol = Nothing
    , _psitcAccessToken = Nothing
    , _psitcUploadType = Nothing
    , _psitcPayload = pPsitcPayload_
    , _psitcCallback = Nothing
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
psitcParent :: Lens' ProjectsStoredInfoTypesCreate Text
psitcParent
  = lens _psitcParent (\ s a -> s{_psitcParent = a})

-- | V1 error format.
psitcXgafv :: Lens' ProjectsStoredInfoTypesCreate (Maybe Xgafv)
psitcXgafv
  = lens _psitcXgafv (\ s a -> s{_psitcXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
psitcUploadProtocol :: Lens' ProjectsStoredInfoTypesCreate (Maybe Text)
psitcUploadProtocol
  = lens _psitcUploadProtocol
      (\ s a -> s{_psitcUploadProtocol = a})

-- | OAuth access token.
psitcAccessToken :: Lens' ProjectsStoredInfoTypesCreate (Maybe Text)
psitcAccessToken
  = lens _psitcAccessToken
      (\ s a -> s{_psitcAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
psitcUploadType :: Lens' ProjectsStoredInfoTypesCreate (Maybe Text)
psitcUploadType
  = lens _psitcUploadType
      (\ s a -> s{_psitcUploadType = a})

-- | Multipart request metadata.
psitcPayload :: Lens' ProjectsStoredInfoTypesCreate GooglePrivacyDlpV2CreateStoredInfoTypeRequest
psitcPayload
  = lens _psitcPayload (\ s a -> s{_psitcPayload = a})

-- | JSONP
psitcCallback :: Lens' ProjectsStoredInfoTypesCreate (Maybe Text)
psitcCallback
  = lens _psitcCallback
      (\ s a -> s{_psitcCallback = a})

instance GoogleRequest ProjectsStoredInfoTypesCreate
         where
        type Rs ProjectsStoredInfoTypesCreate =
             GooglePrivacyDlpV2StoredInfoType
        type Scopes ProjectsStoredInfoTypesCreate =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient ProjectsStoredInfoTypesCreate'{..}
          = go _psitcParent _psitcXgafv _psitcUploadProtocol
              _psitcAccessToken
              _psitcUploadType
              _psitcCallback
              (Just AltJSON)
              _psitcPayload
              dLPService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsStoredInfoTypesCreateResource)
                      mempty
