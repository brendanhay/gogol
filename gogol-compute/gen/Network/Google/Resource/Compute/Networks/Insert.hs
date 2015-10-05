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
-- Module      : Network.Google.Resource.Compute.Networks.Insert
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Creates a network resource in the specified project using the data
-- included in the request.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @ComputeNetworksInsert@.
module Network.Google.Resource.Compute.Networks.Insert
    (
    -- * REST Resource
      NetworksInsertResource

    -- * Creating a Request
    , networksInsert'
    , NetworksInsert'

    -- * Request Lenses
    , niQuotaUser
    , niPrettyPrint
    , niProject
    , niUserIP
    , niPayload
    , niKey
    , niOAuthToken
    , niFields
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @ComputeNetworksInsert@ which the
-- 'NetworksInsert'' request conforms to.
type NetworksInsertResource =
     Capture "project" Text :>
       "global" :>
         "networks" :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "fields" Text :>
                   QueryParam "key" Key :>
                     QueryParam "oauth_token" OAuthToken :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] Network :> Post '[JSON] Operation

-- | Creates a network resource in the specified project using the data
-- included in the request.
--
-- /See:/ 'networksInsert'' smart constructor.
data NetworksInsert' = NetworksInsert'
    { _niQuotaUser   :: !(Maybe Text)
    , _niPrettyPrint :: !Bool
    , _niProject     :: !Text
    , _niUserIP      :: !(Maybe Text)
    , _niPayload     :: !Network
    , _niKey         :: !(Maybe Key)
    , _niOAuthToken  :: !(Maybe OAuthToken)
    , _niFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'NetworksInsert'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'niQuotaUser'
--
-- * 'niPrettyPrint'
--
-- * 'niProject'
--
-- * 'niUserIP'
--
-- * 'niPayload'
--
-- * 'niKey'
--
-- * 'niOAuthToken'
--
-- * 'niFields'
networksInsert'
    :: Text -- ^ 'project'
    -> Network -- ^ 'payload'
    -> NetworksInsert'
networksInsert' pNiProject_ pNiPayload_ =
    NetworksInsert'
    { _niQuotaUser = Nothing
    , _niPrettyPrint = True
    , _niProject = pNiProject_
    , _niUserIP = Nothing
    , _niPayload = pNiPayload_
    , _niKey = Nothing
    , _niOAuthToken = Nothing
    , _niFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
niQuotaUser :: Lens' NetworksInsert' (Maybe Text)
niQuotaUser
  = lens _niQuotaUser (\ s a -> s{_niQuotaUser = a})

-- | Returns response with indentations and line breaks.
niPrettyPrint :: Lens' NetworksInsert' Bool
niPrettyPrint
  = lens _niPrettyPrint
      (\ s a -> s{_niPrettyPrint = a})

-- | Project ID for this request.
niProject :: Lens' NetworksInsert' Text
niProject
  = lens _niProject (\ s a -> s{_niProject = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
niUserIP :: Lens' NetworksInsert' (Maybe Text)
niUserIP = lens _niUserIP (\ s a -> s{_niUserIP = a})

-- | Multipart request metadata.
niPayload :: Lens' NetworksInsert' Network
niPayload
  = lens _niPayload (\ s a -> s{_niPayload = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
niKey :: Lens' NetworksInsert' (Maybe Key)
niKey = lens _niKey (\ s a -> s{_niKey = a})

-- | OAuth 2.0 token for the current user.
niOAuthToken :: Lens' NetworksInsert' (Maybe OAuthToken)
niOAuthToken
  = lens _niOAuthToken (\ s a -> s{_niOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
niFields :: Lens' NetworksInsert' (Maybe Text)
niFields = lens _niFields (\ s a -> s{_niFields = a})

instance GoogleAuth NetworksInsert' where
        authKey = niKey . _Just
        authToken = niOAuthToken . _Just

instance GoogleRequest NetworksInsert' where
        type Rs NetworksInsert' = Operation
        request = requestWithRoute defReq computeURL
        requestWithRoute r u NetworksInsert'{..}
          = go _niProject _niQuotaUser (Just _niPrettyPrint)
              _niUserIP
              _niFields
              _niKey
              _niOAuthToken
              (Just AltJSON)
              _niPayload
          where go
                  = clientWithRoute
                      (Proxy :: Proxy NetworksInsertResource)
                      r
                      u
