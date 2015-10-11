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
    , proUserIP
    , proProFileId
    , proKey
    , proId
    , proOAuthToken
    , proFields
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @DfareportingProjectsGet@ method which the
-- 'ProjectsGet'' request conforms to.
type ProjectsGetResource =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "projects" :>
           Capture "id" Int64 :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "key" AuthKey :>
                       Header "Authorization" OAuthToken :>
                         QueryParam "alt" AltJSON :> Get '[JSON] Project

-- | Gets one project by ID.
--
-- /See:/ 'projectsGet'' smart constructor.
data ProjectsGet' = ProjectsGet'
    { _proQuotaUser   :: !(Maybe Text)
    , _proPrettyPrint :: !Bool
    , _proUserIP      :: !(Maybe Text)
    , _proProFileId   :: !Int64
    , _proKey         :: !(Maybe AuthKey)
    , _proId          :: !Int64
    , _proOAuthToken  :: !(Maybe OAuthToken)
    , _proFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProjectsGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'proQuotaUser'
--
-- * 'proPrettyPrint'
--
-- * 'proUserIP'
--
-- * 'proProFileId'
--
-- * 'proKey'
--
-- * 'proId'
--
-- * 'proOAuthToken'
--
-- * 'proFields'
projectsGet'
    :: Int64 -- ^ 'profileId'
    -> Int64 -- ^ 'id'
    -> ProjectsGet'
projectsGet' pProProFileId_ pProId_ =
    ProjectsGet'
    { _proQuotaUser = Nothing
    , _proPrettyPrint = True
    , _proUserIP = Nothing
    , _proProFileId = pProProFileId_
    , _proKey = Nothing
    , _proId = pProId_
    , _proOAuthToken = Nothing
    , _proFields = Nothing
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
proUserIP :: Lens' ProjectsGet' (Maybe Text)
proUserIP
  = lens _proUserIP (\ s a -> s{_proUserIP = a})

-- | User profile ID associated with this request.
proProFileId :: Lens' ProjectsGet' Int64
proProFileId
  = lens _proProFileId (\ s a -> s{_proProFileId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
proKey :: Lens' ProjectsGet' (Maybe AuthKey)
proKey = lens _proKey (\ s a -> s{_proKey = a})

-- | Project ID.
proId :: Lens' ProjectsGet' Int64
proId = lens _proId (\ s a -> s{_proId = a})

-- | OAuth 2.0 token for the current user.
proOAuthToken :: Lens' ProjectsGet' (Maybe OAuthToken)
proOAuthToken
  = lens _proOAuthToken
      (\ s a -> s{_proOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
proFields :: Lens' ProjectsGet' (Maybe Text)
proFields
  = lens _proFields (\ s a -> s{_proFields = a})

instance GoogleAuth ProjectsGet' where
        _AuthKey = proKey . _Just
        _AuthToken = proOAuthToken . _Just

instance GoogleRequest ProjectsGet' where
        type Rs ProjectsGet' = Project
        request = requestWith dFAReportingRequest
        requestWith rq ProjectsGet'{..}
          = go _proProFileId _proId _proQuotaUser
              (Just _proPrettyPrint)
              _proUserIP
              _proFields
              _proKey
              _proOAuthToken
              (Just AltJSON)
          where go
                  = clientBuild (Proxy :: Proxy ProjectsGetResource) rq
