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
-- Module      : Network.Google.Resource.Run.Projects.Locations.DomainmAppings.Create
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Create a new domain mapping.
--
-- /See:/ <https://cloud.google.com/run/ Cloud Run Admin API Reference> for @run.projects.locations.domainmappings.create@.
module Network.Google.Resource.Run.Projects.Locations.DomainmAppings.Create
    (
    -- * REST Resource
      ProjectsLocationsDomainmAppingsCreateResource

    -- * Creating a Request
    , projectsLocationsDomainmAppingsCreate
    , ProjectsLocationsDomainmAppingsCreate

    -- * Request Lenses
    , pldacParent
    , pldacXgafv
    , pldacUploadProtocol
    , pldacAccessToken
    , pldacUploadType
    , pldacPayload
    , pldacDryRun
    , pldacCallback
    ) where

import Network.Google.Prelude
import Network.Google.Run.Types

-- | A resource alias for @run.projects.locations.domainmappings.create@ method which the
-- 'ProjectsLocationsDomainmAppingsCreate' request conforms to.
type ProjectsLocationsDomainmAppingsCreateResource =
     "v1" :>
       Capture "parent" Text :>
         "domainmappings" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "dryRun" Text :>
                     QueryParam "callback" Text :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] DomainMApping :>
                           Post '[JSON] DomainMApping

-- | Create a new domain mapping.
--
-- /See:/ 'projectsLocationsDomainmAppingsCreate' smart constructor.
data ProjectsLocationsDomainmAppingsCreate =
  ProjectsLocationsDomainmAppingsCreate'
    { _pldacParent :: !Text
    , _pldacXgafv :: !(Maybe Xgafv)
    , _pldacUploadProtocol :: !(Maybe Text)
    , _pldacAccessToken :: !(Maybe Text)
    , _pldacUploadType :: !(Maybe Text)
    , _pldacPayload :: !DomainMApping
    , _pldacDryRun :: !(Maybe Text)
    , _pldacCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsDomainmAppingsCreate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pldacParent'
--
-- * 'pldacXgafv'
--
-- * 'pldacUploadProtocol'
--
-- * 'pldacAccessToken'
--
-- * 'pldacUploadType'
--
-- * 'pldacPayload'
--
-- * 'pldacDryRun'
--
-- * 'pldacCallback'
projectsLocationsDomainmAppingsCreate
    :: Text -- ^ 'pldacParent'
    -> DomainMApping -- ^ 'pldacPayload'
    -> ProjectsLocationsDomainmAppingsCreate
projectsLocationsDomainmAppingsCreate pPldacParent_ pPldacPayload_ =
  ProjectsLocationsDomainmAppingsCreate'
    { _pldacParent = pPldacParent_
    , _pldacXgafv = Nothing
    , _pldacUploadProtocol = Nothing
    , _pldacAccessToken = Nothing
    , _pldacUploadType = Nothing
    , _pldacPayload = pPldacPayload_
    , _pldacDryRun = Nothing
    , _pldacCallback = Nothing
    }


-- | The namespace in which the domain mapping should be created. For Cloud
-- Run (fully managed), replace {namespace_id} with the project ID or
-- number.
pldacParent :: Lens' ProjectsLocationsDomainmAppingsCreate Text
pldacParent
  = lens _pldacParent (\ s a -> s{_pldacParent = a})

-- | V1 error format.
pldacXgafv :: Lens' ProjectsLocationsDomainmAppingsCreate (Maybe Xgafv)
pldacXgafv
  = lens _pldacXgafv (\ s a -> s{_pldacXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pldacUploadProtocol :: Lens' ProjectsLocationsDomainmAppingsCreate (Maybe Text)
pldacUploadProtocol
  = lens _pldacUploadProtocol
      (\ s a -> s{_pldacUploadProtocol = a})

-- | OAuth access token.
pldacAccessToken :: Lens' ProjectsLocationsDomainmAppingsCreate (Maybe Text)
pldacAccessToken
  = lens _pldacAccessToken
      (\ s a -> s{_pldacAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pldacUploadType :: Lens' ProjectsLocationsDomainmAppingsCreate (Maybe Text)
pldacUploadType
  = lens _pldacUploadType
      (\ s a -> s{_pldacUploadType = a})

-- | Multipart request metadata.
pldacPayload :: Lens' ProjectsLocationsDomainmAppingsCreate DomainMApping
pldacPayload
  = lens _pldacPayload (\ s a -> s{_pldacPayload = a})

-- | Indicates that the server should validate the request and populate
-- default values without persisting the request. Supported values: \`all\`
pldacDryRun :: Lens' ProjectsLocationsDomainmAppingsCreate (Maybe Text)
pldacDryRun
  = lens _pldacDryRun (\ s a -> s{_pldacDryRun = a})

-- | JSONP
pldacCallback :: Lens' ProjectsLocationsDomainmAppingsCreate (Maybe Text)
pldacCallback
  = lens _pldacCallback
      (\ s a -> s{_pldacCallback = a})

instance GoogleRequest
           ProjectsLocationsDomainmAppingsCreate
         where
        type Rs ProjectsLocationsDomainmAppingsCreate =
             DomainMApping
        type Scopes ProjectsLocationsDomainmAppingsCreate =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          ProjectsLocationsDomainmAppingsCreate'{..}
          = go _pldacParent _pldacXgafv _pldacUploadProtocol
              _pldacAccessToken
              _pldacUploadType
              _pldacDryRun
              _pldacCallback
              (Just AltJSON)
              _pldacPayload
              runService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsLocationsDomainmAppingsCreateResource)
                      mempty
