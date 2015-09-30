{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Mapsengine.Projects.Icons.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Return all icons in the current project
--
-- /See:/ <https://developers.google.com/maps-engine/ Google Maps Engine API Reference> for @MapsengineProjectsIconsList@.
module Mapsengine.Projects.Icons.List
    (
    -- * REST Resource
      ProjectsIconsListAPI

    -- * Creating a Request
    , projectsIconsList
    , ProjectsIconsList

    -- * Request Lenses
    , pilQuotaUser
    , pilPrettyPrint
    , pilUserIp
    , pilKey
    , pilPageToken
    , pilProjectId
    , pilOauthToken
    , pilMaxResults
    , pilFields
    , pilAlt
    ) where

import           Network.Google.MapEngine.Types
import           Network.Google.Prelude

-- | A resource alias for @MapsengineProjectsIconsList@ which the
-- 'ProjectsIconsList' request conforms to.
type ProjectsIconsListAPI =
     "projects" :>
       Capture "projectId" Text :>
         "icons" :>
           QueryParam "pageToken" Text :>
             QueryParam "maxResults" Word32 :>
               Get '[JSON] IconsListResponse

-- | Return all icons in the current project
--
-- /See:/ 'projectsIconsList' smart constructor.
data ProjectsIconsList = ProjectsIconsList
    { _pilQuotaUser   :: !(Maybe Text)
    , _pilPrettyPrint :: !Bool
    , _pilUserIp      :: !(Maybe Text)
    , _pilKey         :: !(Maybe Text)
    , _pilPageToken   :: !(Maybe Text)
    , _pilProjectId   :: !Text
    , _pilOauthToken  :: !(Maybe Text)
    , _pilMaxResults  :: !(Maybe Word32)
    , _pilFields      :: !(Maybe Text)
    , _pilAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProjectsIconsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pilQuotaUser'
--
-- * 'pilPrettyPrint'
--
-- * 'pilUserIp'
--
-- * 'pilKey'
--
-- * 'pilPageToken'
--
-- * 'pilProjectId'
--
-- * 'pilOauthToken'
--
-- * 'pilMaxResults'
--
-- * 'pilFields'
--
-- * 'pilAlt'
projectsIconsList
    :: Text -- ^ 'projectId'
    -> ProjectsIconsList
projectsIconsList pPilProjectId_ =
    ProjectsIconsList
    { _pilQuotaUser = Nothing
    , _pilPrettyPrint = True
    , _pilUserIp = Nothing
    , _pilKey = Nothing
    , _pilPageToken = Nothing
    , _pilProjectId = pPilProjectId_
    , _pilOauthToken = Nothing
    , _pilMaxResults = Nothing
    , _pilFields = Nothing
    , _pilAlt = "json"
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
pilUserIp :: Lens' ProjectsIconsList' (Maybe Text)
pilUserIp
  = lens _pilUserIp (\ s a -> s{_pilUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
pilKey :: Lens' ProjectsIconsList' (Maybe Text)
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
pilOauthToken :: Lens' ProjectsIconsList' (Maybe Text)
pilOauthToken
  = lens _pilOauthToken
      (\ s a -> s{_pilOauthToken = a})

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

-- | Data format for the response.
pilAlt :: Lens' ProjectsIconsList' Text
pilAlt = lens _pilAlt (\ s a -> s{_pilAlt = a})

instance GoogleRequest ProjectsIconsList' where
        type Rs ProjectsIconsList' = IconsListResponse
        request = requestWithRoute defReq mapEngineURL
        requestWithRoute r u ProjectsIconsList{..}
          = go _pilQuotaUser _pilPrettyPrint _pilUserIp _pilKey
              _pilPageToken
              _pilProjectId
              _pilOauthToken
              _pilMaxResults
              _pilFields
              _pilAlt
          where go
                  = clientWithRoute
                      (Proxy :: Proxy ProjectsIconsListAPI)
                      r
                      u
