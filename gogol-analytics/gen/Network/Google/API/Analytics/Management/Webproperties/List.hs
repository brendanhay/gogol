{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.Analytics.Management.Webproperties.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Lists web properties to which the user has access.
--
-- /See:/ <https://developers.google.com/analytics/ Google Analytics API Reference> for @analytics.management.webproperties.list@.
module Network.Google.API.Analytics.Management.Webproperties.List
    (
    -- * REST Resource
      ManagementWebpropertiesListAPI

    -- * Creating a Request
    , managementWebpropertiesList'
    , ManagementWebpropertiesList'

    -- * Request Lenses
    , mwlQuotaUser
    , mwlPrettyPrint
    , mwlUserIp
    , mwlAccountId
    , mwlKey
    , mwlOauthToken
    , mwlStartIndex
    , mwlMaxResults
    , mwlFields
    , mwlAlt
    ) where

import           Network.Google.Analytics.Types
import           Network.Google.Prelude

-- | A resource alias for analytics.management.webproperties.list which the
-- 'ManagementWebpropertiesList'' request conforms to.
type ManagementWebpropertiesListAPI =
     "management" :>
       "accounts" :>
         Capture "accountId" Text :>
           "webproperties" :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "key" Text :>
                     QueryParam "oauth_token" Text :>
                       QueryParam "start-index" Nat :>
                         QueryParam "max-results" Int32 :>
                           QueryParam "fields" Text :>
                             QueryParam "alt" Alt :> Get '[JSON] Webproperties

-- | Lists web properties to which the user has access.
--
-- /See:/ 'managementWebpropertiesList'' smart constructor.
data ManagementWebpropertiesList' = ManagementWebpropertiesList'
    { _mwlQuotaUser   :: !(Maybe Text)
    , _mwlPrettyPrint :: !Bool
    , _mwlUserIp      :: !(Maybe Text)
    , _mwlAccountId   :: !Text
    , _mwlKey         :: !(Maybe Text)
    , _mwlOauthToken  :: !(Maybe Text)
    , _mwlStartIndex  :: !(Maybe Nat)
    , _mwlMaxResults  :: !(Maybe Int32)
    , _mwlFields      :: !(Maybe Text)
    , _mwlAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ManagementWebpropertiesList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mwlQuotaUser'
--
-- * 'mwlPrettyPrint'
--
-- * 'mwlUserIp'
--
-- * 'mwlAccountId'
--
-- * 'mwlKey'
--
-- * 'mwlOauthToken'
--
-- * 'mwlStartIndex'
--
-- * 'mwlMaxResults'
--
-- * 'mwlFields'
--
-- * 'mwlAlt'
managementWebpropertiesList'
    :: Text -- ^ 'accountId'
    -> ManagementWebpropertiesList'
managementWebpropertiesList' pMwlAccountId_ =
    ManagementWebpropertiesList'
    { _mwlQuotaUser = Nothing
    , _mwlPrettyPrint = False
    , _mwlUserIp = Nothing
    , _mwlAccountId = pMwlAccountId_
    , _mwlKey = Nothing
    , _mwlOauthToken = Nothing
    , _mwlStartIndex = Nothing
    , _mwlMaxResults = Nothing
    , _mwlFields = Nothing
    , _mwlAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
mwlQuotaUser :: Lens' ManagementWebpropertiesList' (Maybe Text)
mwlQuotaUser
  = lens _mwlQuotaUser (\ s a -> s{_mwlQuotaUser = a})

-- | Returns response with indentations and line breaks.
mwlPrettyPrint :: Lens' ManagementWebpropertiesList' Bool
mwlPrettyPrint
  = lens _mwlPrettyPrint
      (\ s a -> s{_mwlPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
mwlUserIp :: Lens' ManagementWebpropertiesList' (Maybe Text)
mwlUserIp
  = lens _mwlUserIp (\ s a -> s{_mwlUserIp = a})

-- | Account ID to retrieve web properties for. Can either be a specific
-- account ID or \'~all\', which refers to all the accounts that user has
-- access to.
mwlAccountId :: Lens' ManagementWebpropertiesList' Text
mwlAccountId
  = lens _mwlAccountId (\ s a -> s{_mwlAccountId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
mwlKey :: Lens' ManagementWebpropertiesList' (Maybe Text)
mwlKey = lens _mwlKey (\ s a -> s{_mwlKey = a})

-- | OAuth 2.0 token for the current user.
mwlOauthToken :: Lens' ManagementWebpropertiesList' (Maybe Text)
mwlOauthToken
  = lens _mwlOauthToken
      (\ s a -> s{_mwlOauthToken = a})

-- | An index of the first entity to retrieve. Use this parameter as a
-- pagination mechanism along with the max-results parameter.
mwlStartIndex :: Lens' ManagementWebpropertiesList' (Maybe Natural)
mwlStartIndex
  = lens _mwlStartIndex
      (\ s a -> s{_mwlStartIndex = a})
      . mapping _Nat

-- | The maximum number of web properties to include in this response.
mwlMaxResults :: Lens' ManagementWebpropertiesList' (Maybe Int32)
mwlMaxResults
  = lens _mwlMaxResults
      (\ s a -> s{_mwlMaxResults = a})

-- | Selector specifying which fields to include in a partial response.
mwlFields :: Lens' ManagementWebpropertiesList' (Maybe Text)
mwlFields
  = lens _mwlFields (\ s a -> s{_mwlFields = a})

-- | Data format for the response.
mwlAlt :: Lens' ManagementWebpropertiesList' Alt
mwlAlt = lens _mwlAlt (\ s a -> s{_mwlAlt = a})

instance GoogleRequest ManagementWebpropertiesList'
         where
        type Rs ManagementWebpropertiesList' = Webproperties
        request = requestWithRoute defReq analyticsURL
        requestWithRoute r u ManagementWebpropertiesList'{..}
          = go _mwlQuotaUser (Just _mwlPrettyPrint) _mwlUserIp
              _mwlAccountId
              _mwlKey
              _mwlOauthToken
              _mwlStartIndex
              _mwlMaxResults
              _mwlFields
              (Just _mwlAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy ManagementWebpropertiesListAPI)
                      r
                      u
