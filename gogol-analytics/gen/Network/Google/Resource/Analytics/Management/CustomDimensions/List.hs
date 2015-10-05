{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE FlexibleInstances  #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-unused-binds      #-}
{-# OPTIONS_GHC -fno-warn-unused-imports    #-}

-- |
-- Module      : Network.Google.Resource.Analytics.Management.CustomDimensions.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Lists custom dimensions to which the user has access.
--
-- /See:/ <https://developers.google.com/analytics/ Google Analytics API Reference> for @AnalyticsManagementCustomDimensionsList@.
module Network.Google.Resource.Analytics.Management.CustomDimensions.List
    (
    -- * REST Resource
      ManagementCustomDimensionsListResource

    -- * Creating a Request
    , managementCustomDimensionsList'
    , ManagementCustomDimensionsList'

    -- * Request Lenses
    , mcdlQuotaUser
    , mcdlPrettyPrint
    , mcdlWebPropertyId
    , mcdlUserIP
    , mcdlAccountId
    , mcdlKey
    , mcdlOAuthToken
    , mcdlStartIndex
    , mcdlMaxResults
    , mcdlFields
    ) where

import           Network.Google.Analytics.Types
import           Network.Google.Prelude

-- | A resource alias for @AnalyticsManagementCustomDimensionsList@ which the
-- 'ManagementCustomDimensionsList'' request conforms to.
type ManagementCustomDimensionsListResource =
     "management" :>
       "accounts" :>
         Capture "accountId" Text :>
           "webproperties" :>
             Capture "webPropertyId" Text :>
               "customDimensions" :>
                 QueryParam "start-index" Int32 :>
                   QueryParam "max-results" Int32 :>
                     QueryParam "quotaUser" Text :>
                       QueryParam "prettyPrint" Bool :>
                         QueryParam "userIp" Text :>
                           QueryParam "fields" Text :>
                             QueryParam "key" AuthKey :>
                               QueryParam "oauth_token" OAuthToken :>
                                 QueryParam "alt" AltJSON :>
                                   Get '[JSON] CustomDimensions

-- | Lists custom dimensions to which the user has access.
--
-- /See:/ 'managementCustomDimensionsList'' smart constructor.
data ManagementCustomDimensionsList' = ManagementCustomDimensionsList'
    { _mcdlQuotaUser     :: !(Maybe Text)
    , _mcdlPrettyPrint   :: !Bool
    , _mcdlWebPropertyId :: !Text
    , _mcdlUserIP        :: !(Maybe Text)
    , _mcdlAccountId     :: !Text
    , _mcdlKey           :: !(Maybe AuthKey)
    , _mcdlOAuthToken    :: !(Maybe OAuthToken)
    , _mcdlStartIndex    :: !(Maybe Int32)
    , _mcdlMaxResults    :: !(Maybe Int32)
    , _mcdlFields        :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ManagementCustomDimensionsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mcdlQuotaUser'
--
-- * 'mcdlPrettyPrint'
--
-- * 'mcdlWebPropertyId'
--
-- * 'mcdlUserIP'
--
-- * 'mcdlAccountId'
--
-- * 'mcdlKey'
--
-- * 'mcdlOAuthToken'
--
-- * 'mcdlStartIndex'
--
-- * 'mcdlMaxResults'
--
-- * 'mcdlFields'
managementCustomDimensionsList'
    :: Text -- ^ 'webPropertyId'
    -> Text -- ^ 'accountId'
    -> ManagementCustomDimensionsList'
managementCustomDimensionsList' pMcdlWebPropertyId_ pMcdlAccountId_ =
    ManagementCustomDimensionsList'
    { _mcdlQuotaUser = Nothing
    , _mcdlPrettyPrint = False
    , _mcdlWebPropertyId = pMcdlWebPropertyId_
    , _mcdlUserIP = Nothing
    , _mcdlAccountId = pMcdlAccountId_
    , _mcdlKey = Nothing
    , _mcdlOAuthToken = Nothing
    , _mcdlStartIndex = Nothing
    , _mcdlMaxResults = Nothing
    , _mcdlFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
mcdlQuotaUser :: Lens' ManagementCustomDimensionsList' (Maybe Text)
mcdlQuotaUser
  = lens _mcdlQuotaUser
      (\ s a -> s{_mcdlQuotaUser = a})

-- | Returns response with indentations and line breaks.
mcdlPrettyPrint :: Lens' ManagementCustomDimensionsList' Bool
mcdlPrettyPrint
  = lens _mcdlPrettyPrint
      (\ s a -> s{_mcdlPrettyPrint = a})

-- | Web property ID for the custom dimensions to retrieve.
mcdlWebPropertyId :: Lens' ManagementCustomDimensionsList' Text
mcdlWebPropertyId
  = lens _mcdlWebPropertyId
      (\ s a -> s{_mcdlWebPropertyId = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
mcdlUserIP :: Lens' ManagementCustomDimensionsList' (Maybe Text)
mcdlUserIP
  = lens _mcdlUserIP (\ s a -> s{_mcdlUserIP = a})

-- | Account ID for the custom dimensions to retrieve.
mcdlAccountId :: Lens' ManagementCustomDimensionsList' Text
mcdlAccountId
  = lens _mcdlAccountId
      (\ s a -> s{_mcdlAccountId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
mcdlKey :: Lens' ManagementCustomDimensionsList' (Maybe AuthKey)
mcdlKey = lens _mcdlKey (\ s a -> s{_mcdlKey = a})

-- | OAuth 2.0 token for the current user.
mcdlOAuthToken :: Lens' ManagementCustomDimensionsList' (Maybe OAuthToken)
mcdlOAuthToken
  = lens _mcdlOAuthToken
      (\ s a -> s{_mcdlOAuthToken = a})

-- | An index of the first entity to retrieve. Use this parameter as a
-- pagination mechanism along with the max-results parameter.
mcdlStartIndex :: Lens' ManagementCustomDimensionsList' (Maybe Int32)
mcdlStartIndex
  = lens _mcdlStartIndex
      (\ s a -> s{_mcdlStartIndex = a})

-- | The maximum number of custom dimensions to include in this response.
mcdlMaxResults :: Lens' ManagementCustomDimensionsList' (Maybe Int32)
mcdlMaxResults
  = lens _mcdlMaxResults
      (\ s a -> s{_mcdlMaxResults = a})

-- | Selector specifying which fields to include in a partial response.
mcdlFields :: Lens' ManagementCustomDimensionsList' (Maybe Text)
mcdlFields
  = lens _mcdlFields (\ s a -> s{_mcdlFields = a})

instance GoogleAuth ManagementCustomDimensionsList'
         where
        authKey = mcdlKey . _Just
        authToken = mcdlOAuthToken . _Just

instance GoogleRequest
         ManagementCustomDimensionsList' where
        type Rs ManagementCustomDimensionsList' =
             CustomDimensions
        request = requestWithRoute defReq analyticsURL
        requestWithRoute r u
          ManagementCustomDimensionsList'{..}
          = go _mcdlAccountId _mcdlWebPropertyId
              _mcdlStartIndex
              _mcdlMaxResults
              _mcdlQuotaUser
              (Just _mcdlPrettyPrint)
              _mcdlUserIP
              _mcdlFields
              _mcdlKey
              _mcdlOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy ::
                         Proxy ManagementCustomDimensionsListResource)
                      r
                      u
