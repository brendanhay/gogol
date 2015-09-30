{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.YouTubeAnalytics.BatchReports.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieves a list of processed batch reports.
--
-- /See:/ <http://developers.google.com/youtube/analytics/ YouTube Analytics API Reference> for @YouTubeAnalyticsBatchReportsList@.
module YouTubeAnalytics.BatchReports.List
    (
    -- * REST Resource
      BatchReportsListAPI

    -- * Creating a Request
    , batchReportsList
    , BatchReportsList

    -- * Request Lenses
    , brlQuotaUser
    , brlPrettyPrint
    , brlBatchReportDefinitionId
    , brlUserIp
    , brlOnBehalfOfContentOwner
    , brlKey
    , brlOauthToken
    , brlFields
    , brlAlt
    ) where

import           Network.Google.Prelude
import           Network.Google.YouTubeAnalytics.Types

-- | A resource alias for @YouTubeAnalyticsBatchReportsList@ which the
-- 'BatchReportsList' request conforms to.
type BatchReportsListAPI =
     "batchReports" :>
       QueryParam "batchReportDefinitionId" Text :>
         QueryParam "onBehalfOfContentOwner" Text :>
           Get '[JSON] BatchReportList

-- | Retrieves a list of processed batch reports.
--
-- /See:/ 'batchReportsList' smart constructor.
data BatchReportsList = BatchReportsList
    { _brlQuotaUser               :: !(Maybe Text)
    , _brlPrettyPrint             :: !Bool
    , _brlBatchReportDefinitionId :: !Text
    , _brlUserIp                  :: !(Maybe Text)
    , _brlOnBehalfOfContentOwner  :: !Text
    , _brlKey                     :: !(Maybe Text)
    , _brlOauthToken              :: !(Maybe Text)
    , _brlFields                  :: !(Maybe Text)
    , _brlAlt                     :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'BatchReportsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'brlQuotaUser'
--
-- * 'brlPrettyPrint'
--
-- * 'brlBatchReportDefinitionId'
--
-- * 'brlUserIp'
--
-- * 'brlOnBehalfOfContentOwner'
--
-- * 'brlKey'
--
-- * 'brlOauthToken'
--
-- * 'brlFields'
--
-- * 'brlAlt'
batchReportsList
    :: Text -- ^ 'batchReportDefinitionId'
    -> Text -- ^ 'onBehalfOfContentOwner'
    -> BatchReportsList
batchReportsList pBrlBatchReportDefinitionId_ pBrlOnBehalfOfContentOwner_ =
    BatchReportsList
    { _brlQuotaUser = Nothing
    , _brlPrettyPrint = True
    , _brlBatchReportDefinitionId = pBrlBatchReportDefinitionId_
    , _brlUserIp = Nothing
    , _brlOnBehalfOfContentOwner = pBrlOnBehalfOfContentOwner_
    , _brlKey = Nothing
    , _brlOauthToken = Nothing
    , _brlFields = Nothing
    , _brlAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
brlQuotaUser :: Lens' BatchReportsList' (Maybe Text)
brlQuotaUser
  = lens _brlQuotaUser (\ s a -> s{_brlQuotaUser = a})

-- | Returns response with indentations and line breaks.
brlPrettyPrint :: Lens' BatchReportsList' Bool
brlPrettyPrint
  = lens _brlPrettyPrint
      (\ s a -> s{_brlPrettyPrint = a})

-- | The batchReportDefinitionId parameter specifies the ID of the batch
-- reportort definition for which you are retrieving reports.
brlBatchReportDefinitionId :: Lens' BatchReportsList' Text
brlBatchReportDefinitionId
  = lens _brlBatchReportDefinitionId
      (\ s a -> s{_brlBatchReportDefinitionId = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
brlUserIp :: Lens' BatchReportsList' (Maybe Text)
brlUserIp
  = lens _brlUserIp (\ s a -> s{_brlUserIp = a})

-- | The onBehalfOfContentOwner parameter identifies the content owner that
-- the user is acting on behalf of.
brlOnBehalfOfContentOwner :: Lens' BatchReportsList' Text
brlOnBehalfOfContentOwner
  = lens _brlOnBehalfOfContentOwner
      (\ s a -> s{_brlOnBehalfOfContentOwner = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
brlKey :: Lens' BatchReportsList' (Maybe Text)
brlKey = lens _brlKey (\ s a -> s{_brlKey = a})

-- | OAuth 2.0 token for the current user.
brlOauthToken :: Lens' BatchReportsList' (Maybe Text)
brlOauthToken
  = lens _brlOauthToken
      (\ s a -> s{_brlOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
brlFields :: Lens' BatchReportsList' (Maybe Text)
brlFields
  = lens _brlFields (\ s a -> s{_brlFields = a})

-- | Data format for the response.
brlAlt :: Lens' BatchReportsList' Text
brlAlt = lens _brlAlt (\ s a -> s{_brlAlt = a})

instance GoogleRequest BatchReportsList' where
        type Rs BatchReportsList' = BatchReportList
        request = requestWithRoute defReq youTubeAnalyticsURL
        requestWithRoute r u BatchReportsList{..}
          = go _brlQuotaUser _brlPrettyPrint
              (Just _brlBatchReportDefinitionId)
              _brlUserIp
              (Just _brlOnBehalfOfContentOwner)
              _brlKey
              _brlOauthToken
              _brlFields
              _brlAlt
          where go
                  = clientWithRoute
                      (Proxy :: Proxy BatchReportsListAPI)
                      r
                      u
