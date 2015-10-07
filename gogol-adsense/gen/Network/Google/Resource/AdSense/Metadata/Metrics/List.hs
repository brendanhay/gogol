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
module Network.Google.Resource.AdSense.Metadata.Metrics.List
    (
    -- * REST Resource
      MetadataMetricsListResource

    -- * Creating a Request
    , metadataMetricsList'
    , MetadataMetricsList'

    -- * Request Lenses
    , mmlQuotaUser
    , mmlPrettyPrint
    , mmlUserIP
    , mmlKey
    , mmlOAuthToken
    , mmlFields
    ) where

import           Network.Google.AdSense.Types
import           Network.Google.Prelude

-- | A resource alias for @AdsenseMetadataMetricsList@ method which the
-- 'MetadataMetricsList'' request conforms to.
type MetadataMetricsListResource =
     "metadata" :>
       "metrics" :>
         QueryParam "quotaUser" Text :>
           QueryParam "prettyPrint" Bool :>
             QueryParam "userIp" Text :>
               QueryParam "fields" Text :>
                 QueryParam "key" AuthKey :>
                   QueryParam "oauth_token" OAuthToken :>
                     QueryParam "alt" AltJSON :> Get '[JSON] Metadata

-- | List the metadata for the metrics available to this AdSense account.
--
-- /See:/ 'metadataMetricsList'' smart constructor.
data MetadataMetricsList' = MetadataMetricsList'
    { _mmlQuotaUser   :: !(Maybe Text)
    , _mmlPrettyPrint :: !Bool
    , _mmlUserIP      :: !(Maybe Text)
    , _mmlKey         :: !(Maybe AuthKey)
    , _mmlOAuthToken  :: !(Maybe OAuthToken)
    , _mmlFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'MetadataMetricsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mmlQuotaUser'
--
-- * 'mmlPrettyPrint'
--
-- * 'mmlUserIP'
--
-- * 'mmlKey'
--
-- * 'mmlOAuthToken'
--
-- * 'mmlFields'
metadataMetricsList'
    :: MetadataMetricsList'
metadataMetricsList' =
    MetadataMetricsList'
    { _mmlQuotaUser = Nothing
    , _mmlPrettyPrint = True
    , _mmlUserIP = Nothing
    , _mmlKey = Nothing
    , _mmlOAuthToken = Nothing
    , _mmlFields = Nothing
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
mmlUserIP :: Lens' MetadataMetricsList' (Maybe Text)
mmlUserIP
  = lens _mmlUserIP (\ s a -> s{_mmlUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
mmlKey :: Lens' MetadataMetricsList' (Maybe AuthKey)
mmlKey = lens _mmlKey (\ s a -> s{_mmlKey = a})

-- | OAuth 2.0 token for the current user.
mmlOAuthToken :: Lens' MetadataMetricsList' (Maybe OAuthToken)
mmlOAuthToken
  = lens _mmlOAuthToken
      (\ s a -> s{_mmlOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
mmlFields :: Lens' MetadataMetricsList' (Maybe Text)
mmlFields
  = lens _mmlFields (\ s a -> s{_mmlFields = a})

instance GoogleAuth MetadataMetricsList' where
        _AuthKey = mmlKey . _Just
        _AuthToken = mmlOAuthToken . _Just

instance GoogleRequest MetadataMetricsList' where
        type Rs MetadataMetricsList' = Metadata
        request = requestWith adSenseRequest
        requestWith rq MetadataMetricsList'{..}
          = go _mmlQuotaUser (Just _mmlPrettyPrint) _mmlUserIP
              _mmlFields
              _mmlKey
              _mmlOAuthToken
              (Just AltJSON)
          where go
                  = clientBuild
                      (Proxy :: Proxy MetadataMetricsListResource)
                      rq
