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
-- Module      : Network.Google.Resource.Autoscaler.ZoneOperations.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieves the list of operation resources contained within the specified
-- zone.
--
-- /See:/ <http://developers.google.com/compute/docs/autoscaler Google Compute Engine Autoscaler API Reference> for @AutoscalerZoneOperationsList@.
module Network.Google.Resource.Autoscaler.ZoneOperations.List
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
    , zolUserIP
    , zolZone
    , zolKey
    , zolFilter
    , zolPageToken
    , zolOAuthToken
    , zolMaxResults
    , zolFields
    ) where

import           Network.Google.Autoscaler.Types
import           Network.Google.Prelude

-- | A resource alias for @AutoscalerZoneOperationsList@ method which the
-- 'ZoneOperationsList'' request conforms to.
type ZoneOperationsListResource =
     Capture "project" Text :>
       "zones" :>
         Capture "zone" Text :>
           "operations" :>
             QueryParam "filter" Text :>
               QueryParam "pageToken" Text :>
                 QueryParam "maxResults" Word32 :>
                   QueryParam "quotaUser" Text :>
                     QueryParam "prettyPrint" Bool :>
                       QueryParam "userIp" Text :>
                         QueryParam "fields" Text :>
                           QueryParam "key" AuthKey :>
                             Header "Authorization" OAuthToken :>
                               QueryParam "alt" AltJSON :>
                                 Get '[JSON] OperationList

-- | Retrieves the list of operation resources contained within the specified
-- zone.
--
-- /See:/ 'zoneOperationsList'' smart constructor.
data ZoneOperationsList' = ZoneOperationsList'
    { _zolQuotaUser   :: !(Maybe Text)
    , _zolPrettyPrint :: !Bool
    , _zolProject     :: !Text
    , _zolUserIP      :: !(Maybe Text)
    , _zolZone        :: !Text
    , _zolKey         :: !(Maybe AuthKey)
    , _zolFilter      :: !(Maybe Text)
    , _zolPageToken   :: !(Maybe Text)
    , _zolOAuthToken  :: !(Maybe OAuthToken)
    , _zolMaxResults  :: !Word32
    , _zolFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
-- * 'zolUserIP'
--
-- * 'zolZone'
--
-- * 'zolKey'
--
-- * 'zolFilter'
--
-- * 'zolPageToken'
--
-- * 'zolOAuthToken'
--
-- * 'zolMaxResults'
--
-- * 'zolFields'
zoneOperationsList'
    :: Text -- ^ 'project'
    -> Text -- ^ 'zone'
    -> ZoneOperationsList'
zoneOperationsList' pZolProject_ pZolZone_ =
    ZoneOperationsList'
    { _zolQuotaUser = Nothing
    , _zolPrettyPrint = True
    , _zolProject = pZolProject_
    , _zolUserIP = Nothing
    , _zolZone = pZolZone_
    , _zolKey = Nothing
    , _zolFilter = Nothing
    , _zolPageToken = Nothing
    , _zolOAuthToken = Nothing
    , _zolMaxResults = 500
    , _zolFields = Nothing
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

zolProject :: Lens' ZoneOperationsList' Text
zolProject
  = lens _zolProject (\ s a -> s{_zolProject = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
zolUserIP :: Lens' ZoneOperationsList' (Maybe Text)
zolUserIP
  = lens _zolUserIP (\ s a -> s{_zolUserIP = a})

zolZone :: Lens' ZoneOperationsList' Text
zolZone = lens _zolZone (\ s a -> s{_zolZone = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
zolKey :: Lens' ZoneOperationsList' (Maybe AuthKey)
zolKey = lens _zolKey (\ s a -> s{_zolKey = a})

zolFilter :: Lens' ZoneOperationsList' (Maybe Text)
zolFilter
  = lens _zolFilter (\ s a -> s{_zolFilter = a})

zolPageToken :: Lens' ZoneOperationsList' (Maybe Text)
zolPageToken
  = lens _zolPageToken (\ s a -> s{_zolPageToken = a})

-- | OAuth 2.0 token for the current user.
zolOAuthToken :: Lens' ZoneOperationsList' (Maybe OAuthToken)
zolOAuthToken
  = lens _zolOAuthToken
      (\ s a -> s{_zolOAuthToken = a})

zolMaxResults :: Lens' ZoneOperationsList' Word32
zolMaxResults
  = lens _zolMaxResults
      (\ s a -> s{_zolMaxResults = a})

-- | Selector specifying which fields to include in a partial response.
zolFields :: Lens' ZoneOperationsList' (Maybe Text)
zolFields
  = lens _zolFields (\ s a -> s{_zolFields = a})

instance GoogleAuth ZoneOperationsList' where
        _AuthKey = zolKey . _Just
        _AuthToken = zolOAuthToken . _Just

instance GoogleRequest ZoneOperationsList' where
        type Rs ZoneOperationsList' = OperationList
        request = requestWith autoscalerRequest
        requestWith rq ZoneOperationsList'{..}
          = go _zolProject _zolZone _zolFilter _zolPageToken
              (Just _zolMaxResults)
              _zolQuotaUser
              (Just _zolPrettyPrint)
              _zolUserIP
              _zolFields
              _zolKey
              _zolOAuthToken
              (Just AltJSON)
          where go
                  = clientBuild
                      (Proxy :: Proxy ZoneOperationsListResource)
                      rq
