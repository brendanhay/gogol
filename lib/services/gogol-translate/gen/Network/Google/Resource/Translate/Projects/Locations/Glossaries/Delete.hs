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
-- Module      : Network.Google.Resource.Translate.Projects.Locations.Glossaries.Delete
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a glossary, or cancels glossary construction if the glossary
-- isn\'t created yet. Returns NOT_FOUND, if the glossary doesn\'t exist.
--
-- /See:/ <https://cloud.google.com/translate/docs/quickstarts Cloud Translation API Reference> for @translate.projects.locations.glossaries.delete@.
module Network.Google.Resource.Translate.Projects.Locations.Glossaries.Delete
    (
    -- * REST Resource
      ProjectsLocationsGlossariesDeleteResource

    -- * Creating a Request
    , projectsLocationsGlossariesDelete
    , ProjectsLocationsGlossariesDelete

    -- * Request Lenses
    , plgdXgafv
    , plgdUploadProtocol
    , plgdAccessToken
    , plgdUploadType
    , plgdName
    , plgdCallback
    ) where

import Network.Google.Prelude
import Network.Google.Translate.Types

-- | A resource alias for @translate.projects.locations.glossaries.delete@ method which the
-- 'ProjectsLocationsGlossariesDelete' request conforms to.
type ProjectsLocationsGlossariesDeleteResource =
     "v3" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :> Delete '[JSON] Operation

-- | Deletes a glossary, or cancels glossary construction if the glossary
-- isn\'t created yet. Returns NOT_FOUND, if the glossary doesn\'t exist.
--
-- /See:/ 'projectsLocationsGlossariesDelete' smart constructor.
data ProjectsLocationsGlossariesDelete =
  ProjectsLocationsGlossariesDelete'
    { _plgdXgafv :: !(Maybe Xgafv)
    , _plgdUploadProtocol :: !(Maybe Text)
    , _plgdAccessToken :: !(Maybe Text)
    , _plgdUploadType :: !(Maybe Text)
    , _plgdName :: !Text
    , _plgdCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsGlossariesDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plgdXgafv'
--
-- * 'plgdUploadProtocol'
--
-- * 'plgdAccessToken'
--
-- * 'plgdUploadType'
--
-- * 'plgdName'
--
-- * 'plgdCallback'
projectsLocationsGlossariesDelete
    :: Text -- ^ 'plgdName'
    -> ProjectsLocationsGlossariesDelete
projectsLocationsGlossariesDelete pPlgdName_ =
  ProjectsLocationsGlossariesDelete'
    { _plgdXgafv = Nothing
    , _plgdUploadProtocol = Nothing
    , _plgdAccessToken = Nothing
    , _plgdUploadType = Nothing
    , _plgdName = pPlgdName_
    , _plgdCallback = Nothing
    }


-- | V1 error format.
plgdXgafv :: Lens' ProjectsLocationsGlossariesDelete (Maybe Xgafv)
plgdXgafv
  = lens _plgdXgafv (\ s a -> s{_plgdXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
plgdUploadProtocol :: Lens' ProjectsLocationsGlossariesDelete (Maybe Text)
plgdUploadProtocol
  = lens _plgdUploadProtocol
      (\ s a -> s{_plgdUploadProtocol = a})

-- | OAuth access token.
plgdAccessToken :: Lens' ProjectsLocationsGlossariesDelete (Maybe Text)
plgdAccessToken
  = lens _plgdAccessToken
      (\ s a -> s{_plgdAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
plgdUploadType :: Lens' ProjectsLocationsGlossariesDelete (Maybe Text)
plgdUploadType
  = lens _plgdUploadType
      (\ s a -> s{_plgdUploadType = a})

-- | Required. The name of the glossary to delete.
plgdName :: Lens' ProjectsLocationsGlossariesDelete Text
plgdName = lens _plgdName (\ s a -> s{_plgdName = a})

-- | JSONP
plgdCallback :: Lens' ProjectsLocationsGlossariesDelete (Maybe Text)
plgdCallback
  = lens _plgdCallback (\ s a -> s{_plgdCallback = a})

instance GoogleRequest
           ProjectsLocationsGlossariesDelete
         where
        type Rs ProjectsLocationsGlossariesDelete = Operation
        type Scopes ProjectsLocationsGlossariesDelete =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/cloud-translation"]
        requestClient ProjectsLocationsGlossariesDelete'{..}
          = go _plgdName _plgdXgafv _plgdUploadProtocol
              _plgdAccessToken
              _plgdUploadType
              _plgdCallback
              (Just AltJSON)
              translateService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsLocationsGlossariesDeleteResource)
                      mempty
