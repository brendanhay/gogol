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
    , ogUserIp
    , ogProfileId
    , ogKey
    , ogId
    , ogProjectId
    , ogOauthToken
    , ogFields
    , ogAlt
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
                       QueryParam "key" Text :>
                         QueryParam "oauth_token" Text :>
                           QueryParam "fields" Text :>
                             QueryParam "alt" Alt :> Get '[JSON] Order

-- | Gets one order by ID.
--
-- /See:/ 'ordersGet'' smart constructor.
data OrdersGet' = OrdersGet'
    { _ogQuotaUser   :: !(Maybe Text)
    , _ogPrettyPrint :: !Bool
    , _ogUserIp      :: !(Maybe Text)
    , _ogProfileId   :: !Int64
    , _ogKey         :: !(Maybe Text)
    , _ogId          :: !Int64
    , _ogProjectId   :: !Int64
    , _ogOauthToken  :: !(Maybe Text)
    , _ogFields      :: !(Maybe Text)
    , _ogAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'OrdersGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ogQuotaUser'
--
-- * 'ogPrettyPrint'
--
-- * 'ogUserIp'
--
-- * 'ogProfileId'
--
-- * 'ogKey'
--
-- * 'ogId'
--
-- * 'ogProjectId'
--
-- * 'ogOauthToken'
--
-- * 'ogFields'
--
-- * 'ogAlt'
ordersGet'
    :: Int64 -- ^ 'profileId'
    -> Int64 -- ^ 'id'
    -> Int64 -- ^ 'projectId'
    -> OrdersGet'
ordersGet' pOgProfileId_ pOgId_ pOgProjectId_ =
    OrdersGet'
    { _ogQuotaUser = Nothing
    , _ogPrettyPrint = True
    , _ogUserIp = Nothing
    , _ogProfileId = pOgProfileId_
    , _ogKey = Nothing
    , _ogId = pOgId_
    , _ogProjectId = pOgProjectId_
    , _ogOauthToken = Nothing
    , _ogFields = Nothing
    , _ogAlt = JSON
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
ogUserIp :: Lens' OrdersGet' (Maybe Text)
ogUserIp = lens _ogUserIp (\ s a -> s{_ogUserIp = a})

-- | User profile ID associated with this request.
ogProfileId :: Lens' OrdersGet' Int64
ogProfileId
  = lens _ogProfileId (\ s a -> s{_ogProfileId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
ogKey :: Lens' OrdersGet' (Maybe Text)
ogKey = lens _ogKey (\ s a -> s{_ogKey = a})

-- | Order ID.
ogId :: Lens' OrdersGet' Int64
ogId = lens _ogId (\ s a -> s{_ogId = a})

-- | Project ID for orders.
ogProjectId :: Lens' OrdersGet' Int64
ogProjectId
  = lens _ogProjectId (\ s a -> s{_ogProjectId = a})

-- | OAuth 2.0 token for the current user.
ogOauthToken :: Lens' OrdersGet' (Maybe Text)
ogOauthToken
  = lens _ogOauthToken (\ s a -> s{_ogOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
ogFields :: Lens' OrdersGet' (Maybe Text)
ogFields = lens _ogFields (\ s a -> s{_ogFields = a})

-- | Data format for the response.
ogAlt :: Lens' OrdersGet' Alt
ogAlt = lens _ogAlt (\ s a -> s{_ogAlt = a})

instance GoogleRequest OrdersGet' where
        type Rs OrdersGet' = Order
        request = requestWithRoute defReq dFAReportingURL
        requestWithRoute r u OrdersGet'{..}
          = go _ogQuotaUser (Just _ogPrettyPrint) _ogUserIp
              _ogProfileId
              _ogKey
              _ogId
              _ogProjectId
              _ogOauthToken
              _ogFields
              (Just _ogAlt)
          where go
                  = clientWithRoute (Proxy :: Proxy OrdersGetResource)
                      r
                      u
