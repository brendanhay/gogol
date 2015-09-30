{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Compute.Projects.MoveDisk
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Moves a persistent disk from one zone to another.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @ComputeProjectsMoveDisk@.
module Compute.Projects.MoveDisk
    (
    -- * REST Resource
      ProjectsMoveDiskAPI

    -- * Creating a Request
    , projectsMoveDisk
    , ProjectsMoveDisk

    -- * Request Lenses
    , pmdQuotaUser
    , pmdPrettyPrint
    , pmdProject
    , pmdUserIp
    , pmdKey
    , pmdOauthToken
    , pmdFields
    , pmdAlt
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @ComputeProjectsMoveDisk@ which the
-- 'ProjectsMoveDisk' request conforms to.
type ProjectsMoveDiskAPI =
     Capture "project" Text :>
       "moveDisk" :> Post '[JSON] Operation

-- | Moves a persistent disk from one zone to another.
--
-- /See:/ 'projectsMoveDisk' smart constructor.
data ProjectsMoveDisk = ProjectsMoveDisk
    { _pmdQuotaUser   :: !(Maybe Text)
    , _pmdPrettyPrint :: !Bool
    , _pmdProject     :: !Text
    , _pmdUserIp      :: !(Maybe Text)
    , _pmdKey         :: !(Maybe Text)
    , _pmdOauthToken  :: !(Maybe Text)
    , _pmdFields      :: !(Maybe Text)
    , _pmdAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProjectsMoveDisk'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pmdQuotaUser'
--
-- * 'pmdPrettyPrint'
--
-- * 'pmdProject'
--
-- * 'pmdUserIp'
--
-- * 'pmdKey'
--
-- * 'pmdOauthToken'
--
-- * 'pmdFields'
--
-- * 'pmdAlt'
projectsMoveDisk
    :: Text -- ^ 'project'
    -> ProjectsMoveDisk
projectsMoveDisk pPmdProject_ =
    ProjectsMoveDisk
    { _pmdQuotaUser = Nothing
    , _pmdPrettyPrint = True
    , _pmdProject = pPmdProject_
    , _pmdUserIp = Nothing
    , _pmdKey = Nothing
    , _pmdOauthToken = Nothing
    , _pmdFields = Nothing
    , _pmdAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
pmdQuotaUser :: Lens' ProjectsMoveDisk' (Maybe Text)
pmdQuotaUser
  = lens _pmdQuotaUser (\ s a -> s{_pmdQuotaUser = a})

-- | Returns response with indentations and line breaks.
pmdPrettyPrint :: Lens' ProjectsMoveDisk' Bool
pmdPrettyPrint
  = lens _pmdPrettyPrint
      (\ s a -> s{_pmdPrettyPrint = a})

-- | Project ID for this request.
pmdProject :: Lens' ProjectsMoveDisk' Text
pmdProject
  = lens _pmdProject (\ s a -> s{_pmdProject = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
pmdUserIp :: Lens' ProjectsMoveDisk' (Maybe Text)
pmdUserIp
  = lens _pmdUserIp (\ s a -> s{_pmdUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
pmdKey :: Lens' ProjectsMoveDisk' (Maybe Text)
pmdKey = lens _pmdKey (\ s a -> s{_pmdKey = a})

-- | OAuth 2.0 token for the current user.
pmdOauthToken :: Lens' ProjectsMoveDisk' (Maybe Text)
pmdOauthToken
  = lens _pmdOauthToken
      (\ s a -> s{_pmdOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
pmdFields :: Lens' ProjectsMoveDisk' (Maybe Text)
pmdFields
  = lens _pmdFields (\ s a -> s{_pmdFields = a})

-- | Data format for the response.
pmdAlt :: Lens' ProjectsMoveDisk' Text
pmdAlt = lens _pmdAlt (\ s a -> s{_pmdAlt = a})

instance GoogleRequest ProjectsMoveDisk' where
        type Rs ProjectsMoveDisk' = Operation
        request = requestWithRoute defReq computeURL
        requestWithRoute r u ProjectsMoveDisk{..}
          = go _pmdQuotaUser _pmdPrettyPrint _pmdProject
              _pmdUserIp
              _pmdKey
              _pmdOauthToken
              _pmdFields
              _pmdAlt
          where go
                  = clientWithRoute
                      (Proxy :: Proxy ProjectsMoveDiskAPI)
                      r
                      u
