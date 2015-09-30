{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.AdSense.Metadata.Metrics.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | List the metadata for the metrics available to this AdSense account.
--
-- /See:/ <https://developers.google.com/adsense/management/ AdSense Management API Reference> for @AdsenseMetadataMetricsList@.
module AdSense.Metadata.Metrics.List
    (
    -- * REST Resource
      MetadataMetricsListAPI

    -- * Creating a Request
    , metadataMetricsList
    , MetadataMetricsList

    -- * Request Lenses
    , mmlQuotaUser
    , mmlPrettyPrint
    , mmlUserIp
    , mmlKey
    , mmlOauthToken
    , mmlFields
    , mmlAlt
    ) where

import           Network.Google.AdSense.Types
import           Network.Google.Prelude

-- | A resource alias for @AdsenseMetadataMetricsList@ which the
-- 'MetadataMetricsList' request conforms to.
type MetadataMetricsListAPI =
     "metadata" :> "metrics" :> Get '[JSON] Metadata

-- | List the metadata for the metrics available to this AdSense account.
--
-- /See:/ 'metadataMetricsList' smart constructor.
data MetadataMetricsList = MetadataMetricsList
    { _mmlQuotaUser   :: !(Maybe Text)
    , _mmlPrettyPrint :: !Bool
    , _mmlUserIp      :: !(Maybe Text)
    , _mmlKey         :: !(Maybe Text)
    , _mmlOauthToken  :: !(Maybe Text)
    , _mmlFields      :: !(Maybe Text)
    , _mmlAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'MetadataMetricsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mmlQuotaUser'
--
-- * 'mmlPrettyPrint'
--
-- * 'mmlUserIp'
--
-- * 'mmlKey'
--
-- * 'mmlOauthToken'
--
-- * 'mmlFields'
--
-- * 'mmlAlt'
metadataMetricsList
    :: MetadataMetricsList
metadataMetricsList =
    MetadataMetricsList
    { _mmlQuotaUser = Nothing
    , _mmlPrettyPrint = True
    , _mmlUserIp = Nothing
    , _mmlKey = Nothing
    , _mmlOauthToken = Nothing
    , _mmlFields = Nothing
    , _mmlAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
mmlQuotaUser :: Lens' MetadataMetricsList' (Maybe Text)
mmlQuotaUser
  = lens _mmlQuotaUser (\ s a -> s{_mmlQuotaUser = a})

-- | Returns response with indentations and line breaks.
mmlPrettyPrint :: Lens' MetadataMetricsList' Bool
mmlPrettyPrint
  = lens _mmlPrettyPrint
      (\ s a -> s{_mmlPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
mmlUserIp :: Lens' MetadataMetricsList' (Maybe Text)
mmlUserIp
  = lens _mmlUserIp (\ s a -> s{_mmlUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
mmlKey :: Lens' MetadataMetricsList' (Maybe Text)
mmlKey = lens _mmlKey (\ s a -> s{_mmlKey = a})

-- | OAuth 2.0 token for the current user.
mmlOauthToken :: Lens' MetadataMetricsList' (Maybe Text)
mmlOauthToken
  = lens _mmlOauthToken
      (\ s a -> s{_mmlOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
mmlFields :: Lens' MetadataMetricsList' (Maybe Text)
mmlFields
  = lens _mmlFields (\ s a -> s{_mmlFields = a})

-- | Data format for the response.
mmlAlt :: Lens' MetadataMetricsList' Text
mmlAlt = lens _mmlAlt (\ s a -> s{_mmlAlt = a})

instance GoogleRequest MetadataMetricsList' where
        type Rs MetadataMetricsList' = Metadata
        request = requestWithRoute defReq adSenseURL
        requestWithRoute r u MetadataMetricsList{..}
          = go _mmlQuotaUser _mmlPrettyPrint _mmlUserIp _mmlKey
              _mmlOauthToken
              _mmlFields
              _mmlAlt
          where go
                  = clientWithRoute
                      (Proxy :: Proxy MetadataMetricsListAPI)
                      r
                      u
