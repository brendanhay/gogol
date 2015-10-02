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
-- Module      : Network.Google.Resource.DNS.Projects.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Fetch the representation of an existing Project.
--
-- /See:/ <https://developers.google.com/cloud-dns Google Cloud DNS API Reference> for @DNSProjectsGet@.
module Network.Google.Resource.DNS.Projects.Get
    (
    -- * REST Resource
      ProjectsGetResource

    -- * Creating a Request
    , projectsGet'
    , ProjectsGet'

    -- * Request Lenses
    , pgQuotaUser
    , pgPrettyPrint
    , pgProject
    , pgUserIP
    , pgKey
    , pgOAuthToken
    , pgFields
    ) where

import           Network.Google.DNS.Types
import           Network.Google.Prelude

-- | A resource alias for @DNSProjectsGet@ which the
-- 'ProjectsGet'' request conforms to.
type ProjectsGetResource =
     Capture "project" Text :>
       QueryParam "quotaUser" Text :>
         QueryParam "prettyPrint" Bool :>
           QueryParam "userIp" Text :>
             QueryParam "key" Key :>
               QueryParam "oauth_token" OAuthToken :>
                 QueryParam "fields" Text :>
                   QueryParam "alt" AltJSON :> Get '[JSON] Project

-- | Fetch the representation of an existing Project.
--
-- /See:/ 'projectsGet'' smart constructor.
data ProjectsGet' = ProjectsGet'
    { _pgQuotaUser   :: !(Maybe Text)
    , _pgPrettyPrint :: !Bool
    , _pgProject     :: !Text
    , _pgUserIP      :: !(Maybe Text)
    , _pgKey         :: !(Maybe Key)
    , _pgOAuthToken  :: !(Maybe OAuthToken)
    , _pgFields      :: !(Maybe Text)
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
-- * 'pgUserIP'
--
-- * 'pgKey'
--
-- * 'pgOAuthToken'
--
-- * 'pgFields'
projectsGet'
    :: Text -- ^ 'project'
    -> ProjectsGet'
projectsGet' pPgProject_ =
    ProjectsGet'
    { _pgQuotaUser = Nothing
    , _pgPrettyPrint = True
    , _pgProject = pPgProject_
    , _pgUserIP = Nothing
    , _pgKey = Nothing
    , _pgOAuthToken = Nothing
    , _pgFields = Nothing
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

-- | Identifies the project addressed by this request.
pgProject :: Lens' ProjectsGet' Text
pgProject
  = lens _pgProject (\ s a -> s{_pgProject = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
pgUserIP :: Lens' ProjectsGet' (Maybe Text)
pgUserIP = lens _pgUserIP (\ s a -> s{_pgUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
pgKey :: Lens' ProjectsGet' (Maybe Key)
pgKey = lens _pgKey (\ s a -> s{_pgKey = a})

-- | OAuth 2.0 token for the current user.
pgOAuthToken :: Lens' ProjectsGet' (Maybe OAuthToken)
pgOAuthToken
  = lens _pgOAuthToken (\ s a -> s{_pgOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
pgFields :: Lens' ProjectsGet' (Maybe Text)
pgFields = lens _pgFields (\ s a -> s{_pgFields = a})

instance GoogleAuth ProjectsGet' where
        authKey = pgKey . _Just
        authToken = pgOAuthToken . _Just

instance GoogleRequest ProjectsGet' where
        type Rs ProjectsGet' = Project
        request = requestWithRoute defReq dNSURL
        requestWithRoute r u ProjectsGet'{..}
          = go _pgQuotaUser (Just _pgPrettyPrint) _pgProject
              _pgUserIP
              _pgKey
              _pgOAuthToken
              _pgFields
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy ProjectsGetResource)
                      r
                      u
