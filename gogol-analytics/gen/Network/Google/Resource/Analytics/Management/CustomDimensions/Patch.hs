{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE FlexibleInstances  #-}
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
    , mcdpUserIP
    , mcdpPayload
    , mcdpAccountId
    , mcdpKey
    , mcdpOAuthToken
    , mcdpCustomDimensionId
    , mcdpFields
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
                   QueryParam "ignoreCustomDataSourceLinks" Bool :>
                     QueryParam "quotaUser" Text :>
                       QueryParam "prettyPrint" Bool :>
                         QueryParam "userIp" Text :>
                           QueryParam "fields" Text :>
                             QueryParam "key" Key :>
                               QueryParam "oauth_token" OAuthToken :>
                                 QueryParam "alt" AltJSON :>
                                   ReqBody '[JSON] CustomDimension :>
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
    , _mcdpUserIP                      :: !(Maybe Text)
    , _mcdpPayload                     :: !CustomDimension
    , _mcdpAccountId                   :: !Text
    , _mcdpKey                         :: !(Maybe Key)
    , _mcdpOAuthToken                  :: !(Maybe OAuthToken)
    , _mcdpCustomDimensionId           :: !Text
    , _mcdpFields                      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
-- * 'mcdpUserIP'
--
-- * 'mcdpPayload'
--
-- * 'mcdpAccountId'
--
-- * 'mcdpKey'
--
-- * 'mcdpOAuthToken'
--
-- * 'mcdpCustomDimensionId'
--
-- * 'mcdpFields'
managementCustomDimensionsPatch'
    :: Text -- ^ 'webPropertyId'
    -> CustomDimension -- ^ 'payload'
    -> Text -- ^ 'accountId'
    -> Text -- ^ 'customDimensionId'
    -> ManagementCustomDimensionsPatch'
managementCustomDimensionsPatch' pMcdpWebPropertyId_ pMcdpPayload_ pMcdpAccountId_ pMcdpCustomDimensionId_ =
    ManagementCustomDimensionsPatch'
    { _mcdpQuotaUser = Nothing
    , _mcdpPrettyPrint = False
    , _mcdpWebPropertyId = pMcdpWebPropertyId_
    , _mcdpIgnoreCustomDataSourceLinks = False
    , _mcdpUserIP = Nothing
    , _mcdpPayload = pMcdpPayload_
    , _mcdpAccountId = pMcdpAccountId_
    , _mcdpKey = Nothing
    , _mcdpOAuthToken = Nothing
    , _mcdpCustomDimensionId = pMcdpCustomDimensionId_
    , _mcdpFields = Nothing
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
mcdpUserIP :: Lens' ManagementCustomDimensionsPatch' (Maybe Text)
mcdpUserIP
  = lens _mcdpUserIP (\ s a -> s{_mcdpUserIP = a})

-- | Multipart request metadata.
mcdpPayload :: Lens' ManagementCustomDimensionsPatch' CustomDimension
mcdpPayload
  = lens _mcdpPayload (\ s a -> s{_mcdpPayload = a})

-- | Account ID for the custom dimension to update.
mcdpAccountId :: Lens' ManagementCustomDimensionsPatch' Text
mcdpAccountId
  = lens _mcdpAccountId
      (\ s a -> s{_mcdpAccountId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
mcdpKey :: Lens' ManagementCustomDimensionsPatch' (Maybe Key)
mcdpKey = lens _mcdpKey (\ s a -> s{_mcdpKey = a})

-- | OAuth 2.0 token for the current user.
mcdpOAuthToken :: Lens' ManagementCustomDimensionsPatch' (Maybe OAuthToken)
mcdpOAuthToken
  = lens _mcdpOAuthToken
      (\ s a -> s{_mcdpOAuthToken = a})

-- | Custom dimension ID for the custom dimension to update.
mcdpCustomDimensionId :: Lens' ManagementCustomDimensionsPatch' Text
mcdpCustomDimensionId
  = lens _mcdpCustomDimensionId
      (\ s a -> s{_mcdpCustomDimensionId = a})

-- | Selector specifying which fields to include in a partial response.
mcdpFields :: Lens' ManagementCustomDimensionsPatch' (Maybe Text)
mcdpFields
  = lens _mcdpFields (\ s a -> s{_mcdpFields = a})

instance GoogleAuth ManagementCustomDimensionsPatch'
         where
        authKey = mcdpKey . _Just
        authToken = mcdpOAuthToken . _Just

instance GoogleRequest
         ManagementCustomDimensionsPatch' where
        type Rs ManagementCustomDimensionsPatch' =
             CustomDimension
        request = requestWithRoute defReq analyticsURL
        requestWithRoute r u
          ManagementCustomDimensionsPatch'{..}
          = go _mcdpAccountId _mcdpWebPropertyId
              _mcdpCustomDimensionId
              (Just _mcdpIgnoreCustomDataSourceLinks)
              _mcdpQuotaUser
              (Just _mcdpPrettyPrint)
              _mcdpUserIP
              _mcdpFields
              _mcdpKey
              _mcdpOAuthToken
              (Just AltJSON)
              _mcdpPayload
          where go
                  = clientWithRoute
                      (Proxy ::
                         Proxy ManagementCustomDimensionsPatchResource)
                      r
                      u
