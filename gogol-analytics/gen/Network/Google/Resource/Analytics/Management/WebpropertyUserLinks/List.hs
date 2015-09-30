{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Analytics.Management.WebpropertyUserLinks.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Lists webProperty-user links for a given web property.
--
-- /See:/ <https://developers.google.com/analytics/ Google Analytics API Reference> for @AnalyticsManagementWebpropertyUserLinksList@.
module Analytics.Management.WebpropertyUserLinks.List
    (
    -- * REST Resource
      ManagementWebpropertyUserLinksListAPI

    -- * Creating a Request
    , managementWebpropertyUserLinksList
    , ManagementWebpropertyUserLinksList

    -- * Request Lenses
    , mwullQuotaUser
    , mwullPrettyPrint
    , mwullWebPropertyId
    , mwullUserIp
    , mwullAccountId
    , mwullKey
    , mwullOauthToken
    , mwullStartIndex
    , mwullMaxResults
    , mwullFields
    , mwullAlt
    ) where

import           Network.Google.Analytics.Types
import           Network.Google.Prelude

-- | A resource alias for @AnalyticsManagementWebpropertyUserLinksList@ which the
-- 'ManagementWebpropertyUserLinksList' request conforms to.
type ManagementWebpropertyUserLinksListAPI =
     "management" :>
       "accounts" :>
         Capture "accountId" Text :>
           "webproperties" :>
             Capture "webPropertyId" Text :>
               "entityUserLinks" :>
                 QueryParam "start-index" Int32 :>
                   QueryParam "max-results" Int32 :>
                     Get '[JSON] EntityUserLinks

-- | Lists webProperty-user links for a given web property.
--
-- /See:/ 'managementWebpropertyUserLinksList' smart constructor.
data ManagementWebpropertyUserLinksList = ManagementWebpropertyUserLinksList
    { _mwullQuotaUser     :: !(Maybe Text)
    , _mwullPrettyPrint   :: !Bool
    , _mwullWebPropertyId :: !Text
    , _mwullUserIp        :: !(Maybe Text)
    , _mwullAccountId     :: !Text
    , _mwullKey           :: !(Maybe Text)
    , _mwullOauthToken    :: !(Maybe Text)
    , _mwullStartIndex    :: !(Maybe Int32)
    , _mwullMaxResults    :: !(Maybe Int32)
    , _mwullFields        :: !(Maybe Text)
    , _mwullAlt           :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ManagementWebpropertyUserLinksList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mwullQuotaUser'
--
-- * 'mwullPrettyPrint'
--
-- * 'mwullWebPropertyId'
--
-- * 'mwullUserIp'
--
-- * 'mwullAccountId'
--
-- * 'mwullKey'
--
-- * 'mwullOauthToken'
--
-- * 'mwullStartIndex'
--
-- * 'mwullMaxResults'
--
-- * 'mwullFields'
--
-- * 'mwullAlt'
managementWebpropertyUserLinksList
    :: Text -- ^ 'webPropertyId'
    -> Text -- ^ 'accountId'
    -> ManagementWebpropertyUserLinksList
managementWebpropertyUserLinksList pMwullWebPropertyId_ pMwullAccountId_ =
    ManagementWebpropertyUserLinksList
    { _mwullQuotaUser = Nothing
    , _mwullPrettyPrint = False
    , _mwullWebPropertyId = pMwullWebPropertyId_
    , _mwullUserIp = Nothing
    , _mwullAccountId = pMwullAccountId_
    , _mwullKey = Nothing
    , _mwullOauthToken = Nothing
    , _mwullStartIndex = Nothing
    , _mwullMaxResults = Nothing
    , _mwullFields = Nothing
    , _mwullAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
mwullQuotaUser :: Lens' ManagementWebpropertyUserLinksList' (Maybe Text)
mwullQuotaUser
  = lens _mwullQuotaUser
      (\ s a -> s{_mwullQuotaUser = a})

-- | Returns response with indentations and line breaks.
mwullPrettyPrint :: Lens' ManagementWebpropertyUserLinksList' Bool
mwullPrettyPrint
  = lens _mwullPrettyPrint
      (\ s a -> s{_mwullPrettyPrint = a})

-- | Web Property ID for the webProperty-user links to retrieve. Can either
-- be a specific web property ID or \'~all\', which refers to all the web
-- properties that user has access to.
mwullWebPropertyId :: Lens' ManagementWebpropertyUserLinksList' Text
mwullWebPropertyId
  = lens _mwullWebPropertyId
      (\ s a -> s{_mwullWebPropertyId = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
mwullUserIp :: Lens' ManagementWebpropertyUserLinksList' (Maybe Text)
mwullUserIp
  = lens _mwullUserIp (\ s a -> s{_mwullUserIp = a})

-- | Account ID which the given web property belongs to.
mwullAccountId :: Lens' ManagementWebpropertyUserLinksList' Text
mwullAccountId
  = lens _mwullAccountId
      (\ s a -> s{_mwullAccountId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
mwullKey :: Lens' ManagementWebpropertyUserLinksList' (Maybe Text)
mwullKey = lens _mwullKey (\ s a -> s{_mwullKey = a})

-- | OAuth 2.0 token for the current user.
mwullOauthToken :: Lens' ManagementWebpropertyUserLinksList' (Maybe Text)
mwullOauthToken
  = lens _mwullOauthToken
      (\ s a -> s{_mwullOauthToken = a})

-- | An index of the first webProperty-user link to retrieve. Use this
-- parameter as a pagination mechanism along with the max-results
-- parameter.
mwullStartIndex :: Lens' ManagementWebpropertyUserLinksList' (Maybe Int32)
mwullStartIndex
  = lens _mwullStartIndex
      (\ s a -> s{_mwullStartIndex = a})

-- | The maximum number of webProperty-user Links to include in this
-- response.
mwullMaxResults :: Lens' ManagementWebpropertyUserLinksList' (Maybe Int32)
mwullMaxResults
  = lens _mwullMaxResults
      (\ s a -> s{_mwullMaxResults = a})

-- | Selector specifying which fields to include in a partial response.
mwullFields :: Lens' ManagementWebpropertyUserLinksList' (Maybe Text)
mwullFields
  = lens _mwullFields (\ s a -> s{_mwullFields = a})

-- | Data format for the response.
mwullAlt :: Lens' ManagementWebpropertyUserLinksList' Text
mwullAlt = lens _mwullAlt (\ s a -> s{_mwullAlt = a})

instance GoogleRequest
         ManagementWebpropertyUserLinksList' where
        type Rs ManagementWebpropertyUserLinksList' =
             EntityUserLinks
        request = requestWithRoute defReq analyticsURL
        requestWithRoute r u
          ManagementWebpropertyUserLinksList{..}
          = go _mwullQuotaUser _mwullPrettyPrint
              _mwullWebPropertyId
              _mwullUserIp
              _mwullAccountId
              _mwullKey
              _mwullOauthToken
              _mwullStartIndex
              _mwullMaxResults
              _mwullFields
              _mwullAlt
          where go
                  = clientWithRoute
                      (Proxy ::
                         Proxy ManagementWebpropertyUserLinksListAPI)
                      r
                      u
