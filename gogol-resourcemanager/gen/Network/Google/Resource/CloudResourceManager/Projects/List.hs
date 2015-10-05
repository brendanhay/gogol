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
-- Module      : Network.Google.Resource.CloudResourceManager.Projects.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Lists projects that are visible to the user and satisfy the specified
-- filter. This method returns projects in an unspecified order. New
-- projects do not necessarily appear at the end of the list.
--
-- /See:/ <https://cloud.google.com/resource-manager Google Cloud Resource Manager API Reference> for @CloudResourceManagerProjectsList@.
module Network.Google.Resource.CloudResourceManager.Projects.List
    (
    -- * REST Resource
      ProjectsListResource

    -- * Creating a Request
    , projectsList'
    , ProjectsList'

    -- * Request Lenses
    , plXgafv
    , plQuotaUser
    , plPrettyPrint
    , plUploadProtocol
    , plPp
    , plAccessToken
    , plUploadType
    , plBearerToken
    , plKey
    , plFilter
    , plPageToken
    , plOAuthToken
    , plPageSize
    , plFields
    , plCallback
    ) where

import           Network.Google.Prelude
import           Network.Google.ResourceManager.Types

-- | A resource alias for @CloudResourceManagerProjectsList@ which the
-- 'ProjectsList'' request conforms to.
type ProjectsListResource =
     "v1beta1" :>
       "projects" :>
         QueryParam "$.xgafv" Text :>
           QueryParam "upload_protocol" Text :>
             QueryParam "pp" Bool :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "bearer_token" Text :>
                     QueryParam "filter" Text :>
                       QueryParam "pageToken" Text :>
                         QueryParam "pageSize" Int32 :>
                           QueryParam "callback" Text :>
                             QueryParam "quotaUser" Text :>
                               QueryParam "prettyPrint" Bool :>
                                 QueryParam "fields" Text :>
                                   QueryParam "key" Key :>
                                     QueryParam "oauth_token" OAuthToken :>
                                       QueryParam "alt" AltJSON :>
                                         Get '[JSON] ListProjectsResponse

-- | Lists projects that are visible to the user and satisfy the specified
-- filter. This method returns projects in an unspecified order. New
-- projects do not necessarily appear at the end of the list.
--
-- /See:/ 'projectsList'' smart constructor.
data ProjectsList' = ProjectsList'
    { _plXgafv          :: !(Maybe Text)
    , _plQuotaUser      :: !(Maybe Text)
    , _plPrettyPrint    :: !Bool
    , _plUploadProtocol :: !(Maybe Text)
    , _plPp             :: !Bool
    , _plAccessToken    :: !(Maybe Text)
    , _plUploadType     :: !(Maybe Text)
    , _plBearerToken    :: !(Maybe Text)
    , _plKey            :: !(Maybe Key)
    , _plFilter         :: !(Maybe Text)
    , _plPageToken      :: !(Maybe Text)
    , _plOAuthToken     :: !(Maybe OAuthToken)
    , _plPageSize       :: !(Maybe Int32)
    , _plFields         :: !(Maybe Text)
    , _plCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProjectsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plXgafv'
--
-- * 'plQuotaUser'
--
-- * 'plPrettyPrint'
--
-- * 'plUploadProtocol'
--
-- * 'plPp'
--
-- * 'plAccessToken'
--
-- * 'plUploadType'
--
-- * 'plBearerToken'
--
-- * 'plKey'
--
-- * 'plFilter'
--
-- * 'plPageToken'
--
-- * 'plOAuthToken'
--
-- * 'plPageSize'
--
-- * 'plFields'
--
-- * 'plCallback'
projectsList'
    :: ProjectsList'
projectsList' =
    ProjectsList'
    { _plXgafv = Nothing
    , _plQuotaUser = Nothing
    , _plPrettyPrint = True
    , _plUploadProtocol = Nothing
    , _plPp = True
    , _plAccessToken = Nothing
    , _plUploadType = Nothing
    , _plBearerToken = Nothing
    , _plKey = Nothing
    , _plFilter = Nothing
    , _plPageToken = Nothing
    , _plOAuthToken = Nothing
    , _plPageSize = Nothing
    , _plFields = Nothing
    , _plCallback = Nothing
    }

-- | V1 error format.
plXgafv :: Lens' ProjectsList' (Maybe Text)
plXgafv = lens _plXgafv (\ s a -> s{_plXgafv = a})

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters.
plQuotaUser :: Lens' ProjectsList' (Maybe Text)
plQuotaUser
  = lens _plQuotaUser (\ s a -> s{_plQuotaUser = a})

-- | Returns response with indentations and line breaks.
plPrettyPrint :: Lens' ProjectsList' Bool
plPrettyPrint
  = lens _plPrettyPrint
      (\ s a -> s{_plPrettyPrint = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
plUploadProtocol :: Lens' ProjectsList' (Maybe Text)
plUploadProtocol
  = lens _plUploadProtocol
      (\ s a -> s{_plUploadProtocol = a})

-- | Pretty-print response.
plPp :: Lens' ProjectsList' Bool
plPp = lens _plPp (\ s a -> s{_plPp = a})

-- | OAuth access token.
plAccessToken :: Lens' ProjectsList' (Maybe Text)
plAccessToken
  = lens _plAccessToken
      (\ s a -> s{_plAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
plUploadType :: Lens' ProjectsList' (Maybe Text)
plUploadType
  = lens _plUploadType (\ s a -> s{_plUploadType = a})

-- | OAuth bearer token.
plBearerToken :: Lens' ProjectsList' (Maybe Text)
plBearerToken
  = lens _plBearerToken
      (\ s a -> s{_plBearerToken = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
plKey :: Lens' ProjectsList' (Maybe Key)
plKey = lens _plKey (\ s a -> s{_plKey = a})

-- | An expression for filtering the results of the request. Filter rules are
-- case insensitive. The fields eligible for filtering are: + \`name\` +
-- \`id\` + labels.key where *key* is the name of a label Some examples of
-- using labels as filters: |Filter|Description| |------|-----------|
-- |name:*|The project has a name.| |name:Howl|The project\'s name is
-- \`Howl\` or \`howl\`.| |name:HOWL|Equivalent to above.|
-- |NAME:howl|Equivalent to above.| |labels.color:*|The project has the
-- label \`color\`.| |labels.color:red|The project\'s label \`color\` has
-- the value \`red\`.| |labels.color:red label.size:big|The project\'s
-- label \`color\` has the value \`red\` and its label \`size\` has the
-- value \`big\`. Optional.
plFilter :: Lens' ProjectsList' (Maybe Text)
plFilter = lens _plFilter (\ s a -> s{_plFilter = a})

-- | A pagination token returned from a previous call to ListProject that
-- indicates from where listing should continue. Note: pagination is not
-- yet supported; the server ignores this field. Optional.
plPageToken :: Lens' ProjectsList' (Maybe Text)
plPageToken
  = lens _plPageToken (\ s a -> s{_plPageToken = a})

-- | OAuth 2.0 token for the current user.
plOAuthToken :: Lens' ProjectsList' (Maybe OAuthToken)
plOAuthToken
  = lens _plOAuthToken (\ s a -> s{_plOAuthToken = a})

-- | The maximum number of Projects to return in the response. The server can
-- return fewer projects than requested. If unspecified, server picks an
-- appropriate default. Note: pagination is not yet supported; the server
-- ignores this field. Optional.
plPageSize :: Lens' ProjectsList' (Maybe Int32)
plPageSize
  = lens _plPageSize (\ s a -> s{_plPageSize = a})

-- | Selector specifying which fields to include in a partial response.
plFields :: Lens' ProjectsList' (Maybe Text)
plFields = lens _plFields (\ s a -> s{_plFields = a})

-- | JSONP
plCallback :: Lens' ProjectsList' (Maybe Text)
plCallback
  = lens _plCallback (\ s a -> s{_plCallback = a})

instance GoogleAuth ProjectsList' where
        authKey = plKey . _Just
        authToken = plOAuthToken . _Just

instance GoogleRequest ProjectsList' where
        type Rs ProjectsList' = ListProjectsResponse
        request = requestWithRoute defReq resourceManagerURL
        requestWithRoute r u ProjectsList'{..}
          = go _plXgafv _plUploadProtocol (Just _plPp)
              _plAccessToken
              _plUploadType
              _plBearerToken
              _plFilter
              _plPageToken
              _plPageSize
              _plCallback
              _plQuotaUser
              (Just _plPrettyPrint)
              _plFields
              _plKey
              _plOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy ProjectsListResource)
                      r
                      u
