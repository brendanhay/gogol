{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Analytics.Management.Webproperties.Update
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Updates an existing web property.
--
-- /See:/ <https://developers.google.com/analytics/ Google Analytics API Reference> for @AnalyticsManagementWebpropertiesUpdate@.
module Analytics.Management.Webproperties.Update
    (
    -- * REST Resource
      ManagementWebpropertiesUpdateAPI

    -- * Creating a Request
    , managementWebpropertiesUpdate
    , ManagementWebpropertiesUpdate

    -- * Request Lenses
    , mwuQuotaUser
    , mwuPrettyPrint
    , mwuWebPropertyId
    , mwuUserIp
    , mwuAccountId
    , mwuKey
    , mwuOauthToken
    , mwuFields
    , mwuAlt
    ) where

import           Network.Google.Analytics.Types
import           Network.Google.Prelude

-- | A resource alias for @AnalyticsManagementWebpropertiesUpdate@ which the
-- 'ManagementWebpropertiesUpdate' request conforms to.
type ManagementWebpropertiesUpdateAPI =
     "management" :>
       "accounts" :>
         Capture "accountId" Text :>
           "webproperties" :>
             Capture "webPropertyId" Text :>
               Put '[JSON] Webproperty

-- | Updates an existing web property.
--
-- /See:/ 'managementWebpropertiesUpdate' smart constructor.
data ManagementWebpropertiesUpdate = ManagementWebpropertiesUpdate
    { _mwuQuotaUser     :: !(Maybe Text)
    , _mwuPrettyPrint   :: !Bool
    , _mwuWebPropertyId :: !Text
    , _mwuUserIp        :: !(Maybe Text)
    , _mwuAccountId     :: !Text
    , _mwuKey           :: !(Maybe Text)
    , _mwuOauthToken    :: !(Maybe Text)
    , _mwuFields        :: !(Maybe Text)
    , _mwuAlt           :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ManagementWebpropertiesUpdate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mwuQuotaUser'
--
-- * 'mwuPrettyPrint'
--
-- * 'mwuWebPropertyId'
--
-- * 'mwuUserIp'
--
-- * 'mwuAccountId'
--
-- * 'mwuKey'
--
-- * 'mwuOauthToken'
--
-- * 'mwuFields'
--
-- * 'mwuAlt'
managementWebpropertiesUpdate
    :: Text -- ^ 'webPropertyId'
    -> Text -- ^ 'accountId'
    -> ManagementWebpropertiesUpdate
managementWebpropertiesUpdate pMwuWebPropertyId_ pMwuAccountId_ =
    ManagementWebpropertiesUpdate
    { _mwuQuotaUser = Nothing
    , _mwuPrettyPrint = False
    , _mwuWebPropertyId = pMwuWebPropertyId_
    , _mwuUserIp = Nothing
    , _mwuAccountId = pMwuAccountId_
    , _mwuKey = Nothing
    , _mwuOauthToken = Nothing
    , _mwuFields = Nothing
    , _mwuAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
mwuQuotaUser :: Lens' ManagementWebpropertiesUpdate' (Maybe Text)
mwuQuotaUser
  = lens _mwuQuotaUser (\ s a -> s{_mwuQuotaUser = a})

-- | Returns response with indentations and line breaks.
mwuPrettyPrint :: Lens' ManagementWebpropertiesUpdate' Bool
mwuPrettyPrint
  = lens _mwuPrettyPrint
      (\ s a -> s{_mwuPrettyPrint = a})

-- | Web property ID
mwuWebPropertyId :: Lens' ManagementWebpropertiesUpdate' Text
mwuWebPropertyId
  = lens _mwuWebPropertyId
      (\ s a -> s{_mwuWebPropertyId = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
mwuUserIp :: Lens' ManagementWebpropertiesUpdate' (Maybe Text)
mwuUserIp
  = lens _mwuUserIp (\ s a -> s{_mwuUserIp = a})

-- | Account ID to which the web property belongs
mwuAccountId :: Lens' ManagementWebpropertiesUpdate' Text
mwuAccountId
  = lens _mwuAccountId (\ s a -> s{_mwuAccountId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
mwuKey :: Lens' ManagementWebpropertiesUpdate' (Maybe Text)
mwuKey = lens _mwuKey (\ s a -> s{_mwuKey = a})

-- | OAuth 2.0 token for the current user.
mwuOauthToken :: Lens' ManagementWebpropertiesUpdate' (Maybe Text)
mwuOauthToken
  = lens _mwuOauthToken
      (\ s a -> s{_mwuOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
mwuFields :: Lens' ManagementWebpropertiesUpdate' (Maybe Text)
mwuFields
  = lens _mwuFields (\ s a -> s{_mwuFields = a})

-- | Data format for the response.
mwuAlt :: Lens' ManagementWebpropertiesUpdate' Text
mwuAlt = lens _mwuAlt (\ s a -> s{_mwuAlt = a})

instance GoogleRequest ManagementWebpropertiesUpdate'
         where
        type Rs ManagementWebpropertiesUpdate' = Webproperty
        request = requestWithRoute defReq analyticsURL
        requestWithRoute r u
          ManagementWebpropertiesUpdate{..}
          = go _mwuQuotaUser _mwuPrettyPrint _mwuWebPropertyId
              _mwuUserIp
              _mwuAccountId
              _mwuKey
              _mwuOauthToken
              _mwuFields
              _mwuAlt
          where go
                  = clientWithRoute
                      (Proxy :: Proxy ManagementWebpropertiesUpdateAPI)
                      r
                      u
