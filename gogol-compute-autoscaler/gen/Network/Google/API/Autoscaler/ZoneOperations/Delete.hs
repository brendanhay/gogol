{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.Autoscaler.ZoneOperations.Delete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Deletes the specified zone-specific operation resource.
--
-- /See:/ <http://developers.google.com/compute/docs/autoscaler Google Compute Engine Autoscaler API Reference> for @autoscaler.zoneOperations.delete@.
module Network.Google.API.Autoscaler.ZoneOperations.Delete
    (
    -- * REST Resource
      ZoneOperationsDeleteAPI

    -- * Creating a Request
    , zoneOperationsDelete'
    , ZoneOperationsDelete'

    -- * Request Lenses
    , zodQuotaUser
    , zodPrettyPrint
    , zodProject
    , zodOperation
    , zodUserIp
    , zodZone
    , zodKey
    , zodOauthToken
    , zodFields
    , zodAlt
    ) where

import           Network.Google.Compute.Autoscaler.Types
import           Network.Google.Prelude

-- | A resource alias for autoscaler.zoneOperations.delete which the
-- 'ZoneOperationsDelete'' request conforms to.
type ZoneOperationsDeleteAPI =
     Capture "project" Text :>
       "zones" :>
         Capture "zone" Text :>
           "operations" :>
             Capture "operation" Text :>
               QueryParam "quotaUser" Text :>
                 QueryParam "prettyPrint" Bool :>
                   QueryParam "userIp" Text :>
                     QueryParam "key" Text :>
                       QueryParam "oauth_token" Text :>
                         QueryParam "fields" Text :>
                           QueryParam "alt" Alt :> Delete '[JSON] ()

-- | Deletes the specified zone-specific operation resource.
--
-- /See:/ 'zoneOperationsDelete'' smart constructor.
data ZoneOperationsDelete' = ZoneOperationsDelete'
    { _zodQuotaUser   :: !(Maybe Text)
    , _zodPrettyPrint :: !Bool
    , _zodProject     :: !Text
    , _zodOperation   :: !Text
    , _zodUserIp      :: !(Maybe Text)
    , _zodZone        :: !Text
    , _zodKey         :: !(Maybe Text)
    , _zodOauthToken  :: !(Maybe Text)
    , _zodFields      :: !(Maybe Text)
    , _zodAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ZoneOperationsDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'zodQuotaUser'
--
-- * 'zodPrettyPrint'
--
-- * 'zodProject'
--
-- * 'zodOperation'
--
-- * 'zodUserIp'
--
-- * 'zodZone'
--
-- * 'zodKey'
--
-- * 'zodOauthToken'
--
-- * 'zodFields'
--
-- * 'zodAlt'
zoneOperationsDelete'
    :: Text -- ^ 'project'
    -> Text -- ^ 'operation'
    -> Text -- ^ 'zone'
    -> ZoneOperationsDelete'
zoneOperationsDelete' pZodProject_ pZodOperation_ pZodZone_ =
    ZoneOperationsDelete'
    { _zodQuotaUser = Nothing
    , _zodPrettyPrint = True
    , _zodProject = pZodProject_
    , _zodOperation = pZodOperation_
    , _zodUserIp = Nothing
    , _zodZone = pZodZone_
    , _zodKey = Nothing
    , _zodOauthToken = Nothing
    , _zodFields = Nothing
    , _zodAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
zodQuotaUser :: Lens' ZoneOperationsDelete' (Maybe Text)
zodQuotaUser
  = lens _zodQuotaUser (\ s a -> s{_zodQuotaUser = a})

-- | Returns response with indentations and line breaks.
zodPrettyPrint :: Lens' ZoneOperationsDelete' Bool
zodPrettyPrint
  = lens _zodPrettyPrint
      (\ s a -> s{_zodPrettyPrint = a})

zodProject :: Lens' ZoneOperationsDelete' Text
zodProject
  = lens _zodProject (\ s a -> s{_zodProject = a})

zodOperation :: Lens' ZoneOperationsDelete' Text
zodOperation
  = lens _zodOperation (\ s a -> s{_zodOperation = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
zodUserIp :: Lens' ZoneOperationsDelete' (Maybe Text)
zodUserIp
  = lens _zodUserIp (\ s a -> s{_zodUserIp = a})

zodZone :: Lens' ZoneOperationsDelete' Text
zodZone = lens _zodZone (\ s a -> s{_zodZone = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
zodKey :: Lens' ZoneOperationsDelete' (Maybe Text)
zodKey = lens _zodKey (\ s a -> s{_zodKey = a})

-- | OAuth 2.0 token for the current user.
zodOauthToken :: Lens' ZoneOperationsDelete' (Maybe Text)
zodOauthToken
  = lens _zodOauthToken
      (\ s a -> s{_zodOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
zodFields :: Lens' ZoneOperationsDelete' (Maybe Text)
zodFields
  = lens _zodFields (\ s a -> s{_zodFields = a})

-- | Data format for the response.
zodAlt :: Lens' ZoneOperationsDelete' Alt
zodAlt = lens _zodAlt (\ s a -> s{_zodAlt = a})

instance GoogleRequest ZoneOperationsDelete' where
        type Rs ZoneOperationsDelete' = ()
        request
          = requestWithRoute defReq computeAutoscalerURL
        requestWithRoute r u ZoneOperationsDelete'{..}
          = go _zodQuotaUser (Just _zodPrettyPrint) _zodProject
              _zodOperation
              _zodUserIp
              _zodZone
              _zodKey
              _zodOauthToken
              _zodFields
              (Just _zodAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy ZoneOperationsDeleteAPI)
                      r
                      u
