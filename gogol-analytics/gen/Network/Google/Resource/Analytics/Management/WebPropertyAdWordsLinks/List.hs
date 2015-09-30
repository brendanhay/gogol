{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Analytics.Management.WebPropertyAdWordsLinks.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Lists webProperty-AdWords links for a given web property.
--
-- /See:/ <https://developers.google.com/analytics/ Google Analytics API Reference> for @AnalyticsManagementWebPropertyAdWordsLinksList@.
module Analytics.Management.WebPropertyAdWordsLinks.List
    (
    -- * REST Resource
      ManagementWebPropertyAdWordsLinksListAPI

    -- * Creating a Request
    , managementWebPropertyAdWordsLinksList
    , ManagementWebPropertyAdWordsLinksList

    -- * Request Lenses
    , mwpawllQuotaUser
    , mwpawllPrettyPrint
    , mwpawllWebPropertyId
    , mwpawllUserIp
    , mwpawllAccountId
    , mwpawllKey
    , mwpawllOauthToken
    , mwpawllStartIndex
    , mwpawllMaxResults
    , mwpawllFields
    , mwpawllAlt
    ) where

import           Network.Google.Analytics.Types
import           Network.Google.Prelude

-- | A resource alias for @AnalyticsManagementWebPropertyAdWordsLinksList@ which the
-- 'ManagementWebPropertyAdWordsLinksList' request conforms to.
type ManagementWebPropertyAdWordsLinksListAPI =
     "management" :>
       "accounts" :>
         Capture "accountId" Text :>
           "webproperties" :>
             Capture "webPropertyId" Text :>
               "entityAdWordsLinks" :>
                 QueryParam "start-index" Int32 :>
                   QueryParam "max-results" Int32 :>
                     Get '[JSON] EntityAdWordsLinks

-- | Lists webProperty-AdWords links for a given web property.
--
-- /See:/ 'managementWebPropertyAdWordsLinksList' smart constructor.
data ManagementWebPropertyAdWordsLinksList = ManagementWebPropertyAdWordsLinksList
    { _mwpawllQuotaUser     :: !(Maybe Text)
    , _mwpawllPrettyPrint   :: !Bool
    , _mwpawllWebPropertyId :: !Text
    , _mwpawllUserIp        :: !(Maybe Text)
    , _mwpawllAccountId     :: !Text
    , _mwpawllKey           :: !(Maybe Text)
    , _mwpawllOauthToken    :: !(Maybe Text)
    , _mwpawllStartIndex    :: !(Maybe Int32)
    , _mwpawllMaxResults    :: !(Maybe Int32)
    , _mwpawllFields        :: !(Maybe Text)
    , _mwpawllAlt           :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ManagementWebPropertyAdWordsLinksList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mwpawllQuotaUser'
--
-- * 'mwpawllPrettyPrint'
--
-- * 'mwpawllWebPropertyId'
--
-- * 'mwpawllUserIp'
--
-- * 'mwpawllAccountId'
--
-- * 'mwpawllKey'
--
-- * 'mwpawllOauthToken'
--
-- * 'mwpawllStartIndex'
--
-- * 'mwpawllMaxResults'
--
-- * 'mwpawllFields'
--
-- * 'mwpawllAlt'
managementWebPropertyAdWordsLinksList
    :: Text -- ^ 'webPropertyId'
    -> Text -- ^ 'accountId'
    -> ManagementWebPropertyAdWordsLinksList
managementWebPropertyAdWordsLinksList pMwpawllWebPropertyId_ pMwpawllAccountId_ =
    ManagementWebPropertyAdWordsLinksList
    { _mwpawllQuotaUser = Nothing
    , _mwpawllPrettyPrint = False
    , _mwpawllWebPropertyId = pMwpawllWebPropertyId_
    , _mwpawllUserIp = Nothing
    , _mwpawllAccountId = pMwpawllAccountId_
    , _mwpawllKey = Nothing
    , _mwpawllOauthToken = Nothing
    , _mwpawllStartIndex = Nothing
    , _mwpawllMaxResults = Nothing
    , _mwpawllFields = Nothing
    , _mwpawllAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
mwpawllQuotaUser :: Lens' ManagementWebPropertyAdWordsLinksList' (Maybe Text)
mwpawllQuotaUser
  = lens _mwpawllQuotaUser
      (\ s a -> s{_mwpawllQuotaUser = a})

-- | Returns response with indentations and line breaks.
mwpawllPrettyPrint :: Lens' ManagementWebPropertyAdWordsLinksList' Bool
mwpawllPrettyPrint
  = lens _mwpawllPrettyPrint
      (\ s a -> s{_mwpawllPrettyPrint = a})

-- | Web property ID to retrieve the AdWords links for.
mwpawllWebPropertyId :: Lens' ManagementWebPropertyAdWordsLinksList' Text
mwpawllWebPropertyId
  = lens _mwpawllWebPropertyId
      (\ s a -> s{_mwpawllWebPropertyId = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
mwpawllUserIp :: Lens' ManagementWebPropertyAdWordsLinksList' (Maybe Text)
mwpawllUserIp
  = lens _mwpawllUserIp
      (\ s a -> s{_mwpawllUserIp = a})

-- | ID of the account which the given web property belongs to.
mwpawllAccountId :: Lens' ManagementWebPropertyAdWordsLinksList' Text
mwpawllAccountId
  = lens _mwpawllAccountId
      (\ s a -> s{_mwpawllAccountId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
mwpawllKey :: Lens' ManagementWebPropertyAdWordsLinksList' (Maybe Text)
mwpawllKey
  = lens _mwpawllKey (\ s a -> s{_mwpawllKey = a})

-- | OAuth 2.0 token for the current user.
mwpawllOauthToken :: Lens' ManagementWebPropertyAdWordsLinksList' (Maybe Text)
mwpawllOauthToken
  = lens _mwpawllOauthToken
      (\ s a -> s{_mwpawllOauthToken = a})

-- | An index of the first webProperty-AdWords link to retrieve. Use this
-- parameter as a pagination mechanism along with the max-results
-- parameter.
mwpawllStartIndex :: Lens' ManagementWebPropertyAdWordsLinksList' (Maybe Int32)
mwpawllStartIndex
  = lens _mwpawllStartIndex
      (\ s a -> s{_mwpawllStartIndex = a})

-- | The maximum number of webProperty-AdWords links to include in this
-- response.
mwpawllMaxResults :: Lens' ManagementWebPropertyAdWordsLinksList' (Maybe Int32)
mwpawllMaxResults
  = lens _mwpawllMaxResults
      (\ s a -> s{_mwpawllMaxResults = a})

-- | Selector specifying which fields to include in a partial response.
mwpawllFields :: Lens' ManagementWebPropertyAdWordsLinksList' (Maybe Text)
mwpawllFields
  = lens _mwpawllFields
      (\ s a -> s{_mwpawllFields = a})

-- | Data format for the response.
mwpawllAlt :: Lens' ManagementWebPropertyAdWordsLinksList' Text
mwpawllAlt
  = lens _mwpawllAlt (\ s a -> s{_mwpawllAlt = a})

instance GoogleRequest
         ManagementWebPropertyAdWordsLinksList' where
        type Rs ManagementWebPropertyAdWordsLinksList' =
             EntityAdWordsLinks
        request = requestWithRoute defReq analyticsURL
        requestWithRoute r u
          ManagementWebPropertyAdWordsLinksList{..}
          = go _mwpawllQuotaUser _mwpawllPrettyPrint
              _mwpawllWebPropertyId
              _mwpawllUserIp
              _mwpawllAccountId
              _mwpawllKey
              _mwpawllOauthToken
              _mwpawllStartIndex
              _mwpawllMaxResults
              _mwpawllFields
              _mwpawllAlt
          where go
                  = clientWithRoute
                      (Proxy ::
                         Proxy ManagementWebPropertyAdWordsLinksListAPI)
                      r
                      u
