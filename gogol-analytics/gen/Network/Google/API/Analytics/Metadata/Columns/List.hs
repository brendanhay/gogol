{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.Analytics.Metadata.Columns.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Lists all columns for a report type
--
-- /See:/ <https://developers.google.com/analytics/ Google Analytics API Reference> for @analytics.metadata.columns.list@.
module Network.Google.API.Analytics.Metadata.Columns.List
    (
    -- * REST Resource
      MetadataColumnsListAPI

    -- * Creating a Request
    , metadataColumnsList'
    , MetadataColumnsList'

    -- * Request Lenses
    , mclQuotaUser
    , mclPrettyPrint
    , mclUserIp
    , mclKey
    , mclOauthToken
    , mclReportType
    , mclFields
    , mclAlt
    ) where

import           Network.Google.Analytics.Types
import           Network.Google.Prelude

-- | A resource alias for analytics.metadata.columns.list which the
-- 'MetadataColumnsList'' request conforms to.
type MetadataColumnsListAPI =
     "metadata" :>
       Capture "reportType" Text :>
         "columns" :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "key" Text :>
                   QueryParam "oauth_token" Text :>
                     QueryParam "fields" Text :>
                       QueryParam "alt" Alt :> Get '[JSON] Columns

-- | Lists all columns for a report type
--
-- /See:/ 'metadataColumnsList'' smart constructor.
data MetadataColumnsList' = MetadataColumnsList'
    { _mclQuotaUser   :: !(Maybe Text)
    , _mclPrettyPrint :: !Bool
    , _mclUserIp      :: !(Maybe Text)
    , _mclKey         :: !(Maybe Text)
    , _mclOauthToken  :: !(Maybe Text)
    , _mclReportType  :: !Text
    , _mclFields      :: !(Maybe Text)
    , _mclAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'MetadataColumnsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mclQuotaUser'
--
-- * 'mclPrettyPrint'
--
-- * 'mclUserIp'
--
-- * 'mclKey'
--
-- * 'mclOauthToken'
--
-- * 'mclReportType'
--
-- * 'mclFields'
--
-- * 'mclAlt'
metadataColumnsList'
    :: Text -- ^ 'reportType'
    -> MetadataColumnsList'
metadataColumnsList' pMclReportType_ =
    MetadataColumnsList'
    { _mclQuotaUser = Nothing
    , _mclPrettyPrint = False
    , _mclUserIp = Nothing
    , _mclKey = Nothing
    , _mclOauthToken = Nothing
    , _mclReportType = pMclReportType_
    , _mclFields = Nothing
    , _mclAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
mclQuotaUser :: Lens' MetadataColumnsList' (Maybe Text)
mclQuotaUser
  = lens _mclQuotaUser (\ s a -> s{_mclQuotaUser = a})

-- | Returns response with indentations and line breaks.
mclPrettyPrint :: Lens' MetadataColumnsList' Bool
mclPrettyPrint
  = lens _mclPrettyPrint
      (\ s a -> s{_mclPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
mclUserIp :: Lens' MetadataColumnsList' (Maybe Text)
mclUserIp
  = lens _mclUserIp (\ s a -> s{_mclUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
mclKey :: Lens' MetadataColumnsList' (Maybe Text)
mclKey = lens _mclKey (\ s a -> s{_mclKey = a})

-- | OAuth 2.0 token for the current user.
mclOauthToken :: Lens' MetadataColumnsList' (Maybe Text)
mclOauthToken
  = lens _mclOauthToken
      (\ s a -> s{_mclOauthToken = a})

-- | Report type. Allowed Values: \'ga\'. Where \'ga\' corresponds to the
-- Core Reporting API
mclReportType :: Lens' MetadataColumnsList' Text
mclReportType
  = lens _mclReportType
      (\ s a -> s{_mclReportType = a})

-- | Selector specifying which fields to include in a partial response.
mclFields :: Lens' MetadataColumnsList' (Maybe Text)
mclFields
  = lens _mclFields (\ s a -> s{_mclFields = a})

-- | Data format for the response.
mclAlt :: Lens' MetadataColumnsList' Alt
mclAlt = lens _mclAlt (\ s a -> s{_mclAlt = a})

instance GoogleRequest MetadataColumnsList' where
        type Rs MetadataColumnsList' = Columns
        request = requestWithRoute defReq analyticsURL
        requestWithRoute r u MetadataColumnsList'{..}
          = go _mclQuotaUser (Just _mclPrettyPrint) _mclUserIp
              _mclKey
              _mclOauthToken
              _mclReportType
              _mclFields
              (Just _mclAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy MetadataColumnsListAPI)
                      r
                      u
