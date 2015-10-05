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
-- Module      : Network.Google.Resource.DFAReporting.Reports.Patch
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Updates a report. This method supports patch semantics.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @DfareportingReportsPatch@.
module Network.Google.Resource.DFAReporting.Reports.Patch
    (
    -- * REST Resource
      ReportsPatchResource

    -- * Creating a Request
    , reportsPatch'
    , ReportsPatch'

    -- * Request Lenses
    , rpQuotaUser
    , rpPrettyPrint
    , rpUserIP
    , rpReportId
    , rpProFileId
    , rpPayload
    , rpKey
    , rpOAuthToken
    , rpFields
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @DfareportingReportsPatch@ which the
-- 'ReportsPatch'' request conforms to.
type ReportsPatchResource =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "reports" :>
           Capture "reportId" Int64 :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "key" AuthKey :>
                       QueryParam "oauth_token" OAuthToken :>
                         QueryParam "alt" AltJSON :>
                           ReqBody '[JSON] Report :> Patch '[JSON] Report

-- | Updates a report. This method supports patch semantics.
--
-- /See:/ 'reportsPatch'' smart constructor.
data ReportsPatch' = ReportsPatch'
    { _rpQuotaUser   :: !(Maybe Text)
    , _rpPrettyPrint :: !Bool
    , _rpUserIP      :: !(Maybe Text)
    , _rpReportId    :: !Int64
    , _rpProFileId   :: !Int64
    , _rpPayload     :: !Report
    , _rpKey         :: !(Maybe AuthKey)
    , _rpOAuthToken  :: !(Maybe OAuthToken)
    , _rpFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ReportsPatch'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rpQuotaUser'
--
-- * 'rpPrettyPrint'
--
-- * 'rpUserIP'
--
-- * 'rpReportId'
--
-- * 'rpProFileId'
--
-- * 'rpPayload'
--
-- * 'rpKey'
--
-- * 'rpOAuthToken'
--
-- * 'rpFields'
reportsPatch'
    :: Int64 -- ^ 'reportId'
    -> Int64 -- ^ 'profileId'
    -> Report -- ^ 'payload'
    -> ReportsPatch'
reportsPatch' pRpReportId_ pRpProFileId_ pRpPayload_ =
    ReportsPatch'
    { _rpQuotaUser = Nothing
    , _rpPrettyPrint = True
    , _rpUserIP = Nothing
    , _rpReportId = pRpReportId_
    , _rpProFileId = pRpProFileId_
    , _rpPayload = pRpPayload_
    , _rpKey = Nothing
    , _rpOAuthToken = Nothing
    , _rpFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
rpQuotaUser :: Lens' ReportsPatch' (Maybe Text)
rpQuotaUser
  = lens _rpQuotaUser (\ s a -> s{_rpQuotaUser = a})

-- | Returns response with indentations and line breaks.
rpPrettyPrint :: Lens' ReportsPatch' Bool
rpPrettyPrint
  = lens _rpPrettyPrint
      (\ s a -> s{_rpPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
rpUserIP :: Lens' ReportsPatch' (Maybe Text)
rpUserIP = lens _rpUserIP (\ s a -> s{_rpUserIP = a})

-- | The ID of the report.
rpReportId :: Lens' ReportsPatch' Int64
rpReportId
  = lens _rpReportId (\ s a -> s{_rpReportId = a})

-- | The DFA user profile ID.
rpProFileId :: Lens' ReportsPatch' Int64
rpProFileId
  = lens _rpProFileId (\ s a -> s{_rpProFileId = a})

-- | Multipart request metadata.
rpPayload :: Lens' ReportsPatch' Report
rpPayload
  = lens _rpPayload (\ s a -> s{_rpPayload = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
rpKey :: Lens' ReportsPatch' (Maybe AuthKey)
rpKey = lens _rpKey (\ s a -> s{_rpKey = a})

-- | OAuth 2.0 token for the current user.
rpOAuthToken :: Lens' ReportsPatch' (Maybe OAuthToken)
rpOAuthToken
  = lens _rpOAuthToken (\ s a -> s{_rpOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
rpFields :: Lens' ReportsPatch' (Maybe Text)
rpFields = lens _rpFields (\ s a -> s{_rpFields = a})

instance GoogleAuth ReportsPatch' where
        authKey = rpKey . _Just
        authToken = rpOAuthToken . _Just

instance GoogleRequest ReportsPatch' where
        type Rs ReportsPatch' = Report
        request = requestWithRoute defReq dFAReportingURL
        requestWithRoute r u ReportsPatch'{..}
          = go _rpProFileId _rpReportId _rpQuotaUser
              (Just _rpPrettyPrint)
              _rpUserIP
              _rpFields
              _rpKey
              _rpOAuthToken
              (Just AltJSON)
              _rpPayload
          where go
                  = clientWithRoute
                      (Proxy :: Proxy ReportsPatchResource)
                      r
                      u
