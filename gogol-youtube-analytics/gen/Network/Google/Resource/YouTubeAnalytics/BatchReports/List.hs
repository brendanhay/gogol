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
module Network.Google.Resource.YouTubeAnalytics.BatchReports.List
    (
    -- * REST Resource
      BatchReportsListResource

    -- * Creating a Request
    , batchReportsList'
    , BatchReportsList'

    -- * Request Lenses
    , brlQuotaUser
    , brlPrettyPrint
    , brlBatchReportDefinitionId
    , brlUserIP
    , brlOnBehalfOfContentOwner
    , brlKey
    , brlOAuthToken
    , brlFields
    ) where

import           Network.Google.Prelude
import           Network.Google.YouTubeAnalytics.Types

-- | A resource alias for @YouTubeAnalyticsBatchReportsList@ which the
-- 'BatchReportsList'' request conforms to.
type BatchReportsListResource =
     "batchReports" :>
       QueryParam "batchReportDefinitionId" Text :>
         QueryParam "onBehalfOfContentOwner" Text :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "fields" Text :>
                   QueryParam "key" AuthKey :>
                     QueryParam "oauth_token" OAuthToken :>
                       QueryParam "alt" AltJSON :>
                         Get '[JSON] BatchReportList

-- | Retrieves a list of processed batch reports.
--
-- /See:/ 'batchReportsList'' smart constructor.
data BatchReportsList' = BatchReportsList'
    { _brlQuotaUser               :: !(Maybe Text)
    , _brlPrettyPrint             :: !Bool
    , _brlBatchReportDefinitionId :: !Text
    , _brlUserIP                  :: !(Maybe Text)
    , _brlOnBehalfOfContentOwner  :: !Text
    , _brlKey                     :: !(Maybe AuthKey)
    , _brlOAuthToken              :: !(Maybe OAuthToken)
    , _brlFields                  :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
-- * 'brlUserIP'
--
-- * 'brlOnBehalfOfContentOwner'
--
-- * 'brlKey'
--
-- * 'brlOAuthToken'
--
-- * 'brlFields'
batchReportsList'
    :: Text -- ^ 'batchReportDefinitionId'
    -> Text -- ^ 'onBehalfOfContentOwner'
    -> BatchReportsList'
batchReportsList' pBrlBatchReportDefinitionId_ pBrlOnBehalfOfContentOwner_ =
    BatchReportsList'
    { _brlQuotaUser = Nothing
    , _brlPrettyPrint = True
    , _brlBatchReportDefinitionId = pBrlBatchReportDefinitionId_
    , _brlUserIP = Nothing
    , _brlOnBehalfOfContentOwner = pBrlOnBehalfOfContentOwner_
    , _brlKey = Nothing
    , _brlOAuthToken = Nothing
    , _brlFields = Nothing
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
brlUserIP :: Lens' BatchReportsList' (Maybe Text)
brlUserIP
  = lens _brlUserIP (\ s a -> s{_brlUserIP = a})

-- | The onBehalfOfContentOwner parameter identifies the content owner that
-- the user is acting on behalf of.
brlOnBehalfOfContentOwner :: Lens' BatchReportsList' Text
brlOnBehalfOfContentOwner
  = lens _brlOnBehalfOfContentOwner
      (\ s a -> s{_brlOnBehalfOfContentOwner = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
brlKey :: Lens' BatchReportsList' (Maybe AuthKey)
brlKey = lens _brlKey (\ s a -> s{_brlKey = a})

-- | OAuth 2.0 token for the current user.
brlOAuthToken :: Lens' BatchReportsList' (Maybe OAuthToken)
brlOAuthToken
  = lens _brlOAuthToken
      (\ s a -> s{_brlOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
brlFields :: Lens' BatchReportsList' (Maybe Text)
brlFields
  = lens _brlFields (\ s a -> s{_brlFields = a})

instance GoogleAuth BatchReportsList' where
        _AuthKey = brlKey . _Just
        _AuthToken = brlOAuthToken . _Just

instance GoogleRequest BatchReportsList' where
        type Rs BatchReportsList' = BatchReportList
        request = requestWith youTubeAnalyticsRequest
        requestWith rq BatchReportsList'{..}
          = go (Just _brlBatchReportDefinitionId)
              (Just _brlOnBehalfOfContentOwner)
              _brlQuotaUser
              (Just _brlPrettyPrint)
              _brlUserIP
              _brlFields
              _brlKey
              _brlOAuthToken
              (Just AltJSON)
          where go
                  = clientBuild
                      (Proxy :: Proxy BatchReportsListResource)
                      rq
