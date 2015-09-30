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
    , mtgUserIp
    , mtgZone
    , mtgKey
    , mtgMachineType
    , mtgOauthToken
    , mtgFields
    , mtgAlt
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @ComputeMachineTypesGet@ which the
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
                     QueryParam "key" Text :>
                       QueryParam "oauth_token" Text :>
                         QueryParam "fields" Text :>
                           QueryParam "alt" Alt :> Get '[JSON] MachineType

-- | Returns the specified machine type resource.
--
-- /See:/ 'machineTypesGet'' smart constructor.
data MachineTypesGet' = MachineTypesGet'
    { _mtgQuotaUser   :: !(Maybe Text)
    , _mtgPrettyPrint :: !Bool
    , _mtgProject     :: !Text
    , _mtgUserIp      :: !(Maybe Text)
    , _mtgZone        :: !Text
    , _mtgKey         :: !(Maybe Text)
    , _mtgMachineType :: !Text
    , _mtgOauthToken  :: !(Maybe Text)
    , _mtgFields      :: !(Maybe Text)
    , _mtgAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

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
-- * 'mtgUserIp'
--
-- * 'mtgZone'
--
-- * 'mtgKey'
--
-- * 'mtgMachineType'
--
-- * 'mtgOauthToken'
--
-- * 'mtgFields'
--
-- * 'mtgAlt'
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
    , _mtgUserIp = Nothing
    , _mtgZone = pMtgZone_
    , _mtgKey = Nothing
    , _mtgMachineType = pMtgMachineType_
    , _mtgOauthToken = Nothing
    , _mtgFields = Nothing
    , _mtgAlt = JSON
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
mtgUserIp :: Lens' MachineTypesGet' (Maybe Text)
mtgUserIp
  = lens _mtgUserIp (\ s a -> s{_mtgUserIp = a})

-- | The name of the zone for this request.
mtgZone :: Lens' MachineTypesGet' Text
mtgZone = lens _mtgZone (\ s a -> s{_mtgZone = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
mtgKey :: Lens' MachineTypesGet' (Maybe Text)
mtgKey = lens _mtgKey (\ s a -> s{_mtgKey = a})

-- | Name of the machine type resource to return.
mtgMachineType :: Lens' MachineTypesGet' Text
mtgMachineType
  = lens _mtgMachineType
      (\ s a -> s{_mtgMachineType = a})

-- | OAuth 2.0 token for the current user.
mtgOauthToken :: Lens' MachineTypesGet' (Maybe Text)
mtgOauthToken
  = lens _mtgOauthToken
      (\ s a -> s{_mtgOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
mtgFields :: Lens' MachineTypesGet' (Maybe Text)
mtgFields
  = lens _mtgFields (\ s a -> s{_mtgFields = a})

-- | Data format for the response.
mtgAlt :: Lens' MachineTypesGet' Alt
mtgAlt = lens _mtgAlt (\ s a -> s{_mtgAlt = a})

instance GoogleRequest MachineTypesGet' where
        type Rs MachineTypesGet' = MachineType
        request = requestWithRoute defReq computeURL
        requestWithRoute r u MachineTypesGet'{..}
          = go _mtgQuotaUser (Just _mtgPrettyPrint) _mtgProject
              _mtgUserIp
              _mtgZone
              _mtgKey
              _mtgMachineType
              _mtgOauthToken
              _mtgFields
              (Just _mtgAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy MachineTypesGetResource)
                      r
                      u
