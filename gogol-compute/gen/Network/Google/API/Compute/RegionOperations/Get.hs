{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.Compute.RegionOperations.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieves the specified region-specific Operations resource.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.regionOperations.get@.
module Network.Google.API.Compute.RegionOperations.Get
    (
    -- * REST Resource
      RegionOperationsGetAPI

    -- * Creating a Request
    , regionOperationsGet'
    , RegionOperationsGet'

    -- * Request Lenses
    , rogQuotaUser
    , rogPrettyPrint
    , rogProject
    , rogOperation
    , rogUserIp
    , rogKey
    , rogRegion
    , rogOauthToken
    , rogFields
    , rogAlt
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for compute.regionOperations.get which the
-- 'RegionOperationsGet'' request conforms to.
type RegionOperationsGetAPI =
     Capture "project" Text :>
       "regions" :>
         Capture "region" Text :>
           "operations" :>
             Capture "operation" Text :>
               QueryParam "quotaUser" Text :>
                 QueryParam "prettyPrint" Bool :>
                   QueryParam "userIp" Text :>
                     QueryParam "key" Text :>
                       QueryParam "oauth_token" Text :>
                         QueryParam "fields" Text :>
                           QueryParam "alt" Alt :> Get '[JSON] Operation

-- | Retrieves the specified region-specific Operations resource.
--
-- /See:/ 'regionOperationsGet'' smart constructor.
data RegionOperationsGet' = RegionOperationsGet'
    { _rogQuotaUser   :: !(Maybe Text)
    , _rogPrettyPrint :: !Bool
    , _rogProject     :: !Text
    , _rogOperation   :: !Text
    , _rogUserIp      :: !(Maybe Text)
    , _rogKey         :: !(Maybe Text)
    , _rogRegion      :: !Text
    , _rogOauthToken  :: !(Maybe Text)
    , _rogFields      :: !(Maybe Text)
    , _rogAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'RegionOperationsGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rogQuotaUser'
--
-- * 'rogPrettyPrint'
--
-- * 'rogProject'
--
-- * 'rogOperation'
--
-- * 'rogUserIp'
--
-- * 'rogKey'
--
-- * 'rogRegion'
--
-- * 'rogOauthToken'
--
-- * 'rogFields'
--
-- * 'rogAlt'
regionOperationsGet'
    :: Text -- ^ 'project'
    -> Text -- ^ 'operation'
    -> Text -- ^ 'region'
    -> RegionOperationsGet'
regionOperationsGet' pRogProject_ pRogOperation_ pRogRegion_ =
    RegionOperationsGet'
    { _rogQuotaUser = Nothing
    , _rogPrettyPrint = True
    , _rogProject = pRogProject_
    , _rogOperation = pRogOperation_
    , _rogUserIp = Nothing
    , _rogKey = Nothing
    , _rogRegion = pRogRegion_
    , _rogOauthToken = Nothing
    , _rogFields = Nothing
    , _rogAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
rogQuotaUser :: Lens' RegionOperationsGet' (Maybe Text)
rogQuotaUser
  = lens _rogQuotaUser (\ s a -> s{_rogQuotaUser = a})

-- | Returns response with indentations and line breaks.
rogPrettyPrint :: Lens' RegionOperationsGet' Bool
rogPrettyPrint
  = lens _rogPrettyPrint
      (\ s a -> s{_rogPrettyPrint = a})

-- | Project ID for this request.
rogProject :: Lens' RegionOperationsGet' Text
rogProject
  = lens _rogProject (\ s a -> s{_rogProject = a})

-- | Name of the Operations resource to return.
rogOperation :: Lens' RegionOperationsGet' Text
rogOperation
  = lens _rogOperation (\ s a -> s{_rogOperation = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
rogUserIp :: Lens' RegionOperationsGet' (Maybe Text)
rogUserIp
  = lens _rogUserIp (\ s a -> s{_rogUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
rogKey :: Lens' RegionOperationsGet' (Maybe Text)
rogKey = lens _rogKey (\ s a -> s{_rogKey = a})

-- | Name of the zone scoping this request.
rogRegion :: Lens' RegionOperationsGet' Text
rogRegion
  = lens _rogRegion (\ s a -> s{_rogRegion = a})

-- | OAuth 2.0 token for the current user.
rogOauthToken :: Lens' RegionOperationsGet' (Maybe Text)
rogOauthToken
  = lens _rogOauthToken
      (\ s a -> s{_rogOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
rogFields :: Lens' RegionOperationsGet' (Maybe Text)
rogFields
  = lens _rogFields (\ s a -> s{_rogFields = a})

-- | Data format for the response.
rogAlt :: Lens' RegionOperationsGet' Alt
rogAlt = lens _rogAlt (\ s a -> s{_rogAlt = a})

instance GoogleRequest RegionOperationsGet' where
        type Rs RegionOperationsGet' = Operation
        request = requestWithRoute defReq computeURL
        requestWithRoute r u RegionOperationsGet'{..}
          = go _rogQuotaUser (Just _rogPrettyPrint) _rogProject
              _rogOperation
              _rogUserIp
              _rogKey
              _rogRegion
              _rogOauthToken
              _rogFields
              (Just _rogAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy RegionOperationsGetAPI)
                      r
                      u
