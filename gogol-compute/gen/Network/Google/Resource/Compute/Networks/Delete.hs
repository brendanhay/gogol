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
-- Module      : Network.Google.Resource.Compute.Networks.Delete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Deletes the specified network resource.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @ComputeNetworksDelete@.
module Network.Google.Resource.Compute.Networks.Delete
    (
    -- * REST Resource
      NetworksDeleteResource

    -- * Creating a Request
    , networksDelete'
    , NetworksDelete'

    -- * Request Lenses
    , ndQuotaUser
    , ndPrettyPrint
    , ndProject
    , ndUserIP
    , ndNetwork
    , ndKey
    , ndOAuthToken
    , ndFields
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @ComputeNetworksDelete@ method which the
-- 'NetworksDelete'' request conforms to.
type NetworksDeleteResource =
     Capture "project" Text :>
       "global" :>
         "networks" :>
           Capture "network" Text :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "key" AuthKey :>
                       QueryParam "oauth_token" OAuthToken :>
                         QueryParam "alt" AltJSON :> Delete '[JSON] Operation

-- | Deletes the specified network resource.
--
-- /See:/ 'networksDelete'' smart constructor.
data NetworksDelete' = NetworksDelete'
    { _ndQuotaUser   :: !(Maybe Text)
    , _ndPrettyPrint :: !Bool
    , _ndProject     :: !Text
    , _ndUserIP      :: !(Maybe Text)
    , _ndNetwork     :: !Text
    , _ndKey         :: !(Maybe AuthKey)
    , _ndOAuthToken  :: !(Maybe OAuthToken)
    , _ndFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'NetworksDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ndQuotaUser'
--
-- * 'ndPrettyPrint'
--
-- * 'ndProject'
--
-- * 'ndUserIP'
--
-- * 'ndNetwork'
--
-- * 'ndKey'
--
-- * 'ndOAuthToken'
--
-- * 'ndFields'
networksDelete'
    :: Text -- ^ 'project'
    -> Text -- ^ 'network'
    -> NetworksDelete'
networksDelete' pNdProject_ pNdNetwork_ =
    NetworksDelete'
    { _ndQuotaUser = Nothing
    , _ndPrettyPrint = True
    , _ndProject = pNdProject_
    , _ndUserIP = Nothing
    , _ndNetwork = pNdNetwork_
    , _ndKey = Nothing
    , _ndOAuthToken = Nothing
    , _ndFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
ndQuotaUser :: Lens' NetworksDelete' (Maybe Text)
ndQuotaUser
  = lens _ndQuotaUser (\ s a -> s{_ndQuotaUser = a})

-- | Returns response with indentations and line breaks.
ndPrettyPrint :: Lens' NetworksDelete' Bool
ndPrettyPrint
  = lens _ndPrettyPrint
      (\ s a -> s{_ndPrettyPrint = a})

-- | Project ID for this request.
ndProject :: Lens' NetworksDelete' Text
ndProject
  = lens _ndProject (\ s a -> s{_ndProject = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
ndUserIP :: Lens' NetworksDelete' (Maybe Text)
ndUserIP = lens _ndUserIP (\ s a -> s{_ndUserIP = a})

-- | Name of the network resource to delete.
ndNetwork :: Lens' NetworksDelete' Text
ndNetwork
  = lens _ndNetwork (\ s a -> s{_ndNetwork = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
ndKey :: Lens' NetworksDelete' (Maybe AuthKey)
ndKey = lens _ndKey (\ s a -> s{_ndKey = a})

-- | OAuth 2.0 token for the current user.
ndOAuthToken :: Lens' NetworksDelete' (Maybe OAuthToken)
ndOAuthToken
  = lens _ndOAuthToken (\ s a -> s{_ndOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
ndFields :: Lens' NetworksDelete' (Maybe Text)
ndFields = lens _ndFields (\ s a -> s{_ndFields = a})

instance GoogleAuth NetworksDelete' where
        _AuthKey = ndKey . _Just
        _AuthToken = ndOAuthToken . _Just

instance GoogleRequest NetworksDelete' where
        type Rs NetworksDelete' = Operation
        request = requestWith computeRequest
        requestWith rq NetworksDelete'{..}
          = go _ndProject _ndNetwork _ndQuotaUser
              (Just _ndPrettyPrint)
              _ndUserIP
              _ndFields
              _ndKey
              _ndOAuthToken
              (Just AltJSON)
          where go
                  = clientBuild (Proxy :: Proxy NetworksDeleteResource)
                      rq
