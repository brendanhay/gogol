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
-- Module      : Network.Google.Resource.Autoscaler.Zones.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- |
--
-- /See:/ <http://developers.google.com/compute/docs/autoscaler Google Compute Engine Autoscaler API Reference> for @AutoscalerZonesList@.
module Network.Google.Resource.Autoscaler.Zones.List
    (
    -- * REST Resource
      ZonesListResource

    -- * Creating a Request
    , zonesList'
    , ZonesList'

    -- * Request Lenses
    , zlQuotaUser
    , zlPrettyPrint
    , zlProject
    , zlUserIP
    , zlKey
    , zlFilter
    , zlPageToken
    , zlOAuthToken
    , zlMaxResults
    , zlFields
    ) where

import           Network.Google.Autoscaler.Types
import           Network.Google.Prelude

-- | A resource alias for @AutoscalerZonesList@ which the
-- 'ZonesList'' request conforms to.
type ZonesListResource =
     Capture "project" Text :>
       "zones" :>
         QueryParam "filter" Text :>
           QueryParam "pageToken" Text :>
             QueryParam "maxResults" Word32 :>
               QueryParam "quotaUser" Text :>
                 QueryParam "prettyPrint" Bool :>
                   QueryParam "userIp" Text :>
                     QueryParam "fields" Text :>
                       QueryParam "key" Key :>
                         QueryParam "oauth_token" OAuthToken :>
                           QueryParam "alt" AltJSON :> Get '[JSON] ZoneList

-- |
--
-- /See:/ 'zonesList'' smart constructor.
data ZonesList' = ZonesList'
    { _zlQuotaUser   :: !(Maybe Text)
    , _zlPrettyPrint :: !Bool
    , _zlProject     :: !Text
    , _zlUserIP      :: !(Maybe Text)
    , _zlKey         :: !(Maybe Key)
    , _zlFilter      :: !(Maybe Text)
    , _zlPageToken   :: !(Maybe Text)
    , _zlOAuthToken  :: !(Maybe OAuthToken)
    , _zlMaxResults  :: !Word32
    , _zlFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ZonesList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'zlQuotaUser'
--
-- * 'zlPrettyPrint'
--
-- * 'zlProject'
--
-- * 'zlUserIP'
--
-- * 'zlKey'
--
-- * 'zlFilter'
--
-- * 'zlPageToken'
--
-- * 'zlOAuthToken'
--
-- * 'zlMaxResults'
--
-- * 'zlFields'
zonesList'
    :: Text -- ^ 'project'
    -> ZonesList'
zonesList' pZlProject_ =
    ZonesList'
    { _zlQuotaUser = Nothing
    , _zlPrettyPrint = True
    , _zlProject = pZlProject_
    , _zlUserIP = Nothing
    , _zlKey = Nothing
    , _zlFilter = Nothing
    , _zlPageToken = Nothing
    , _zlOAuthToken = Nothing
    , _zlMaxResults = 500
    , _zlFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
zlQuotaUser :: Lens' ZonesList' (Maybe Text)
zlQuotaUser
  = lens _zlQuotaUser (\ s a -> s{_zlQuotaUser = a})

-- | Returns response with indentations and line breaks.
zlPrettyPrint :: Lens' ZonesList' Bool
zlPrettyPrint
  = lens _zlPrettyPrint
      (\ s a -> s{_zlPrettyPrint = a})

zlProject :: Lens' ZonesList' Text
zlProject
  = lens _zlProject (\ s a -> s{_zlProject = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
zlUserIP :: Lens' ZonesList' (Maybe Text)
zlUserIP = lens _zlUserIP (\ s a -> s{_zlUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
zlKey :: Lens' ZonesList' (Maybe Key)
zlKey = lens _zlKey (\ s a -> s{_zlKey = a})

zlFilter :: Lens' ZonesList' (Maybe Text)
zlFilter = lens _zlFilter (\ s a -> s{_zlFilter = a})

zlPageToken :: Lens' ZonesList' (Maybe Text)
zlPageToken
  = lens _zlPageToken (\ s a -> s{_zlPageToken = a})

-- | OAuth 2.0 token for the current user.
zlOAuthToken :: Lens' ZonesList' (Maybe OAuthToken)
zlOAuthToken
  = lens _zlOAuthToken (\ s a -> s{_zlOAuthToken = a})

zlMaxResults :: Lens' ZonesList' Word32
zlMaxResults
  = lens _zlMaxResults (\ s a -> s{_zlMaxResults = a})

-- | Selector specifying which fields to include in a partial response.
zlFields :: Lens' ZonesList' (Maybe Text)
zlFields = lens _zlFields (\ s a -> s{_zlFields = a})

instance GoogleAuth ZonesList' where
        authKey = zlKey . _Just
        authToken = zlOAuthToken . _Just

instance GoogleRequest ZonesList' where
        type Rs ZonesList' = ZoneList
        request = requestWithRoute defReq autoscalerURL
        requestWithRoute r u ZonesList'{..}
          = go _zlProject _zlFilter _zlPageToken
              (Just _zlMaxResults)
              _zlQuotaUser
              (Just _zlPrettyPrint)
              _zlUserIP
              _zlFields
              _zlKey
              _zlOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute (Proxy :: Proxy ZonesListResource)
                      r
                      u
