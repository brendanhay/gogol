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
-- Module      : Network.Google.Resource.DLP.Projects.Locations.DeidentifyTemplates.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets a DeidentifyTemplate. See
-- https:\/\/cloud.google.com\/dlp\/docs\/creating-templates-deid to learn
-- more.
--
-- /See:/ <https://cloud.google.com/dlp/docs/ Cloud Data Loss Prevention (DLP) API Reference> for @dlp.projects.locations.deidentifyTemplates.get@.
module Network.Google.Resource.DLP.Projects.Locations.DeidentifyTemplates.Get
    (
    -- * REST Resource
      ProjectsLocationsDeidentifyTemplatesGetResource

    -- * Creating a Request
    , projectsLocationsDeidentifyTemplatesGet
    , ProjectsLocationsDeidentifyTemplatesGet

    -- * Request Lenses
    , pldtgXgafv
    , pldtgUploadProtocol
    , pldtgAccessToken
    , pldtgUploadType
    , pldtgName
    , pldtgCallback
    ) where

import Network.Google.DLP.Types
import Network.Google.Prelude

-- | A resource alias for @dlp.projects.locations.deidentifyTemplates.get@ method which the
-- 'ProjectsLocationsDeidentifyTemplatesGet' request conforms to.
type ProjectsLocationsDeidentifyTemplatesGetResource
     =
     "v2" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     Get '[JSON] GooglePrivacyDlpV2DeidentifyTemplate

-- | Gets a DeidentifyTemplate. See
-- https:\/\/cloud.google.com\/dlp\/docs\/creating-templates-deid to learn
-- more.
--
-- /See:/ 'projectsLocationsDeidentifyTemplatesGet' smart constructor.
data ProjectsLocationsDeidentifyTemplatesGet =
  ProjectsLocationsDeidentifyTemplatesGet'
    { _pldtgXgafv :: !(Maybe Xgafv)
    , _pldtgUploadProtocol :: !(Maybe Text)
    , _pldtgAccessToken :: !(Maybe Text)
    , _pldtgUploadType :: !(Maybe Text)
    , _pldtgName :: !Text
    , _pldtgCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsDeidentifyTemplatesGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pldtgXgafv'
--
-- * 'pldtgUploadProtocol'
--
-- * 'pldtgAccessToken'
--
-- * 'pldtgUploadType'
--
-- * 'pldtgName'
--
-- * 'pldtgCallback'
projectsLocationsDeidentifyTemplatesGet
    :: Text -- ^ 'pldtgName'
    -> ProjectsLocationsDeidentifyTemplatesGet
projectsLocationsDeidentifyTemplatesGet pPldtgName_ =
  ProjectsLocationsDeidentifyTemplatesGet'
    { _pldtgXgafv = Nothing
    , _pldtgUploadProtocol = Nothing
    , _pldtgAccessToken = Nothing
    , _pldtgUploadType = Nothing
    , _pldtgName = pPldtgName_
    , _pldtgCallback = Nothing
    }


-- | V1 error format.
pldtgXgafv :: Lens' ProjectsLocationsDeidentifyTemplatesGet (Maybe Xgafv)
pldtgXgafv
  = lens _pldtgXgafv (\ s a -> s{_pldtgXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pldtgUploadProtocol :: Lens' ProjectsLocationsDeidentifyTemplatesGet (Maybe Text)
pldtgUploadProtocol
  = lens _pldtgUploadProtocol
      (\ s a -> s{_pldtgUploadProtocol = a})

-- | OAuth access token.
pldtgAccessToken :: Lens' ProjectsLocationsDeidentifyTemplatesGet (Maybe Text)
pldtgAccessToken
  = lens _pldtgAccessToken
      (\ s a -> s{_pldtgAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pldtgUploadType :: Lens' ProjectsLocationsDeidentifyTemplatesGet (Maybe Text)
pldtgUploadType
  = lens _pldtgUploadType
      (\ s a -> s{_pldtgUploadType = a})

-- | Required. Resource name of the organization and deidentify template to
-- be read, for example
-- \`organizations\/433245324\/deidentifyTemplates\/432452342\` or
-- projects\/project-id\/deidentifyTemplates\/432452342.
pldtgName :: Lens' ProjectsLocationsDeidentifyTemplatesGet Text
pldtgName
  = lens _pldtgName (\ s a -> s{_pldtgName = a})

-- | JSONP
pldtgCallback :: Lens' ProjectsLocationsDeidentifyTemplatesGet (Maybe Text)
pldtgCallback
  = lens _pldtgCallback
      (\ s a -> s{_pldtgCallback = a})

instance GoogleRequest
           ProjectsLocationsDeidentifyTemplatesGet
         where
        type Rs ProjectsLocationsDeidentifyTemplatesGet =
             GooglePrivacyDlpV2DeidentifyTemplate
        type Scopes ProjectsLocationsDeidentifyTemplatesGet =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          ProjectsLocationsDeidentifyTemplatesGet'{..}
          = go _pldtgName _pldtgXgafv _pldtgUploadProtocol
              _pldtgAccessToken
              _pldtgUploadType
              _pldtgCallback
              (Just AltJSON)
              dLPService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsLocationsDeidentifyTemplatesGetResource)
                      mempty
