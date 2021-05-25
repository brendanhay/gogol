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
-- Module      : Network.Google.Resource.Run.Projects.Locations.DomainmAppings.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Get information about a domain mapping.
--
-- /See:/ <https://cloud.google.com/run/ Cloud Run Admin API Reference> for @run.projects.locations.domainmappings.get@.
module Network.Google.Resource.Run.Projects.Locations.DomainmAppings.Get
    (
    -- * REST Resource
      ProjectsLocationsDomainmAppingsGetResource

    -- * Creating a Request
    , projectsLocationsDomainmAppingsGet
    , ProjectsLocationsDomainmAppingsGet

    -- * Request Lenses
    , pldagXgafv
    , pldagUploadProtocol
    , pldagAccessToken
    , pldagUploadType
    , pldagName
    , pldagCallback
    ) where

import Network.Google.Prelude
import Network.Google.Run.Types

-- | A resource alias for @run.projects.locations.domainmappings.get@ method which the
-- 'ProjectsLocationsDomainmAppingsGet' request conforms to.
type ProjectsLocationsDomainmAppingsGetResource =
     "v1" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :> Get '[JSON] DomainMApping

-- | Get information about a domain mapping.
--
-- /See:/ 'projectsLocationsDomainmAppingsGet' smart constructor.
data ProjectsLocationsDomainmAppingsGet =
  ProjectsLocationsDomainmAppingsGet'
    { _pldagXgafv :: !(Maybe Xgafv)
    , _pldagUploadProtocol :: !(Maybe Text)
    , _pldagAccessToken :: !(Maybe Text)
    , _pldagUploadType :: !(Maybe Text)
    , _pldagName :: !Text
    , _pldagCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsDomainmAppingsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pldagXgafv'
--
-- * 'pldagUploadProtocol'
--
-- * 'pldagAccessToken'
--
-- * 'pldagUploadType'
--
-- * 'pldagName'
--
-- * 'pldagCallback'
projectsLocationsDomainmAppingsGet
    :: Text -- ^ 'pldagName'
    -> ProjectsLocationsDomainmAppingsGet
projectsLocationsDomainmAppingsGet pPldagName_ =
  ProjectsLocationsDomainmAppingsGet'
    { _pldagXgafv = Nothing
    , _pldagUploadProtocol = Nothing
    , _pldagAccessToken = Nothing
    , _pldagUploadType = Nothing
    , _pldagName = pPldagName_
    , _pldagCallback = Nothing
    }


-- | V1 error format.
pldagXgafv :: Lens' ProjectsLocationsDomainmAppingsGet (Maybe Xgafv)
pldagXgafv
  = lens _pldagXgafv (\ s a -> s{_pldagXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pldagUploadProtocol :: Lens' ProjectsLocationsDomainmAppingsGet (Maybe Text)
pldagUploadProtocol
  = lens _pldagUploadProtocol
      (\ s a -> s{_pldagUploadProtocol = a})

-- | OAuth access token.
pldagAccessToken :: Lens' ProjectsLocationsDomainmAppingsGet (Maybe Text)
pldagAccessToken
  = lens _pldagAccessToken
      (\ s a -> s{_pldagAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pldagUploadType :: Lens' ProjectsLocationsDomainmAppingsGet (Maybe Text)
pldagUploadType
  = lens _pldagUploadType
      (\ s a -> s{_pldagUploadType = a})

-- | The name of the domain mapping to retrieve. For Cloud Run (fully
-- managed), replace {namespace_id} with the project ID or number.
pldagName :: Lens' ProjectsLocationsDomainmAppingsGet Text
pldagName
  = lens _pldagName (\ s a -> s{_pldagName = a})

-- | JSONP
pldagCallback :: Lens' ProjectsLocationsDomainmAppingsGet (Maybe Text)
pldagCallback
  = lens _pldagCallback
      (\ s a -> s{_pldagCallback = a})

instance GoogleRequest
           ProjectsLocationsDomainmAppingsGet
         where
        type Rs ProjectsLocationsDomainmAppingsGet =
             DomainMApping
        type Scopes ProjectsLocationsDomainmAppingsGet =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient ProjectsLocationsDomainmAppingsGet'{..}
          = go _pldagName _pldagXgafv _pldagUploadProtocol
              _pldagAccessToken
              _pldagUploadType
              _pldagCallback
              (Just AltJSON)
              runService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsLocationsDomainmAppingsGetResource)
                      mempty
