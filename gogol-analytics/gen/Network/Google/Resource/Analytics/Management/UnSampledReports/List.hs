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
-- Module      : Network.Google.Resource.Analytics.Management.UnSampledReports.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Lists unsampled reports to which the user has access.
--
-- /See:/ <https://developers.google.com/analytics/ Google Analytics API Reference> for @AnalyticsManagementUnSampledReportsList@.
module Network.Google.Resource.Analytics.Management.UnSampledReports.List
    (
    -- * REST Resource
      ManagementUnSampledReportsListResource

    -- * Creating a Request
    , managementUnSampledReportsList'
    , ManagementUnSampledReportsList'

    -- * Request Lenses
    , musrlQuotaUser
    , musrlPrettyPrint
    , musrlWebPropertyId
    , musrlUserIP
    , musrlProFileId
    , musrlAccountId
    , musrlKey
    , musrlOAuthToken
    , musrlStartIndex
    , musrlMaxResults
    , musrlFields
    ) where

import           Network.Google.Analytics.Types
import           Network.Google.Prelude

-- | A resource alias for @AnalyticsManagementUnSampledReportsList@ which the
-- 'ManagementUnSampledReportsList'' request conforms to.
type ManagementUnSampledReportsListResource =
     "management" :>
       "accounts" :>
         Capture "accountId" Text :>
           "webproperties" :>
             Capture "webPropertyId" Text :>
               "profiles" :>
                 Capture "profileId" Text :>
                   "unsampledReports" :>
                     QueryParam "start-index" Int32 :>
                       QueryParam "max-results" Int32 :>
                         QueryParam "quotaUser" Text :>
                           QueryParam "prettyPrint" Bool :>
                             QueryParam "userIp" Text :>
                               QueryParam "fields" Text :>
                                 QueryParam "key" AuthKey :>
                                   QueryParam "oauth_token" OAuthToken :>
                                     QueryParam "alt" AltJSON :>
                                       Get '[JSON] UnSampledReports

-- | Lists unsampled reports to which the user has access.
--
-- /See:/ 'managementUnSampledReportsList'' smart constructor.
data ManagementUnSampledReportsList' = ManagementUnSampledReportsList'
    { _musrlQuotaUser     :: !(Maybe Text)
    , _musrlPrettyPrint   :: !Bool
    , _musrlWebPropertyId :: !Text
    , _musrlUserIP        :: !(Maybe Text)
    , _musrlProFileId     :: !Text
    , _musrlAccountId     :: !Text
    , _musrlKey           :: !(Maybe AuthKey)
    , _musrlOAuthToken    :: !(Maybe OAuthToken)
    , _musrlStartIndex    :: !(Maybe Int32)
    , _musrlMaxResults    :: !(Maybe Int32)
    , _musrlFields        :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ManagementUnSampledReportsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'musrlQuotaUser'
--
-- * 'musrlPrettyPrint'
--
-- * 'musrlWebPropertyId'
--
-- * 'musrlUserIP'
--
-- * 'musrlProFileId'
--
-- * 'musrlAccountId'
--
-- * 'musrlKey'
--
-- * 'musrlOAuthToken'
--
-- * 'musrlStartIndex'
--
-- * 'musrlMaxResults'
--
-- * 'musrlFields'
managementUnSampledReportsList'
    :: Text -- ^ 'webPropertyId'
    -> Text -- ^ 'profileId'
    -> Text -- ^ 'accountId'
    -> ManagementUnSampledReportsList'
managementUnSampledReportsList' pMusrlWebPropertyId_ pMusrlProFileId_ pMusrlAccountId_ =
    ManagementUnSampledReportsList'
    { _musrlQuotaUser = Nothing
    , _musrlPrettyPrint = False
    , _musrlWebPropertyId = pMusrlWebPropertyId_
    , _musrlUserIP = Nothing
    , _musrlProFileId = pMusrlProFileId_
    , _musrlAccountId = pMusrlAccountId_
    , _musrlKey = Nothing
    , _musrlOAuthToken = Nothing
    , _musrlStartIndex = Nothing
    , _musrlMaxResults = Nothing
    , _musrlFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
musrlQuotaUser :: Lens' ManagementUnSampledReportsList' (Maybe Text)
musrlQuotaUser
  = lens _musrlQuotaUser
      (\ s a -> s{_musrlQuotaUser = a})

-- | Returns response with indentations and line breaks.
musrlPrettyPrint :: Lens' ManagementUnSampledReportsList' Bool
musrlPrettyPrint
  = lens _musrlPrettyPrint
      (\ s a -> s{_musrlPrettyPrint = a})

-- | Web property ID to retrieve unsampled reports for. Must be a specific
-- web property ID, ~all is not supported.
musrlWebPropertyId :: Lens' ManagementUnSampledReportsList' Text
musrlWebPropertyId
  = lens _musrlWebPropertyId
      (\ s a -> s{_musrlWebPropertyId = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
musrlUserIP :: Lens' ManagementUnSampledReportsList' (Maybe Text)
musrlUserIP
  = lens _musrlUserIP (\ s a -> s{_musrlUserIP = a})

-- | View (Profile) ID to retrieve unsampled reports for. Must be a specific
-- view (profile) ID, ~all is not supported.
musrlProFileId :: Lens' ManagementUnSampledReportsList' Text
musrlProFileId
  = lens _musrlProFileId
      (\ s a -> s{_musrlProFileId = a})

-- | Account ID to retrieve unsampled reports for. Must be a specific account
-- ID, ~all is not supported.
musrlAccountId :: Lens' ManagementUnSampledReportsList' Text
musrlAccountId
  = lens _musrlAccountId
      (\ s a -> s{_musrlAccountId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
musrlKey :: Lens' ManagementUnSampledReportsList' (Maybe AuthKey)
musrlKey = lens _musrlKey (\ s a -> s{_musrlKey = a})

-- | OAuth 2.0 token for the current user.
musrlOAuthToken :: Lens' ManagementUnSampledReportsList' (Maybe OAuthToken)
musrlOAuthToken
  = lens _musrlOAuthToken
      (\ s a -> s{_musrlOAuthToken = a})

-- | An index of the first unsampled report to retrieve. Use this parameter
-- as a pagination mechanism along with the max-results parameter.
musrlStartIndex :: Lens' ManagementUnSampledReportsList' (Maybe Int32)
musrlStartIndex
  = lens _musrlStartIndex
      (\ s a -> s{_musrlStartIndex = a})

-- | The maximum number of unsampled reports to include in this response.
musrlMaxResults :: Lens' ManagementUnSampledReportsList' (Maybe Int32)
musrlMaxResults
  = lens _musrlMaxResults
      (\ s a -> s{_musrlMaxResults = a})

-- | Selector specifying which fields to include in a partial response.
musrlFields :: Lens' ManagementUnSampledReportsList' (Maybe Text)
musrlFields
  = lens _musrlFields (\ s a -> s{_musrlFields = a})

instance GoogleAuth ManagementUnSampledReportsList'
         where
        authKey = musrlKey . _Just
        authToken = musrlOAuthToken . _Just

instance GoogleRequest
         ManagementUnSampledReportsList' where
        type Rs ManagementUnSampledReportsList' =
             UnSampledReports
        request = requestWith analyticsRequest
        requestWith rq ManagementUnSampledReportsList'{..}
          = go _musrlAccountId _musrlWebPropertyId
              _musrlProFileId
              _musrlStartIndex
              _musrlMaxResults
              _musrlQuotaUser
              (Just _musrlPrettyPrint)
              _musrlUserIP
              _musrlFields
              _musrlKey
              _musrlOAuthToken
              (Just AltJSON)
          where go
                  = clientBuild
                      (Proxy ::
                         Proxy ManagementUnSampledReportsListResource)
                      rq
