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
-- Module      : Network.Google.Resource.DFAReporting.Reports.CompatibleFields.Query
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Returns the fields that are compatible to be selected in the respective
-- sections of a report criteria, given the fields already selected in the
-- input report and user permissions.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @DfareportingReportsCompatibleFieldsQuery@.
module Network.Google.Resource.DFAReporting.Reports.CompatibleFields.Query
    (
    -- * REST Resource
      ReportsCompatibleFieldsQueryResource

    -- * Creating a Request
    , reportsCompatibleFieldsQuery'
    , ReportsCompatibleFieldsQuery'

    -- * Request Lenses
    , rcfqQuotaUser
    , rcfqPrettyPrint
    , rcfqUserIP
    , rcfqProFileId
    , rcfqPayload
    , rcfqKey
    , rcfqOAuthToken
    , rcfqFields
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @DfareportingReportsCompatibleFieldsQuery@ method which the
-- 'ReportsCompatibleFieldsQuery'' request conforms to.
type ReportsCompatibleFieldsQueryResource =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "reports" :>
           "compatiblefields" :>
             "query" :>
               QueryParam "quotaUser" Text :>
                 QueryParam "prettyPrint" Bool :>
                   QueryParam "userIp" Text :>
                     QueryParam "fields" Text :>
                       QueryParam "key" AuthKey :>
                         Header "Authorization" OAuthToken :>
                           QueryParam "alt" AltJSON :>
                             ReqBody '[JSON] Report :>
                               Post '[JSON] CompatibleFields

-- | Returns the fields that are compatible to be selected in the respective
-- sections of a report criteria, given the fields already selected in the
-- input report and user permissions.
--
-- /See:/ 'reportsCompatibleFieldsQuery'' smart constructor.
data ReportsCompatibleFieldsQuery' = ReportsCompatibleFieldsQuery'
    { _rcfqQuotaUser   :: !(Maybe Text)
    , _rcfqPrettyPrint :: !Bool
    , _rcfqUserIP      :: !(Maybe Text)
    , _rcfqProFileId   :: !Int64
    , _rcfqPayload     :: !Report
    , _rcfqKey         :: !(Maybe AuthKey)
    , _rcfqOAuthToken  :: !(Maybe OAuthToken)
    , _rcfqFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ReportsCompatibleFieldsQuery'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rcfqQuotaUser'
--
-- * 'rcfqPrettyPrint'
--
-- * 'rcfqUserIP'
--
-- * 'rcfqProFileId'
--
-- * 'rcfqPayload'
--
-- * 'rcfqKey'
--
-- * 'rcfqOAuthToken'
--
-- * 'rcfqFields'
reportsCompatibleFieldsQuery'
    :: Int64 -- ^ 'profileId'
    -> Report -- ^ 'payload'
    -> ReportsCompatibleFieldsQuery'
reportsCompatibleFieldsQuery' pRcfqProFileId_ pRcfqPayload_ =
    ReportsCompatibleFieldsQuery'
    { _rcfqQuotaUser = Nothing
    , _rcfqPrettyPrint = True
    , _rcfqUserIP = Nothing
    , _rcfqProFileId = pRcfqProFileId_
    , _rcfqPayload = pRcfqPayload_
    , _rcfqKey = Nothing
    , _rcfqOAuthToken = Nothing
    , _rcfqFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
rcfqQuotaUser :: Lens' ReportsCompatibleFieldsQuery' (Maybe Text)
rcfqQuotaUser
  = lens _rcfqQuotaUser
      (\ s a -> s{_rcfqQuotaUser = a})

-- | Returns response with indentations and line breaks.
rcfqPrettyPrint :: Lens' ReportsCompatibleFieldsQuery' Bool
rcfqPrettyPrint
  = lens _rcfqPrettyPrint
      (\ s a -> s{_rcfqPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
rcfqUserIP :: Lens' ReportsCompatibleFieldsQuery' (Maybe Text)
rcfqUserIP
  = lens _rcfqUserIP (\ s a -> s{_rcfqUserIP = a})

-- | The DFA user profile ID.
rcfqProFileId :: Lens' ReportsCompatibleFieldsQuery' Int64
rcfqProFileId
  = lens _rcfqProFileId
      (\ s a -> s{_rcfqProFileId = a})

-- | Multipart request metadata.
rcfqPayload :: Lens' ReportsCompatibleFieldsQuery' Report
rcfqPayload
  = lens _rcfqPayload (\ s a -> s{_rcfqPayload = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
rcfqKey :: Lens' ReportsCompatibleFieldsQuery' (Maybe AuthKey)
rcfqKey = lens _rcfqKey (\ s a -> s{_rcfqKey = a})

-- | OAuth 2.0 token for the current user.
rcfqOAuthToken :: Lens' ReportsCompatibleFieldsQuery' (Maybe OAuthToken)
rcfqOAuthToken
  = lens _rcfqOAuthToken
      (\ s a -> s{_rcfqOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
rcfqFields :: Lens' ReportsCompatibleFieldsQuery' (Maybe Text)
rcfqFields
  = lens _rcfqFields (\ s a -> s{_rcfqFields = a})

instance GoogleAuth ReportsCompatibleFieldsQuery'
         where
        _AuthKey = rcfqKey . _Just
        _AuthToken = rcfqOAuthToken . _Just

instance GoogleRequest ReportsCompatibleFieldsQuery'
         where
        type Rs ReportsCompatibleFieldsQuery' =
             CompatibleFields
        request = requestWith dFAReportingRequest
        requestWith rq ReportsCompatibleFieldsQuery'{..}
          = go _rcfqProFileId _rcfqQuotaUser
              (Just _rcfqPrettyPrint)
              _rcfqUserIP
              _rcfqFields
              _rcfqKey
              _rcfqOAuthToken
              (Just AltJSON)
              _rcfqPayload
          where go
                  = clientBuild
                      (Proxy :: Proxy ReportsCompatibleFieldsQueryResource)
                      rq
