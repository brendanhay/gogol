{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Analytics.Management.WebpropertyUserLinks.Update
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Updates permissions for an existing user on the given web property.
--
-- /See:/ <https://developers.google.com/analytics/ Google Analytics API Reference> for @AnalyticsManagementWebpropertyUserLinksUpdate@.
module Analytics.Management.WebpropertyUserLinks.Update
    (
    -- * REST Resource
      ManagementWebpropertyUserLinksUpdateAPI

    -- * Creating a Request
    , managementWebpropertyUserLinksUpdate
    , ManagementWebpropertyUserLinksUpdate

    -- * Request Lenses
    , mwuluQuotaUser
    , mwuluPrettyPrint
    , mwuluWebPropertyId
    , mwuluUserIp
    , mwuluAccountId
    , mwuluKey
    , mwuluLinkId
    , mwuluOauthToken
    , mwuluFields
    , mwuluAlt
    ) where

import           Network.Google.Analytics.Types
import           Network.Google.Prelude

-- | A resource alias for @AnalyticsManagementWebpropertyUserLinksUpdate@ which the
-- 'ManagementWebpropertyUserLinksUpdate' request conforms to.
type ManagementWebpropertyUserLinksUpdateAPI =
     "management" :>
       "accounts" :>
         Capture "accountId" Text :>
           "webproperties" :>
             Capture "webPropertyId" Text :>
               "entityUserLinks" :>
                 Capture "linkId" Text :> Put '[JSON] EntityUserLink

-- | Updates permissions for an existing user on the given web property.
--
-- /See:/ 'managementWebpropertyUserLinksUpdate' smart constructor.
data ManagementWebpropertyUserLinksUpdate = ManagementWebpropertyUserLinksUpdate
    { _mwuluQuotaUser     :: !(Maybe Text)
    , _mwuluPrettyPrint   :: !Bool
    , _mwuluWebPropertyId :: !Text
    , _mwuluUserIp        :: !(Maybe Text)
    , _mwuluAccountId     :: !Text
    , _mwuluKey           :: !(Maybe Text)
    , _mwuluLinkId        :: !Text
    , _mwuluOauthToken    :: !(Maybe Text)
    , _mwuluFields        :: !(Maybe Text)
    , _mwuluAlt           :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ManagementWebpropertyUserLinksUpdate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mwuluQuotaUser'
--
-- * 'mwuluPrettyPrint'
--
-- * 'mwuluWebPropertyId'
--
-- * 'mwuluUserIp'
--
-- * 'mwuluAccountId'
--
-- * 'mwuluKey'
--
-- * 'mwuluLinkId'
--
-- * 'mwuluOauthToken'
--
-- * 'mwuluFields'
--
-- * 'mwuluAlt'
managementWebpropertyUserLinksUpdate
    :: Text -- ^ 'webPropertyId'
    -> Text -- ^ 'accountId'
    -> Text -- ^ 'linkId'
    -> ManagementWebpropertyUserLinksUpdate
managementWebpropertyUserLinksUpdate pMwuluWebPropertyId_ pMwuluAccountId_ pMwuluLinkId_ =
    ManagementWebpropertyUserLinksUpdate
    { _mwuluQuotaUser = Nothing
    , _mwuluPrettyPrint = False
    , _mwuluWebPropertyId = pMwuluWebPropertyId_
    , _mwuluUserIp = Nothing
    , _mwuluAccountId = pMwuluAccountId_
    , _mwuluKey = Nothing
    , _mwuluLinkId = pMwuluLinkId_
    , _mwuluOauthToken = Nothing
    , _mwuluFields = Nothing
    , _mwuluAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
mwuluQuotaUser :: Lens' ManagementWebpropertyUserLinksUpdate' (Maybe Text)
mwuluQuotaUser
  = lens _mwuluQuotaUser
      (\ s a -> s{_mwuluQuotaUser = a})

-- | Returns response with indentations and line breaks.
mwuluPrettyPrint :: Lens' ManagementWebpropertyUserLinksUpdate' Bool
mwuluPrettyPrint
  = lens _mwuluPrettyPrint
      (\ s a -> s{_mwuluPrettyPrint = a})

-- | Web property ID to update the account-user link for.
mwuluWebPropertyId :: Lens' ManagementWebpropertyUserLinksUpdate' Text
mwuluWebPropertyId
  = lens _mwuluWebPropertyId
      (\ s a -> s{_mwuluWebPropertyId = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
mwuluUserIp :: Lens' ManagementWebpropertyUserLinksUpdate' (Maybe Text)
mwuluUserIp
  = lens _mwuluUserIp (\ s a -> s{_mwuluUserIp = a})

-- | Account ID to update the account-user link for.
mwuluAccountId :: Lens' ManagementWebpropertyUserLinksUpdate' Text
mwuluAccountId
  = lens _mwuluAccountId
      (\ s a -> s{_mwuluAccountId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
mwuluKey :: Lens' ManagementWebpropertyUserLinksUpdate' (Maybe Text)
mwuluKey = lens _mwuluKey (\ s a -> s{_mwuluKey = a})

-- | Link ID to update the account-user link for.
mwuluLinkId :: Lens' ManagementWebpropertyUserLinksUpdate' Text
mwuluLinkId
  = lens _mwuluLinkId (\ s a -> s{_mwuluLinkId = a})

-- | OAuth 2.0 token for the current user.
mwuluOauthToken :: Lens' ManagementWebpropertyUserLinksUpdate' (Maybe Text)
mwuluOauthToken
  = lens _mwuluOauthToken
      (\ s a -> s{_mwuluOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
mwuluFields :: Lens' ManagementWebpropertyUserLinksUpdate' (Maybe Text)
mwuluFields
  = lens _mwuluFields (\ s a -> s{_mwuluFields = a})

-- | Data format for the response.
mwuluAlt :: Lens' ManagementWebpropertyUserLinksUpdate' Text
mwuluAlt = lens _mwuluAlt (\ s a -> s{_mwuluAlt = a})

instance GoogleRequest
         ManagementWebpropertyUserLinksUpdate' where
        type Rs ManagementWebpropertyUserLinksUpdate' =
             EntityUserLink
        request = requestWithRoute defReq analyticsURL
        requestWithRoute r u
          ManagementWebpropertyUserLinksUpdate{..}
          = go _mwuluQuotaUser _mwuluPrettyPrint
              _mwuluWebPropertyId
              _mwuluUserIp
              _mwuluAccountId
              _mwuluKey
              _mwuluLinkId
              _mwuluOauthToken
              _mwuluFields
              _mwuluAlt
          where go
                  = clientWithRoute
                      (Proxy ::
                         Proxy ManagementWebpropertyUserLinksUpdateAPI)
                      r
                      u
