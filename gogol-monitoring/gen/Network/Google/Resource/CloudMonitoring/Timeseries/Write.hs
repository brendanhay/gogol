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
-- Module      : Network.Google.Resource.CloudMonitoring.Timeseries.Write
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
-- /See:/ <https://cloud.google.com/monitoring/v2beta2/ Cloud Monitoring API Reference> for @CloudMonitoringTimeseriesWrite@.
module Network.Google.Resource.CloudMonitoring.Timeseries.Write
    (
    -- * REST Resource
      TimeseriesWriteResource

    -- * Creating a Request
    , timeseriesWrite'
    , TimeseriesWrite'

    -- * Request Lenses
    , twQuotaUser
    , twPrettyPrint
    , twProject
    , twUserIP
    , twPayload
    , twKey
    , twOAuthToken
    , twFields
    ) where

import           Network.Google.Monitoring.Types
import           Network.Google.Prelude

-- | A resource alias for @CloudMonitoringTimeseriesWrite@ which the
-- 'TimeseriesWrite'' request conforms to.
type TimeseriesWriteResource =
     Capture "project" Text :>
       "timeseries:write" :>
         QueryParam "quotaUser" Text :>
           QueryParam "prettyPrint" Bool :>
             QueryParam "userIp" Text :>
               QueryParam "fields" Text :>
                 QueryParam "key" AuthKey :>
                   QueryParam "oauth_token" OAuthToken :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] WriteTimeseriesRequest :>
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
    , _twUserIP      :: !(Maybe Text)
    , _twPayload     :: !WriteTimeseriesRequest
    , _twKey         :: !(Maybe AuthKey)
    , _twOAuthToken  :: !(Maybe OAuthToken)
    , _twFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
-- * 'twUserIP'
--
-- * 'twPayload'
--
-- * 'twKey'
--
-- * 'twOAuthToken'
--
-- * 'twFields'
timeseriesWrite'
    :: Text -- ^ 'project'
    -> WriteTimeseriesRequest -- ^ 'payload'
    -> TimeseriesWrite'
timeseriesWrite' pTwProject_ pTwPayload_ =
    TimeseriesWrite'
    { _twQuotaUser = Nothing
    , _twPrettyPrint = True
    , _twProject = pTwProject_
    , _twUserIP = Nothing
    , _twPayload = pTwPayload_
    , _twKey = Nothing
    , _twOAuthToken = Nothing
    , _twFields = Nothing
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
twUserIP :: Lens' TimeseriesWrite' (Maybe Text)
twUserIP = lens _twUserIP (\ s a -> s{_twUserIP = a})

-- | Multipart request metadata.
twPayload :: Lens' TimeseriesWrite' WriteTimeseriesRequest
twPayload
  = lens _twPayload (\ s a -> s{_twPayload = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
twKey :: Lens' TimeseriesWrite' (Maybe AuthKey)
twKey = lens _twKey (\ s a -> s{_twKey = a})

-- | OAuth 2.0 token for the current user.
twOAuthToken :: Lens' TimeseriesWrite' (Maybe OAuthToken)
twOAuthToken
  = lens _twOAuthToken (\ s a -> s{_twOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
twFields :: Lens' TimeseriesWrite' (Maybe Text)
twFields = lens _twFields (\ s a -> s{_twFields = a})

instance GoogleAuth TimeseriesWrite' where
        _AuthKey = twKey . _Just
        _AuthToken = twOAuthToken . _Just

instance GoogleRequest TimeseriesWrite' where
        type Rs TimeseriesWrite' = WriteTimeseriesResponse
        request = requestWith monitoringRequest
        requestWith rq TimeseriesWrite'{..}
          = go _twProject _twQuotaUser (Just _twPrettyPrint)
              _twUserIP
              _twFields
              _twKey
              _twOAuthToken
              (Just AltJSON)
              _twPayload
          where go
                  = clientBuild
                      (Proxy :: Proxy TimeseriesWriteResource)
                      rq
