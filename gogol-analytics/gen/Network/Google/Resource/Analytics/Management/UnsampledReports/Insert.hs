{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Analytics.Management.UnsampledReports.Insert
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Create a new unsampled report.
--
-- /See:/ <https://developers.google.com/analytics/ Google Analytics API Reference> for @AnalyticsManagementUnsampledReportsInsert@.
module Analytics.Management.UnsampledReports.Insert
    (
    -- * REST Resource
      ManagementUnsampledReportsInsertAPI

    -- * Creating a Request
    , managementUnsampledReportsInsert
    , ManagementUnsampledReportsInsert

    -- * Request Lenses
    , muriQuotaUser
    , muriPrettyPrint
    , muriWebPropertyId
    , muriUserIp
    , muriProfileId
    , muriAccountId
    , muriKey
    , muriOauthToken
    , muriFields
    , muriAlt
    ) where

import           Network.Google.Analytics.Types
import           Network.Google.Prelude

-- | A resource alias for @AnalyticsManagementUnsampledReportsInsert@ which the
-- 'ManagementUnsampledReportsInsert' request conforms to.
type ManagementUnsampledReportsInsertAPI =
     "management" :>
       "accounts" :>
         Capture "accountId" Text :>
           "webproperties" :>
             Capture "webPropertyId" Text :>
               "profiles" :>
                 Capture "profileId" Text :>
                   "unsampledReports" :> Post '[JSON] UnsampledReport

-- | Create a new unsampled report.
--
-- /See:/ 'managementUnsampledReportsInsert' smart constructor.
data ManagementUnsampledReportsInsert = ManagementUnsampledReportsInsert
    { _muriQuotaUser     :: !(Maybe Text)
    , _muriPrettyPrint   :: !Bool
    , _muriWebPropertyId :: !Text
    , _muriUserIp        :: !(Maybe Text)
    , _muriProfileId     :: !Text
    , _muriAccountId     :: !Text
    , _muriKey           :: !(Maybe Text)
    , _muriOauthToken    :: !(Maybe Text)
    , _muriFields        :: !(Maybe Text)
    , _muriAlt           :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ManagementUnsampledReportsInsert'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'muriQuotaUser'
--
-- * 'muriPrettyPrint'
--
-- * 'muriWebPropertyId'
--
-- * 'muriUserIp'
--
-- * 'muriProfileId'
--
-- * 'muriAccountId'
--
-- * 'muriKey'
--
-- * 'muriOauthToken'
--
-- * 'muriFields'
--
-- * 'muriAlt'
managementUnsampledReportsInsert
    :: Text -- ^ 'webPropertyId'
    -> Text -- ^ 'profileId'
    -> Text -- ^ 'accountId'
    -> ManagementUnsampledReportsInsert
managementUnsampledReportsInsert pMuriWebPropertyId_ pMuriProfileId_ pMuriAccountId_ =
    ManagementUnsampledReportsInsert
    { _muriQuotaUser = Nothing
    , _muriPrettyPrint = False
    , _muriWebPropertyId = pMuriWebPropertyId_
    , _muriUserIp = Nothing
    , _muriProfileId = pMuriProfileId_
    , _muriAccountId = pMuriAccountId_
    , _muriKey = Nothing
    , _muriOauthToken = Nothing
    , _muriFields = Nothing
    , _muriAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
muriQuotaUser :: Lens' ManagementUnsampledReportsInsert' (Maybe Text)
muriQuotaUser
  = lens _muriQuotaUser
      (\ s a -> s{_muriQuotaUser = a})

-- | Returns response with indentations and line breaks.
muriPrettyPrint :: Lens' ManagementUnsampledReportsInsert' Bool
muriPrettyPrint
  = lens _muriPrettyPrint
      (\ s a -> s{_muriPrettyPrint = a})

-- | Web property ID to create the unsampled report for.
muriWebPropertyId :: Lens' ManagementUnsampledReportsInsert' Text
muriWebPropertyId
  = lens _muriWebPropertyId
      (\ s a -> s{_muriWebPropertyId = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
muriUserIp :: Lens' ManagementUnsampledReportsInsert' (Maybe Text)
muriUserIp
  = lens _muriUserIp (\ s a -> s{_muriUserIp = a})

-- | View (Profile) ID to create the unsampled report for.
muriProfileId :: Lens' ManagementUnsampledReportsInsert' Text
muriProfileId
  = lens _muriProfileId
      (\ s a -> s{_muriProfileId = a})

-- | Account ID to create the unsampled report for.
muriAccountId :: Lens' ManagementUnsampledReportsInsert' Text
muriAccountId
  = lens _muriAccountId
      (\ s a -> s{_muriAccountId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
muriKey :: Lens' ManagementUnsampledReportsInsert' (Maybe Text)
muriKey = lens _muriKey (\ s a -> s{_muriKey = a})

-- | OAuth 2.0 token for the current user.
muriOauthToken :: Lens' ManagementUnsampledReportsInsert' (Maybe Text)
muriOauthToken
  = lens _muriOauthToken
      (\ s a -> s{_muriOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
muriFields :: Lens' ManagementUnsampledReportsInsert' (Maybe Text)
muriFields
  = lens _muriFields (\ s a -> s{_muriFields = a})

-- | Data format for the response.
muriAlt :: Lens' ManagementUnsampledReportsInsert' Text
muriAlt = lens _muriAlt (\ s a -> s{_muriAlt = a})

instance GoogleRequest
         ManagementUnsampledReportsInsert' where
        type Rs ManagementUnsampledReportsInsert' =
             UnsampledReport
        request = requestWithRoute defReq analyticsURL
        requestWithRoute r u
          ManagementUnsampledReportsInsert{..}
          = go _muriQuotaUser _muriPrettyPrint
              _muriWebPropertyId
              _muriUserIp
              _muriProfileId
              _muriAccountId
              _muriKey
              _muriOauthToken
              _muriFields
              _muriAlt
          where go
                  = clientWithRoute
                      (Proxy :: Proxy ManagementUnsampledReportsInsertAPI)
                      r
                      u
