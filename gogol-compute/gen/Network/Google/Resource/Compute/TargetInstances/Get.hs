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
-- Module      : Network.Google.Resource.Compute.TargetInstances.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Returns the specified TargetInstance resource.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @ComputeTargetInstancesGet@.
module Network.Google.Resource.Compute.TargetInstances.Get
    (
    -- * REST Resource
      TargetInstancesGetResource

    -- * Creating a Request
    , targetInstancesGet'
    , TargetInstancesGet'

    -- * Request Lenses
    , tigQuotaUser
    , tigPrettyPrint
    , tigProject
    , tigTargetInstance
    , tigUserIP
    , tigZone
    , tigKey
    , tigOAuthToken
    , tigFields
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @ComputeTargetInstancesGet@ method which the
-- 'TargetInstancesGet'' request conforms to.
type TargetInstancesGetResource =
     Capture "project" Text :>
       "zones" :>
         Capture "zone" Text :>
           "targetInstances" :>
             Capture "targetInstance" Text :>
               QueryParam "quotaUser" Text :>
                 QueryParam "prettyPrint" Bool :>
                   QueryParam "userIp" Text :>
                     QueryParam "fields" Text :>
                       QueryParam "key" AuthKey :>
                         Header "Authorization" OAuthToken :>
                           QueryParam "alt" AltJSON :>
                             Get '[JSON] TargetInstance

-- | Returns the specified TargetInstance resource.
--
-- /See:/ 'targetInstancesGet'' smart constructor.
data TargetInstancesGet' = TargetInstancesGet'
    { _tigQuotaUser      :: !(Maybe Text)
    , _tigPrettyPrint    :: !Bool
    , _tigProject        :: !Text
    , _tigTargetInstance :: !Text
    , _tigUserIP         :: !(Maybe Text)
    , _tigZone           :: !Text
    , _tigKey            :: !(Maybe AuthKey)
    , _tigOAuthToken     :: !(Maybe OAuthToken)
    , _tigFields         :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'TargetInstancesGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tigQuotaUser'
--
-- * 'tigPrettyPrint'
--
-- * 'tigProject'
--
-- * 'tigTargetInstance'
--
-- * 'tigUserIP'
--
-- * 'tigZone'
--
-- * 'tigKey'
--
-- * 'tigOAuthToken'
--
-- * 'tigFields'
targetInstancesGet'
    :: Text -- ^ 'project'
    -> Text -- ^ 'targetInstance'
    -> Text -- ^ 'zone'
    -> TargetInstancesGet'
targetInstancesGet' pTigProject_ pTigTargetInstance_ pTigZone_ =
    TargetInstancesGet'
    { _tigQuotaUser = Nothing
    , _tigPrettyPrint = True
    , _tigProject = pTigProject_
    , _tigTargetInstance = pTigTargetInstance_
    , _tigUserIP = Nothing
    , _tigZone = pTigZone_
    , _tigKey = Nothing
    , _tigOAuthToken = Nothing
    , _tigFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
tigQuotaUser :: Lens' TargetInstancesGet' (Maybe Text)
tigQuotaUser
  = lens _tigQuotaUser (\ s a -> s{_tigQuotaUser = a})

-- | Returns response with indentations and line breaks.
tigPrettyPrint :: Lens' TargetInstancesGet' Bool
tigPrettyPrint
  = lens _tigPrettyPrint
      (\ s a -> s{_tigPrettyPrint = a})

-- | Name of the project scoping this request.
tigProject :: Lens' TargetInstancesGet' Text
tigProject
  = lens _tigProject (\ s a -> s{_tigProject = a})

-- | Name of the TargetInstance resource to return.
tigTargetInstance :: Lens' TargetInstancesGet' Text
tigTargetInstance
  = lens _tigTargetInstance
      (\ s a -> s{_tigTargetInstance = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
tigUserIP :: Lens' TargetInstancesGet' (Maybe Text)
tigUserIP
  = lens _tigUserIP (\ s a -> s{_tigUserIP = a})

-- | Name of the zone scoping this request.
tigZone :: Lens' TargetInstancesGet' Text
tigZone = lens _tigZone (\ s a -> s{_tigZone = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
tigKey :: Lens' TargetInstancesGet' (Maybe AuthKey)
tigKey = lens _tigKey (\ s a -> s{_tigKey = a})

-- | OAuth 2.0 token for the current user.
tigOAuthToken :: Lens' TargetInstancesGet' (Maybe OAuthToken)
tigOAuthToken
  = lens _tigOAuthToken
      (\ s a -> s{_tigOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
tigFields :: Lens' TargetInstancesGet' (Maybe Text)
tigFields
  = lens _tigFields (\ s a -> s{_tigFields = a})

instance GoogleAuth TargetInstancesGet' where
        _AuthKey = tigKey . _Just
        _AuthToken = tigOAuthToken . _Just

instance GoogleRequest TargetInstancesGet' where
        type Rs TargetInstancesGet' = TargetInstance
        request = requestWith computeRequest
        requestWith rq TargetInstancesGet'{..}
          = go _tigProject _tigZone _tigTargetInstance
              _tigQuotaUser
              (Just _tigPrettyPrint)
              _tigUserIP
              _tigFields
              _tigKey
              _tigOAuthToken
              (Just AltJSON)
          where go
                  = clientBuild
                      (Proxy :: Proxy TargetInstancesGetResource)
                      rq
