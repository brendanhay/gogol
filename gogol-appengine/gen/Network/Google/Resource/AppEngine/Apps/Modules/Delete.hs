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
-- Module      : Network.Google.Resource.AppEngine.Apps.Modules.Delete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Deletes a module and all enclosed versions.
--
-- /See:/ <https://developers.google.com/appengine/ Google App Engine Admin API Reference> for @AppEngineAppsModulesDelete@.
module Network.Google.Resource.AppEngine.Apps.Modules.Delete
    (
    -- * REST Resource
      AppsModulesDeleteResource

    -- * Creating a Request
    , appsModulesDelete'
    , AppsModulesDelete'

    -- * Request Lenses
    , amdXgafv
    , amdQuotaUser
    , amdPrettyPrint
    , amdUploadProtocol
    , amdPp
    , amdAccessToken
    , amdUploadType
    , amdModulesId
    , amdBearerToken
    , amdKey
    , amdAppsId
    , amdOAuthToken
    , amdFields
    , amdCallback
    ) where

import           Network.Google.AppEngine.Types
import           Network.Google.Prelude

-- | A resource alias for @AppEngineAppsModulesDelete@ which the
-- 'AppsModulesDelete'' request conforms to.
type AppsModulesDeleteResource =
     "v1beta4" :>
       "apps" :>
         Capture "appsId" Text :>
           "modules" :>
             Capture "modulesId" Text :>
               QueryParam "$.xgafv" Text :>
                 QueryParam "upload_protocol" Text :>
                   QueryParam "pp" Bool :>
                     QueryParam "access_token" Text :>
                       QueryParam "uploadType" Text :>
                         QueryParam "bearer_token" Text :>
                           QueryParam "callback" Text :>
                             QueryParam "quotaUser" Text :>
                               QueryParam "prettyPrint" Bool :>
                                 QueryParam "fields" Text :>
                                   QueryParam "key" AuthKey :>
                                     QueryParam "oauth_token" OAuthToken :>
                                       QueryParam "alt" AltJSON :>
                                         Delete '[JSON] Operation

-- | Deletes a module and all enclosed versions.
--
-- /See:/ 'appsModulesDelete'' smart constructor.
data AppsModulesDelete' = AppsModulesDelete'
    { _amdXgafv          :: !(Maybe Text)
    , _amdQuotaUser      :: !(Maybe Text)
    , _amdPrettyPrint    :: !Bool
    , _amdUploadProtocol :: !(Maybe Text)
    , _amdPp             :: !Bool
    , _amdAccessToken    :: !(Maybe Text)
    , _amdUploadType     :: !(Maybe Text)
    , _amdModulesId      :: !Text
    , _amdBearerToken    :: !(Maybe Text)
    , _amdKey            :: !(Maybe AuthKey)
    , _amdAppsId         :: !Text
    , _amdOAuthToken     :: !(Maybe OAuthToken)
    , _amdFields         :: !(Maybe Text)
    , _amdCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AppsModulesDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'amdXgafv'
--
-- * 'amdQuotaUser'
--
-- * 'amdPrettyPrint'
--
-- * 'amdUploadProtocol'
--
-- * 'amdPp'
--
-- * 'amdAccessToken'
--
-- * 'amdUploadType'
--
-- * 'amdModulesId'
--
-- * 'amdBearerToken'
--
-- * 'amdKey'
--
-- * 'amdAppsId'
--
-- * 'amdOAuthToken'
--
-- * 'amdFields'
--
-- * 'amdCallback'
appsModulesDelete'
    :: Text -- ^ 'modulesId'
    -> Text -- ^ 'appsId'
    -> AppsModulesDelete'
appsModulesDelete' pAmdModulesId_ pAmdAppsId_ =
    AppsModulesDelete'
    { _amdXgafv = Nothing
    , _amdQuotaUser = Nothing
    , _amdPrettyPrint = True
    , _amdUploadProtocol = Nothing
    , _amdPp = True
    , _amdAccessToken = Nothing
    , _amdUploadType = Nothing
    , _amdModulesId = pAmdModulesId_
    , _amdBearerToken = Nothing
    , _amdKey = Nothing
    , _amdAppsId = pAmdAppsId_
    , _amdOAuthToken = Nothing
    , _amdFields = Nothing
    , _amdCallback = Nothing
    }

-- | V1 error format.
amdXgafv :: Lens' AppsModulesDelete' (Maybe Text)
amdXgafv = lens _amdXgafv (\ s a -> s{_amdXgafv = a})

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters.
amdQuotaUser :: Lens' AppsModulesDelete' (Maybe Text)
amdQuotaUser
  = lens _amdQuotaUser (\ s a -> s{_amdQuotaUser = a})

-- | Returns response with indentations and line breaks.
amdPrettyPrint :: Lens' AppsModulesDelete' Bool
amdPrettyPrint
  = lens _amdPrettyPrint
      (\ s a -> s{_amdPrettyPrint = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
amdUploadProtocol :: Lens' AppsModulesDelete' (Maybe Text)
amdUploadProtocol
  = lens _amdUploadProtocol
      (\ s a -> s{_amdUploadProtocol = a})

-- | Pretty-print response.
amdPp :: Lens' AppsModulesDelete' Bool
amdPp = lens _amdPp (\ s a -> s{_amdPp = a})

-- | OAuth access token.
amdAccessToken :: Lens' AppsModulesDelete' (Maybe Text)
amdAccessToken
  = lens _amdAccessToken
      (\ s a -> s{_amdAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
amdUploadType :: Lens' AppsModulesDelete' (Maybe Text)
amdUploadType
  = lens _amdUploadType
      (\ s a -> s{_amdUploadType = a})

-- | Part of \`name\`. See documentation of \`appsId\`.
amdModulesId :: Lens' AppsModulesDelete' Text
amdModulesId
  = lens _amdModulesId (\ s a -> s{_amdModulesId = a})

-- | OAuth bearer token.
amdBearerToken :: Lens' AppsModulesDelete' (Maybe Text)
amdBearerToken
  = lens _amdBearerToken
      (\ s a -> s{_amdBearerToken = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
amdKey :: Lens' AppsModulesDelete' (Maybe AuthKey)
amdKey = lens _amdKey (\ s a -> s{_amdKey = a})

-- | Part of \`name\`. Name of the resource requested. For example:
-- \"apps\/myapp\/modules\/default\".
amdAppsId :: Lens' AppsModulesDelete' Text
amdAppsId
  = lens _amdAppsId (\ s a -> s{_amdAppsId = a})

-- | OAuth 2.0 token for the current user.
amdOAuthToken :: Lens' AppsModulesDelete' (Maybe OAuthToken)
amdOAuthToken
  = lens _amdOAuthToken
      (\ s a -> s{_amdOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
amdFields :: Lens' AppsModulesDelete' (Maybe Text)
amdFields
  = lens _amdFields (\ s a -> s{_amdFields = a})

-- | JSONP
amdCallback :: Lens' AppsModulesDelete' (Maybe Text)
amdCallback
  = lens _amdCallback (\ s a -> s{_amdCallback = a})

instance GoogleAuth AppsModulesDelete' where
        authKey = amdKey . _Just
        authToken = amdOAuthToken . _Just

instance GoogleRequest AppsModulesDelete' where
        type Rs AppsModulesDelete' = Operation
        request = requestWithRoute defReq appEngineURL
        requestWithRoute r u AppsModulesDelete'{..}
          = go _amdAppsId _amdModulesId _amdXgafv
              _amdUploadProtocol
              (Just _amdPp)
              _amdAccessToken
              _amdUploadType
              _amdBearerToken
              _amdCallback
              _amdQuotaUser
              (Just _amdPrettyPrint)
              _amdFields
              _amdKey
              _amdOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy AppsModulesDeleteResource)
                      r
                      u
