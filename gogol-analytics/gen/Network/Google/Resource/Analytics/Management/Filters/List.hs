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
-- Module      : Network.Google.Resource.Analytics.Management.Filters.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Lists all filters for an account
--
-- /See:/ <https://developers.google.com/analytics/ Google Analytics API Reference> for @AnalyticsManagementFiltersList@.
module Network.Google.Resource.Analytics.Management.Filters.List
    (
    -- * REST Resource
      ManagementFiltersListResource

    -- * Creating a Request
    , managementFiltersList'
    , ManagementFiltersList'

    -- * Request Lenses
    , mflQuotaUser
    , mflPrettyPrint
    , mflUserIP
    , mflAccountId
    , mflKey
    , mflOAuthToken
    , mflStartIndex
    , mflMaxResults
    , mflFields
    ) where

import           Network.Google.Analytics.Types
import           Network.Google.Prelude

-- | A resource alias for @AnalyticsManagementFiltersList@ method which the
-- 'ManagementFiltersList'' request conforms to.
type ManagementFiltersListResource =
     "management" :>
       "accounts" :>
         Capture "accountId" Text :>
           "filters" :>
             QueryParam "start-index" Int32 :>
               QueryParam "max-results" Int32 :>
                 QueryParam "quotaUser" Text :>
                   QueryParam "prettyPrint" Bool :>
                     QueryParam "userIp" Text :>
                       QueryParam "fields" Text :>
                         QueryParam "key" AuthKey :>
                           Header "Authorization" OAuthToken :>
                             QueryParam "alt" AltJSON :> Get '[JSON] Filters

-- | Lists all filters for an account
--
-- /See:/ 'managementFiltersList'' smart constructor.
data ManagementFiltersList' = ManagementFiltersList'
    { _mflQuotaUser   :: !(Maybe Text)
    , _mflPrettyPrint :: !Bool
    , _mflUserIP      :: !(Maybe Text)
    , _mflAccountId   :: !Text
    , _mflKey         :: !(Maybe AuthKey)
    , _mflOAuthToken  :: !(Maybe OAuthToken)
    , _mflStartIndex  :: !(Maybe Int32)
    , _mflMaxResults  :: !(Maybe Int32)
    , _mflFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ManagementFiltersList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mflQuotaUser'
--
-- * 'mflPrettyPrint'
--
-- * 'mflUserIP'
--
-- * 'mflAccountId'
--
-- * 'mflKey'
--
-- * 'mflOAuthToken'
--
-- * 'mflStartIndex'
--
-- * 'mflMaxResults'
--
-- * 'mflFields'
managementFiltersList'
    :: Text -- ^ 'accountId'
    -> ManagementFiltersList'
managementFiltersList' pMflAccountId_ =
    ManagementFiltersList'
    { _mflQuotaUser = Nothing
    , _mflPrettyPrint = False
    , _mflUserIP = Nothing
    , _mflAccountId = pMflAccountId_
    , _mflKey = Nothing
    , _mflOAuthToken = Nothing
    , _mflStartIndex = Nothing
    , _mflMaxResults = Nothing
    , _mflFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
mflQuotaUser :: Lens' ManagementFiltersList' (Maybe Text)
mflQuotaUser
  = lens _mflQuotaUser (\ s a -> s{_mflQuotaUser = a})

-- | Returns response with indentations and line breaks.
mflPrettyPrint :: Lens' ManagementFiltersList' Bool
mflPrettyPrint
  = lens _mflPrettyPrint
      (\ s a -> s{_mflPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
mflUserIP :: Lens' ManagementFiltersList' (Maybe Text)
mflUserIP
  = lens _mflUserIP (\ s a -> s{_mflUserIP = a})

-- | Account ID to retrieve filters for.
mflAccountId :: Lens' ManagementFiltersList' Text
mflAccountId
  = lens _mflAccountId (\ s a -> s{_mflAccountId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
mflKey :: Lens' ManagementFiltersList' (Maybe AuthKey)
mflKey = lens _mflKey (\ s a -> s{_mflKey = a})

-- | OAuth 2.0 token for the current user.
mflOAuthToken :: Lens' ManagementFiltersList' (Maybe OAuthToken)
mflOAuthToken
  = lens _mflOAuthToken
      (\ s a -> s{_mflOAuthToken = a})

-- | An index of the first entity to retrieve. Use this parameter as a
-- pagination mechanism along with the max-results parameter.
mflStartIndex :: Lens' ManagementFiltersList' (Maybe Int32)
mflStartIndex
  = lens _mflStartIndex
      (\ s a -> s{_mflStartIndex = a})

-- | The maximum number of filters to include in this response.
mflMaxResults :: Lens' ManagementFiltersList' (Maybe Int32)
mflMaxResults
  = lens _mflMaxResults
      (\ s a -> s{_mflMaxResults = a})

-- | Selector specifying which fields to include in a partial response.
mflFields :: Lens' ManagementFiltersList' (Maybe Text)
mflFields
  = lens _mflFields (\ s a -> s{_mflFields = a})

instance GoogleAuth ManagementFiltersList' where
        _AuthKey = mflKey . _Just
        _AuthToken = mflOAuthToken . _Just

instance GoogleRequest ManagementFiltersList' where
        type Rs ManagementFiltersList' = Filters
        request = requestWith analyticsRequest
        requestWith rq ManagementFiltersList'{..}
          = go _mflAccountId _mflStartIndex _mflMaxResults
              _mflQuotaUser
              (Just _mflPrettyPrint)
              _mflUserIP
              _mflFields
              _mflKey
              _mflOAuthToken
              (Just AltJSON)
          where go
                  = clientBuild
                      (Proxy :: Proxy ManagementFiltersListResource)
                      rq
