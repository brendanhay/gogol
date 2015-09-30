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
-- Module      : Network.Google.Resource.Compute.Addresses.Insert
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Creates an address resource in the specified project using the data
-- included in the request.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @ComputeAddressesInsert@.
module Network.Google.Resource.Compute.Addresses.Insert
    (
    -- * REST Resource
      AddressesInsertResource

    -- * Creating a Request
    , addressesInsert'
    , AddressesInsert'

    -- * Request Lenses
    , aiQuotaUser
    , aiPrettyPrint
    , aiProject
    , aiUserIp
    , aiKey
    , aiRegion
    , aiOauthToken
    , aiFields
    , aiAlt
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @ComputeAddressesInsert@ which the
-- 'AddressesInsert'' request conforms to.
type AddressesInsertResource =
     Capture "project" Text :>
       "regions" :>
         Capture "region" Text :>
           "addresses" :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "key" Text :>
                     QueryParam "oauth_token" Text :>
                       QueryParam "fields" Text :>
                         QueryParam "alt" Alt :> Post '[JSON] Operation

-- | Creates an address resource in the specified project using the data
-- included in the request.
--
-- /See:/ 'addressesInsert'' smart constructor.
data AddressesInsert' = AddressesInsert'
    { _aiQuotaUser   :: !(Maybe Text)
    , _aiPrettyPrint :: !Bool
    , _aiProject     :: !Text
    , _aiUserIp      :: !(Maybe Text)
    , _aiKey         :: !(Maybe Text)
    , _aiRegion      :: !Text
    , _aiOauthToken  :: !(Maybe Text)
    , _aiFields      :: !(Maybe Text)
    , _aiAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'AddressesInsert'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aiQuotaUser'
--
-- * 'aiPrettyPrint'
--
-- * 'aiProject'
--
-- * 'aiUserIp'
--
-- * 'aiKey'
--
-- * 'aiRegion'
--
-- * 'aiOauthToken'
--
-- * 'aiFields'
--
-- * 'aiAlt'
addressesInsert'
    :: Text -- ^ 'project'
    -> Text -- ^ 'region'
    -> AddressesInsert'
addressesInsert' pAiProject_ pAiRegion_ =
    AddressesInsert'
    { _aiQuotaUser = Nothing
    , _aiPrettyPrint = True
    , _aiProject = pAiProject_
    , _aiUserIp = Nothing
    , _aiKey = Nothing
    , _aiRegion = pAiRegion_
    , _aiOauthToken = Nothing
    , _aiFields = Nothing
    , _aiAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
aiQuotaUser :: Lens' AddressesInsert' (Maybe Text)
aiQuotaUser
  = lens _aiQuotaUser (\ s a -> s{_aiQuotaUser = a})

-- | Returns response with indentations and line breaks.
aiPrettyPrint :: Lens' AddressesInsert' Bool
aiPrettyPrint
  = lens _aiPrettyPrint
      (\ s a -> s{_aiPrettyPrint = a})

-- | Project ID for this request.
aiProject :: Lens' AddressesInsert' Text
aiProject
  = lens _aiProject (\ s a -> s{_aiProject = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
aiUserIp :: Lens' AddressesInsert' (Maybe Text)
aiUserIp = lens _aiUserIp (\ s a -> s{_aiUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
aiKey :: Lens' AddressesInsert' (Maybe Text)
aiKey = lens _aiKey (\ s a -> s{_aiKey = a})

-- | The name of the region for this request.
aiRegion :: Lens' AddressesInsert' Text
aiRegion = lens _aiRegion (\ s a -> s{_aiRegion = a})

-- | OAuth 2.0 token for the current user.
aiOauthToken :: Lens' AddressesInsert' (Maybe Text)
aiOauthToken
  = lens _aiOauthToken (\ s a -> s{_aiOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
aiFields :: Lens' AddressesInsert' (Maybe Text)
aiFields = lens _aiFields (\ s a -> s{_aiFields = a})

-- | Data format for the response.
aiAlt :: Lens' AddressesInsert' Alt
aiAlt = lens _aiAlt (\ s a -> s{_aiAlt = a})

instance GoogleRequest AddressesInsert' where
        type Rs AddressesInsert' = Operation
        request = requestWithRoute defReq computeURL
        requestWithRoute r u AddressesInsert'{..}
          = go _aiQuotaUser (Just _aiPrettyPrint) _aiProject
              _aiUserIp
              _aiKey
              _aiRegion
              _aiOauthToken
              _aiFields
              (Just _aiAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy AddressesInsertResource)
                      r
                      u
