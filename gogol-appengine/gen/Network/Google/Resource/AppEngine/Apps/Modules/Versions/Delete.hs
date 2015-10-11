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
-- Module      : Network.Google.Resource.AppEngine.Apps.Modules.Versions.Delete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Deletes an existing version.
--
-- /See:/ <https://developers.google.com/appengine/ Google App Engine Admin API Reference> for @AppEngineAppsModulesVersionsDelete@.
module Network.Google.Resource.AppEngine.Apps.Modules.Versions.Delete
    (
    -- * REST Resource
      AppsModulesVersionsDeleteResource

    -- * Creating a Request
    , appsModulesVersionsDelete'
    , AppsModulesVersionsDelete'

    -- * Request Lenses
    , amvdXgafv
    , amvdQuotaUser
    , amvdPrettyPrint
    , amvdUploadProtocol
    , amvdPp
    , amvdAccessToken
    , amvdUploadType
    , amvdVersionsId
    , amvdModulesId
    , amvdBearerToken
    , amvdKey
    , amvdAppsId
    , amvdOAuthToken
    , amvdFields
    , amvdCallback
    ) where

import           Network.Google.AppEngine.Types
import           Network.Google.Prelude

-- | A resource alias for @AppEngineAppsModulesVersionsDelete@ method which the
-- 'AppsModulesVersionsDelete'' request conforms to.
type AppsModulesVersionsDeleteResource =
     "v1beta4" :>
       "apps" :>
         Capture "appsId" Text :>
           "modules" :>
             Capture "modulesId" Text :>
               "versions" :>
                 Capture "versionsId" Text :>
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
                                         Header "Authorization" OAuthToken :>
                                           QueryParam "alt" AltJSON :>
                                             Delete '[JSON] Operation

-- | Deletes an existing version.
--
-- /See:/ 'appsModulesVersionsDelete'' smart constructor.
data AppsModulesVersionsDelete' = AppsModulesVersionsDelete'
    { _amvdXgafv          :: !(Maybe Text)
    , _amvdQuotaUser      :: !(Maybe Text)
    , _amvdPrettyPrint    :: !Bool
    , _amvdUploadProtocol :: !(Maybe Text)
    , _amvdPp             :: !Bool
    , _amvdAccessToken    :: !(Maybe Text)
    , _amvdUploadType     :: !(Maybe Text)
    , _amvdVersionsId     :: !Text
    , _amvdModulesId      :: !Text
    , _amvdBearerToken    :: !(Maybe Text)
    , _amvdKey            :: !(Maybe AuthKey)
    , _amvdAppsId         :: !Text
    , _amvdOAuthToken     :: !(Maybe OAuthToken)
    , _amvdFields         :: !(Maybe Text)
    , _amvdCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AppsModulesVersionsDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'amvdXgafv'
--
-- * 'amvdQuotaUser'
--
-- * 'amvdPrettyPrint'
--
-- * 'amvdUploadProtocol'
--
-- * 'amvdPp'
--
-- * 'amvdAccessToken'
--
-- * 'amvdUploadType'
--
-- * 'amvdVersionsId'
--
-- * 'amvdModulesId'
--
-- * 'amvdBearerToken'
--
-- * 'amvdKey'
--
-- * 'amvdAppsId'
--
-- * 'amvdOAuthToken'
--
-- * 'amvdFields'
--
-- * 'amvdCallback'
appsModulesVersionsDelete'
    :: Text -- ^ 'versionsId'
    -> Text -- ^ 'modulesId'
    -> Text -- ^ 'appsId'
    -> AppsModulesVersionsDelete'
appsModulesVersionsDelete' pAmvdVersionsId_ pAmvdModulesId_ pAmvdAppsId_ =
    AppsModulesVersionsDelete'
    { _amvdXgafv = Nothing
    , _amvdQuotaUser = Nothing
    , _amvdPrettyPrint = True
    , _amvdUploadProtocol = Nothing
    , _amvdPp = True
    , _amvdAccessToken = Nothing
    , _amvdUploadType = Nothing
    , _amvdVersionsId = pAmvdVersionsId_
    , _amvdModulesId = pAmvdModulesId_
    , _amvdBearerToken = Nothing
    , _amvdKey = Nothing
    , _amvdAppsId = pAmvdAppsId_
    , _amvdOAuthToken = Nothing
    , _amvdFields = Nothing
    , _amvdCallback = Nothing
    }

-- | V1 error format.
amvdXgafv :: Lens' AppsModulesVersionsDelete' (Maybe Text)
amvdXgafv
  = lens _amvdXgafv (\ s a -> s{_amvdXgafv = a})

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters.
amvdQuotaUser :: Lens' AppsModulesVersionsDelete' (Maybe Text)
amvdQuotaUser
  = lens _amvdQuotaUser
      (\ s a -> s{_amvdQuotaUser = a})

-- | Returns response with indentations and line breaks.
amvdPrettyPrint :: Lens' AppsModulesVersionsDelete' Bool
amvdPrettyPrint
  = lens _amvdPrettyPrint
      (\ s a -> s{_amvdPrettyPrint = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
amvdUploadProtocol :: Lens' AppsModulesVersionsDelete' (Maybe Text)
amvdUploadProtocol
  = lens _amvdUploadProtocol
      (\ s a -> s{_amvdUploadProtocol = a})

-- | Pretty-print response.
amvdPp :: Lens' AppsModulesVersionsDelete' Bool
amvdPp = lens _amvdPp (\ s a -> s{_amvdPp = a})

-- | OAuth access token.
amvdAccessToken :: Lens' AppsModulesVersionsDelete' (Maybe Text)
amvdAccessToken
  = lens _amvdAccessToken
      (\ s a -> s{_amvdAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
amvdUploadType :: Lens' AppsModulesVersionsDelete' (Maybe Text)
amvdUploadType
  = lens _amvdUploadType
      (\ s a -> s{_amvdUploadType = a})

-- | Part of \`name\`. See documentation of \`appsId\`.
amvdVersionsId :: Lens' AppsModulesVersionsDelete' Text
amvdVersionsId
  = lens _amvdVersionsId
      (\ s a -> s{_amvdVersionsId = a})

-- | Part of \`name\`. See documentation of \`appsId\`.
amvdModulesId :: Lens' AppsModulesVersionsDelete' Text
amvdModulesId
  = lens _amvdModulesId
      (\ s a -> s{_amvdModulesId = a})

-- | OAuth bearer token.
amvdBearerToken :: Lens' AppsModulesVersionsDelete' (Maybe Text)
amvdBearerToken
  = lens _amvdBearerToken
      (\ s a -> s{_amvdBearerToken = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
amvdKey :: Lens' AppsModulesVersionsDelete' (Maybe AuthKey)
amvdKey = lens _amvdKey (\ s a -> s{_amvdKey = a})

-- | Part of \`name\`. Name of the resource requested. For example:
-- \"apps\/myapp\/modules\/default\/versions\/v1\".
amvdAppsId :: Lens' AppsModulesVersionsDelete' Text
amvdAppsId
  = lens _amvdAppsId (\ s a -> s{_amvdAppsId = a})

-- | OAuth 2.0 token for the current user.
amvdOAuthToken :: Lens' AppsModulesVersionsDelete' (Maybe OAuthToken)
amvdOAuthToken
  = lens _amvdOAuthToken
      (\ s a -> s{_amvdOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
amvdFields :: Lens' AppsModulesVersionsDelete' (Maybe Text)
amvdFields
  = lens _amvdFields (\ s a -> s{_amvdFields = a})

-- | JSONP
amvdCallback :: Lens' AppsModulesVersionsDelete' (Maybe Text)
amvdCallback
  = lens _amvdCallback (\ s a -> s{_amvdCallback = a})

instance GoogleAuth AppsModulesVersionsDelete' where
        _AuthKey = amvdKey . _Just
        _AuthToken = amvdOAuthToken . _Just

instance GoogleRequest AppsModulesVersionsDelete'
         where
        type Rs AppsModulesVersionsDelete' = Operation
        request = requestWith appEngineRequest
        requestWith rq AppsModulesVersionsDelete'{..}
          = go _amvdAppsId _amvdModulesId _amvdVersionsId
              _amvdXgafv
              _amvdUploadProtocol
              (Just _amvdPp)
              _amvdAccessToken
              _amvdUploadType
              _amvdBearerToken
              _amvdCallback
              _amvdQuotaUser
              (Just _amvdPrettyPrint)
              _amvdFields
              _amvdKey
              _amvdOAuthToken
              (Just AltJSON)
          where go
                  = clientBuild
                      (Proxy :: Proxy AppsModulesVersionsDeleteResource)
                      rq
