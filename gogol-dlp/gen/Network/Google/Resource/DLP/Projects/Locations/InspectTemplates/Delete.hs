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
-- Module      : Network.Google.Resource.DLP.Projects.Locations.InspectTemplates.Delete
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes an InspectTemplate. See
-- https:\/\/cloud.google.com\/dlp\/docs\/creating-templates to learn more.
--
-- /See:/ <https://cloud.google.com/dlp/docs/ Cloud Data Loss Prevention (DLP) API Reference> for @dlp.projects.locations.inspectTemplates.delete@.
module Network.Google.Resource.DLP.Projects.Locations.InspectTemplates.Delete
    (
    -- * REST Resource
      ProjectsLocationsInspectTemplatesDeleteResource

    -- * Creating a Request
    , projectsLocationsInspectTemplatesDelete
    , ProjectsLocationsInspectTemplatesDelete

    -- * Request Lenses
    , plitdXgafv
    , plitdUploadProtocol
    , plitdAccessToken
    , plitdUploadType
    , plitdName
    , plitdCallback
    ) where

import Network.Google.DLP.Types
import Network.Google.Prelude

-- | A resource alias for @dlp.projects.locations.inspectTemplates.delete@ method which the
-- 'ProjectsLocationsInspectTemplatesDelete' request conforms to.
type ProjectsLocationsInspectTemplatesDeleteResource
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

-- | Deletes an InspectTemplate. See
-- https:\/\/cloud.google.com\/dlp\/docs\/creating-templates to learn more.
--
-- /See:/ 'projectsLocationsInspectTemplatesDelete' smart constructor.
data ProjectsLocationsInspectTemplatesDelete =
  ProjectsLocationsInspectTemplatesDelete'
    { _plitdXgafv :: !(Maybe Xgafv)
    , _plitdUploadProtocol :: !(Maybe Text)
    , _plitdAccessToken :: !(Maybe Text)
    , _plitdUploadType :: !(Maybe Text)
    , _plitdName :: !Text
    , _plitdCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsInspectTemplatesDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plitdXgafv'
--
-- * 'plitdUploadProtocol'
--
-- * 'plitdAccessToken'
--
-- * 'plitdUploadType'
--
-- * 'plitdName'
--
-- * 'plitdCallback'
projectsLocationsInspectTemplatesDelete
    :: Text -- ^ 'plitdName'
    -> ProjectsLocationsInspectTemplatesDelete
projectsLocationsInspectTemplatesDelete pPlitdName_ =
  ProjectsLocationsInspectTemplatesDelete'
    { _plitdXgafv = Nothing
    , _plitdUploadProtocol = Nothing
    , _plitdAccessToken = Nothing
    , _plitdUploadType = Nothing
    , _plitdName = pPlitdName_
    , _plitdCallback = Nothing
    }


-- | V1 error format.
plitdXgafv :: Lens' ProjectsLocationsInspectTemplatesDelete (Maybe Xgafv)
plitdXgafv
  = lens _plitdXgafv (\ s a -> s{_plitdXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
plitdUploadProtocol :: Lens' ProjectsLocationsInspectTemplatesDelete (Maybe Text)
plitdUploadProtocol
  = lens _plitdUploadProtocol
      (\ s a -> s{_plitdUploadProtocol = a})

-- | OAuth access token.
plitdAccessToken :: Lens' ProjectsLocationsInspectTemplatesDelete (Maybe Text)
plitdAccessToken
  = lens _plitdAccessToken
      (\ s a -> s{_plitdAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
plitdUploadType :: Lens' ProjectsLocationsInspectTemplatesDelete (Maybe Text)
plitdUploadType
  = lens _plitdUploadType
      (\ s a -> s{_plitdUploadType = a})

-- | Required. Resource name of the organization and inspectTemplate to be
-- deleted, for example
-- \`organizations\/433245324\/inspectTemplates\/432452342\` or
-- projects\/project-id\/inspectTemplates\/432452342.
plitdName :: Lens' ProjectsLocationsInspectTemplatesDelete Text
plitdName
  = lens _plitdName (\ s a -> s{_plitdName = a})

-- | JSONP
plitdCallback :: Lens' ProjectsLocationsInspectTemplatesDelete (Maybe Text)
plitdCallback
  = lens _plitdCallback
      (\ s a -> s{_plitdCallback = a})

instance GoogleRequest
           ProjectsLocationsInspectTemplatesDelete
         where
        type Rs ProjectsLocationsInspectTemplatesDelete =
             GoogleProtobufEmpty
        type Scopes ProjectsLocationsInspectTemplatesDelete =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          ProjectsLocationsInspectTemplatesDelete'{..}
          = go _plitdName _plitdXgafv _plitdUploadProtocol
              _plitdAccessToken
              _plitdUploadType
              _plitdCallback
              (Just AltJSON)
              dLPService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsLocationsInspectTemplatesDeleteResource)
                      mempty
