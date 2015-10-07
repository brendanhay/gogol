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
    , aiUserIP
    , aiPayload
    , aiKey
    , aiRegion
    , aiOAuthToken
    , aiFields
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @ComputeAddressesInsert@ method which the
-- 'AddressesInsert'' request conforms to.
type AddressesInsertResource =
     Capture "project" Text :>
       "regions" :>
         Capture "region" Text :>
           "addresses" :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "key" AuthKey :>
                       QueryParam "oauth_token" OAuthToken :>
                         QueryParam "alt" AltJSON :>
                           ReqBody '[JSON] Address :> Post '[JSON] Operation

-- | Creates an address resource in the specified project using the data
-- included in the request.
--
-- /See:/ 'addressesInsert'' smart constructor.
data AddressesInsert' = AddressesInsert'
    { _aiQuotaUser   :: !(Maybe Text)
    , _aiPrettyPrint :: !Bool
    , _aiProject     :: !Text
    , _aiUserIP      :: !(Maybe Text)
    , _aiPayload     :: !Address
    , _aiKey         :: !(Maybe AuthKey)
    , _aiRegion      :: !Text
    , _aiOAuthToken  :: !(Maybe OAuthToken)
    , _aiFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
-- * 'aiUserIP'
--
-- * 'aiPayload'
--
-- * 'aiKey'
--
-- * 'aiRegion'
--
-- * 'aiOAuthToken'
--
-- * 'aiFields'
addressesInsert'
    :: Text -- ^ 'project'
    -> Address -- ^ 'payload'
    -> Text -- ^ 'region'
    -> AddressesInsert'
addressesInsert' pAiProject_ pAiPayload_ pAiRegion_ =
    AddressesInsert'
    { _aiQuotaUser = Nothing
    , _aiPrettyPrint = True
    , _aiProject = pAiProject_
    , _aiUserIP = Nothing
    , _aiPayload = pAiPayload_
    , _aiKey = Nothing
    , _aiRegion = pAiRegion_
    , _aiOAuthToken = Nothing
    , _aiFields = Nothing
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
aiUserIP :: Lens' AddressesInsert' (Maybe Text)
aiUserIP = lens _aiUserIP (\ s a -> s{_aiUserIP = a})

-- | Multipart request metadata.
aiPayload :: Lens' AddressesInsert' Address
aiPayload
  = lens _aiPayload (\ s a -> s{_aiPayload = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
aiKey :: Lens' AddressesInsert' (Maybe AuthKey)
aiKey = lens _aiKey (\ s a -> s{_aiKey = a})

-- | The name of the region for this request.
aiRegion :: Lens' AddressesInsert' Text
aiRegion = lens _aiRegion (\ s a -> s{_aiRegion = a})

-- | OAuth 2.0 token for the current user.
aiOAuthToken :: Lens' AddressesInsert' (Maybe OAuthToken)
aiOAuthToken
  = lens _aiOAuthToken (\ s a -> s{_aiOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
aiFields :: Lens' AddressesInsert' (Maybe Text)
aiFields = lens _aiFields (\ s a -> s{_aiFields = a})

instance GoogleAuth AddressesInsert' where
        _AuthKey = aiKey . _Just
        _AuthToken = aiOAuthToken . _Just

instance GoogleRequest AddressesInsert' where
        type Rs AddressesInsert' = Operation
        request = requestWith computeRequest
        requestWith rq AddressesInsert'{..}
          = go _aiProject _aiRegion _aiQuotaUser
              (Just _aiPrettyPrint)
              _aiUserIP
              _aiFields
              _aiKey
              _aiOAuthToken
              (Just AltJSON)
              _aiPayload
          where go
                  = clientBuild
                      (Proxy :: Proxy AddressesInsertResource)
                      rq
