{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE FlexibleInstances  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.AppEngine.Apps.Operations.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Gets the latest state of a long-running operation. Clients can use this
-- method to poll the operation result at intervals as recommended by the
-- API service.
--
-- /See:/ <https://developers.google.com/appengine/ Google App Engine Admin API Reference> for @AppEngineAppsOperationsGet@.
module Network.Google.Resource.AppEngine.Apps.Operations.Get
    (
    -- * REST Resource
      AppsOperationsGetResource

    -- * Creating a Request
    , appsOperationsGet'
    , AppsOperationsGet'

    -- * Request Lenses
    , aogXgafv
    , aogQuotaUser
    , aogPrettyPrint
    , aogUploadProtocol
    , aogPp
    , aogAccessToken
    , aogUploadType
    , aogBearerToken
    , aogKey
    , aogAppsId
    , aogOAuthToken
    , aogOperationsId
    , aogFields
    , aogCallback
    ) where

import           Network.Google.AppEngine.Types
import           Network.Google.Prelude

-- | A resource alias for @AppEngineAppsOperationsGet@ which the
-- 'AppsOperationsGet'' request conforms to.
type AppsOperationsGetResource =
     "v1beta4" :>
       "apps" :>
         Capture "appsId" Text :>
           "operations" :>
             Capture "operationsId" Text :>
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
                                   QueryParam "key" Key :>
                                     QueryParam "oauth_token" OAuthToken :>
                                       QueryParam "alt" AltJSON :>
                                         Get '[JSON] Operation

-- | Gets the latest state of a long-running operation. Clients can use this
-- method to poll the operation result at intervals as recommended by the
-- API service.
--
-- /See:/ 'appsOperationsGet'' smart constructor.
data AppsOperationsGet' = AppsOperationsGet'
    { _aogXgafv          :: !(Maybe Text)
    , _aogQuotaUser      :: !(Maybe Text)
    , _aogPrettyPrint    :: !Bool
    , _aogUploadProtocol :: !(Maybe Text)
    , _aogPp             :: !Bool
    , _aogAccessToken    :: !(Maybe Text)
    , _aogUploadType     :: !(Maybe Text)
    , _aogBearerToken    :: !(Maybe Text)
    , _aogKey            :: !(Maybe Key)
    , _aogAppsId         :: !Text
    , _aogOAuthToken     :: !(Maybe OAuthToken)
    , _aogOperationsId   :: !Text
    , _aogFields         :: !(Maybe Text)
    , _aogCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AppsOperationsGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aogXgafv'
--
-- * 'aogQuotaUser'
--
-- * 'aogPrettyPrint'
--
-- * 'aogUploadProtocol'
--
-- * 'aogPp'
--
-- * 'aogAccessToken'
--
-- * 'aogUploadType'
--
-- * 'aogBearerToken'
--
-- * 'aogKey'
--
-- * 'aogAppsId'
--
-- * 'aogOAuthToken'
--
-- * 'aogOperationsId'
--
-- * 'aogFields'
--
-- * 'aogCallback'
appsOperationsGet'
    :: Text -- ^ 'appsId'
    -> Text -- ^ 'operationsId'
    -> AppsOperationsGet'
appsOperationsGet' pAogAppsId_ pAogOperationsId_ =
    AppsOperationsGet'
    { _aogXgafv = Nothing
    , _aogQuotaUser = Nothing
    , _aogPrettyPrint = True
    , _aogUploadProtocol = Nothing
    , _aogPp = True
    , _aogAccessToken = Nothing
    , _aogUploadType = Nothing
    , _aogBearerToken = Nothing
    , _aogKey = Nothing
    , _aogAppsId = pAogAppsId_
    , _aogOAuthToken = Nothing
    , _aogOperationsId = pAogOperationsId_
    , _aogFields = Nothing
    , _aogCallback = Nothing
    }

-- | V1 error format.
aogXgafv :: Lens' AppsOperationsGet' (Maybe Text)
aogXgafv = lens _aogXgafv (\ s a -> s{_aogXgafv = a})

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters.
aogQuotaUser :: Lens' AppsOperationsGet' (Maybe Text)
aogQuotaUser
  = lens _aogQuotaUser (\ s a -> s{_aogQuotaUser = a})

-- | Returns response with indentations and line breaks.
aogPrettyPrint :: Lens' AppsOperationsGet' Bool
aogPrettyPrint
  = lens _aogPrettyPrint
      (\ s a -> s{_aogPrettyPrint = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
aogUploadProtocol :: Lens' AppsOperationsGet' (Maybe Text)
aogUploadProtocol
  = lens _aogUploadProtocol
      (\ s a -> s{_aogUploadProtocol = a})

-- | Pretty-print response.
aogPp :: Lens' AppsOperationsGet' Bool
aogPp = lens _aogPp (\ s a -> s{_aogPp = a})

-- | OAuth access token.
aogAccessToken :: Lens' AppsOperationsGet' (Maybe Text)
aogAccessToken
  = lens _aogAccessToken
      (\ s a -> s{_aogAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
aogUploadType :: Lens' AppsOperationsGet' (Maybe Text)
aogUploadType
  = lens _aogUploadType
      (\ s a -> s{_aogUploadType = a})

-- | OAuth bearer token.
aogBearerToken :: Lens' AppsOperationsGet' (Maybe Text)
aogBearerToken
  = lens _aogBearerToken
      (\ s a -> s{_aogBearerToken = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
aogKey :: Lens' AppsOperationsGet' (Maybe Key)
aogKey = lens _aogKey (\ s a -> s{_aogKey = a})

-- | Part of \`name\`. The name of the operation resource.
aogAppsId :: Lens' AppsOperationsGet' Text
aogAppsId
  = lens _aogAppsId (\ s a -> s{_aogAppsId = a})

-- | OAuth 2.0 token for the current user.
aogOAuthToken :: Lens' AppsOperationsGet' (Maybe OAuthToken)
aogOAuthToken
  = lens _aogOAuthToken
      (\ s a -> s{_aogOAuthToken = a})

-- | Part of \`name\`. See documentation of \`appsId\`.
aogOperationsId :: Lens' AppsOperationsGet' Text
aogOperationsId
  = lens _aogOperationsId
      (\ s a -> s{_aogOperationsId = a})

-- | Selector specifying which fields to include in a partial response.
aogFields :: Lens' AppsOperationsGet' (Maybe Text)
aogFields
  = lens _aogFields (\ s a -> s{_aogFields = a})

-- | JSONP
aogCallback :: Lens' AppsOperationsGet' (Maybe Text)
aogCallback
  = lens _aogCallback (\ s a -> s{_aogCallback = a})

instance GoogleAuth AppsOperationsGet' where
        authKey = aogKey . _Just
        authToken = aogOAuthToken . _Just

instance GoogleRequest AppsOperationsGet' where
        type Rs AppsOperationsGet' = Operation
        request = requestWithRoute defReq appEngineURL
        requestWithRoute r u AppsOperationsGet'{..}
          = go _aogAppsId _aogOperationsId _aogXgafv
              _aogUploadProtocol
              (Just _aogPp)
              _aogAccessToken
              _aogUploadType
              _aogBearerToken
              _aogCallback
              _aogQuotaUser
              (Just _aogPrettyPrint)
              _aogFields
              _aogKey
              _aogOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy AppsOperationsGetResource)
                      r
                      u
