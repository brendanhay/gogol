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
-- Module      : Network.Google.Resource.Analytics.Management.Uploads.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | List uploads to which the user has access.
--
-- /See:/ <https://developers.google.com/analytics/ Google Analytics API Reference> for @AnalyticsManagementUploadsGet@.
module Network.Google.Resource.Analytics.Management.Uploads.Get
    (
    -- * REST Resource
      ManagementUploadsGetResource

    -- * Creating a Request
    , managementUploadsGet'
    , ManagementUploadsGet'

    -- * Request Lenses
    , mugQuotaUser
    , mugPrettyPrint
    , mugWebPropertyId
    , mugUserIP
    , mugCustomDataSourceId
    , mugAccountId
    , mugKey
    , mugOAuthToken
    , mugUploadId
    , mugFields
    ) where

import           Network.Google.Analytics.Types
import           Network.Google.Prelude

-- | A resource alias for @AnalyticsManagementUploadsGet@ which the
-- 'ManagementUploadsGet'' request conforms to.
type ManagementUploadsGetResource =
     "management" :>
       "accounts" :>
         Capture "accountId" Text :>
           "webproperties" :>
             Capture "webPropertyId" Text :>
               "customDataSources" :>
                 Capture "customDataSourceId" Text :>
                   "uploads" :>
                     Capture "uploadId" Text :>
                       QueryParam "quotaUser" Text :>
                         QueryParam "prettyPrint" Bool :>
                           QueryParam "userIp" Text :>
                             QueryParam "fields" Text :>
                               QueryParam "key" Key :>
                                 QueryParam "oauth_token" OAuthToken :>
                                   QueryParam "alt" AltJSON :>
                                     Get '[JSON] Upload

-- | List uploads to which the user has access.
--
-- /See:/ 'managementUploadsGet'' smart constructor.
data ManagementUploadsGet' = ManagementUploadsGet'
    { _mugQuotaUser          :: !(Maybe Text)
    , _mugPrettyPrint        :: !Bool
    , _mugWebPropertyId      :: !Text
    , _mugUserIP             :: !(Maybe Text)
    , _mugCustomDataSourceId :: !Text
    , _mugAccountId          :: !Text
    , _mugKey                :: !(Maybe Key)
    , _mugOAuthToken         :: !(Maybe OAuthToken)
    , _mugUploadId           :: !Text
    , _mugFields             :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ManagementUploadsGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mugQuotaUser'
--
-- * 'mugPrettyPrint'
--
-- * 'mugWebPropertyId'
--
-- * 'mugUserIP'
--
-- * 'mugCustomDataSourceId'
--
-- * 'mugAccountId'
--
-- * 'mugKey'
--
-- * 'mugOAuthToken'
--
-- * 'mugUploadId'
--
-- * 'mugFields'
managementUploadsGet'
    :: Text -- ^ 'webPropertyId'
    -> Text -- ^ 'customDataSourceId'
    -> Text -- ^ 'accountId'
    -> Text -- ^ 'uploadId'
    -> ManagementUploadsGet'
managementUploadsGet' pMugWebPropertyId_ pMugCustomDataSourceId_ pMugAccountId_ pMugUploadId_ =
    ManagementUploadsGet'
    { _mugQuotaUser = Nothing
    , _mugPrettyPrint = False
    , _mugWebPropertyId = pMugWebPropertyId_
    , _mugUserIP = Nothing
    , _mugCustomDataSourceId = pMugCustomDataSourceId_
    , _mugAccountId = pMugAccountId_
    , _mugKey = Nothing
    , _mugOAuthToken = Nothing
    , _mugUploadId = pMugUploadId_
    , _mugFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
mugQuotaUser :: Lens' ManagementUploadsGet' (Maybe Text)
mugQuotaUser
  = lens _mugQuotaUser (\ s a -> s{_mugQuotaUser = a})

-- | Returns response with indentations and line breaks.
mugPrettyPrint :: Lens' ManagementUploadsGet' Bool
mugPrettyPrint
  = lens _mugPrettyPrint
      (\ s a -> s{_mugPrettyPrint = a})

-- | Web property Id for the upload to retrieve.
mugWebPropertyId :: Lens' ManagementUploadsGet' Text
mugWebPropertyId
  = lens _mugWebPropertyId
      (\ s a -> s{_mugWebPropertyId = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
mugUserIP :: Lens' ManagementUploadsGet' (Maybe Text)
mugUserIP
  = lens _mugUserIP (\ s a -> s{_mugUserIP = a})

-- | Custom data source Id for upload to retrieve.
mugCustomDataSourceId :: Lens' ManagementUploadsGet' Text
mugCustomDataSourceId
  = lens _mugCustomDataSourceId
      (\ s a -> s{_mugCustomDataSourceId = a})

-- | Account Id for the upload to retrieve.
mugAccountId :: Lens' ManagementUploadsGet' Text
mugAccountId
  = lens _mugAccountId (\ s a -> s{_mugAccountId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
mugKey :: Lens' ManagementUploadsGet' (Maybe Key)
mugKey = lens _mugKey (\ s a -> s{_mugKey = a})

-- | OAuth 2.0 token for the current user.
mugOAuthToken :: Lens' ManagementUploadsGet' (Maybe OAuthToken)
mugOAuthToken
  = lens _mugOAuthToken
      (\ s a -> s{_mugOAuthToken = a})

-- | Upload Id to retrieve.
mugUploadId :: Lens' ManagementUploadsGet' Text
mugUploadId
  = lens _mugUploadId (\ s a -> s{_mugUploadId = a})

-- | Selector specifying which fields to include in a partial response.
mugFields :: Lens' ManagementUploadsGet' (Maybe Text)
mugFields
  = lens _mugFields (\ s a -> s{_mugFields = a})

instance GoogleAuth ManagementUploadsGet' where
        authKey = mugKey . _Just
        authToken = mugOAuthToken . _Just

instance GoogleRequest ManagementUploadsGet' where
        type Rs ManagementUploadsGet' = Upload
        request = requestWithRoute defReq analyticsURL
        requestWithRoute r u ManagementUploadsGet'{..}
          = go _mugAccountId _mugWebPropertyId
              _mugCustomDataSourceId
              _mugUploadId
              _mugQuotaUser
              (Just _mugPrettyPrint)
              _mugUserIP
              _mugFields
              _mugKey
              _mugOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy ManagementUploadsGetResource)
                      r
                      u
