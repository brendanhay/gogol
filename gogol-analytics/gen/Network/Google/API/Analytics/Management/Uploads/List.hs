{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.Analytics.Management.Uploads.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | List uploads to which the user has access.
--
-- /See:/ <https://developers.google.com/analytics/ Google Analytics API Reference> for @analytics.management.uploads.list@.
module Network.Google.API.Analytics.Management.Uploads.List
    (
    -- * REST Resource
      ManagementUploadsListAPI

    -- * Creating a Request
    , managementUploadsList'
    , ManagementUploadsList'

    -- * Request Lenses
    , mulQuotaUser
    , mulPrettyPrint
    , mulWebPropertyId
    , mulUserIp
    , mulCustomDataSourceId
    , mulAccountId
    , mulKey
    , mulOauthToken
    , mulStartIndex
    , mulMaxResults
    , mulFields
    , mulAlt
    ) where

import           Network.Google.Analytics.Types
import           Network.Google.Prelude

-- | A resource alias for analytics.management.uploads.list which the
-- 'ManagementUploadsList'' request conforms to.
type ManagementUploadsListAPI =
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
                           QueryParam "key" Text :>
                             QueryParam "oauth_token" Text :>
                               QueryParam "start-index" Nat :>
                                 QueryParam "max-results" Nat :>
                                   QueryParam "fields" Text :>
                                     QueryParam "alt" Alt :> Get '[JSON] Uploads

-- | List uploads to which the user has access.
--
-- /See:/ 'managementUploadsList'' smart constructor.
data ManagementUploadsList' = ManagementUploadsList'
    { _mulQuotaUser          :: !(Maybe Text)
    , _mulPrettyPrint        :: !Bool
    , _mulWebPropertyId      :: !Text
    , _mulUserIp             :: !(Maybe Text)
    , _mulCustomDataSourceId :: !Text
    , _mulAccountId          :: !Text
    , _mulKey                :: !(Maybe Text)
    , _mulOauthToken         :: !(Maybe Text)
    , _mulStartIndex         :: !(Maybe Nat)
    , _mulMaxResults         :: !(Maybe Nat)
    , _mulFields             :: !(Maybe Text)
    , _mulAlt                :: !Alt
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
-- * 'mulUserIp'
--
-- * 'mulCustomDataSourceId'
--
-- * 'mulAccountId'
--
-- * 'mulKey'
--
-- * 'mulOauthToken'
--
-- * 'mulStartIndex'
--
-- * 'mulMaxResults'
--
-- * 'mulFields'
--
-- * 'mulAlt'
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
    , _mulUserIp = Nothing
    , _mulCustomDataSourceId = pMulCustomDataSourceId_
    , _mulAccountId = pMulAccountId_
    , _mulKey = Nothing
    , _mulOauthToken = Nothing
    , _mulStartIndex = Nothing
    , _mulMaxResults = Nothing
    , _mulFields = Nothing
    , _mulAlt = JSON
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
mulUserIp :: Lens' ManagementUploadsList' (Maybe Text)
mulUserIp
  = lens _mulUserIp (\ s a -> s{_mulUserIp = a})

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
mulKey :: Lens' ManagementUploadsList' (Maybe Text)
mulKey = lens _mulKey (\ s a -> s{_mulKey = a})

-- | OAuth 2.0 token for the current user.
mulOauthToken :: Lens' ManagementUploadsList' (Maybe Text)
mulOauthToken
  = lens _mulOauthToken
      (\ s a -> s{_mulOauthToken = a})

-- | A 1-based index of the first upload to retrieve. Use this parameter as a
-- pagination mechanism along with the max-results parameter.
mulStartIndex :: Lens' ManagementUploadsList' (Maybe Natural)
mulStartIndex
  = lens _mulStartIndex
      (\ s a -> s{_mulStartIndex = a})
      . mapping _Nat

-- | The maximum number of uploads to include in this response.
mulMaxResults :: Lens' ManagementUploadsList' (Maybe Natural)
mulMaxResults
  = lens _mulMaxResults
      (\ s a -> s{_mulMaxResults = a})
      . mapping _Nat

-- | Selector specifying which fields to include in a partial response.
mulFields :: Lens' ManagementUploadsList' (Maybe Text)
mulFields
  = lens _mulFields (\ s a -> s{_mulFields = a})

-- | Data format for the response.
mulAlt :: Lens' ManagementUploadsList' Alt
mulAlt = lens _mulAlt (\ s a -> s{_mulAlt = a})

instance GoogleRequest ManagementUploadsList' where
        type Rs ManagementUploadsList' = Uploads
        request = requestWithRoute defReq analyticsURL
        requestWithRoute r u ManagementUploadsList'{..}
          = go _mulQuotaUser (Just _mulPrettyPrint)
              _mulWebPropertyId
              _mulUserIp
              _mulCustomDataSourceId
              _mulAccountId
              _mulKey
              _mulOauthToken
              _mulStartIndex
              _mulMaxResults
              _mulFields
              (Just _mulAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy ManagementUploadsListAPI)
                      r
                      u
