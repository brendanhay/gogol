{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.Cloudmonitoring.Timeseries.Write
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Put data points to one or more time series for one or more metrics. If a
-- time series does not exist, a new time series will be created. It is not
-- allowed to write a time series point that is older than the existing
-- youngest point of that time series. Points that are older than the
-- existing youngest point of that time series will be discarded silently.
-- Therefore, users should make sure that points of a time series are
-- written sequentially in the order of their end time.
--
-- /See:/ <https://cloud.google.com/monitoring/v2beta2/ Cloud Monitoring API Reference> for @cloudmonitoring.timeseries.write@.
module Network.Google.API.Cloudmonitoring.Timeseries.Write
    (
    -- * REST Resource
      TimeseriesWriteAPI

    -- * Creating a Request
    , timeseriesWrite'
    , TimeseriesWrite'

    -- * Request Lenses
    , twQuotaUser
    , twPrettyPrint
    , twProject
    , twUserIp
    , twKey
    , twOauthToken
    , twFields
    , twAlt
    ) where

import           Network.Google.Monitoring.Types
import           Network.Google.Prelude

-- | A resource alias for cloudmonitoring.timeseries.write which the
-- 'TimeseriesWrite'' request conforms to.
type TimeseriesWriteAPI =
     Capture "project" Text :>
       "timeseries:write" :>
         QueryParam "quotaUser" Text :>
           QueryParam "prettyPrint" Bool :>
             QueryParam "userIp" Text :>
               QueryParam "key" Text :>
                 QueryParam "oauth_token" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "alt" Alt :>
                       Post '[JSON] WriteTimeseriesResponse

-- | Put data points to one or more time series for one or more metrics. If a
-- time series does not exist, a new time series will be created. It is not
-- allowed to write a time series point that is older than the existing
-- youngest point of that time series. Points that are older than the
-- existing youngest point of that time series will be discarded silently.
-- Therefore, users should make sure that points of a time series are
-- written sequentially in the order of their end time.
--
-- /See:/ 'timeseriesWrite'' smart constructor.
data TimeseriesWrite' = TimeseriesWrite'
    { _twQuotaUser   :: !(Maybe Text)
    , _twPrettyPrint :: !Bool
    , _twProject     :: !Text
    , _twUserIp      :: !(Maybe Text)
    , _twKey         :: !(Maybe Text)
    , _twOauthToken  :: !(Maybe Text)
    , _twFields      :: !(Maybe Text)
    , _twAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'TimeseriesWrite'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'twQuotaUser'
--
-- * 'twPrettyPrint'
--
-- * 'twProject'
--
-- * 'twUserIp'
--
-- * 'twKey'
--
-- * 'twOauthToken'
--
-- * 'twFields'
--
-- * 'twAlt'
timeseriesWrite'
    :: Text -- ^ 'project'
    -> TimeseriesWrite'
timeseriesWrite' pTwProject_ =
    TimeseriesWrite'
    { _twQuotaUser = Nothing
    , _twPrettyPrint = True
    , _twProject = pTwProject_
    , _twUserIp = Nothing
    , _twKey = Nothing
    , _twOauthToken = Nothing
    , _twFields = Nothing
    , _twAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
twQuotaUser :: Lens' TimeseriesWrite' (Maybe Text)
twQuotaUser
  = lens _twQuotaUser (\ s a -> s{_twQuotaUser = a})

-- | Returns response with indentations and line breaks.
twPrettyPrint :: Lens' TimeseriesWrite' Bool
twPrettyPrint
  = lens _twPrettyPrint
      (\ s a -> s{_twPrettyPrint = a})

-- | The project ID. The value can be the numeric project ID or string-based
-- project name.
twProject :: Lens' TimeseriesWrite' Text
twProject
  = lens _twProject (\ s a -> s{_twProject = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
twUserIp :: Lens' TimeseriesWrite' (Maybe Text)
twUserIp = lens _twUserIp (\ s a -> s{_twUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
twKey :: Lens' TimeseriesWrite' (Maybe Text)
twKey = lens _twKey (\ s a -> s{_twKey = a})

-- | OAuth 2.0 token for the current user.
twOauthToken :: Lens' TimeseriesWrite' (Maybe Text)
twOauthToken
  = lens _twOauthToken (\ s a -> s{_twOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
twFields :: Lens' TimeseriesWrite' (Maybe Text)
twFields = lens _twFields (\ s a -> s{_twFields = a})

-- | Data format for the response.
twAlt :: Lens' TimeseriesWrite' Alt
twAlt = lens _twAlt (\ s a -> s{_twAlt = a})

instance GoogleRequest TimeseriesWrite' where
        type Rs TimeseriesWrite' = WriteTimeseriesResponse
        request = requestWithRoute defReq monitoringURL
        requestWithRoute r u TimeseriesWrite'{..}
          = go _twQuotaUser (Just _twPrettyPrint) _twProject
              _twUserIp
              _twKey
              _twOauthToken
              _twFields
              (Just _twAlt)
          where go
                  = clientWithRoute (Proxy :: Proxy TimeseriesWriteAPI)
                      r
                      u
