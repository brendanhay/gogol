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
-- Module      : Network.Google.Resource.Analytics.Management.CustomDimensions.Update
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Updates an existing custom dimension.
--
-- /See:/ <https://developers.google.com/analytics/ Google Analytics API Reference> for @AnalyticsManagementCustomDimensionsUpdate@.
module Network.Google.Resource.Analytics.Management.CustomDimensions.Update
    (
    -- * REST Resource
      ManagementCustomDimensionsUpdateResource

    -- * Creating a Request
    , managementCustomDimensionsUpdate'
    , ManagementCustomDimensionsUpdate'

    -- * Request Lenses
    , mcduQuotaUser
    , mcduPrettyPrint
    , mcduWebPropertyId
    , mcduIgnoreCustomDataSourceLinks
    , mcduUserIp
    , mcduAccountId
    , mcduKey
    , mcduOauthToken
    , mcduCustomDimensionId
    , mcduFields
    , mcduAlt
    ) where

import           Network.Google.Analytics.Types
import           Network.Google.Prelude

-- | A resource alias for @AnalyticsManagementCustomDimensionsUpdate@ which the
-- 'ManagementCustomDimensionsUpdate'' request conforms to.
type ManagementCustomDimensionsUpdateResource =
     "management" :>
       "accounts" :>
         Capture "accountId" Text :>
           "webproperties" :>
             Capture "webPropertyId" Text :>
               "customDimensions" :>
                 Capture "customDimensionId" Text :>
                   QueryParam "quotaUser" Text :>
                     QueryParam "prettyPrint" Bool :>
                       QueryParam "ignoreCustomDataSourceLinks" Bool :>
                         QueryParam "userIp" Text :>
                           QueryParam "key" Text :>
                             QueryParam "oauth_token" Text :>
                               QueryParam "fields" Text :>
                                 QueryParam "alt" Alt :>
                                   Put '[JSON] CustomDimension

-- | Updates an existing custom dimension.
--
-- /See:/ 'managementCustomDimensionsUpdate'' smart constructor.
data ManagementCustomDimensionsUpdate' = ManagementCustomDimensionsUpdate'
    { _mcduQuotaUser                   :: !(Maybe Text)
    , _mcduPrettyPrint                 :: !Bool
    , _mcduWebPropertyId               :: !Text
    , _mcduIgnoreCustomDataSourceLinks :: !Bool
    , _mcduUserIp                      :: !(Maybe Text)
    , _mcduAccountId                   :: !Text
    , _mcduKey                         :: !(Maybe Text)
    , _mcduOauthToken                  :: !(Maybe Text)
    , _mcduCustomDimensionId           :: !Text
    , _mcduFields                      :: !(Maybe Text)
    , _mcduAlt                         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ManagementCustomDimensionsUpdate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mcduQuotaUser'
--
-- * 'mcduPrettyPrint'
--
-- * 'mcduWebPropertyId'
--
-- * 'mcduIgnoreCustomDataSourceLinks'
--
-- * 'mcduUserIp'
--
-- * 'mcduAccountId'
--
-- * 'mcduKey'
--
-- * 'mcduOauthToken'
--
-- * 'mcduCustomDimensionId'
--
-- * 'mcduFields'
--
-- * 'mcduAlt'
managementCustomDimensionsUpdate'
    :: Text -- ^ 'webPropertyId'
    -> Text -- ^ 'accountId'
    -> Text -- ^ 'customDimensionId'
    -> ManagementCustomDimensionsUpdate'
managementCustomDimensionsUpdate' pMcduWebPropertyId_ pMcduAccountId_ pMcduCustomDimensionId_ =
    ManagementCustomDimensionsUpdate'
    { _mcduQuotaUser = Nothing
    , _mcduPrettyPrint = False
    , _mcduWebPropertyId = pMcduWebPropertyId_
    , _mcduIgnoreCustomDataSourceLinks = False
    , _mcduUserIp = Nothing
    , _mcduAccountId = pMcduAccountId_
    , _mcduKey = Nothing
    , _mcduOauthToken = Nothing
    , _mcduCustomDimensionId = pMcduCustomDimensionId_
    , _mcduFields = Nothing
    , _mcduAlt = ALTJSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
mcduQuotaUser :: Lens' ManagementCustomDimensionsUpdate' (Maybe Text)
mcduQuotaUser
  = lens _mcduQuotaUser
      (\ s a -> s{_mcduQuotaUser = a})

-- | Returns response with indentations and line breaks.
mcduPrettyPrint :: Lens' ManagementCustomDimensionsUpdate' Bool
mcduPrettyPrint
  = lens _mcduPrettyPrint
      (\ s a -> s{_mcduPrettyPrint = a})

-- | Web property ID for the custom dimension to update.
mcduWebPropertyId :: Lens' ManagementCustomDimensionsUpdate' Text
mcduWebPropertyId
  = lens _mcduWebPropertyId
      (\ s a -> s{_mcduWebPropertyId = a})

-- | Force the update and ignore any warnings related to the custom dimension
-- being linked to a custom data source \/ data set.
mcduIgnoreCustomDataSourceLinks :: Lens' ManagementCustomDimensionsUpdate' Bool
mcduIgnoreCustomDataSourceLinks
  = lens _mcduIgnoreCustomDataSourceLinks
      (\ s a -> s{_mcduIgnoreCustomDataSourceLinks = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
mcduUserIp :: Lens' ManagementCustomDimensionsUpdate' (Maybe Text)
mcduUserIp
  = lens _mcduUserIp (\ s a -> s{_mcduUserIp = a})

-- | Account ID for the custom dimension to update.
mcduAccountId :: Lens' ManagementCustomDimensionsUpdate' Text
mcduAccountId
  = lens _mcduAccountId
      (\ s a -> s{_mcduAccountId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
mcduKey :: Lens' ManagementCustomDimensionsUpdate' (Maybe Text)
mcduKey = lens _mcduKey (\ s a -> s{_mcduKey = a})

-- | OAuth 2.0 token for the current user.
mcduOauthToken :: Lens' ManagementCustomDimensionsUpdate' (Maybe Text)
mcduOauthToken
  = lens _mcduOauthToken
      (\ s a -> s{_mcduOauthToken = a})

-- | Custom dimension ID for the custom dimension to update.
mcduCustomDimensionId :: Lens' ManagementCustomDimensionsUpdate' Text
mcduCustomDimensionId
  = lens _mcduCustomDimensionId
      (\ s a -> s{_mcduCustomDimensionId = a})

-- | Selector specifying which fields to include in a partial response.
mcduFields :: Lens' ManagementCustomDimensionsUpdate' (Maybe Text)
mcduFields
  = lens _mcduFields (\ s a -> s{_mcduFields = a})

-- | Data format for the response.
mcduAlt :: Lens' ManagementCustomDimensionsUpdate' Alt
mcduAlt = lens _mcduAlt (\ s a -> s{_mcduAlt = a})

instance GoogleRequest
         ManagementCustomDimensionsUpdate' where
        type Rs ManagementCustomDimensionsUpdate' =
             CustomDimension
        request = requestWithRoute defReq analyticsURL
        requestWithRoute r u
          ManagementCustomDimensionsUpdate'{..}
          = go _mcduQuotaUser (Just _mcduPrettyPrint)
              _mcduWebPropertyId
              (Just _mcduIgnoreCustomDataSourceLinks)
              _mcduUserIp
              _mcduAccountId
              _mcduKey
              _mcduOauthToken
              _mcduCustomDimensionId
              _mcduFields
              (Just _mcduAlt)
          where go
                  = clientWithRoute
                      (Proxy ::
                         Proxy ManagementCustomDimensionsUpdateResource)
                      r
                      u
