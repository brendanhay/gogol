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
-- Module      : Network.Google.Resource.AppEngine.Apps.Modules.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Lists all the modules in the application.
--
-- /See:/ <https://developers.google.com/appengine/ Google App Engine Admin API Reference> for @AppEngineAppsModulesList@.
module Network.Google.Resource.AppEngine.Apps.Modules.List
    (
    -- * REST Resource
      AppsModulesListResource

    -- * Creating a Request
    , appsModulesList'
    , AppsModulesList'

    -- * Request Lenses
    , amlXgafv
    , amlQuotaUser
    , amlPrettyPrint
    , amlUploadProtocol
    , amlPp
    , amlAccessToken
    , amlUploadType
    , amlBearerToken
    , amlKey
    , amlAppsId
    , amlPageToken
    , amlOAuthToken
    , amlPageSize
    , amlFields
    , amlCallback
    ) where

import           Network.Google.AppEngine.Types
import           Network.Google.Prelude

-- | A resource alias for @AppEngineAppsModulesList@ which the
-- 'AppsModulesList'' request conforms to.
type AppsModulesListResource =
     "v1beta4" :>
       "apps" :>
         Capture "appsId" Text :>
           "modules" :>
             QueryParam "$.xgafv" Text :>
               QueryParam "upload_protocol" Text :>
                 QueryParam "pp" Bool :>
                   QueryParam "access_token" Text :>
                     QueryParam "uploadType" Text :>
                       QueryParam "bearer_token" Text :>
                         QueryParam "pageToken" Text :>
                           QueryParam "pageSize" Int32 :>
                             QueryParam "callback" Text :>
                               QueryParam "quotaUser" Text :>
                                 QueryParam "prettyPrint" Bool :>
                                   QueryParam "fields" Text :>
                                     QueryParam "key" Key :>
                                       QueryParam "oauth_token" OAuthToken :>
                                         QueryParam "alt" AltJSON :>
                                           Get '[JSON] ListModulesResponse

-- | Lists all the modules in the application.
--
-- /See:/ 'appsModulesList'' smart constructor.
data AppsModulesList' = AppsModulesList'
    { _amlXgafv          :: !(Maybe Text)
    , _amlQuotaUser      :: !(Maybe Text)
    , _amlPrettyPrint    :: !Bool
    , _amlUploadProtocol :: !(Maybe Text)
    , _amlPp             :: !Bool
    , _amlAccessToken    :: !(Maybe Text)
    , _amlUploadType     :: !(Maybe Text)
    , _amlBearerToken    :: !(Maybe Text)
    , _amlKey            :: !(Maybe Key)
    , _amlAppsId         :: !Text
    , _amlPageToken      :: !(Maybe Text)
    , _amlOAuthToken     :: !(Maybe OAuthToken)
    , _amlPageSize       :: !(Maybe Int32)
    , _amlFields         :: !(Maybe Text)
    , _amlCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AppsModulesList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'amlXgafv'
--
-- * 'amlQuotaUser'
--
-- * 'amlPrettyPrint'
--
-- * 'amlUploadProtocol'
--
-- * 'amlPp'
--
-- * 'amlAccessToken'
--
-- * 'amlUploadType'
--
-- * 'amlBearerToken'
--
-- * 'amlKey'
--
-- * 'amlAppsId'
--
-- * 'amlPageToken'
--
-- * 'amlOAuthToken'
--
-- * 'amlPageSize'
--
-- * 'amlFields'
--
-- * 'amlCallback'
appsModulesList'
    :: Text -- ^ 'appsId'
    -> AppsModulesList'
appsModulesList' pAmlAppsId_ =
    AppsModulesList'
    { _amlXgafv = Nothing
    , _amlQuotaUser = Nothing
    , _amlPrettyPrint = True
    , _amlUploadProtocol = Nothing
    , _amlPp = True
    , _amlAccessToken = Nothing
    , _amlUploadType = Nothing
    , _amlBearerToken = Nothing
    , _amlKey = Nothing
    , _amlAppsId = pAmlAppsId_
    , _amlPageToken = Nothing
    , _amlOAuthToken = Nothing
    , _amlPageSize = Nothing
    , _amlFields = Nothing
    , _amlCallback = Nothing
    }

-- | V1 error format.
amlXgafv :: Lens' AppsModulesList' (Maybe Text)
amlXgafv = lens _amlXgafv (\ s a -> s{_amlXgafv = a})

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters.
amlQuotaUser :: Lens' AppsModulesList' (Maybe Text)
amlQuotaUser
  = lens _amlQuotaUser (\ s a -> s{_amlQuotaUser = a})

-- | Returns response with indentations and line breaks.
amlPrettyPrint :: Lens' AppsModulesList' Bool
amlPrettyPrint
  = lens _amlPrettyPrint
      (\ s a -> s{_amlPrettyPrint = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
amlUploadProtocol :: Lens' AppsModulesList' (Maybe Text)
amlUploadProtocol
  = lens _amlUploadProtocol
      (\ s a -> s{_amlUploadProtocol = a})

-- | Pretty-print response.
amlPp :: Lens' AppsModulesList' Bool
amlPp = lens _amlPp (\ s a -> s{_amlPp = a})

-- | OAuth access token.
amlAccessToken :: Lens' AppsModulesList' (Maybe Text)
amlAccessToken
  = lens _amlAccessToken
      (\ s a -> s{_amlAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
amlUploadType :: Lens' AppsModulesList' (Maybe Text)
amlUploadType
  = lens _amlUploadType
      (\ s a -> s{_amlUploadType = a})

-- | OAuth bearer token.
amlBearerToken :: Lens' AppsModulesList' (Maybe Text)
amlBearerToken
  = lens _amlBearerToken
      (\ s a -> s{_amlBearerToken = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
amlKey :: Lens' AppsModulesList' (Maybe Key)
amlKey = lens _amlKey (\ s a -> s{_amlKey = a})

-- | Part of \`name\`. Name of the resource requested. For example:
-- \"apps\/myapp\".
amlAppsId :: Lens' AppsModulesList' Text
amlAppsId
  = lens _amlAppsId (\ s a -> s{_amlAppsId = a})

-- | Continuation token for fetching the next page of results.
amlPageToken :: Lens' AppsModulesList' (Maybe Text)
amlPageToken
  = lens _amlPageToken (\ s a -> s{_amlPageToken = a})

-- | OAuth 2.0 token for the current user.
amlOAuthToken :: Lens' AppsModulesList' (Maybe OAuthToken)
amlOAuthToken
  = lens _amlOAuthToken
      (\ s a -> s{_amlOAuthToken = a})

-- | Maximum results to return per page.
amlPageSize :: Lens' AppsModulesList' (Maybe Int32)
amlPageSize
  = lens _amlPageSize (\ s a -> s{_amlPageSize = a})

-- | Selector specifying which fields to include in a partial response.
amlFields :: Lens' AppsModulesList' (Maybe Text)
amlFields
  = lens _amlFields (\ s a -> s{_amlFields = a})

-- | JSONP
amlCallback :: Lens' AppsModulesList' (Maybe Text)
amlCallback
  = lens _amlCallback (\ s a -> s{_amlCallback = a})

instance GoogleAuth AppsModulesList' where
        authKey = amlKey . _Just
        authToken = amlOAuthToken . _Just

instance GoogleRequest AppsModulesList' where
        type Rs AppsModulesList' = ListModulesResponse
        request = requestWithRoute defReq appEngineURL
        requestWithRoute r u AppsModulesList'{..}
          = go _amlAppsId _amlXgafv _amlUploadProtocol
              (Just _amlPp)
              _amlAccessToken
              _amlUploadType
              _amlBearerToken
              _amlPageToken
              _amlPageSize
              _amlCallback
              _amlQuotaUser
              (Just _amlPrettyPrint)
              _amlFields
              _amlKey
              _amlOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy AppsModulesListResource)
                      r
                      u
