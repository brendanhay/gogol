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
-- Module      : Network.Google.Resource.DLP.Projects.Locations.DeidentifyTemplates.Delete
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a DeidentifyTemplate. See
-- https:\/\/cloud.google.com\/dlp\/docs\/creating-templates-deid to learn
-- more.
--
-- /See:/ <https://cloud.google.com/dlp/docs/ Cloud Data Loss Prevention (DLP) API Reference> for @dlp.projects.locations.deidentifyTemplates.delete@.
module Network.Google.Resource.DLP.Projects.Locations.DeidentifyTemplates.Delete
    (
    -- * REST Resource
      ProjectsLocationsDeidentifyTemplatesDeleteResource

    -- * Creating a Request
    , projectsLocationsDeidentifyTemplatesDelete
    , ProjectsLocationsDeidentifyTemplatesDelete

    -- * Request Lenses
    , pldtdXgafv
    , pldtdUploadProtocol
    , pldtdAccessToken
    , pldtdUploadType
    , pldtdName
    , pldtdCallback
    ) where

import Network.Google.DLP.Types
import Network.Google.Prelude

-- | A resource alias for @dlp.projects.locations.deidentifyTemplates.delete@ method which the
-- 'ProjectsLocationsDeidentifyTemplatesDelete' request conforms to.
type ProjectsLocationsDeidentifyTemplatesDeleteResource
     =
     "v2" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     Delete '[JSON] GoogleProtobufEmpty

-- | Deletes a DeidentifyTemplate. See
-- https:\/\/cloud.google.com\/dlp\/docs\/creating-templates-deid to learn
-- more.
--
-- /See:/ 'projectsLocationsDeidentifyTemplatesDelete' smart constructor.
data ProjectsLocationsDeidentifyTemplatesDelete =
  ProjectsLocationsDeidentifyTemplatesDelete'
    { _pldtdXgafv :: !(Maybe Xgafv)
    , _pldtdUploadProtocol :: !(Maybe Text)
    , _pldtdAccessToken :: !(Maybe Text)
    , _pldtdUploadType :: !(Maybe Text)
    , _pldtdName :: !Text
    , _pldtdCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsDeidentifyTemplatesDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pldtdXgafv'
--
-- * 'pldtdUploadProtocol'
--
-- * 'pldtdAccessToken'
--
-- * 'pldtdUploadType'
--
-- * 'pldtdName'
--
-- * 'pldtdCallback'
projectsLocationsDeidentifyTemplatesDelete
    :: Text -- ^ 'pldtdName'
    -> ProjectsLocationsDeidentifyTemplatesDelete
projectsLocationsDeidentifyTemplatesDelete pPldtdName_ =
  ProjectsLocationsDeidentifyTemplatesDelete'
    { _pldtdXgafv = Nothing
    , _pldtdUploadProtocol = Nothing
    , _pldtdAccessToken = Nothing
    , _pldtdUploadType = Nothing
    , _pldtdName = pPldtdName_
    , _pldtdCallback = Nothing
    }


-- | V1 error format.
pldtdXgafv :: Lens' ProjectsLocationsDeidentifyTemplatesDelete (Maybe Xgafv)
pldtdXgafv
  = lens _pldtdXgafv (\ s a -> s{_pldtdXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pldtdUploadProtocol :: Lens' ProjectsLocationsDeidentifyTemplatesDelete (Maybe Text)
pldtdUploadProtocol
  = lens _pldtdUploadProtocol
      (\ s a -> s{_pldtdUploadProtocol = a})

-- | OAuth access token.
pldtdAccessToken :: Lens' ProjectsLocationsDeidentifyTemplatesDelete (Maybe Text)
pldtdAccessToken
  = lens _pldtdAccessToken
      (\ s a -> s{_pldtdAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pldtdUploadType :: Lens' ProjectsLocationsDeidentifyTemplatesDelete (Maybe Text)
pldtdUploadType
  = lens _pldtdUploadType
      (\ s a -> s{_pldtdUploadType = a})

-- | Required. Resource name of the organization and deidentify template to
-- be deleted, for example
-- \`organizations\/433245324\/deidentifyTemplates\/432452342\` or
-- projects\/project-id\/deidentifyTemplates\/432452342.
pldtdName :: Lens' ProjectsLocationsDeidentifyTemplatesDelete Text
pldtdName
  = lens _pldtdName (\ s a -> s{_pldtdName = a})

-- | JSONP
pldtdCallback :: Lens' ProjectsLocationsDeidentifyTemplatesDelete (Maybe Text)
pldtdCallback
  = lens _pldtdCallback
      (\ s a -> s{_pldtdCallback = a})

instance GoogleRequest
           ProjectsLocationsDeidentifyTemplatesDelete
         where
        type Rs ProjectsLocationsDeidentifyTemplatesDelete =
             GoogleProtobufEmpty
        type Scopes
               ProjectsLocationsDeidentifyTemplatesDelete
             = '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          ProjectsLocationsDeidentifyTemplatesDelete'{..}
          = go _pldtdName _pldtdXgafv _pldtdUploadProtocol
              _pldtdAccessToken
              _pldtdUploadType
              _pldtdCallback
              (Just AltJSON)
              dLPService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsLocationsDeidentifyTemplatesDeleteResource)
                      mempty
