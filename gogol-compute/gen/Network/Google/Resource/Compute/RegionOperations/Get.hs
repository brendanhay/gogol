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
-- Module      : Network.Google.Resource.Compute.RegionOperations.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieves the specified region-specific Operations resource.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @ComputeRegionOperationsGet@.
module Network.Google.Resource.Compute.RegionOperations.Get
    (
    -- * REST Resource
      RegionOperationsGetResource

    -- * Creating a Request
    , regionOperationsGet'
    , RegionOperationsGet'

    -- * Request Lenses
    , rogQuotaUser
    , rogPrettyPrint
    , rogProject
    , rogOperation
    , rogUserIP
    , rogKey
    , rogRegion
    , rogOAuthToken
    , rogFields
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @ComputeRegionOperationsGet@ which the
-- 'RegionOperationsGet'' request conforms to.
type RegionOperationsGetResource =
     Capture "project" Text :>
       "regions" :>
         Capture "region" Text :>
           "operations" :>
             Capture "operation" Text :>
               QueryParam "quotaUser" Text :>
                 QueryParam "prettyPrint" Bool :>
                   QueryParam "userIp" Text :>
                     QueryParam "fields" Text :>
                       QueryParam "key" AuthKey :>
                         QueryParam "oauth_token" OAuthToken :>
                           QueryParam "alt" AltJSON :> Get '[JSON] Operation

-- | Retrieves the specified region-specific Operations resource.
--
-- /See:/ 'regionOperationsGet'' smart constructor.
data RegionOperationsGet' = RegionOperationsGet'
    { _rogQuotaUser   :: !(Maybe Text)
    , _rogPrettyPrint :: !Bool
    , _rogProject     :: !Text
    , _rogOperation   :: !Text
    , _rogUserIP      :: !(Maybe Text)
    , _rogKey         :: !(Maybe AuthKey)
    , _rogRegion      :: !Text
    , _rogOAuthToken  :: !(Maybe OAuthToken)
    , _rogFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
-- * 'rogUserIP'
--
-- * 'rogKey'
--
-- * 'rogRegion'
--
-- * 'rogOAuthToken'
--
-- * 'rogFields'
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
    , _rogUserIP = Nothing
    , _rogKey = Nothing
    , _rogRegion = pRogRegion_
    , _rogOAuthToken = Nothing
    , _rogFields = Nothing
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
rogUserIP :: Lens' RegionOperationsGet' (Maybe Text)
rogUserIP
  = lens _rogUserIP (\ s a -> s{_rogUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
rogKey :: Lens' RegionOperationsGet' (Maybe AuthKey)
rogKey = lens _rogKey (\ s a -> s{_rogKey = a})

-- | Name of the zone scoping this request.
rogRegion :: Lens' RegionOperationsGet' Text
rogRegion
  = lens _rogRegion (\ s a -> s{_rogRegion = a})

-- | OAuth 2.0 token for the current user.
rogOAuthToken :: Lens' RegionOperationsGet' (Maybe OAuthToken)
rogOAuthToken
  = lens _rogOAuthToken
      (\ s a -> s{_rogOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
rogFields :: Lens' RegionOperationsGet' (Maybe Text)
rogFields
  = lens _rogFields (\ s a -> s{_rogFields = a})

instance GoogleAuth RegionOperationsGet' where
        authKey = rogKey . _Just
        authToken = rogOAuthToken . _Just

instance GoogleRequest RegionOperationsGet' where
        type Rs RegionOperationsGet' = Operation
        request = requestWith computeRequest
        requestWith rq RegionOperationsGet'{..}
          = go _rogProject _rogRegion _rogOperation
              _rogQuotaUser
              (Just _rogPrettyPrint)
              _rogUserIP
              _rogFields
              _rogKey
              _rogOAuthToken
              (Just AltJSON)
          where go
                  = clientBuild
                      (Proxy :: Proxy RegionOperationsGetResource)
                      rq
