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
-- Module      : Network.Google.Resource.Analytics.Management.CustomDimensions.Patch
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Updates an existing custom dimension. This method supports patch
-- semantics.
--
-- /See:/ <https://developers.google.com/analytics/ Google Analytics API Reference> for @AnalyticsManagementCustomDimensionsPatch@.
module Network.Google.Resource.Analytics.Management.CustomDimensions.Patch
    (
    -- * REST Resource
      ManagementCustomDimensionsPatchResource

    -- * Creating a Request
    , managementCustomDimensionsPatch'
    , ManagementCustomDimensionsPatch'

    -- * Request Lenses
    , mcdpQuotaUser
    , mcdpPrettyPrint
    , mcdpWebPropertyId
    , mcdpIgnoreCustomDataSourceLinks
    , mcdpUserIp
    , mcdpAccountId
    , mcdpKey
    , mcdpOauthToken
    , mcdpCustomDimensionId
    , mcdpFields
    , mcdpAlt
    ) where

import           Network.Google.Analytics.Types
import           Network.Google.Prelude

-- | A resource alias for @AnalyticsManagementCustomDimensionsPatch@ which the
-- 'ManagementCustomDimensionsPatch'' request conforms to.
type ManagementCustomDimensionsPatchResource =
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
                                   Patch '[JSON] CustomDimension

-- | Updates an existing custom dimension. This method supports patch
-- semantics.
--
-- /See:/ 'managementCustomDimensionsPatch'' smart constructor.
data ManagementCustomDimensionsPatch' = ManagementCustomDimensionsPatch'
    { _mcdpQuotaUser                   :: !(Maybe Text)
    , _mcdpPrettyPrint                 :: !Bool
    , _mcdpWebPropertyId               :: !Text
    , _mcdpIgnoreCustomDataSourceLinks :: !Bool
    , _mcdpUserIp                      :: !(Maybe Text)
    , _mcdpAccountId                   :: !Text
    , _mcdpKey                         :: !(Maybe Text)
    , _mcdpOauthToken                  :: !(Maybe Text)
    , _mcdpCustomDimensionId           :: !Text
    , _mcdpFields                      :: !(Maybe Text)
    , _mcdpAlt                         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ManagementCustomDimensionsPatch'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mcdpQuotaUser'
--
-- * 'mcdpPrettyPrint'
--
-- * 'mcdpWebPropertyId'
--
-- * 'mcdpIgnoreCustomDataSourceLinks'
--
-- * 'mcdpUserIp'
--
-- * 'mcdpAccountId'
--
-- * 'mcdpKey'
--
-- * 'mcdpOauthToken'
--
-- * 'mcdpCustomDimensionId'
--
-- * 'mcdpFields'
--
-- * 'mcdpAlt'
managementCustomDimensionsPatch'
    :: Text -- ^ 'webPropertyId'
    -> Text -- ^ 'accountId'
    -> Text -- ^ 'customDimensionId'
    -> ManagementCustomDimensionsPatch'
managementCustomDimensionsPatch' pMcdpWebPropertyId_ pMcdpAccountId_ pMcdpCustomDimensionId_ =
    ManagementCustomDimensionsPatch'
    { _mcdpQuotaUser = Nothing
    , _mcdpPrettyPrint = False
    , _mcdpWebPropertyId = pMcdpWebPropertyId_
    , _mcdpIgnoreCustomDataSourceLinks = False
    , _mcdpUserIp = Nothing
    , _mcdpAccountId = pMcdpAccountId_
    , _mcdpKey = Nothing
    , _mcdpOauthToken = Nothing
    , _mcdpCustomDimensionId = pMcdpCustomDimensionId_
    , _mcdpFields = Nothing
    , _mcdpAlt = ALTJSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
mcdpQuotaUser :: Lens' ManagementCustomDimensionsPatch' (Maybe Text)
mcdpQuotaUser
  = lens _mcdpQuotaUser
      (\ s a -> s{_mcdpQuotaUser = a})

-- | Returns response with indentations and line breaks.
mcdpPrettyPrint :: Lens' ManagementCustomDimensionsPatch' Bool
mcdpPrettyPrint
  = lens _mcdpPrettyPrint
      (\ s a -> s{_mcdpPrettyPrint = a})

-- | Web property ID for the custom dimension to update.
mcdpWebPropertyId :: Lens' ManagementCustomDimensionsPatch' Text
mcdpWebPropertyId
  = lens _mcdpWebPropertyId
      (\ s a -> s{_mcdpWebPropertyId = a})

-- | Force the update and ignore any warnings related to the custom dimension
-- being linked to a custom data source \/ data set.
mcdpIgnoreCustomDataSourceLinks :: Lens' ManagementCustomDimensionsPatch' Bool
mcdpIgnoreCustomDataSourceLinks
  = lens _mcdpIgnoreCustomDataSourceLinks
      (\ s a -> s{_mcdpIgnoreCustomDataSourceLinks = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
mcdpUserIp :: Lens' ManagementCustomDimensionsPatch' (Maybe Text)
mcdpUserIp
  = lens _mcdpUserIp (\ s a -> s{_mcdpUserIp = a})

-- | Account ID for the custom dimension to update.
mcdpAccountId :: Lens' ManagementCustomDimensionsPatch' Text
mcdpAccountId
  = lens _mcdpAccountId
      (\ s a -> s{_mcdpAccountId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
mcdpKey :: Lens' ManagementCustomDimensionsPatch' (Maybe Text)
mcdpKey = lens _mcdpKey (\ s a -> s{_mcdpKey = a})

-- | OAuth 2.0 token for the current user.
mcdpOauthToken :: Lens' ManagementCustomDimensionsPatch' (Maybe Text)
mcdpOauthToken
  = lens _mcdpOauthToken
      (\ s a -> s{_mcdpOauthToken = a})

-- | Custom dimension ID for the custom dimension to update.
mcdpCustomDimensionId :: Lens' ManagementCustomDimensionsPatch' Text
mcdpCustomDimensionId
  = lens _mcdpCustomDimensionId
      (\ s a -> s{_mcdpCustomDimensionId = a})

-- | Selector specifying which fields to include in a partial response.
mcdpFields :: Lens' ManagementCustomDimensionsPatch' (Maybe Text)
mcdpFields
  = lens _mcdpFields (\ s a -> s{_mcdpFields = a})

-- | Data format for the response.
mcdpAlt :: Lens' ManagementCustomDimensionsPatch' Alt
mcdpAlt = lens _mcdpAlt (\ s a -> s{_mcdpAlt = a})

instance GoogleRequest
         ManagementCustomDimensionsPatch' where
        type Rs ManagementCustomDimensionsPatch' =
             CustomDimension
        request = requestWithRoute defReq analyticsURL
        requestWithRoute r u
          ManagementCustomDimensionsPatch'{..}
          = go _mcdpQuotaUser (Just _mcdpPrettyPrint)
              _mcdpWebPropertyId
              (Just _mcdpIgnoreCustomDataSourceLinks)
              _mcdpUserIp
              _mcdpAccountId
              _mcdpKey
              _mcdpOauthToken
              _mcdpCustomDimensionId
              _mcdpFields
              (Just _mcdpAlt)
          where go
                  = clientWithRoute
                      (Proxy ::
                         Proxy ManagementCustomDimensionsPatchResource)
                      r
                      u
