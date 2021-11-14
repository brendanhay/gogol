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
-- Module      : Network.Google.Resource.Run.Projects.Locations.Revisions.Get
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Get information about a revision.
--
-- /See:/ <https://cloud.google.com/run/ Cloud Run Admin API Reference> for @run.projects.locations.revisions.get@.
module Network.Google.Resource.Run.Projects.Locations.Revisions.Get
    (
    -- * REST Resource
      ProjectsLocationsRevisionsGetResource

    -- * Creating a Request
    , projectsLocationsRevisionsGet
    , ProjectsLocationsRevisionsGet

    -- * Request Lenses
    , proXgafv
    , proUploadProtocol
    , proAccessToken
    , proUploadType
    , proName
    , proCallback
    ) where

import Network.Google.Prelude
import Network.Google.Run.Types

-- | A resource alias for @run.projects.locations.revisions.get@ method which the
-- 'ProjectsLocationsRevisionsGet' request conforms to.
type ProjectsLocationsRevisionsGetResource =
     "v1" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :> Get '[JSON] Revision

-- | Get information about a revision.
--
-- /See:/ 'projectsLocationsRevisionsGet' smart constructor.
data ProjectsLocationsRevisionsGet =
  ProjectsLocationsRevisionsGet'
    { _proXgafv :: !(Maybe Xgafv)
    , _proUploadProtocol :: !(Maybe Text)
    , _proAccessToken :: !(Maybe Text)
    , _proUploadType :: !(Maybe Text)
    , _proName :: !Text
    , _proCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsRevisionsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'proXgafv'
--
-- * 'proUploadProtocol'
--
-- * 'proAccessToken'
--
-- * 'proUploadType'
--
-- * 'proName'
--
-- * 'proCallback'
projectsLocationsRevisionsGet
    :: Text -- ^ 'proName'
    -> ProjectsLocationsRevisionsGet
projectsLocationsRevisionsGet pProName_ =
  ProjectsLocationsRevisionsGet'
    { _proXgafv = Nothing
    , _proUploadProtocol = Nothing
    , _proAccessToken = Nothing
    , _proUploadType = Nothing
    , _proName = pProName_
    , _proCallback = Nothing
    }


-- | V1 error format.
proXgafv :: Lens' ProjectsLocationsRevisionsGet (Maybe Xgafv)
proXgafv = lens _proXgafv (\ s a -> s{_proXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
proUploadProtocol :: Lens' ProjectsLocationsRevisionsGet (Maybe Text)
proUploadProtocol
  = lens _proUploadProtocol
      (\ s a -> s{_proUploadProtocol = a})

-- | OAuth access token.
proAccessToken :: Lens' ProjectsLocationsRevisionsGet (Maybe Text)
proAccessToken
  = lens _proAccessToken
      (\ s a -> s{_proAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
proUploadType :: Lens' ProjectsLocationsRevisionsGet (Maybe Text)
proUploadType
  = lens _proUploadType
      (\ s a -> s{_proUploadType = a})

-- | The name of the revision to retrieve. For Cloud Run (fully managed),
-- replace {namespace_id} with the project ID or number.
proName :: Lens' ProjectsLocationsRevisionsGet Text
proName = lens _proName (\ s a -> s{_proName = a})

-- | JSONP
proCallback :: Lens' ProjectsLocationsRevisionsGet (Maybe Text)
proCallback
  = lens _proCallback (\ s a -> s{_proCallback = a})

instance GoogleRequest ProjectsLocationsRevisionsGet
         where
        type Rs ProjectsLocationsRevisionsGet = Revision
        type Scopes ProjectsLocationsRevisionsGet =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient ProjectsLocationsRevisionsGet'{..}
          = go _proName _proXgafv _proUploadProtocol
              _proAccessToken
              _proUploadType
              _proCallback
              (Just AltJSON)
              runService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsLocationsRevisionsGetResource)
                      mempty
