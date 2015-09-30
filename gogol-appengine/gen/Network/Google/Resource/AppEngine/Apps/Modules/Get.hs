{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.AppEngine.Apps.Modules.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Gets the current configuration of the module.
--
-- /See:/ <https://developers.google.com/appengine/ Google App Engine Admin API Reference> for @AppengineAppsModulesGet@.
module AppEngine.Apps.Modules.Get
    (
    -- * REST Resource
      AppsModulesGetAPI

    -- * Creating a Request
    , appsModulesGet
    , AppsModulesGet

    -- * Request Lenses
    , amgXgafv
    , amgQuotaUser
    , amgPrettyPrint
    , amgUploadProtocol
    , amgPp
    , amgAccessToken
    , amgUploadType
    , amgModulesId
    , amgBearerToken
    , amgKey
    , amgAppsId
    , amgOauthToken
    , amgFields
    , amgCallback
    , amgAlt
    ) where

import           Network.Google.AppEngine.Types
import           Network.Google.Prelude

-- | A resource alias for @AppengineAppsModulesGet@ which the
-- 'AppsModulesGet' request conforms to.
type AppsModulesGetAPI =
     "v1beta4" :>
       "apps" :>
         Capture "appsId" Text :>
           "modules" :>
             Capture "modulesId" Text :> Get '[JSON] Module

-- | Gets the current configuration of the module.
--
-- /See:/ 'appsModulesGet' smart constructor.
data AppsModulesGet = AppsModulesGet
    { _amgXgafv          :: !(Maybe Text)
    , _amgQuotaUser      :: !(Maybe Text)
    , _amgPrettyPrint    :: !Bool
    , _amgUploadProtocol :: !(Maybe Text)
    , _amgPp             :: !Bool
    , _amgAccessToken    :: !(Maybe Text)
    , _amgUploadType     :: !(Maybe Text)
    , _amgModulesId      :: !Text
    , _amgBearerToken    :: !(Maybe Text)
    , _amgKey            :: !(Maybe Text)
    , _amgAppsId         :: !Text
    , _amgOauthToken     :: !(Maybe Text)
    , _amgFields         :: !(Maybe Text)
    , _amgCallback       :: !(Maybe Text)
    , _amgAlt            :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'AppsModulesGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'amgXgafv'
--
-- * 'amgQuotaUser'
--
-- * 'amgPrettyPrint'
--
-- * 'amgUploadProtocol'
--
-- * 'amgPp'
--
-- * 'amgAccessToken'
--
-- * 'amgUploadType'
--
-- * 'amgModulesId'
--
-- * 'amgBearerToken'
--
-- * 'amgKey'
--
-- * 'amgAppsId'
--
-- * 'amgOauthToken'
--
-- * 'amgFields'
--
-- * 'amgCallback'
--
-- * 'amgAlt'
appsModulesGet
    :: Text -- ^ 'modulesId'
    -> Text -- ^ 'appsId'
    -> AppsModulesGet
appsModulesGet pAmgModulesId_ pAmgAppsId_ =
    AppsModulesGet
    { _amgXgafv = Nothing
    , _amgQuotaUser = Nothing
    , _amgPrettyPrint = True
    , _amgUploadProtocol = Nothing
    , _amgPp = True
    , _amgAccessToken = Nothing
    , _amgUploadType = Nothing
    , _amgModulesId = pAmgModulesId_
    , _amgBearerToken = Nothing
    , _amgKey = Nothing
    , _amgAppsId = pAmgAppsId_
    , _amgOauthToken = Nothing
    , _amgFields = Nothing
    , _amgCallback = Nothing
    , _amgAlt = "json"
    }

-- | V1 error format.
amgXgafv :: Lens' AppsModulesGet' (Maybe Text)
amgXgafv = lens _amgXgafv (\ s a -> s{_amgXgafv = a})

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters.
amgQuotaUser :: Lens' AppsModulesGet' (Maybe Text)
amgQuotaUser
  = lens _amgQuotaUser (\ s a -> s{_amgQuotaUser = a})

-- | Returns response with indentations and line breaks.
amgPrettyPrint :: Lens' AppsModulesGet' Bool
amgPrettyPrint
  = lens _amgPrettyPrint
      (\ s a -> s{_amgPrettyPrint = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
amgUploadProtocol :: Lens' AppsModulesGet' (Maybe Text)
amgUploadProtocol
  = lens _amgUploadProtocol
      (\ s a -> s{_amgUploadProtocol = a})

-- | Pretty-print response.
amgPp :: Lens' AppsModulesGet' Bool
amgPp = lens _amgPp (\ s a -> s{_amgPp = a})

-- | OAuth access token.
amgAccessToken :: Lens' AppsModulesGet' (Maybe Text)
amgAccessToken
  = lens _amgAccessToken
      (\ s a -> s{_amgAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
amgUploadType :: Lens' AppsModulesGet' (Maybe Text)
amgUploadType
  = lens _amgUploadType
      (\ s a -> s{_amgUploadType = a})

-- | Part of \`name\`. See documentation of \`appsId\`.
amgModulesId :: Lens' AppsModulesGet' Text
amgModulesId
  = lens _amgModulesId (\ s a -> s{_amgModulesId = a})

-- | OAuth bearer token.
amgBearerToken :: Lens' AppsModulesGet' (Maybe Text)
amgBearerToken
  = lens _amgBearerToken
      (\ s a -> s{_amgBearerToken = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
amgKey :: Lens' AppsModulesGet' (Maybe Text)
amgKey = lens _amgKey (\ s a -> s{_amgKey = a})

-- | Part of \`name\`. Name of the resource requested. For example:
-- \"apps\/myapp\/modules\/default\".
amgAppsId :: Lens' AppsModulesGet' Text
amgAppsId
  = lens _amgAppsId (\ s a -> s{_amgAppsId = a})

-- | OAuth 2.0 token for the current user.
amgOauthToken :: Lens' AppsModulesGet' (Maybe Text)
amgOauthToken
  = lens _amgOauthToken
      (\ s a -> s{_amgOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
amgFields :: Lens' AppsModulesGet' (Maybe Text)
amgFields
  = lens _amgFields (\ s a -> s{_amgFields = a})

-- | JSONP
amgCallback :: Lens' AppsModulesGet' (Maybe Text)
amgCallback
  = lens _amgCallback (\ s a -> s{_amgCallback = a})

-- | Data format for response.
amgAlt :: Lens' AppsModulesGet' Text
amgAlt = lens _amgAlt (\ s a -> s{_amgAlt = a})

instance GoogleRequest AppsModulesGet' where
        type Rs AppsModulesGet' = Module
        request = requestWithRoute defReq appEngineURL
        requestWithRoute r u AppsModulesGet{..}
          = go _amgXgafv _amgQuotaUser _amgPrettyPrint
              _amgUploadProtocol
              _amgPp
              _amgAccessToken
              _amgUploadType
              _amgModulesId
              _amgBearerToken
              _amgKey
              _amgAppsId
              _amgOauthToken
              _amgFields
              _amgCallback
              _amgAlt
          where go
                  = clientWithRoute (Proxy :: Proxy AppsModulesGetAPI)
                      r
                      u
