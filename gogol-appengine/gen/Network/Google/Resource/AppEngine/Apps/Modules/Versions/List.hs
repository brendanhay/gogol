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
-- Module      : Network.Google.Resource.AppEngine.Apps.Modules.Versions.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Lists the versions of a module.
--
-- /See:/ <https://developers.google.com/appengine/ Google App Engine Admin API Reference> for @AppengineAppsModulesVersionsList@.
module Network.Google.Resource.AppEngine.Apps.Modules.Versions.List
    (
    -- * REST Resource
      AppsModulesVersionsListResource

    -- * Creating a Request
    , appsModulesVersionsList'
    , AppsModulesVersionsList'

    -- * Request Lenses
    , amvlXgafv
    , amvlQuotaUser
    , amvlPrettyPrint
    , amvlUploadProtocol
    , amvlPp
    , amvlAccessToken
    , amvlUploadType
    , amvlModulesId
    , amvlBearerToken
    , amvlKey
    , amvlAppsId
    , amvlView
    , amvlPageToken
    , amvlOauthToken
    , amvlPageSize
    , amvlFields
    , amvlCallback
    , amvlAlt
    ) where

import           Network.Google.AppEngine.Types
import           Network.Google.Prelude

-- | A resource alias for @AppengineAppsModulesVersionsList@ which the
-- 'AppsModulesVersionsList'' request conforms to.
type AppsModulesVersionsListResource =
     "v1beta4" :>
       "apps" :>
         Capture "appsId" Text :>
           "modules" :>
             Capture "modulesId" Text :>
               "versions" :>
                 QueryParam "$.xgafv" Text :>
                   QueryParam "quotaUser" Text :>
                     QueryParam "prettyPrint" Bool :>
                       QueryParam "upload_protocol" Text :>
                         QueryParam "pp" Bool :>
                           QueryParam "access_token" Text :>
                             QueryParam "uploadType" Text :>
                               QueryParam "bearer_token" Text :>
                                 QueryParam "key" Text :>
                                   QueryParam "view" Text :>
                                     QueryParam "pageToken" Text :>
                                       QueryParam "oauth_token" Text :>
                                         QueryParam "pageSize" Int32 :>
                                           QueryParam "fields" Text :>
                                             QueryParam "callback" Text :>
                                               QueryParam "alt" Text :>
                                                 Get '[JSON]
                                                   ListVersionsResponse

-- | Lists the versions of a module.
--
-- /See:/ 'appsModulesVersionsList'' smart constructor.
data AppsModulesVersionsList' = AppsModulesVersionsList'
    { _amvlXgafv          :: !(Maybe Text)
    , _amvlQuotaUser      :: !(Maybe Text)
    , _amvlPrettyPrint    :: !Bool
    , _amvlUploadProtocol :: !(Maybe Text)
    , _amvlPp             :: !Bool
    , _amvlAccessToken    :: !(Maybe Text)
    , _amvlUploadType     :: !(Maybe Text)
    , _amvlModulesId      :: !Text
    , _amvlBearerToken    :: !(Maybe Text)
    , _amvlKey            :: !(Maybe Text)
    , _amvlAppsId         :: !Text
    , _amvlView           :: !(Maybe Text)
    , _amvlPageToken      :: !(Maybe Text)
    , _amvlOauthToken     :: !(Maybe Text)
    , _amvlPageSize       :: !(Maybe Int32)
    , _amvlFields         :: !(Maybe Text)
    , _amvlCallback       :: !(Maybe Text)
    , _amvlAlt            :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'AppsModulesVersionsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'amvlXgafv'
--
-- * 'amvlQuotaUser'
--
-- * 'amvlPrettyPrint'
--
-- * 'amvlUploadProtocol'
--
-- * 'amvlPp'
--
-- * 'amvlAccessToken'
--
-- * 'amvlUploadType'
--
-- * 'amvlModulesId'
--
-- * 'amvlBearerToken'
--
-- * 'amvlKey'
--
-- * 'amvlAppsId'
--
-- * 'amvlView'
--
-- * 'amvlPageToken'
--
-- * 'amvlOauthToken'
--
-- * 'amvlPageSize'
--
-- * 'amvlFields'
--
-- * 'amvlCallback'
--
-- * 'amvlAlt'
appsModulesVersionsList'
    :: Text -- ^ 'modulesId'
    -> Text -- ^ 'appsId'
    -> AppsModulesVersionsList'
appsModulesVersionsList' pAmvlModulesId_ pAmvlAppsId_ =
    AppsModulesVersionsList'
    { _amvlXgafv = Nothing
    , _amvlQuotaUser = Nothing
    , _amvlPrettyPrint = True
    , _amvlUploadProtocol = Nothing
    , _amvlPp = True
    , _amvlAccessToken = Nothing
    , _amvlUploadType = Nothing
    , _amvlModulesId = pAmvlModulesId_
    , _amvlBearerToken = Nothing
    , _amvlKey = Nothing
    , _amvlAppsId = pAmvlAppsId_
    , _amvlView = Nothing
    , _amvlPageToken = Nothing
    , _amvlOauthToken = Nothing
    , _amvlPageSize = Nothing
    , _amvlFields = Nothing
    , _amvlCallback = Nothing
    , _amvlAlt = "json"
    }

-- | V1 error format.
amvlXgafv :: Lens' AppsModulesVersionsList' (Maybe Text)
amvlXgafv
  = lens _amvlXgafv (\ s a -> s{_amvlXgafv = a})

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters.
amvlQuotaUser :: Lens' AppsModulesVersionsList' (Maybe Text)
amvlQuotaUser
  = lens _amvlQuotaUser
      (\ s a -> s{_amvlQuotaUser = a})

-- | Returns response with indentations and line breaks.
amvlPrettyPrint :: Lens' AppsModulesVersionsList' Bool
amvlPrettyPrint
  = lens _amvlPrettyPrint
      (\ s a -> s{_amvlPrettyPrint = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
amvlUploadProtocol :: Lens' AppsModulesVersionsList' (Maybe Text)
amvlUploadProtocol
  = lens _amvlUploadProtocol
      (\ s a -> s{_amvlUploadProtocol = a})

-- | Pretty-print response.
amvlPp :: Lens' AppsModulesVersionsList' Bool
amvlPp = lens _amvlPp (\ s a -> s{_amvlPp = a})

-- | OAuth access token.
amvlAccessToken :: Lens' AppsModulesVersionsList' (Maybe Text)
amvlAccessToken
  = lens _amvlAccessToken
      (\ s a -> s{_amvlAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
amvlUploadType :: Lens' AppsModulesVersionsList' (Maybe Text)
amvlUploadType
  = lens _amvlUploadType
      (\ s a -> s{_amvlUploadType = a})

-- | Part of \`name\`. See documentation of \`appsId\`.
amvlModulesId :: Lens' AppsModulesVersionsList' Text
amvlModulesId
  = lens _amvlModulesId
      (\ s a -> s{_amvlModulesId = a})

-- | OAuth bearer token.
amvlBearerToken :: Lens' AppsModulesVersionsList' (Maybe Text)
amvlBearerToken
  = lens _amvlBearerToken
      (\ s a -> s{_amvlBearerToken = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
amvlKey :: Lens' AppsModulesVersionsList' (Maybe Text)
amvlKey = lens _amvlKey (\ s a -> s{_amvlKey = a})

-- | Part of \`name\`. Name of the resource requested. For example:
-- \"apps\/myapp\/modules\/default\".
amvlAppsId :: Lens' AppsModulesVersionsList' Text
amvlAppsId
  = lens _amvlAppsId (\ s a -> s{_amvlAppsId = a})

-- | Controls the set of fields returned in the \`List\` response.
amvlView :: Lens' AppsModulesVersionsList' (Maybe Text)
amvlView = lens _amvlView (\ s a -> s{_amvlView = a})

-- | Continuation token for fetching the next page of results.
amvlPageToken :: Lens' AppsModulesVersionsList' (Maybe Text)
amvlPageToken
  = lens _amvlPageToken
      (\ s a -> s{_amvlPageToken = a})

-- | OAuth 2.0 token for the current user.
amvlOauthToken :: Lens' AppsModulesVersionsList' (Maybe Text)
amvlOauthToken
  = lens _amvlOauthToken
      (\ s a -> s{_amvlOauthToken = a})

-- | Maximum results to return per page.
amvlPageSize :: Lens' AppsModulesVersionsList' (Maybe Int32)
amvlPageSize
  = lens _amvlPageSize (\ s a -> s{_amvlPageSize = a})

-- | Selector specifying which fields to include in a partial response.
amvlFields :: Lens' AppsModulesVersionsList' (Maybe Text)
amvlFields
  = lens _amvlFields (\ s a -> s{_amvlFields = a})

-- | JSONP
amvlCallback :: Lens' AppsModulesVersionsList' (Maybe Text)
amvlCallback
  = lens _amvlCallback (\ s a -> s{_amvlCallback = a})

-- | Data format for response.
amvlAlt :: Lens' AppsModulesVersionsList' Text
amvlAlt = lens _amvlAlt (\ s a -> s{_amvlAlt = a})

instance GoogleRequest AppsModulesVersionsList' where
        type Rs AppsModulesVersionsList' =
             ListVersionsResponse
        request = requestWithRoute defReq appEngineURL
        requestWithRoute r u AppsModulesVersionsList'{..}
          = go _amvlXgafv _amvlQuotaUser
              (Just _amvlPrettyPrint)
              _amvlUploadProtocol
              (Just _amvlPp)
              _amvlAccessToken
              _amvlUploadType
              _amvlModulesId
              _amvlBearerToken
              _amvlKey
              _amvlAppsId
              _amvlView
              _amvlPageToken
              _amvlOauthToken
              _amvlPageSize
              _amvlFields
              _amvlCallback
              (Just _amvlAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy AppsModulesVersionsListResource)
                      r
                      u
