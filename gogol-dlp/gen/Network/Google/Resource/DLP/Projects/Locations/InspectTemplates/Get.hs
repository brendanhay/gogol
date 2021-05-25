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
-- Module      : Network.Google.Resource.DLP.Projects.Locations.InspectTemplates.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets an InspectTemplate. See
-- https:\/\/cloud.google.com\/dlp\/docs\/creating-templates to learn more.
--
-- /See:/ <https://cloud.google.com/dlp/docs/ Cloud Data Loss Prevention (DLP) API Reference> for @dlp.projects.locations.inspectTemplates.get@.
module Network.Google.Resource.DLP.Projects.Locations.InspectTemplates.Get
    (
    -- * REST Resource
      ProjectsLocationsInspectTemplatesGetResource

    -- * Creating a Request
    , projectsLocationsInspectTemplatesGet
    , ProjectsLocationsInspectTemplatesGet

    -- * Request Lenses
    , plitgXgafv
    , plitgUploadProtocol
    , plitgAccessToken
    , plitgUploadType
    , plitgName
    , plitgCallback
    ) where

import Network.Google.DLP.Types
import Network.Google.Prelude

-- | A resource alias for @dlp.projects.locations.inspectTemplates.get@ method which the
-- 'ProjectsLocationsInspectTemplatesGet' request conforms to.
type ProjectsLocationsInspectTemplatesGetResource =
     "v2" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     Get '[JSON] GooglePrivacyDlpV2InspectTemplate

-- | Gets an InspectTemplate. See
-- https:\/\/cloud.google.com\/dlp\/docs\/creating-templates to learn more.
--
-- /See:/ 'projectsLocationsInspectTemplatesGet' smart constructor.
data ProjectsLocationsInspectTemplatesGet =
  ProjectsLocationsInspectTemplatesGet'
    { _plitgXgafv :: !(Maybe Xgafv)
    , _plitgUploadProtocol :: !(Maybe Text)
    , _plitgAccessToken :: !(Maybe Text)
    , _plitgUploadType :: !(Maybe Text)
    , _plitgName :: !Text
    , _plitgCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsInspectTemplatesGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plitgXgafv'
--
-- * 'plitgUploadProtocol'
--
-- * 'plitgAccessToken'
--
-- * 'plitgUploadType'
--
-- * 'plitgName'
--
-- * 'plitgCallback'
projectsLocationsInspectTemplatesGet
    :: Text -- ^ 'plitgName'
    -> ProjectsLocationsInspectTemplatesGet
projectsLocationsInspectTemplatesGet pPlitgName_ =
  ProjectsLocationsInspectTemplatesGet'
    { _plitgXgafv = Nothing
    , _plitgUploadProtocol = Nothing
    , _plitgAccessToken = Nothing
    , _plitgUploadType = Nothing
    , _plitgName = pPlitgName_
    , _plitgCallback = Nothing
    }


-- | V1 error format.
plitgXgafv :: Lens' ProjectsLocationsInspectTemplatesGet (Maybe Xgafv)
plitgXgafv
  = lens _plitgXgafv (\ s a -> s{_plitgXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
plitgUploadProtocol :: Lens' ProjectsLocationsInspectTemplatesGet (Maybe Text)
plitgUploadProtocol
  = lens _plitgUploadProtocol
      (\ s a -> s{_plitgUploadProtocol = a})

-- | OAuth access token.
plitgAccessToken :: Lens' ProjectsLocationsInspectTemplatesGet (Maybe Text)
plitgAccessToken
  = lens _plitgAccessToken
      (\ s a -> s{_plitgAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
plitgUploadType :: Lens' ProjectsLocationsInspectTemplatesGet (Maybe Text)
plitgUploadType
  = lens _plitgUploadType
      (\ s a -> s{_plitgUploadType = a})

-- | Required. Resource name of the organization and inspectTemplate to be
-- read, for example
-- \`organizations\/433245324\/inspectTemplates\/432452342\` or
-- projects\/project-id\/inspectTemplates\/432452342.
plitgName :: Lens' ProjectsLocationsInspectTemplatesGet Text
plitgName
  = lens _plitgName (\ s a -> s{_plitgName = a})

-- | JSONP
plitgCallback :: Lens' ProjectsLocationsInspectTemplatesGet (Maybe Text)
plitgCallback
  = lens _plitgCallback
      (\ s a -> s{_plitgCallback = a})

instance GoogleRequest
           ProjectsLocationsInspectTemplatesGet
         where
        type Rs ProjectsLocationsInspectTemplatesGet =
             GooglePrivacyDlpV2InspectTemplate
        type Scopes ProjectsLocationsInspectTemplatesGet =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          ProjectsLocationsInspectTemplatesGet'{..}
          = go _plitgName _plitgXgafv _plitgUploadProtocol
              _plitgAccessToken
              _plitgUploadType
              _plitgCallback
              (Just AltJSON)
              dLPService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsLocationsInspectTemplatesGetResource)
                      mempty
