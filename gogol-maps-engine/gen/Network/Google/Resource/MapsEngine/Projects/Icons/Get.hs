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
-- Module      : Network.Google.Resource.MapsEngine.Projects.Icons.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Return an icon or its associated metadata
--
-- /See:/ <https://developers.google.com/maps-engine/ Google Maps Engine API Reference> for @MapsEngineProjectsIconsGet@.
module Network.Google.Resource.MapsEngine.Projects.Icons.Get
    (
    -- * REST Resource
      ProjectsIconsGetResource

    -- * Creating a Request
    , projectsIconsGet'
    , ProjectsIconsGet'

    -- * Request Lenses
    , pigQuotaUser
    , pigPrettyPrint
    , pigUserIP
    , pigKey
    , pigId
    , pigProjectId
    , pigOAuthToken
    , pigFields
    ) where

import           Network.Google.MapsEngine.Types
import           Network.Google.Prelude

-- | A resource alias for @MapsEngineProjectsIconsGet@ which the
-- 'ProjectsIconsGet'' request conforms to.
type ProjectsIconsGetResource =
     "projects" :>
       Capture "projectId" Text :>
         "icons" :>
           Capture "id" Text :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "key" AuthKey :>
                       QueryParam "oauth_token" OAuthToken :>
                         QueryParam "alt" AltJSON :> Get '[JSON] Icon
       :<|>
       "projects" :>
         Capture "projectId" Text :>
           "icons" :>
             Capture "id" Text :>
               QueryParam "quotaUser" Text :>
                 QueryParam "prettyPrint" Bool :>
                   QueryParam "userIp" Text :>
                     QueryParam "fields" Text :>
                       QueryParam "key" AuthKey :>
                         QueryParam "oauth_token" OAuthToken :>
                           QueryParam "alt" AltMedia :> Get '[OctetStream] Body

-- | Return an icon or its associated metadata
--
-- /See:/ 'projectsIconsGet'' smart constructor.
data ProjectsIconsGet' = ProjectsIconsGet'
    { _pigQuotaUser   :: !(Maybe Text)
    , _pigPrettyPrint :: !Bool
    , _pigUserIP      :: !(Maybe Text)
    , _pigKey         :: !(Maybe AuthKey)
    , _pigId          :: !Text
    , _pigProjectId   :: !Text
    , _pigOAuthToken  :: !(Maybe OAuthToken)
    , _pigFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProjectsIconsGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pigQuotaUser'
--
-- * 'pigPrettyPrint'
--
-- * 'pigUserIP'
--
-- * 'pigKey'
--
-- * 'pigId'
--
-- * 'pigProjectId'
--
-- * 'pigOAuthToken'
--
-- * 'pigFields'
projectsIconsGet'
    :: Text -- ^ 'id'
    -> Text -- ^ 'projectId'
    -> ProjectsIconsGet'
projectsIconsGet' pPigId_ pPigProjectId_ =
    ProjectsIconsGet'
    { _pigQuotaUser = Nothing
    , _pigPrettyPrint = True
    , _pigUserIP = Nothing
    , _pigKey = Nothing
    , _pigId = pPigId_
    , _pigProjectId = pPigProjectId_
    , _pigOAuthToken = Nothing
    , _pigFields = Nothing
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
pigUserIP :: Lens' ProjectsIconsGet' (Maybe Text)
pigUserIP
  = lens _pigUserIP (\ s a -> s{_pigUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
pigKey :: Lens' ProjectsIconsGet' (Maybe AuthKey)
pigKey = lens _pigKey (\ s a -> s{_pigKey = a})

-- | The ID of the icon.
pigId :: Lens' ProjectsIconsGet' Text
pigId = lens _pigId (\ s a -> s{_pigId = a})

-- | The ID of the project.
pigProjectId :: Lens' ProjectsIconsGet' Text
pigProjectId
  = lens _pigProjectId (\ s a -> s{_pigProjectId = a})

-- | OAuth 2.0 token for the current user.
pigOAuthToken :: Lens' ProjectsIconsGet' (Maybe OAuthToken)
pigOAuthToken
  = lens _pigOAuthToken
      (\ s a -> s{_pigOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
pigFields :: Lens' ProjectsIconsGet' (Maybe Text)
pigFields
  = lens _pigFields (\ s a -> s{_pigFields = a})

instance GoogleAuth ProjectsIconsGet' where
        authKey = pigKey . _Just
        authToken = pigOAuthToken . _Just

instance GoogleRequest ProjectsIconsGet' where
        type Rs ProjectsIconsGet' = Icon
        request = requestWith mapsEngineRequest
        requestWith rq ProjectsIconsGet'{..}
          = go _pigProjectId _pigId _pigQuotaUser
              (Just _pigPrettyPrint)
              _pigUserIP
              _pigFields
              _pigKey
              _pigOAuthToken
              (Just AltJSON)
          where go :<|> _
                  = clientBuild
                      (Proxy :: Proxy ProjectsIconsGetResource)
                      rq

instance GoogleRequest
         (MediaDownload ProjectsIconsGet') where
        type Rs (MediaDownload ProjectsIconsGet') = Body
        request = requestWith mapsEngineRequest
        requestWith rq (MediaDownload ProjectsIconsGet'{..})
          = go _pigProjectId _pigId _pigQuotaUser
              (Just _pigPrettyPrint)
              _pigUserIP
              _pigFields
              _pigKey
              _pigOAuthToken
              (Just AltMedia)
          where _ :<|> go
                  = clientBuild
                      (Proxy :: Proxy ProjectsIconsGetResource)
                      rq
