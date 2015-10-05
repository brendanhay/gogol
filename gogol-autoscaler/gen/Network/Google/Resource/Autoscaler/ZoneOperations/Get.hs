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
-- Module      : Network.Google.Resource.Autoscaler.ZoneOperations.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieves the specified zone-specific operation resource.
--
-- /See:/ <http://developers.google.com/compute/docs/autoscaler Google Compute Engine Autoscaler API Reference> for @AutoscalerZoneOperationsGet@.
module Network.Google.Resource.Autoscaler.ZoneOperations.Get
    (
    -- * REST Resource
      ZoneOperationsGetResource

    -- * Creating a Request
    , zoneOperationsGet'
    , ZoneOperationsGet'

    -- * Request Lenses
    , zogQuotaUser
    , zogPrettyPrint
    , zogProject
    , zogOperation
    , zogUserIP
    , zogZone
    , zogKey
    , zogOAuthToken
    , zogFields
    ) where

import           Network.Google.Autoscaler.Types
import           Network.Google.Prelude

-- | A resource alias for @AutoscalerZoneOperationsGet@ which the
-- 'ZoneOperationsGet'' request conforms to.
type ZoneOperationsGetResource =
     Capture "project" Text :>
       "zones" :>
         Capture "zone" Text :>
           "operations" :>
             Capture "operation" Text :>
               QueryParam "quotaUser" Text :>
                 QueryParam "prettyPrint" Bool :>
                   QueryParam "userIp" Text :>
                     QueryParam "fields" Text :>
                       QueryParam "key" AuthKey :>
                         QueryParam "oauth_token" OAuthToken :>
                           QueryParam "alt" AltJSON :> Get '[JSON] Operation

-- | Retrieves the specified zone-specific operation resource.
--
-- /See:/ 'zoneOperationsGet'' smart constructor.
data ZoneOperationsGet' = ZoneOperationsGet'
    { _zogQuotaUser   :: !(Maybe Text)
    , _zogPrettyPrint :: !Bool
    , _zogProject     :: !Text
    , _zogOperation   :: !Text
    , _zogUserIP      :: !(Maybe Text)
    , _zogZone        :: !Text
    , _zogKey         :: !(Maybe AuthKey)
    , _zogOAuthToken  :: !(Maybe OAuthToken)
    , _zogFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ZoneOperationsGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'zogQuotaUser'
--
-- * 'zogPrettyPrint'
--
-- * 'zogProject'
--
-- * 'zogOperation'
--
-- * 'zogUserIP'
--
-- * 'zogZone'
--
-- * 'zogKey'
--
-- * 'zogOAuthToken'
--
-- * 'zogFields'
zoneOperationsGet'
    :: Text -- ^ 'project'
    -> Text -- ^ 'operation'
    -> Text -- ^ 'zone'
    -> ZoneOperationsGet'
zoneOperationsGet' pZogProject_ pZogOperation_ pZogZone_ =
    ZoneOperationsGet'
    { _zogQuotaUser = Nothing
    , _zogPrettyPrint = True
    , _zogProject = pZogProject_
    , _zogOperation = pZogOperation_
    , _zogUserIP = Nothing
    , _zogZone = pZogZone_
    , _zogKey = Nothing
    , _zogOAuthToken = Nothing
    , _zogFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
zogQuotaUser :: Lens' ZoneOperationsGet' (Maybe Text)
zogQuotaUser
  = lens _zogQuotaUser (\ s a -> s{_zogQuotaUser = a})

-- | Returns response with indentations and line breaks.
zogPrettyPrint :: Lens' ZoneOperationsGet' Bool
zogPrettyPrint
  = lens _zogPrettyPrint
      (\ s a -> s{_zogPrettyPrint = a})

zogProject :: Lens' ZoneOperationsGet' Text
zogProject
  = lens _zogProject (\ s a -> s{_zogProject = a})

zogOperation :: Lens' ZoneOperationsGet' Text
zogOperation
  = lens _zogOperation (\ s a -> s{_zogOperation = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
zogUserIP :: Lens' ZoneOperationsGet' (Maybe Text)
zogUserIP
  = lens _zogUserIP (\ s a -> s{_zogUserIP = a})

zogZone :: Lens' ZoneOperationsGet' Text
zogZone = lens _zogZone (\ s a -> s{_zogZone = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
zogKey :: Lens' ZoneOperationsGet' (Maybe AuthKey)
zogKey = lens _zogKey (\ s a -> s{_zogKey = a})

-- | OAuth 2.0 token for the current user.
zogOAuthToken :: Lens' ZoneOperationsGet' (Maybe OAuthToken)
zogOAuthToken
  = lens _zogOAuthToken
      (\ s a -> s{_zogOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
zogFields :: Lens' ZoneOperationsGet' (Maybe Text)
zogFields
  = lens _zogFields (\ s a -> s{_zogFields = a})

instance GoogleAuth ZoneOperationsGet' where
        authKey = zogKey . _Just
        authToken = zogOAuthToken . _Just

instance GoogleRequest ZoneOperationsGet' where
        type Rs ZoneOperationsGet' = Operation
        request = requestWithRoute defReq autoscalerURL
        requestWithRoute r u ZoneOperationsGet'{..}
          = go _zogProject _zogZone _zogOperation _zogQuotaUser
              (Just _zogPrettyPrint)
              _zogUserIP
              _zogFields
              _zogKey
              _zogOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy ZoneOperationsGetResource)
                      r
                      u
