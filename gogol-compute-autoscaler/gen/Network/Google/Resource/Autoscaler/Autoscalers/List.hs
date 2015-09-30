{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Autoscaler.Autoscalers.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Lists all Autoscaler resources in this zone.
--
-- /See:/ <http://developers.google.com/compute/docs/autoscaler Google Compute Engine Autoscaler API Reference> for @AutoscalerAutoscalersList@.
module Network.Google.Resource.Autoscaler.Autoscalers.List
    (
    -- * REST Resource
      AutoscalersListResource

    -- * Creating a Request
    , autoscalersList'
    , AutoscalersList'

    -- * Request Lenses
    , alQuotaUser
    , alPrettyPrint
    , alProject
    , alUserIp
    , alZone
    , alKey
    , alFilter
    , alPageToken
    , alOauthToken
    , alMaxResults
    , alFields
    , alAlt
    ) where

import           Network.Google.ComputeAutoscaler.Types
import           Network.Google.Prelude

-- | A resource alias for @AutoscalerAutoscalersList@ which the
-- 'AutoscalersList'' request conforms to.
type AutoscalersListResource =
     "projects" :>
       Capture "project" Text :>
         "zones" :>
           Capture "zone" Text :>
             "autoscalers" :>
               QueryParam "quotaUser" Text :>
                 QueryParam "prettyPrint" Bool :>
                   QueryParam "userIp" Text :>
                     QueryParam "key" Text :>
                       QueryParam "filter" Text :>
                         QueryParam "pageToken" Text :>
                           QueryParam "oauth_token" Text :>
                             QueryParam "maxResults" Word32 :>
                               QueryParam "fields" Text :>
                                 QueryParam "alt" Alt :>
                                   Get '[JSON] AutoscalerListResponse

-- | Lists all Autoscaler resources in this zone.
--
-- /See:/ 'autoscalersList'' smart constructor.
data AutoscalersList' = AutoscalersList'
    { _alQuotaUser   :: !(Maybe Text)
    , _alPrettyPrint :: !Bool
    , _alProject     :: !Text
    , _alUserIp      :: !(Maybe Text)
    , _alZone        :: !Text
    , _alKey         :: !(Maybe Text)
    , _alFilter      :: !(Maybe Text)
    , _alPageToken   :: !(Maybe Text)
    , _alOauthToken  :: !(Maybe Text)
    , _alMaxResults  :: !Word32
    , _alFields      :: !(Maybe Text)
    , _alAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'AutoscalersList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'alQuotaUser'
--
-- * 'alPrettyPrint'
--
-- * 'alProject'
--
-- * 'alUserIp'
--
-- * 'alZone'
--
-- * 'alKey'
--
-- * 'alFilter'
--
-- * 'alPageToken'
--
-- * 'alOauthToken'
--
-- * 'alMaxResults'
--
-- * 'alFields'
--
-- * 'alAlt'
autoscalersList'
    :: Text -- ^ 'project'
    -> Text -- ^ 'zone'
    -> AutoscalersList'
autoscalersList' pAlProject_ pAlZone_ =
    AutoscalersList'
    { _alQuotaUser = Nothing
    , _alPrettyPrint = True
    , _alProject = pAlProject_
    , _alUserIp = Nothing
    , _alZone = pAlZone_
    , _alKey = Nothing
    , _alFilter = Nothing
    , _alPageToken = Nothing
    , _alOauthToken = Nothing
    , _alMaxResults = 500
    , _alFields = Nothing
    , _alAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
alQuotaUser :: Lens' AutoscalersList' (Maybe Text)
alQuotaUser
  = lens _alQuotaUser (\ s a -> s{_alQuotaUser = a})

-- | Returns response with indentations and line breaks.
alPrettyPrint :: Lens' AutoscalersList' Bool
alPrettyPrint
  = lens _alPrettyPrint
      (\ s a -> s{_alPrettyPrint = a})

-- | Project ID of Autoscaler resource.
alProject :: Lens' AutoscalersList' Text
alProject
  = lens _alProject (\ s a -> s{_alProject = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
alUserIp :: Lens' AutoscalersList' (Maybe Text)
alUserIp = lens _alUserIp (\ s a -> s{_alUserIp = a})

-- | Zone name of Autoscaler resource.
alZone :: Lens' AutoscalersList' Text
alZone = lens _alZone (\ s a -> s{_alZone = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
alKey :: Lens' AutoscalersList' (Maybe Text)
alKey = lens _alKey (\ s a -> s{_alKey = a})

alFilter :: Lens' AutoscalersList' (Maybe Text)
alFilter = lens _alFilter (\ s a -> s{_alFilter = a})

alPageToken :: Lens' AutoscalersList' (Maybe Text)
alPageToken
  = lens _alPageToken (\ s a -> s{_alPageToken = a})

-- | OAuth 2.0 token for the current user.
alOauthToken :: Lens' AutoscalersList' (Maybe Text)
alOauthToken
  = lens _alOauthToken (\ s a -> s{_alOauthToken = a})

alMaxResults :: Lens' AutoscalersList' Word32
alMaxResults
  = lens _alMaxResults (\ s a -> s{_alMaxResults = a})

-- | Selector specifying which fields to include in a partial response.
alFields :: Lens' AutoscalersList' (Maybe Text)
alFields = lens _alFields (\ s a -> s{_alFields = a})

-- | Data format for the response.
alAlt :: Lens' AutoscalersList' Alt
alAlt = lens _alAlt (\ s a -> s{_alAlt = a})

instance GoogleRequest AutoscalersList' where
        type Rs AutoscalersList' = AutoscalerListResponse
        request
          = requestWithRoute defReq computeAutoscalerURL
        requestWithRoute r u AutoscalersList'{..}
          = go _alQuotaUser (Just _alPrettyPrint) _alProject
              _alUserIp
              _alZone
              _alKey
              _alFilter
              _alPageToken
              _alOauthToken
              (Just _alMaxResults)
              _alFields
              (Just _alAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy AutoscalersListResource)
                      r
                      u
