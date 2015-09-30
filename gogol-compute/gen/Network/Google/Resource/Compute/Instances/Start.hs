{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Compute.Instances.Start
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | This method starts an instance that was stopped using the using the
-- instances().stop method. For more information, see Restart an instance.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @ComputeInstancesStart@.
module Compute.Instances.Start
    (
    -- * REST Resource
      InstancesStartAPI

    -- * Creating a Request
    , instancesStart
    , InstancesStart

    -- * Request Lenses
    , isQuotaUser
    , isPrettyPrint
    , isProject
    , isUserIp
    , isZone
    , isKey
    , isOauthToken
    , isFields
    , isAlt
    , isInstance
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @ComputeInstancesStart@ which the
-- 'InstancesStart' request conforms to.
type InstancesStartAPI =
     Capture "project" Text :>
       "zones" :>
         Capture "zone" Text :>
           "instances" :>
             Capture "instance" Text :>
               "start" :> Post '[JSON] Operation

-- | This method starts an instance that was stopped using the using the
-- instances().stop method. For more information, see Restart an instance.
--
-- /See:/ 'instancesStart' smart constructor.
data InstancesStart = InstancesStart
    { _isQuotaUser   :: !(Maybe Text)
    , _isPrettyPrint :: !Bool
    , _isProject     :: !Text
    , _isUserIp      :: !(Maybe Text)
    , _isZone        :: !Text
    , _isKey         :: !(Maybe Text)
    , _isOauthToken  :: !(Maybe Text)
    , _isFields      :: !(Maybe Text)
    , _isAlt         :: !Text
    , _isInstance    :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'InstancesStart'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'isQuotaUser'
--
-- * 'isPrettyPrint'
--
-- * 'isProject'
--
-- * 'isUserIp'
--
-- * 'isZone'
--
-- * 'isKey'
--
-- * 'isOauthToken'
--
-- * 'isFields'
--
-- * 'isAlt'
--
-- * 'isInstance'
instancesStart
    :: Text -- ^ 'project'
    -> Text -- ^ 'zone'
    -> Text -- ^ 'instance'
    -> InstancesStart
instancesStart pIsProject_ pIsZone_ pIsInstance_ =
    InstancesStart
    { _isQuotaUser = Nothing
    , _isPrettyPrint = True
    , _isProject = pIsProject_
    , _isUserIp = Nothing
    , _isZone = pIsZone_
    , _isKey = Nothing
    , _isOauthToken = Nothing
    , _isFields = Nothing
    , _isAlt = "json"
    , _isInstance = pIsInstance_
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
isQuotaUser :: Lens' InstancesStart' (Maybe Text)
isQuotaUser
  = lens _isQuotaUser (\ s a -> s{_isQuotaUser = a})

-- | Returns response with indentations and line breaks.
isPrettyPrint :: Lens' InstancesStart' Bool
isPrettyPrint
  = lens _isPrettyPrint
      (\ s a -> s{_isPrettyPrint = a})

-- | Project ID for this request.
isProject :: Lens' InstancesStart' Text
isProject
  = lens _isProject (\ s a -> s{_isProject = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
isUserIp :: Lens' InstancesStart' (Maybe Text)
isUserIp = lens _isUserIp (\ s a -> s{_isUserIp = a})

-- | The name of the zone for this request.
isZone :: Lens' InstancesStart' Text
isZone = lens _isZone (\ s a -> s{_isZone = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
isKey :: Lens' InstancesStart' (Maybe Text)
isKey = lens _isKey (\ s a -> s{_isKey = a})

-- | OAuth 2.0 token for the current user.
isOauthToken :: Lens' InstancesStart' (Maybe Text)
isOauthToken
  = lens _isOauthToken (\ s a -> s{_isOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
isFields :: Lens' InstancesStart' (Maybe Text)
isFields = lens _isFields (\ s a -> s{_isFields = a})

-- | Data format for the response.
isAlt :: Lens' InstancesStart' Text
isAlt = lens _isAlt (\ s a -> s{_isAlt = a})

-- | Name of the instance resource to start.
isInstance :: Lens' InstancesStart' Text
isInstance
  = lens _isInstance (\ s a -> s{_isInstance = a})

instance GoogleRequest InstancesStart' where
        type Rs InstancesStart' = Operation
        request = requestWithRoute defReq computeURL
        requestWithRoute r u InstancesStart{..}
          = go _isQuotaUser _isPrettyPrint _isProject _isUserIp
              _isZone
              _isKey
              _isOauthToken
              _isFields
              _isAlt
              _isInstance
          where go
                  = clientWithRoute (Proxy :: Proxy InstancesStartAPI)
                      r
                      u
