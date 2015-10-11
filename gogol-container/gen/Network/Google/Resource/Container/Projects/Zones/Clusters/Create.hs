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
-- Module      : Network.Google.Resource.Container.Projects.Zones.Clusters.Create
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Creates a cluster, consisting of the specified number and type of Google
-- Compute Engine instances, plus a Kubernetes master endpoint. By default,
-- the cluster is created in the project\'s [default
-- network](\/compute\/docs\/networking#networks_1). One firewall is added
-- for the cluster. After cluster creation, the cluster creates routes for
-- each node to allow the containers on that node to communicate with all
-- other instances in the cluster. Finally, an entry is added to the
-- project\'s global metadata indicating which CIDR range is being used by
-- the cluster.
--
-- /See:/ <https://cloud.google.com/container-engine/ Google Container Engine API Reference> for @ContainerProjectsZonesClustersCreate@.
module Network.Google.Resource.Container.Projects.Zones.Clusters.Create
    (
    -- * REST Resource
      ProjectsZonesClustersCreateResource

    -- * Creating a Request
    , projectsZonesClustersCreate'
    , ProjectsZonesClustersCreate'

    -- * Request Lenses
    , pzccXgafv
    , pzccQuotaUser
    , pzccPrettyPrint
    , pzccUploadProtocol
    , pzccPp
    , pzccAccessToken
    , pzccUploadType
    , pzccZone
    , pzccPayload
    , pzccBearerToken
    , pzccKey
    , pzccProjectId
    , pzccOAuthToken
    , pzccFields
    , pzccCallback
    ) where

import           Network.Google.Container.Types
import           Network.Google.Prelude

-- | A resource alias for @ContainerProjectsZonesClustersCreate@ method which the
-- 'ProjectsZonesClustersCreate'' request conforms to.
type ProjectsZonesClustersCreateResource =
     "v1" :>
       "projects" :>
         Capture "projectId" Text :>
           "zones" :>
             Capture "zone" Text :>
               "clusters" :>
                 QueryParam "$.xgafv" Text :>
                   QueryParam "upload_protocol" Text :>
                     QueryParam "pp" Bool :>
                       QueryParam "access_token" Text :>
                         QueryParam "uploadType" Text :>
                           QueryParam "bearer_token" Text :>
                             QueryParam "callback" Text :>
                               QueryParam "quotaUser" Text :>
                                 QueryParam "prettyPrint" Bool :>
                                   QueryParam "fields" Text :>
                                     QueryParam "key" AuthKey :>
                                       Header "Authorization" OAuthToken :>
                                         QueryParam "alt" AltJSON :>
                                           ReqBody '[JSON] CreateClusterRequest
                                             :> Post '[JSON] Operation

-- | Creates a cluster, consisting of the specified number and type of Google
-- Compute Engine instances, plus a Kubernetes master endpoint. By default,
-- the cluster is created in the project\'s [default
-- network](\/compute\/docs\/networking#networks_1). One firewall is added
-- for the cluster. After cluster creation, the cluster creates routes for
-- each node to allow the containers on that node to communicate with all
-- other instances in the cluster. Finally, an entry is added to the
-- project\'s global metadata indicating which CIDR range is being used by
-- the cluster.
--
-- /See:/ 'projectsZonesClustersCreate'' smart constructor.
data ProjectsZonesClustersCreate' = ProjectsZonesClustersCreate'
    { _pzccXgafv          :: !(Maybe Text)
    , _pzccQuotaUser      :: !(Maybe Text)
    , _pzccPrettyPrint    :: !Bool
    , _pzccUploadProtocol :: !(Maybe Text)
    , _pzccPp             :: !Bool
    , _pzccAccessToken    :: !(Maybe Text)
    , _pzccUploadType     :: !(Maybe Text)
    , _pzccZone           :: !Text
    , _pzccPayload        :: !CreateClusterRequest
    , _pzccBearerToken    :: !(Maybe Text)
    , _pzccKey            :: !(Maybe AuthKey)
    , _pzccProjectId      :: !Text
    , _pzccOAuthToken     :: !(Maybe OAuthToken)
    , _pzccFields         :: !(Maybe Text)
    , _pzccCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProjectsZonesClustersCreate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pzccXgafv'
--
-- * 'pzccQuotaUser'
--
-- * 'pzccPrettyPrint'
--
-- * 'pzccUploadProtocol'
--
-- * 'pzccPp'
--
-- * 'pzccAccessToken'
--
-- * 'pzccUploadType'
--
-- * 'pzccZone'
--
-- * 'pzccPayload'
--
-- * 'pzccBearerToken'
--
-- * 'pzccKey'
--
-- * 'pzccProjectId'
--
-- * 'pzccOAuthToken'
--
-- * 'pzccFields'
--
-- * 'pzccCallback'
projectsZonesClustersCreate'
    :: Text -- ^ 'zone'
    -> CreateClusterRequest -- ^ 'payload'
    -> Text -- ^ 'projectId'
    -> ProjectsZonesClustersCreate'
projectsZonesClustersCreate' pPzccZone_ pPzccPayload_ pPzccProjectId_ =
    ProjectsZonesClustersCreate'
    { _pzccXgafv = Nothing
    , _pzccQuotaUser = Nothing
    , _pzccPrettyPrint = True
    , _pzccUploadProtocol = Nothing
    , _pzccPp = True
    , _pzccAccessToken = Nothing
    , _pzccUploadType = Nothing
    , _pzccZone = pPzccZone_
    , _pzccPayload = pPzccPayload_
    , _pzccBearerToken = Nothing
    , _pzccKey = Nothing
    , _pzccProjectId = pPzccProjectId_
    , _pzccOAuthToken = Nothing
    , _pzccFields = Nothing
    , _pzccCallback = Nothing
    }

-- | V1 error format.
pzccXgafv :: Lens' ProjectsZonesClustersCreate' (Maybe Text)
pzccXgafv
  = lens _pzccXgafv (\ s a -> s{_pzccXgafv = a})

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters.
pzccQuotaUser :: Lens' ProjectsZonesClustersCreate' (Maybe Text)
pzccQuotaUser
  = lens _pzccQuotaUser
      (\ s a -> s{_pzccQuotaUser = a})

-- | Returns response with indentations and line breaks.
pzccPrettyPrint :: Lens' ProjectsZonesClustersCreate' Bool
pzccPrettyPrint
  = lens _pzccPrettyPrint
      (\ s a -> s{_pzccPrettyPrint = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pzccUploadProtocol :: Lens' ProjectsZonesClustersCreate' (Maybe Text)
pzccUploadProtocol
  = lens _pzccUploadProtocol
      (\ s a -> s{_pzccUploadProtocol = a})

-- | Pretty-print response.
pzccPp :: Lens' ProjectsZonesClustersCreate' Bool
pzccPp = lens _pzccPp (\ s a -> s{_pzccPp = a})

-- | OAuth access token.
pzccAccessToken :: Lens' ProjectsZonesClustersCreate' (Maybe Text)
pzccAccessToken
  = lens _pzccAccessToken
      (\ s a -> s{_pzccAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pzccUploadType :: Lens' ProjectsZonesClustersCreate' (Maybe Text)
pzccUploadType
  = lens _pzccUploadType
      (\ s a -> s{_pzccUploadType = a})

-- | The name of the Google Compute Engine
-- [zone](\/compute\/docs\/zones#available) in which the cluster resides.
pzccZone :: Lens' ProjectsZonesClustersCreate' Text
pzccZone = lens _pzccZone (\ s a -> s{_pzccZone = a})

-- | Multipart request metadata.
pzccPayload :: Lens' ProjectsZonesClustersCreate' CreateClusterRequest
pzccPayload
  = lens _pzccPayload (\ s a -> s{_pzccPayload = a})

-- | OAuth bearer token.
pzccBearerToken :: Lens' ProjectsZonesClustersCreate' (Maybe Text)
pzccBearerToken
  = lens _pzccBearerToken
      (\ s a -> s{_pzccBearerToken = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
pzccKey :: Lens' ProjectsZonesClustersCreate' (Maybe AuthKey)
pzccKey = lens _pzccKey (\ s a -> s{_pzccKey = a})

-- | The Google Developers Console [project ID or project
-- number](https:\/\/developers.google.com\/console\/help\/new\/#projectnumber).
pzccProjectId :: Lens' ProjectsZonesClustersCreate' Text
pzccProjectId
  = lens _pzccProjectId
      (\ s a -> s{_pzccProjectId = a})

-- | OAuth 2.0 token for the current user.
pzccOAuthToken :: Lens' ProjectsZonesClustersCreate' (Maybe OAuthToken)
pzccOAuthToken
  = lens _pzccOAuthToken
      (\ s a -> s{_pzccOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
pzccFields :: Lens' ProjectsZonesClustersCreate' (Maybe Text)
pzccFields
  = lens _pzccFields (\ s a -> s{_pzccFields = a})

-- | JSONP
pzccCallback :: Lens' ProjectsZonesClustersCreate' (Maybe Text)
pzccCallback
  = lens _pzccCallback (\ s a -> s{_pzccCallback = a})

instance GoogleAuth ProjectsZonesClustersCreate'
         where
        _AuthKey = pzccKey . _Just
        _AuthToken = pzccOAuthToken . _Just

instance GoogleRequest ProjectsZonesClustersCreate'
         where
        type Rs ProjectsZonesClustersCreate' = Operation
        request = requestWith containerRequest
        requestWith rq ProjectsZonesClustersCreate'{..}
          = go _pzccProjectId _pzccZone _pzccXgafv
              _pzccUploadProtocol
              (Just _pzccPp)
              _pzccAccessToken
              _pzccUploadType
              _pzccBearerToken
              _pzccCallback
              _pzccQuotaUser
              (Just _pzccPrettyPrint)
              _pzccFields
              _pzccKey
              _pzccOAuthToken
              (Just AltJSON)
              _pzccPayload
          where go
                  = clientBuild
                      (Proxy :: Proxy ProjectsZonesClustersCreateResource)
                      rq
