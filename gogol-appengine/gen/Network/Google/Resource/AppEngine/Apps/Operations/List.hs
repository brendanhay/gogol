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
-- Module      : Network.Google.Resource.AppEngine.Apps.Operations.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Lists operations that match the specified filter in the request. If the
-- server doesn\'t support this method, it returns \`UNIMPLEMENTED\`. NOTE:
-- the \`name\` binding below allows API services to override the binding
-- to use different resource name schemes, such as
-- \`users\/*\/operations\`.
--
-- /See:/ <https://developers.google.com/appengine/ Google App Engine Admin API Reference> for @AppEngineAppsOperationsList@.
module Network.Google.Resource.AppEngine.Apps.Operations.List
    (
    -- * REST Resource
      AppsOperationsListResource

    -- * Creating a Request
    , appsOperationsList'
    , AppsOperationsList'

    -- * Request Lenses
    , aolXgafv
    , aolQuotaUser
    , aolPrettyPrint
    , aolUploadProtocol
    , aolPp
    , aolAccessToken
    , aolUploadType
    , aolBearerToken
    , aolKey
    , aolAppsId
    , aolFilter
    , aolPageToken
    , aolOAuthToken
    , aolPageSize
    , aolFields
    , aolCallback
    ) where

import           Network.Google.AppEngine.Types
import           Network.Google.Prelude

-- | A resource alias for @AppEngineAppsOperationsList@ which the
-- 'AppsOperationsList'' request conforms to.
type AppsOperationsListResource =
     "v1beta4" :>
       "apps" :>
         Capture "appsId" Text :>
           "operations" :>
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
                                       QueryParam "key" AuthKey :>
                                         QueryParam "oauth_token" OAuthToken :>
                                           QueryParam "alt" AltJSON :>
                                             Get '[JSON] ListOperationsResponse

-- | Lists operations that match the specified filter in the request. If the
-- server doesn\'t support this method, it returns \`UNIMPLEMENTED\`. NOTE:
-- the \`name\` binding below allows API services to override the binding
-- to use different resource name schemes, such as
-- \`users\/*\/operations\`.
--
-- /See:/ 'appsOperationsList'' smart constructor.
data AppsOperationsList' = AppsOperationsList'
    { _aolXgafv          :: !(Maybe Text)
    , _aolQuotaUser      :: !(Maybe Text)
    , _aolPrettyPrint    :: !Bool
    , _aolUploadProtocol :: !(Maybe Text)
    , _aolPp             :: !Bool
    , _aolAccessToken    :: !(Maybe Text)
    , _aolUploadType     :: !(Maybe Text)
    , _aolBearerToken    :: !(Maybe Text)
    , _aolKey            :: !(Maybe AuthKey)
    , _aolAppsId         :: !Text
    , _aolFilter         :: !(Maybe Text)
    , _aolPageToken      :: !(Maybe Text)
    , _aolOAuthToken     :: !(Maybe OAuthToken)
    , _aolPageSize       :: !(Maybe Int32)
    , _aolFields         :: !(Maybe Text)
    , _aolCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AppsOperationsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aolXgafv'
--
-- * 'aolQuotaUser'
--
-- * 'aolPrettyPrint'
--
-- * 'aolUploadProtocol'
--
-- * 'aolPp'
--
-- * 'aolAccessToken'
--
-- * 'aolUploadType'
--
-- * 'aolBearerToken'
--
-- * 'aolKey'
--
-- * 'aolAppsId'
--
-- * 'aolFilter'
--
-- * 'aolPageToken'
--
-- * 'aolOAuthToken'
--
-- * 'aolPageSize'
--
-- * 'aolFields'
--
-- * 'aolCallback'
appsOperationsList'
    :: Text -- ^ 'appsId'
    -> AppsOperationsList'
appsOperationsList' pAolAppsId_ =
    AppsOperationsList'
    { _aolXgafv = Nothing
    , _aolQuotaUser = Nothing
    , _aolPrettyPrint = True
    , _aolUploadProtocol = Nothing
    , _aolPp = True
    , _aolAccessToken = Nothing
    , _aolUploadType = Nothing
    , _aolBearerToken = Nothing
    , _aolKey = Nothing
    , _aolAppsId = pAolAppsId_
    , _aolFilter = Nothing
    , _aolPageToken = Nothing
    , _aolOAuthToken = Nothing
    , _aolPageSize = Nothing
    , _aolFields = Nothing
    , _aolCallback = Nothing
    }

-- | V1 error format.
aolXgafv :: Lens' AppsOperationsList' (Maybe Text)
aolXgafv = lens _aolXgafv (\ s a -> s{_aolXgafv = a})

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters.
aolQuotaUser :: Lens' AppsOperationsList' (Maybe Text)
aolQuotaUser
  = lens _aolQuotaUser (\ s a -> s{_aolQuotaUser = a})

-- | Returns response with indentations and line breaks.
aolPrettyPrint :: Lens' AppsOperationsList' Bool
aolPrettyPrint
  = lens _aolPrettyPrint
      (\ s a -> s{_aolPrettyPrint = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
aolUploadProtocol :: Lens' AppsOperationsList' (Maybe Text)
aolUploadProtocol
  = lens _aolUploadProtocol
      (\ s a -> s{_aolUploadProtocol = a})

-- | Pretty-print response.
aolPp :: Lens' AppsOperationsList' Bool
aolPp = lens _aolPp (\ s a -> s{_aolPp = a})

-- | OAuth access token.
aolAccessToken :: Lens' AppsOperationsList' (Maybe Text)
aolAccessToken
  = lens _aolAccessToken
      (\ s a -> s{_aolAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
aolUploadType :: Lens' AppsOperationsList' (Maybe Text)
aolUploadType
  = lens _aolUploadType
      (\ s a -> s{_aolUploadType = a})

-- | OAuth bearer token.
aolBearerToken :: Lens' AppsOperationsList' (Maybe Text)
aolBearerToken
  = lens _aolBearerToken
      (\ s a -> s{_aolBearerToken = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
aolKey :: Lens' AppsOperationsList' (Maybe AuthKey)
aolKey = lens _aolKey (\ s a -> s{_aolKey = a})

-- | Part of \`name\`. The name of the operation collection.
aolAppsId :: Lens' AppsOperationsList' Text
aolAppsId
  = lens _aolAppsId (\ s a -> s{_aolAppsId = a})

-- | The standard list filter.
aolFilter :: Lens' AppsOperationsList' (Maybe Text)
aolFilter
  = lens _aolFilter (\ s a -> s{_aolFilter = a})

-- | The standard list page token.
aolPageToken :: Lens' AppsOperationsList' (Maybe Text)
aolPageToken
  = lens _aolPageToken (\ s a -> s{_aolPageToken = a})

-- | OAuth 2.0 token for the current user.
aolOAuthToken :: Lens' AppsOperationsList' (Maybe OAuthToken)
aolOAuthToken
  = lens _aolOAuthToken
      (\ s a -> s{_aolOAuthToken = a})

-- | The standard list page size.
aolPageSize :: Lens' AppsOperationsList' (Maybe Int32)
aolPageSize
  = lens _aolPageSize (\ s a -> s{_aolPageSize = a})

-- | Selector specifying which fields to include in a partial response.
aolFields :: Lens' AppsOperationsList' (Maybe Text)
aolFields
  = lens _aolFields (\ s a -> s{_aolFields = a})

-- | JSONP
aolCallback :: Lens' AppsOperationsList' (Maybe Text)
aolCallback
  = lens _aolCallback (\ s a -> s{_aolCallback = a})

instance GoogleAuth AppsOperationsList' where
        authKey = aolKey . _Just
        authToken = aolOAuthToken . _Just

instance GoogleRequest AppsOperationsList' where
        type Rs AppsOperationsList' = ListOperationsResponse
        request = requestWithRoute defReq appEngineURL
        requestWithRoute r u AppsOperationsList'{..}
          = go _aolAppsId _aolXgafv _aolUploadProtocol
              (Just _aolPp)
              _aolAccessToken
              _aolUploadType
              _aolBearerToken
              _aolFilter
              _aolPageToken
              _aolPageSize
              _aolCallback
              _aolQuotaUser
              (Just _aolPrettyPrint)
              _aolFields
              _aolKey
              _aolOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy AppsOperationsListResource)
                      r
                      u
