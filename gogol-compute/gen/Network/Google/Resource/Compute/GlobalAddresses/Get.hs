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
-- Module      : Network.Google.Resource.Compute.GlobalAddresses.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Returns the specified address resource.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @ComputeGlobalAddressesGet@.
module Network.Google.Resource.Compute.GlobalAddresses.Get
    (
    -- * REST Resource
      GlobalAddressesGetResource

    -- * Creating a Request
    , globalAddressesGet'
    , GlobalAddressesGet'

    -- * Request Lenses
    , gagQuotaUser
    , gagPrettyPrint
    , gagProject
    , gagUserIP
    , gagAddress
    , gagKey
    , gagOAuthToken
    , gagFields
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @ComputeGlobalAddressesGet@ which the
-- 'GlobalAddressesGet'' request conforms to.
type GlobalAddressesGetResource =
     Capture "project" Text :>
       "global" :>
         "addresses" :>
           Capture "address" Text :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "key" Key :>
                       QueryParam "oauth_token" OAuthToken :>
                         QueryParam "alt" AltJSON :> Get '[JSON] Address

-- | Returns the specified address resource.
--
-- /See:/ 'globalAddressesGet'' smart constructor.
data GlobalAddressesGet' = GlobalAddressesGet'
    { _gagQuotaUser   :: !(Maybe Text)
    , _gagPrettyPrint :: !Bool
    , _gagProject     :: !Text
    , _gagUserIP      :: !(Maybe Text)
    , _gagAddress     :: !Text
    , _gagKey         :: !(Maybe Key)
    , _gagOAuthToken  :: !(Maybe OAuthToken)
    , _gagFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'GlobalAddressesGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gagQuotaUser'
--
-- * 'gagPrettyPrint'
--
-- * 'gagProject'
--
-- * 'gagUserIP'
--
-- * 'gagAddress'
--
-- * 'gagKey'
--
-- * 'gagOAuthToken'
--
-- * 'gagFields'
globalAddressesGet'
    :: Text -- ^ 'project'
    -> Text -- ^ 'address'
    -> GlobalAddressesGet'
globalAddressesGet' pGagProject_ pGagAddress_ =
    GlobalAddressesGet'
    { _gagQuotaUser = Nothing
    , _gagPrettyPrint = True
    , _gagProject = pGagProject_
    , _gagUserIP = Nothing
    , _gagAddress = pGagAddress_
    , _gagKey = Nothing
    , _gagOAuthToken = Nothing
    , _gagFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
gagQuotaUser :: Lens' GlobalAddressesGet' (Maybe Text)
gagQuotaUser
  = lens _gagQuotaUser (\ s a -> s{_gagQuotaUser = a})

-- | Returns response with indentations and line breaks.
gagPrettyPrint :: Lens' GlobalAddressesGet' Bool
gagPrettyPrint
  = lens _gagPrettyPrint
      (\ s a -> s{_gagPrettyPrint = a})

-- | Project ID for this request.
gagProject :: Lens' GlobalAddressesGet' Text
gagProject
  = lens _gagProject (\ s a -> s{_gagProject = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
gagUserIP :: Lens' GlobalAddressesGet' (Maybe Text)
gagUserIP
  = lens _gagUserIP (\ s a -> s{_gagUserIP = a})

-- | Name of the address resource to return.
gagAddress :: Lens' GlobalAddressesGet' Text
gagAddress
  = lens _gagAddress (\ s a -> s{_gagAddress = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
gagKey :: Lens' GlobalAddressesGet' (Maybe Key)
gagKey = lens _gagKey (\ s a -> s{_gagKey = a})

-- | OAuth 2.0 token for the current user.
gagOAuthToken :: Lens' GlobalAddressesGet' (Maybe OAuthToken)
gagOAuthToken
  = lens _gagOAuthToken
      (\ s a -> s{_gagOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
gagFields :: Lens' GlobalAddressesGet' (Maybe Text)
gagFields
  = lens _gagFields (\ s a -> s{_gagFields = a})

instance GoogleAuth GlobalAddressesGet' where
        authKey = gagKey . _Just
        authToken = gagOAuthToken . _Just

instance GoogleRequest GlobalAddressesGet' where
        type Rs GlobalAddressesGet' = Address
        request = requestWithRoute defReq computeURL
        requestWithRoute r u GlobalAddressesGet'{..}
          = go _gagProject _gagAddress _gagQuotaUser
              (Just _gagPrettyPrint)
              _gagUserIP
              _gagFields
              _gagKey
              _gagOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy GlobalAddressesGetResource)
                      r
                      u
