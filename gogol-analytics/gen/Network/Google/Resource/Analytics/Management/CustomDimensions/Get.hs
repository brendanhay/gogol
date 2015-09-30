{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Analytics.Management.CustomDimensions.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Get a custom dimension to which the user has access.
--
-- /See:/ <https://developers.google.com/analytics/ Google Analytics API Reference> for @AnalyticsManagementCustomDimensionsGet@.
module Analytics.Management.CustomDimensions.Get
    (
    -- * REST Resource
      ManagementCustomDimensionsGetAPI

    -- * Creating a Request
    , managementCustomDimensionsGet
    , ManagementCustomDimensionsGet

    -- * Request Lenses
    , mcdgQuotaUser
    , mcdgPrettyPrint
    , mcdgWebPropertyId
    , mcdgUserIp
    , mcdgAccountId
    , mcdgKey
    , mcdgOauthToken
    , mcdgCustomDimensionId
    , mcdgFields
    , mcdgAlt
    ) where

import           Network.Google.Analytics.Types
import           Network.Google.Prelude

-- | A resource alias for @AnalyticsManagementCustomDimensionsGet@ which the
-- 'ManagementCustomDimensionsGet' request conforms to.
type ManagementCustomDimensionsGetAPI =
     "management" :>
       "accounts" :>
         Capture "accountId" Text :>
           "webproperties" :>
             Capture "webPropertyId" Text :>
               "customDimensions" :>
                 Capture "customDimensionId" Text :>
                   Get '[JSON] CustomDimension

-- | Get a custom dimension to which the user has access.
--
-- /See:/ 'managementCustomDimensionsGet' smart constructor.
data ManagementCustomDimensionsGet = ManagementCustomDimensionsGet
    { _mcdgQuotaUser         :: !(Maybe Text)
    , _mcdgPrettyPrint       :: !Bool
    , _mcdgWebPropertyId     :: !Text
    , _mcdgUserIp            :: !(Maybe Text)
    , _mcdgAccountId         :: !Text
    , _mcdgKey               :: !(Maybe Text)
    , _mcdgOauthToken        :: !(Maybe Text)
    , _mcdgCustomDimensionId :: !Text
    , _mcdgFields            :: !(Maybe Text)
    , _mcdgAlt               :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ManagementCustomDimensionsGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mcdgQuotaUser'
--
-- * 'mcdgPrettyPrint'
--
-- * 'mcdgWebPropertyId'
--
-- * 'mcdgUserIp'
--
-- * 'mcdgAccountId'
--
-- * 'mcdgKey'
--
-- * 'mcdgOauthToken'
--
-- * 'mcdgCustomDimensionId'
--
-- * 'mcdgFields'
--
-- * 'mcdgAlt'
managementCustomDimensionsGet
    :: Text -- ^ 'webPropertyId'
    -> Text -- ^ 'accountId'
    -> Text -- ^ 'customDimensionId'
    -> ManagementCustomDimensionsGet
managementCustomDimensionsGet pMcdgWebPropertyId_ pMcdgAccountId_ pMcdgCustomDimensionId_ =
    ManagementCustomDimensionsGet
    { _mcdgQuotaUser = Nothing
    , _mcdgPrettyPrint = False
    , _mcdgWebPropertyId = pMcdgWebPropertyId_
    , _mcdgUserIp = Nothing
    , _mcdgAccountId = pMcdgAccountId_
    , _mcdgKey = Nothing
    , _mcdgOauthToken = Nothing
    , _mcdgCustomDimensionId = pMcdgCustomDimensionId_
    , _mcdgFields = Nothing
    , _mcdgAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
mcdgQuotaUser :: Lens' ManagementCustomDimensionsGet' (Maybe Text)
mcdgQuotaUser
  = lens _mcdgQuotaUser
      (\ s a -> s{_mcdgQuotaUser = a})

-- | Returns response with indentations and line breaks.
mcdgPrettyPrint :: Lens' ManagementCustomDimensionsGet' Bool
mcdgPrettyPrint
  = lens _mcdgPrettyPrint
      (\ s a -> s{_mcdgPrettyPrint = a})

-- | Web property ID for the custom dimension to retrieve.
mcdgWebPropertyId :: Lens' ManagementCustomDimensionsGet' Text
mcdgWebPropertyId
  = lens _mcdgWebPropertyId
      (\ s a -> s{_mcdgWebPropertyId = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
mcdgUserIp :: Lens' ManagementCustomDimensionsGet' (Maybe Text)
mcdgUserIp
  = lens _mcdgUserIp (\ s a -> s{_mcdgUserIp = a})

-- | Account ID for the custom dimension to retrieve.
mcdgAccountId :: Lens' ManagementCustomDimensionsGet' Text
mcdgAccountId
  = lens _mcdgAccountId
      (\ s a -> s{_mcdgAccountId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
mcdgKey :: Lens' ManagementCustomDimensionsGet' (Maybe Text)
mcdgKey = lens _mcdgKey (\ s a -> s{_mcdgKey = a})

-- | OAuth 2.0 token for the current user.
mcdgOauthToken :: Lens' ManagementCustomDimensionsGet' (Maybe Text)
mcdgOauthToken
  = lens _mcdgOauthToken
      (\ s a -> s{_mcdgOauthToken = a})

-- | The ID of the custom dimension to retrieve.
mcdgCustomDimensionId :: Lens' ManagementCustomDimensionsGet' Text
mcdgCustomDimensionId
  = lens _mcdgCustomDimensionId
      (\ s a -> s{_mcdgCustomDimensionId = a})

-- | Selector specifying which fields to include in a partial response.
mcdgFields :: Lens' ManagementCustomDimensionsGet' (Maybe Text)
mcdgFields
  = lens _mcdgFields (\ s a -> s{_mcdgFields = a})

-- | Data format for the response.
mcdgAlt :: Lens' ManagementCustomDimensionsGet' Text
mcdgAlt = lens _mcdgAlt (\ s a -> s{_mcdgAlt = a})

instance GoogleRequest ManagementCustomDimensionsGet'
         where
        type Rs ManagementCustomDimensionsGet' =
             CustomDimension
        request = requestWithRoute defReq analyticsURL
        requestWithRoute r u
          ManagementCustomDimensionsGet{..}
          = go _mcdgQuotaUser _mcdgPrettyPrint
              _mcdgWebPropertyId
              _mcdgUserIp
              _mcdgAccountId
              _mcdgKey
              _mcdgOauthToken
              _mcdgCustomDimensionId
              _mcdgFields
              _mcdgAlt
          where go
                  = clientWithRoute
                      (Proxy :: Proxy ManagementCustomDimensionsGetAPI)
                      r
                      u
