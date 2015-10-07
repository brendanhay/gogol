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
-- Module      : Network.Google.Resource.Analytics.Management.UnSampledReports.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Returns a single unsampled report.
--
-- /See:/ <https://developers.google.com/analytics/ Google Analytics API Reference> for @AnalyticsManagementUnSampledReportsGet@.
module Network.Google.Resource.Analytics.Management.UnSampledReports.Get
    (
    -- * REST Resource
      ManagementUnSampledReportsGetResource

    -- * Creating a Request
    , managementUnSampledReportsGet'
    , ManagementUnSampledReportsGet'

    -- * Request Lenses
    , musrgQuotaUser
    , musrgPrettyPrint
    , musrgWebPropertyId
    , musrgUserIP
    , musrgProFileId
    , musrgAccountId
    , musrgKey
    , musrgUnSampledReportId
    , musrgOAuthToken
    , musrgFields
    ) where

import           Network.Google.Analytics.Types
import           Network.Google.Prelude

-- | A resource alias for @AnalyticsManagementUnSampledReportsGet@ method which the
-- 'ManagementUnSampledReportsGet'' request conforms to.
type ManagementUnSampledReportsGetResource =
     "management" :>
       "accounts" :>
         Capture "accountId" Text :>
           "webproperties" :>
             Capture "webPropertyId" Text :>
               "profiles" :>
                 Capture "profileId" Text :>
                   "unsampledReports" :>
                     Capture "unsampledReportId" Text :>
                       QueryParam "quotaUser" Text :>
                         QueryParam "prettyPrint" Bool :>
                           QueryParam "userIp" Text :>
                             QueryParam "fields" Text :>
                               QueryParam "key" AuthKey :>
                                 QueryParam "oauth_token" OAuthToken :>
                                   QueryParam "alt" AltJSON :>
                                     Get '[JSON] UnSampledReport

-- | Returns a single unsampled report.
--
-- /See:/ 'managementUnSampledReportsGet'' smart constructor.
data ManagementUnSampledReportsGet' = ManagementUnSampledReportsGet'
    { _musrgQuotaUser         :: !(Maybe Text)
    , _musrgPrettyPrint       :: !Bool
    , _musrgWebPropertyId     :: !Text
    , _musrgUserIP            :: !(Maybe Text)
    , _musrgProFileId         :: !Text
    , _musrgAccountId         :: !Text
    , _musrgKey               :: !(Maybe AuthKey)
    , _musrgUnSampledReportId :: !Text
    , _musrgOAuthToken        :: !(Maybe OAuthToken)
    , _musrgFields            :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ManagementUnSampledReportsGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'musrgQuotaUser'
--
-- * 'musrgPrettyPrint'
--
-- * 'musrgWebPropertyId'
--
-- * 'musrgUserIP'
--
-- * 'musrgProFileId'
--
-- * 'musrgAccountId'
--
-- * 'musrgKey'
--
-- * 'musrgUnSampledReportId'
--
-- * 'musrgOAuthToken'
--
-- * 'musrgFields'
managementUnSampledReportsGet'
    :: Text -- ^ 'webPropertyId'
    -> Text -- ^ 'profileId'
    -> Text -- ^ 'accountId'
    -> Text -- ^ 'unsampledReportId'
    -> ManagementUnSampledReportsGet'
managementUnSampledReportsGet' pMusrgWebPropertyId_ pMusrgProFileId_ pMusrgAccountId_ pMusrgUnSampledReportId_ =
    ManagementUnSampledReportsGet'
    { _musrgQuotaUser = Nothing
    , _musrgPrettyPrint = False
    , _musrgWebPropertyId = pMusrgWebPropertyId_
    , _musrgUserIP = Nothing
    , _musrgProFileId = pMusrgProFileId_
    , _musrgAccountId = pMusrgAccountId_
    , _musrgKey = Nothing
    , _musrgUnSampledReportId = pMusrgUnSampledReportId_
    , _musrgOAuthToken = Nothing
    , _musrgFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
musrgQuotaUser :: Lens' ManagementUnSampledReportsGet' (Maybe Text)
musrgQuotaUser
  = lens _musrgQuotaUser
      (\ s a -> s{_musrgQuotaUser = a})

-- | Returns response with indentations and line breaks.
musrgPrettyPrint :: Lens' ManagementUnSampledReportsGet' Bool
musrgPrettyPrint
  = lens _musrgPrettyPrint
      (\ s a -> s{_musrgPrettyPrint = a})

-- | Web property ID to retrieve unsampled reports for.
musrgWebPropertyId :: Lens' ManagementUnSampledReportsGet' Text
musrgWebPropertyId
  = lens _musrgWebPropertyId
      (\ s a -> s{_musrgWebPropertyId = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
musrgUserIP :: Lens' ManagementUnSampledReportsGet' (Maybe Text)
musrgUserIP
  = lens _musrgUserIP (\ s a -> s{_musrgUserIP = a})

-- | View (Profile) ID to retrieve unsampled report for.
musrgProFileId :: Lens' ManagementUnSampledReportsGet' Text
musrgProFileId
  = lens _musrgProFileId
      (\ s a -> s{_musrgProFileId = a})

-- | Account ID to retrieve unsampled report for.
musrgAccountId :: Lens' ManagementUnSampledReportsGet' Text
musrgAccountId
  = lens _musrgAccountId
      (\ s a -> s{_musrgAccountId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
musrgKey :: Lens' ManagementUnSampledReportsGet' (Maybe AuthKey)
musrgKey = lens _musrgKey (\ s a -> s{_musrgKey = a})

-- | ID of the unsampled report to retrieve.
musrgUnSampledReportId :: Lens' ManagementUnSampledReportsGet' Text
musrgUnSampledReportId
  = lens _musrgUnSampledReportId
      (\ s a -> s{_musrgUnSampledReportId = a})

-- | OAuth 2.0 token for the current user.
musrgOAuthToken :: Lens' ManagementUnSampledReportsGet' (Maybe OAuthToken)
musrgOAuthToken
  = lens _musrgOAuthToken
      (\ s a -> s{_musrgOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
musrgFields :: Lens' ManagementUnSampledReportsGet' (Maybe Text)
musrgFields
  = lens _musrgFields (\ s a -> s{_musrgFields = a})

instance GoogleAuth ManagementUnSampledReportsGet'
         where
        _AuthKey = musrgKey . _Just
        _AuthToken = musrgOAuthToken . _Just

instance GoogleRequest ManagementUnSampledReportsGet'
         where
        type Rs ManagementUnSampledReportsGet' =
             UnSampledReport
        request = requestWith analyticsRequest
        requestWith rq ManagementUnSampledReportsGet'{..}
          = go _musrgAccountId _musrgWebPropertyId
              _musrgProFileId
              _musrgUnSampledReportId
              _musrgQuotaUser
              (Just _musrgPrettyPrint)
              _musrgUserIP
              _musrgFields
              _musrgKey
              _musrgOAuthToken
              (Just AltJSON)
          where go
                  = clientBuild
                      (Proxy ::
                         Proxy ManagementUnSampledReportsGetResource)
                      rq
