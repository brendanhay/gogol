{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.DFAReporting.Projects.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Gets one project by ID.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @DfareportingProjectsGet@.
module DFAReporting.Projects.Get
    (
    -- * REST Resource
      ProjectsGetAPI

    -- * Creating a Request
    , projectsGet
    , ProjectsGet

    -- * Request Lenses
    , prorQuotaUser
    , prorPrettyPrint
    , prorUserIp
    , prorProfileId
    , prorKey
    , prorId
    , prorOauthToken
    , prorFields
    , prorAlt
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @DfareportingProjectsGet@ which the
-- 'ProjectsGet' request conforms to.
type ProjectsGetAPI =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "projects" :>
           Capture "id" Int64 :> Get '[JSON] Project

-- | Gets one project by ID.
--
-- /See:/ 'projectsGet' smart constructor.
data ProjectsGet = ProjectsGet
    { _prorQuotaUser   :: !(Maybe Text)
    , _prorPrettyPrint :: !Bool
    , _prorUserIp      :: !(Maybe Text)
    , _prorProfileId   :: !Int64
    , _prorKey         :: !(Maybe Text)
    , _prorId          :: !Int64
    , _prorOauthToken  :: !(Maybe Text)
    , _prorFields      :: !(Maybe Text)
    , _prorAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProjectsGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'prorQuotaUser'
--
-- * 'prorPrettyPrint'
--
-- * 'prorUserIp'
--
-- * 'prorProfileId'
--
-- * 'prorKey'
--
-- * 'prorId'
--
-- * 'prorOauthToken'
--
-- * 'prorFields'
--
-- * 'prorAlt'
projectsGet
    :: Int64 -- ^ 'profileId'
    -> Int64 -- ^ 'id'
    -> ProjectsGet
projectsGet pProrProfileId_ pProrId_ =
    ProjectsGet
    { _prorQuotaUser = Nothing
    , _prorPrettyPrint = True
    , _prorUserIp = Nothing
    , _prorProfileId = pProrProfileId_
    , _prorKey = Nothing
    , _prorId = pProrId_
    , _prorOauthToken = Nothing
    , _prorFields = Nothing
    , _prorAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
prorQuotaUser :: Lens' ProjectsGet' (Maybe Text)
prorQuotaUser
  = lens _prorQuotaUser
      (\ s a -> s{_prorQuotaUser = a})

-- | Returns response with indentations and line breaks.
prorPrettyPrint :: Lens' ProjectsGet' Bool
prorPrettyPrint
  = lens _prorPrettyPrint
      (\ s a -> s{_prorPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
prorUserIp :: Lens' ProjectsGet' (Maybe Text)
prorUserIp
  = lens _prorUserIp (\ s a -> s{_prorUserIp = a})

-- | User profile ID associated with this request.
prorProfileId :: Lens' ProjectsGet' Int64
prorProfileId
  = lens _prorProfileId
      (\ s a -> s{_prorProfileId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
prorKey :: Lens' ProjectsGet' (Maybe Text)
prorKey = lens _prorKey (\ s a -> s{_prorKey = a})

-- | Project ID.
prorId :: Lens' ProjectsGet' Int64
prorId = lens _prorId (\ s a -> s{_prorId = a})

-- | OAuth 2.0 token for the current user.
prorOauthToken :: Lens' ProjectsGet' (Maybe Text)
prorOauthToken
  = lens _prorOauthToken
      (\ s a -> s{_prorOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
prorFields :: Lens' ProjectsGet' (Maybe Text)
prorFields
  = lens _prorFields (\ s a -> s{_prorFields = a})

-- | Data format for the response.
prorAlt :: Lens' ProjectsGet' Text
prorAlt = lens _prorAlt (\ s a -> s{_prorAlt = a})

instance GoogleRequest ProjectsGet' where
        type Rs ProjectsGet' = Project
        request = requestWithRoute defReq dFAReportingURL
        requestWithRoute r u ProjectsGet{..}
          = go _prorQuotaUser _prorPrettyPrint _prorUserIp
              _prorProfileId
              _prorKey
              _prorId
              _prorOauthToken
              _prorFields
              _prorAlt
          where go
                  = clientWithRoute (Proxy :: Proxy ProjectsGetAPI) r u
