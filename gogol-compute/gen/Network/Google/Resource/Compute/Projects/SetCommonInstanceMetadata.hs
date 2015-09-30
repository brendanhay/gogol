{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Compute.Projects.SetCommonInstanceMetadata
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Sets metadata common to all instances within the specified project using
-- the data included in the request.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @ComputeProjectsSetCommonInstanceMetadata@.
module Compute.Projects.SetCommonInstanceMetadata
    (
    -- * REST Resource
      ProjectsSetCommonInstanceMetadataAPI

    -- * Creating a Request
    , projectsSetCommonInstanceMetadata
    , ProjectsSetCommonInstanceMetadata

    -- * Request Lenses
    , pscimQuotaUser
    , pscimPrettyPrint
    , pscimProject
    , pscimUserIp
    , pscimKey
    , pscimOauthToken
    , pscimFields
    , pscimAlt
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @ComputeProjectsSetCommonInstanceMetadata@ which the
-- 'ProjectsSetCommonInstanceMetadata' request conforms to.
type ProjectsSetCommonInstanceMetadataAPI =
     Capture "project" Text :>
       "setCommonInstanceMetadata" :> Post '[JSON] Operation

-- | Sets metadata common to all instances within the specified project using
-- the data included in the request.
--
-- /See:/ 'projectsSetCommonInstanceMetadata' smart constructor.
data ProjectsSetCommonInstanceMetadata = ProjectsSetCommonInstanceMetadata
    { _pscimQuotaUser   :: !(Maybe Text)
    , _pscimPrettyPrint :: !Bool
    , _pscimProject     :: !Text
    , _pscimUserIp      :: !(Maybe Text)
    , _pscimKey         :: !(Maybe Text)
    , _pscimOauthToken  :: !(Maybe Text)
    , _pscimFields      :: !(Maybe Text)
    , _pscimAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProjectsSetCommonInstanceMetadata'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pscimQuotaUser'
--
-- * 'pscimPrettyPrint'
--
-- * 'pscimProject'
--
-- * 'pscimUserIp'
--
-- * 'pscimKey'
--
-- * 'pscimOauthToken'
--
-- * 'pscimFields'
--
-- * 'pscimAlt'
projectsSetCommonInstanceMetadata
    :: Text -- ^ 'project'
    -> ProjectsSetCommonInstanceMetadata
projectsSetCommonInstanceMetadata pPscimProject_ =
    ProjectsSetCommonInstanceMetadata
    { _pscimQuotaUser = Nothing
    , _pscimPrettyPrint = True
    , _pscimProject = pPscimProject_
    , _pscimUserIp = Nothing
    , _pscimKey = Nothing
    , _pscimOauthToken = Nothing
    , _pscimFields = Nothing
    , _pscimAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
pscimQuotaUser :: Lens' ProjectsSetCommonInstanceMetadata' (Maybe Text)
pscimQuotaUser
  = lens _pscimQuotaUser
      (\ s a -> s{_pscimQuotaUser = a})

-- | Returns response with indentations and line breaks.
pscimPrettyPrint :: Lens' ProjectsSetCommonInstanceMetadata' Bool
pscimPrettyPrint
  = lens _pscimPrettyPrint
      (\ s a -> s{_pscimPrettyPrint = a})

-- | Project ID for this request.
pscimProject :: Lens' ProjectsSetCommonInstanceMetadata' Text
pscimProject
  = lens _pscimProject (\ s a -> s{_pscimProject = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
pscimUserIp :: Lens' ProjectsSetCommonInstanceMetadata' (Maybe Text)
pscimUserIp
  = lens _pscimUserIp (\ s a -> s{_pscimUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
pscimKey :: Lens' ProjectsSetCommonInstanceMetadata' (Maybe Text)
pscimKey = lens _pscimKey (\ s a -> s{_pscimKey = a})

-- | OAuth 2.0 token for the current user.
pscimOauthToken :: Lens' ProjectsSetCommonInstanceMetadata' (Maybe Text)
pscimOauthToken
  = lens _pscimOauthToken
      (\ s a -> s{_pscimOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
pscimFields :: Lens' ProjectsSetCommonInstanceMetadata' (Maybe Text)
pscimFields
  = lens _pscimFields (\ s a -> s{_pscimFields = a})

-- | Data format for the response.
pscimAlt :: Lens' ProjectsSetCommonInstanceMetadata' Text
pscimAlt = lens _pscimAlt (\ s a -> s{_pscimAlt = a})

instance GoogleRequest
         ProjectsSetCommonInstanceMetadata' where
        type Rs ProjectsSetCommonInstanceMetadata' =
             Operation
        request = requestWithRoute defReq computeURL
        requestWithRoute r u
          ProjectsSetCommonInstanceMetadata{..}
          = go _pscimQuotaUser _pscimPrettyPrint _pscimProject
              _pscimUserIp
              _pscimKey
              _pscimOauthToken
              _pscimFields
              _pscimAlt
          where go
                  = clientWithRoute
                      (Proxy :: Proxy ProjectsSetCommonInstanceMetadataAPI)
                      r
                      u
