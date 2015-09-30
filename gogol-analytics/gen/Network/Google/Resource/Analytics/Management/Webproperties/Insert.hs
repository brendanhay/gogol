{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Analytics.Management.Webproperties.Insert
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Create a new property if the account has fewer than 20 properties. Web
-- properties are visible in the Google Analytics interface only if they
-- have at least one profile.
--
-- /See:/ <https://developers.google.com/analytics/ Google Analytics API Reference> for @AnalyticsManagementWebpropertiesInsert@.
module Analytics.Management.Webproperties.Insert
    (
    -- * REST Resource
      ManagementWebpropertiesInsertAPI

    -- * Creating a Request
    , managementWebpropertiesInsert
    , ManagementWebpropertiesInsert

    -- * Request Lenses
    , mwiQuotaUser
    , mwiPrettyPrint
    , mwiUserIp
    , mwiAccountId
    , mwiKey
    , mwiOauthToken
    , mwiFields
    , mwiAlt
    ) where

import           Network.Google.Analytics.Types
import           Network.Google.Prelude

-- | A resource alias for @AnalyticsManagementWebpropertiesInsert@ which the
-- 'ManagementWebpropertiesInsert' request conforms to.
type ManagementWebpropertiesInsertAPI =
     "management" :>
       "accounts" :>
         Capture "accountId" Text :>
           "webproperties" :> Post '[JSON] Webproperty

-- | Create a new property if the account has fewer than 20 properties. Web
-- properties are visible in the Google Analytics interface only if they
-- have at least one profile.
--
-- /See:/ 'managementWebpropertiesInsert' smart constructor.
data ManagementWebpropertiesInsert = ManagementWebpropertiesInsert
    { _mwiQuotaUser   :: !(Maybe Text)
    , _mwiPrettyPrint :: !Bool
    , _mwiUserIp      :: !(Maybe Text)
    , _mwiAccountId   :: !Text
    , _mwiKey         :: !(Maybe Text)
    , _mwiOauthToken  :: !(Maybe Text)
    , _mwiFields      :: !(Maybe Text)
    , _mwiAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ManagementWebpropertiesInsert'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mwiQuotaUser'
--
-- * 'mwiPrettyPrint'
--
-- * 'mwiUserIp'
--
-- * 'mwiAccountId'
--
-- * 'mwiKey'
--
-- * 'mwiOauthToken'
--
-- * 'mwiFields'
--
-- * 'mwiAlt'
managementWebpropertiesInsert
    :: Text -- ^ 'accountId'
    -> ManagementWebpropertiesInsert
managementWebpropertiesInsert pMwiAccountId_ =
    ManagementWebpropertiesInsert
    { _mwiQuotaUser = Nothing
    , _mwiPrettyPrint = False
    , _mwiUserIp = Nothing
    , _mwiAccountId = pMwiAccountId_
    , _mwiKey = Nothing
    , _mwiOauthToken = Nothing
    , _mwiFields = Nothing
    , _mwiAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
mwiQuotaUser :: Lens' ManagementWebpropertiesInsert' (Maybe Text)
mwiQuotaUser
  = lens _mwiQuotaUser (\ s a -> s{_mwiQuotaUser = a})

-- | Returns response with indentations and line breaks.
mwiPrettyPrint :: Lens' ManagementWebpropertiesInsert' Bool
mwiPrettyPrint
  = lens _mwiPrettyPrint
      (\ s a -> s{_mwiPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
mwiUserIp :: Lens' ManagementWebpropertiesInsert' (Maybe Text)
mwiUserIp
  = lens _mwiUserIp (\ s a -> s{_mwiUserIp = a})

-- | Account ID to create the web property for.
mwiAccountId :: Lens' ManagementWebpropertiesInsert' Text
mwiAccountId
  = lens _mwiAccountId (\ s a -> s{_mwiAccountId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
mwiKey :: Lens' ManagementWebpropertiesInsert' (Maybe Text)
mwiKey = lens _mwiKey (\ s a -> s{_mwiKey = a})

-- | OAuth 2.0 token for the current user.
mwiOauthToken :: Lens' ManagementWebpropertiesInsert' (Maybe Text)
mwiOauthToken
  = lens _mwiOauthToken
      (\ s a -> s{_mwiOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
mwiFields :: Lens' ManagementWebpropertiesInsert' (Maybe Text)
mwiFields
  = lens _mwiFields (\ s a -> s{_mwiFields = a})

-- | Data format for the response.
mwiAlt :: Lens' ManagementWebpropertiesInsert' Text
mwiAlt = lens _mwiAlt (\ s a -> s{_mwiAlt = a})

instance GoogleRequest ManagementWebpropertiesInsert'
         where
        type Rs ManagementWebpropertiesInsert' = Webproperty
        request = requestWithRoute defReq analyticsURL
        requestWithRoute r u
          ManagementWebpropertiesInsert{..}
          = go _mwiQuotaUser _mwiPrettyPrint _mwiUserIp
              _mwiAccountId
              _mwiKey
              _mwiOauthToken
              _mwiFields
              _mwiAlt
          where go
                  = clientWithRoute
                      (Proxy :: Proxy ManagementWebpropertiesInsertAPI)
                      r
                      u
