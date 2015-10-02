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
-- Module      : Network.Google.Resource.MapsEngine.Projects.Icons.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Return all icons in the current project
--
-- /See:/ <https://developers.google.com/maps-engine/ Google Maps Engine API Reference> for @MapsEngineProjectsIconsList@.
module Network.Google.Resource.MapsEngine.Projects.Icons.List
    (
    -- * REST Resource
      ProjectsIconsListResource

    -- * Creating a Request
    , projectsIconsList'
    , ProjectsIconsList'

    -- * Request Lenses
    , pilQuotaUser
    , pilPrettyPrint
    , pilUserIP
    , pilKey
    , pilPageToken
    , pilProjectId
    , pilOAuthToken
    , pilMaxResults
    , pilFields
    ) where

import           Network.Google.MapsEngine.Types
import           Network.Google.Prelude

-- | A resource alias for @MapsEngineProjectsIconsList@ which the
-- 'ProjectsIconsList'' request conforms to.
type ProjectsIconsListResource =
     "projects" :>
       Capture "projectId" Text :>
         "icons" :>
           QueryParam "maxResults" Word32 :>
             QueryParam "pageToken" Text :>
               QueryParam "quotaUser" Text :>
                 QueryParam "prettyPrint" Bool :>
                   QueryParam "userIp" Text :>
                     QueryParam "fields" Text :>
                       QueryParam "key" Key :>
                         QueryParam "oauth_token" OAuthToken :>
                           QueryParam "alt" AltJSON :>
                             Get '[JSON] IconsListResponse

-- | Return all icons in the current project
--
-- /See:/ 'projectsIconsList'' smart constructor.
data ProjectsIconsList' = ProjectsIconsList'
    { _pilQuotaUser   :: !(Maybe Text)
    , _pilPrettyPrint :: !Bool
    , _pilUserIP      :: !(Maybe Text)
    , _pilKey         :: !(Maybe Key)
    , _pilPageToken   :: !(Maybe Text)
    , _pilProjectId   :: !Text
    , _pilOAuthToken  :: !(Maybe OAuthToken)
    , _pilMaxResults  :: !(Maybe Word32)
    , _pilFields      :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProjectsIconsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pilQuotaUser'
--
-- * 'pilPrettyPrint'
--
-- * 'pilUserIP'
--
-- * 'pilKey'
--
-- * 'pilPageToken'
--
-- * 'pilProjectId'
--
-- * 'pilOAuthToken'
--
-- * 'pilMaxResults'
--
-- * 'pilFields'
projectsIconsList'
    :: Text -- ^ 'projectId'
    -> ProjectsIconsList'
projectsIconsList' pPilProjectId_ =
    ProjectsIconsList'
    { _pilQuotaUser = Nothing
    , _pilPrettyPrint = True
    , _pilUserIP = Nothing
    , _pilKey = Nothing
    , _pilPageToken = Nothing
    , _pilProjectId = pPilProjectId_
    , _pilOAuthToken = Nothing
    , _pilMaxResults = Nothing
    , _pilFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
pilQuotaUser :: Lens' ProjectsIconsList' (Maybe Text)
pilQuotaUser
  = lens _pilQuotaUser (\ s a -> s{_pilQuotaUser = a})

-- | Returns response with indentations and line breaks.
pilPrettyPrint :: Lens' ProjectsIconsList' Bool
pilPrettyPrint
  = lens _pilPrettyPrint
      (\ s a -> s{_pilPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
pilUserIP :: Lens' ProjectsIconsList' (Maybe Text)
pilUserIP
  = lens _pilUserIP (\ s a -> s{_pilUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
pilKey :: Lens' ProjectsIconsList' (Maybe Key)
pilKey = lens _pilKey (\ s a -> s{_pilKey = a})

-- | The continuation token, used to page through large result sets. To get
-- the next page of results, set this parameter to the value of
-- nextPageToken from the previous response.
pilPageToken :: Lens' ProjectsIconsList' (Maybe Text)
pilPageToken
  = lens _pilPageToken (\ s a -> s{_pilPageToken = a})

-- | The ID of the project.
pilProjectId :: Lens' ProjectsIconsList' Text
pilProjectId
  = lens _pilProjectId (\ s a -> s{_pilProjectId = a})

-- | OAuth 2.0 token for the current user.
pilOAuthToken :: Lens' ProjectsIconsList' (Maybe OAuthToken)
pilOAuthToken
  = lens _pilOAuthToken
      (\ s a -> s{_pilOAuthToken = a})

-- | The maximum number of items to include in a single response page. The
-- maximum supported value is 50.
pilMaxResults :: Lens' ProjectsIconsList' (Maybe Word32)
pilMaxResults
  = lens _pilMaxResults
      (\ s a -> s{_pilMaxResults = a})

-- | Selector specifying which fields to include in a partial response.
pilFields :: Lens' ProjectsIconsList' (Maybe Text)
pilFields
  = lens _pilFields (\ s a -> s{_pilFields = a})

instance GoogleAuth ProjectsIconsList' where
        authKey = pilKey . _Just
        authToken = pilOAuthToken . _Just

instance GoogleRequest ProjectsIconsList' where
        type Rs ProjectsIconsList' = IconsListResponse
        request = requestWithRoute defReq mapsEngineURL
        requestWithRoute r u ProjectsIconsList'{..}
          = go _pilMaxResults _pilPageToken _pilProjectId
              _pilQuotaUser
              (Just _pilPrettyPrint)
              _pilUserIP
              _pilFields
              _pilKey
              _pilOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy ProjectsIconsListResource)
                      r
                      u
