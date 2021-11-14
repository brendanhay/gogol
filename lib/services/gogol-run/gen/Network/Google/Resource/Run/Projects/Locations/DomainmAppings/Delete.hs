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
-- Module      : Network.Google.Resource.Run.Projects.Locations.DomainmAppings.Delete
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Delete a domain mapping.
--
-- /See:/ <https://cloud.google.com/run/ Cloud Run Admin API Reference> for @run.projects.locations.domainmappings.delete@.
module Network.Google.Resource.Run.Projects.Locations.DomainmAppings.Delete
    (
    -- * REST Resource
      ProjectsLocationsDomainmAppingsDeleteResource

    -- * Creating a Request
    , projectsLocationsDomainmAppingsDelete
    , ProjectsLocationsDomainmAppingsDelete

    -- * Request Lenses
    , pldadXgafv
    , pldadUploadProtocol
    , pldadAPIVersion
    , pldadKind
    , pldadAccessToken
    , pldadUploadType
    , pldadPropagationPolicy
    , pldadName
    , pldadDryRun
    , pldadCallback
    ) where

import Network.Google.Prelude
import Network.Google.Run.Types

-- | A resource alias for @run.projects.locations.domainmappings.delete@ method which the
-- 'ProjectsLocationsDomainmAppingsDelete' request conforms to.
type ProjectsLocationsDomainmAppingsDeleteResource =
     "v1" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "apiVersion" Text :>
               QueryParam "kind" Text :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "propagationPolicy" Text :>
                       QueryParam "dryRun" Text :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :> Delete '[JSON] Status

-- | Delete a domain mapping.
--
-- /See:/ 'projectsLocationsDomainmAppingsDelete' smart constructor.
data ProjectsLocationsDomainmAppingsDelete =
  ProjectsLocationsDomainmAppingsDelete'
    { _pldadXgafv :: !(Maybe Xgafv)
    , _pldadUploadProtocol :: !(Maybe Text)
    , _pldadAPIVersion :: !(Maybe Text)
    , _pldadKind :: !(Maybe Text)
    , _pldadAccessToken :: !(Maybe Text)
    , _pldadUploadType :: !(Maybe Text)
    , _pldadPropagationPolicy :: !(Maybe Text)
    , _pldadName :: !Text
    , _pldadDryRun :: !(Maybe Text)
    , _pldadCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsDomainmAppingsDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pldadXgafv'
--
-- * 'pldadUploadProtocol'
--
-- * 'pldadAPIVersion'
--
-- * 'pldadKind'
--
-- * 'pldadAccessToken'
--
-- * 'pldadUploadType'
--
-- * 'pldadPropagationPolicy'
--
-- * 'pldadName'
--
-- * 'pldadDryRun'
--
-- * 'pldadCallback'
projectsLocationsDomainmAppingsDelete
    :: Text -- ^ 'pldadName'
    -> ProjectsLocationsDomainmAppingsDelete
projectsLocationsDomainmAppingsDelete pPldadName_ =
  ProjectsLocationsDomainmAppingsDelete'
    { _pldadXgafv = Nothing
    , _pldadUploadProtocol = Nothing
    , _pldadAPIVersion = Nothing
    , _pldadKind = Nothing
    , _pldadAccessToken = Nothing
    , _pldadUploadType = Nothing
    , _pldadPropagationPolicy = Nothing
    , _pldadName = pPldadName_
    , _pldadDryRun = Nothing
    , _pldadCallback = Nothing
    }


-- | V1 error format.
pldadXgafv :: Lens' ProjectsLocationsDomainmAppingsDelete (Maybe Xgafv)
pldadXgafv
  = lens _pldadXgafv (\ s a -> s{_pldadXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pldadUploadProtocol :: Lens' ProjectsLocationsDomainmAppingsDelete (Maybe Text)
pldadUploadProtocol
  = lens _pldadUploadProtocol
      (\ s a -> s{_pldadUploadProtocol = a})

-- | Cloud Run currently ignores this parameter.
pldadAPIVersion :: Lens' ProjectsLocationsDomainmAppingsDelete (Maybe Text)
pldadAPIVersion
  = lens _pldadAPIVersion
      (\ s a -> s{_pldadAPIVersion = a})

-- | Cloud Run currently ignores this parameter.
pldadKind :: Lens' ProjectsLocationsDomainmAppingsDelete (Maybe Text)
pldadKind
  = lens _pldadKind (\ s a -> s{_pldadKind = a})

-- | OAuth access token.
pldadAccessToken :: Lens' ProjectsLocationsDomainmAppingsDelete (Maybe Text)
pldadAccessToken
  = lens _pldadAccessToken
      (\ s a -> s{_pldadAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pldadUploadType :: Lens' ProjectsLocationsDomainmAppingsDelete (Maybe Text)
pldadUploadType
  = lens _pldadUploadType
      (\ s a -> s{_pldadUploadType = a})

-- | Specifies the propagation policy of delete. Cloud Run currently ignores
-- this setting, and deletes in the background. Please see
-- kubernetes.io\/docs\/concepts\/workloads\/controllers\/garbage-collection\/
-- for more information.
pldadPropagationPolicy :: Lens' ProjectsLocationsDomainmAppingsDelete (Maybe Text)
pldadPropagationPolicy
  = lens _pldadPropagationPolicy
      (\ s a -> s{_pldadPropagationPolicy = a})

-- | The name of the domain mapping to delete. For Cloud Run (fully managed),
-- replace {namespace_id} with the project ID or number.
pldadName :: Lens' ProjectsLocationsDomainmAppingsDelete Text
pldadName
  = lens _pldadName (\ s a -> s{_pldadName = a})

-- | Indicates that the server should validate the request and populate
-- default values without persisting the request. Supported values: \`all\`
pldadDryRun :: Lens' ProjectsLocationsDomainmAppingsDelete (Maybe Text)
pldadDryRun
  = lens _pldadDryRun (\ s a -> s{_pldadDryRun = a})

-- | JSONP
pldadCallback :: Lens' ProjectsLocationsDomainmAppingsDelete (Maybe Text)
pldadCallback
  = lens _pldadCallback
      (\ s a -> s{_pldadCallback = a})

instance GoogleRequest
           ProjectsLocationsDomainmAppingsDelete
         where
        type Rs ProjectsLocationsDomainmAppingsDelete =
             Status
        type Scopes ProjectsLocationsDomainmAppingsDelete =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          ProjectsLocationsDomainmAppingsDelete'{..}
          = go _pldadName _pldadXgafv _pldadUploadProtocol
              _pldadAPIVersion
              _pldadKind
              _pldadAccessToken
              _pldadUploadType
              _pldadPropagationPolicy
              _pldadDryRun
              _pldadCallback
              (Just AltJSON)
              runService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsLocationsDomainmAppingsDeleteResource)
                      mempty
