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
-- Module      : Network.Google.Resource.DFAReporting.Reports.Files.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieves a report file.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @DfareportingReportsFilesGet@.
module Network.Google.Resource.DFAReporting.Reports.Files.Get
    (
    -- * REST Resource
      ReportsFilesGetResource

    -- * Creating a Request
    , reportsFilesGet'
    , ReportsFilesGet'

    -- * Request Lenses
    , rfgQuotaUser
    , rfgPrettyPrint
    , rfgUserIP
    , rfgReportId
    , rfgProfileId
    , rfgKey
    , rfgFileId
    , rfgOAuthToken
    , rfgFields
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @DfareportingReportsFilesGet@ which the
-- 'ReportsFilesGet'' request conforms to.
type ReportsFilesGetResource =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "reports" :>
           Capture "reportId" Int64 :>
             "files" :>
               Capture "fileId" Int64 :>
                 QueryParam "quotaUser" Text :>
                   QueryParam "prettyPrint" Bool :>
                     QueryParam "userIp" Text :>
                       QueryParam "key" Key :>
                         QueryParam "oauth_token" OAuthToken :>
                           QueryParam "fields" Text :>
                             QueryParam "alt" AltJSON :> Get '[JSON] File
       :<|>
       "userprofiles" :>
         Capture "profileId" Int64 :>
           "reports" :>
             Capture "reportId" Int64 :>
               "files" :>
                 Capture "fileId" Int64 :>
                   QueryParam "quotaUser" Text :>
                     QueryParam "prettyPrint" Bool :>
                       QueryParam "userIp" Text :>
                         QueryParam "key" Key :>
                           QueryParam "oauth_token" OAuthToken :>
                             QueryParam "fields" Text :>
                               QueryParam "alt" Media :>
                                 Get '[OctetStream] Stream

-- | Retrieves a report file.
--
-- /See:/ 'reportsFilesGet'' smart constructor.
data ReportsFilesGet' = ReportsFilesGet'
    { _rfgQuotaUser   :: !(Maybe Text)
    , _rfgPrettyPrint :: !Bool
    , _rfgUserIP      :: !(Maybe Text)
    , _rfgReportId    :: !Int64
    , _rfgProfileId   :: !Int64
    , _rfgKey         :: !(Maybe Key)
    , _rfgFileId      :: !Int64
    , _rfgOAuthToken  :: !(Maybe OAuthToken)
    , _rfgFields      :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ReportsFilesGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rfgQuotaUser'
--
-- * 'rfgPrettyPrint'
--
-- * 'rfgUserIP'
--
-- * 'rfgReportId'
--
-- * 'rfgProfileId'
--
-- * 'rfgKey'
--
-- * 'rfgFileId'
--
-- * 'rfgOAuthToken'
--
-- * 'rfgFields'
reportsFilesGet'
    :: Int64 -- ^ 'reportId'
    -> Int64 -- ^ 'profileId'
    -> Int64 -- ^ 'fileId'
    -> ReportsFilesGet'
reportsFilesGet' pRfgReportId_ pRfgProfileId_ pRfgFileId_ =
    ReportsFilesGet'
    { _rfgQuotaUser = Nothing
    , _rfgPrettyPrint = True
    , _rfgUserIP = Nothing
    , _rfgReportId = pRfgReportId_
    , _rfgProfileId = pRfgProfileId_
    , _rfgKey = Nothing
    , _rfgFileId = pRfgFileId_
    , _rfgOAuthToken = Nothing
    , _rfgFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
rfgQuotaUser :: Lens' ReportsFilesGet' (Maybe Text)
rfgQuotaUser
  = lens _rfgQuotaUser (\ s a -> s{_rfgQuotaUser = a})

-- | Returns response with indentations and line breaks.
rfgPrettyPrint :: Lens' ReportsFilesGet' Bool
rfgPrettyPrint
  = lens _rfgPrettyPrint
      (\ s a -> s{_rfgPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
rfgUserIP :: Lens' ReportsFilesGet' (Maybe Text)
rfgUserIP
  = lens _rfgUserIP (\ s a -> s{_rfgUserIP = a})

-- | The ID of the report.
rfgReportId :: Lens' ReportsFilesGet' Int64
rfgReportId
  = lens _rfgReportId (\ s a -> s{_rfgReportId = a})

-- | The DFA profile ID.
rfgProfileId :: Lens' ReportsFilesGet' Int64
rfgProfileId
  = lens _rfgProfileId (\ s a -> s{_rfgProfileId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
rfgKey :: Lens' ReportsFilesGet' (Maybe Key)
rfgKey = lens _rfgKey (\ s a -> s{_rfgKey = a})

-- | The ID of the report file.
rfgFileId :: Lens' ReportsFilesGet' Int64
rfgFileId
  = lens _rfgFileId (\ s a -> s{_rfgFileId = a})

-- | OAuth 2.0 token for the current user.
rfgOAuthToken :: Lens' ReportsFilesGet' (Maybe OAuthToken)
rfgOAuthToken
  = lens _rfgOAuthToken
      (\ s a -> s{_rfgOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
rfgFields :: Lens' ReportsFilesGet' (Maybe Text)
rfgFields
  = lens _rfgFields (\ s a -> s{_rfgFields = a})

instance GoogleAuth ReportsFilesGet' where
        authKey = rfgKey . _Just
        authToken = rfgOAuthToken . _Just

instance GoogleRequest ReportsFilesGet' where
        type Rs ReportsFilesGet' = File
        request = requestWithRoute defReq dFAReportingURL
        requestWithRoute r u ReportsFilesGet'{..}
          = go _rfgQuotaUser (Just _rfgPrettyPrint) _rfgUserIP
              _rfgReportId
              _rfgProfileId
              _rfgKey
              _rfgFileId
              _rfgOAuthToken
              _rfgFields
              (Just AltJSON)
          where go :<|> _
                  = clientWithRoute
                      (Proxy :: Proxy ReportsFilesGetResource)
                      r
                      u

instance GoogleRequest ReportsFilesGet' where
        type Rs (Download ReportsFilesGet') = Stream
        request = requestWithRoute defReq dFAReportingURL
        requestWithRoute r u ReportsFilesGet'{..}
          = go _rfgQuotaUser (Just _rfgPrettyPrint) _rfgUserIP
              _rfgReportId
              _rfgProfileId
              _rfgKey
              _rfgFileId
              _rfgOAuthToken
              _rfgFields
              (Just Media)
          where go :<|> _
                  = clientWithRoute
                      (Proxy :: Proxy ReportsFilesGetResource)
                      r
                      u
