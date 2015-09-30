{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Compute.Projects.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Returns the specified project resource.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @ComputeProjectsGet@.
module Compute.Projects.Get
    (
    -- * REST Resource
      ProjectsGetAPI

    -- * Creating a Request
    , projectsGet
    , ProjectsGet

    -- * Request Lenses
    , pgQuotaUser
    , pgPrettyPrint
    , pgProject
    , pgUserIp
    , pgKey
    , pgOauthToken
    , pgFields
    , pgAlt
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @ComputeProjectsGet@ which the
-- 'ProjectsGet' request conforms to.
type ProjectsGetAPI =
     Capture "project" Text :> Get '[JSON] Project

-- | Returns the specified project resource.
--
-- /See:/ 'projectsGet' smart constructor.
data ProjectsGet = ProjectsGet
    { _pgQuotaUser   :: !(Maybe Text)
    , _pgPrettyPrint :: !Bool
    , _pgProject     :: !Text
    , _pgUserIp      :: !(Maybe Text)
    , _pgKey         :: !(Maybe Text)
    , _pgOauthToken  :: !(Maybe Text)
    , _pgFields      :: !(Maybe Text)
    , _pgAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProjectsGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pgQuotaUser'
--
-- * 'pgPrettyPrint'
--
-- * 'pgProject'
--
-- * 'pgUserIp'
--
-- * 'pgKey'
--
-- * 'pgOauthToken'
--
-- * 'pgFields'
--
-- * 'pgAlt'
projectsGet
    :: Text -- ^ 'project'
    -> ProjectsGet
projectsGet pPgProject_ =
    ProjectsGet
    { _pgQuotaUser = Nothing
    , _pgPrettyPrint = True
    , _pgProject = pPgProject_
    , _pgUserIp = Nothing
    , _pgKey = Nothing
    , _pgOauthToken = Nothing
    , _pgFields = Nothing
    , _pgAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
pgQuotaUser :: Lens' ProjectsGet' (Maybe Text)
pgQuotaUser
  = lens _pgQuotaUser (\ s a -> s{_pgQuotaUser = a})

-- | Returns response with indentations and line breaks.
pgPrettyPrint :: Lens' ProjectsGet' Bool
pgPrettyPrint
  = lens _pgPrettyPrint
      (\ s a -> s{_pgPrettyPrint = a})

-- | Project ID for this request.
pgProject :: Lens' ProjectsGet' Text
pgProject
  = lens _pgProject (\ s a -> s{_pgProject = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
pgUserIp :: Lens' ProjectsGet' (Maybe Text)
pgUserIp = lens _pgUserIp (\ s a -> s{_pgUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
pgKey :: Lens' ProjectsGet' (Maybe Text)
pgKey = lens _pgKey (\ s a -> s{_pgKey = a})

-- | OAuth 2.0 token for the current user.
pgOauthToken :: Lens' ProjectsGet' (Maybe Text)
pgOauthToken
  = lens _pgOauthToken (\ s a -> s{_pgOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
pgFields :: Lens' ProjectsGet' (Maybe Text)
pgFields = lens _pgFields (\ s a -> s{_pgFields = a})

-- | Data format for the response.
pgAlt :: Lens' ProjectsGet' Text
pgAlt = lens _pgAlt (\ s a -> s{_pgAlt = a})

instance GoogleRequest ProjectsGet' where
        type Rs ProjectsGet' = Project
        request = requestWithRoute defReq computeURL
        requestWithRoute r u ProjectsGet{..}
          = go _pgQuotaUser _pgPrettyPrint _pgProject _pgUserIp
              _pgKey
              _pgOauthToken
              _pgFields
              _pgAlt
          where go
                  = clientWithRoute (Proxy :: Proxy ProjectsGetAPI) r u
