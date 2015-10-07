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
-- Module      : Network.Google.Resource.Compute.MachineTypes.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Returns the specified machine type resource.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @ComputeMachineTypesGet@.
module Network.Google.Resource.Compute.MachineTypes.Get
    (
    -- * REST Resource
      MachineTypesGetResource

    -- * Creating a Request
    , machineTypesGet'
    , MachineTypesGet'

    -- * Request Lenses
    , mtgQuotaUser
    , mtgPrettyPrint
    , mtgProject
    , mtgUserIP
    , mtgZone
    , mtgKey
    , mtgMachineType
    , mtgOAuthToken
    , mtgFields
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @ComputeMachineTypesGet@ method which the
-- 'MachineTypesGet'' request conforms to.
type MachineTypesGetResource =
     Capture "project" Text :>
       "zones" :>
         Capture "zone" Text :>
           "machineTypes" :>
             Capture "machineType" Text :>
               QueryParam "quotaUser" Text :>
                 QueryParam "prettyPrint" Bool :>
                   QueryParam "userIp" Text :>
                     QueryParam "fields" Text :>
                       QueryParam "key" AuthKey :>
                         QueryParam "oauth_token" OAuthToken :>
                           QueryParam "alt" AltJSON :> Get '[JSON] MachineType

-- | Returns the specified machine type resource.
--
-- /See:/ 'machineTypesGet'' smart constructor.
data MachineTypesGet' = MachineTypesGet'
    { _mtgQuotaUser   :: !(Maybe Text)
    , _mtgPrettyPrint :: !Bool
    , _mtgProject     :: !Text
    , _mtgUserIP      :: !(Maybe Text)
    , _mtgZone        :: !Text
    , _mtgKey         :: !(Maybe AuthKey)
    , _mtgMachineType :: !Text
    , _mtgOAuthToken  :: !(Maybe OAuthToken)
    , _mtgFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'MachineTypesGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mtgQuotaUser'
--
-- * 'mtgPrettyPrint'
--
-- * 'mtgProject'
--
-- * 'mtgUserIP'
--
-- * 'mtgZone'
--
-- * 'mtgKey'
--
-- * 'mtgMachineType'
--
-- * 'mtgOAuthToken'
--
-- * 'mtgFields'
machineTypesGet'
    :: Text -- ^ 'project'
    -> Text -- ^ 'zone'
    -> Text -- ^ 'machineType'
    -> MachineTypesGet'
machineTypesGet' pMtgProject_ pMtgZone_ pMtgMachineType_ =
    MachineTypesGet'
    { _mtgQuotaUser = Nothing
    , _mtgPrettyPrint = True
    , _mtgProject = pMtgProject_
    , _mtgUserIP = Nothing
    , _mtgZone = pMtgZone_
    , _mtgKey = Nothing
    , _mtgMachineType = pMtgMachineType_
    , _mtgOAuthToken = Nothing
    , _mtgFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
mtgQuotaUser :: Lens' MachineTypesGet' (Maybe Text)
mtgQuotaUser
  = lens _mtgQuotaUser (\ s a -> s{_mtgQuotaUser = a})

-- | Returns response with indentations and line breaks.
mtgPrettyPrint :: Lens' MachineTypesGet' Bool
mtgPrettyPrint
  = lens _mtgPrettyPrint
      (\ s a -> s{_mtgPrettyPrint = a})

-- | Project ID for this request.
mtgProject :: Lens' MachineTypesGet' Text
mtgProject
  = lens _mtgProject (\ s a -> s{_mtgProject = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
mtgUserIP :: Lens' MachineTypesGet' (Maybe Text)
mtgUserIP
  = lens _mtgUserIP (\ s a -> s{_mtgUserIP = a})

-- | The name of the zone for this request.
mtgZone :: Lens' MachineTypesGet' Text
mtgZone = lens _mtgZone (\ s a -> s{_mtgZone = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
mtgKey :: Lens' MachineTypesGet' (Maybe AuthKey)
mtgKey = lens _mtgKey (\ s a -> s{_mtgKey = a})

-- | Name of the machine type resource to return.
mtgMachineType :: Lens' MachineTypesGet' Text
mtgMachineType
  = lens _mtgMachineType
      (\ s a -> s{_mtgMachineType = a})

-- | OAuth 2.0 token for the current user.
mtgOAuthToken :: Lens' MachineTypesGet' (Maybe OAuthToken)
mtgOAuthToken
  = lens _mtgOAuthToken
      (\ s a -> s{_mtgOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
mtgFields :: Lens' MachineTypesGet' (Maybe Text)
mtgFields
  = lens _mtgFields (\ s a -> s{_mtgFields = a})

instance GoogleAuth MachineTypesGet' where
        _AuthKey = mtgKey . _Just
        _AuthToken = mtgOAuthToken . _Just

instance GoogleRequest MachineTypesGet' where
        type Rs MachineTypesGet' = MachineType
        request = requestWith computeRequest
        requestWith rq MachineTypesGet'{..}
          = go _mtgProject _mtgZone _mtgMachineType
              _mtgQuotaUser
              (Just _mtgPrettyPrint)
              _mtgUserIP
              _mtgFields
              _mtgKey
              _mtgOAuthToken
              (Just AltJSON)
          where go
                  = clientBuild
                      (Proxy :: Proxy MachineTypesGetResource)
                      rq
