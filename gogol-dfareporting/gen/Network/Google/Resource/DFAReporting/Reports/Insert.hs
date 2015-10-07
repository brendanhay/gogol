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
-- Module      : Network.Google.Resource.DFAReporting.Reports.Insert
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Creates a report.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @DfareportingReportsInsert@.
module Network.Google.Resource.DFAReporting.Reports.Insert
    (
    -- * REST Resource
      ReportsInsertResource

    -- * Creating a Request
    , reportsInsert'
    , ReportsInsert'

    -- * Request Lenses
    , riQuotaUser
    , riPrettyPrint
    , riUserIP
    , riProFileId
    , riPayload
    , riKey
    , riOAuthToken
    , riFields
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @DfareportingReportsInsert@ method which the
-- 'ReportsInsert'' request conforms to.
type ReportsInsertResource =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "reports" :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "fields" Text :>
                   QueryParam "key" AuthKey :>
                     QueryParam "oauth_token" OAuthToken :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] Report :> Post '[JSON] Report

-- | Creates a report.
--
-- /See:/ 'reportsInsert'' smart constructor.
data ReportsInsert' = ReportsInsert'
    { _riQuotaUser   :: !(Maybe Text)
    , _riPrettyPrint :: !Bool
    , _riUserIP      :: !(Maybe Text)
    , _riProFileId   :: !Int64
    , _riPayload     :: !Report
    , _riKey         :: !(Maybe AuthKey)
    , _riOAuthToken  :: !(Maybe OAuthToken)
    , _riFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ReportsInsert'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'riQuotaUser'
--
-- * 'riPrettyPrint'
--
-- * 'riUserIP'
--
-- * 'riProFileId'
--
-- * 'riPayload'
--
-- * 'riKey'
--
-- * 'riOAuthToken'
--
-- * 'riFields'
reportsInsert'
    :: Int64 -- ^ 'profileId'
    -> Report -- ^ 'payload'
    -> ReportsInsert'
reportsInsert' pRiProFileId_ pRiPayload_ =
    ReportsInsert'
    { _riQuotaUser = Nothing
    , _riPrettyPrint = True
    , _riUserIP = Nothing
    , _riProFileId = pRiProFileId_
    , _riPayload = pRiPayload_
    , _riKey = Nothing
    , _riOAuthToken = Nothing
    , _riFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
riQuotaUser :: Lens' ReportsInsert' (Maybe Text)
riQuotaUser
  = lens _riQuotaUser (\ s a -> s{_riQuotaUser = a})

-- | Returns response with indentations and line breaks.
riPrettyPrint :: Lens' ReportsInsert' Bool
riPrettyPrint
  = lens _riPrettyPrint
      (\ s a -> s{_riPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
riUserIP :: Lens' ReportsInsert' (Maybe Text)
riUserIP = lens _riUserIP (\ s a -> s{_riUserIP = a})

-- | The DFA user profile ID.
riProFileId :: Lens' ReportsInsert' Int64
riProFileId
  = lens _riProFileId (\ s a -> s{_riProFileId = a})

-- | Multipart request metadata.
riPayload :: Lens' ReportsInsert' Report
riPayload
  = lens _riPayload (\ s a -> s{_riPayload = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
riKey :: Lens' ReportsInsert' (Maybe AuthKey)
riKey = lens _riKey (\ s a -> s{_riKey = a})

-- | OAuth 2.0 token for the current user.
riOAuthToken :: Lens' ReportsInsert' (Maybe OAuthToken)
riOAuthToken
  = lens _riOAuthToken (\ s a -> s{_riOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
riFields :: Lens' ReportsInsert' (Maybe Text)
riFields = lens _riFields (\ s a -> s{_riFields = a})

instance GoogleAuth ReportsInsert' where
        _AuthKey = riKey . _Just
        _AuthToken = riOAuthToken . _Just

instance GoogleRequest ReportsInsert' where
        type Rs ReportsInsert' = Report
        request = requestWith dFAReportingRequest
        requestWith rq ReportsInsert'{..}
          = go _riProFileId _riQuotaUser (Just _riPrettyPrint)
              _riUserIP
              _riFields
              _riKey
              _riOAuthToken
              (Just AltJSON)
              _riPayload
          where go
                  = clientBuild (Proxy :: Proxy ReportsInsertResource)
                      rq
