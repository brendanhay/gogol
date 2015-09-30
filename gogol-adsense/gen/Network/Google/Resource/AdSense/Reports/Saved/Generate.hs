{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.AdSense.Reports.Saved.Generate
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Generate an AdSense report based on the saved report ID sent in the
-- query parameters.
--
-- /See:/ <https://developers.google.com/adsense/management/ AdSense Management API Reference> for @AdsenseReportsSavedGenerate@.
module AdSense.Reports.Saved.Generate
    (
    -- * REST Resource
      ReportsSavedGenerateAPI

    -- * Creating a Request
    , reportsSavedGenerate
    , ReportsSavedGenerate

    -- * Request Lenses
    , rsgQuotaUser
    , rsgPrettyPrint
    , rsgUserIp
    , rsgLocale
    , rsgSavedReportId
    , rsgKey
    , rsgOauthToken
    , rsgStartIndex
    , rsgMaxResults
    , rsgFields
    , rsgAlt
    ) where

import           Network.Google.AdSense.Types
import           Network.Google.Prelude

-- | A resource alias for @AdsenseReportsSavedGenerate@ which the
-- 'ReportsSavedGenerate' request conforms to.
type ReportsSavedGenerateAPI =
     "reports" :>
       Capture "savedReportId" Text :>
         QueryParam "locale" Text :>
           QueryParam "startIndex" Int32 :>
             QueryParam "maxResults" Int32 :>
               Get '[JSON] AdsenseReportsGenerateResponse

-- | Generate an AdSense report based on the saved report ID sent in the
-- query parameters.
--
-- /See:/ 'reportsSavedGenerate' smart constructor.
data ReportsSavedGenerate = ReportsSavedGenerate
    { _rsgQuotaUser     :: !(Maybe Text)
    , _rsgPrettyPrint   :: !Bool
    , _rsgUserIp        :: !(Maybe Text)
    , _rsgLocale        :: !(Maybe Text)
    , _rsgSavedReportId :: !Text
    , _rsgKey           :: !(Maybe Text)
    , _rsgOauthToken    :: !(Maybe Text)
    , _rsgStartIndex    :: !(Maybe Int32)
    , _rsgMaxResults    :: !(Maybe Int32)
    , _rsgFields        :: !(Maybe Text)
    , _rsgAlt           :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ReportsSavedGenerate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rsgQuotaUser'
--
-- * 'rsgPrettyPrint'
--
-- * 'rsgUserIp'
--
-- * 'rsgLocale'
--
-- * 'rsgSavedReportId'
--
-- * 'rsgKey'
--
-- * 'rsgOauthToken'
--
-- * 'rsgStartIndex'
--
-- * 'rsgMaxResults'
--
-- * 'rsgFields'
--
-- * 'rsgAlt'
reportsSavedGenerate
    :: Text -- ^ 'savedReportId'
    -> ReportsSavedGenerate
reportsSavedGenerate pRsgSavedReportId_ =
    ReportsSavedGenerate
    { _rsgQuotaUser = Nothing
    , _rsgPrettyPrint = True
    , _rsgUserIp = Nothing
    , _rsgLocale = Nothing
    , _rsgSavedReportId = pRsgSavedReportId_
    , _rsgKey = Nothing
    , _rsgOauthToken = Nothing
    , _rsgStartIndex = Nothing
    , _rsgMaxResults = Nothing
    , _rsgFields = Nothing
    , _rsgAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
rsgQuotaUser :: Lens' ReportsSavedGenerate' (Maybe Text)
rsgQuotaUser
  = lens _rsgQuotaUser (\ s a -> s{_rsgQuotaUser = a})

-- | Returns response with indentations and line breaks.
rsgPrettyPrint :: Lens' ReportsSavedGenerate' Bool
rsgPrettyPrint
  = lens _rsgPrettyPrint
      (\ s a -> s{_rsgPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
rsgUserIp :: Lens' ReportsSavedGenerate' (Maybe Text)
rsgUserIp
  = lens _rsgUserIp (\ s a -> s{_rsgUserIp = a})

-- | Optional locale to use for translating report output to a local
-- language. Defaults to \"en_US\" if not specified.
rsgLocale :: Lens' ReportsSavedGenerate' (Maybe Text)
rsgLocale
  = lens _rsgLocale (\ s a -> s{_rsgLocale = a})

-- | The saved report to retrieve.
rsgSavedReportId :: Lens' ReportsSavedGenerate' Text
rsgSavedReportId
  = lens _rsgSavedReportId
      (\ s a -> s{_rsgSavedReportId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
rsgKey :: Lens' ReportsSavedGenerate' (Maybe Text)
rsgKey = lens _rsgKey (\ s a -> s{_rsgKey = a})

-- | OAuth 2.0 token for the current user.
rsgOauthToken :: Lens' ReportsSavedGenerate' (Maybe Text)
rsgOauthToken
  = lens _rsgOauthToken
      (\ s a -> s{_rsgOauthToken = a})

-- | Index of the first row of report data to return.
rsgStartIndex :: Lens' ReportsSavedGenerate' (Maybe Int32)
rsgStartIndex
  = lens _rsgStartIndex
      (\ s a -> s{_rsgStartIndex = a})

-- | The maximum number of rows of report data to return.
rsgMaxResults :: Lens' ReportsSavedGenerate' (Maybe Int32)
rsgMaxResults
  = lens _rsgMaxResults
      (\ s a -> s{_rsgMaxResults = a})

-- | Selector specifying which fields to include in a partial response.
rsgFields :: Lens' ReportsSavedGenerate' (Maybe Text)
rsgFields
  = lens _rsgFields (\ s a -> s{_rsgFields = a})

-- | Data format for the response.
rsgAlt :: Lens' ReportsSavedGenerate' Text
rsgAlt = lens _rsgAlt (\ s a -> s{_rsgAlt = a})

instance GoogleRequest ReportsSavedGenerate' where
        type Rs ReportsSavedGenerate' =
             AdsenseReportsGenerateResponse
        request = requestWithRoute defReq adSenseURL
        requestWithRoute r u ReportsSavedGenerate{..}
          = go _rsgQuotaUser _rsgPrettyPrint _rsgUserIp
              _rsgLocale
              _rsgSavedReportId
              _rsgKey
              _rsgOauthToken
              _rsgStartIndex
              _rsgMaxResults
              _rsgFields
              _rsgAlt
          where go
                  = clientWithRoute
                      (Proxy :: Proxy ReportsSavedGenerateAPI)
                      r
                      u
