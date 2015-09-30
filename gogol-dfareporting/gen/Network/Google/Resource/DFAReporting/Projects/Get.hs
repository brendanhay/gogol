{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
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
module Network.Google.Resource.DFAReporting.Projects.Get
    (
    -- * REST Resource
      ProjectsGetResource

    -- * Creating a Request
    , projectsGet'
    , ProjectsGet'

    -- * Request Lenses
    , proQuotaUser
    , proPrettyPrint
    , proUserIp
    , proProfileId
    , proKey
    , proId
    , proOauthToken
    , proFields
    , proAlt
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @DfareportingProjectsGet@ which the
-- 'ProjectsGet'' request conforms to.
type ProjectsGetResource =
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
    { _proQuotaUser   :: !(Maybe Text)
    , _proPrettyPrint :: !Bool
    , _proUserIp      :: !(Maybe Text)
    , _proProfileId   :: !Int64
    , _proKey         :: !(Maybe Text)
    , _proId          :: !Int64
    , _proOauthToken  :: !(Maybe Text)
    , _proFields      :: !(Maybe Text)
    , _proAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProjectsGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'proQuotaUser'
--
-- * 'proPrettyPrint'
--
-- * 'proUserIp'
--
-- * 'proProfileId'
--
-- * 'proKey'
--
-- * 'proId'
--
-- * 'proOauthToken'
--
-- * 'proFields'
--
-- * 'proAlt'
projectsGet'
    :: Int64 -- ^ 'profileId'
    -> Int64 -- ^ 'id'
    -> ProjectsGet'
projectsGet' pProProfileId_ pProId_ =
    ProjectsGet'
    { _proQuotaUser = Nothing
    , _proPrettyPrint = True
    , _proUserIp = Nothing
    , _proProfileId = pProProfileId_
    , _proKey = Nothing
    , _proId = pProId_
    , _proOauthToken = Nothing
    , _proFields = Nothing
    , _proAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
proQuotaUser :: Lens' ProjectsGet' (Maybe Text)
proQuotaUser
  = lens _proQuotaUser (\ s a -> s{_proQuotaUser = a})

-- | Returns response with indentations and line breaks.
proPrettyPrint :: Lens' ProjectsGet' Bool
proPrettyPrint
  = lens _proPrettyPrint
      (\ s a -> s{_proPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
proUserIp :: Lens' ProjectsGet' (Maybe Text)
proUserIp
  = lens _proUserIp (\ s a -> s{_proUserIp = a})

-- | User profile ID associated with this request.
proProfileId :: Lens' ProjectsGet' Int64
proProfileId
  = lens _proProfileId (\ s a -> s{_proProfileId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
proKey :: Lens' ProjectsGet' (Maybe Text)
proKey = lens _proKey (\ s a -> s{_proKey = a})

-- | Project ID.
proId :: Lens' ProjectsGet' Int64
proId = lens _proId (\ s a -> s{_proId = a})

-- | OAuth 2.0 token for the current user.
proOauthToken :: Lens' ProjectsGet' (Maybe Text)
proOauthToken
  = lens _proOauthToken
      (\ s a -> s{_proOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
proFields :: Lens' ProjectsGet' (Maybe Text)
proFields
  = lens _proFields (\ s a -> s{_proFields = a})

-- | Data format for the response.
proAlt :: Lens' ProjectsGet' Alt
proAlt = lens _proAlt (\ s a -> s{_proAlt = a})

instance GoogleRequest ProjectsGet' where
        type Rs ProjectsGet' = Project
        request = requestWithRoute defReq dFAReportingURL
        requestWithRoute r u ProjectsGet'{..}
          = go _proQuotaUser (Just _proPrettyPrint) _proUserIp
              _proProfileId
              _proKey
              _proId
              _proOauthToken
              _proFields
              (Just _proAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy ProjectsGetResource)
                      r
                      u
