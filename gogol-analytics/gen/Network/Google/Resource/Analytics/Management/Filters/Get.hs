{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Analytics.Management.Filters.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Returns a filters to which the user has access.
--
-- /See:/ <https://developers.google.com/analytics/ Google Analytics API Reference> for @AnalyticsManagementFiltersGet@.
module Analytics.Management.Filters.Get
    (
    -- * REST Resource
      ManagementFiltersGetAPI

    -- * Creating a Request
    , managementFiltersGet
    , ManagementFiltersGet

    -- * Request Lenses
    , mfgQuotaUser
    , mfgPrettyPrint
    , mfgFilterId
    , mfgUserIp
    , mfgAccountId
    , mfgKey
    , mfgOauthToken
    , mfgFields
    , mfgAlt
    ) where

import           Network.Google.Analytics.Types
import           Network.Google.Prelude

-- | A resource alias for @AnalyticsManagementFiltersGet@ which the
-- 'ManagementFiltersGet' request conforms to.
type ManagementFiltersGetAPI =
     "management" :>
       "accounts" :>
         Capture "accountId" Text :>
           "filters" :>
             Capture "filterId" Text :> Get '[JSON] Filter

-- | Returns a filters to which the user has access.
--
-- /See:/ 'managementFiltersGet' smart constructor.
data ManagementFiltersGet = ManagementFiltersGet
    { _mfgQuotaUser   :: !(Maybe Text)
    , _mfgPrettyPrint :: !Bool
    , _mfgFilterId    :: !Text
    , _mfgUserIp      :: !(Maybe Text)
    , _mfgAccountId   :: !Text
    , _mfgKey         :: !(Maybe Text)
    , _mfgOauthToken  :: !(Maybe Text)
    , _mfgFields      :: !(Maybe Text)
    , _mfgAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ManagementFiltersGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mfgQuotaUser'
--
-- * 'mfgPrettyPrint'
--
-- * 'mfgFilterId'
--
-- * 'mfgUserIp'
--
-- * 'mfgAccountId'
--
-- * 'mfgKey'
--
-- * 'mfgOauthToken'
--
-- * 'mfgFields'
--
-- * 'mfgAlt'
managementFiltersGet
    :: Text -- ^ 'filterId'
    -> Text -- ^ 'accountId'
    -> ManagementFiltersGet
managementFiltersGet pMfgFilterId_ pMfgAccountId_ =
    ManagementFiltersGet
    { _mfgQuotaUser = Nothing
    , _mfgPrettyPrint = False
    , _mfgFilterId = pMfgFilterId_
    , _mfgUserIp = Nothing
    , _mfgAccountId = pMfgAccountId_
    , _mfgKey = Nothing
    , _mfgOauthToken = Nothing
    , _mfgFields = Nothing
    , _mfgAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
mfgQuotaUser :: Lens' ManagementFiltersGet' (Maybe Text)
mfgQuotaUser
  = lens _mfgQuotaUser (\ s a -> s{_mfgQuotaUser = a})

-- | Returns response with indentations and line breaks.
mfgPrettyPrint :: Lens' ManagementFiltersGet' Bool
mfgPrettyPrint
  = lens _mfgPrettyPrint
      (\ s a -> s{_mfgPrettyPrint = a})

-- | Filter ID to retrieve filters for.
mfgFilterId :: Lens' ManagementFiltersGet' Text
mfgFilterId
  = lens _mfgFilterId (\ s a -> s{_mfgFilterId = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
mfgUserIp :: Lens' ManagementFiltersGet' (Maybe Text)
mfgUserIp
  = lens _mfgUserIp (\ s a -> s{_mfgUserIp = a})

-- | Account ID to retrieve filters for.
mfgAccountId :: Lens' ManagementFiltersGet' Text
mfgAccountId
  = lens _mfgAccountId (\ s a -> s{_mfgAccountId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
mfgKey :: Lens' ManagementFiltersGet' (Maybe Text)
mfgKey = lens _mfgKey (\ s a -> s{_mfgKey = a})

-- | OAuth 2.0 token for the current user.
mfgOauthToken :: Lens' ManagementFiltersGet' (Maybe Text)
mfgOauthToken
  = lens _mfgOauthToken
      (\ s a -> s{_mfgOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
mfgFields :: Lens' ManagementFiltersGet' (Maybe Text)
mfgFields
  = lens _mfgFields (\ s a -> s{_mfgFields = a})

-- | Data format for the response.
mfgAlt :: Lens' ManagementFiltersGet' Text
mfgAlt = lens _mfgAlt (\ s a -> s{_mfgAlt = a})

instance GoogleRequest ManagementFiltersGet' where
        type Rs ManagementFiltersGet' = Filter
        request = requestWithRoute defReq analyticsURL
        requestWithRoute r u ManagementFiltersGet{..}
          = go _mfgQuotaUser _mfgPrettyPrint _mfgFilterId
              _mfgUserIp
              _mfgAccountId
              _mfgKey
              _mfgOauthToken
              _mfgFields
              _mfgAlt
          where go
                  = clientWithRoute
                      (Proxy :: Proxy ManagementFiltersGetAPI)
                      r
                      u
