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
-- Module      : Network.Google.Resource.Analytics.Management.CustomDimensions.Insert
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Create a new custom dimension.
--
-- /See:/ <https://developers.google.com/analytics/ Google Analytics API Reference> for @AnalyticsManagementCustomDimensionsInsert@.
module Network.Google.Resource.Analytics.Management.CustomDimensions.Insert
    (
    -- * REST Resource
      ManagementCustomDimensionsInsertResource

    -- * Creating a Request
    , managementCustomDimensionsInsert'
    , ManagementCustomDimensionsInsert'

    -- * Request Lenses
    , mcdiQuotaUser
    , mcdiPrettyPrint
    , mcdiWebPropertyId
    , mcdiUserIp
    , mcdiAccountId
    , mcdiKey
    , mcdiOauthToken
    , mcdiFields
    , mcdiAlt
    ) where

import           Network.Google.Analytics.Types
import           Network.Google.Prelude

-- | A resource alias for @AnalyticsManagementCustomDimensionsInsert@ which the
-- 'ManagementCustomDimensionsInsert'' request conforms to.
type ManagementCustomDimensionsInsertResource =
     "management" :>
       "accounts" :>
         Capture "accountId" Text :>
           "webproperties" :>
             Capture "webPropertyId" Text :>
               "customDimensions" :>
                 QueryParam "quotaUser" Text :>
                   QueryParam "prettyPrint" Bool :>
                     QueryParam "userIp" Text :>
                       QueryParam "key" Text :>
                         QueryParam "oauth_token" Text :>
                           QueryParam "fields" Text :>
                             QueryParam "alt" Alt :>
                               Post '[JSON] CustomDimension

-- | Create a new custom dimension.
--
-- /See:/ 'managementCustomDimensionsInsert'' smart constructor.
data ManagementCustomDimensionsInsert' = ManagementCustomDimensionsInsert'
    { _mcdiQuotaUser     :: !(Maybe Text)
    , _mcdiPrettyPrint   :: !Bool
    , _mcdiWebPropertyId :: !Text
    , _mcdiUserIp        :: !(Maybe Text)
    , _mcdiAccountId     :: !Text
    , _mcdiKey           :: !(Maybe Text)
    , _mcdiOauthToken    :: !(Maybe Text)
    , _mcdiFields        :: !(Maybe Text)
    , _mcdiAlt           :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ManagementCustomDimensionsInsert'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mcdiQuotaUser'
--
-- * 'mcdiPrettyPrint'
--
-- * 'mcdiWebPropertyId'
--
-- * 'mcdiUserIp'
--
-- * 'mcdiAccountId'
--
-- * 'mcdiKey'
--
-- * 'mcdiOauthToken'
--
-- * 'mcdiFields'
--
-- * 'mcdiAlt'
managementCustomDimensionsInsert'
    :: Text -- ^ 'webPropertyId'
    -> Text -- ^ 'accountId'
    -> ManagementCustomDimensionsInsert'
managementCustomDimensionsInsert' pMcdiWebPropertyId_ pMcdiAccountId_ =
    ManagementCustomDimensionsInsert'
    { _mcdiQuotaUser = Nothing
    , _mcdiPrettyPrint = False
    , _mcdiWebPropertyId = pMcdiWebPropertyId_
    , _mcdiUserIp = Nothing
    , _mcdiAccountId = pMcdiAccountId_
    , _mcdiKey = Nothing
    , _mcdiOauthToken = Nothing
    , _mcdiFields = Nothing
    , _mcdiAlt = ALTJSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
mcdiQuotaUser :: Lens' ManagementCustomDimensionsInsert' (Maybe Text)
mcdiQuotaUser
  = lens _mcdiQuotaUser
      (\ s a -> s{_mcdiQuotaUser = a})

-- | Returns response with indentations and line breaks.
mcdiPrettyPrint :: Lens' ManagementCustomDimensionsInsert' Bool
mcdiPrettyPrint
  = lens _mcdiPrettyPrint
      (\ s a -> s{_mcdiPrettyPrint = a})

-- | Web property ID for the custom dimension to create.
mcdiWebPropertyId :: Lens' ManagementCustomDimensionsInsert' Text
mcdiWebPropertyId
  = lens _mcdiWebPropertyId
      (\ s a -> s{_mcdiWebPropertyId = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
mcdiUserIp :: Lens' ManagementCustomDimensionsInsert' (Maybe Text)
mcdiUserIp
  = lens _mcdiUserIp (\ s a -> s{_mcdiUserIp = a})

-- | Account ID for the custom dimension to create.
mcdiAccountId :: Lens' ManagementCustomDimensionsInsert' Text
mcdiAccountId
  = lens _mcdiAccountId
      (\ s a -> s{_mcdiAccountId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
mcdiKey :: Lens' ManagementCustomDimensionsInsert' (Maybe Text)
mcdiKey = lens _mcdiKey (\ s a -> s{_mcdiKey = a})

-- | OAuth 2.0 token for the current user.
mcdiOauthToken :: Lens' ManagementCustomDimensionsInsert' (Maybe Text)
mcdiOauthToken
  = lens _mcdiOauthToken
      (\ s a -> s{_mcdiOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
mcdiFields :: Lens' ManagementCustomDimensionsInsert' (Maybe Text)
mcdiFields
  = lens _mcdiFields (\ s a -> s{_mcdiFields = a})

-- | Data format for the response.
mcdiAlt :: Lens' ManagementCustomDimensionsInsert' Alt
mcdiAlt = lens _mcdiAlt (\ s a -> s{_mcdiAlt = a})

instance GoogleRequest
         ManagementCustomDimensionsInsert' where
        type Rs ManagementCustomDimensionsInsert' =
             CustomDimension
        request = requestWithRoute defReq analyticsURL
        requestWithRoute r u
          ManagementCustomDimensionsInsert'{..}
          = go _mcdiQuotaUser (Just _mcdiPrettyPrint)
              _mcdiWebPropertyId
              _mcdiUserIp
              _mcdiAccountId
              _mcdiKey
              _mcdiOauthToken
              _mcdiFields
              (Just _mcdiAlt)
          where go
                  = clientWithRoute
                      (Proxy ::
                         Proxy ManagementCustomDimensionsInsertResource)
                      r
                      u
