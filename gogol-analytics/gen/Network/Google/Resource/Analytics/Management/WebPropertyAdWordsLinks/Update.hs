{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Analytics.Management.WebPropertyAdWordsLinks.Update
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Updates an existing webProperty-AdWords link.
--
-- /See:/ <https://developers.google.com/analytics/ Google Analytics API Reference> for @AnalyticsManagementWebPropertyAdWordsLinksUpdate@.
module Analytics.Management.WebPropertyAdWordsLinks.Update
    (
    -- * REST Resource
      ManagementWebPropertyAdWordsLinksUpdateAPI

    -- * Creating a Request
    , managementWebPropertyAdWordsLinksUpdate
    , ManagementWebPropertyAdWordsLinksUpdate

    -- * Request Lenses
    , mwpawluQuotaUser
    , mwpawluPrettyPrint
    , mwpawluWebPropertyId
    , mwpawluUserIp
    , mwpawluAccountId
    , mwpawluKey
    , mwpawluWebPropertyAdWordsLinkId
    , mwpawluOauthToken
    , mwpawluFields
    , mwpawluAlt
    ) where

import           Network.Google.Analytics.Types
import           Network.Google.Prelude

-- | A resource alias for @AnalyticsManagementWebPropertyAdWordsLinksUpdate@ which the
-- 'ManagementWebPropertyAdWordsLinksUpdate' request conforms to.
type ManagementWebPropertyAdWordsLinksUpdateAPI =
     "management" :>
       "accounts" :>
         Capture "accountId" Text :>
           "webproperties" :>
             Capture "webPropertyId" Text :>
               "entityAdWordsLinks" :>
                 Capture "webPropertyAdWordsLinkId" Text :>
                   Put '[JSON] EntityAdWordsLink

-- | Updates an existing webProperty-AdWords link.
--
-- /See:/ 'managementWebPropertyAdWordsLinksUpdate' smart constructor.
data ManagementWebPropertyAdWordsLinksUpdate = ManagementWebPropertyAdWordsLinksUpdate
    { _mwpawluQuotaUser                :: !(Maybe Text)
    , _mwpawluPrettyPrint              :: !Bool
    , _mwpawluWebPropertyId            :: !Text
    , _mwpawluUserIp                   :: !(Maybe Text)
    , _mwpawluAccountId                :: !Text
    , _mwpawluKey                      :: !(Maybe Text)
    , _mwpawluWebPropertyAdWordsLinkId :: !Text
    , _mwpawluOauthToken               :: !(Maybe Text)
    , _mwpawluFields                   :: !(Maybe Text)
    , _mwpawluAlt                      :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ManagementWebPropertyAdWordsLinksUpdate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mwpawluQuotaUser'
--
-- * 'mwpawluPrettyPrint'
--
-- * 'mwpawluWebPropertyId'
--
-- * 'mwpawluUserIp'
--
-- * 'mwpawluAccountId'
--
-- * 'mwpawluKey'
--
-- * 'mwpawluWebPropertyAdWordsLinkId'
--
-- * 'mwpawluOauthToken'
--
-- * 'mwpawluFields'
--
-- * 'mwpawluAlt'
managementWebPropertyAdWordsLinksUpdate
    :: Text -- ^ 'webPropertyId'
    -> Text -- ^ 'accountId'
    -> Text -- ^ 'webPropertyAdWordsLinkId'
    -> ManagementWebPropertyAdWordsLinksUpdate
managementWebPropertyAdWordsLinksUpdate pMwpawluWebPropertyId_ pMwpawluAccountId_ pMwpawluWebPropertyAdWordsLinkId_ =
    ManagementWebPropertyAdWordsLinksUpdate
    { _mwpawluQuotaUser = Nothing
    , _mwpawluPrettyPrint = False
    , _mwpawluWebPropertyId = pMwpawluWebPropertyId_
    , _mwpawluUserIp = Nothing
    , _mwpawluAccountId = pMwpawluAccountId_
    , _mwpawluKey = Nothing
    , _mwpawluWebPropertyAdWordsLinkId = pMwpawluWebPropertyAdWordsLinkId_
    , _mwpawluOauthToken = Nothing
    , _mwpawluFields = Nothing
    , _mwpawluAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
mwpawluQuotaUser :: Lens' ManagementWebPropertyAdWordsLinksUpdate' (Maybe Text)
mwpawluQuotaUser
  = lens _mwpawluQuotaUser
      (\ s a -> s{_mwpawluQuotaUser = a})

-- | Returns response with indentations and line breaks.
mwpawluPrettyPrint :: Lens' ManagementWebPropertyAdWordsLinksUpdate' Bool
mwpawluPrettyPrint
  = lens _mwpawluPrettyPrint
      (\ s a -> s{_mwpawluPrettyPrint = a})

-- | Web property ID to retrieve the AdWords link for.
mwpawluWebPropertyId :: Lens' ManagementWebPropertyAdWordsLinksUpdate' Text
mwpawluWebPropertyId
  = lens _mwpawluWebPropertyId
      (\ s a -> s{_mwpawluWebPropertyId = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
mwpawluUserIp :: Lens' ManagementWebPropertyAdWordsLinksUpdate' (Maybe Text)
mwpawluUserIp
  = lens _mwpawluUserIp
      (\ s a -> s{_mwpawluUserIp = a})

-- | ID of the account which the given web property belongs to.
mwpawluAccountId :: Lens' ManagementWebPropertyAdWordsLinksUpdate' Text
mwpawluAccountId
  = lens _mwpawluAccountId
      (\ s a -> s{_mwpawluAccountId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
mwpawluKey :: Lens' ManagementWebPropertyAdWordsLinksUpdate' (Maybe Text)
mwpawluKey
  = lens _mwpawluKey (\ s a -> s{_mwpawluKey = a})

-- | Web property-AdWords link ID.
mwpawluWebPropertyAdWordsLinkId :: Lens' ManagementWebPropertyAdWordsLinksUpdate' Text
mwpawluWebPropertyAdWordsLinkId
  = lens _mwpawluWebPropertyAdWordsLinkId
      (\ s a -> s{_mwpawluWebPropertyAdWordsLinkId = a})

-- | OAuth 2.0 token for the current user.
mwpawluOauthToken :: Lens' ManagementWebPropertyAdWordsLinksUpdate' (Maybe Text)
mwpawluOauthToken
  = lens _mwpawluOauthToken
      (\ s a -> s{_mwpawluOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
mwpawluFields :: Lens' ManagementWebPropertyAdWordsLinksUpdate' (Maybe Text)
mwpawluFields
  = lens _mwpawluFields
      (\ s a -> s{_mwpawluFields = a})

-- | Data format for the response.
mwpawluAlt :: Lens' ManagementWebPropertyAdWordsLinksUpdate' Text
mwpawluAlt
  = lens _mwpawluAlt (\ s a -> s{_mwpawluAlt = a})

instance GoogleRequest
         ManagementWebPropertyAdWordsLinksUpdate' where
        type Rs ManagementWebPropertyAdWordsLinksUpdate' =
             EntityAdWordsLink
        request = requestWithRoute defReq analyticsURL
        requestWithRoute r u
          ManagementWebPropertyAdWordsLinksUpdate{..}
          = go _mwpawluQuotaUser _mwpawluPrettyPrint
              _mwpawluWebPropertyId
              _mwpawluUserIp
              _mwpawluAccountId
              _mwpawluKey
              _mwpawluWebPropertyAdWordsLinkId
              _mwpawluOauthToken
              _mwpawluFields
              _mwpawluAlt
          where go
                  = clientWithRoute
                      (Proxy ::
                         Proxy ManagementWebPropertyAdWordsLinksUpdateAPI)
                      r
                      u
