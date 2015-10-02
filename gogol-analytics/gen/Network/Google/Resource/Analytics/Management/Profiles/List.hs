{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Analytics.Management.Profiles.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Lists views (profiles) to which the user has access.
--
-- /See:/ <https://developers.google.com/analytics/ Google Analytics API Reference> for @AnalyticsManagementProfilesList@.
module Network.Google.Resource.Analytics.Management.Profiles.List
    (
    -- * REST Resource
      ManagementProfilesListResource

    -- * Creating a Request
    , managementProfilesList'
    , ManagementProfilesList'

    -- * Request Lenses
    , mplQuotaUser
    , mplPrettyPrint
    , mplWebPropertyId
    , mplUserIP
    , mplAccountId
    , mplKey
    , mplOAuthToken
    , mplStartIndex
    , mplMaxResults
    , mplFields
    ) where

import           Network.Google.Analytics.Types
import           Network.Google.Prelude

-- | A resource alias for @AnalyticsManagementProfilesList@ which the
-- 'ManagementProfilesList'' request conforms to.
type ManagementProfilesListResource =
     "management" :>
       "accounts" :>
         Capture "accountId" Text :>
           "webproperties" :>
             Capture "webPropertyId" Text :>
               "profiles" :>
                 QueryParam "max-results" Int32 :>
                   QueryParam "start-index" Int32 :>
                     QueryParam "quotaUser" Text :>
                       QueryParam "prettyPrint" Bool :>
                         QueryParam "userIp" Text :>
                           QueryParam "fields" Text :>
                             QueryParam "key" Key :>
                               QueryParam "oauth_token" OAuthToken :>
                                 QueryParam "alt" AltJSON :>
                                   Get '[JSON] Profiles

-- | Lists views (profiles) to which the user has access.
--
-- /See:/ 'managementProfilesList'' smart constructor.
data ManagementProfilesList' = ManagementProfilesList'
    { _mplQuotaUser     :: !(Maybe Text)
    , _mplPrettyPrint   :: !Bool
    , _mplWebPropertyId :: !Text
    , _mplUserIP        :: !(Maybe Text)
    , _mplAccountId     :: !Text
    , _mplKey           :: !(Maybe Key)
    , _mplOAuthToken    :: !(Maybe OAuthToken)
    , _mplStartIndex    :: !(Maybe Int32)
    , _mplMaxResults    :: !(Maybe Int32)
    , _mplFields        :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ManagementProfilesList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mplQuotaUser'
--
-- * 'mplPrettyPrint'
--
-- * 'mplWebPropertyId'
--
-- * 'mplUserIP'
--
-- * 'mplAccountId'
--
-- * 'mplKey'
--
-- * 'mplOAuthToken'
--
-- * 'mplStartIndex'
--
-- * 'mplMaxResults'
--
-- * 'mplFields'
managementProfilesList'
    :: Text -- ^ 'webPropertyId'
    -> Text -- ^ 'accountId'
    -> ManagementProfilesList'
managementProfilesList' pMplWebPropertyId_ pMplAccountId_ =
    ManagementProfilesList'
    { _mplQuotaUser = Nothing
    , _mplPrettyPrint = False
    , _mplWebPropertyId = pMplWebPropertyId_
    , _mplUserIP = Nothing
    , _mplAccountId = pMplAccountId_
    , _mplKey = Nothing
    , _mplOAuthToken = Nothing
    , _mplStartIndex = Nothing
    , _mplMaxResults = Nothing
    , _mplFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
mplQuotaUser :: Lens' ManagementProfilesList' (Maybe Text)
mplQuotaUser
  = lens _mplQuotaUser (\ s a -> s{_mplQuotaUser = a})

-- | Returns response with indentations and line breaks.
mplPrettyPrint :: Lens' ManagementProfilesList' Bool
mplPrettyPrint
  = lens _mplPrettyPrint
      (\ s a -> s{_mplPrettyPrint = a})

-- | Web property ID for the views (profiles) to retrieve. Can either be a
-- specific web property ID or \'~all\', which refers to all the web
-- properties to which the user has access.
mplWebPropertyId :: Lens' ManagementProfilesList' Text
mplWebPropertyId
  = lens _mplWebPropertyId
      (\ s a -> s{_mplWebPropertyId = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
mplUserIP :: Lens' ManagementProfilesList' (Maybe Text)
mplUserIP
  = lens _mplUserIP (\ s a -> s{_mplUserIP = a})

-- | Account ID for the view (profiles) to retrieve. Can either be a specific
-- account ID or \'~all\', which refers to all the accounts to which the
-- user has access.
mplAccountId :: Lens' ManagementProfilesList' Text
mplAccountId
  = lens _mplAccountId (\ s a -> s{_mplAccountId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
mplKey :: Lens' ManagementProfilesList' (Maybe Key)
mplKey = lens _mplKey (\ s a -> s{_mplKey = a})

-- | OAuth 2.0 token for the current user.
mplOAuthToken :: Lens' ManagementProfilesList' (Maybe OAuthToken)
mplOAuthToken
  = lens _mplOAuthToken
      (\ s a -> s{_mplOAuthToken = a})

-- | An index of the first entity to retrieve. Use this parameter as a
-- pagination mechanism along with the max-results parameter.
mplStartIndex :: Lens' ManagementProfilesList' (Maybe Int32)
mplStartIndex
  = lens _mplStartIndex
      (\ s a -> s{_mplStartIndex = a})

-- | The maximum number of views (profiles) to include in this response.
mplMaxResults :: Lens' ManagementProfilesList' (Maybe Int32)
mplMaxResults
  = lens _mplMaxResults
      (\ s a -> s{_mplMaxResults = a})

-- | Selector specifying which fields to include in a partial response.
mplFields :: Lens' ManagementProfilesList' (Maybe Text)
mplFields
  = lens _mplFields (\ s a -> s{_mplFields = a})

instance GoogleAuth ManagementProfilesList' where
        authKey = mplKey . _Just
        authToken = mplOAuthToken . _Just

instance GoogleRequest ManagementProfilesList' where
        type Rs ManagementProfilesList' = Profiles
        request = requestWithRoute defReq analyticsURL
        requestWithRoute r u ManagementProfilesList'{..}
          = go _mplMaxResults _mplStartIndex _mplAccountId
              _mplWebPropertyId
              _mplQuotaUser
              (Just _mplPrettyPrint)
              _mplUserIP
              _mplFields
              _mplKey
              _mplOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy ManagementProfilesListResource)
                      r
                      u
