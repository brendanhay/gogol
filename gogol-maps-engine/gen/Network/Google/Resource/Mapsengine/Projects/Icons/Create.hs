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
-- Module      : Network.Google.Resource.Mapsengine.Projects.Icons.Create
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Create an icon.
--
-- /See:/ <https://developers.google.com/maps-engine/ Google Maps Engine API Reference> for @MapsengineProjectsIconsCreate@.
module Network.Google.Resource.Mapsengine.Projects.Icons.Create
    (
    -- * REST Resource
      ProjectsIconsCreateResource

    -- * Creating a Request
    , projectsIconsCreate'
    , ProjectsIconsCreate'

    -- * Request Lenses
    , picQuotaUser
    , picPrettyPrint
    , picUserIp
    , picKey
    , picProjectId
    , picOauthToken
    , picFields
    , picAlt
    ) where

import           Network.Google.MapEngine.Types
import           Network.Google.Prelude

-- | A resource alias for @MapsengineProjectsIconsCreate@ which the
-- 'ProjectsIconsCreate'' request conforms to.
type ProjectsIconsCreateResource =
     "projects" :>
       Capture "projectId" Text :>
         "icons" :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "key" Text :>
                   QueryParam "oauth_token" Text :>
                     QueryParam "fields" Text :>
                       QueryParam "alt" Alt :> Post '[JSON] Icon

-- | Create an icon.
--
-- /See:/ 'projectsIconsCreate'' smart constructor.
data ProjectsIconsCreate' = ProjectsIconsCreate'
    { _picQuotaUser   :: !(Maybe Text)
    , _picPrettyPrint :: !Bool
    , _picUserIp      :: !(Maybe Text)
    , _picKey         :: !(Maybe Text)
    , _picProjectId   :: !Text
    , _picOauthToken  :: !(Maybe Text)
    , _picFields      :: !(Maybe Text)
    , _picAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProjectsIconsCreate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'picQuotaUser'
--
-- * 'picPrettyPrint'
--
-- * 'picUserIp'
--
-- * 'picKey'
--
-- * 'picProjectId'
--
-- * 'picOauthToken'
--
-- * 'picFields'
--
-- * 'picAlt'
projectsIconsCreate'
    :: Text -- ^ 'projectId'
    -> ProjectsIconsCreate'
projectsIconsCreate' pPicProjectId_ =
    ProjectsIconsCreate'
    { _picQuotaUser = Nothing
    , _picPrettyPrint = True
    , _picUserIp = Nothing
    , _picKey = Nothing
    , _picProjectId = pPicProjectId_
    , _picOauthToken = Nothing
    , _picFields = Nothing
    , _picAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
picQuotaUser :: Lens' ProjectsIconsCreate' (Maybe Text)
picQuotaUser
  = lens _picQuotaUser (\ s a -> s{_picQuotaUser = a})

-- | Returns response with indentations and line breaks.
picPrettyPrint :: Lens' ProjectsIconsCreate' Bool
picPrettyPrint
  = lens _picPrettyPrint
      (\ s a -> s{_picPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
picUserIp :: Lens' ProjectsIconsCreate' (Maybe Text)
picUserIp
  = lens _picUserIp (\ s a -> s{_picUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
picKey :: Lens' ProjectsIconsCreate' (Maybe Text)
picKey = lens _picKey (\ s a -> s{_picKey = a})

-- | The ID of the project.
picProjectId :: Lens' ProjectsIconsCreate' Text
picProjectId
  = lens _picProjectId (\ s a -> s{_picProjectId = a})

-- | OAuth 2.0 token for the current user.
picOauthToken :: Lens' ProjectsIconsCreate' (Maybe Text)
picOauthToken
  = lens _picOauthToken
      (\ s a -> s{_picOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
picFields :: Lens' ProjectsIconsCreate' (Maybe Text)
picFields
  = lens _picFields (\ s a -> s{_picFields = a})

-- | Data format for the response.
picAlt :: Lens' ProjectsIconsCreate' Alt
picAlt = lens _picAlt (\ s a -> s{_picAlt = a})

instance GoogleRequest ProjectsIconsCreate' where
        type Rs ProjectsIconsCreate' = Icon
        request = requestWithRoute defReq mapEngineURL
        requestWithRoute r u ProjectsIconsCreate'{..}
          = go _picQuotaUser (Just _picPrettyPrint) _picUserIp
              _picKey
              _picProjectId
              _picOauthToken
              _picFields
              (Just _picAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy ProjectsIconsCreateResource)
                      r
                      u
