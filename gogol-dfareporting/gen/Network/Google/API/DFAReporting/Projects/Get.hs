{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.DFAReporting.Projects.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Gets one project by ID.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @dfareporting.projects.get@.
module Network.Google.API.DFAReporting.Projects.Get
    (
    -- * REST Resource
      ProjectsGetAPI

    -- * Creating a Request
    , projectsGet'
    , ProjectsGet'

    -- * Request Lenses
    , pQuotaUser
    , pPrettyPrint
    , pUserIp
    , pProfileId
    , pKey
    , pId
    , pOauthToken
    , pFields
    , pAlt
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for dfareporting.projects.get which the
-- 'ProjectsGet'' request conforms to.
type ProjectsGetAPI =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "projects" :>
           Capture "id" Int64 :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "key" Text :>
                     QueryParam "oauth_token" Text :>
                       QueryParam "fields" Text :>
                         QueryParam "alt" Alt :> Get '[JSON] Project

-- | Gets one project by ID.
--
-- /See:/ 'projectsGet'' smart constructor.
data ProjectsGet' = ProjectsGet'
    { _pQuotaUser   :: !(Maybe Text)
    , _pPrettyPrint :: !Bool
    , _pUserIp      :: !(Maybe Text)
    , _pProfileId   :: !Int64
    , _pKey         :: !(Maybe Text)
    , _pId          :: !Int64
    , _pOauthToken  :: !(Maybe Text)
    , _pFields      :: !(Maybe Text)
    , _pAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProjectsGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pQuotaUser'
--
-- * 'pPrettyPrint'
--
-- * 'pUserIp'
--
-- * 'pProfileId'
--
-- * 'pKey'
--
-- * 'pId'
--
-- * 'pOauthToken'
--
-- * 'pFields'
--
-- * 'pAlt'
projectsGet'
    :: Int64 -- ^ 'profileId'
    -> Int64 -- ^ 'id'
    -> ProjectsGet'
projectsGet' pPProfileId_ pPId_ =
    ProjectsGet'
    { _pQuotaUser = Nothing
    , _pPrettyPrint = True
    , _pUserIp = Nothing
    , _pProfileId = pPProfileId_
    , _pKey = Nothing
    , _pId = pPId_
    , _pOauthToken = Nothing
    , _pFields = Nothing
    , _pAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
pQuotaUser :: Lens' ProjectsGet' (Maybe Text)
pQuotaUser
  = lens _pQuotaUser (\ s a -> s{_pQuotaUser = a})

-- | Returns response with indentations and line breaks.
pPrettyPrint :: Lens' ProjectsGet' Bool
pPrettyPrint
  = lens _pPrettyPrint (\ s a -> s{_pPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
pUserIp :: Lens' ProjectsGet' (Maybe Text)
pUserIp = lens _pUserIp (\ s a -> s{_pUserIp = a})

-- | User profile ID associated with this request.
pProfileId :: Lens' ProjectsGet' Int64
pProfileId
  = lens _pProfileId (\ s a -> s{_pProfileId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
pKey :: Lens' ProjectsGet' (Maybe Text)
pKey = lens _pKey (\ s a -> s{_pKey = a})

-- | Project ID.
pId :: Lens' ProjectsGet' Int64
pId = lens _pId (\ s a -> s{_pId = a})

-- | OAuth 2.0 token for the current user.
pOauthToken :: Lens' ProjectsGet' (Maybe Text)
pOauthToken
  = lens _pOauthToken (\ s a -> s{_pOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
pFields :: Lens' ProjectsGet' (Maybe Text)
pFields = lens _pFields (\ s a -> s{_pFields = a})

-- | Data format for the response.
pAlt :: Lens' ProjectsGet' Alt
pAlt = lens _pAlt (\ s a -> s{_pAlt = a})

instance GoogleRequest ProjectsGet' where
        type Rs ProjectsGet' = Project
        request = requestWithRoute defReq dFAReportingURL
        requestWithRoute r u ProjectsGet'{..}
          = go _pQuotaUser (Just _pPrettyPrint) _pUserIp
              _pProfileId
              _pKey
              _pId
              _pOauthToken
              _pFields
              (Just _pAlt)
          where go
                  = clientWithRoute (Proxy :: Proxy ProjectsGetAPI) r u
