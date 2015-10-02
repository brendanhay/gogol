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
-- Module      : Network.Google.Resource.Analytics.Management.WebProperties.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Lists web properties to which the user has access.
--
-- /See:/ <https://developers.google.com/analytics/ Google Analytics API Reference> for @AnalyticsManagementWebPropertiesList@.
module Network.Google.Resource.Analytics.Management.WebProperties.List
    (
    -- * REST Resource
      ManagementWebPropertiesListResource

    -- * Creating a Request
    , managementWebPropertiesList'
    , ManagementWebPropertiesList'

    -- * Request Lenses
    , mwplQuotaUser
    , mwplPrettyPrint
    , mwplUserIP
    , mwplAccountId
    , mwplKey
    , mwplOAuthToken
    , mwplStartIndex
    , mwplMaxResults
    , mwplFields
    ) where

import           Network.Google.Analytics.Types
import           Network.Google.Prelude

-- | A resource alias for @AnalyticsManagementWebPropertiesList@ which the
-- 'ManagementWebPropertiesList'' request conforms to.
type ManagementWebPropertiesListResource =
     "management" :>
       "accounts" :>
         Capture "accountId" Text :>
           "webproperties" :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "key" Key :>
                     QueryParam "oauth_token" OAuthToken :>
                       QueryParam "start-index" Int32 :>
                         QueryParam "max-results" Int32 :>
                           QueryParam "fields" Text :>
                             QueryParam "alt" AltJSON :>
                               Get '[JSON] WebProperties

-- | Lists web properties to which the user has access.
--
-- /See:/ 'managementWebPropertiesList'' smart constructor.
data ManagementWebPropertiesList' = ManagementWebPropertiesList'
    { _mwplQuotaUser   :: !(Maybe Text)
    , _mwplPrettyPrint :: !Bool
    , _mwplUserIP      :: !(Maybe Text)
    , _mwplAccountId   :: !Text
    , _mwplKey         :: !(Maybe Key)
    , _mwplOAuthToken  :: !(Maybe OAuthToken)
    , _mwplStartIndex  :: !(Maybe Int32)
    , _mwplMaxResults  :: !(Maybe Int32)
    , _mwplFields      :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ManagementWebPropertiesList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mwplQuotaUser'
--
-- * 'mwplPrettyPrint'
--
-- * 'mwplUserIP'
--
-- * 'mwplAccountId'
--
-- * 'mwplKey'
--
-- * 'mwplOAuthToken'
--
-- * 'mwplStartIndex'
--
-- * 'mwplMaxResults'
--
-- * 'mwplFields'
managementWebPropertiesList'
    :: Text -- ^ 'accountId'
    -> ManagementWebPropertiesList'
managementWebPropertiesList' pMwplAccountId_ =
    ManagementWebPropertiesList'
    { _mwplQuotaUser = Nothing
    , _mwplPrettyPrint = False
    , _mwplUserIP = Nothing
    , _mwplAccountId = pMwplAccountId_
    , _mwplKey = Nothing
    , _mwplOAuthToken = Nothing
    , _mwplStartIndex = Nothing
    , _mwplMaxResults = Nothing
    , _mwplFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
mwplQuotaUser :: Lens' ManagementWebPropertiesList' (Maybe Text)
mwplQuotaUser
  = lens _mwplQuotaUser
      (\ s a -> s{_mwplQuotaUser = a})

-- | Returns response with indentations and line breaks.
mwplPrettyPrint :: Lens' ManagementWebPropertiesList' Bool
mwplPrettyPrint
  = lens _mwplPrettyPrint
      (\ s a -> s{_mwplPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
mwplUserIP :: Lens' ManagementWebPropertiesList' (Maybe Text)
mwplUserIP
  = lens _mwplUserIP (\ s a -> s{_mwplUserIP = a})

-- | Account ID to retrieve web properties for. Can either be a specific
-- account ID or \'~all\', which refers to all the accounts that user has
-- access to.
mwplAccountId :: Lens' ManagementWebPropertiesList' Text
mwplAccountId
  = lens _mwplAccountId
      (\ s a -> s{_mwplAccountId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
mwplKey :: Lens' ManagementWebPropertiesList' (Maybe Key)
mwplKey = lens _mwplKey (\ s a -> s{_mwplKey = a})

-- | OAuth 2.0 token for the current user.
mwplOAuthToken :: Lens' ManagementWebPropertiesList' (Maybe OAuthToken)
mwplOAuthToken
  = lens _mwplOAuthToken
      (\ s a -> s{_mwplOAuthToken = a})

-- | An index of the first entity to retrieve. Use this parameter as a
-- pagination mechanism along with the max-results parameter.
mwplStartIndex :: Lens' ManagementWebPropertiesList' (Maybe Int32)
mwplStartIndex
  = lens _mwplStartIndex
      (\ s a -> s{_mwplStartIndex = a})

-- | The maximum number of web properties to include in this response.
mwplMaxResults :: Lens' ManagementWebPropertiesList' (Maybe Int32)
mwplMaxResults
  = lens _mwplMaxResults
      (\ s a -> s{_mwplMaxResults = a})

-- | Selector specifying which fields to include in a partial response.
mwplFields :: Lens' ManagementWebPropertiesList' (Maybe Text)
mwplFields
  = lens _mwplFields (\ s a -> s{_mwplFields = a})

instance GoogleAuth ManagementWebPropertiesList'
         where
        authKey = mwplKey . _Just
        authToken = mwplOAuthToken . _Just

instance GoogleRequest ManagementWebPropertiesList'
         where
        type Rs ManagementWebPropertiesList' = WebProperties
        request = requestWithRoute defReq analyticsURL
        requestWithRoute r u ManagementWebPropertiesList'{..}
          = go _mwplQuotaUser (Just _mwplPrettyPrint)
              _mwplUserIP
              _mwplAccountId
              _mwplKey
              _mwplOAuthToken
              _mwplStartIndex
              _mwplMaxResults
              _mwplFields
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy ManagementWebPropertiesListResource)
                      r
                      u
