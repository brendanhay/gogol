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
-- Module      : Network.Google.Resource.Translate.Projects.Locations.Glossaries.Get
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets a glossary. Returns NOT_FOUND, if the glossary doesn\'t exist.
--
-- /See:/ <https://cloud.google.com/translate/docs/quickstarts Cloud Translation API Reference> for @translate.projects.locations.glossaries.get@.
module Network.Google.Resource.Translate.Projects.Locations.Glossaries.Get
    (
    -- * REST Resource
      ProjectsLocationsGlossariesGetResource

    -- * Creating a Request
    , projectsLocationsGlossariesGet
    , ProjectsLocationsGlossariesGet

    -- * Request Lenses
    , plggXgafv
    , plggUploadProtocol
    , plggAccessToken
    , plggUploadType
    , plggName
    , plggCallback
    ) where

import Network.Google.Prelude
import Network.Google.Translate.Types

-- | A resource alias for @translate.projects.locations.glossaries.get@ method which the
-- 'ProjectsLocationsGlossariesGet' request conforms to.
type ProjectsLocationsGlossariesGetResource =
     "v3" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :> Get '[JSON] Glossary

-- | Gets a glossary. Returns NOT_FOUND, if the glossary doesn\'t exist.
--
-- /See:/ 'projectsLocationsGlossariesGet' smart constructor.
data ProjectsLocationsGlossariesGet =
  ProjectsLocationsGlossariesGet'
    { _plggXgafv :: !(Maybe Xgafv)
    , _plggUploadProtocol :: !(Maybe Text)
    , _plggAccessToken :: !(Maybe Text)
    , _plggUploadType :: !(Maybe Text)
    , _plggName :: !Text
    , _plggCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsGlossariesGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plggXgafv'
--
-- * 'plggUploadProtocol'
--
-- * 'plggAccessToken'
--
-- * 'plggUploadType'
--
-- * 'plggName'
--
-- * 'plggCallback'
projectsLocationsGlossariesGet
    :: Text -- ^ 'plggName'
    -> ProjectsLocationsGlossariesGet
projectsLocationsGlossariesGet pPlggName_ =
  ProjectsLocationsGlossariesGet'
    { _plggXgafv = Nothing
    , _plggUploadProtocol = Nothing
    , _plggAccessToken = Nothing
    , _plggUploadType = Nothing
    , _plggName = pPlggName_
    , _plggCallback = Nothing
    }


-- | V1 error format.
plggXgafv :: Lens' ProjectsLocationsGlossariesGet (Maybe Xgafv)
plggXgafv
  = lens _plggXgafv (\ s a -> s{_plggXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
plggUploadProtocol :: Lens' ProjectsLocationsGlossariesGet (Maybe Text)
plggUploadProtocol
  = lens _plggUploadProtocol
      (\ s a -> s{_plggUploadProtocol = a})

-- | OAuth access token.
plggAccessToken :: Lens' ProjectsLocationsGlossariesGet (Maybe Text)
plggAccessToken
  = lens _plggAccessToken
      (\ s a -> s{_plggAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
plggUploadType :: Lens' ProjectsLocationsGlossariesGet (Maybe Text)
plggUploadType
  = lens _plggUploadType
      (\ s a -> s{_plggUploadType = a})

-- | Required. The name of the glossary to retrieve.
plggName :: Lens' ProjectsLocationsGlossariesGet Text
plggName = lens _plggName (\ s a -> s{_plggName = a})

-- | JSONP
plggCallback :: Lens' ProjectsLocationsGlossariesGet (Maybe Text)
plggCallback
  = lens _plggCallback (\ s a -> s{_plggCallback = a})

instance GoogleRequest ProjectsLocationsGlossariesGet
         where
        type Rs ProjectsLocationsGlossariesGet = Glossary
        type Scopes ProjectsLocationsGlossariesGet =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/cloud-translation"]
        requestClient ProjectsLocationsGlossariesGet'{..}
          = go _plggName _plggXgafv _plggUploadProtocol
              _plggAccessToken
              _plggUploadType
              _plggCallback
              (Just AltJSON)
              translateService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsLocationsGlossariesGetResource)
                      mempty
