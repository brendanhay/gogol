{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Mapsengine.Projects.Icons.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Return an icon or its associated metadata
--
-- /See:/ <https://developers.google.com/maps-engine/ Google Maps Engine API Reference> for @MapsengineProjectsIconsGet@.
module Mapsengine.Projects.Icons.Get
    (
    -- * REST Resource
      ProjectsIconsGetAPI

    -- * Creating a Request
    , projectsIconsGet
    , ProjectsIconsGet

    -- * Request Lenses
    , pigQuotaUser
    , pigPrettyPrint
    , pigUserIp
    , pigKey
    , pigId
    , pigProjectId
    , pigOauthToken
    , pigFields
    , pigAlt
    ) where

import           Network.Google.MapEngine.Types
import           Network.Google.Prelude

-- | A resource alias for @MapsengineProjectsIconsGet@ which the
-- 'ProjectsIconsGet' request conforms to.
type ProjectsIconsGetAPI =
     "projects" :>
       Capture "projectId" Text :>
         "icons" :> Capture "id" Text :> Get '[JSON] Icon

-- | Return an icon or its associated metadata
--
-- /See:/ 'projectsIconsGet' smart constructor.
data ProjectsIconsGet = ProjectsIconsGet
    { _pigQuotaUser   :: !(Maybe Text)
    , _pigPrettyPrint :: !Bool
    , _pigUserIp      :: !(Maybe Text)
    , _pigKey         :: !(Maybe Text)
    , _pigId          :: !Text
    , _pigProjectId   :: !Text
    , _pigOauthToken  :: !(Maybe Text)
    , _pigFields      :: !(Maybe Text)
    , _pigAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProjectsIconsGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pigQuotaUser'
--
-- * 'pigPrettyPrint'
--
-- * 'pigUserIp'
--
-- * 'pigKey'
--
-- * 'pigId'
--
-- * 'pigProjectId'
--
-- * 'pigOauthToken'
--
-- * 'pigFields'
--
-- * 'pigAlt'
projectsIconsGet
    :: Text -- ^ 'id'
    -> Text -- ^ 'projectId'
    -> ProjectsIconsGet
projectsIconsGet pPigId_ pPigProjectId_ =
    ProjectsIconsGet
    { _pigQuotaUser = Nothing
    , _pigPrettyPrint = True
    , _pigUserIp = Nothing
    , _pigKey = Nothing
    , _pigId = pPigId_
    , _pigProjectId = pPigProjectId_
    , _pigOauthToken = Nothing
    , _pigFields = Nothing
    , _pigAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
pigQuotaUser :: Lens' ProjectsIconsGet' (Maybe Text)
pigQuotaUser
  = lens _pigQuotaUser (\ s a -> s{_pigQuotaUser = a})

-- | Returns response with indentations and line breaks.
pigPrettyPrint :: Lens' ProjectsIconsGet' Bool
pigPrettyPrint
  = lens _pigPrettyPrint
      (\ s a -> s{_pigPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
pigUserIp :: Lens' ProjectsIconsGet' (Maybe Text)
pigUserIp
  = lens _pigUserIp (\ s a -> s{_pigUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
pigKey :: Lens' ProjectsIconsGet' (Maybe Text)
pigKey = lens _pigKey (\ s a -> s{_pigKey = a})

-- | The ID of the icon.
pigId :: Lens' ProjectsIconsGet' Text
pigId = lens _pigId (\ s a -> s{_pigId = a})

-- | The ID of the project.
pigProjectId :: Lens' ProjectsIconsGet' Text
pigProjectId
  = lens _pigProjectId (\ s a -> s{_pigProjectId = a})

-- | OAuth 2.0 token for the current user.
pigOauthToken :: Lens' ProjectsIconsGet' (Maybe Text)
pigOauthToken
  = lens _pigOauthToken
      (\ s a -> s{_pigOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
pigFields :: Lens' ProjectsIconsGet' (Maybe Text)
pigFields
  = lens _pigFields (\ s a -> s{_pigFields = a})

-- | Data format for the response.
pigAlt :: Lens' ProjectsIconsGet' Text
pigAlt = lens _pigAlt (\ s a -> s{_pigAlt = a})

instance GoogleRequest ProjectsIconsGet' where
        type Rs ProjectsIconsGet' = Icon
        request = requestWithRoute defReq mapEngineURL
        requestWithRoute r u ProjectsIconsGet{..}
          = go _pigQuotaUser _pigPrettyPrint _pigUserIp _pigKey
              _pigId
              _pigProjectId
              _pigOauthToken
              _pigFields
              _pigAlt
          where go
                  = clientWithRoute
                      (Proxy :: Proxy ProjectsIconsGetAPI)
                      r
                      u
