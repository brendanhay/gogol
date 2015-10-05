{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE FlexibleInstances  #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.DFAReporting.Orders.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Gets one order by ID.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @DfareportingOrdersGet@.
module Network.Google.Resource.DFAReporting.Orders.Get
    (
    -- * REST Resource
      OrdersGetResource

    -- * Creating a Request
    , ordersGet'
    , OrdersGet'

    -- * Request Lenses
    , ogQuotaUser
    , ogPrettyPrint
    , ogUserIP
    , ogProFileId
    , ogKey
    , ogId
    , ogProjectId
    , ogOAuthToken
    , ogFields
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @DfareportingOrdersGet@ which the
-- 'OrdersGet'' request conforms to.
type OrdersGetResource =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "projects" :>
           Capture "projectId" Int64 :>
             "orders" :>
               Capture "id" Int64 :>
                 QueryParam "quotaUser" Text :>
                   QueryParam "prettyPrint" Bool :>
                     QueryParam "userIp" Text :>
                       QueryParam "fields" Text :>
                         QueryParam "key" Key :>
                           QueryParam "oauth_token" OAuthToken :>
                             QueryParam "alt" AltJSON :> Get '[JSON] Order

-- | Gets one order by ID.
--
-- /See:/ 'ordersGet'' smart constructor.
data OrdersGet' = OrdersGet'
    { _ogQuotaUser   :: !(Maybe Text)
    , _ogPrettyPrint :: !Bool
    , _ogUserIP      :: !(Maybe Text)
    , _ogProFileId   :: !Int64
    , _ogKey         :: !(Maybe Key)
    , _ogId          :: !Int64
    , _ogProjectId   :: !Int64
    , _ogOAuthToken  :: !(Maybe OAuthToken)
    , _ogFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'OrdersGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ogQuotaUser'
--
-- * 'ogPrettyPrint'
--
-- * 'ogUserIP'
--
-- * 'ogProFileId'
--
-- * 'ogKey'
--
-- * 'ogId'
--
-- * 'ogProjectId'
--
-- * 'ogOAuthToken'
--
-- * 'ogFields'
ordersGet'
    :: Int64 -- ^ 'profileId'
    -> Int64 -- ^ 'id'
    -> Int64 -- ^ 'projectId'
    -> OrdersGet'
ordersGet' pOgProFileId_ pOgId_ pOgProjectId_ =
    OrdersGet'
    { _ogQuotaUser = Nothing
    , _ogPrettyPrint = True
    , _ogUserIP = Nothing
    , _ogProFileId = pOgProFileId_
    , _ogKey = Nothing
    , _ogId = pOgId_
    , _ogProjectId = pOgProjectId_
    , _ogOAuthToken = Nothing
    , _ogFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
ogQuotaUser :: Lens' OrdersGet' (Maybe Text)
ogQuotaUser
  = lens _ogQuotaUser (\ s a -> s{_ogQuotaUser = a})

-- | Returns response with indentations and line breaks.
ogPrettyPrint :: Lens' OrdersGet' Bool
ogPrettyPrint
  = lens _ogPrettyPrint
      (\ s a -> s{_ogPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
ogUserIP :: Lens' OrdersGet' (Maybe Text)
ogUserIP = lens _ogUserIP (\ s a -> s{_ogUserIP = a})

-- | User profile ID associated with this request.
ogProFileId :: Lens' OrdersGet' Int64
ogProFileId
  = lens _ogProFileId (\ s a -> s{_ogProFileId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
ogKey :: Lens' OrdersGet' (Maybe Key)
ogKey = lens _ogKey (\ s a -> s{_ogKey = a})

-- | Order ID.
ogId :: Lens' OrdersGet' Int64
ogId = lens _ogId (\ s a -> s{_ogId = a})

-- | Project ID for orders.
ogProjectId :: Lens' OrdersGet' Int64
ogProjectId
  = lens _ogProjectId (\ s a -> s{_ogProjectId = a})

-- | OAuth 2.0 token for the current user.
ogOAuthToken :: Lens' OrdersGet' (Maybe OAuthToken)
ogOAuthToken
  = lens _ogOAuthToken (\ s a -> s{_ogOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
ogFields :: Lens' OrdersGet' (Maybe Text)
ogFields = lens _ogFields (\ s a -> s{_ogFields = a})

instance GoogleAuth OrdersGet' where
        authKey = ogKey . _Just
        authToken = ogOAuthToken . _Just

instance GoogleRequest OrdersGet' where
        type Rs OrdersGet' = Order
        request = requestWithRoute defReq dFAReportingURL
        requestWithRoute r u OrdersGet'{..}
          = go _ogProFileId _ogProjectId _ogId _ogQuotaUser
              (Just _ogPrettyPrint)
              _ogUserIP
              _ogFields
              _ogKey
              _ogOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute (Proxy :: Proxy OrdersGetResource)
                      r
                      u
