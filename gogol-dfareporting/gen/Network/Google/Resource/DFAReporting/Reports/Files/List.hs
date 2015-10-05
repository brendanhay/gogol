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
-- Module      : Network.Google.Resource.DFAReporting.Reports.Files.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Lists files for a report.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @DfareportingReportsFilesList@.
module Network.Google.Resource.DFAReporting.Reports.Files.List
    (
    -- * REST Resource
      ReportsFilesListResource

    -- * Creating a Request
    , reportsFilesList'
    , ReportsFilesList'

    -- * Request Lenses
    , rflQuotaUser
    , rflPrettyPrint
    , rflUserIP
    , rflReportId
    , rflProFileId
    , rflSortOrder
    , rflKey
    , rflPageToken
    , rflSortField
    , rflOAuthToken
    , rflMaxResults
    , rflFields
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @DfareportingReportsFilesList@ which the
-- 'ReportsFilesList'' request conforms to.
type ReportsFilesListResource =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "reports" :>
           Capture "reportId" Int64 :>
             "files" :>
               QueryParam "sortOrder" ReportsFilesListSortOrder :>
                 QueryParam "pageToken" Text :>
                   QueryParam "sortField" ReportsFilesListSortField :>
                     QueryParam "maxResults" Int32 :>
                       QueryParam "quotaUser" Text :>
                         QueryParam "prettyPrint" Bool :>
                           QueryParam "userIp" Text :>
                             QueryParam "fields" Text :>
                               QueryParam "key" AuthKey :>
                                 QueryParam "oauth_token" OAuthToken :>
                                   QueryParam "alt" AltJSON :>
                                     Get '[JSON] FileList

-- | Lists files for a report.
--
-- /See:/ 'reportsFilesList'' smart constructor.
data ReportsFilesList' = ReportsFilesList'
    { _rflQuotaUser   :: !(Maybe Text)
    , _rflPrettyPrint :: !Bool
    , _rflUserIP      :: !(Maybe Text)
    , _rflReportId    :: !Int64
    , _rflProFileId   :: !Int64
    , _rflSortOrder   :: !ReportsFilesListSortOrder
    , _rflKey         :: !(Maybe AuthKey)
    , _rflPageToken   :: !(Maybe Text)
    , _rflSortField   :: !ReportsFilesListSortField
    , _rflOAuthToken  :: !(Maybe OAuthToken)
    , _rflMaxResults  :: !(Maybe Int32)
    , _rflFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ReportsFilesList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rflQuotaUser'
--
-- * 'rflPrettyPrint'
--
-- * 'rflUserIP'
--
-- * 'rflReportId'
--
-- * 'rflProFileId'
--
-- * 'rflSortOrder'
--
-- * 'rflKey'
--
-- * 'rflPageToken'
--
-- * 'rflSortField'
--
-- * 'rflOAuthToken'
--
-- * 'rflMaxResults'
--
-- * 'rflFields'
reportsFilesList'
    :: Int64 -- ^ 'reportId'
    -> Int64 -- ^ 'profileId'
    -> ReportsFilesList'
reportsFilesList' pRflReportId_ pRflProFileId_ =
    ReportsFilesList'
    { _rflQuotaUser = Nothing
    , _rflPrettyPrint = True
    , _rflUserIP = Nothing
    , _rflReportId = pRflReportId_
    , _rflProFileId = pRflProFileId_
    , _rflSortOrder = RFLSODescending
    , _rflKey = Nothing
    , _rflPageToken = Nothing
    , _rflSortField = RFLSFLastModifiedTime
    , _rflOAuthToken = Nothing
    , _rflMaxResults = Nothing
    , _rflFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
rflQuotaUser :: Lens' ReportsFilesList' (Maybe Text)
rflQuotaUser
  = lens _rflQuotaUser (\ s a -> s{_rflQuotaUser = a})

-- | Returns response with indentations and line breaks.
rflPrettyPrint :: Lens' ReportsFilesList' Bool
rflPrettyPrint
  = lens _rflPrettyPrint
      (\ s a -> s{_rflPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
rflUserIP :: Lens' ReportsFilesList' (Maybe Text)
rflUserIP
  = lens _rflUserIP (\ s a -> s{_rflUserIP = a})

-- | The ID of the parent report.
rflReportId :: Lens' ReportsFilesList' Int64
rflReportId
  = lens _rflReportId (\ s a -> s{_rflReportId = a})

-- | The DFA profile ID.
rflProFileId :: Lens' ReportsFilesList' Int64
rflProFileId
  = lens _rflProFileId (\ s a -> s{_rflProFileId = a})

-- | Order of sorted results, default is \'DESCENDING\'.
rflSortOrder :: Lens' ReportsFilesList' ReportsFilesListSortOrder
rflSortOrder
  = lens _rflSortOrder (\ s a -> s{_rflSortOrder = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
rflKey :: Lens' ReportsFilesList' (Maybe AuthKey)
rflKey = lens _rflKey (\ s a -> s{_rflKey = a})

-- | The value of the nextToken from the previous result page.
rflPageToken :: Lens' ReportsFilesList' (Maybe Text)
rflPageToken
  = lens _rflPageToken (\ s a -> s{_rflPageToken = a})

-- | The field by which to sort the list.
rflSortField :: Lens' ReportsFilesList' ReportsFilesListSortField
rflSortField
  = lens _rflSortField (\ s a -> s{_rflSortField = a})

-- | OAuth 2.0 token for the current user.
rflOAuthToken :: Lens' ReportsFilesList' (Maybe OAuthToken)
rflOAuthToken
  = lens _rflOAuthToken
      (\ s a -> s{_rflOAuthToken = a})

-- | Maximum number of results to return.
rflMaxResults :: Lens' ReportsFilesList' (Maybe Int32)
rflMaxResults
  = lens _rflMaxResults
      (\ s a -> s{_rflMaxResults = a})

-- | Selector specifying which fields to include in a partial response.
rflFields :: Lens' ReportsFilesList' (Maybe Text)
rflFields
  = lens _rflFields (\ s a -> s{_rflFields = a})

instance GoogleAuth ReportsFilesList' where
        authKey = rflKey . _Just
        authToken = rflOAuthToken . _Just

instance GoogleRequest ReportsFilesList' where
        type Rs ReportsFilesList' = FileList
        request = requestWithRoute defReq dFAReportingURL
        requestWithRoute r u ReportsFilesList'{..}
          = go _rflProFileId _rflReportId (Just _rflSortOrder)
              _rflPageToken
              (Just _rflSortField)
              _rflMaxResults
              _rflQuotaUser
              (Just _rflPrettyPrint)
              _rflUserIP
              _rflFields
              _rflKey
              _rflOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy ReportsFilesListResource)
                      r
                      u
