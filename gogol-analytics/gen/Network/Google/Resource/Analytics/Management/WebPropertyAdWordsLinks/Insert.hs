{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Analytics.Management.WebPropertyAdWordsLinks.Insert
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Creates a webProperty-AdWords link.
--
-- /See:/ <https://developers.google.com/analytics/ Google Analytics API Reference> for @AnalyticsManagementWebPropertyAdWordsLinksInsert@.
module Analytics.Management.WebPropertyAdWordsLinks.Insert
    (
    -- * REST Resource
      ManagementWebPropertyAdWordsLinksInsertAPI

    -- * Creating a Request
    , managementWebPropertyAdWordsLinksInsert
    , ManagementWebPropertyAdWordsLinksInsert

    -- * Request Lenses
    , mwpawliQuotaUser
    , mwpawliPrettyPrint
    , mwpawliWebPropertyId
    , mwpawliUserIp
    , mwpawliAccountId
    , mwpawliKey
    , mwpawliOauthToken
    , mwpawliFields
    , mwpawliAlt
    ) where

import           Network.Google.Analytics.Types
import           Network.Google.Prelude

-- | A resource alias for @AnalyticsManagementWebPropertyAdWordsLinksInsert@ which the
-- 'ManagementWebPropertyAdWordsLinksInsert' request conforms to.
type ManagementWebPropertyAdWordsLinksInsertAPI =
     "management" :>
       "accounts" :>
         Capture "accountId" Text :>
           "webproperties" :>
             Capture "webPropertyId" Text :>
               "entityAdWordsLinks" :>
                 Post '[JSON] EntityAdWordsLink

-- | Creates a webProperty-AdWords link.
--
-- /See:/ 'managementWebPropertyAdWordsLinksInsert' smart constructor.
data ManagementWebPropertyAdWordsLinksInsert = ManagementWebPropertyAdWordsLinksInsert
    { _mwpawliQuotaUser     :: !(Maybe Text)
    , _mwpawliPrettyPrint   :: !Bool
    , _mwpawliWebPropertyId :: !Text
    , _mwpawliUserIp        :: !(Maybe Text)
    , _mwpawliAccountId     :: !Text
    , _mwpawliKey           :: !(Maybe Text)
    , _mwpawliOauthToken    :: !(Maybe Text)
    , _mwpawliFields        :: !(Maybe Text)
    , _mwpawliAlt           :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ManagementWebPropertyAdWordsLinksInsert'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mwpawliQuotaUser'
--
-- * 'mwpawliPrettyPrint'
--
-- * 'mwpawliWebPropertyId'
--
-- * 'mwpawliUserIp'
--
-- * 'mwpawliAccountId'
--
-- * 'mwpawliKey'
--
-- * 'mwpawliOauthToken'
--
-- * 'mwpawliFields'
--
-- * 'mwpawliAlt'
managementWebPropertyAdWordsLinksInsert
    :: Text -- ^ 'webPropertyId'
    -> Text -- ^ 'accountId'
    -> ManagementWebPropertyAdWordsLinksInsert
managementWebPropertyAdWordsLinksInsert pMwpawliWebPropertyId_ pMwpawliAccountId_ =
    ManagementWebPropertyAdWordsLinksInsert
    { _mwpawliQuotaUser = Nothing
    , _mwpawliPrettyPrint = False
    , _mwpawliWebPropertyId = pMwpawliWebPropertyId_
    , _mwpawliUserIp = Nothing
    , _mwpawliAccountId = pMwpawliAccountId_
    , _mwpawliKey = Nothing
    , _mwpawliOauthToken = Nothing
    , _mwpawliFields = Nothing
    , _mwpawliAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
mwpawliQuotaUser :: Lens' ManagementWebPropertyAdWordsLinksInsert' (Maybe Text)
mwpawliQuotaUser
  = lens _mwpawliQuotaUser
      (\ s a -> s{_mwpawliQuotaUser = a})

-- | Returns response with indentations and line breaks.
mwpawliPrettyPrint :: Lens' ManagementWebPropertyAdWordsLinksInsert' Bool
mwpawliPrettyPrint
  = lens _mwpawliPrettyPrint
      (\ s a -> s{_mwpawliPrettyPrint = a})

-- | Web property ID to create the link for.
mwpawliWebPropertyId :: Lens' ManagementWebPropertyAdWordsLinksInsert' Text
mwpawliWebPropertyId
  = lens _mwpawliWebPropertyId
      (\ s a -> s{_mwpawliWebPropertyId = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
mwpawliUserIp :: Lens' ManagementWebPropertyAdWordsLinksInsert' (Maybe Text)
mwpawliUserIp
  = lens _mwpawliUserIp
      (\ s a -> s{_mwpawliUserIp = a})

-- | ID of the Google Analytics account to create the link for.
mwpawliAccountId :: Lens' ManagementWebPropertyAdWordsLinksInsert' Text
mwpawliAccountId
  = lens _mwpawliAccountId
      (\ s a -> s{_mwpawliAccountId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
mwpawliKey :: Lens' ManagementWebPropertyAdWordsLinksInsert' (Maybe Text)
mwpawliKey
  = lens _mwpawliKey (\ s a -> s{_mwpawliKey = a})

-- | OAuth 2.0 token for the current user.
mwpawliOauthToken :: Lens' ManagementWebPropertyAdWordsLinksInsert' (Maybe Text)
mwpawliOauthToken
  = lens _mwpawliOauthToken
      (\ s a -> s{_mwpawliOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
mwpawliFields :: Lens' ManagementWebPropertyAdWordsLinksInsert' (Maybe Text)
mwpawliFields
  = lens _mwpawliFields
      (\ s a -> s{_mwpawliFields = a})

-- | Data format for the response.
mwpawliAlt :: Lens' ManagementWebPropertyAdWordsLinksInsert' Text
mwpawliAlt
  = lens _mwpawliAlt (\ s a -> s{_mwpawliAlt = a})

instance GoogleRequest
         ManagementWebPropertyAdWordsLinksInsert' where
        type Rs ManagementWebPropertyAdWordsLinksInsert' =
             EntityAdWordsLink
        request = requestWithRoute defReq analyticsURL
        requestWithRoute r u
          ManagementWebPropertyAdWordsLinksInsert{..}
          = go _mwpawliQuotaUser _mwpawliPrettyPrint
              _mwpawliWebPropertyId
              _mwpawliUserIp
              _mwpawliAccountId
              _mwpawliKey
              _mwpawliOauthToken
              _mwpawliFields
              _mwpawliAlt
          where go
                  = clientWithRoute
                      (Proxy ::
                         Proxy ManagementWebPropertyAdWordsLinksInsertAPI)
                      r
                      u
