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
-- Module      : Network.Google.Resource.Analytics.Management.Filters.Insert
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Create a new filter.
--
-- /See:/ <https://developers.google.com/analytics/ Google Analytics API Reference> for @AnalyticsManagementFiltersInsert@.
module Network.Google.Resource.Analytics.Management.Filters.Insert
    (
    -- * REST Resource
      ManagementFiltersInsertResource

    -- * Creating a Request
    , managementFiltersInsert'
    , ManagementFiltersInsert'

    -- * Request Lenses
    , mfiQuotaUser
    , mfiPrettyPrint
    , mfiUserIP
    , mfiPayload
    , mfiAccountId
    , mfiKey
    , mfiOAuthToken
    , mfiFields
    ) where

import           Network.Google.Analytics.Types
import           Network.Google.Prelude

-- | A resource alias for @AnalyticsManagementFiltersInsert@ which the
-- 'ManagementFiltersInsert'' request conforms to.
type ManagementFiltersInsertResource =
     "management" :>
       "accounts" :>
         Capture "accountId" Text :>
           "filters" :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "key" AuthKey :>
                       QueryParam "oauth_token" OAuthToken :>
                         QueryParam "alt" AltJSON :>
                           ReqBody '[JSON] Filter :> Post '[JSON] Filter

-- | Create a new filter.
--
-- /See:/ 'managementFiltersInsert'' smart constructor.
data ManagementFiltersInsert' = ManagementFiltersInsert'
    { _mfiQuotaUser   :: !(Maybe Text)
    , _mfiPrettyPrint :: !Bool
    , _mfiUserIP      :: !(Maybe Text)
    , _mfiPayload     :: !Filter
    , _mfiAccountId   :: !Text
    , _mfiKey         :: !(Maybe AuthKey)
    , _mfiOAuthToken  :: !(Maybe OAuthToken)
    , _mfiFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ManagementFiltersInsert'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mfiQuotaUser'
--
-- * 'mfiPrettyPrint'
--
-- * 'mfiUserIP'
--
-- * 'mfiPayload'
--
-- * 'mfiAccountId'
--
-- * 'mfiKey'
--
-- * 'mfiOAuthToken'
--
-- * 'mfiFields'
managementFiltersInsert'
    :: Filter -- ^ 'payload'
    -> Text -- ^ 'accountId'
    -> ManagementFiltersInsert'
managementFiltersInsert' pMfiPayload_ pMfiAccountId_ =
    ManagementFiltersInsert'
    { _mfiQuotaUser = Nothing
    , _mfiPrettyPrint = False
    , _mfiUserIP = Nothing
    , _mfiPayload = pMfiPayload_
    , _mfiAccountId = pMfiAccountId_
    , _mfiKey = Nothing
    , _mfiOAuthToken = Nothing
    , _mfiFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
mfiQuotaUser :: Lens' ManagementFiltersInsert' (Maybe Text)
mfiQuotaUser
  = lens _mfiQuotaUser (\ s a -> s{_mfiQuotaUser = a})

-- | Returns response with indentations and line breaks.
mfiPrettyPrint :: Lens' ManagementFiltersInsert' Bool
mfiPrettyPrint
  = lens _mfiPrettyPrint
      (\ s a -> s{_mfiPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
mfiUserIP :: Lens' ManagementFiltersInsert' (Maybe Text)
mfiUserIP
  = lens _mfiUserIP (\ s a -> s{_mfiUserIP = a})

-- | Multipart request metadata.
mfiPayload :: Lens' ManagementFiltersInsert' Filter
mfiPayload
  = lens _mfiPayload (\ s a -> s{_mfiPayload = a})

-- | Account ID to create filter for.
mfiAccountId :: Lens' ManagementFiltersInsert' Text
mfiAccountId
  = lens _mfiAccountId (\ s a -> s{_mfiAccountId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
mfiKey :: Lens' ManagementFiltersInsert' (Maybe AuthKey)
mfiKey = lens _mfiKey (\ s a -> s{_mfiKey = a})

-- | OAuth 2.0 token for the current user.
mfiOAuthToken :: Lens' ManagementFiltersInsert' (Maybe OAuthToken)
mfiOAuthToken
  = lens _mfiOAuthToken
      (\ s a -> s{_mfiOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
mfiFields :: Lens' ManagementFiltersInsert' (Maybe Text)
mfiFields
  = lens _mfiFields (\ s a -> s{_mfiFields = a})

instance GoogleAuth ManagementFiltersInsert' where
        _AuthKey = mfiKey . _Just
        _AuthToken = mfiOAuthToken . _Just

instance GoogleRequest ManagementFiltersInsert' where
        type Rs ManagementFiltersInsert' = Filter
        request = requestWith analyticsRequest
        requestWith rq ManagementFiltersInsert'{..}
          = go _mfiAccountId _mfiQuotaUser
              (Just _mfiPrettyPrint)
              _mfiUserIP
              _mfiFields
              _mfiKey
              _mfiOAuthToken
              (Just AltJSON)
              _mfiPayload
          where go
                  = clientBuild
                      (Proxy :: Proxy ManagementFiltersInsertResource)
                      rq
