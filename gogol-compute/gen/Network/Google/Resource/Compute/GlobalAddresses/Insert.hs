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
-- Module      : Network.Google.Resource.Compute.GlobalAddresses.Insert
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Creates an address resource in the specified project using the data
-- included in the request.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @ComputeGlobalAddressesInsert@.
module Network.Google.Resource.Compute.GlobalAddresses.Insert
    (
    -- * REST Resource
      GlobalAddressesInsertResource

    -- * Creating a Request
    , globalAddressesInsert'
    , GlobalAddressesInsert'

    -- * Request Lenses
    , gaiQuotaUser
    , gaiPrettyPrint
    , gaiProject
    , gaiUserIP
    , gaiPayload
    , gaiKey
    , gaiOAuthToken
    , gaiFields
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @ComputeGlobalAddressesInsert@ which the
-- 'GlobalAddressesInsert'' request conforms to.
type GlobalAddressesInsertResource =
     Capture "project" Text :>
       "global" :>
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
-- /See:/ 'globalAddressesInsert'' smart constructor.
data GlobalAddressesInsert' = GlobalAddressesInsert'
    { _gaiQuotaUser   :: !(Maybe Text)
    , _gaiPrettyPrint :: !Bool
    , _gaiProject     :: !Text
    , _gaiUserIP      :: !(Maybe Text)
    , _gaiPayload     :: !Address
    , _gaiKey         :: !(Maybe AuthKey)
    , _gaiOAuthToken  :: !(Maybe OAuthToken)
    , _gaiFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'GlobalAddressesInsert'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gaiQuotaUser'
--
-- * 'gaiPrettyPrint'
--
-- * 'gaiProject'
--
-- * 'gaiUserIP'
--
-- * 'gaiPayload'
--
-- * 'gaiKey'
--
-- * 'gaiOAuthToken'
--
-- * 'gaiFields'
globalAddressesInsert'
    :: Text -- ^ 'project'
    -> Address -- ^ 'payload'
    -> GlobalAddressesInsert'
globalAddressesInsert' pGaiProject_ pGaiPayload_ =
    GlobalAddressesInsert'
    { _gaiQuotaUser = Nothing
    , _gaiPrettyPrint = True
    , _gaiProject = pGaiProject_
    , _gaiUserIP = Nothing
    , _gaiPayload = pGaiPayload_
    , _gaiKey = Nothing
    , _gaiOAuthToken = Nothing
    , _gaiFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
gaiQuotaUser :: Lens' GlobalAddressesInsert' (Maybe Text)
gaiQuotaUser
  = lens _gaiQuotaUser (\ s a -> s{_gaiQuotaUser = a})

-- | Returns response with indentations and line breaks.
gaiPrettyPrint :: Lens' GlobalAddressesInsert' Bool
gaiPrettyPrint
  = lens _gaiPrettyPrint
      (\ s a -> s{_gaiPrettyPrint = a})

-- | Project ID for this request.
gaiProject :: Lens' GlobalAddressesInsert' Text
gaiProject
  = lens _gaiProject (\ s a -> s{_gaiProject = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
gaiUserIP :: Lens' GlobalAddressesInsert' (Maybe Text)
gaiUserIP
  = lens _gaiUserIP (\ s a -> s{_gaiUserIP = a})

-- | Multipart request metadata.
gaiPayload :: Lens' GlobalAddressesInsert' Address
gaiPayload
  = lens _gaiPayload (\ s a -> s{_gaiPayload = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
gaiKey :: Lens' GlobalAddressesInsert' (Maybe AuthKey)
gaiKey = lens _gaiKey (\ s a -> s{_gaiKey = a})

-- | OAuth 2.0 token for the current user.
gaiOAuthToken :: Lens' GlobalAddressesInsert' (Maybe OAuthToken)
gaiOAuthToken
  = lens _gaiOAuthToken
      (\ s a -> s{_gaiOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
gaiFields :: Lens' GlobalAddressesInsert' (Maybe Text)
gaiFields
  = lens _gaiFields (\ s a -> s{_gaiFields = a})

instance GoogleAuth GlobalAddressesInsert' where
        authKey = gaiKey . _Just
        authToken = gaiOAuthToken . _Just

instance GoogleRequest GlobalAddressesInsert' where
        type Rs GlobalAddressesInsert' = Operation
        request = requestWithRoute defReq computeURL
        requestWithRoute r u GlobalAddressesInsert'{..}
          = go _gaiProject _gaiQuotaUser (Just _gaiPrettyPrint)
              _gaiUserIP
              _gaiFields
              _gaiKey
              _gaiOAuthToken
              (Just AltJSON)
              _gaiPayload
          where go
                  = clientWithRoute
                      (Proxy :: Proxy GlobalAddressesInsertResource)
                      r
                      u
