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
-- Module      : Network.Google.Resource.AppEngine.Apps.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Gets information about an application.
--
-- /See:/ <https://developers.google.com/appengine/ Google App Engine Admin API Reference> for @AppEngineAppsGet@.
module Network.Google.Resource.AppEngine.Apps.Get
    (
    -- * REST Resource
      AppsGetResource

    -- * Creating a Request
    , appsGet'
    , AppsGet'

    -- * Request Lenses
    , agXgafv
    , agQuotaUser
    , agPrettyPrint
    , agUploadProtocol
    , agPp
    , agAccessToken
    , agUploadType
    , agBearerToken
    , agKey
    , agAppsId
    , agEnsureResourcesExist
    , agOAuthToken
    , agFields
    , agCallback
    ) where

import           Network.Google.AppEngine.Types
import           Network.Google.Prelude

-- | A resource alias for @AppEngineAppsGet@ which the
-- 'AppsGet'' request conforms to.
type AppsGetResource =
     "v1beta4" :>
       "apps" :>
         Capture "appsId" Text :>
           QueryParam "$.xgafv" Text :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "upload_protocol" Text :>
                   QueryParam "pp" Bool :>
                     QueryParam "access_token" Text :>
                       QueryParam "uploadType" Text :>
                         QueryParam "bearer_token" Text :>
                           QueryParam "key" Key :>
                             QueryParam "ensureResourcesExist" Bool :>
                               QueryParam "oauth_token" OAuthToken :>
                                 QueryParam "fields" Text :>
                                   QueryParam "callback" Text :>
                                     QueryParam "alt" AltJSON :>
                                       Get '[JSON] Application

-- | Gets information about an application.
--
-- /See:/ 'appsGet'' smart constructor.
data AppsGet' = AppsGet'
    { _agXgafv                :: !(Maybe Text)
    , _agQuotaUser            :: !(Maybe Text)
    , _agPrettyPrint          :: !Bool
    , _agUploadProtocol       :: !(Maybe Text)
    , _agPp                   :: !Bool
    , _agAccessToken          :: !(Maybe Text)
    , _agUploadType           :: !(Maybe Text)
    , _agBearerToken          :: !(Maybe Text)
    , _agKey                  :: !(Maybe Key)
    , _agAppsId               :: !Text
    , _agEnsureResourcesExist :: !(Maybe Bool)
    , _agOAuthToken           :: !(Maybe OAuthToken)
    , _agFields               :: !(Maybe Text)
    , _agCallback             :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'AppsGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'agXgafv'
--
-- * 'agQuotaUser'
--
-- * 'agPrettyPrint'
--
-- * 'agUploadProtocol'
--
-- * 'agPp'
--
-- * 'agAccessToken'
--
-- * 'agUploadType'
--
-- * 'agBearerToken'
--
-- * 'agKey'
--
-- * 'agAppsId'
--
-- * 'agEnsureResourcesExist'
--
-- * 'agOAuthToken'
--
-- * 'agFields'
--
-- * 'agCallback'
appsGet'
    :: Text -- ^ 'appsId'
    -> AppsGet'
appsGet' pAgAppsId_ =
    AppsGet'
    { _agXgafv = Nothing
    , _agQuotaUser = Nothing
    , _agPrettyPrint = True
    , _agUploadProtocol = Nothing
    , _agPp = True
    , _agAccessToken = Nothing
    , _agUploadType = Nothing
    , _agBearerToken = Nothing
    , _agKey = Nothing
    , _agAppsId = pAgAppsId_
    , _agEnsureResourcesExist = Nothing
    , _agOAuthToken = Nothing
    , _agFields = Nothing
    , _agCallback = Nothing
    }

-- | V1 error format.
agXgafv :: Lens' AppsGet' (Maybe Text)
agXgafv = lens _agXgafv (\ s a -> s{_agXgafv = a})

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters.
agQuotaUser :: Lens' AppsGet' (Maybe Text)
agQuotaUser
  = lens _agQuotaUser (\ s a -> s{_agQuotaUser = a})

-- | Returns response with indentations and line breaks.
agPrettyPrint :: Lens' AppsGet' Bool
agPrettyPrint
  = lens _agPrettyPrint
      (\ s a -> s{_agPrettyPrint = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
agUploadProtocol :: Lens' AppsGet' (Maybe Text)
agUploadProtocol
  = lens _agUploadProtocol
      (\ s a -> s{_agUploadProtocol = a})

-- | Pretty-print response.
agPp :: Lens' AppsGet' Bool
agPp = lens _agPp (\ s a -> s{_agPp = a})

-- | OAuth access token.
agAccessToken :: Lens' AppsGet' (Maybe Text)
agAccessToken
  = lens _agAccessToken
      (\ s a -> s{_agAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
agUploadType :: Lens' AppsGet' (Maybe Text)
agUploadType
  = lens _agUploadType (\ s a -> s{_agUploadType = a})

-- | OAuth bearer token.
agBearerToken :: Lens' AppsGet' (Maybe Text)
agBearerToken
  = lens _agBearerToken
      (\ s a -> s{_agBearerToken = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
agKey :: Lens' AppsGet' (Maybe Key)
agKey = lens _agKey (\ s a -> s{_agKey = a})

-- | Part of \`name\`. Name of the application to get. For example:
-- \"apps\/myapp\".
agAppsId :: Lens' AppsGet' Text
agAppsId = lens _agAppsId (\ s a -> s{_agAppsId = a})

-- | Certain resources associated with an application are created on-demand.
-- Controls whether these resources should be created when performing the
-- \`GET\` operation. If specified and any resources cloud not be created,
-- the request will fail with an error code.
agEnsureResourcesExist :: Lens' AppsGet' (Maybe Bool)
agEnsureResourcesExist
  = lens _agEnsureResourcesExist
      (\ s a -> s{_agEnsureResourcesExist = a})

-- | OAuth 2.0 token for the current user.
agOAuthToken :: Lens' AppsGet' (Maybe OAuthToken)
agOAuthToken
  = lens _agOAuthToken (\ s a -> s{_agOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
agFields :: Lens' AppsGet' (Maybe Text)
agFields = lens _agFields (\ s a -> s{_agFields = a})

-- | JSONP
agCallback :: Lens' AppsGet' (Maybe Text)
agCallback
  = lens _agCallback (\ s a -> s{_agCallback = a})

instance GoogleAuth AppsGet' where
        authKey = agKey . _Just
        authToken = agOAuthToken . _Just

instance GoogleRequest AppsGet' where
        type Rs AppsGet' = Application
        request = requestWithRoute defReq appEngineURL
        requestWithRoute r u AppsGet'{..}
          = go _agXgafv _agQuotaUser (Just _agPrettyPrint)
              _agUploadProtocol
              (Just _agPp)
              _agAccessToken
              _agUploadType
              _agBearerToken
              _agKey
              _agAppsId
              _agEnsureResourcesExist
              _agOAuthToken
              _agFields
              _agCallback
              (Just AltJSON)
          where go
                  = clientWithRoute (Proxy :: Proxy AppsGetResource) r
                      u
