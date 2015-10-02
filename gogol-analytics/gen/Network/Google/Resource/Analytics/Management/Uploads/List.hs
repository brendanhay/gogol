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
-- Module      : Network.Google.Resource.Analytics.Management.Uploads.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | List uploads to which the user has access.
--
-- /See:/ <https://developers.google.com/analytics/ Google Analytics API Reference> for @AnalyticsManagementUploadsList@.
module Network.Google.Resource.Analytics.Management.Uploads.List
    (
    -- * REST Resource
      ManagementUploadsListResource

    -- * Creating a Request
    , managementUploadsList'
    , ManagementUploadsList'

    -- * Request Lenses
    , mulQuotaUser
    , mulPrettyPrint
    , mulWebPropertyId
    , mulUserIP
    , mulCustomDataSourceId
    , mulAccountId
    , mulKey
    , mulOAuthToken
    , mulStartIndex
    , mulMaxResults
    , mulFields
    ) where

import           Network.Google.Analytics.Types
import           Network.Google.Prelude

-- | A resource alias for @AnalyticsManagementUploadsList@ which the
-- 'ManagementUploadsList'' request conforms to.
type ManagementUploadsListResource =
     "management" :>
       "accounts" :>
         Capture "accountId" Text :>
           "webproperties" :>
             Capture "webPropertyId" Text :>
               "customDataSources" :>
                 Capture "customDataSourceId" Text :>
                   "uploads" :>
                     QueryParam "quotaUser" Text :>
                       QueryParam "prettyPrint" Bool :>
                         QueryParam "userIp" Text :>
                           QueryParam "key" Key :>
                             QueryParam "oauth_token" OAuthToken :>
                               QueryParam "start-index" Int32 :>
                                 QueryParam "max-results" Int32 :>
                                   QueryParam "fields" Text :>
                                     QueryParam "alt" AltJSON :>
                                       Get '[JSON] Uploads

-- | List uploads to which the user has access.
--
-- /See:/ 'managementUploadsList'' smart constructor.
data ManagementUploadsList' = ManagementUploadsList'
    { _mulQuotaUser          :: !(Maybe Text)
    , _mulPrettyPrint        :: !Bool
    , _mulWebPropertyId      :: !Text
    , _mulUserIP             :: !(Maybe Text)
    , _mulCustomDataSourceId :: !Text
    , _mulAccountId          :: !Text
    , _mulKey                :: !(Maybe Key)
    , _mulOAuthToken         :: !(Maybe OAuthToken)
    , _mulStartIndex         :: !(Maybe Int32)
    , _mulMaxResults         :: !(Maybe Int32)
    , _mulFields             :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ManagementUploadsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mulQuotaUser'
--
-- * 'mulPrettyPrint'
--
-- * 'mulWebPropertyId'
--
-- * 'mulUserIP'
--
-- * 'mulCustomDataSourceId'
--
-- * 'mulAccountId'
--
-- * 'mulKey'
--
-- * 'mulOAuthToken'
--
-- * 'mulStartIndex'
--
-- * 'mulMaxResults'
--
-- * 'mulFields'
managementUploadsList'
    :: Text -- ^ 'webPropertyId'
    -> Text -- ^ 'customDataSourceId'
    -> Text -- ^ 'accountId'
    -> ManagementUploadsList'
managementUploadsList' pMulWebPropertyId_ pMulCustomDataSourceId_ pMulAccountId_ =
    ManagementUploadsList'
    { _mulQuotaUser = Nothing
    , _mulPrettyPrint = False
    , _mulWebPropertyId = pMulWebPropertyId_
    , _mulUserIP = Nothing
    , _mulCustomDataSourceId = pMulCustomDataSourceId_
    , _mulAccountId = pMulAccountId_
    , _mulKey = Nothing
    , _mulOAuthToken = Nothing
    , _mulStartIndex = Nothing
    , _mulMaxResults = Nothing
    , _mulFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
mulQuotaUser :: Lens' ManagementUploadsList' (Maybe Text)
mulQuotaUser
  = lens _mulQuotaUser (\ s a -> s{_mulQuotaUser = a})

-- | Returns response with indentations and line breaks.
mulPrettyPrint :: Lens' ManagementUploadsList' Bool
mulPrettyPrint
  = lens _mulPrettyPrint
      (\ s a -> s{_mulPrettyPrint = a})

-- | Web property Id for the uploads to retrieve.
mulWebPropertyId :: Lens' ManagementUploadsList' Text
mulWebPropertyId
  = lens _mulWebPropertyId
      (\ s a -> s{_mulWebPropertyId = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
mulUserIP :: Lens' ManagementUploadsList' (Maybe Text)
mulUserIP
  = lens _mulUserIP (\ s a -> s{_mulUserIP = a})

-- | Custom data source Id for uploads to retrieve.
mulCustomDataSourceId :: Lens' ManagementUploadsList' Text
mulCustomDataSourceId
  = lens _mulCustomDataSourceId
      (\ s a -> s{_mulCustomDataSourceId = a})

-- | Account Id for the uploads to retrieve.
mulAccountId :: Lens' ManagementUploadsList' Text
mulAccountId
  = lens _mulAccountId (\ s a -> s{_mulAccountId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
mulKey :: Lens' ManagementUploadsList' (Maybe Key)
mulKey = lens _mulKey (\ s a -> s{_mulKey = a})

-- | OAuth 2.0 token for the current user.
mulOAuthToken :: Lens' ManagementUploadsList' (Maybe OAuthToken)
mulOAuthToken
  = lens _mulOAuthToken
      (\ s a -> s{_mulOAuthToken = a})

-- | A 1-based index of the first upload to retrieve. Use this parameter as a
-- pagination mechanism along with the max-results parameter.
mulStartIndex :: Lens' ManagementUploadsList' (Maybe Int32)
mulStartIndex
  = lens _mulStartIndex
      (\ s a -> s{_mulStartIndex = a})

-- | The maximum number of uploads to include in this response.
mulMaxResults :: Lens' ManagementUploadsList' (Maybe Int32)
mulMaxResults
  = lens _mulMaxResults
      (\ s a -> s{_mulMaxResults = a})

-- | Selector specifying which fields to include in a partial response.
mulFields :: Lens' ManagementUploadsList' (Maybe Text)
mulFields
  = lens _mulFields (\ s a -> s{_mulFields = a})

instance GoogleAuth ManagementUploadsList' where
        authKey = mulKey . _Just
        authToken = mulOAuthToken . _Just

instance GoogleRequest ManagementUploadsList' where
        type Rs ManagementUploadsList' = Uploads
        request = requestWithRoute defReq analyticsURL
        requestWithRoute r u ManagementUploadsList'{..}
          = go _mulQuotaUser (Just _mulPrettyPrint)
              _mulWebPropertyId
              _mulUserIP
              _mulCustomDataSourceId
              _mulAccountId
              _mulKey
              _mulOAuthToken
              _mulStartIndex
              _mulMaxResults
              _mulFields
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy ManagementUploadsListResource)
                      r
                      u
