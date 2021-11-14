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
-- Module      : Network.Google.Resource.Run.Projects.Locations.Revisions.Delete
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Delete a revision.
--
-- /See:/ <https://cloud.google.com/run/ Cloud Run Admin API Reference> for @run.projects.locations.revisions.delete@.
module Network.Google.Resource.Run.Projects.Locations.Revisions.Delete
    (
    -- * REST Resource
      ProjectsLocationsRevisionsDeleteResource

    -- * Creating a Request
    , projectsLocationsRevisionsDelete
    , ProjectsLocationsRevisionsDelete

    -- * Request Lenses
    , plrdXgafv
    , plrdUploadProtocol
    , plrdAPIVersion
    , plrdKind
    , plrdAccessToken
    , plrdUploadType
    , plrdPropagationPolicy
    , plrdName
    , plrdDryRun
    , plrdCallback
    ) where

import Network.Google.Prelude
import Network.Google.Run.Types

-- | A resource alias for @run.projects.locations.revisions.delete@ method which the
-- 'ProjectsLocationsRevisionsDelete' request conforms to.
type ProjectsLocationsRevisionsDeleteResource =
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

-- | Delete a revision.
--
-- /See:/ 'projectsLocationsRevisionsDelete' smart constructor.
data ProjectsLocationsRevisionsDelete =
  ProjectsLocationsRevisionsDelete'
    { _plrdXgafv :: !(Maybe Xgafv)
    , _plrdUploadProtocol :: !(Maybe Text)
    , _plrdAPIVersion :: !(Maybe Text)
    , _plrdKind :: !(Maybe Text)
    , _plrdAccessToken :: !(Maybe Text)
    , _plrdUploadType :: !(Maybe Text)
    , _plrdPropagationPolicy :: !(Maybe Text)
    , _plrdName :: !Text
    , _plrdDryRun :: !(Maybe Text)
    , _plrdCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsRevisionsDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plrdXgafv'
--
-- * 'plrdUploadProtocol'
--
-- * 'plrdAPIVersion'
--
-- * 'plrdKind'
--
-- * 'plrdAccessToken'
--
-- * 'plrdUploadType'
--
-- * 'plrdPropagationPolicy'
--
-- * 'plrdName'
--
-- * 'plrdDryRun'
--
-- * 'plrdCallback'
projectsLocationsRevisionsDelete
    :: Text -- ^ 'plrdName'
    -> ProjectsLocationsRevisionsDelete
projectsLocationsRevisionsDelete pPlrdName_ =
  ProjectsLocationsRevisionsDelete'
    { _plrdXgafv = Nothing
    , _plrdUploadProtocol = Nothing
    , _plrdAPIVersion = Nothing
    , _plrdKind = Nothing
    , _plrdAccessToken = Nothing
    , _plrdUploadType = Nothing
    , _plrdPropagationPolicy = Nothing
    , _plrdName = pPlrdName_
    , _plrdDryRun = Nothing
    , _plrdCallback = Nothing
    }


-- | V1 error format.
plrdXgafv :: Lens' ProjectsLocationsRevisionsDelete (Maybe Xgafv)
plrdXgafv
  = lens _plrdXgafv (\ s a -> s{_plrdXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
plrdUploadProtocol :: Lens' ProjectsLocationsRevisionsDelete (Maybe Text)
plrdUploadProtocol
  = lens _plrdUploadProtocol
      (\ s a -> s{_plrdUploadProtocol = a})

-- | Cloud Run currently ignores this parameter.
plrdAPIVersion :: Lens' ProjectsLocationsRevisionsDelete (Maybe Text)
plrdAPIVersion
  = lens _plrdAPIVersion
      (\ s a -> s{_plrdAPIVersion = a})

-- | Cloud Run currently ignores this parameter.
plrdKind :: Lens' ProjectsLocationsRevisionsDelete (Maybe Text)
plrdKind = lens _plrdKind (\ s a -> s{_plrdKind = a})

-- | OAuth access token.
plrdAccessToken :: Lens' ProjectsLocationsRevisionsDelete (Maybe Text)
plrdAccessToken
  = lens _plrdAccessToken
      (\ s a -> s{_plrdAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
plrdUploadType :: Lens' ProjectsLocationsRevisionsDelete (Maybe Text)
plrdUploadType
  = lens _plrdUploadType
      (\ s a -> s{_plrdUploadType = a})

-- | Specifies the propagation policy of delete. Cloud Run currently ignores
-- this setting, and deletes in the background. Please see
-- kubernetes.io\/docs\/concepts\/workloads\/controllers\/garbage-collection\/
-- for more information.
plrdPropagationPolicy :: Lens' ProjectsLocationsRevisionsDelete (Maybe Text)
plrdPropagationPolicy
  = lens _plrdPropagationPolicy
      (\ s a -> s{_plrdPropagationPolicy = a})

-- | The name of the revision to delete. For Cloud Run (fully managed),
-- replace {namespace_id} with the project ID or number.
plrdName :: Lens' ProjectsLocationsRevisionsDelete Text
plrdName = lens _plrdName (\ s a -> s{_plrdName = a})

-- | Indicates that the server should validate the request and populate
-- default values without persisting the request. Supported values: \`all\`
plrdDryRun :: Lens' ProjectsLocationsRevisionsDelete (Maybe Text)
plrdDryRun
  = lens _plrdDryRun (\ s a -> s{_plrdDryRun = a})

-- | JSONP
plrdCallback :: Lens' ProjectsLocationsRevisionsDelete (Maybe Text)
plrdCallback
  = lens _plrdCallback (\ s a -> s{_plrdCallback = a})

instance GoogleRequest
           ProjectsLocationsRevisionsDelete
         where
        type Rs ProjectsLocationsRevisionsDelete = Status
        type Scopes ProjectsLocationsRevisionsDelete =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient ProjectsLocationsRevisionsDelete'{..}
          = go _plrdName _plrdXgafv _plrdUploadProtocol
              _plrdAPIVersion
              _plrdKind
              _plrdAccessToken
              _plrdUploadType
              _plrdPropagationPolicy
              _plrdDryRun
              _plrdCallback
              (Just AltJSON)
              runService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsLocationsRevisionsDeleteResource)
                      mempty
