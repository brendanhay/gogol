{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE FlexibleInstances  #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.MapsEngine.Projects.Icons.Create
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Create an icon.
--
-- /See:/ <https://developers.google.com/maps-engine/ Google Maps Engine API Reference> for @MapsEngineProjectsIconsCreate@.
module Network.Google.Resource.MapsEngine.Projects.Icons.Create
    (
    -- * REST Resource
      ProjectsIconsCreateResource

    -- * Creating a Request
    , projectsIconsCreate'
    , ProjectsIconsCreate'

    -- * Request Lenses
    , picQuotaUser
    , picPrettyPrint
    , picUserIP
    , picPayload
    , picMedia
    , picKey
    , picProjectId
    , picOAuthToken
    , picFields
    ) where

import           Network.Google.MapsEngine.Types
import           Network.Google.Prelude

-- | A resource alias for @MapsEngineProjectsIconsCreate@ which the
-- 'ProjectsIconsCreate'' request conforms to.
type ProjectsIconsCreateResource =
     "projects" :>
       Capture "projectId" Text :>
         "icons" :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "fields" Text :>
                   QueryParam "key" Key :>
                     QueryParam "oauth_token" OAuthToken :>
                       QueryParam "alt" AltJSON :>
                         MultipartRelated '[JSON] Icon Body :>
                           Post '[JSON] Icon

-- | Create an icon.
--
-- /See:/ 'projectsIconsCreate'' smart constructor.
data ProjectsIconsCreate' = ProjectsIconsCreate'
    { _picQuotaUser   :: !(Maybe Text)
    , _picPrettyPrint :: !Bool
    , _picUserIP      :: !(Maybe Text)
    , _picPayload     :: !Icon
    , _picMedia       :: !Body
    , _picKey         :: !(Maybe Key)
    , _picProjectId   :: !Text
    , _picOAuthToken  :: !(Maybe OAuthToken)
    , _picFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProjectsIconsCreate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'picQuotaUser'
--
-- * 'picPrettyPrint'
--
-- * 'picUserIP'
--
-- * 'picPayload'
--
-- * 'picMedia'
--
-- * 'picKey'
--
-- * 'picProjectId'
--
-- * 'picOAuthToken'
--
-- * 'picFields'
projectsIconsCreate'
    :: Icon -- ^ 'payload'
    -> Body -- ^ 'media'
    -> Text -- ^ 'projectId'
    -> ProjectsIconsCreate'
projectsIconsCreate' pPicPayload_ pPicMedia_ pPicProjectId_ =
    ProjectsIconsCreate'
    { _picQuotaUser = Nothing
    , _picPrettyPrint = True
    , _picUserIP = Nothing
    , _picPayload = pPicPayload_
    , _picMedia = pPicMedia_
    , _picKey = Nothing
    , _picProjectId = pPicProjectId_
    , _picOAuthToken = Nothing
    , _picFields = Nothing
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
picUserIP :: Lens' ProjectsIconsCreate' (Maybe Text)
picUserIP
  = lens _picUserIP (\ s a -> s{_picUserIP = a})

-- | Multipart request metadata.
picPayload :: Lens' ProjectsIconsCreate' Icon
picPayload
  = lens _picPayload (\ s a -> s{_picPayload = a})

picMedia :: Lens' ProjectsIconsCreate' Body
picMedia = lens _picMedia (\ s a -> s{_picMedia = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
picKey :: Lens' ProjectsIconsCreate' (Maybe Key)
picKey = lens _picKey (\ s a -> s{_picKey = a})

-- | The ID of the project.
picProjectId :: Lens' ProjectsIconsCreate' Text
picProjectId
  = lens _picProjectId (\ s a -> s{_picProjectId = a})

-- | OAuth 2.0 token for the current user.
picOAuthToken :: Lens' ProjectsIconsCreate' (Maybe OAuthToken)
picOAuthToken
  = lens _picOAuthToken
      (\ s a -> s{_picOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
picFields :: Lens' ProjectsIconsCreate' (Maybe Text)
picFields
  = lens _picFields (\ s a -> s{_picFields = a})

instance GoogleAuth ProjectsIconsCreate' where
        authKey = picKey . _Just
        authToken = picOAuthToken . _Just

instance GoogleRequest ProjectsIconsCreate' where
        type Rs ProjectsIconsCreate' = Icon
        request = requestWithRoute defReq mapsEngineURL
        requestWithRoute r u ProjectsIconsCreate'{..}
          = go _picProjectId _picQuotaUser
              (Just _picPrettyPrint)
              _picUserIP
              _picFields
              _picKey
              _picOAuthToken
              (Just AltJSON)
              _picPayload
              _picMedia
          where go
                  = clientWithRoute
                      (Proxy :: Proxy ProjectsIconsCreateResource)
                      r
                      u
