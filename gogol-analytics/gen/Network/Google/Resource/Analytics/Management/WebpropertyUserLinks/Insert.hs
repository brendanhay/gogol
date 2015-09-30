{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Analytics.Management.WebpropertyUserLinks.Insert
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Adds a new user to the given web property.
--
-- /See:/ <https://developers.google.com/analytics/ Google Analytics API Reference> for @AnalyticsManagementWebpropertyUserLinksInsert@.
module Analytics.Management.WebpropertyUserLinks.Insert
    (
    -- * REST Resource
      ManagementWebpropertyUserLinksInsertAPI

    -- * Creating a Request
    , managementWebpropertyUserLinksInsert
    , ManagementWebpropertyUserLinksInsert

    -- * Request Lenses
    , mwuliQuotaUser
    , mwuliPrettyPrint
    , mwuliWebPropertyId
    , mwuliUserIp
    , mwuliAccountId
    , mwuliKey
    , mwuliOauthToken
    , mwuliFields
    , mwuliAlt
    ) where

import           Network.Google.Analytics.Types
import           Network.Google.Prelude

-- | A resource alias for @AnalyticsManagementWebpropertyUserLinksInsert@ which the
-- 'ManagementWebpropertyUserLinksInsert' request conforms to.
type ManagementWebpropertyUserLinksInsertAPI =
     "management" :>
       "accounts" :>
         Capture "accountId" Text :>
           "webproperties" :>
             Capture "webPropertyId" Text :>
               "entityUserLinks" :> Post '[JSON] EntityUserLink

-- | Adds a new user to the given web property.
--
-- /See:/ 'managementWebpropertyUserLinksInsert' smart constructor.
data ManagementWebpropertyUserLinksInsert = ManagementWebpropertyUserLinksInsert
    { _mwuliQuotaUser     :: !(Maybe Text)
    , _mwuliPrettyPrint   :: !Bool
    , _mwuliWebPropertyId :: !Text
    , _mwuliUserIp        :: !(Maybe Text)
    , _mwuliAccountId     :: !Text
    , _mwuliKey           :: !(Maybe Text)
    , _mwuliOauthToken    :: !(Maybe Text)
    , _mwuliFields        :: !(Maybe Text)
    , _mwuliAlt           :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ManagementWebpropertyUserLinksInsert'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mwuliQuotaUser'
--
-- * 'mwuliPrettyPrint'
--
-- * 'mwuliWebPropertyId'
--
-- * 'mwuliUserIp'
--
-- * 'mwuliAccountId'
--
-- * 'mwuliKey'
--
-- * 'mwuliOauthToken'
--
-- * 'mwuliFields'
--
-- * 'mwuliAlt'
managementWebpropertyUserLinksInsert
    :: Text -- ^ 'webPropertyId'
    -> Text -- ^ 'accountId'
    -> ManagementWebpropertyUserLinksInsert
managementWebpropertyUserLinksInsert pMwuliWebPropertyId_ pMwuliAccountId_ =
    ManagementWebpropertyUserLinksInsert
    { _mwuliQuotaUser = Nothing
    , _mwuliPrettyPrint = False
    , _mwuliWebPropertyId = pMwuliWebPropertyId_
    , _mwuliUserIp = Nothing
    , _mwuliAccountId = pMwuliAccountId_
    , _mwuliKey = Nothing
    , _mwuliOauthToken = Nothing
    , _mwuliFields = Nothing
    , _mwuliAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
mwuliQuotaUser :: Lens' ManagementWebpropertyUserLinksInsert' (Maybe Text)
mwuliQuotaUser
  = lens _mwuliQuotaUser
      (\ s a -> s{_mwuliQuotaUser = a})

-- | Returns response with indentations and line breaks.
mwuliPrettyPrint :: Lens' ManagementWebpropertyUserLinksInsert' Bool
mwuliPrettyPrint
  = lens _mwuliPrettyPrint
      (\ s a -> s{_mwuliPrettyPrint = a})

-- | Web Property ID to create the user link for.
mwuliWebPropertyId :: Lens' ManagementWebpropertyUserLinksInsert' Text
mwuliWebPropertyId
  = lens _mwuliWebPropertyId
      (\ s a -> s{_mwuliWebPropertyId = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
mwuliUserIp :: Lens' ManagementWebpropertyUserLinksInsert' (Maybe Text)
mwuliUserIp
  = lens _mwuliUserIp (\ s a -> s{_mwuliUserIp = a})

-- | Account ID to create the user link for.
mwuliAccountId :: Lens' ManagementWebpropertyUserLinksInsert' Text
mwuliAccountId
  = lens _mwuliAccountId
      (\ s a -> s{_mwuliAccountId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
mwuliKey :: Lens' ManagementWebpropertyUserLinksInsert' (Maybe Text)
mwuliKey = lens _mwuliKey (\ s a -> s{_mwuliKey = a})

-- | OAuth 2.0 token for the current user.
mwuliOauthToken :: Lens' ManagementWebpropertyUserLinksInsert' (Maybe Text)
mwuliOauthToken
  = lens _mwuliOauthToken
      (\ s a -> s{_mwuliOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
mwuliFields :: Lens' ManagementWebpropertyUserLinksInsert' (Maybe Text)
mwuliFields
  = lens _mwuliFields (\ s a -> s{_mwuliFields = a})

-- | Data format for the response.
mwuliAlt :: Lens' ManagementWebpropertyUserLinksInsert' Text
mwuliAlt = lens _mwuliAlt (\ s a -> s{_mwuliAlt = a})

instance GoogleRequest
         ManagementWebpropertyUserLinksInsert' where
        type Rs ManagementWebpropertyUserLinksInsert' =
             EntityUserLink
        request = requestWithRoute defReq analyticsURL
        requestWithRoute r u
          ManagementWebpropertyUserLinksInsert{..}
          = go _mwuliQuotaUser _mwuliPrettyPrint
              _mwuliWebPropertyId
              _mwuliUserIp
              _mwuliAccountId
              _mwuliKey
              _mwuliOauthToken
              _mwuliFields
              _mwuliAlt
          where go
                  = clientWithRoute
                      (Proxy ::
                         Proxy ManagementWebpropertyUserLinksInsertAPI)
                      r
                      u
