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
-- Module      : Network.Google.Resource.Resourceviews.ZoneOperations.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieves the list of operation resources contained within the specified
-- zone.
--
-- /See:/ <https://developers.google.com/compute/ Google Compute Engine Instance Groups API Reference> for @ResourceviewsZoneOperationsList@.
module Network.Google.Resource.Resourceviews.ZoneOperations.List
    (
    -- * REST Resource
      ZoneOperationsListResource

    -- * Creating a Request
    , zoneOperationsList'
    , ZoneOperationsList'

    -- * Request Lenses
    , zolQuotaUser
    , zolPrettyPrint
    , zolProject
    , zolUserIp
    , zolZone
    , zolKey
    , zolFilter
    , zolPageToken
    , zolOauthToken
    , zolMaxResults
    , zolFields
    , zolAlt
    ) where

import           Network.Google.InstanceGroups.Types
import           Network.Google.Prelude

-- | A resource alias for @ResourceviewsZoneOperationsList@ which the
-- 'ZoneOperationsList'' request conforms to.
type ZoneOperationsListResource =
     Capture "project" Text :>
       "zones" :>
         Capture "zone" Text :>
           "operations" :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "key" Text :>
                     QueryParam "filter" Text :>
                       QueryParam "pageToken" Text :>
                         QueryParam "oauth_token" Text :>
                           QueryParam "maxResults" Word32 :>
                             QueryParam "fields" Text :>
                               QueryParam "alt" Alt :> Get '[JSON] OperationList

-- | Retrieves the list of operation resources contained within the specified
-- zone.
--
-- /See:/ 'zoneOperationsList'' smart constructor.
data ZoneOperationsList' = ZoneOperationsList'
    { _zolQuotaUser   :: !(Maybe Text)
    , _zolPrettyPrint :: !Bool
    , _zolProject     :: !Text
    , _zolUserIp      :: !(Maybe Text)
    , _zolZone        :: !Text
    , _zolKey         :: !(Maybe Text)
    , _zolFilter      :: !(Maybe Text)
    , _zolPageToken   :: !(Maybe Text)
    , _zolOauthToken  :: !(Maybe Text)
    , _zolMaxResults  :: !Word32
    , _zolFields      :: !(Maybe Text)
    , _zolAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ZoneOperationsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'zolQuotaUser'
--
-- * 'zolPrettyPrint'
--
-- * 'zolProject'
--
-- * 'zolUserIp'
--
-- * 'zolZone'
--
-- * 'zolKey'
--
-- * 'zolFilter'
--
-- * 'zolPageToken'
--
-- * 'zolOauthToken'
--
-- * 'zolMaxResults'
--
-- * 'zolFields'
--
-- * 'zolAlt'
zoneOperationsList'
    :: Text -- ^ 'project'
    -> Text -- ^ 'zone'
    -> ZoneOperationsList'
zoneOperationsList' pZolProject_ pZolZone_ =
    ZoneOperationsList'
    { _zolQuotaUser = Nothing
    , _zolPrettyPrint = True
    , _zolProject = pZolProject_
    , _zolUserIp = Nothing
    , _zolZone = pZolZone_
    , _zolKey = Nothing
    , _zolFilter = Nothing
    , _zolPageToken = Nothing
    , _zolOauthToken = Nothing
    , _zolMaxResults = 500
    , _zolFields = Nothing
    , _zolAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
zolQuotaUser :: Lens' ZoneOperationsList' (Maybe Text)
zolQuotaUser
  = lens _zolQuotaUser (\ s a -> s{_zolQuotaUser = a})

-- | Returns response with indentations and line breaks.
zolPrettyPrint :: Lens' ZoneOperationsList' Bool
zolPrettyPrint
  = lens _zolPrettyPrint
      (\ s a -> s{_zolPrettyPrint = a})

-- | Name of the project scoping this request.
zolProject :: Lens' ZoneOperationsList' Text
zolProject
  = lens _zolProject (\ s a -> s{_zolProject = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
zolUserIp :: Lens' ZoneOperationsList' (Maybe Text)
zolUserIp
  = lens _zolUserIp (\ s a -> s{_zolUserIp = a})

-- | Name of the zone scoping this request.
zolZone :: Lens' ZoneOperationsList' Text
zolZone = lens _zolZone (\ s a -> s{_zolZone = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
zolKey :: Lens' ZoneOperationsList' (Maybe Text)
zolKey = lens _zolKey (\ s a -> s{_zolKey = a})

-- | Optional. Filter expression for filtering listed resources.
zolFilter :: Lens' ZoneOperationsList' (Maybe Text)
zolFilter
  = lens _zolFilter (\ s a -> s{_zolFilter = a})

-- | Optional. Tag returned by a previous list request truncated by
-- maxResults. Used to continue a previous list request.
zolPageToken :: Lens' ZoneOperationsList' (Maybe Text)
zolPageToken
  = lens _zolPageToken (\ s a -> s{_zolPageToken = a})

-- | OAuth 2.0 token for the current user.
zolOauthToken :: Lens' ZoneOperationsList' (Maybe Text)
zolOauthToken
  = lens _zolOauthToken
      (\ s a -> s{_zolOauthToken = a})

-- | Optional. Maximum count of results to be returned. Maximum value is 500
-- and default value is 500.
zolMaxResults :: Lens' ZoneOperationsList' Word32
zolMaxResults
  = lens _zolMaxResults
      (\ s a -> s{_zolMaxResults = a})

-- | Selector specifying which fields to include in a partial response.
zolFields :: Lens' ZoneOperationsList' (Maybe Text)
zolFields
  = lens _zolFields (\ s a -> s{_zolFields = a})

-- | Data format for the response.
zolAlt :: Lens' ZoneOperationsList' Alt
zolAlt = lens _zolAlt (\ s a -> s{_zolAlt = a})

instance GoogleRequest ZoneOperationsList' where
        type Rs ZoneOperationsList' = OperationList
        request = requestWithRoute defReq instanceGroupsURL
        requestWithRoute r u ZoneOperationsList'{..}
          = go _zolQuotaUser (Just _zolPrettyPrint) _zolProject
              _zolUserIp
              _zolZone
              _zolKey
              _zolFilter
              _zolPageToken
              _zolOauthToken
              (Just _zolMaxResults)
              _zolFields
              (Just _zolAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy ZoneOperationsListResource)
                      r
                      u
