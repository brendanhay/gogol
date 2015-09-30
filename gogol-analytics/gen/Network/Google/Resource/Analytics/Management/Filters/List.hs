{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

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
module Analytics.Management.Filters.List
    (
    -- * REST Resource
      ManagementFiltersListAPI

    -- * Creating a Request
    , managementFiltersList
    , ManagementFiltersList

    -- * Request Lenses
    , mflQuotaUser
    , mflPrettyPrint
    , mflUserIp
    , mflAccountId
    , mflKey
    , mflOauthToken
    , mflStartIndex
    , mflMaxResults
    , mflFields
    , mflAlt
    ) where

import           Network.Google.Analytics.Types
import           Network.Google.Prelude

-- | A resource alias for @AnalyticsManagementFiltersList@ which the
-- 'ManagementFiltersList' request conforms to.
type ManagementFiltersListAPI =
     "management" :>
       "accounts" :>
         Capture "accountId" Text :>
           "filters" :>
             QueryParam "start-index" Int32 :>
               QueryParam "max-results" Int32 :> Get '[JSON] Filters

-- | Lists all filters for an account
--
-- /See:/ 'managementFiltersList' smart constructor.
data ManagementFiltersList = ManagementFiltersList
    { _mflQuotaUser   :: !(Maybe Text)
    , _mflPrettyPrint :: !Bool
    , _mflUserIp      :: !(Maybe Text)
    , _mflAccountId   :: !Text
    , _mflKey         :: !(Maybe Text)
    , _mflOauthToken  :: !(Maybe Text)
    , _mflStartIndex  :: !(Maybe Int32)
    , _mflMaxResults  :: !(Maybe Int32)
    , _mflFields      :: !(Maybe Text)
    , _mflAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ManagementFiltersList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mflQuotaUser'
--
-- * 'mflPrettyPrint'
--
-- * 'mflUserIp'
--
-- * 'mflAccountId'
--
-- * 'mflKey'
--
-- * 'mflOauthToken'
--
-- * 'mflStartIndex'
--
-- * 'mflMaxResults'
--
-- * 'mflFields'
--
-- * 'mflAlt'
managementFiltersList
    :: Text -- ^ 'accountId'
    -> ManagementFiltersList
managementFiltersList pMflAccountId_ =
    ManagementFiltersList
    { _mflQuotaUser = Nothing
    , _mflPrettyPrint = False
    , _mflUserIp = Nothing
    , _mflAccountId = pMflAccountId_
    , _mflKey = Nothing
    , _mflOauthToken = Nothing
    , _mflStartIndex = Nothing
    , _mflMaxResults = Nothing
    , _mflFields = Nothing
    , _mflAlt = "json"
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
mflUserIp :: Lens' ManagementFiltersList' (Maybe Text)
mflUserIp
  = lens _mflUserIp (\ s a -> s{_mflUserIp = a})

-- | Account ID to retrieve filters for.
mflAccountId :: Lens' ManagementFiltersList' Text
mflAccountId
  = lens _mflAccountId (\ s a -> s{_mflAccountId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
mflKey :: Lens' ManagementFiltersList' (Maybe Text)
mflKey = lens _mflKey (\ s a -> s{_mflKey = a})

-- | OAuth 2.0 token for the current user.
mflOauthToken :: Lens' ManagementFiltersList' (Maybe Text)
mflOauthToken
  = lens _mflOauthToken
      (\ s a -> s{_mflOauthToken = a})

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

-- | Data format for the response.
mflAlt :: Lens' ManagementFiltersList' Text
mflAlt = lens _mflAlt (\ s a -> s{_mflAlt = a})

instance GoogleRequest ManagementFiltersList' where
        type Rs ManagementFiltersList' = Filters
        request = requestWithRoute defReq analyticsURL
        requestWithRoute r u ManagementFiltersList{..}
          = go _mflQuotaUser _mflPrettyPrint _mflUserIp
              _mflAccountId
              _mflKey
              _mflOauthToken
              _mflStartIndex
              _mflMaxResults
              _mflFields
              _mflAlt
          where go
                  = clientWithRoute
                      (Proxy :: Proxy ManagementFiltersListAPI)
                      r
                      u
